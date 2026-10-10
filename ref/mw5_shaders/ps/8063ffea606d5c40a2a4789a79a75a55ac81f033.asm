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
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         8     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        9     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy         10     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       11     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyz 
; DECAL_VOLUME_GRID_INDEX     0   x          13     NONE    uint   x   
; ENTITY_IDS               0    yz        13     NONE    uint    y  
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
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
; shader hash: 5286acc4581421c74caaba29b752c166
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; DECAL_VOLUME_GRID_INDEX     0        nointerpolation       
; ENTITY_IDS               0        nointerpolation       
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
;   [160 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S7             s6     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture    byte         r/o      T3     t22,space1     1
;                                   texture     f32          3d      T4     t52,space2     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture    byte         r/o      T7     t18,space1     1
;                                   texture    byte         r/o      T8     t19,space1     1
;                                   texture    byte         r/o      T9     t20,space1     1
;                                   texture    byte         r/o     T10     t21,space1     1
;                                   texture     f32          2d     T11     t37,space2     1
;                                   texture     f32          2d     T12             t0     1
;                                   texture     f32          2d     T13             t1     1
;                                   texture     f32          2d     T14     t58,space2     1
;                                   texture     f32          2d     T15     t57,space2     1
;                                   texture    byte         r/o     T16     t69,space1     1
;                                   texture     u32          2d     T17     t56,space2     1
;                                   texture     f32          2d     T18     t34,space2     1
;                                   texture     f32          2d     T19      t1,space2     1
;                                   texture     f32          2d     T20      t2,space2     1
;                                   texture     f32          2d     T21      t3,space2     1
;                                   texture     f32          2d     T22      t4,space2     1
;                                   textureunorm_f32     2darray     T23     t80,space2     1
;                                   texture    byte         r/o     T24     t67,space1     1
;                                   texture     f32          2d     T25      t7,space2     1
;                                   texture     f32          2d     T26      t6,space2     1
;                                   texture     f32          2d     T27      t5,space2     1
;                                   texture     f32          2d     T28     t38,space2     1
;                                   texture     f32          1d     T29     t30,space2     1
;                                   texture     f32          3d     T30     t44,space2     1
;                                   texture     f32          3d     T31     t45,space2     1
;                                   texture     f32     2darray     T32     t47,space2     1
;                                   textureunorm_f32     2darray     T33     t85,space2     1
;                                   texture     f32          2d     T34     t83,space2     1
;                                   texture     f32          2d     T35     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = alloca [4 x i32], align 4
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = alloca [12 x float], align 4
  %94 = alloca [12 x float], align 4
  %95 = alloca [3 x float], align 4
  %96 = alloca [3 x float], align 4
  %97 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %98 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = fmul fast float %100, %89
  %102 = fmul fast float %100, %90
  %103 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %104 = bitcast float %103 to i32
  %105 = ashr i32 %104, 1
  %106 = sub nsw i32 1597250115, %105
  %107 = bitcast i32 %106 to float
  %108 = fmul fast float %107, %80
  %109 = fmul fast float %107, %81
  %110 = fmul fast float %107, %82
  %111 = fmul fast float %81, %78
  %112 = fmul fast float %82, %77
  %113 = fsub fast float %111, %112
  %114 = fmul fast float %82, %76
  %115 = fmul fast float %80, %78
  %116 = fsub fast float %114, %115
  %117 = fmul fast float %80, %77
  %118 = fmul fast float %81, %76
  %119 = fsub fast float %117, %118
  %120 = fmul fast float %113, %79
  %121 = fmul fast float %116, %79
  %122 = fmul fast float %119, %79
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = fcmp fast une float %124, 0.000000e+00
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 3
  %129 = fmul fast float %101, 2.000000e+00
  %130 = fmul fast float %129, %127
  %131 = fmul fast float %102, 2.000000e+00
  %132 = fmul fast float %131, %128
  %133 = fsub fast float 1.000000e+00, %130
  %134 = fsub fast float 1.000000e+00, %132
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %142 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %143 = select i1 %125, float %136, float %140
  %144 = select i1 %125, float %137, float %141
  %145 = select i1 %125, float %138, float %142
  %146 = fmul fast float %143, %133
  %147 = fmul fast float %144, %133
  %148 = fmul fast float %145, %133
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = select i1 %125, float %150, float %154
  %158 = select i1 %125, float %151, float %155
  %159 = select i1 %125, float %152, float %156
  %160 = fmul fast float %157, %134
  %161 = fmul fast float %158, %134
  %162 = fmul fast float %159, %134
  %163 = fadd fast float %160, %146
  %164 = fadd fast float %161, %147
  %165 = fadd fast float %162, %148
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %173 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %174 = select i1 %125, float %167, float %171
  %175 = select i1 %125, float %168, float %172
  %176 = select i1 %125, float %169, float %173
  %177 = fadd fast float %163, %174
  %178 = fadd fast float %164, %175
  %179 = fadd fast float %165, %176
  %180 = fmul fast float %177, %92
  %181 = fmul fast float %178, %92
  %182 = fmul fast float %179, %92
  %183 = shl i32 %46, 5
  %184 = add i32 %183, 4194304
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = extractvalue %dx.types.ResRet.i32 %185, 1
  %188 = extractvalue %dx.types.ResRet.i32 %185, 2
  %189 = extractvalue %dx.types.ResRet.i32 %185, 3
  %190 = add i32 %183, 4194320
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = extractvalue %dx.types.ResRet.i32 %191, 1
  %194 = bitcast i32 %192 to float
  %195 = bitcast i32 %193 to float
  %196 = add i32 %45, 360
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = extractvalue %dx.types.ResRet.i32 %197, 1
  %200 = extractvalue %dx.types.ResRet.i32 %197, 2
  %201 = extractvalue %dx.types.ResRet.i32 %197, 3
  %202 = bitcast i32 %198 to float
  %203 = bitcast i32 %199 to float
  %204 = bitcast i32 %200 to float
  %205 = bitcast i32 %201 to float
  %206 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %108, float %109, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
  %207 = call float @dx.op.unary.f32(i32 25, float %206)  ; Rsqrt(value)
  %208 = fmul fast float %207, %108
  %209 = fmul fast float %207, %109
  %210 = fmul fast float %207, %110
  %211 = call float @dx.op.dot3.f32(i32 55, float %180, float %181, float %182, float %180, float %181, float %182)  ; Dot3(ax,ay,az,bx,by,bz)
  %212 = call float @dx.op.unary.f32(i32 25, float %211)  ; Rsqrt(value)
  %213 = fmul fast float %212, %180
  %214 = fmul fast float %212, %181
  %215 = fmul fast float %212, %182
  %216 = call float @dx.op.dot3.f32(i32 55, float %213, float %214, float %215, float %208, float %209, float %210)  ; Dot3(ax,ay,az,bx,by,bz)
  %217 = fmul fast float %216, %216
  %218 = fmul fast float %217, %204
  %219 = fadd fast float %218, %205
  %220 = call float @dx.op.unary.f32(i32 7, float %219)  ; Saturate(value)
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 3
  %223 = fmul fast float %222, %211
  %224 = fsub fast float %202, %223
  %225 = fmul fast float %224, %203
  %226 = call float @dx.op.unary.f32(i32 7, float %225)  ; Saturate(value)
  %227 = fmul fast float %226, %220
  %228 = fmul fast float %101, 5.000000e-01
  %229 = fmul fast float %102, 5.000000e-01
  %230 = fptosi float %228 to i32
  %231 = fptosi float %229 to i32
  %232 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %230, i32 %231, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = lshr i32 %233, 18
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F4C00EBA0000000
  %237 = call float @dx.op.unary.f32(i32 21, float %236)  ; Exp(value)
  %238 = fadd fast float %237, -1.000000e+00
  %239 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %19, i32 0)  ; GetDimensions(handle,mipLevel)
  %240 = extractvalue %dx.types.Dimensions %239, 0
  %241 = sitofp i32 %240 to float
  %242 = extractvalue %dx.types.Dimensions %239, 1
  %243 = sitofp i32 %242 to float
  %244 = fcmp fast oge float %228, %241
  %245 = fcmp fast oge float %229, %243
  %246 = or i1 %244, %245
  %247 = select i1 %246, float 0x4197782600000000, float %238
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %250 = extractvalue %dx.types.CBufRet.f32 %248, 3
  %251 = fmul fast float %249, %101
  %252 = fmul fast float %250, %102
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 114688
  %256 = icmp ne i32 %255, 0
  %257 = select i1 %256, float %251, float 0.000000e+00
  %258 = select i1 %256, float %252, float 0.000000e+00
  %259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %40, float %257, float %258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = fmul fast float %260, 2.550000e+02
  %262 = fptoui float %261 to i32
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.i32 %264, 3
  %266 = and i32 %265, 3
  %267 = icmp ne i32 %266, 0
  %268 = and i32 %265, 4
  %269 = icmp ne i32 %268, 0
  %270 = and i1 %267, %269
  br i1 %270, label %271, label %282

; <label>:271                                     ; preds = %0
  %272 = extractvalue %dx.types.CBufRet.f32 %263, 3
  %273 = fmul fast float %272, %102
  %274 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %275 = fmul fast float %274, %101
  %276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %39, float %275, float %273, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = fsub fast float 1.000000e+00, %277
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 0
  %281 = fcmp fast olt float %278, %280
  br label %285

; <label>:282                                     ; preds = %0
  %283 = icmp eq i32 %268, 0
  %284 = and i1 %267, %283
  br label %285

; <label>:285                                     ; preds = %282, %271
  %286 = phi i1 [ %281, %271 ], [ %284, %282 ]
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 2
  %289 = fmul fast float %288, 0x3FE3C6EF40000000
  %290 = frem fast float %101, 2.560000e+02
  %291 = frem fast float %102, 2.560000e+02
  %292 = fptoui float %290 to i32
  %293 = fptoui float %291 to i32
  %294 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %292, i32 %293, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = extractvalue %dx.types.ResRet.f32 %294, 1
  %297 = fadd fast float %295, %289
  %298 = fadd fast float %296, %289
  %299 = call float @dx.op.unary.f32(i32 22, float %297)  ; Frc(value)
  %300 = call float @dx.op.unary.f32(i32 22, float %298)  ; Frc(value)
  %301 = add i32 %45, 156
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = shl i32 %303, 4
  %305 = and i32 %304, 32752
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %303, 7
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %303, 22
  %311 = shl nuw nsw i32 %310, 5
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = add i32 %45, 216
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 255
  %317 = uitofp i32 %316 to float
  %318 = fmul fast float %317, 0x3F70101020000000
  %319 = lshr i32 %315, 8
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F70101020000000
  %323 = lshr i32 %315, 16
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F70101020000000
  %327 = add i32 %45, 36
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %329, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = add i32 %45, 288
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 65535
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %336, 16
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = fmul fast float %338, 0x3F50624DE0000000
  %342 = fmul fast float %340, 0x3F50624DE0000000
  %343 = add i32 %45, 172
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = shl i32 %345, 4
  %347 = and i32 %346, 32752
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %345, 7
  %350 = and i32 %349, 32752
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %345, 22
  %353 = shl nuw nsw i32 %352, 5
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = add i32 %45, 232
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 255
  %359 = uitofp i32 %358 to float
  %360 = fmul fast float %359, 0x3F70101020000000
  %361 = lshr i32 %357, 8
  %362 = and i32 %361, 255
  %363 = uitofp i32 %362 to float
  %364 = fmul fast float %363, 0x3F70101020000000
  %365 = lshr i32 %357, 16
  %366 = and i32 %365, 255
  %367 = uitofp i32 %366 to float
  %368 = fmul fast float %367, 0x3F70101020000000
  %369 = add i32 %45, 52
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %371, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = add i32 %45, 304
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 65535
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %378, 16
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = fmul fast float %380, 0x3F50624DE0000000
  %384 = fmul fast float %382, 0x3F50624DE0000000
  %385 = add i32 %45, 188
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = shl i32 %387, 4
  %389 = and i32 %388, 32752
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %387, 7
  %392 = and i32 %391, 32752
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %387, 22
  %395 = shl nuw nsw i32 %394, 5
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = add i32 %45, 248
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 255
  %401 = uitofp i32 %400 to float
  %402 = fmul fast float %401, 0x3F70101020000000
  %403 = lshr i32 %399, 8
  %404 = and i32 %403, 255
  %405 = uitofp i32 %404 to float
  %406 = fmul fast float %405, 0x3F70101020000000
  %407 = lshr i32 %399, 16
  %408 = and i32 %407, 255
  %409 = uitofp i32 %408 to float
  %410 = fmul fast float %409, 0x3F70101020000000
  %411 = add i32 %45, 68
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 65535
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %413, 16
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = add i32 %45, 320
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 65535
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %420, 16
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = fmul fast float %422, 0x3F50624DE0000000
  %426 = fmul fast float %424, 0x3F50624DE0000000
  %427 = add i32 %45, 204
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = shl i32 %429, 4
  %431 = and i32 %430, 32752
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %429, 7
  %434 = and i32 %433, 32752
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %429, 22
  %437 = shl nuw nsw i32 %436, 5
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = add i32 %45, 264
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 255
  %443 = uitofp i32 %442 to float
  %444 = fmul fast float %443, 0x3F70101020000000
  %445 = lshr i32 %441, 8
  %446 = and i32 %445, 255
  %447 = uitofp i32 %446 to float
  %448 = fmul fast float %447, 0x3F70101020000000
  %449 = lshr i32 %441, 16
  %450 = and i32 %449, 255
  %451 = uitofp i32 %450 to float
  %452 = fmul fast float %451, 0x3F70101020000000
  %453 = add i32 %45, 84
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 65535
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = lshr i32 %455, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = add i32 %45, 336
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = and i32 %462, 65535
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = lshr i32 %462, 16
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = fmul fast float %464, 0x3F50624DE0000000
  %468 = fmul fast float %466, 0x3F50624DE0000000
  %469 = add i32 %45, 348
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = and i32 %471, 32
  %473 = icmp eq i32 %472, 0
  %474 = and i32 %471, 64
  %475 = icmp eq i32 %474, 0
  %476 = and i32 %471, 128
  %477 = icmp eq i32 %476, 0
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 2
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %497, label %482

; <label>:482                                     ; preds = %285
  %483 = add i32 %45, 556
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = add i32 %485, 0
  %487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %487, %dx.types.Handle %98, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  %490 = extractvalue %dx.types.ResRet.f32 %488, 1
  %491 = extractvalue %dx.types.ResRet.f32 %488, 2
  %492 = extractvalue %dx.types.ResRet.f32 %488, 3
  %493 = fmul fast float %492, %85
  %494 = fmul fast float %489, %86
  %495 = fmul fast float %490, %87
  %496 = fmul fast float %491, %88
  br label %497

; <label>:497                                     ; preds = %482, %285
  %498 = phi float [ %88, %285 ], [ %496, %482 ]
  %499 = phi float [ %87, %285 ], [ %495, %482 ]
  %500 = phi float [ %86, %285 ], [ %494, %482 ]
  %501 = phi float [ %85, %285 ], [ %493, %482 ]
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = and i32 %503, 2
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %525, label %506

; <label>:506                                     ; preds = %497
  %507 = add i32 %45, 44
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = and i32 %509, 1
  %511 = icmp ne i32 %510, 0
  %512 = select i1 %511, float %500, float 1.000000e+00
  %513 = add i32 %45, 60
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = and i32 %515, 1
  %517 = icmp ne i32 %516, 0
  %518 = select i1 %517, float %499, float 1.000000e+00
  %519 = add i32 %45, 76
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = and i32 %521, 1
  %523 = icmp ne i32 %522, 0
  %524 = select i1 %523, float %498, float 1.000000e+00
  br label %525

; <label>:525                                     ; preds = %506, %497
  %526 = phi float [ %498, %497 ], [ %524, %506 ]
  %527 = phi float [ %499, %497 ], [ %518, %506 ]
  %528 = phi float [ %500, %497 ], [ %512, %506 ]
  %529 = lshr i32 %503, 20
  %530 = and i32 %529, 3
  %531 = add nuw nsw i32 %530, 1
  %532 = add i32 %45, 24
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = add i32 %45, 28
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = or i32 %537, %534
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %1185, label %540

; <label>:540                                     ; preds = %525
  %541 = and i32 %534, 262144
  %542 = icmp ne i32 %541, 0
  %543 = select i1 %542, float %51, float 1.000000e+00
  %544 = select i1 %542, float %52, float 0.000000e+00
  %545 = select i1 %542, float %53, float 0.000000e+00
  %546 = select i1 %542, float %54, float 1.000000e+00
  %547 = select i1 %542, float %55, float %83
  %548 = select i1 %542, float %56, float %84
  %549 = add i32 %45, 284
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = lshr i32 %551, 16
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = fmul fast float %553, 0x3F50624DE0000000
  %555 = add i32 %45, 88
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = lshr i32 %557, 16
  %559 = and i32 %558, 255
  %560 = lshr i32 %557, 24
  %561 = add i32 %45, 292
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = and i32 %563, 65535
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = lshr i32 %563, 16
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = add i32 %45, 32
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = lshr i32 %570, 22
  %572 = shl nuw nsw i32 %571, 5
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = shl i32 %570, 4
  %575 = and i32 %574, 32752
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = lshr i32 %570, 7
  %578 = and i32 %577, 32752
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 3
  %582 = fmul fast float %581, 1.000000e+03
  %583 = fmul fast float %341, %582
  %584 = call float @dx.op.unary.f32(i32 22, float %583)  ; Frc(value)
  %585 = fadd fast float %584, %331
  %586 = fmul fast float %342, %582
  %587 = call float @dx.op.unary.f32(i32 22, float %586)  ; Frc(value)
  %588 = fadd fast float %587, %333
  %589 = fmul fast float %554, %582
  %590 = call float @dx.op.unary.f32(i32 22, float %589)  ; Frc(value)
  %591 = fmul fast float %590, 0x401921FB60000000
  %592 = fadd fast float %591, %573
  %593 = call float @dx.op.unary.f32(i32 13, float %592)  ; Sin(value)
  %594 = call float @dx.op.unary.f32(i32 12, float %592)  ; Cos(value)
  %595 = fsub fast float -0.000000e+00, %593
  %596 = fadd fast float %547, -5.000000e-01
  %597 = fadd fast float %548, -5.000000e-01
  %598 = fmul fast float %565, %596
  %599 = fmul fast float %567, %597
  %600 = fadd fast float %598, 5.000000e-01
  %601 = fadd fast float %599, 5.000000e-01
  %602 = fmul fast float %576, %600
  %603 = fmul fast float %579, %601
  %604 = fmul fast float %594, %602
  %605 = call float @dx.op.tertiary.f32(i32 46, float %595, float %603, float %604)  ; FMad(a,b,c)
  %606 = fmul fast float %593, %602
  %607 = call float @dx.op.tertiary.f32(i32 46, float %594, float %603, float %606)  ; FMad(a,b,c)
  %608 = fadd fast float %585, %605
  %609 = fadd fast float %588, %607
  %610 = icmp ugt i32 %559, 1
  %611 = icmp ugt i32 %557, 33554431
  %612 = or i1 %611, %610
  br i1 %612, label %613, label %638

; <label>:613                                     ; preds = %540
  %614 = add i32 %45, 228
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = lshr i32 %616, 16
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = fmul fast float %581, %618
  %620 = call float @dx.op.unary.f32(i32 22, float %619)  ; Frc(value)
  %621 = mul nuw nsw i32 %559, %560
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %620, %622
  %624 = call float @dx.op.unary.f32(i32 27, float %623)  ; Round_ni(value)
  %625 = fptoui float %624 to i32
  %626 = urem i32 %625, %559
  %627 = udiv i32 %625, %560
  %628 = call float @dx.op.unary.f32(i32 22, float %608)  ; Frc(value)
  %629 = call float @dx.op.unary.f32(i32 22, float %609)  ; Frc(value)
  %630 = uitofp i32 %626 to float
  %631 = uitofp i32 %627 to float
  %632 = fadd fast float %628, %630
  %633 = fadd fast float %629, %631
  %634 = uitofp i32 %559 to float
  %635 = uitofp i32 %560 to float
  %636 = fdiv fast float %632, %634
  %637 = fdiv fast float %633, %635
  br label %638

; <label>:638                                     ; preds = %613, %540
  %639 = phi float [ %636, %613 ], [ %608, %540 ]
  %640 = phi float [ %637, %613 ], [ %609, %540 ]
  %641 = and i32 %534, 256
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %689, label %643

; <label>:643                                     ; preds = %638
  %644 = add i32 %45, 488
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = add i32 %646, 0
  %648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %648, %dx.types.Handle %98, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  %651 = add i32 %45, 100
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = shl i32 %653, 4
  %655 = and i32 %654, 32752
  %656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %655)  ; LegacyF16ToF32(value)
  %657 = lshr i32 %653, 7
  %658 = and i32 %657, 32752
  %659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %658)  ; LegacyF16ToF32(value)
  %660 = fsub fast float 1.000000e+00, %501
  %661 = call float @dx.op.binary.f32(i32 35, float %660, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %662 = bitcast float %501 to i32
  %663 = sitofp i32 %662 to float
  %664 = fadd fast float %663, 0xC1CFBF8940000000
  %665 = fmul fast float %659, %664
  %666 = fadd fast float %665, 0x41CFBF8940000000
  %667 = fptosi float %666 to i32
  %668 = bitcast i32 %667 to float
  %669 = bitcast float %661 to i32
  %670 = sitofp i32 %669 to float
  %671 = fadd fast float %670, 0xC1CFBF8940000000
  %672 = fmul fast float %671, %659
  %673 = fadd fast float %672, 0x41CFBF8940000000
  %674 = fptosi float %673 to i32
  %675 = bitcast i32 %674 to float
  %676 = fmul fast float %668, %656
  %677 = fmul fast float %675, %656
  %678 = fsub fast float %661, %676
  %679 = fadd fast float %677, %661
  %680 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %681 = call float @dx.op.unary.f32(i32 7, float %679)  ; Saturate(value)
  %682 = fsub fast float %650, %680
  %683 = fsub fast float %681, %680
  %684 = bitcast float %683 to i32
  %685 = sub nsw i32 2129859010, %684
  %686 = bitcast i32 %685 to float
  %687 = fmul fast float %686, %682
  %688 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  br label %689

; <label>:689                                     ; preds = %643, %638
  %690 = phi float [ %688, %643 ], [ %501, %638 ]
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = and i32 %692, 128
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %711, label %695

; <label>:695                                     ; preds = %689
  %696 = add i32 %45, 472
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = add i32 %698, 0
  %700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %700, %dx.types.Handle %98, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = and i32 %704, 524288
  %706 = icmp ne i32 %705, 0
  %707 = fcmp fast ogt float %702, 0x3FE0101020000000
  %708 = select i1 %707, float 1.000000e+00, float 0.000000e+00
  %709 = select i1 %706, float %708, float %702
  %710 = fmul fast float %709, %690
  br label %711

; <label>:711                                     ; preds = %695, %689
  %712 = phi float [ %710, %695 ], [ %690, %689 ]
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 16
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %915, label %717

; <label>:717                                     ; preds = %711
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = add i32 %45, 424
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = add i32 %722, 0
  %724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %723, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %725 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %724, %dx.types.Handle %97, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = extractvalue %dx.types.ResRet.f32 %725, 1
  %728 = extractvalue %dx.types.ResRet.f32 %725, 2
  %729 = extractvalue %dx.types.ResRet.f32 %725, 3
  %730 = and i32 %719, 255
  %731 = uitofp i32 %730 to float
  %732 = lshr i32 %719, 8
  %733 = and i32 %732, 255
  %734 = uitofp i32 %733 to float
  %735 = fmul fast float %729, %731
  %736 = fadd fast float %735, %734
  %737 = fmul fast float %736, 0x3F70101000000000
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 512
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %750, label %742

; <label>:742                                     ; preds = %717
  %743 = add i32 %45, 508
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = add i32 %745, 0
  %747 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %746, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %748 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %747, %dx.types.Handle %98, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  br label %750

; <label>:750                                     ; preds = %742, %717
  %751 = phi float [ %749, %742 ], [ 1.000000e+00, %717 ]
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = and i32 %753, 33554432
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %862, label %756

; <label>:756                                     ; preds = %750
  %757 = add i32 %45, 224
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 65535
  %761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %760)  ; LegacyF16ToF32(value)
  %762 = lshr i32 %759, 16
  %763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %762)  ; LegacyF16ToF32(value)
  %764 = add i32 %45, 228
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = and i32 %766, 65535
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = lshr i32 %770, 24
  %772 = uitofp i32 %771 to float
  %773 = fmul fast float %772, 0x3F70101020000000
  %774 = and i32 %770, 255
  %775 = uitofp i32 %774 to float
  %776 = fmul fast float %775, 0x3F70101020000000
  %777 = lshr i32 %770, 8
  %778 = and i32 %777, 255
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %779, 0x3F70101020000000
  %781 = lshr i32 %770, 16
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %783, 0x3F70101020000000
  %785 = add i32 %45, 220
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = lshr i32 %787, 24
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %789, 0x3F70101020000000
  %791 = and i32 %787, 255
  %792 = uitofp i32 %791 to float
  %793 = fmul fast float %792, 0x3F70101020000000
  %794 = lshr i32 %787, 8
  %795 = and i32 %794, 255
  %796 = uitofp i32 %795 to float
  %797 = fmul fast float %796, 0x3F70101020000000
  %798 = lshr i32 %787, 16
  %799 = and i32 %798, 255
  %800 = uitofp i32 %799 to float
  %801 = fmul fast float %800, 0x3F70101020000000
  %802 = bitcast float %726 to i32
  %803 = ashr i32 %802, 1
  %804 = sub nsw i32 1597463174, %803
  %805 = bitcast i32 %804 to float
  %806 = fmul fast float %726, 5.000000e-01
  %807 = fmul fast float %805, %805
  %808 = fmul fast float %807, %806
  %809 = fsub fast float 1.500000e+00, %808
  %810 = fmul fast float %805, %726
  %811 = fmul fast float %810, %809
  %812 = bitcast float %727 to i32
  %813 = ashr i32 %812, 1
  %814 = sub nsw i32 1597463174, %813
  %815 = bitcast i32 %814 to float
  %816 = fmul fast float %727, 5.000000e-01
  %817 = fmul fast float %815, %815
  %818 = fmul fast float %817, %816
  %819 = fsub fast float 1.500000e+00, %818
  %820 = fmul fast float %815, %727
  %821 = fmul fast float %820, %819
  %822 = bitcast float %728 to i32
  %823 = ashr i32 %822, 1
  %824 = sub nsw i32 1597463174, %823
  %825 = bitcast i32 %824 to float
  %826 = fmul fast float %728, 5.000000e-01
  %827 = fmul fast float %825, %825
  %828 = fmul fast float %827, %826
  %829 = fsub fast float 1.500000e+00, %828
  %830 = fmul fast float %825, %728
  %831 = fmul fast float %830, %829
  %832 = fsub fast float %811, %793
  %833 = fsub fast float %821, %797
  %834 = fsub fast float %831, %801
  %835 = fmul fast float %832, %761
  %836 = fmul fast float %833, %763
  %837 = fmul fast float %834, %768
  %838 = fadd fast float %835, %776
  %839 = fadd fast float %836, %780
  %840 = fadd fast float %837, %784
  %841 = call float @dx.op.unary.f32(i32 7, float %838)  ; Saturate(value)
  %842 = call float @dx.op.unary.f32(i32 7, float %839)  ; Saturate(value)
  %843 = call float @dx.op.unary.f32(i32 7, float %840)  ; Saturate(value)
  %844 = fmul fast float %841, %841
  %845 = fmul fast float %842, %842
  %846 = fmul fast float %843, %843
  %847 = fsub fast float %844, %726
  %848 = fsub fast float %845, %727
  %849 = fsub fast float %846, %728
  %850 = fmul fast float %847, %751
  %851 = fmul fast float %848, %751
  %852 = fmul fast float %849, %751
  %853 = fadd fast float %850, %726
  %854 = fadd fast float %851, %727
  %855 = fadd fast float %852, %728
  %856 = fadd fast float %773, %737
  %857 = fsub fast float %856, %790
  %858 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  %859 = fsub fast float %858, %737
  %860 = fmul fast float %859, %751
  %861 = fadd fast float %860, %737
  br label %915

; <label>:862                                     ; preds = %750
  %863 = and i32 %753, 134217728
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %899, label %865

; <label>:865                                     ; preds = %862
  %866 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %867 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %868 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %869 = fadd fast float %866, -5.000000e-01
  %870 = fadd fast float %867, -5.000000e-01
  %871 = fadd fast float %868, -5.000000e-01
  %872 = fmul fast float %869, %751
  %873 = fmul fast float %870, %751
  %874 = fmul fast float %871, %751
  %875 = fadd fast float %872, 5.000000e-01
  %876 = fadd fast float %873, 5.000000e-01
  %877 = fadd fast float %874, 5.000000e-01
  %878 = call float @dx.op.unary.f32(i32 24, float %726)  ; Sqrt(value)
  %879 = call float @dx.op.unary.f32(i32 24, float %727)  ; Sqrt(value)
  %880 = call float @dx.op.unary.f32(i32 24, float %728)  ; Sqrt(value)
  %881 = fmul fast float %875, 2.000000e+00
  %882 = fsub fast float 1.000000e+00, %881
  %883 = fmul fast float %882, %878
  %884 = fadd fast float %883, %881
  %885 = fmul fast float %884, %878
  %886 = fmul fast float %876, 2.000000e+00
  %887 = fsub fast float 1.000000e+00, %886
  %888 = fmul fast float %887, %879
  %889 = fadd fast float %888, %886
  %890 = fmul fast float %889, %879
  %891 = fmul fast float %877, 2.000000e+00
  %892 = fsub fast float 1.000000e+00, %891
  %893 = fmul fast float %892, %880
  %894 = fadd fast float %893, %891
  %895 = fmul fast float %894, %880
  %896 = fmul fast float %885, %885
  %897 = fmul fast float %890, %890
  %898 = fmul fast float %895, %895
  br label %915

; <label>:899                                     ; preds = %862
  %900 = fmul fast float %318, %318
  %901 = fmul fast float %322, %322
  %902 = fmul fast float %326, %326
  %903 = fadd fast float %900, -1.000000e+00
  %904 = fadd fast float %901, -1.000000e+00
  %905 = fadd fast float %902, -1.000000e+00
  %906 = fmul fast float %751, %903
  %907 = fmul fast float %751, %904
  %908 = fmul fast float %751, %905
  %909 = fadd fast float %906, 1.000000e+00
  %910 = fadd fast float %907, 1.000000e+00
  %911 = fadd fast float %908, 1.000000e+00
  %912 = fmul fast float %909, %726
  %913 = fmul fast float %910, %727
  %914 = fmul fast float %911, %728
  br label %915

; <label>:915                                     ; preds = %899, %865, %756, %711
  %916 = phi float [ %861, %756 ], [ %737, %865 ], [ %737, %899 ], [ 0x3FA23C0BE0000000, %711 ]
  %917 = phi float [ %853, %756 ], [ %896, %865 ], [ %912, %899 ], [ 1.000000e+00, %711 ]
  %918 = phi float [ %854, %756 ], [ %897, %865 ], [ %913, %899 ], [ 1.000000e+00, %711 ]
  %919 = phi float [ %855, %756 ], [ %898, %865 ], [ %914, %899 ], [ 1.000000e+00, %711 ]
  %920 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.i32 %920, 1
  %922 = and i32 %921, 1
  %923 = icmp ne i32 %922, 0
  %924 = add i32 %45, 356
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = and i32 %926, 32
  %928 = icmp ne i32 %927, 0
  %929 = and i1 %923, %928
  %930 = select i1 %929, float 1.000000e+00, float %917
  %931 = select i1 %929, float 0x3FD3333340000000, float %918
  %932 = select i1 %929, float 0x3FD3333340000000, float %919
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = and i32 %934, 32
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %1009, label %937

; <label>:937                                     ; preds = %915
  %938 = add i32 %45, 92
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = add i32 %45, 440
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = add i32 %943, 0
  %945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %944, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %946 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %945, %dx.types.Handle %97, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %947 = extractvalue %dx.types.ResRet.f32 %946, 0
  %948 = extractvalue %dx.types.ResRet.f32 %946, 1
  %949 = extractvalue %dx.types.ResRet.f32 %946, 2
  %950 = extractvalue %dx.types.ResRet.f32 %946, 3
  %951 = and i32 %940, 255
  %952 = uitofp i32 %951 to float
  %953 = lshr i32 %940, 8
  %954 = and i32 %953, 255
  %955 = uitofp i32 %954 to float
  %956 = lshr i32 %940, 16
  %957 = and i32 %956, 255
  %958 = uitofp i32 %957 to float
  %959 = fmul fast float %958, 0x3F70101000000000
  %960 = fmul fast float %947, %952
  %961 = fadd fast float %960, %955
  %962 = fmul fast float %961, 0x3F70101000000000
  %963 = fadd fast float %948, -5.000000e-01
  %964 = fadd fast float %950, -5.000000e-01
  %965 = fmul fast float %963, %959
  %966 = fmul fast float %964, %959
  %967 = fadd fast float %965, 5.000000e-01
  %968 = fadd fast float %966, 5.000000e-01
  %969 = fmul fast float %967, 2.000000e+00
  %970 = fadd fast float %969, -1.000000e+00
  %971 = fmul fast float %968, 2.000000e+00
  %972 = fadd fast float %971, -1.000000e+00
  %973 = fadd fast float %970, %972
  %974 = fmul fast float %973, 5.000000e-01
  %975 = fsub fast float %970, %972
  %976 = fmul fast float %975, 5.000000e-01
  %977 = call float @dx.op.unary.f32(i32 6, float %974)  ; FAbs(value)
  %978 = fsub fast float 1.000000e+00, %977
  %979 = call float @dx.op.unary.f32(i32 6, float %976)  ; FAbs(value)
  %980 = fsub fast float %978, %979
  %981 = call float @dx.op.dot3.f32(i32 55, float %974, float %976, float %980, float %974, float %976, float %980)  ; Dot3(ax,ay,az,bx,by,bz)
  %982 = call float @dx.op.unary.f32(i32 25, float %981)  ; Rsqrt(value)
  %983 = fmul fast float %974, %982
  %984 = fmul fast float %976, %982
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = and i32 %986, 67108864
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %1005, label %989

; <label>:989                                     ; preds = %937
  %990 = add i32 %45, 280
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = and i32 %992, 65535
  %994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %993)  ; LegacyF16ToF32(value)
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = and i32 %996, 65535
  %998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %997)  ; LegacyF16ToF32(value)
  %999 = lshr i32 %992, 16
  %1000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %999)  ; LegacyF16ToF32(value)
  %1001 = fsub fast float %962, %1000
  %1002 = fmul fast float %1001, %994
  %1003 = fadd fast float %1002, %998
  %1004 = call float @dx.op.unary.f32(i32 7, float %1003)  ; Saturate(value)
  br label %1005

; <label>:1005                                    ; preds = %989, %937
  %1006 = phi float [ %1004, %989 ], [ %962, %937 ]
  %1007 = call float @dx.op.dot2.f32(i32 54, float %983, float %984, float %543, float %544)  ; Dot2(ax,ay,bx,by)
  %1008 = call float @dx.op.dot2.f32(i32 54, float %983, float %984, float %545, float %546)  ; Dot2(ax,ay,bx,by)
  br label %1009

; <label>:1009                                    ; preds = %1005, %915
  %1010 = phi float [ %1006, %1005 ], [ 0x3FD6666660000000, %915 ]
  %1011 = phi float [ %1007, %1005 ], [ 0.000000e+00, %915 ]
  %1012 = phi float [ %1008, %1005 ], [ 0.000000e+00, %915 ]
  %1013 = phi float [ %949, %1005 ], [ 1.000000e+00, %915 ]
  %1014 = add i32 %45, 160
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = lshr i32 %1016, 22
  %1018 = shl nuw nsw i32 %1017, 5
  %1019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1018)  ; LegacyF16ToF32(value)
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = and i32 %1021, 64
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1057, label %1024

; <label>:1024                                    ; preds = %1009
  %1025 = add i32 %45, 456
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = add i32 %1027, 0
  %1029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = and i32 %1031, 131072
  %1033 = icmp eq i32 %1032, 0
  %1034 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1029, %dx.types.Handle %97, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1038 = fmul fast float %1035, %306
  %1039 = fmul fast float %1036, %309
  %1040 = fmul fast float %1037, %312
  br i1 %1033, label %1047, label %1041

; <label>:1041                                    ; preds = %1024
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 0
  %1044 = fmul fast float %1043, %1038
  %1045 = fmul fast float %1043, %1039
  %1046 = fmul fast float %1043, %1040
  br label %1047

; <label>:1047                                    ; preds = %1041, %1024
  %1048 = phi float [ %1044, %1041 ], [ %1038, %1024 ]
  %1049 = phi float [ %1045, %1041 ], [ %1039, %1024 ]
  %1050 = phi float [ %1046, %1041 ], [ %1040, %1024 ]
  %1051 = fmul fast float %1048, %1019
  %1052 = select i1 %286, float %1051, float %1048
  %1053 = call float @dx.op.dot3.f32(i32 55, float %1052, float %1049, float %1050, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1054 = select i1 %286, float 0.000000e+00, float %1048
  %1055 = select i1 %286, float %1053, float %1049
  %1056 = select i1 %286, float 0.000000e+00, float %1050
  br label %1057

; <label>:1057                                    ; preds = %1047, %1009
  %1058 = phi float [ %1054, %1047 ], [ 0.000000e+00, %1009 ]
  %1059 = phi float [ %1055, %1047 ], [ 0.000000e+00, %1009 ]
  %1060 = phi float [ %1056, %1047 ], [ 0.000000e+00, %1009 ]
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = and i32 %1062, 1024
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1095, label %1065

; <label>:1065                                    ; preds = %1057
  %1066 = add i32 %45, 152
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = and i32 %1068, 255
  %1070 = uitofp i32 %1069 to float
  %1071 = fmul fast float %1070, 0x3F70101020000000
  %1072 = lshr i32 %1068, 8
  %1073 = and i32 %1072, 255
  %1074 = uitofp i32 %1073 to float
  %1075 = fmul fast float %1074, 0x3F70101020000000
  %1076 = lshr i32 %1068, 16
  %1077 = and i32 %1076, 255
  %1078 = uitofp i32 %1077 to float
  %1079 = fmul fast float %1078, 0x3F70101020000000
  %1080 = fmul fast float %1071, %1071
  %1081 = fmul fast float %1075, %1075
  %1082 = fmul fast float %1079, %1079
  %1083 = add i32 %45, 524
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = add i32 %1085, 0
  %1087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1086, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1088 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1087, %dx.types.Handle %98, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = fmul fast float %1080, %1089
  %1093 = fmul fast float %1081, %1090
  %1094 = fmul fast float %1082, %1091
  br label %1095

; <label>:1095                                    ; preds = %1065, %1057
  %1096 = phi float [ %1092, %1065 ], [ 0.000000e+00, %1057 ]
  %1097 = phi float [ %1093, %1065 ], [ 0.000000e+00, %1057 ]
  %1098 = phi float [ %1094, %1065 ], [ 0.000000e+00, %1057 ]
  %1099 = fcmp fast ogt float %1096, 0.000000e+00
  %1100 = fcmp fast ogt float %1097, 0.000000e+00
  %1101 = fcmp fast ogt float %1098, 0.000000e+00
  %1102 = call float @dx.op.unary.f32(i32 23, float %1096)  ; Log(value)
  %1103 = call float @dx.op.unary.f32(i32 23, float %1097)  ; Log(value)
  %1104 = call float @dx.op.unary.f32(i32 23, float %1098)  ; Log(value)
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = lshr i32 %1106, 7
  %1108 = and i32 %1107, 32752
  %1109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1108)  ; LegacyF16ToF32(value)
  %1110 = fmul fast float %1102, 0xBFE62E4300000000
  %1111 = fmul fast float %1110, %1109
  %1112 = fmul fast float %1103, 0xBFE62E4300000000
  %1113 = fmul fast float %1112, %1109
  %1114 = fmul fast float %1104, 0xBFE62E4300000000
  %1115 = fmul fast float %1114, %1109
  %1116 = select i1 %1099, float %1111, float 1.270000e+02
  %1117 = select i1 %1100, float %1113, float 1.270000e+02
  %1118 = select i1 %1101, float %1115, float 1.270000e+02
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = and i32 %1120, 10240
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1167, label %1123

; <label>:1123                                    ; preds = %1095
  %1124 = add i32 %45, 540
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = add i32 %1126, 0
  %1128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1127, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1129 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1128, %dx.types.Handle %98, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1129, 3
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = and i32 %1133, 1048576
  %1135 = icmp ne i32 %1134, 0
  %1136 = and i32 %1133, 8192
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1153, label %1138

; <label>:1138                                    ; preds = %1123
  %1139 = extractvalue %dx.types.ResRet.f32 %1129, 2
  %1140 = select i1 %1135, float %1139, float %1130
  %1141 = extractvalue %dx.types.ResRet.f32 %1129, 0
  %1142 = select i1 %1135, float %1141, float %1130
  %1143 = add i32 %45, 96
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = lshr i32 %1145, 16
  %1147 = and i32 %1146, 255
  %1148 = uitofp i32 %1147 to float
  %1149 = fmul fast float %1148, 0x3F80101020000000
  %1150 = fmul fast float %1149, %1142
  %1151 = fmul fast float %1149, %1130
  %1152 = fmul fast float %1149, %1140
  br label %1153

; <label>:1153                                    ; preds = %1138, %1123
  %1154 = phi float [ %1150, %1138 ], [ 0.000000e+00, %1123 ]
  %1155 = phi float [ %1151, %1138 ], [ 0.000000e+00, %1123 ]
  %1156 = phi float [ %1152, %1138 ], [ 0.000000e+00, %1123 ]
  %1157 = and i32 %1133, 2048
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1167, label %1159

; <label>:1159                                    ; preds = %1153
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = shl i32 %1161, 4
  %1163 = and i32 %1162, 32752
  %1164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1163)  ; LegacyF16ToF32(value)
  %1165 = fmul fast float %1164, %1131
  %1166 = call float @dx.op.binary.f32(i32 35, float %1165, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1167

; <label>:1167                                    ; preds = %1159, %1153, %1095
  %1168 = phi float [ %1154, %1159 ], [ %1154, %1153 ], [ 0.000000e+00, %1095 ]
  %1169 = phi float [ %1155, %1159 ], [ %1155, %1153 ], [ 0.000000e+00, %1095 ]
  %1170 = phi float [ %1156, %1159 ], [ %1156, %1153 ], [ 0.000000e+00, %1095 ]
  %1171 = phi float [ %1166, %1159 ], [ 0x3F70101020000000, %1153 ], [ 0x3F70101020000000, %1095 ]
  %1172 = add i32 %45, 96
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 255
  %1176 = uitofp i32 %1175 to float
  %1177 = lshr i32 %1174, 8
  %1178 = and i32 %1177, 255
  %1179 = uitofp i32 %1178 to float
  %1180 = call float @dx.op.dot3.f32(i32 55, float %930, float %931, float %932, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1181 = fmul fast float %1179, %1180
  %1182 = fadd fast float %1181, %1176
  %1183 = fmul fast float %1182, 0x3F70101020000000
  %1184 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  br label %1185

; <label>:1185                                    ; preds = %1167, %525
  %1186 = phi float [ 0.000000e+00, %525 ], [ %1011, %1167 ]
  %1187 = phi float [ 0.000000e+00, %525 ], [ %1012, %1167 ]
  %1188 = phi float [ 0.000000e+00, %525 ], [ %930, %1167 ]
  %1189 = phi float [ 0.000000e+00, %525 ], [ %931, %1167 ]
  %1190 = phi float [ 0.000000e+00, %525 ], [ %932, %1167 ]
  %1191 = phi float [ 0.000000e+00, %525 ], [ %1058, %1167 ]
  %1192 = phi float [ 0.000000e+00, %525 ], [ %1059, %1167 ]
  %1193 = phi float [ 0.000000e+00, %525 ], [ %1060, %1167 ]
  %1194 = phi float [ 0.000000e+00, %525 ], [ %1116, %1167 ]
  %1195 = phi float [ 0.000000e+00, %525 ], [ %1117, %1167 ]
  %1196 = phi float [ 0.000000e+00, %525 ], [ %1118, %1167 ]
  %1197 = phi float [ 0.000000e+00, %525 ], [ %1168, %1167 ]
  %1198 = phi float [ 0.000000e+00, %525 ], [ %1169, %1167 ]
  %1199 = phi float [ 0.000000e+00, %525 ], [ %1170, %1167 ]
  %1200 = phi float [ 0.000000e+00, %525 ], [ %916, %1167 ]
  %1201 = phi float [ 0.000000e+00, %525 ], [ %712, %1167 ]
  %1202 = phi float [ 0.000000e+00, %525 ], [ %1010, %1167 ]
  %1203 = phi float [ 0.000000e+00, %525 ], [ %1013, %1167 ]
  %1204 = phi float [ 0.000000e+00, %525 ], [ %1171, %1167 ]
  %1205 = phi float [ 0.000000e+00, %525 ], [ %1184, %1167 ]
  br i1 %473, label %2128, label %1206

; <label>:1206                                    ; preds = %1185
  %1207 = icmp ult i32 %531, 2
  %1208 = add i32 %45, 40
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = add i32 %45, 44
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = or i32 %1213, %1210
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %2128, label %1216

; <label>:1216                                    ; preds = %1206
  %1217 = and i32 %1210, 262144
  %1218 = icmp ne i32 %1217, 0
  %1219 = select i1 %1218, float %51, float 1.000000e+00
  %1220 = select i1 %1218, float %52, float 0.000000e+00
  %1221 = select i1 %1218, float %53, float 0.000000e+00
  %1222 = select i1 %1218, float %54, float 1.000000e+00
  %1223 = select i1 %1218, float %55, float %83
  %1224 = select i1 %1218, float %56, float %84
  %1225 = add i32 %45, 300
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = lshr i32 %1227, 16
  %1229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1228)  ; LegacyF16ToF32(value)
  %1230 = fmul fast float %1229, 0x3F50624DE0000000
  %1231 = add i32 %45, 104
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = lshr i32 %1233, 16
  %1235 = and i32 %1234, 255
  %1236 = lshr i32 %1233, 24
  %1237 = add i32 %45, 308
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = and i32 %1239, 65535
  %1241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1240)  ; LegacyF16ToF32(value)
  %1242 = lshr i32 %1239, 16
  %1243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1242)  ; LegacyF16ToF32(value)
  %1244 = add i32 %45, 48
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = lshr i32 %1246, 22
  %1248 = shl nuw nsw i32 %1247, 5
  %1249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1248)  ; LegacyF16ToF32(value)
  %1250 = shl i32 %1246, 4
  %1251 = and i32 %1250, 32752
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = lshr i32 %1246, 7
  %1254 = and i32 %1253, 32752
  %1255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1254)  ; LegacyF16ToF32(value)
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 3
  %1258 = fmul fast float %1257, 1.000000e+03
  %1259 = fmul fast float %383, %1258
  %1260 = call float @dx.op.unary.f32(i32 22, float %1259)  ; Frc(value)
  %1261 = fadd fast float %1260, %373
  %1262 = fmul fast float %384, %1258
  %1263 = call float @dx.op.unary.f32(i32 22, float %1262)  ; Frc(value)
  %1264 = fadd fast float %1263, %375
  %1265 = fmul fast float %1230, %1258
  %1266 = call float @dx.op.unary.f32(i32 22, float %1265)  ; Frc(value)
  %1267 = fmul fast float %1266, 0x401921FB60000000
  %1268 = fadd fast float %1267, %1249
  %1269 = call float @dx.op.unary.f32(i32 13, float %1268)  ; Sin(value)
  %1270 = call float @dx.op.unary.f32(i32 12, float %1268)  ; Cos(value)
  %1271 = fsub fast float -0.000000e+00, %1269
  %1272 = fadd fast float %1223, -5.000000e-01
  %1273 = fadd fast float %1224, -5.000000e-01
  %1274 = fmul fast float %1241, %1272
  %1275 = fmul fast float %1243, %1273
  %1276 = fadd fast float %1274, 5.000000e-01
  %1277 = fadd fast float %1275, 5.000000e-01
  %1278 = fmul fast float %1252, %1276
  %1279 = fmul fast float %1255, %1277
  %1280 = fmul fast float %1270, %1278
  %1281 = call float @dx.op.tertiary.f32(i32 46, float %1271, float %1279, float %1280)  ; FMad(a,b,c)
  %1282 = fmul fast float %1269, %1278
  %1283 = call float @dx.op.tertiary.f32(i32 46, float %1270, float %1279, float %1282)  ; FMad(a,b,c)
  %1284 = fadd fast float %1261, %1281
  %1285 = fadd fast float %1264, %1283
  %1286 = icmp ugt i32 %1235, 1
  %1287 = icmp ugt i32 %1233, 33554431
  %1288 = or i1 %1287, %1286
  br i1 %1288, label %1289, label %1314

; <label>:1289                                    ; preds = %1216
  %1290 = add i32 %45, 244
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = lshr i32 %1292, 16
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = fmul fast float %1257, %1294
  %1296 = call float @dx.op.unary.f32(i32 22, float %1295)  ; Frc(value)
  %1297 = mul nuw nsw i32 %1235, %1236
  %1298 = uitofp i32 %1297 to float
  %1299 = fmul fast float %1296, %1298
  %1300 = call float @dx.op.unary.f32(i32 27, float %1299)  ; Round_ni(value)
  %1301 = fptoui float %1300 to i32
  %1302 = urem i32 %1301, %1235
  %1303 = udiv i32 %1301, %1236
  %1304 = call float @dx.op.unary.f32(i32 22, float %1284)  ; Frc(value)
  %1305 = call float @dx.op.unary.f32(i32 22, float %1285)  ; Frc(value)
  %1306 = uitofp i32 %1302 to float
  %1307 = uitofp i32 %1303 to float
  %1308 = fadd fast float %1304, %1306
  %1309 = fadd fast float %1305, %1307
  %1310 = uitofp i32 %1235 to float
  %1311 = uitofp i32 %1236 to float
  %1312 = fdiv fast float %1308, %1310
  %1313 = fdiv fast float %1309, %1311
  br label %1314

; <label>:1314                                    ; preds = %1289, %1216
  %1315 = phi float [ %1312, %1289 ], [ %1284, %1216 ]
  %1316 = phi float [ %1313, %1289 ], [ %1285, %1216 ]
  %1317 = and i32 %1210, 256
  %1318 = icmp eq i32 %1317, 0
  br i1 %1318, label %1365, label %1319

; <label>:1319                                    ; preds = %1314
  %1320 = add i32 %45, 492
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = add i32 %1322, 0
  %1324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1325 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1324, %dx.types.Handle %98, float %1315, float %1316, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1326 = extractvalue %dx.types.ResRet.f32 %1325, 0
  %1327 = add i32 %45, 116
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = shl i32 %1329, 4
  %1331 = and i32 %1330, 32752
  %1332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1331)  ; LegacyF16ToF32(value)
  %1333 = lshr i32 %1329, 7
  %1334 = and i32 %1333, 32752
  %1335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1334)  ; LegacyF16ToF32(value)
  %1336 = fsub fast float 1.000000e+00, %528
  %1337 = call float @dx.op.binary.f32(i32 35, float %1336, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1338 = bitcast float %528 to i32
  %1339 = sitofp i32 %1338 to float
  %1340 = fadd fast float %1339, 0xC1CFBF8940000000
  %1341 = fmul fast float %1335, %1340
  %1342 = fadd fast float %1341, 0x41CFBF8940000000
  %1343 = fptosi float %1342 to i32
  %1344 = bitcast i32 %1343 to float
  %1345 = bitcast float %1337 to i32
  %1346 = sitofp i32 %1345 to float
  %1347 = fadd fast float %1346, 0xC1CFBF8940000000
  %1348 = fmul fast float %1347, %1335
  %1349 = fadd fast float %1348, 0x41CFBF8940000000
  %1350 = fptosi float %1349 to i32
  %1351 = bitcast i32 %1350 to float
  %1352 = fmul fast float %1344, %1332
  %1353 = fmul fast float %1351, %1332
  %1354 = fsub fast float %1337, %1352
  %1355 = fadd fast float %1353, %1337
  %1356 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1357 = call float @dx.op.unary.f32(i32 7, float %1355)  ; Saturate(value)
  %1358 = fsub fast float %1326, %1356
  %1359 = fsub fast float %1357, %1356
  %1360 = bitcast float %1359 to i32
  %1361 = sub nsw i32 2129859010, %1360
  %1362 = bitcast i32 %1361 to float
  %1363 = fmul fast float %1362, %1358
  %1364 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  br label %1365

; <label>:1365                                    ; preds = %1319, %1314
  %1366 = phi float [ %1364, %1319 ], [ %528, %1314 ]
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = and i32 %1368, 128
  %1370 = icmp eq i32 %1369, 0
  br i1 %1370, label %1387, label %1371

; <label>:1371                                    ; preds = %1365
  %1372 = add i32 %45, 476
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.i32 %1373, 0
  %1375 = add i32 %1374, 0
  %1376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1375, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1377 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1376, %dx.types.Handle %98, float %1315, float %1316, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1378 = extractvalue %dx.types.ResRet.f32 %1377, 0
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = and i32 %1380, 524288
  %1382 = icmp ne i32 %1381, 0
  %1383 = fcmp fast ogt float %1378, 0x3FE0101020000000
  %1384 = select i1 %1383, float 1.000000e+00, float 0.000000e+00
  %1385 = select i1 %1382, float %1384, float %1378
  %1386 = fmul fast float %1385, %1366
  br label %1387

; <label>:1387                                    ; preds = %1371, %1365
  %1388 = phi float [ %1386, %1371 ], [ %1366, %1365 ]
  %1389 = fcmp fast ult float %1388, 0x3F70101020000000
  br i1 %1389, label %2128, label %1390

; <label>:1390                                    ; preds = %1387
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = and i32 %1392, 16
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1593, label %1395

; <label>:1395                                    ; preds = %1390
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = add i32 %45, 428
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1398, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = add i32 %1400, 0
  %1402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1401, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1403 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1402, %dx.types.Handle %97, float %1315, float %1316, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = extractvalue %dx.types.ResRet.f32 %1403, 1
  %1406 = extractvalue %dx.types.ResRet.f32 %1403, 2
  %1407 = extractvalue %dx.types.ResRet.f32 %1403, 3
  %1408 = and i32 %1397, 255
  %1409 = uitofp i32 %1408 to float
  %1410 = lshr i32 %1397, 8
  %1411 = and i32 %1410, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = fmul fast float %1407, %1409
  %1414 = fadd fast float %1413, %1412
  %1415 = fmul fast float %1414, 0x3F70101000000000
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = and i32 %1417, 512
  %1419 = icmp eq i32 %1418, 0
  br i1 %1419, label %1428, label %1420

; <label>:1420                                    ; preds = %1395
  %1421 = add i32 %45, 512
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1421, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = add i32 %1423, 0
  %1425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1424, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1426 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1425, %dx.types.Handle %98, float %1315, float %1316, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1427 = extractvalue %dx.types.ResRet.f32 %1426, 0
  br label %1428

; <label>:1428                                    ; preds = %1420, %1395
  %1429 = phi float [ %1427, %1420 ], [ 1.000000e+00, %1395 ]
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = and i32 %1431, 33554432
  %1433 = icmp eq i32 %1432, 0
  br i1 %1433, label %1540, label %1434

; <label>:1434                                    ; preds = %1428
  %1435 = add i32 %45, 240
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = and i32 %1437, 65535
  %1439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1438)  ; LegacyF16ToF32(value)
  %1440 = lshr i32 %1437, 16
  %1441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1440)  ; LegacyF16ToF32(value)
  %1442 = add i32 %45, 244
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = and i32 %1444, 65535
  %1446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1445)  ; LegacyF16ToF32(value)
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = lshr i32 %1448, 24
  %1450 = uitofp i32 %1449 to float
  %1451 = fmul fast float %1450, 0x3F70101020000000
  %1452 = and i32 %1448, 255
  %1453 = uitofp i32 %1452 to float
  %1454 = fmul fast float %1453, 0x3F70101020000000
  %1455 = lshr i32 %1448, 8
  %1456 = and i32 %1455, 255
  %1457 = uitofp i32 %1456 to float
  %1458 = fmul fast float %1457, 0x3F70101020000000
  %1459 = lshr i32 %1448, 16
  %1460 = and i32 %1459, 255
  %1461 = uitofp i32 %1460 to float
  %1462 = fmul fast float %1461, 0x3F70101020000000
  %1463 = add i32 %45, 236
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = lshr i32 %1465, 24
  %1467 = uitofp i32 %1466 to float
  %1468 = fmul fast float %1467, 0x3F70101020000000
  %1469 = and i32 %1465, 255
  %1470 = uitofp i32 %1469 to float
  %1471 = fmul fast float %1470, 0x3F70101020000000
  %1472 = lshr i32 %1465, 8
  %1473 = and i32 %1472, 255
  %1474 = uitofp i32 %1473 to float
  %1475 = fmul fast float %1474, 0x3F70101020000000
  %1476 = lshr i32 %1465, 16
  %1477 = and i32 %1476, 255
  %1478 = uitofp i32 %1477 to float
  %1479 = fmul fast float %1478, 0x3F70101020000000
  %1480 = bitcast float %1404 to i32
  %1481 = ashr i32 %1480, 1
  %1482 = sub nsw i32 1597463174, %1481
  %1483 = bitcast i32 %1482 to float
  %1484 = fmul fast float %1404, 5.000000e-01
  %1485 = fmul fast float %1483, %1483
  %1486 = fmul fast float %1485, %1484
  %1487 = fsub fast float 1.500000e+00, %1486
  %1488 = fmul fast float %1483, %1404
  %1489 = fmul fast float %1488, %1487
  %1490 = bitcast float %1405 to i32
  %1491 = ashr i32 %1490, 1
  %1492 = sub nsw i32 1597463174, %1491
  %1493 = bitcast i32 %1492 to float
  %1494 = fmul fast float %1405, 5.000000e-01
  %1495 = fmul fast float %1493, %1493
  %1496 = fmul fast float %1495, %1494
  %1497 = fsub fast float 1.500000e+00, %1496
  %1498 = fmul fast float %1493, %1405
  %1499 = fmul fast float %1498, %1497
  %1500 = bitcast float %1406 to i32
  %1501 = ashr i32 %1500, 1
  %1502 = sub nsw i32 1597463174, %1501
  %1503 = bitcast i32 %1502 to float
  %1504 = fmul fast float %1406, 5.000000e-01
  %1505 = fmul fast float %1503, %1503
  %1506 = fmul fast float %1505, %1504
  %1507 = fsub fast float 1.500000e+00, %1506
  %1508 = fmul fast float %1503, %1406
  %1509 = fmul fast float %1508, %1507
  %1510 = fsub fast float %1489, %1471
  %1511 = fsub fast float %1499, %1475
  %1512 = fsub fast float %1509, %1479
  %1513 = fmul fast float %1510, %1439
  %1514 = fmul fast float %1511, %1441
  %1515 = fmul fast float %1512, %1446
  %1516 = fadd fast float %1513, %1454
  %1517 = fadd fast float %1514, %1458
  %1518 = fadd fast float %1515, %1462
  %1519 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1520 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1521 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1522 = fmul fast float %1519, %1519
  %1523 = fmul fast float %1520, %1520
  %1524 = fmul fast float %1521, %1521
  %1525 = fsub fast float %1522, %1404
  %1526 = fsub fast float %1523, %1405
  %1527 = fsub fast float %1524, %1406
  %1528 = fmul fast float %1525, %1429
  %1529 = fmul fast float %1526, %1429
  %1530 = fmul fast float %1527, %1429
  %1531 = fadd fast float %1528, %1404
  %1532 = fadd fast float %1529, %1405
  %1533 = fadd fast float %1530, %1406
  %1534 = fadd fast float %1451, %1415
  %1535 = fsub fast float %1534, %1468
  %1536 = call float @dx.op.unary.f32(i32 7, float %1535)  ; Saturate(value)
  %1537 = fsub fast float %1536, %1415
  %1538 = fmul fast float %1537, %1429
  %1539 = fadd fast float %1538, %1415
  br label %1593

; <label>:1540                                    ; preds = %1428
  %1541 = and i32 %1431, 134217728
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %1577, label %1543

; <label>:1543                                    ; preds = %1540
  %1544 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %1545 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %1546 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %1547 = fadd fast float %1544, -5.000000e-01
  %1548 = fadd fast float %1545, -5.000000e-01
  %1549 = fadd fast float %1546, -5.000000e-01
  %1550 = fmul fast float %1547, %1429
  %1551 = fmul fast float %1548, %1429
  %1552 = fmul fast float %1549, %1429
  %1553 = fadd fast float %1550, 5.000000e-01
  %1554 = fadd fast float %1551, 5.000000e-01
  %1555 = fadd fast float %1552, 5.000000e-01
  %1556 = call float @dx.op.unary.f32(i32 24, float %1404)  ; Sqrt(value)
  %1557 = call float @dx.op.unary.f32(i32 24, float %1405)  ; Sqrt(value)
  %1558 = call float @dx.op.unary.f32(i32 24, float %1406)  ; Sqrt(value)
  %1559 = fmul fast float %1553, 2.000000e+00
  %1560 = fsub fast float 1.000000e+00, %1559
  %1561 = fmul fast float %1560, %1556
  %1562 = fadd fast float %1561, %1559
  %1563 = fmul fast float %1562, %1556
  %1564 = fmul fast float %1554, 2.000000e+00
  %1565 = fsub fast float 1.000000e+00, %1564
  %1566 = fmul fast float %1565, %1557
  %1567 = fadd fast float %1566, %1564
  %1568 = fmul fast float %1567, %1557
  %1569 = fmul fast float %1555, 2.000000e+00
  %1570 = fsub fast float 1.000000e+00, %1569
  %1571 = fmul fast float %1570, %1558
  %1572 = fadd fast float %1571, %1569
  %1573 = fmul fast float %1572, %1558
  %1574 = fmul fast float %1563, %1563
  %1575 = fmul fast float %1568, %1568
  %1576 = fmul fast float %1573, %1573
  br label %1593

; <label>:1577                                    ; preds = %1540
  %1578 = fmul fast float %360, %360
  %1579 = fmul fast float %364, %364
  %1580 = fmul fast float %368, %368
  %1581 = fadd fast float %1578, -1.000000e+00
  %1582 = fadd fast float %1579, -1.000000e+00
  %1583 = fadd fast float %1580, -1.000000e+00
  %1584 = fmul fast float %1429, %1581
  %1585 = fmul fast float %1429, %1582
  %1586 = fmul fast float %1429, %1583
  %1587 = fadd fast float %1584, 1.000000e+00
  %1588 = fadd fast float %1585, 1.000000e+00
  %1589 = fadd fast float %1586, 1.000000e+00
  %1590 = fmul fast float %1587, %1404
  %1591 = fmul fast float %1588, %1405
  %1592 = fmul fast float %1589, %1406
  br label %1593

; <label>:1593                                    ; preds = %1577, %1543, %1434, %1390
  %1594 = phi float [ %1539, %1434 ], [ %1415, %1543 ], [ %1415, %1577 ], [ 0x3FA23C0BE0000000, %1390 ]
  %1595 = phi float [ %1531, %1434 ], [ %1574, %1543 ], [ %1590, %1577 ], [ 1.000000e+00, %1390 ]
  %1596 = phi float [ %1532, %1434 ], [ %1575, %1543 ], [ %1591, %1577 ], [ 1.000000e+00, %1390 ]
  %1597 = phi float [ %1533, %1434 ], [ %1576, %1543 ], [ %1592, %1577 ], [ 1.000000e+00, %1390 ]
  %1598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1599 = extractvalue %dx.types.CBufRet.i32 %1598, 1
  %1600 = and i32 %1599, 1
  %1601 = icmp ne i32 %1600, 0
  %1602 = add i32 %45, 356
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1602, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = and i32 %1604, 32
  %1606 = icmp ne i32 %1605, 0
  %1607 = and i1 %1601, %1606
  %1608 = select i1 %1607, float 1.000000e+00, float %1595
  %1609 = select i1 %1607, float 0x3FD3333340000000, float %1596
  %1610 = select i1 %1607, float 0x3FD3333340000000, float %1597
  %1611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.i32 %1611, 0
  %1613 = and i32 %1612, 32
  %1614 = icmp eq i32 %1613, 0
  br i1 %1614, label %1687, label %1615

; <label>:1615                                    ; preds = %1593
  %1616 = add i32 %45, 108
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1616, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = add i32 %45, 444
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1619, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = add i32 %1621, 0
  %1623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1622, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1624 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1623, %dx.types.Handle %97, float %1315, float %1316, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1625 = extractvalue %dx.types.ResRet.f32 %1624, 0
  %1626 = extractvalue %dx.types.ResRet.f32 %1624, 1
  %1627 = extractvalue %dx.types.ResRet.f32 %1624, 2
  %1628 = extractvalue %dx.types.ResRet.f32 %1624, 3
  %1629 = and i32 %1618, 255
  %1630 = uitofp i32 %1629 to float
  %1631 = lshr i32 %1618, 8
  %1632 = and i32 %1631, 255
  %1633 = uitofp i32 %1632 to float
  %1634 = lshr i32 %1618, 16
  %1635 = and i32 %1634, 255
  %1636 = uitofp i32 %1635 to float
  %1637 = fmul fast float %1636, 0x3F70101000000000
  %1638 = fmul fast float %1625, %1630
  %1639 = fadd fast float %1638, %1633
  %1640 = fmul fast float %1639, 0x3F70101000000000
  %1641 = fadd fast float %1626, -5.000000e-01
  %1642 = fadd fast float %1628, -5.000000e-01
  %1643 = fmul fast float %1641, %1637
  %1644 = fmul fast float %1642, %1637
  %1645 = fadd fast float %1643, 5.000000e-01
  %1646 = fadd fast float %1644, 5.000000e-01
  %1647 = fmul fast float %1645, 2.000000e+00
  %1648 = fadd fast float %1647, -1.000000e+00
  %1649 = fmul fast float %1646, 2.000000e+00
  %1650 = fadd fast float %1649, -1.000000e+00
  %1651 = fadd fast float %1648, %1650
  %1652 = fmul fast float %1651, 5.000000e-01
  %1653 = fsub fast float %1648, %1650
  %1654 = fmul fast float %1653, 5.000000e-01
  %1655 = call float @dx.op.unary.f32(i32 6, float %1652)  ; FAbs(value)
  %1656 = fsub fast float 1.000000e+00, %1655
  %1657 = call float @dx.op.unary.f32(i32 6, float %1654)  ; FAbs(value)
  %1658 = fsub fast float %1656, %1657
  %1659 = call float @dx.op.dot3.f32(i32 55, float %1652, float %1654, float %1658, float %1652, float %1654, float %1658)  ; Dot3(ax,ay,az,bx,by,bz)
  %1660 = call float @dx.op.unary.f32(i32 25, float %1659)  ; Rsqrt(value)
  %1661 = fmul fast float %1652, %1660
  %1662 = fmul fast float %1654, %1660
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = and i32 %1664, 67108864
  %1666 = icmp eq i32 %1665, 0
  br i1 %1666, label %1683, label %1667

; <label>:1667                                    ; preds = %1615
  %1668 = add i32 %45, 296
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1668, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = and i32 %1670, 65535
  %1672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1671)  ; LegacyF16ToF32(value)
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = and i32 %1674, 65535
  %1676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1675)  ; LegacyF16ToF32(value)
  %1677 = lshr i32 %1670, 16
  %1678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1677)  ; LegacyF16ToF32(value)
  %1679 = fsub fast float %1640, %1678
  %1680 = fmul fast float %1679, %1672
  %1681 = fadd fast float %1680, %1676
  %1682 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  br label %1683

; <label>:1683                                    ; preds = %1667, %1615
  %1684 = phi float [ %1682, %1667 ], [ %1640, %1615 ]
  %1685 = call float @dx.op.dot2.f32(i32 54, float %1661, float %1662, float %1219, float %1220)  ; Dot2(ax,ay,bx,by)
  %1686 = call float @dx.op.dot2.f32(i32 54, float %1661, float %1662, float %1221, float %1222)  ; Dot2(ax,ay,bx,by)
  br label %1687

; <label>:1687                                    ; preds = %1683, %1593
  %1688 = phi float [ %1684, %1683 ], [ 0x3FD6666660000000, %1593 ]
  %1689 = phi float [ %1685, %1683 ], [ 0.000000e+00, %1593 ]
  %1690 = phi float [ %1686, %1683 ], [ 0.000000e+00, %1593 ]
  %1691 = phi float [ %1627, %1683 ], [ 1.000000e+00, %1593 ]
  %1692 = add i32 %45, 176
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = lshr i32 %1694, 22
  %1696 = shl nuw nsw i32 %1695, 5
  %1697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1696)  ; LegacyF16ToF32(value)
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = and i32 %1699, 64
  %1701 = icmp eq i32 %1700, 0
  br i1 %1701, label %1735, label %1702

; <label>:1702                                    ; preds = %1687
  %1703 = add i32 %45, 460
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = add i32 %1705, 0
  %1707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 131072
  %1711 = icmp eq i32 %1710, 0
  %1712 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1707, %dx.types.Handle %97, float %1315, float %1316, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1713 = extractvalue %dx.types.ResRet.f32 %1712, 0
  %1714 = extractvalue %dx.types.ResRet.f32 %1712, 1
  %1715 = extractvalue %dx.types.ResRet.f32 %1712, 2
  %1716 = fmul fast float %1713, %348
  %1717 = fmul fast float %1714, %351
  %1718 = fmul fast float %1715, %354
  br i1 %1711, label %1725, label %1719

; <label>:1719                                    ; preds = %1702
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 0
  %1722 = fmul fast float %1721, %1716
  %1723 = fmul fast float %1721, %1717
  %1724 = fmul fast float %1721, %1718
  br label %1725

; <label>:1725                                    ; preds = %1719, %1702
  %1726 = phi float [ %1722, %1719 ], [ %1716, %1702 ]
  %1727 = phi float [ %1723, %1719 ], [ %1717, %1702 ]
  %1728 = phi float [ %1724, %1719 ], [ %1718, %1702 ]
  %1729 = fmul fast float %1726, %1697
  %1730 = select i1 %286, float %1729, float %1726
  %1731 = call float @dx.op.dot3.f32(i32 55, float %1730, float %1727, float %1728, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1732 = select i1 %286, float 0.000000e+00, float %1726
  %1733 = select i1 %286, float %1731, float %1727
  %1734 = select i1 %286, float 0.000000e+00, float %1728
  br label %1735

; <label>:1735                                    ; preds = %1725, %1687
  %1736 = phi float [ %1732, %1725 ], [ 0.000000e+00, %1687 ]
  %1737 = phi float [ %1733, %1725 ], [ 0.000000e+00, %1687 ]
  %1738 = phi float [ %1734, %1725 ], [ 0.000000e+00, %1687 ]
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = and i32 %1740, 1024
  %1742 = icmp eq i32 %1741, 0
  br i1 %1742, label %1773, label %1743

; <label>:1743                                    ; preds = %1735
  %1744 = add i32 %45, 168
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1744, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = and i32 %1746, 255
  %1748 = uitofp i32 %1747 to float
  %1749 = fmul fast float %1748, 0x3F70101020000000
  %1750 = lshr i32 %1746, 8
  %1751 = and i32 %1750, 255
  %1752 = uitofp i32 %1751 to float
  %1753 = fmul fast float %1752, 0x3F70101020000000
  %1754 = lshr i32 %1746, 16
  %1755 = and i32 %1754, 255
  %1756 = uitofp i32 %1755 to float
  %1757 = fmul fast float %1756, 0x3F70101020000000
  %1758 = fmul fast float %1749, %1749
  %1759 = fmul fast float %1753, %1753
  %1760 = fmul fast float %1757, %1757
  %1761 = add i32 %45, 528
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = add i32 %1763, 0
  %1765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1765, %dx.types.Handle %98, float %1315, float %1316, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1767 = extractvalue %dx.types.ResRet.f32 %1766, 0
  %1768 = extractvalue %dx.types.ResRet.f32 %1766, 1
  %1769 = extractvalue %dx.types.ResRet.f32 %1766, 2
  %1770 = fmul fast float %1758, %1767
  %1771 = fmul fast float %1759, %1768
  %1772 = fmul fast float %1760, %1769
  br label %1773

; <label>:1773                                    ; preds = %1743, %1735
  %1774 = phi float [ %1770, %1743 ], [ 0.000000e+00, %1735 ]
  %1775 = phi float [ %1771, %1743 ], [ 0.000000e+00, %1735 ]
  %1776 = phi float [ %1772, %1743 ], [ 0.000000e+00, %1735 ]
  %1777 = fcmp fast ogt float %1774, 0.000000e+00
  %1778 = fcmp fast ogt float %1775, 0.000000e+00
  %1779 = fcmp fast ogt float %1776, 0.000000e+00
  %1780 = call float @dx.op.unary.f32(i32 23, float %1774)  ; Log(value)
  %1781 = call float @dx.op.unary.f32(i32 23, float %1775)  ; Log(value)
  %1782 = call float @dx.op.unary.f32(i32 23, float %1776)  ; Log(value)
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = lshr i32 %1784, 7
  %1786 = and i32 %1785, 32752
  %1787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1786)  ; LegacyF16ToF32(value)
  %1788 = fmul fast float %1780, 0xBFE62E4300000000
  %1789 = fmul fast float %1788, %1787
  %1790 = fmul fast float %1781, 0xBFE62E4300000000
  %1791 = fmul fast float %1790, %1787
  %1792 = fmul fast float %1782, 0xBFE62E4300000000
  %1793 = fmul fast float %1792, %1787
  %1794 = select i1 %1777, float %1789, float 1.270000e+02
  %1795 = select i1 %1778, float %1791, float 1.270000e+02
  %1796 = select i1 %1779, float %1793, float 1.270000e+02
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = and i32 %1798, 10240
  %1800 = icmp eq i32 %1799, 0
  br i1 %1800, label %1845, label %1801

; <label>:1801                                    ; preds = %1773
  %1802 = add i32 %45, 544
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = add i32 %1804, 0
  %1806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1805, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1807 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1806, %dx.types.Handle %98, float %1315, float %1316, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1808 = extractvalue %dx.types.ResRet.f32 %1807, 1
  %1809 = extractvalue %dx.types.ResRet.f32 %1807, 3
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = and i32 %1811, 1048576
  %1813 = icmp ne i32 %1812, 0
  %1814 = and i32 %1811, 8192
  %1815 = icmp eq i32 %1814, 0
  br i1 %1815, label %1831, label %1816

; <label>:1816                                    ; preds = %1801
  %1817 = extractvalue %dx.types.ResRet.f32 %1807, 2
  %1818 = select i1 %1813, float %1817, float %1808
  %1819 = extractvalue %dx.types.ResRet.f32 %1807, 0
  %1820 = select i1 %1813, float %1819, float %1808
  %1821 = add i32 %45, 112
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = lshr i32 %1823, 16
  %1825 = and i32 %1824, 255
  %1826 = uitofp i32 %1825 to float
  %1827 = fmul fast float %1826, 0x3F80101020000000
  %1828 = fmul fast float %1827, %1820
  %1829 = fmul fast float %1827, %1808
  %1830 = fmul fast float %1827, %1818
  br label %1831

; <label>:1831                                    ; preds = %1816, %1801
  %1832 = phi float [ %1828, %1816 ], [ 0.000000e+00, %1801 ]
  %1833 = phi float [ %1829, %1816 ], [ 0.000000e+00, %1801 ]
  %1834 = phi float [ %1830, %1816 ], [ 0.000000e+00, %1801 ]
  %1835 = and i32 %1811, 2048
  %1836 = icmp eq i32 %1835, 0
  br i1 %1836, label %1845, label %1837

; <label>:1837                                    ; preds = %1831
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = shl i32 %1839, 4
  %1841 = and i32 %1840, 32752
  %1842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1841)  ; LegacyF16ToF32(value)
  %1843 = fmul fast float %1842, %1809
  %1844 = call float @dx.op.binary.f32(i32 35, float %1843, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1845

; <label>:1845                                    ; preds = %1837, %1831, %1773
  %1846 = phi float [ %1832, %1837 ], [ %1832, %1831 ], [ 0.000000e+00, %1773 ]
  %1847 = phi float [ %1833, %1837 ], [ %1833, %1831 ], [ 0.000000e+00, %1773 ]
  %1848 = phi float [ %1834, %1837 ], [ %1834, %1831 ], [ 0.000000e+00, %1773 ]
  %1849 = phi float [ %1844, %1837 ], [ 0x3F70101020000000, %1831 ], [ 0x3F70101020000000, %1773 ]
  %1850 = add i32 %45, 112
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = and i32 %1852, 255
  %1854 = uitofp i32 %1853 to float
  %1855 = lshr i32 %1852, 8
  %1856 = and i32 %1855, 255
  %1857 = uitofp i32 %1856 to float
  %1858 = call float @dx.op.dot3.f32(i32 55, float %1608, float %1609, float %1610, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1859 = fmul fast float %1857, %1858
  %1860 = fadd fast float %1859, %1854
  %1861 = fmul fast float %1860, 0x3F70101020000000
  %1862 = call float @dx.op.unary.f32(i32 7, float %1861)  ; Saturate(value)
  br i1 %1207, label %1863, label %1898

; <label>:1863                                    ; preds = %1845
  %1864 = fmul fast float %1849, 2.000000e+00
  %1865 = fcmp fast olt float %1794, 1.270000e+02
  %1866 = fcmp fast olt float %1795, 1.270000e+02
  %1867 = fcmp fast olt float %1796, 1.270000e+02
  %1868 = fmul fast float %1794, 0xBFF7154760000000
  %1869 = fmul fast float %1868, %1864
  %1870 = fmul fast float %1795, 0xBFF7154760000000
  %1871 = fmul fast float %1870, %1864
  %1872 = fmul fast float %1796, 0xBFF7154760000000
  %1873 = fmul fast float %1872, %1864
  %1874 = call float @dx.op.unary.f32(i32 21, float %1869)  ; Exp(value)
  %1875 = call float @dx.op.unary.f32(i32 21, float %1871)  ; Exp(value)
  %1876 = call float @dx.op.unary.f32(i32 21, float %1873)  ; Exp(value)
  %1877 = call float @dx.op.unary.f32(i32 7, float %1874)  ; Saturate(value)
  %1878 = call float @dx.op.unary.f32(i32 7, float %1875)  ; Saturate(value)
  %1879 = call float @dx.op.unary.f32(i32 7, float %1876)  ; Saturate(value)
  %1880 = fadd fast float %1877, -1.000000e+00
  %1881 = select i1 %1865, float %1880, float -1.000000e+00
  %1882 = fadd fast float %1878, -1.000000e+00
  %1883 = select i1 %1866, float %1882, float -1.000000e+00
  %1884 = fadd fast float %1879, -1.000000e+00
  %1885 = select i1 %1867, float %1884, float -1.000000e+00
  %1886 = fmul fast float %1881, %1388
  %1887 = fmul fast float %1883, %1388
  %1888 = fmul fast float %1885, %1388
  %1889 = fadd fast float %1886, 1.000000e+00
  %1890 = fadd fast float %1887, 1.000000e+00
  %1891 = fadd fast float %1888, 1.000000e+00
  %1892 = fmul fast float %1889, %1188
  %1893 = fmul fast float %1890, %1189
  %1894 = fmul fast float %1891, %1190
  %1895 = fmul fast float %1889, %1191
  %1896 = fmul fast float %1890, %1192
  %1897 = fmul fast float %1891, %1193
  br label %1898

; <label>:1898                                    ; preds = %1863, %1845
  %1899 = phi float [ %1892, %1863 ], [ %1188, %1845 ]
  %1900 = phi float [ %1893, %1863 ], [ %1189, %1845 ]
  %1901 = phi float [ %1894, %1863 ], [ %1190, %1845 ]
  %1902 = phi float [ %1895, %1863 ], [ %1191, %1845 ]
  %1903 = phi float [ %1896, %1863 ], [ %1192, %1845 ]
  %1904 = phi float [ %1897, %1863 ], [ %1193, %1845 ]
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = and i32 %1906, 3
  %1908 = icmp eq i32 %1907, 3
  br i1 %1908, label %1987, label %1909

; <label>:1909                                    ; preds = %1898
  %1910 = and i32 %1906, 16
  %1911 = icmp ne i32 %1910, 0
  %1912 = select i1 %1911, float %1388, float 0.000000e+00
  %1913 = icmp eq i32 %1907, 0
  br i1 %1913, label %1914, label %1942

; <label>:1914                                    ; preds = %1909
  %1915 = and i32 %1906, 64
  %1916 = icmp ne i32 %1915, 0
  %1917 = select i1 %1916, float %1388, float 0.000000e+00
  %1918 = fsub fast float %1608, %1899
  %1919 = fsub fast float %1609, %1900
  %1920 = fsub fast float %1610, %1901
  %1921 = fmul fast float %1912, %1918
  %1922 = fmul fast float %1912, %1919
  %1923 = fmul fast float %1912, %1920
  %1924 = fadd fast float %1921, %1899
  %1925 = fadd fast float %1922, %1900
  %1926 = fadd fast float %1923, %1901
  %1927 = fsub fast float %1594, %1200
  %1928 = fmul fast float %1912, %1927
  %1929 = fadd fast float %1928, %1200
  %1930 = fsub fast float %1736, %1902
  %1931 = fsub fast float %1737, %1903
  %1932 = fsub fast float %1738, %1904
  %1933 = fmul fast float %1917, %1930
  %1934 = fmul fast float %1917, %1931
  %1935 = fmul fast float %1917, %1932
  %1936 = fadd fast float %1933, %1902
  %1937 = fadd fast float %1934, %1903
  %1938 = fadd fast float %1935, %1904
  %1939 = fsub fast float %1862, %1205
  %1940 = fmul fast float %1912, %1939
  %1941 = fadd fast float %1940, %1205
  br label %1987

; <label>:1942                                    ; preds = %1909
  %1943 = icmp eq i32 %1907, 1
  br i1 %1943, label %1944, label %1957

; <label>:1944                                    ; preds = %1942
  %1945 = fadd fast float %1608, -1.000000e+00
  %1946 = fadd fast float %1609, -1.000000e+00
  %1947 = fadd fast float %1610, -1.000000e+00
  %1948 = fmul fast float %1912, %1945
  %1949 = fmul fast float %1912, %1946
  %1950 = fmul fast float %1912, %1947
  %1951 = fadd fast float %1948, 1.000000e+00
  %1952 = fadd fast float %1949, 1.000000e+00
  %1953 = fadd fast float %1950, 1.000000e+00
  %1954 = fmul fast float %1951, %1899
  %1955 = fmul fast float %1952, %1900
  %1956 = fmul fast float %1953, %1901
  br label %1987

; <label>:1957                                    ; preds = %1942
  %1958 = icmp eq i32 %1907, 2
  br i1 %1958, label %1959, label %1987

; <label>:1959                                    ; preds = %1957
  %1960 = call float @dx.op.unary.f32(i32 24, float %1608)  ; Sqrt(value)
  %1961 = call float @dx.op.unary.f32(i32 24, float %1609)  ; Sqrt(value)
  %1962 = call float @dx.op.unary.f32(i32 24, float %1610)  ; Sqrt(value)
  %1963 = fadd fast float %1960, -5.000000e-01
  %1964 = fadd fast float %1961, -5.000000e-01
  %1965 = fadd fast float %1962, -5.000000e-01
  %1966 = fmul fast float %1963, %1912
  %1967 = fmul fast float %1964, %1912
  %1968 = fmul fast float %1965, %1912
  %1969 = fadd fast float %1966, 5.000000e-01
  %1970 = fadd fast float %1967, 5.000000e-01
  %1971 = fadd fast float %1968, 5.000000e-01
  %1972 = fmul fast float %1969, 2.000000e+00
  %1973 = fsub fast float 1.000000e+00, %1972
  %1974 = fmul fast float %1973, %1899
  %1975 = fadd fast float %1974, %1972
  %1976 = fmul fast float %1975, %1899
  %1977 = fmul fast float %1970, 2.000000e+00
  %1978 = fsub fast float 1.000000e+00, %1977
  %1979 = fmul fast float %1978, %1900
  %1980 = fadd fast float %1979, %1977
  %1981 = fmul fast float %1980, %1900
  %1982 = fmul fast float %1971, 2.000000e+00
  %1983 = fsub fast float 1.000000e+00, %1982
  %1984 = fmul fast float %1983, %1901
  %1985 = fadd fast float %1984, %1982
  %1986 = fmul fast float %1985, %1901
  br label %1987

; <label>:1987                                    ; preds = %1959, %1957, %1944, %1914, %1898
  %1988 = phi float [ %1899, %1898 ], [ %1976, %1959 ], [ %1899, %1957 ], [ %1954, %1944 ], [ %1924, %1914 ]
  %1989 = phi float [ %1900, %1898 ], [ %1981, %1959 ], [ %1900, %1957 ], [ %1955, %1944 ], [ %1925, %1914 ]
  %1990 = phi float [ %1901, %1898 ], [ %1986, %1959 ], [ %1901, %1957 ], [ %1956, %1944 ], [ %1926, %1914 ]
  %1991 = phi float [ %1902, %1898 ], [ %1902, %1959 ], [ %1902, %1957 ], [ %1902, %1944 ], [ %1936, %1914 ]
  %1992 = phi float [ %1903, %1898 ], [ %1903, %1959 ], [ %1903, %1957 ], [ %1903, %1944 ], [ %1937, %1914 ]
  %1993 = phi float [ %1904, %1898 ], [ %1904, %1959 ], [ %1904, %1957 ], [ %1904, %1944 ], [ %1938, %1914 ]
  %1994 = phi float [ %1200, %1898 ], [ %1200, %1959 ], [ %1200, %1957 ], [ %1200, %1944 ], [ %1929, %1914 ]
  %1995 = phi float [ %1205, %1898 ], [ %1205, %1959 ], [ %1205, %1957 ], [ %1205, %1944 ], [ %1941, %1914 ]
  %1996 = and i32 %1906, 12
  %1997 = icmp eq i32 %1996, 12
  br i1 %1997, label %2128, label %1998

; <label>:1998                                    ; preds = %1987
  %1999 = and i32 %1906, 2097184
  %2000 = icmp eq i32 %1999, 2097184
  %2001 = select i1 %2000, float %1388, float 0.000000e+00
  %2002 = and i32 %1906, 4194336
  %2003 = icmp eq i32 %2002, 4194336
  %2004 = select i1 %2003, float %1388, float 0.000000e+00
  %2005 = and i32 %1906, 8388640
  %2006 = icmp eq i32 %2005, 8388640
  %2007 = select i1 %2006, float %1388, float 0.000000e+00
  %2008 = and i32 %1906, 1024
  %2009 = icmp ne i32 %2008, 0
  %2010 = select i1 %2009, float %1388, float 0.000000e+00
  %2011 = and i32 %1906, 2048
  %2012 = icmp ne i32 %2011, 0
  %2013 = select i1 %2012, float %1388, float 0.000000e+00
  %2014 = and i32 %1906, 8192
  %2015 = icmp ne i32 %2014, 0
  %2016 = select i1 %2015, float %1388, float 0.000000e+00
  %2017 = icmp eq i32 %1996, 0
  br i1 %2017, label %2018, label %2052

; <label>:2018                                    ; preds = %1998
  %2019 = fsub fast float %1689, %1186
  %2020 = fsub fast float %1690, %1187
  %2021 = fmul fast float %2001, %2019
  %2022 = fmul fast float %2001, %2020
  %2023 = fadd fast float %2021, %1186
  %2024 = fadd fast float %2022, %1187
  %2025 = fsub fast float %1691, %1203
  %2026 = fmul fast float %2004, %2025
  %2027 = fadd fast float %2026, %1203
  %2028 = fsub fast float %1688, %1202
  %2029 = fmul fast float %2007, %2028
  %2030 = fadd fast float %2029, %1202
  %2031 = fsub fast float %1794, %1194
  %2032 = fsub fast float %1795, %1195
  %2033 = fsub fast float %1796, %1196
  %2034 = fmul fast float %2010, %2031
  %2035 = fmul fast float %2010, %2032
  %2036 = fmul fast float %2010, %2033
  %2037 = fadd fast float %2034, %1194
  %2038 = fadd fast float %2035, %1195
  %2039 = fadd fast float %2036, %1196
  %2040 = fsub fast float %1849, %1204
  %2041 = fmul fast float %2013, %2040
  %2042 = fadd fast float %2041, %1204
  %2043 = fsub fast float %1846, %1197
  %2044 = fsub fast float %1847, %1198
  %2045 = fsub fast float %1848, %1199
  %2046 = fmul fast float %2016, %2043
  %2047 = fmul fast float %2016, %2044
  %2048 = fmul fast float %2016, %2045
  %2049 = fadd fast float %2046, %1197
  %2050 = fadd fast float %2047, %1198
  %2051 = fadd fast float %2048, %1199
  br label %2128

; <label>:2052                                    ; preds = %1998
  %2053 = icmp eq i32 %1996, 4
  br i1 %2053, label %2054, label %2100

; <label>:2054                                    ; preds = %2052
  %2055 = fmul fast float %2001, %1689
  %2056 = fmul fast float %2001, %1690
  %2057 = fadd fast float %2055, %1186
  %2058 = fadd fast float %2056, %1187
  %2059 = call float @dx.op.binary.f32(i32 36, float %1203, float %1691)  ; FMin(a,b)
  %2060 = fsub fast float %2059, %1203
  %2061 = fmul fast float %2060, %2004
  %2062 = fadd fast float %2061, %1203
  %2063 = fadd fast float %1688, %1202
  %2064 = fmul fast float %2063, 0x3FF337FAE0000000
  %2065 = fmul fast float %1202, %1202
  %2066 = fmul fast float %1688, %1688
  %2067 = fadd fast float %2066, %2065
  %2068 = fmul fast float %2067, 0x3FE5152B00000000
  %2069 = fmul fast float %1202, 0xBFCC1F85E0000000
  %2070 = fmul fast float %2069, %1688
  %2071 = fadd fast float %2070, 0xBFE1363700000000
  %2072 = fadd fast float %2071, %2064
  %2073 = fsub fast float %2072, %2068
  %2074 = fmul fast float %2063, 0x3FBA6F0D00000000
  %2075 = fmul fast float %2067, 0x3FD0432880000000
  %2076 = fmul fast float %1202, 0xBFEF110800000000
  %2077 = fmul fast float %2076, %1688
  %2078 = fadd fast float %2077, 1.000000e+00
  %2079 = fsub fast float %2078, %2074
  %2080 = fadd fast float %2079, %2075
  %2081 = fdiv fast float %2073, %2080
  %2082 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  %2083 = fsub fast float %2082, %1202
  %2084 = fmul fast float %2083, %2007
  %2085 = fadd fast float %2084, %1202
  %2086 = fmul fast float %2010, %1794
  %2087 = fmul fast float %2010, %1795
  %2088 = fmul fast float %2010, %1796
  %2089 = fadd fast float %2086, %1194
  %2090 = fadd fast float %2087, %1195
  %2091 = fadd fast float %2088, %1196
  %2092 = fmul fast float %2013, %1849
  %2093 = fadd fast float %2092, %1204
  %2094 = fmul fast float %2016, %1846
  %2095 = fmul fast float %2016, %1847
  %2096 = fmul fast float %2016, %1848
  %2097 = fadd fast float %2094, %1197
  %2098 = fadd fast float %2095, %1198
  %2099 = fadd fast float %2096, %1199
  br label %2128

; <label>:2100                                    ; preds = %2052
  %2101 = icmp eq i32 %1996, 8
  br i1 %2101, label %2102, label %2128

; <label>:2102                                    ; preds = %2100
  %2103 = fmul fast float %2001, %1689
  %2104 = fmul fast float %2001, %1690
  %2105 = fadd fast float %2103, %1186
  %2106 = fadd fast float %2104, %1187
  %2107 = call float @dx.op.binary.f32(i32 36, float %1203, float %1691)  ; FMin(a,b)
  %2108 = fsub fast float %2107, %1203
  %2109 = fmul fast float %2108, %2004
  %2110 = fadd fast float %2109, %1203
  %2111 = fsub fast float %1688, %1202
  %2112 = fmul fast float %2007, %2111
  %2113 = fadd fast float %2112, %1202
  %2114 = fmul fast float %2010, %1794
  %2115 = fmul fast float %2010, %1795
  %2116 = fmul fast float %2010, %1796
  %2117 = fadd fast float %2114, %1194
  %2118 = fadd fast float %2115, %1195
  %2119 = fadd fast float %2116, %1196
  %2120 = fmul fast float %2013, %1849
  %2121 = fadd fast float %2120, %1204
  %2122 = fmul fast float %2016, %1846
  %2123 = fmul fast float %2016, %1847
  %2124 = fmul fast float %2016, %1848
  %2125 = fadd fast float %2122, %1197
  %2126 = fadd fast float %2123, %1198
  %2127 = fadd fast float %2124, %1199
  br label %2128

; <label>:2128                                    ; preds = %2102, %2100, %2054, %2018, %1987, %1387, %1206, %1185
  %2129 = phi float [ %1186, %1987 ], [ %1186, %1387 ], [ %1186, %1185 ], [ %2105, %2102 ], [ %1186, %2100 ], [ %2057, %2054 ], [ %2023, %2018 ], [ %1186, %1206 ]
  %2130 = phi float [ %1187, %1987 ], [ %1187, %1387 ], [ %1187, %1185 ], [ %2106, %2102 ], [ %1187, %2100 ], [ %2058, %2054 ], [ %2024, %2018 ], [ %1187, %1206 ]
  %2131 = phi float [ %1988, %1987 ], [ %1188, %1387 ], [ %1188, %1185 ], [ %1988, %2102 ], [ %1988, %2100 ], [ %1988, %2054 ], [ %1988, %2018 ], [ %1188, %1206 ]
  %2132 = phi float [ %1989, %1987 ], [ %1189, %1387 ], [ %1189, %1185 ], [ %1989, %2102 ], [ %1989, %2100 ], [ %1989, %2054 ], [ %1989, %2018 ], [ %1189, %1206 ]
  %2133 = phi float [ %1990, %1987 ], [ %1190, %1387 ], [ %1190, %1185 ], [ %1990, %2102 ], [ %1990, %2100 ], [ %1990, %2054 ], [ %1990, %2018 ], [ %1190, %1206 ]
  %2134 = phi float [ %1991, %1987 ], [ %1191, %1387 ], [ %1191, %1185 ], [ %1991, %2102 ], [ %1991, %2100 ], [ %1991, %2054 ], [ %1991, %2018 ], [ %1191, %1206 ]
  %2135 = phi float [ %1992, %1987 ], [ %1192, %1387 ], [ %1192, %1185 ], [ %1992, %2102 ], [ %1992, %2100 ], [ %1992, %2054 ], [ %1992, %2018 ], [ %1192, %1206 ]
  %2136 = phi float [ %1993, %1987 ], [ %1193, %1387 ], [ %1193, %1185 ], [ %1993, %2102 ], [ %1993, %2100 ], [ %1993, %2054 ], [ %1993, %2018 ], [ %1193, %1206 ]
  %2137 = phi float [ %1194, %1987 ], [ %1194, %1387 ], [ %1194, %1185 ], [ %2117, %2102 ], [ %1194, %2100 ], [ %2089, %2054 ], [ %2037, %2018 ], [ %1194, %1206 ]
  %2138 = phi float [ %1195, %1987 ], [ %1195, %1387 ], [ %1195, %1185 ], [ %2118, %2102 ], [ %1195, %2100 ], [ %2090, %2054 ], [ %2038, %2018 ], [ %1195, %1206 ]
  %2139 = phi float [ %1196, %1987 ], [ %1196, %1387 ], [ %1196, %1185 ], [ %2119, %2102 ], [ %1196, %2100 ], [ %2091, %2054 ], [ %2039, %2018 ], [ %1196, %1206 ]
  %2140 = phi float [ %1197, %1987 ], [ %1197, %1387 ], [ %1197, %1185 ], [ %2125, %2102 ], [ %1197, %2100 ], [ %2097, %2054 ], [ %2049, %2018 ], [ %1197, %1206 ]
  %2141 = phi float [ %1198, %1987 ], [ %1198, %1387 ], [ %1198, %1185 ], [ %2126, %2102 ], [ %1198, %2100 ], [ %2098, %2054 ], [ %2050, %2018 ], [ %1198, %1206 ]
  %2142 = phi float [ %1199, %1987 ], [ %1199, %1387 ], [ %1199, %1185 ], [ %2127, %2102 ], [ %1199, %2100 ], [ %2099, %2054 ], [ %2051, %2018 ], [ %1199, %1206 ]
  %2143 = phi float [ %1994, %1987 ], [ %1200, %1387 ], [ %1200, %1185 ], [ %1994, %2102 ], [ %1994, %2100 ], [ %1994, %2054 ], [ %1994, %2018 ], [ %1200, %1206 ]
  %2144 = phi float [ %1202, %1987 ], [ %1202, %1387 ], [ %1202, %1185 ], [ %2113, %2102 ], [ %1202, %2100 ], [ %2085, %2054 ], [ %2030, %2018 ], [ %1202, %1206 ]
  %2145 = phi float [ %1203, %1987 ], [ %1203, %1387 ], [ %1203, %1185 ], [ %2110, %2102 ], [ %1203, %2100 ], [ %2062, %2054 ], [ %2027, %2018 ], [ %1203, %1206 ]
  %2146 = phi float [ %1204, %1987 ], [ %1204, %1387 ], [ %1204, %1185 ], [ %2121, %2102 ], [ %1204, %2100 ], [ %2093, %2054 ], [ %2042, %2018 ], [ %1204, %1206 ]
  %2147 = phi float [ %1995, %1987 ], [ %1205, %1387 ], [ %1205, %1185 ], [ %1995, %2102 ], [ %1995, %2100 ], [ %1995, %2054 ], [ %1995, %2018 ], [ %1205, %1206 ]
  br i1 %475, label %3070, label %2148

; <label>:2148                                    ; preds = %2128
  %2149 = icmp ult i32 %531, 3
  %2150 = add i32 %45, 56
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = add i32 %45, 60
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = or i32 %2155, %2152
  %2157 = icmp eq i32 %2156, 0
  br i1 %2157, label %3070, label %2158

; <label>:2158                                    ; preds = %2148
  %2159 = and i32 %2152, 262144
  %2160 = icmp ne i32 %2159, 0
  %2161 = select i1 %2160, float %51, float 1.000000e+00
  %2162 = select i1 %2160, float %52, float 0.000000e+00
  %2163 = select i1 %2160, float %53, float 0.000000e+00
  %2164 = select i1 %2160, float %54, float 1.000000e+00
  %2165 = select i1 %2160, float %55, float %83
  %2166 = select i1 %2160, float %56, float %84
  %2167 = add i32 %45, 316
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = lshr i32 %2169, 16
  %2171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2170)  ; LegacyF16ToF32(value)
  %2172 = fmul fast float %2171, 0x3F50624DE0000000
  %2173 = add i32 %45, 120
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2173, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = lshr i32 %2175, 16
  %2177 = and i32 %2176, 255
  %2178 = lshr i32 %2175, 24
  %2179 = add i32 %45, 324
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2179, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = and i32 %2181, 65535
  %2183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2182)  ; LegacyF16ToF32(value)
  %2184 = lshr i32 %2181, 16
  %2185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2184)  ; LegacyF16ToF32(value)
  %2186 = add i32 %45, 64
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2186, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = lshr i32 %2188, 22
  %2190 = shl nuw nsw i32 %2189, 5
  %2191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2190)  ; LegacyF16ToF32(value)
  %2192 = shl i32 %2188, 4
  %2193 = and i32 %2192, 32752
  %2194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2193)  ; LegacyF16ToF32(value)
  %2195 = lshr i32 %2188, 7
  %2196 = and i32 %2195, 32752
  %2197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2196)  ; LegacyF16ToF32(value)
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 3
  %2200 = fmul fast float %2199, 1.000000e+03
  %2201 = fmul fast float %425, %2200
  %2202 = call float @dx.op.unary.f32(i32 22, float %2201)  ; Frc(value)
  %2203 = fadd fast float %2202, %415
  %2204 = fmul fast float %426, %2200
  %2205 = call float @dx.op.unary.f32(i32 22, float %2204)  ; Frc(value)
  %2206 = fadd fast float %2205, %417
  %2207 = fmul fast float %2172, %2200
  %2208 = call float @dx.op.unary.f32(i32 22, float %2207)  ; Frc(value)
  %2209 = fmul fast float %2208, 0x401921FB60000000
  %2210 = fadd fast float %2209, %2191
  %2211 = call float @dx.op.unary.f32(i32 13, float %2210)  ; Sin(value)
  %2212 = call float @dx.op.unary.f32(i32 12, float %2210)  ; Cos(value)
  %2213 = fsub fast float -0.000000e+00, %2211
  %2214 = fadd fast float %2165, -5.000000e-01
  %2215 = fadd fast float %2166, -5.000000e-01
  %2216 = fmul fast float %2183, %2214
  %2217 = fmul fast float %2185, %2215
  %2218 = fadd fast float %2216, 5.000000e-01
  %2219 = fadd fast float %2217, 5.000000e-01
  %2220 = fmul fast float %2194, %2218
  %2221 = fmul fast float %2197, %2219
  %2222 = fmul fast float %2212, %2220
  %2223 = call float @dx.op.tertiary.f32(i32 46, float %2213, float %2221, float %2222)  ; FMad(a,b,c)
  %2224 = fmul fast float %2211, %2220
  %2225 = call float @dx.op.tertiary.f32(i32 46, float %2212, float %2221, float %2224)  ; FMad(a,b,c)
  %2226 = fadd fast float %2203, %2223
  %2227 = fadd fast float %2206, %2225
  %2228 = icmp ugt i32 %2177, 1
  %2229 = icmp ugt i32 %2175, 33554431
  %2230 = or i1 %2229, %2228
  br i1 %2230, label %2231, label %2256

; <label>:2231                                    ; preds = %2158
  %2232 = add i32 %45, 260
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = lshr i32 %2234, 16
  %2236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2235)  ; LegacyF16ToF32(value)
  %2237 = fmul fast float %2199, %2236
  %2238 = call float @dx.op.unary.f32(i32 22, float %2237)  ; Frc(value)
  %2239 = mul nuw nsw i32 %2177, %2178
  %2240 = uitofp i32 %2239 to float
  %2241 = fmul fast float %2238, %2240
  %2242 = call float @dx.op.unary.f32(i32 27, float %2241)  ; Round_ni(value)
  %2243 = fptoui float %2242 to i32
  %2244 = urem i32 %2243, %2177
  %2245 = udiv i32 %2243, %2178
  %2246 = call float @dx.op.unary.f32(i32 22, float %2226)  ; Frc(value)
  %2247 = call float @dx.op.unary.f32(i32 22, float %2227)  ; Frc(value)
  %2248 = uitofp i32 %2244 to float
  %2249 = uitofp i32 %2245 to float
  %2250 = fadd fast float %2246, %2248
  %2251 = fadd fast float %2247, %2249
  %2252 = uitofp i32 %2177 to float
  %2253 = uitofp i32 %2178 to float
  %2254 = fdiv fast float %2250, %2252
  %2255 = fdiv fast float %2251, %2253
  br label %2256

; <label>:2256                                    ; preds = %2231, %2158
  %2257 = phi float [ %2254, %2231 ], [ %2226, %2158 ]
  %2258 = phi float [ %2255, %2231 ], [ %2227, %2158 ]
  %2259 = and i32 %2152, 256
  %2260 = icmp eq i32 %2259, 0
  br i1 %2260, label %2307, label %2261

; <label>:2261                                    ; preds = %2256
  %2262 = add i32 %45, 496
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = add i32 %2264, 0
  %2266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2265, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2267 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2266, %dx.types.Handle %98, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2268 = extractvalue %dx.types.ResRet.f32 %2267, 0
  %2269 = add i32 %45, 132
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = shl i32 %2271, 4
  %2273 = and i32 %2272, 32752
  %2274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2273)  ; LegacyF16ToF32(value)
  %2275 = lshr i32 %2271, 7
  %2276 = and i32 %2275, 32752
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = fsub fast float 1.000000e+00, %527
  %2279 = call float @dx.op.binary.f32(i32 35, float %2278, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2280 = bitcast float %527 to i32
  %2281 = sitofp i32 %2280 to float
  %2282 = fadd fast float %2281, 0xC1CFBF8940000000
  %2283 = fmul fast float %2277, %2282
  %2284 = fadd fast float %2283, 0x41CFBF8940000000
  %2285 = fptosi float %2284 to i32
  %2286 = bitcast i32 %2285 to float
  %2287 = bitcast float %2279 to i32
  %2288 = sitofp i32 %2287 to float
  %2289 = fadd fast float %2288, 0xC1CFBF8940000000
  %2290 = fmul fast float %2289, %2277
  %2291 = fadd fast float %2290, 0x41CFBF8940000000
  %2292 = fptosi float %2291 to i32
  %2293 = bitcast i32 %2292 to float
  %2294 = fmul fast float %2286, %2274
  %2295 = fmul fast float %2293, %2274
  %2296 = fsub fast float %2279, %2294
  %2297 = fadd fast float %2295, %2279
  %2298 = call float @dx.op.unary.f32(i32 7, float %2296)  ; Saturate(value)
  %2299 = call float @dx.op.unary.f32(i32 7, float %2297)  ; Saturate(value)
  %2300 = fsub fast float %2268, %2298
  %2301 = fsub fast float %2299, %2298
  %2302 = bitcast float %2301 to i32
  %2303 = sub nsw i32 2129859010, %2302
  %2304 = bitcast i32 %2303 to float
  %2305 = fmul fast float %2304, %2300
  %2306 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  br label %2307

; <label>:2307                                    ; preds = %2261, %2256
  %2308 = phi float [ %2306, %2261 ], [ %527, %2256 ]
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = and i32 %2310, 128
  %2312 = icmp eq i32 %2311, 0
  br i1 %2312, label %2329, label %2313

; <label>:2313                                    ; preds = %2307
  %2314 = add i32 %45, 480
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = add i32 %2316, 0
  %2318 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2317, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2319 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2318, %dx.types.Handle %98, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2320 = extractvalue %dx.types.ResRet.f32 %2319, 0
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = and i32 %2322, 524288
  %2324 = icmp ne i32 %2323, 0
  %2325 = fcmp fast ogt float %2320, 0x3FE0101020000000
  %2326 = select i1 %2325, float 1.000000e+00, float 0.000000e+00
  %2327 = select i1 %2324, float %2326, float %2320
  %2328 = fmul fast float %2327, %2308
  br label %2329

; <label>:2329                                    ; preds = %2313, %2307
  %2330 = phi float [ %2328, %2313 ], [ %2308, %2307 ]
  %2331 = fcmp fast ult float %2330, 0x3F70101020000000
  br i1 %2331, label %3070, label %2332

; <label>:2332                                    ; preds = %2329
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = and i32 %2334, 16
  %2336 = icmp eq i32 %2335, 0
  br i1 %2336, label %2535, label %2337

; <label>:2337                                    ; preds = %2332
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2173, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = add i32 %45, 432
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = add i32 %2342, 0
  %2344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2343, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2345 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2344, %dx.types.Handle %97, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2346 = extractvalue %dx.types.ResRet.f32 %2345, 0
  %2347 = extractvalue %dx.types.ResRet.f32 %2345, 1
  %2348 = extractvalue %dx.types.ResRet.f32 %2345, 2
  %2349 = extractvalue %dx.types.ResRet.f32 %2345, 3
  %2350 = and i32 %2339, 255
  %2351 = uitofp i32 %2350 to float
  %2352 = lshr i32 %2339, 8
  %2353 = and i32 %2352, 255
  %2354 = uitofp i32 %2353 to float
  %2355 = fmul fast float %2349, %2351
  %2356 = fadd fast float %2355, %2354
  %2357 = fmul fast float %2356, 0x3F70101000000000
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = and i32 %2359, 512
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %2370, label %2362

; <label>:2362                                    ; preds = %2337
  %2363 = add i32 %45, 516
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = add i32 %2365, 0
  %2367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2367, %dx.types.Handle %98, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2369 = extractvalue %dx.types.ResRet.f32 %2368, 0
  br label %2370

; <label>:2370                                    ; preds = %2362, %2337
  %2371 = phi float [ %2369, %2362 ], [ 1.000000e+00, %2337 ]
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = and i32 %2373, 33554432
  %2375 = icmp eq i32 %2374, 0
  br i1 %2375, label %2482, label %2376

; <label>:2376                                    ; preds = %2370
  %2377 = add i32 %45, 256
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = and i32 %2379, 65535
  %2381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2380)  ; LegacyF16ToF32(value)
  %2382 = lshr i32 %2379, 16
  %2383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2382)  ; LegacyF16ToF32(value)
  %2384 = add i32 %45, 260
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = and i32 %2386, 65535
  %2388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2387)  ; LegacyF16ToF32(value)
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = lshr i32 %2390, 24
  %2392 = uitofp i32 %2391 to float
  %2393 = fmul fast float %2392, 0x3F70101020000000
  %2394 = and i32 %2390, 255
  %2395 = uitofp i32 %2394 to float
  %2396 = fmul fast float %2395, 0x3F70101020000000
  %2397 = lshr i32 %2390, 8
  %2398 = and i32 %2397, 255
  %2399 = uitofp i32 %2398 to float
  %2400 = fmul fast float %2399, 0x3F70101020000000
  %2401 = lshr i32 %2390, 16
  %2402 = and i32 %2401, 255
  %2403 = uitofp i32 %2402 to float
  %2404 = fmul fast float %2403, 0x3F70101020000000
  %2405 = add i32 %45, 252
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = lshr i32 %2407, 24
  %2409 = uitofp i32 %2408 to float
  %2410 = fmul fast float %2409, 0x3F70101020000000
  %2411 = and i32 %2407, 255
  %2412 = uitofp i32 %2411 to float
  %2413 = fmul fast float %2412, 0x3F70101020000000
  %2414 = lshr i32 %2407, 8
  %2415 = and i32 %2414, 255
  %2416 = uitofp i32 %2415 to float
  %2417 = fmul fast float %2416, 0x3F70101020000000
  %2418 = lshr i32 %2407, 16
  %2419 = and i32 %2418, 255
  %2420 = uitofp i32 %2419 to float
  %2421 = fmul fast float %2420, 0x3F70101020000000
  %2422 = bitcast float %2346 to i32
  %2423 = ashr i32 %2422, 1
  %2424 = sub nsw i32 1597463174, %2423
  %2425 = bitcast i32 %2424 to float
  %2426 = fmul fast float %2346, 5.000000e-01
  %2427 = fmul fast float %2425, %2425
  %2428 = fmul fast float %2427, %2426
  %2429 = fsub fast float 1.500000e+00, %2428
  %2430 = fmul fast float %2425, %2346
  %2431 = fmul fast float %2430, %2429
  %2432 = bitcast float %2347 to i32
  %2433 = ashr i32 %2432, 1
  %2434 = sub nsw i32 1597463174, %2433
  %2435 = bitcast i32 %2434 to float
  %2436 = fmul fast float %2347, 5.000000e-01
  %2437 = fmul fast float %2435, %2435
  %2438 = fmul fast float %2437, %2436
  %2439 = fsub fast float 1.500000e+00, %2438
  %2440 = fmul fast float %2435, %2347
  %2441 = fmul fast float %2440, %2439
  %2442 = bitcast float %2348 to i32
  %2443 = ashr i32 %2442, 1
  %2444 = sub nsw i32 1597463174, %2443
  %2445 = bitcast i32 %2444 to float
  %2446 = fmul fast float %2348, 5.000000e-01
  %2447 = fmul fast float %2445, %2445
  %2448 = fmul fast float %2447, %2446
  %2449 = fsub fast float 1.500000e+00, %2448
  %2450 = fmul fast float %2445, %2348
  %2451 = fmul fast float %2450, %2449
  %2452 = fsub fast float %2431, %2413
  %2453 = fsub fast float %2441, %2417
  %2454 = fsub fast float %2451, %2421
  %2455 = fmul fast float %2452, %2381
  %2456 = fmul fast float %2453, %2383
  %2457 = fmul fast float %2454, %2388
  %2458 = fadd fast float %2455, %2396
  %2459 = fadd fast float %2456, %2400
  %2460 = fadd fast float %2457, %2404
  %2461 = call float @dx.op.unary.f32(i32 7, float %2458)  ; Saturate(value)
  %2462 = call float @dx.op.unary.f32(i32 7, float %2459)  ; Saturate(value)
  %2463 = call float @dx.op.unary.f32(i32 7, float %2460)  ; Saturate(value)
  %2464 = fmul fast float %2461, %2461
  %2465 = fmul fast float %2462, %2462
  %2466 = fmul fast float %2463, %2463
  %2467 = fsub fast float %2464, %2346
  %2468 = fsub fast float %2465, %2347
  %2469 = fsub fast float %2466, %2348
  %2470 = fmul fast float %2467, %2371
  %2471 = fmul fast float %2468, %2371
  %2472 = fmul fast float %2469, %2371
  %2473 = fadd fast float %2470, %2346
  %2474 = fadd fast float %2471, %2347
  %2475 = fadd fast float %2472, %2348
  %2476 = fadd fast float %2393, %2357
  %2477 = fsub fast float %2476, %2410
  %2478 = call float @dx.op.unary.f32(i32 7, float %2477)  ; Saturate(value)
  %2479 = fsub fast float %2478, %2357
  %2480 = fmul fast float %2479, %2371
  %2481 = fadd fast float %2480, %2357
  br label %2535

; <label>:2482                                    ; preds = %2370
  %2483 = and i32 %2373, 134217728
  %2484 = icmp eq i32 %2483, 0
  br i1 %2484, label %2519, label %2485

; <label>:2485                                    ; preds = %2482
  %2486 = call float @dx.op.unary.f32(i32 24, float %402)  ; Sqrt(value)
  %2487 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %2488 = call float @dx.op.unary.f32(i32 24, float %410)  ; Sqrt(value)
  %2489 = fadd fast float %2486, -5.000000e-01
  %2490 = fadd fast float %2487, -5.000000e-01
  %2491 = fadd fast float %2488, -5.000000e-01
  %2492 = fmul fast float %2489, %2371
  %2493 = fmul fast float %2490, %2371
  %2494 = fmul fast float %2491, %2371
  %2495 = fadd fast float %2492, 5.000000e-01
  %2496 = fadd fast float %2493, 5.000000e-01
  %2497 = fadd fast float %2494, 5.000000e-01
  %2498 = call float @dx.op.unary.f32(i32 24, float %2346)  ; Sqrt(value)
  %2499 = call float @dx.op.unary.f32(i32 24, float %2347)  ; Sqrt(value)
  %2500 = call float @dx.op.unary.f32(i32 24, float %2348)  ; Sqrt(value)
  %2501 = fmul fast float %2495, 2.000000e+00
  %2502 = fsub fast float 1.000000e+00, %2501
  %2503 = fmul fast float %2502, %2498
  %2504 = fadd fast float %2503, %2501
  %2505 = fmul fast float %2504, %2498
  %2506 = fmul fast float %2496, 2.000000e+00
  %2507 = fsub fast float 1.000000e+00, %2506
  %2508 = fmul fast float %2507, %2499
  %2509 = fadd fast float %2508, %2506
  %2510 = fmul fast float %2509, %2499
  %2511 = fmul fast float %2497, 2.000000e+00
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = fmul fast float %2512, %2500
  %2514 = fadd fast float %2513, %2511
  %2515 = fmul fast float %2514, %2500
  %2516 = fmul fast float %2505, %2505
  %2517 = fmul fast float %2510, %2510
  %2518 = fmul fast float %2515, %2515
  br label %2535

; <label>:2519                                    ; preds = %2482
  %2520 = fmul fast float %402, %402
  %2521 = fmul fast float %406, %406
  %2522 = fmul fast float %410, %410
  %2523 = fadd fast float %2520, -1.000000e+00
  %2524 = fadd fast float %2521, -1.000000e+00
  %2525 = fadd fast float %2522, -1.000000e+00
  %2526 = fmul fast float %2371, %2523
  %2527 = fmul fast float %2371, %2524
  %2528 = fmul fast float %2371, %2525
  %2529 = fadd fast float %2526, 1.000000e+00
  %2530 = fadd fast float %2527, 1.000000e+00
  %2531 = fadd fast float %2528, 1.000000e+00
  %2532 = fmul fast float %2529, %2346
  %2533 = fmul fast float %2530, %2347
  %2534 = fmul fast float %2531, %2348
  br label %2535

; <label>:2535                                    ; preds = %2519, %2485, %2376, %2332
  %2536 = phi float [ %2481, %2376 ], [ %2357, %2485 ], [ %2357, %2519 ], [ 0x3FA23C0BE0000000, %2332 ]
  %2537 = phi float [ %2473, %2376 ], [ %2516, %2485 ], [ %2532, %2519 ], [ 1.000000e+00, %2332 ]
  %2538 = phi float [ %2474, %2376 ], [ %2517, %2485 ], [ %2533, %2519 ], [ 1.000000e+00, %2332 ]
  %2539 = phi float [ %2475, %2376 ], [ %2518, %2485 ], [ %2534, %2519 ], [ 1.000000e+00, %2332 ]
  %2540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.i32 %2540, 1
  %2542 = and i32 %2541, 1
  %2543 = icmp ne i32 %2542, 0
  %2544 = add i32 %45, 356
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = and i32 %2546, 32
  %2548 = icmp ne i32 %2547, 0
  %2549 = and i1 %2543, %2548
  %2550 = select i1 %2549, float 1.000000e+00, float %2537
  %2551 = select i1 %2549, float 0x3FD3333340000000, float %2538
  %2552 = select i1 %2549, float 0x3FD3333340000000, float %2539
  %2553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.i32 %2553, 0
  %2555 = and i32 %2554, 32
  %2556 = icmp eq i32 %2555, 0
  br i1 %2556, label %2629, label %2557

; <label>:2557                                    ; preds = %2535
  %2558 = add i32 %45, 124
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2558, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = add i32 %45, 448
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = add i32 %2563, 0
  %2565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2566 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2565, %dx.types.Handle %97, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2567 = extractvalue %dx.types.ResRet.f32 %2566, 0
  %2568 = extractvalue %dx.types.ResRet.f32 %2566, 1
  %2569 = extractvalue %dx.types.ResRet.f32 %2566, 2
  %2570 = extractvalue %dx.types.ResRet.f32 %2566, 3
  %2571 = and i32 %2560, 255
  %2572 = uitofp i32 %2571 to float
  %2573 = lshr i32 %2560, 8
  %2574 = and i32 %2573, 255
  %2575 = uitofp i32 %2574 to float
  %2576 = lshr i32 %2560, 16
  %2577 = and i32 %2576, 255
  %2578 = uitofp i32 %2577 to float
  %2579 = fmul fast float %2578, 0x3F70101000000000
  %2580 = fmul fast float %2567, %2572
  %2581 = fadd fast float %2580, %2575
  %2582 = fmul fast float %2581, 0x3F70101000000000
  %2583 = fadd fast float %2568, -5.000000e-01
  %2584 = fadd fast float %2570, -5.000000e-01
  %2585 = fmul fast float %2583, %2579
  %2586 = fmul fast float %2584, %2579
  %2587 = fadd fast float %2585, 5.000000e-01
  %2588 = fadd fast float %2586, 5.000000e-01
  %2589 = fmul fast float %2587, 2.000000e+00
  %2590 = fadd fast float %2589, -1.000000e+00
  %2591 = fmul fast float %2588, 2.000000e+00
  %2592 = fadd fast float %2591, -1.000000e+00
  %2593 = fadd fast float %2590, %2592
  %2594 = fmul fast float %2593, 5.000000e-01
  %2595 = fsub fast float %2590, %2592
  %2596 = fmul fast float %2595, 5.000000e-01
  %2597 = call float @dx.op.unary.f32(i32 6, float %2594)  ; FAbs(value)
  %2598 = fsub fast float 1.000000e+00, %2597
  %2599 = call float @dx.op.unary.f32(i32 6, float %2596)  ; FAbs(value)
  %2600 = fsub fast float %2598, %2599
  %2601 = call float @dx.op.dot3.f32(i32 55, float %2594, float %2596, float %2600, float %2594, float %2596, float %2600)  ; Dot3(ax,ay,az,bx,by,bz)
  %2602 = call float @dx.op.unary.f32(i32 25, float %2601)  ; Rsqrt(value)
  %2603 = fmul fast float %2594, %2602
  %2604 = fmul fast float %2596, %2602
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = and i32 %2606, 67108864
  %2608 = icmp eq i32 %2607, 0
  br i1 %2608, label %2625, label %2609

; <label>:2609                                    ; preds = %2557
  %2610 = add i32 %45, 312
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = and i32 %2612, 65535
  %2614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2613)  ; LegacyF16ToF32(value)
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = and i32 %2616, 65535
  %2618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2617)  ; LegacyF16ToF32(value)
  %2619 = lshr i32 %2612, 16
  %2620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2619)  ; LegacyF16ToF32(value)
  %2621 = fsub fast float %2582, %2620
  %2622 = fmul fast float %2621, %2614
  %2623 = fadd fast float %2622, %2618
  %2624 = call float @dx.op.unary.f32(i32 7, float %2623)  ; Saturate(value)
  br label %2625

; <label>:2625                                    ; preds = %2609, %2557
  %2626 = phi float [ %2624, %2609 ], [ %2582, %2557 ]
  %2627 = call float @dx.op.dot2.f32(i32 54, float %2603, float %2604, float %2161, float %2162)  ; Dot2(ax,ay,bx,by)
  %2628 = call float @dx.op.dot2.f32(i32 54, float %2603, float %2604, float %2163, float %2164)  ; Dot2(ax,ay,bx,by)
  br label %2629

; <label>:2629                                    ; preds = %2625, %2535
  %2630 = phi float [ %2626, %2625 ], [ 0x3FD6666660000000, %2535 ]
  %2631 = phi float [ %2627, %2625 ], [ 0.000000e+00, %2535 ]
  %2632 = phi float [ %2628, %2625 ], [ 0.000000e+00, %2535 ]
  %2633 = phi float [ %2569, %2625 ], [ 1.000000e+00, %2535 ]
  %2634 = add i32 %45, 192
  %2635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2634, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.i32 %2635, 0
  %2637 = lshr i32 %2636, 22
  %2638 = shl nuw nsw i32 %2637, 5
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = and i32 %2641, 64
  %2643 = icmp eq i32 %2642, 0
  br i1 %2643, label %2677, label %2644

; <label>:2644                                    ; preds = %2629
  %2645 = add i32 %45, 464
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = add i32 %2647, 0
  %2649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 131072
  %2653 = icmp eq i32 %2652, 0
  %2654 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2649, %dx.types.Handle %97, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2655 = extractvalue %dx.types.ResRet.f32 %2654, 0
  %2656 = extractvalue %dx.types.ResRet.f32 %2654, 1
  %2657 = extractvalue %dx.types.ResRet.f32 %2654, 2
  %2658 = fmul fast float %2655, %390
  %2659 = fmul fast float %2656, %393
  %2660 = fmul fast float %2657, %396
  br i1 %2653, label %2667, label %2661

; <label>:2661                                    ; preds = %2644
  %2662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2663 = extractvalue %dx.types.CBufRet.f32 %2662, 0
  %2664 = fmul fast float %2663, %2658
  %2665 = fmul fast float %2663, %2659
  %2666 = fmul fast float %2663, %2660
  br label %2667

; <label>:2667                                    ; preds = %2661, %2644
  %2668 = phi float [ %2664, %2661 ], [ %2658, %2644 ]
  %2669 = phi float [ %2665, %2661 ], [ %2659, %2644 ]
  %2670 = phi float [ %2666, %2661 ], [ %2660, %2644 ]
  %2671 = fmul fast float %2668, %2639
  %2672 = select i1 %286, float %2671, float %2668
  %2673 = call float @dx.op.dot3.f32(i32 55, float %2672, float %2669, float %2670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2674 = select i1 %286, float 0.000000e+00, float %2668
  %2675 = select i1 %286, float %2673, float %2669
  %2676 = select i1 %286, float 0.000000e+00, float %2670
  br label %2677

; <label>:2677                                    ; preds = %2667, %2629
  %2678 = phi float [ %2674, %2667 ], [ 0.000000e+00, %2629 ]
  %2679 = phi float [ %2675, %2667 ], [ 0.000000e+00, %2629 ]
  %2680 = phi float [ %2676, %2667 ], [ 0.000000e+00, %2629 ]
  %2681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2682 = extractvalue %dx.types.ResRet.i32 %2681, 0
  %2683 = and i32 %2682, 1024
  %2684 = icmp eq i32 %2683, 0
  br i1 %2684, label %2715, label %2685

; <label>:2685                                    ; preds = %2677
  %2686 = add i32 %45, 184
  %2687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2686, i32 undef)  ; BufferLoad(srv,index,wot)
  %2688 = extractvalue %dx.types.ResRet.i32 %2687, 0
  %2689 = and i32 %2688, 255
  %2690 = uitofp i32 %2689 to float
  %2691 = fmul fast float %2690, 0x3F70101020000000
  %2692 = lshr i32 %2688, 8
  %2693 = and i32 %2692, 255
  %2694 = uitofp i32 %2693 to float
  %2695 = fmul fast float %2694, 0x3F70101020000000
  %2696 = lshr i32 %2688, 16
  %2697 = and i32 %2696, 255
  %2698 = uitofp i32 %2697 to float
  %2699 = fmul fast float %2698, 0x3F70101020000000
  %2700 = fmul fast float %2691, %2691
  %2701 = fmul fast float %2695, %2695
  %2702 = fmul fast float %2699, %2699
  %2703 = add i32 %45, 532
  %2704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %2705 = extractvalue %dx.types.ResRet.i32 %2704, 0
  %2706 = add i32 %2705, 0
  %2707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2707, %dx.types.Handle %98, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2709 = extractvalue %dx.types.ResRet.f32 %2708, 0
  %2710 = extractvalue %dx.types.ResRet.f32 %2708, 1
  %2711 = extractvalue %dx.types.ResRet.f32 %2708, 2
  %2712 = fmul fast float %2700, %2709
  %2713 = fmul fast float %2701, %2710
  %2714 = fmul fast float %2702, %2711
  br label %2715

; <label>:2715                                    ; preds = %2685, %2677
  %2716 = phi float [ %2712, %2685 ], [ 0.000000e+00, %2677 ]
  %2717 = phi float [ %2713, %2685 ], [ 0.000000e+00, %2677 ]
  %2718 = phi float [ %2714, %2685 ], [ 0.000000e+00, %2677 ]
  %2719 = fcmp fast ogt float %2716, 0.000000e+00
  %2720 = fcmp fast ogt float %2717, 0.000000e+00
  %2721 = fcmp fast ogt float %2718, 0.000000e+00
  %2722 = call float @dx.op.unary.f32(i32 23, float %2716)  ; Log(value)
  %2723 = call float @dx.op.unary.f32(i32 23, float %2717)  ; Log(value)
  %2724 = call float @dx.op.unary.f32(i32 23, float %2718)  ; Log(value)
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2634, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = lshr i32 %2726, 7
  %2728 = and i32 %2727, 32752
  %2729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2728)  ; LegacyF16ToF32(value)
  %2730 = fmul fast float %2722, 0xBFE62E4300000000
  %2731 = fmul fast float %2730, %2729
  %2732 = fmul fast float %2723, 0xBFE62E4300000000
  %2733 = fmul fast float %2732, %2729
  %2734 = fmul fast float %2724, 0xBFE62E4300000000
  %2735 = fmul fast float %2734, %2729
  %2736 = select i1 %2719, float %2731, float 1.270000e+02
  %2737 = select i1 %2720, float %2733, float 1.270000e+02
  %2738 = select i1 %2721, float %2735, float 1.270000e+02
  %2739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2740 = extractvalue %dx.types.ResRet.i32 %2739, 0
  %2741 = and i32 %2740, 10240
  %2742 = icmp eq i32 %2741, 0
  br i1 %2742, label %2787, label %2743

; <label>:2743                                    ; preds = %2715
  %2744 = add i32 %45, 548
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = add i32 %2746, 0
  %2748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2747, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2749 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2748, %dx.types.Handle %98, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2750 = extractvalue %dx.types.ResRet.f32 %2749, 1
  %2751 = extractvalue %dx.types.ResRet.f32 %2749, 3
  %2752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.i32 %2752, 0
  %2754 = and i32 %2753, 1048576
  %2755 = icmp ne i32 %2754, 0
  %2756 = and i32 %2753, 8192
  %2757 = icmp eq i32 %2756, 0
  br i1 %2757, label %2773, label %2758

; <label>:2758                                    ; preds = %2743
  %2759 = extractvalue %dx.types.ResRet.f32 %2749, 2
  %2760 = select i1 %2755, float %2759, float %2750
  %2761 = extractvalue %dx.types.ResRet.f32 %2749, 0
  %2762 = select i1 %2755, float %2761, float %2750
  %2763 = add i32 %45, 128
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = lshr i32 %2765, 16
  %2767 = and i32 %2766, 255
  %2768 = uitofp i32 %2767 to float
  %2769 = fmul fast float %2768, 0x3F80101020000000
  %2770 = fmul fast float %2769, %2762
  %2771 = fmul fast float %2769, %2750
  %2772 = fmul fast float %2769, %2760
  br label %2773

; <label>:2773                                    ; preds = %2758, %2743
  %2774 = phi float [ %2770, %2758 ], [ 0.000000e+00, %2743 ]
  %2775 = phi float [ %2771, %2758 ], [ 0.000000e+00, %2743 ]
  %2776 = phi float [ %2772, %2758 ], [ 0.000000e+00, %2743 ]
  %2777 = and i32 %2753, 2048
  %2778 = icmp eq i32 %2777, 0
  br i1 %2778, label %2787, label %2779

; <label>:2779                                    ; preds = %2773
  %2780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2634, i32 undef)  ; BufferLoad(srv,index,wot)
  %2781 = extractvalue %dx.types.ResRet.i32 %2780, 0
  %2782 = shl i32 %2781, 4
  %2783 = and i32 %2782, 32752
  %2784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2783)  ; LegacyF16ToF32(value)
  %2785 = fmul fast float %2784, %2751
  %2786 = call float @dx.op.binary.f32(i32 35, float %2785, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2787

; <label>:2787                                    ; preds = %2779, %2773, %2715
  %2788 = phi float [ %2774, %2779 ], [ %2774, %2773 ], [ 0.000000e+00, %2715 ]
  %2789 = phi float [ %2775, %2779 ], [ %2775, %2773 ], [ 0.000000e+00, %2715 ]
  %2790 = phi float [ %2776, %2779 ], [ %2776, %2773 ], [ 0.000000e+00, %2715 ]
  %2791 = phi float [ %2786, %2779 ], [ 0x3F70101020000000, %2773 ], [ 0x3F70101020000000, %2715 ]
  %2792 = add i32 %45, 128
  %2793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2792, i32 undef)  ; BufferLoad(srv,index,wot)
  %2794 = extractvalue %dx.types.ResRet.i32 %2793, 0
  %2795 = and i32 %2794, 255
  %2796 = uitofp i32 %2795 to float
  %2797 = lshr i32 %2794, 8
  %2798 = and i32 %2797, 255
  %2799 = uitofp i32 %2798 to float
  %2800 = call float @dx.op.dot3.f32(i32 55, float %2550, float %2551, float %2552, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2801 = fmul fast float %2799, %2800
  %2802 = fadd fast float %2801, %2796
  %2803 = fmul fast float %2802, 0x3F70101020000000
  %2804 = call float @dx.op.unary.f32(i32 7, float %2803)  ; Saturate(value)
  br i1 %2149, label %2805, label %2840

; <label>:2805                                    ; preds = %2787
  %2806 = fmul fast float %2791, 2.000000e+00
  %2807 = fcmp fast olt float %2736, 1.270000e+02
  %2808 = fcmp fast olt float %2737, 1.270000e+02
  %2809 = fcmp fast olt float %2738, 1.270000e+02
  %2810 = fmul fast float %2736, 0xBFF7154760000000
  %2811 = fmul fast float %2810, %2806
  %2812 = fmul fast float %2737, 0xBFF7154760000000
  %2813 = fmul fast float %2812, %2806
  %2814 = fmul fast float %2738, 0xBFF7154760000000
  %2815 = fmul fast float %2814, %2806
  %2816 = call float @dx.op.unary.f32(i32 21, float %2811)  ; Exp(value)
  %2817 = call float @dx.op.unary.f32(i32 21, float %2813)  ; Exp(value)
  %2818 = call float @dx.op.unary.f32(i32 21, float %2815)  ; Exp(value)
  %2819 = call float @dx.op.unary.f32(i32 7, float %2816)  ; Saturate(value)
  %2820 = call float @dx.op.unary.f32(i32 7, float %2817)  ; Saturate(value)
  %2821 = call float @dx.op.unary.f32(i32 7, float %2818)  ; Saturate(value)
  %2822 = fadd fast float %2819, -1.000000e+00
  %2823 = select i1 %2807, float %2822, float -1.000000e+00
  %2824 = fadd fast float %2820, -1.000000e+00
  %2825 = select i1 %2808, float %2824, float -1.000000e+00
  %2826 = fadd fast float %2821, -1.000000e+00
  %2827 = select i1 %2809, float %2826, float -1.000000e+00
  %2828 = fmul fast float %2823, %2330
  %2829 = fmul fast float %2825, %2330
  %2830 = fmul fast float %2827, %2330
  %2831 = fadd fast float %2828, 1.000000e+00
  %2832 = fadd fast float %2829, 1.000000e+00
  %2833 = fadd fast float %2830, 1.000000e+00
  %2834 = fmul fast float %2831, %2131
  %2835 = fmul fast float %2832, %2132
  %2836 = fmul fast float %2833, %2133
  %2837 = fmul fast float %2831, %2134
  %2838 = fmul fast float %2832, %2135
  %2839 = fmul fast float %2833, %2136
  br label %2840

; <label>:2840                                    ; preds = %2805, %2787
  %2841 = phi float [ %2834, %2805 ], [ %2131, %2787 ]
  %2842 = phi float [ %2835, %2805 ], [ %2132, %2787 ]
  %2843 = phi float [ %2836, %2805 ], [ %2133, %2787 ]
  %2844 = phi float [ %2837, %2805 ], [ %2134, %2787 ]
  %2845 = phi float [ %2838, %2805 ], [ %2135, %2787 ]
  %2846 = phi float [ %2839, %2805 ], [ %2136, %2787 ]
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = and i32 %2848, 3
  %2850 = icmp eq i32 %2849, 3
  br i1 %2850, label %2929, label %2851

; <label>:2851                                    ; preds = %2840
  %2852 = and i32 %2848, 16
  %2853 = icmp ne i32 %2852, 0
  %2854 = select i1 %2853, float %2330, float 0.000000e+00
  %2855 = icmp eq i32 %2849, 0
  br i1 %2855, label %2856, label %2884

; <label>:2856                                    ; preds = %2851
  %2857 = and i32 %2848, 64
  %2858 = icmp ne i32 %2857, 0
  %2859 = select i1 %2858, float %2330, float 0.000000e+00
  %2860 = fsub fast float %2550, %2841
  %2861 = fsub fast float %2551, %2842
  %2862 = fsub fast float %2552, %2843
  %2863 = fmul fast float %2854, %2860
  %2864 = fmul fast float %2854, %2861
  %2865 = fmul fast float %2854, %2862
  %2866 = fadd fast float %2863, %2841
  %2867 = fadd fast float %2864, %2842
  %2868 = fadd fast float %2865, %2843
  %2869 = fsub fast float %2536, %2143
  %2870 = fmul fast float %2854, %2869
  %2871 = fadd fast float %2870, %2143
  %2872 = fsub fast float %2678, %2844
  %2873 = fsub fast float %2679, %2845
  %2874 = fsub fast float %2680, %2846
  %2875 = fmul fast float %2859, %2872
  %2876 = fmul fast float %2859, %2873
  %2877 = fmul fast float %2859, %2874
  %2878 = fadd fast float %2875, %2844
  %2879 = fadd fast float %2876, %2845
  %2880 = fadd fast float %2877, %2846
  %2881 = fsub fast float %2804, %2147
  %2882 = fmul fast float %2854, %2881
  %2883 = fadd fast float %2882, %2147
  br label %2929

; <label>:2884                                    ; preds = %2851
  %2885 = icmp eq i32 %2849, 1
  br i1 %2885, label %2886, label %2899

; <label>:2886                                    ; preds = %2884
  %2887 = fadd fast float %2550, -1.000000e+00
  %2888 = fadd fast float %2551, -1.000000e+00
  %2889 = fadd fast float %2552, -1.000000e+00
  %2890 = fmul fast float %2854, %2887
  %2891 = fmul fast float %2854, %2888
  %2892 = fmul fast float %2854, %2889
  %2893 = fadd fast float %2890, 1.000000e+00
  %2894 = fadd fast float %2891, 1.000000e+00
  %2895 = fadd fast float %2892, 1.000000e+00
  %2896 = fmul fast float %2893, %2841
  %2897 = fmul fast float %2894, %2842
  %2898 = fmul fast float %2895, %2843
  br label %2929

; <label>:2899                                    ; preds = %2884
  %2900 = icmp eq i32 %2849, 2
  br i1 %2900, label %2901, label %2929

; <label>:2901                                    ; preds = %2899
  %2902 = call float @dx.op.unary.f32(i32 24, float %2550)  ; Sqrt(value)
  %2903 = call float @dx.op.unary.f32(i32 24, float %2551)  ; Sqrt(value)
  %2904 = call float @dx.op.unary.f32(i32 24, float %2552)  ; Sqrt(value)
  %2905 = fadd fast float %2902, -5.000000e-01
  %2906 = fadd fast float %2903, -5.000000e-01
  %2907 = fadd fast float %2904, -5.000000e-01
  %2908 = fmul fast float %2905, %2854
  %2909 = fmul fast float %2906, %2854
  %2910 = fmul fast float %2907, %2854
  %2911 = fadd fast float %2908, 5.000000e-01
  %2912 = fadd fast float %2909, 5.000000e-01
  %2913 = fadd fast float %2910, 5.000000e-01
  %2914 = fmul fast float %2911, 2.000000e+00
  %2915 = fsub fast float 1.000000e+00, %2914
  %2916 = fmul fast float %2915, %2841
  %2917 = fadd fast float %2916, %2914
  %2918 = fmul fast float %2917, %2841
  %2919 = fmul fast float %2912, 2.000000e+00
  %2920 = fsub fast float 1.000000e+00, %2919
  %2921 = fmul fast float %2920, %2842
  %2922 = fadd fast float %2921, %2919
  %2923 = fmul fast float %2922, %2842
  %2924 = fmul fast float %2913, 2.000000e+00
  %2925 = fsub fast float 1.000000e+00, %2924
  %2926 = fmul fast float %2925, %2843
  %2927 = fadd fast float %2926, %2924
  %2928 = fmul fast float %2927, %2843
  br label %2929

; <label>:2929                                    ; preds = %2901, %2899, %2886, %2856, %2840
  %2930 = phi float [ %2841, %2840 ], [ %2918, %2901 ], [ %2841, %2899 ], [ %2896, %2886 ], [ %2866, %2856 ]
  %2931 = phi float [ %2842, %2840 ], [ %2923, %2901 ], [ %2842, %2899 ], [ %2897, %2886 ], [ %2867, %2856 ]
  %2932 = phi float [ %2843, %2840 ], [ %2928, %2901 ], [ %2843, %2899 ], [ %2898, %2886 ], [ %2868, %2856 ]
  %2933 = phi float [ %2844, %2840 ], [ %2844, %2901 ], [ %2844, %2899 ], [ %2844, %2886 ], [ %2878, %2856 ]
  %2934 = phi float [ %2845, %2840 ], [ %2845, %2901 ], [ %2845, %2899 ], [ %2845, %2886 ], [ %2879, %2856 ]
  %2935 = phi float [ %2846, %2840 ], [ %2846, %2901 ], [ %2846, %2899 ], [ %2846, %2886 ], [ %2880, %2856 ]
  %2936 = phi float [ %2143, %2840 ], [ %2143, %2901 ], [ %2143, %2899 ], [ %2143, %2886 ], [ %2871, %2856 ]
  %2937 = phi float [ %2147, %2840 ], [ %2147, %2901 ], [ %2147, %2899 ], [ %2147, %2886 ], [ %2883, %2856 ]
  %2938 = and i32 %2848, 12
  %2939 = icmp eq i32 %2938, 12
  br i1 %2939, label %3070, label %2940

; <label>:2940                                    ; preds = %2929
  %2941 = and i32 %2848, 2097184
  %2942 = icmp eq i32 %2941, 2097184
  %2943 = select i1 %2942, float %2330, float 0.000000e+00
  %2944 = and i32 %2848, 4194336
  %2945 = icmp eq i32 %2944, 4194336
  %2946 = select i1 %2945, float %2330, float 0.000000e+00
  %2947 = and i32 %2848, 8388640
  %2948 = icmp eq i32 %2947, 8388640
  %2949 = select i1 %2948, float %2330, float 0.000000e+00
  %2950 = and i32 %2848, 1024
  %2951 = icmp ne i32 %2950, 0
  %2952 = select i1 %2951, float %2330, float 0.000000e+00
  %2953 = and i32 %2848, 2048
  %2954 = icmp ne i32 %2953, 0
  %2955 = select i1 %2954, float %2330, float 0.000000e+00
  %2956 = and i32 %2848, 8192
  %2957 = icmp ne i32 %2956, 0
  %2958 = select i1 %2957, float %2330, float 0.000000e+00
  %2959 = icmp eq i32 %2938, 0
  br i1 %2959, label %2960, label %2994

; <label>:2960                                    ; preds = %2940
  %2961 = fsub fast float %2631, %2129
  %2962 = fsub fast float %2632, %2130
  %2963 = fmul fast float %2943, %2961
  %2964 = fmul fast float %2943, %2962
  %2965 = fadd fast float %2963, %2129
  %2966 = fadd fast float %2964, %2130
  %2967 = fsub fast float %2633, %2145
  %2968 = fmul fast float %2946, %2967
  %2969 = fadd fast float %2968, %2145
  %2970 = fsub fast float %2630, %2144
  %2971 = fmul fast float %2949, %2970
  %2972 = fadd fast float %2971, %2144
  %2973 = fsub fast float %2736, %2137
  %2974 = fsub fast float %2737, %2138
  %2975 = fsub fast float %2738, %2139
  %2976 = fmul fast float %2952, %2973
  %2977 = fmul fast float %2952, %2974
  %2978 = fmul fast float %2952, %2975
  %2979 = fadd fast float %2976, %2137
  %2980 = fadd fast float %2977, %2138
  %2981 = fadd fast float %2978, %2139
  %2982 = fsub fast float %2791, %2146
  %2983 = fmul fast float %2955, %2982
  %2984 = fadd fast float %2983, %2146
  %2985 = fsub fast float %2788, %2140
  %2986 = fsub fast float %2789, %2141
  %2987 = fsub fast float %2790, %2142
  %2988 = fmul fast float %2958, %2985
  %2989 = fmul fast float %2958, %2986
  %2990 = fmul fast float %2958, %2987
  %2991 = fadd fast float %2988, %2140
  %2992 = fadd fast float %2989, %2141
  %2993 = fadd fast float %2990, %2142
  br label %3070

; <label>:2994                                    ; preds = %2940
  %2995 = icmp eq i32 %2938, 4
  br i1 %2995, label %2996, label %3042

; <label>:2996                                    ; preds = %2994
  %2997 = fmul fast float %2943, %2631
  %2998 = fmul fast float %2943, %2632
  %2999 = fadd fast float %2997, %2129
  %3000 = fadd fast float %2998, %2130
  %3001 = call float @dx.op.binary.f32(i32 36, float %2145, float %2633)  ; FMin(a,b)
  %3002 = fsub fast float %3001, %2145
  %3003 = fmul fast float %3002, %2946
  %3004 = fadd fast float %3003, %2145
  %3005 = fadd fast float %2630, %2144
  %3006 = fmul fast float %3005, 0x3FF337FAE0000000
  %3007 = fmul fast float %2144, %2144
  %3008 = fmul fast float %2630, %2630
  %3009 = fadd fast float %3008, %3007
  %3010 = fmul fast float %3009, 0x3FE5152B00000000
  %3011 = fmul fast float %2144, 0xBFCC1F85E0000000
  %3012 = fmul fast float %3011, %2630
  %3013 = fadd fast float %3012, 0xBFE1363700000000
  %3014 = fadd fast float %3013, %3006
  %3015 = fsub fast float %3014, %3010
  %3016 = fmul fast float %3005, 0x3FBA6F0D00000000
  %3017 = fmul fast float %3009, 0x3FD0432880000000
  %3018 = fmul fast float %2144, 0xBFEF110800000000
  %3019 = fmul fast float %3018, %2630
  %3020 = fadd fast float %3019, 1.000000e+00
  %3021 = fsub fast float %3020, %3016
  %3022 = fadd fast float %3021, %3017
  %3023 = fdiv fast float %3015, %3022
  %3024 = call float @dx.op.unary.f32(i32 7, float %3023)  ; Saturate(value)
  %3025 = fsub fast float %3024, %2144
  %3026 = fmul fast float %3025, %2949
  %3027 = fadd fast float %3026, %2144
  %3028 = fmul fast float %2952, %2736
  %3029 = fmul fast float %2952, %2737
  %3030 = fmul fast float %2952, %2738
  %3031 = fadd fast float %3028, %2137
  %3032 = fadd fast float %3029, %2138
  %3033 = fadd fast float %3030, %2139
  %3034 = fmul fast float %2955, %2791
  %3035 = fadd fast float %3034, %2146
  %3036 = fmul fast float %2958, %2788
  %3037 = fmul fast float %2958, %2789
  %3038 = fmul fast float %2958, %2790
  %3039 = fadd fast float %3036, %2140
  %3040 = fadd fast float %3037, %2141
  %3041 = fadd fast float %3038, %2142
  br label %3070

; <label>:3042                                    ; preds = %2994
  %3043 = icmp eq i32 %2938, 8
  br i1 %3043, label %3044, label %3070

; <label>:3044                                    ; preds = %3042
  %3045 = fmul fast float %2943, %2631
  %3046 = fmul fast float %2943, %2632
  %3047 = fadd fast float %3045, %2129
  %3048 = fadd fast float %3046, %2130
  %3049 = call float @dx.op.binary.f32(i32 36, float %2145, float %2633)  ; FMin(a,b)
  %3050 = fsub fast float %3049, %2145
  %3051 = fmul fast float %3050, %2946
  %3052 = fadd fast float %3051, %2145
  %3053 = fsub fast float %2630, %2144
  %3054 = fmul fast float %2949, %3053
  %3055 = fadd fast float %3054, %2144
  %3056 = fmul fast float %2952, %2736
  %3057 = fmul fast float %2952, %2737
  %3058 = fmul fast float %2952, %2738
  %3059 = fadd fast float %3056, %2137
  %3060 = fadd fast float %3057, %2138
  %3061 = fadd fast float %3058, %2139
  %3062 = fmul fast float %2955, %2791
  %3063 = fadd fast float %3062, %2146
  %3064 = fmul fast float %2958, %2788
  %3065 = fmul fast float %2958, %2789
  %3066 = fmul fast float %2958, %2790
  %3067 = fadd fast float %3064, %2140
  %3068 = fadd fast float %3065, %2141
  %3069 = fadd fast float %3066, %2142
  br label %3070

; <label>:3070                                    ; preds = %3044, %3042, %2996, %2960, %2929, %2329, %2148, %2128
  %3071 = phi float [ %2129, %2929 ], [ %2129, %2329 ], [ %2129, %2128 ], [ %3047, %3044 ], [ %2129, %3042 ], [ %2999, %2996 ], [ %2965, %2960 ], [ %2129, %2148 ]
  %3072 = phi float [ %2130, %2929 ], [ %2130, %2329 ], [ %2130, %2128 ], [ %3048, %3044 ], [ %2130, %3042 ], [ %3000, %2996 ], [ %2966, %2960 ], [ %2130, %2148 ]
  %3073 = phi float [ %2930, %2929 ], [ %2131, %2329 ], [ %2131, %2128 ], [ %2930, %3044 ], [ %2930, %3042 ], [ %2930, %2996 ], [ %2930, %2960 ], [ %2131, %2148 ]
  %3074 = phi float [ %2931, %2929 ], [ %2132, %2329 ], [ %2132, %2128 ], [ %2931, %3044 ], [ %2931, %3042 ], [ %2931, %2996 ], [ %2931, %2960 ], [ %2132, %2148 ]
  %3075 = phi float [ %2932, %2929 ], [ %2133, %2329 ], [ %2133, %2128 ], [ %2932, %3044 ], [ %2932, %3042 ], [ %2932, %2996 ], [ %2932, %2960 ], [ %2133, %2148 ]
  %3076 = phi float [ %2933, %2929 ], [ %2134, %2329 ], [ %2134, %2128 ], [ %2933, %3044 ], [ %2933, %3042 ], [ %2933, %2996 ], [ %2933, %2960 ], [ %2134, %2148 ]
  %3077 = phi float [ %2934, %2929 ], [ %2135, %2329 ], [ %2135, %2128 ], [ %2934, %3044 ], [ %2934, %3042 ], [ %2934, %2996 ], [ %2934, %2960 ], [ %2135, %2148 ]
  %3078 = phi float [ %2935, %2929 ], [ %2136, %2329 ], [ %2136, %2128 ], [ %2935, %3044 ], [ %2935, %3042 ], [ %2935, %2996 ], [ %2935, %2960 ], [ %2136, %2148 ]
  %3079 = phi float [ %2137, %2929 ], [ %2137, %2329 ], [ %2137, %2128 ], [ %3059, %3044 ], [ %2137, %3042 ], [ %3031, %2996 ], [ %2979, %2960 ], [ %2137, %2148 ]
  %3080 = phi float [ %2138, %2929 ], [ %2138, %2329 ], [ %2138, %2128 ], [ %3060, %3044 ], [ %2138, %3042 ], [ %3032, %2996 ], [ %2980, %2960 ], [ %2138, %2148 ]
  %3081 = phi float [ %2139, %2929 ], [ %2139, %2329 ], [ %2139, %2128 ], [ %3061, %3044 ], [ %2139, %3042 ], [ %3033, %2996 ], [ %2981, %2960 ], [ %2139, %2148 ]
  %3082 = phi float [ %2140, %2929 ], [ %2140, %2329 ], [ %2140, %2128 ], [ %3067, %3044 ], [ %2140, %3042 ], [ %3039, %2996 ], [ %2991, %2960 ], [ %2140, %2148 ]
  %3083 = phi float [ %2141, %2929 ], [ %2141, %2329 ], [ %2141, %2128 ], [ %3068, %3044 ], [ %2141, %3042 ], [ %3040, %2996 ], [ %2992, %2960 ], [ %2141, %2148 ]
  %3084 = phi float [ %2142, %2929 ], [ %2142, %2329 ], [ %2142, %2128 ], [ %3069, %3044 ], [ %2142, %3042 ], [ %3041, %2996 ], [ %2993, %2960 ], [ %2142, %2148 ]
  %3085 = phi float [ %2936, %2929 ], [ %2143, %2329 ], [ %2143, %2128 ], [ %2936, %3044 ], [ %2936, %3042 ], [ %2936, %2996 ], [ %2936, %2960 ], [ %2143, %2148 ]
  %3086 = phi float [ %2144, %2929 ], [ %2144, %2329 ], [ %2144, %2128 ], [ %3055, %3044 ], [ %2144, %3042 ], [ %3027, %2996 ], [ %2972, %2960 ], [ %2144, %2148 ]
  %3087 = phi float [ %2145, %2929 ], [ %2145, %2329 ], [ %2145, %2128 ], [ %3052, %3044 ], [ %2145, %3042 ], [ %3004, %2996 ], [ %2969, %2960 ], [ %2145, %2148 ]
  %3088 = phi float [ %2146, %2929 ], [ %2146, %2329 ], [ %2146, %2128 ], [ %3063, %3044 ], [ %2146, %3042 ], [ %3035, %2996 ], [ %2984, %2960 ], [ %2146, %2148 ]
  %3089 = phi float [ %2937, %2929 ], [ %2147, %2329 ], [ %2147, %2128 ], [ %2937, %3044 ], [ %2937, %3042 ], [ %2937, %2996 ], [ %2937, %2960 ], [ %2147, %2148 ]
  br i1 %477, label %4012, label %3090

; <label>:3090                                    ; preds = %3070
  %3091 = icmp ult i32 %531, 4
  %3092 = add i32 %45, 72
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = add i32 %45, 76
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = or i32 %3097, %3094
  %3099 = icmp eq i32 %3098, 0
  br i1 %3099, label %4012, label %3100

; <label>:3100                                    ; preds = %3090
  %3101 = and i32 %3094, 262144
  %3102 = icmp ne i32 %3101, 0
  %3103 = select i1 %3102, float %51, float 1.000000e+00
  %3104 = select i1 %3102, float %52, float 0.000000e+00
  %3105 = select i1 %3102, float %53, float 0.000000e+00
  %3106 = select i1 %3102, float %54, float 1.000000e+00
  %3107 = select i1 %3102, float %55, float %83
  %3108 = select i1 %3102, float %56, float %84
  %3109 = add i32 %45, 332
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3109, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = lshr i32 %3111, 16
  %3113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3112)  ; LegacyF16ToF32(value)
  %3114 = fmul fast float %3113, 0x3F50624DE0000000
  %3115 = add i32 %45, 136
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = lshr i32 %3117, 16
  %3119 = and i32 %3118, 255
  %3120 = lshr i32 %3117, 24
  %3121 = add i32 %45, 340
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = and i32 %3123, 65535
  %3125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3124)  ; LegacyF16ToF32(value)
  %3126 = lshr i32 %3123, 16
  %3127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3126)  ; LegacyF16ToF32(value)
  %3128 = add i32 %45, 80
  %3129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3130 = extractvalue %dx.types.ResRet.i32 %3129, 0
  %3131 = lshr i32 %3130, 22
  %3132 = shl nuw nsw i32 %3131, 5
  %3133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3132)  ; LegacyF16ToF32(value)
  %3134 = shl i32 %3130, 4
  %3135 = and i32 %3134, 32752
  %3136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3135)  ; LegacyF16ToF32(value)
  %3137 = lshr i32 %3130, 7
  %3138 = and i32 %3137, 32752
  %3139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3138)  ; LegacyF16ToF32(value)
  %3140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.f32 %3140, 3
  %3142 = fmul fast float %3141, 1.000000e+03
  %3143 = fmul fast float %467, %3142
  %3144 = call float @dx.op.unary.f32(i32 22, float %3143)  ; Frc(value)
  %3145 = fadd fast float %3144, %457
  %3146 = fmul fast float %468, %3142
  %3147 = call float @dx.op.unary.f32(i32 22, float %3146)  ; Frc(value)
  %3148 = fadd fast float %3147, %459
  %3149 = fmul fast float %3114, %3142
  %3150 = call float @dx.op.unary.f32(i32 22, float %3149)  ; Frc(value)
  %3151 = fmul fast float %3150, 0x401921FB60000000
  %3152 = fadd fast float %3151, %3133
  %3153 = call float @dx.op.unary.f32(i32 13, float %3152)  ; Sin(value)
  %3154 = call float @dx.op.unary.f32(i32 12, float %3152)  ; Cos(value)
  %3155 = fsub fast float -0.000000e+00, %3153
  %3156 = fadd fast float %3107, -5.000000e-01
  %3157 = fadd fast float %3108, -5.000000e-01
  %3158 = fmul fast float %3125, %3156
  %3159 = fmul fast float %3127, %3157
  %3160 = fadd fast float %3158, 5.000000e-01
  %3161 = fadd fast float %3159, 5.000000e-01
  %3162 = fmul fast float %3136, %3160
  %3163 = fmul fast float %3139, %3161
  %3164 = fmul fast float %3154, %3162
  %3165 = call float @dx.op.tertiary.f32(i32 46, float %3155, float %3163, float %3164)  ; FMad(a,b,c)
  %3166 = fmul fast float %3153, %3162
  %3167 = call float @dx.op.tertiary.f32(i32 46, float %3154, float %3163, float %3166)  ; FMad(a,b,c)
  %3168 = fadd fast float %3145, %3165
  %3169 = fadd fast float %3148, %3167
  %3170 = icmp ugt i32 %3119, 1
  %3171 = icmp ugt i32 %3117, 33554431
  %3172 = or i1 %3171, %3170
  br i1 %3172, label %3173, label %3198

; <label>:3173                                    ; preds = %3100
  %3174 = add i32 %45, 276
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = lshr i32 %3176, 16
  %3178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3177)  ; LegacyF16ToF32(value)
  %3179 = fmul fast float %3141, %3178
  %3180 = call float @dx.op.unary.f32(i32 22, float %3179)  ; Frc(value)
  %3181 = mul nuw nsw i32 %3119, %3120
  %3182 = uitofp i32 %3181 to float
  %3183 = fmul fast float %3180, %3182
  %3184 = call float @dx.op.unary.f32(i32 27, float %3183)  ; Round_ni(value)
  %3185 = fptoui float %3184 to i32
  %3186 = urem i32 %3185, %3119
  %3187 = udiv i32 %3185, %3120
  %3188 = call float @dx.op.unary.f32(i32 22, float %3168)  ; Frc(value)
  %3189 = call float @dx.op.unary.f32(i32 22, float %3169)  ; Frc(value)
  %3190 = uitofp i32 %3186 to float
  %3191 = uitofp i32 %3187 to float
  %3192 = fadd fast float %3188, %3190
  %3193 = fadd fast float %3189, %3191
  %3194 = uitofp i32 %3119 to float
  %3195 = uitofp i32 %3120 to float
  %3196 = fdiv fast float %3192, %3194
  %3197 = fdiv fast float %3193, %3195
  br label %3198

; <label>:3198                                    ; preds = %3173, %3100
  %3199 = phi float [ %3196, %3173 ], [ %3168, %3100 ]
  %3200 = phi float [ %3197, %3173 ], [ %3169, %3100 ]
  %3201 = and i32 %3094, 256
  %3202 = icmp eq i32 %3201, 0
  br i1 %3202, label %3249, label %3203

; <label>:3203                                    ; preds = %3198
  %3204 = add i32 %45, 500
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = add i32 %3206, 0
  %3208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3208, %dx.types.Handle %98, float %3199, float %3200, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3210 = extractvalue %dx.types.ResRet.f32 %3209, 0
  %3211 = add i32 %45, 148
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = shl i32 %3213, 4
  %3215 = and i32 %3214, 32752
  %3216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3215)  ; LegacyF16ToF32(value)
  %3217 = lshr i32 %3213, 7
  %3218 = and i32 %3217, 32752
  %3219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3218)  ; LegacyF16ToF32(value)
  %3220 = fsub fast float 1.000000e+00, %526
  %3221 = call float @dx.op.binary.f32(i32 35, float %3220, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3222 = bitcast float %526 to i32
  %3223 = sitofp i32 %3222 to float
  %3224 = fadd fast float %3223, 0xC1CFBF8940000000
  %3225 = fmul fast float %3219, %3224
  %3226 = fadd fast float %3225, 0x41CFBF8940000000
  %3227 = fptosi float %3226 to i32
  %3228 = bitcast i32 %3227 to float
  %3229 = bitcast float %3221 to i32
  %3230 = sitofp i32 %3229 to float
  %3231 = fadd fast float %3230, 0xC1CFBF8940000000
  %3232 = fmul fast float %3231, %3219
  %3233 = fadd fast float %3232, 0x41CFBF8940000000
  %3234 = fptosi float %3233 to i32
  %3235 = bitcast i32 %3234 to float
  %3236 = fmul fast float %3228, %3216
  %3237 = fmul fast float %3235, %3216
  %3238 = fsub fast float %3221, %3236
  %3239 = fadd fast float %3237, %3221
  %3240 = call float @dx.op.unary.f32(i32 7, float %3238)  ; Saturate(value)
  %3241 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  %3242 = fsub fast float %3210, %3240
  %3243 = fsub fast float %3241, %3240
  %3244 = bitcast float %3243 to i32
  %3245 = sub nsw i32 2129859010, %3244
  %3246 = bitcast i32 %3245 to float
  %3247 = fmul fast float %3246, %3242
  %3248 = call float @dx.op.unary.f32(i32 7, float %3247)  ; Saturate(value)
  br label %3249

; <label>:3249                                    ; preds = %3203, %3198
  %3250 = phi float [ %3248, %3203 ], [ %526, %3198 ]
  %3251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3252 = extractvalue %dx.types.ResRet.i32 %3251, 0
  %3253 = and i32 %3252, 128
  %3254 = icmp eq i32 %3253, 0
  br i1 %3254, label %3271, label %3255

; <label>:3255                                    ; preds = %3249
  %3256 = add i32 %45, 484
  %3257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3258 = extractvalue %dx.types.ResRet.i32 %3257, 0
  %3259 = add i32 %3258, 0
  %3260 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3259, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3261 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3260, %dx.types.Handle %98, float %3199, float %3200, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3262 = extractvalue %dx.types.ResRet.f32 %3261, 0
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = and i32 %3264, 524288
  %3266 = icmp ne i32 %3265, 0
  %3267 = fcmp fast ogt float %3262, 0x3FE0101020000000
  %3268 = select i1 %3267, float 1.000000e+00, float 0.000000e+00
  %3269 = select i1 %3266, float %3268, float %3262
  %3270 = fmul fast float %3269, %3250
  br label %3271

; <label>:3271                                    ; preds = %3255, %3249
  %3272 = phi float [ %3270, %3255 ], [ %3250, %3249 ]
  %3273 = fcmp fast ult float %3272, 0x3F70101020000000
  br i1 %3273, label %4012, label %3274

; <label>:3274                                    ; preds = %3271
  %3275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.i32 %3275, 0
  %3277 = and i32 %3276, 16
  %3278 = icmp eq i32 %3277, 0
  br i1 %3278, label %3477, label %3279

; <label>:3279                                    ; preds = %3274
  %3280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.i32 %3280, 0
  %3282 = add i32 %45, 436
  %3283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3282, i32 undef)  ; BufferLoad(srv,index,wot)
  %3284 = extractvalue %dx.types.ResRet.i32 %3283, 0
  %3285 = add i32 %3284, 0
  %3286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3287 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3286, %dx.types.Handle %97, float %3199, float %3200, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3288 = extractvalue %dx.types.ResRet.f32 %3287, 0
  %3289 = extractvalue %dx.types.ResRet.f32 %3287, 1
  %3290 = extractvalue %dx.types.ResRet.f32 %3287, 2
  %3291 = extractvalue %dx.types.ResRet.f32 %3287, 3
  %3292 = and i32 %3281, 255
  %3293 = uitofp i32 %3292 to float
  %3294 = lshr i32 %3281, 8
  %3295 = and i32 %3294, 255
  %3296 = uitofp i32 %3295 to float
  %3297 = fmul fast float %3291, %3293
  %3298 = fadd fast float %3297, %3296
  %3299 = fmul fast float %3298, 0x3F70101000000000
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = and i32 %3301, 512
  %3303 = icmp eq i32 %3302, 0
  br i1 %3303, label %3312, label %3304

; <label>:3304                                    ; preds = %3279
  %3305 = add i32 %45, 520
  %3306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.i32 %3306, 0
  %3308 = add i32 %3307, 0
  %3309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3308, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3310 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3309, %dx.types.Handle %98, float %3199, float %3200, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3311 = extractvalue %dx.types.ResRet.f32 %3310, 0
  br label %3312

; <label>:3312                                    ; preds = %3304, %3279
  %3313 = phi float [ %3311, %3304 ], [ 1.000000e+00, %3279 ]
  %3314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.i32 %3314, 0
  %3316 = and i32 %3315, 33554432
  %3317 = icmp eq i32 %3316, 0
  br i1 %3317, label %3424, label %3318

; <label>:3318                                    ; preds = %3312
  %3319 = add i32 %45, 272
  %3320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3319, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.i32 %3320, 0
  %3322 = and i32 %3321, 65535
  %3323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3322)  ; LegacyF16ToF32(value)
  %3324 = lshr i32 %3321, 16
  %3325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3324)  ; LegacyF16ToF32(value)
  %3326 = add i32 %45, 276
  %3327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3326, i32 undef)  ; BufferLoad(srv,index,wot)
  %3328 = extractvalue %dx.types.ResRet.i32 %3327, 0
  %3329 = and i32 %3328, 65535
  %3330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3329)  ; LegacyF16ToF32(value)
  %3331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.i32 %3331, 0
  %3333 = lshr i32 %3332, 24
  %3334 = uitofp i32 %3333 to float
  %3335 = fmul fast float %3334, 0x3F70101020000000
  %3336 = and i32 %3332, 255
  %3337 = uitofp i32 %3336 to float
  %3338 = fmul fast float %3337, 0x3F70101020000000
  %3339 = lshr i32 %3332, 8
  %3340 = and i32 %3339, 255
  %3341 = uitofp i32 %3340 to float
  %3342 = fmul fast float %3341, 0x3F70101020000000
  %3343 = lshr i32 %3332, 16
  %3344 = and i32 %3343, 255
  %3345 = uitofp i32 %3344 to float
  %3346 = fmul fast float %3345, 0x3F70101020000000
  %3347 = add i32 %45, 268
  %3348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3347, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.i32 %3348, 0
  %3350 = lshr i32 %3349, 24
  %3351 = uitofp i32 %3350 to float
  %3352 = fmul fast float %3351, 0x3F70101020000000
  %3353 = and i32 %3349, 255
  %3354 = uitofp i32 %3353 to float
  %3355 = fmul fast float %3354, 0x3F70101020000000
  %3356 = lshr i32 %3349, 8
  %3357 = and i32 %3356, 255
  %3358 = uitofp i32 %3357 to float
  %3359 = fmul fast float %3358, 0x3F70101020000000
  %3360 = lshr i32 %3349, 16
  %3361 = and i32 %3360, 255
  %3362 = uitofp i32 %3361 to float
  %3363 = fmul fast float %3362, 0x3F70101020000000
  %3364 = bitcast float %3288 to i32
  %3365 = ashr i32 %3364, 1
  %3366 = sub nsw i32 1597463174, %3365
  %3367 = bitcast i32 %3366 to float
  %3368 = fmul fast float %3288, 5.000000e-01
  %3369 = fmul fast float %3367, %3367
  %3370 = fmul fast float %3369, %3368
  %3371 = fsub fast float 1.500000e+00, %3370
  %3372 = fmul fast float %3367, %3288
  %3373 = fmul fast float %3372, %3371
  %3374 = bitcast float %3289 to i32
  %3375 = ashr i32 %3374, 1
  %3376 = sub nsw i32 1597463174, %3375
  %3377 = bitcast i32 %3376 to float
  %3378 = fmul fast float %3289, 5.000000e-01
  %3379 = fmul fast float %3377, %3377
  %3380 = fmul fast float %3379, %3378
  %3381 = fsub fast float 1.500000e+00, %3380
  %3382 = fmul fast float %3377, %3289
  %3383 = fmul fast float %3382, %3381
  %3384 = bitcast float %3290 to i32
  %3385 = ashr i32 %3384, 1
  %3386 = sub nsw i32 1597463174, %3385
  %3387 = bitcast i32 %3386 to float
  %3388 = fmul fast float %3290, 5.000000e-01
  %3389 = fmul fast float %3387, %3387
  %3390 = fmul fast float %3389, %3388
  %3391 = fsub fast float 1.500000e+00, %3390
  %3392 = fmul fast float %3387, %3290
  %3393 = fmul fast float %3392, %3391
  %3394 = fsub fast float %3373, %3355
  %3395 = fsub fast float %3383, %3359
  %3396 = fsub fast float %3393, %3363
  %3397 = fmul fast float %3394, %3323
  %3398 = fmul fast float %3395, %3325
  %3399 = fmul fast float %3396, %3330
  %3400 = fadd fast float %3397, %3338
  %3401 = fadd fast float %3398, %3342
  %3402 = fadd fast float %3399, %3346
  %3403 = call float @dx.op.unary.f32(i32 7, float %3400)  ; Saturate(value)
  %3404 = call float @dx.op.unary.f32(i32 7, float %3401)  ; Saturate(value)
  %3405 = call float @dx.op.unary.f32(i32 7, float %3402)  ; Saturate(value)
  %3406 = fmul fast float %3403, %3403
  %3407 = fmul fast float %3404, %3404
  %3408 = fmul fast float %3405, %3405
  %3409 = fsub fast float %3406, %3288
  %3410 = fsub fast float %3407, %3289
  %3411 = fsub fast float %3408, %3290
  %3412 = fmul fast float %3409, %3313
  %3413 = fmul fast float %3410, %3313
  %3414 = fmul fast float %3411, %3313
  %3415 = fadd fast float %3412, %3288
  %3416 = fadd fast float %3413, %3289
  %3417 = fadd fast float %3414, %3290
  %3418 = fadd fast float %3335, %3299
  %3419 = fsub fast float %3418, %3352
  %3420 = call float @dx.op.unary.f32(i32 7, float %3419)  ; Saturate(value)
  %3421 = fsub fast float %3420, %3299
  %3422 = fmul fast float %3421, %3313
  %3423 = fadd fast float %3422, %3299
  br label %3477

; <label>:3424                                    ; preds = %3312
  %3425 = and i32 %3315, 134217728
  %3426 = icmp eq i32 %3425, 0
  br i1 %3426, label %3461, label %3427

; <label>:3427                                    ; preds = %3424
  %3428 = call float @dx.op.unary.f32(i32 24, float %444)  ; Sqrt(value)
  %3429 = call float @dx.op.unary.f32(i32 24, float %448)  ; Sqrt(value)
  %3430 = call float @dx.op.unary.f32(i32 24, float %452)  ; Sqrt(value)
  %3431 = fadd fast float %3428, -5.000000e-01
  %3432 = fadd fast float %3429, -5.000000e-01
  %3433 = fadd fast float %3430, -5.000000e-01
  %3434 = fmul fast float %3431, %3313
  %3435 = fmul fast float %3432, %3313
  %3436 = fmul fast float %3433, %3313
  %3437 = fadd fast float %3434, 5.000000e-01
  %3438 = fadd fast float %3435, 5.000000e-01
  %3439 = fadd fast float %3436, 5.000000e-01
  %3440 = call float @dx.op.unary.f32(i32 24, float %3288)  ; Sqrt(value)
  %3441 = call float @dx.op.unary.f32(i32 24, float %3289)  ; Sqrt(value)
  %3442 = call float @dx.op.unary.f32(i32 24, float %3290)  ; Sqrt(value)
  %3443 = fmul fast float %3437, 2.000000e+00
  %3444 = fsub fast float 1.000000e+00, %3443
  %3445 = fmul fast float %3444, %3440
  %3446 = fadd fast float %3445, %3443
  %3447 = fmul fast float %3446, %3440
  %3448 = fmul fast float %3438, 2.000000e+00
  %3449 = fsub fast float 1.000000e+00, %3448
  %3450 = fmul fast float %3449, %3441
  %3451 = fadd fast float %3450, %3448
  %3452 = fmul fast float %3451, %3441
  %3453 = fmul fast float %3439, 2.000000e+00
  %3454 = fsub fast float 1.000000e+00, %3453
  %3455 = fmul fast float %3454, %3442
  %3456 = fadd fast float %3455, %3453
  %3457 = fmul fast float %3456, %3442
  %3458 = fmul fast float %3447, %3447
  %3459 = fmul fast float %3452, %3452
  %3460 = fmul fast float %3457, %3457
  br label %3477

; <label>:3461                                    ; preds = %3424
  %3462 = fmul fast float %444, %444
  %3463 = fmul fast float %448, %448
  %3464 = fmul fast float %452, %452
  %3465 = fadd fast float %3462, -1.000000e+00
  %3466 = fadd fast float %3463, -1.000000e+00
  %3467 = fadd fast float %3464, -1.000000e+00
  %3468 = fmul fast float %3313, %3465
  %3469 = fmul fast float %3313, %3466
  %3470 = fmul fast float %3313, %3467
  %3471 = fadd fast float %3468, 1.000000e+00
  %3472 = fadd fast float %3469, 1.000000e+00
  %3473 = fadd fast float %3470, 1.000000e+00
  %3474 = fmul fast float %3471, %3288
  %3475 = fmul fast float %3472, %3289
  %3476 = fmul fast float %3473, %3290
  br label %3477

; <label>:3477                                    ; preds = %3461, %3427, %3318, %3274
  %3478 = phi float [ %3423, %3318 ], [ %3299, %3427 ], [ %3299, %3461 ], [ 0x3FA23C0BE0000000, %3274 ]
  %3479 = phi float [ %3415, %3318 ], [ %3458, %3427 ], [ %3474, %3461 ], [ 1.000000e+00, %3274 ]
  %3480 = phi float [ %3416, %3318 ], [ %3459, %3427 ], [ %3475, %3461 ], [ 1.000000e+00, %3274 ]
  %3481 = phi float [ %3417, %3318 ], [ %3460, %3427 ], [ %3476, %3461 ], [ 1.000000e+00, %3274 ]
  %3482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.i32 %3482, 1
  %3484 = and i32 %3483, 1
  %3485 = icmp ne i32 %3484, 0
  %3486 = add i32 %45, 356
  %3487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3486, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.i32 %3487, 0
  %3489 = and i32 %3488, 32
  %3490 = icmp ne i32 %3489, 0
  %3491 = and i1 %3485, %3490
  %3492 = select i1 %3491, float 1.000000e+00, float %3479
  %3493 = select i1 %3491, float 0x3FD3333340000000, float %3480
  %3494 = select i1 %3491, float 0x3FD3333340000000, float %3481
  %3495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3496 = extractvalue %dx.types.ResRet.i32 %3495, 0
  %3497 = and i32 %3496, 32
  %3498 = icmp eq i32 %3497, 0
  br i1 %3498, label %3571, label %3499

; <label>:3499                                    ; preds = %3477
  %3500 = add i32 %45, 140
  %3501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.i32 %3501, 0
  %3503 = add i32 %45, 452
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3503, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = add i32 %3505, 0
  %3507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3506, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3508 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3507, %dx.types.Handle %97, float %3199, float %3200, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3509 = extractvalue %dx.types.ResRet.f32 %3508, 0
  %3510 = extractvalue %dx.types.ResRet.f32 %3508, 1
  %3511 = extractvalue %dx.types.ResRet.f32 %3508, 2
  %3512 = extractvalue %dx.types.ResRet.f32 %3508, 3
  %3513 = and i32 %3502, 255
  %3514 = uitofp i32 %3513 to float
  %3515 = lshr i32 %3502, 8
  %3516 = and i32 %3515, 255
  %3517 = uitofp i32 %3516 to float
  %3518 = lshr i32 %3502, 16
  %3519 = and i32 %3518, 255
  %3520 = uitofp i32 %3519 to float
  %3521 = fmul fast float %3520, 0x3F70101000000000
  %3522 = fmul fast float %3509, %3514
  %3523 = fadd fast float %3522, %3517
  %3524 = fmul fast float %3523, 0x3F70101000000000
  %3525 = fadd fast float %3510, -5.000000e-01
  %3526 = fadd fast float %3512, -5.000000e-01
  %3527 = fmul fast float %3525, %3521
  %3528 = fmul fast float %3526, %3521
  %3529 = fadd fast float %3527, 5.000000e-01
  %3530 = fadd fast float %3528, 5.000000e-01
  %3531 = fmul fast float %3529, 2.000000e+00
  %3532 = fadd fast float %3531, -1.000000e+00
  %3533 = fmul fast float %3530, 2.000000e+00
  %3534 = fadd fast float %3533, -1.000000e+00
  %3535 = fadd fast float %3532, %3534
  %3536 = fmul fast float %3535, 5.000000e-01
  %3537 = fsub fast float %3532, %3534
  %3538 = fmul fast float %3537, 5.000000e-01
  %3539 = call float @dx.op.unary.f32(i32 6, float %3536)  ; FAbs(value)
  %3540 = fsub fast float 1.000000e+00, %3539
  %3541 = call float @dx.op.unary.f32(i32 6, float %3538)  ; FAbs(value)
  %3542 = fsub fast float %3540, %3541
  %3543 = call float @dx.op.dot3.f32(i32 55, float %3536, float %3538, float %3542, float %3536, float %3538, float %3542)  ; Dot3(ax,ay,az,bx,by,bz)
  %3544 = call float @dx.op.unary.f32(i32 25, float %3543)  ; Rsqrt(value)
  %3545 = fmul fast float %3536, %3544
  %3546 = fmul fast float %3538, %3544
  %3547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.i32 %3547, 0
  %3549 = and i32 %3548, 67108864
  %3550 = icmp eq i32 %3549, 0
  br i1 %3550, label %3567, label %3551

; <label>:3551                                    ; preds = %3499
  %3552 = add i32 %45, 328
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = and i32 %3554, 65535
  %3556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3555)  ; LegacyF16ToF32(value)
  %3557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3109, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.i32 %3557, 0
  %3559 = and i32 %3558, 65535
  %3560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3559)  ; LegacyF16ToF32(value)
  %3561 = lshr i32 %3554, 16
  %3562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3561)  ; LegacyF16ToF32(value)
  %3563 = fsub fast float %3524, %3562
  %3564 = fmul fast float %3563, %3556
  %3565 = fadd fast float %3564, %3560
  %3566 = call float @dx.op.unary.f32(i32 7, float %3565)  ; Saturate(value)
  br label %3567

; <label>:3567                                    ; preds = %3551, %3499
  %3568 = phi float [ %3566, %3551 ], [ %3524, %3499 ]
  %3569 = call float @dx.op.dot2.f32(i32 54, float %3545, float %3546, float %3103, float %3104)  ; Dot2(ax,ay,bx,by)
  %3570 = call float @dx.op.dot2.f32(i32 54, float %3545, float %3546, float %3105, float %3106)  ; Dot2(ax,ay,bx,by)
  br label %3571

; <label>:3571                                    ; preds = %3567, %3477
  %3572 = phi float [ %3568, %3567 ], [ 0x3FD6666660000000, %3477 ]
  %3573 = phi float [ %3569, %3567 ], [ 0.000000e+00, %3477 ]
  %3574 = phi float [ %3570, %3567 ], [ 0.000000e+00, %3477 ]
  %3575 = phi float [ %3511, %3567 ], [ 1.000000e+00, %3477 ]
  %3576 = add i32 %45, 208
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = lshr i32 %3578, 22
  %3580 = shl nuw nsw i32 %3579, 5
  %3581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3580)  ; LegacyF16ToF32(value)
  %3582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.i32 %3582, 0
  %3584 = and i32 %3583, 64
  %3585 = icmp eq i32 %3584, 0
  br i1 %3585, label %3619, label %3586

; <label>:3586                                    ; preds = %3571
  %3587 = add i32 %45, 468
  %3588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.i32 %3588, 0
  %3590 = add i32 %3589, 0
  %3591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3590, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.i32 %3592, 0
  %3594 = and i32 %3593, 131072
  %3595 = icmp eq i32 %3594, 0
  %3596 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3591, %dx.types.Handle %97, float %3199, float %3200, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = extractvalue %dx.types.ResRet.f32 %3596, 1
  %3599 = extractvalue %dx.types.ResRet.f32 %3596, 2
  %3600 = fmul fast float %3597, %432
  %3601 = fmul fast float %3598, %435
  %3602 = fmul fast float %3599, %438
  br i1 %3595, label %3609, label %3603

; <label>:3603                                    ; preds = %3586
  %3604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3605 = extractvalue %dx.types.CBufRet.f32 %3604, 0
  %3606 = fmul fast float %3605, %3600
  %3607 = fmul fast float %3605, %3601
  %3608 = fmul fast float %3605, %3602
  br label %3609

; <label>:3609                                    ; preds = %3603, %3586
  %3610 = phi float [ %3606, %3603 ], [ %3600, %3586 ]
  %3611 = phi float [ %3607, %3603 ], [ %3601, %3586 ]
  %3612 = phi float [ %3608, %3603 ], [ %3602, %3586 ]
  %3613 = fmul fast float %3610, %3581
  %3614 = select i1 %286, float %3613, float %3610
  %3615 = call float @dx.op.dot3.f32(i32 55, float %3614, float %3611, float %3612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3616 = select i1 %286, float 0.000000e+00, float %3610
  %3617 = select i1 %286, float %3615, float %3611
  %3618 = select i1 %286, float 0.000000e+00, float %3612
  br label %3619

; <label>:3619                                    ; preds = %3609, %3571
  %3620 = phi float [ %3616, %3609 ], [ 0.000000e+00, %3571 ]
  %3621 = phi float [ %3617, %3609 ], [ 0.000000e+00, %3571 ]
  %3622 = phi float [ %3618, %3609 ], [ 0.000000e+00, %3571 ]
  %3623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.i32 %3623, 0
  %3625 = and i32 %3624, 1024
  %3626 = icmp eq i32 %3625, 0
  br i1 %3626, label %3657, label %3627

; <label>:3627                                    ; preds = %3619
  %3628 = add i32 %45, 200
  %3629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.i32 %3629, 0
  %3631 = and i32 %3630, 255
  %3632 = uitofp i32 %3631 to float
  %3633 = fmul fast float %3632, 0x3F70101020000000
  %3634 = lshr i32 %3630, 8
  %3635 = and i32 %3634, 255
  %3636 = uitofp i32 %3635 to float
  %3637 = fmul fast float %3636, 0x3F70101020000000
  %3638 = lshr i32 %3630, 16
  %3639 = and i32 %3638, 255
  %3640 = uitofp i32 %3639 to float
  %3641 = fmul fast float %3640, 0x3F70101020000000
  %3642 = fmul fast float %3633, %3633
  %3643 = fmul fast float %3637, %3637
  %3644 = fmul fast float %3641, %3641
  %3645 = add i32 %45, 536
  %3646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.i32 %3646, 0
  %3648 = add i32 %3647, 0
  %3649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3649, %dx.types.Handle %98, float %3199, float %3200, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = extractvalue %dx.types.ResRet.f32 %3650, 1
  %3653 = extractvalue %dx.types.ResRet.f32 %3650, 2
  %3654 = fmul fast float %3642, %3651
  %3655 = fmul fast float %3643, %3652
  %3656 = fmul fast float %3644, %3653
  br label %3657

; <label>:3657                                    ; preds = %3627, %3619
  %3658 = phi float [ %3654, %3627 ], [ 0.000000e+00, %3619 ]
  %3659 = phi float [ %3655, %3627 ], [ 0.000000e+00, %3619 ]
  %3660 = phi float [ %3656, %3627 ], [ 0.000000e+00, %3619 ]
  %3661 = fcmp fast ogt float %3658, 0.000000e+00
  %3662 = fcmp fast ogt float %3659, 0.000000e+00
  %3663 = fcmp fast ogt float %3660, 0.000000e+00
  %3664 = call float @dx.op.unary.f32(i32 23, float %3658)  ; Log(value)
  %3665 = call float @dx.op.unary.f32(i32 23, float %3659)  ; Log(value)
  %3666 = call float @dx.op.unary.f32(i32 23, float %3660)  ; Log(value)
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = lshr i32 %3668, 7
  %3670 = and i32 %3669, 32752
  %3671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3670)  ; LegacyF16ToF32(value)
  %3672 = fmul fast float %3664, 0xBFE62E4300000000
  %3673 = fmul fast float %3672, %3671
  %3674 = fmul fast float %3665, 0xBFE62E4300000000
  %3675 = fmul fast float %3674, %3671
  %3676 = fmul fast float %3666, 0xBFE62E4300000000
  %3677 = fmul fast float %3676, %3671
  %3678 = select i1 %3661, float %3673, float 1.270000e+02
  %3679 = select i1 %3662, float %3675, float 1.270000e+02
  %3680 = select i1 %3663, float %3677, float 1.270000e+02
  %3681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.i32 %3681, 0
  %3683 = and i32 %3682, 10240
  %3684 = icmp eq i32 %3683, 0
  br i1 %3684, label %3729, label %3685

; <label>:3685                                    ; preds = %3657
  %3686 = add i32 %45, 552
  %3687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.i32 %3687, 0
  %3689 = add i32 %3688, 0
  %3690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3689, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3691 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3690, %dx.types.Handle %98, float %3199, float %3200, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3692 = extractvalue %dx.types.ResRet.f32 %3691, 1
  %3693 = extractvalue %dx.types.ResRet.f32 %3691, 3
  %3694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.i32 %3694, 0
  %3696 = and i32 %3695, 1048576
  %3697 = icmp ne i32 %3696, 0
  %3698 = and i32 %3695, 8192
  %3699 = icmp eq i32 %3698, 0
  br i1 %3699, label %3715, label %3700

; <label>:3700                                    ; preds = %3685
  %3701 = extractvalue %dx.types.ResRet.f32 %3691, 2
  %3702 = select i1 %3697, float %3701, float %3692
  %3703 = extractvalue %dx.types.ResRet.f32 %3691, 0
  %3704 = select i1 %3697, float %3703, float %3692
  %3705 = add i32 %45, 144
  %3706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3707 = extractvalue %dx.types.ResRet.i32 %3706, 0
  %3708 = lshr i32 %3707, 16
  %3709 = and i32 %3708, 255
  %3710 = uitofp i32 %3709 to float
  %3711 = fmul fast float %3710, 0x3F80101020000000
  %3712 = fmul fast float %3711, %3704
  %3713 = fmul fast float %3711, %3692
  %3714 = fmul fast float %3711, %3702
  br label %3715

; <label>:3715                                    ; preds = %3700, %3685
  %3716 = phi float [ %3712, %3700 ], [ 0.000000e+00, %3685 ]
  %3717 = phi float [ %3713, %3700 ], [ 0.000000e+00, %3685 ]
  %3718 = phi float [ %3714, %3700 ], [ 0.000000e+00, %3685 ]
  %3719 = and i32 %3695, 2048
  %3720 = icmp eq i32 %3719, 0
  br i1 %3720, label %3729, label %3721

; <label>:3721                                    ; preds = %3715
  %3722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.i32 %3722, 0
  %3724 = shl i32 %3723, 4
  %3725 = and i32 %3724, 32752
  %3726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3725)  ; LegacyF16ToF32(value)
  %3727 = fmul fast float %3726, %3693
  %3728 = call float @dx.op.binary.f32(i32 35, float %3727, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3729

; <label>:3729                                    ; preds = %3721, %3715, %3657
  %3730 = phi float [ %3716, %3721 ], [ %3716, %3715 ], [ 0.000000e+00, %3657 ]
  %3731 = phi float [ %3717, %3721 ], [ %3717, %3715 ], [ 0.000000e+00, %3657 ]
  %3732 = phi float [ %3718, %3721 ], [ %3718, %3715 ], [ 0.000000e+00, %3657 ]
  %3733 = phi float [ %3728, %3721 ], [ 0x3F70101020000000, %3715 ], [ 0x3F70101020000000, %3657 ]
  %3734 = add i32 %45, 144
  %3735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3734, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.i32 %3735, 0
  %3737 = and i32 %3736, 255
  %3738 = uitofp i32 %3737 to float
  %3739 = lshr i32 %3736, 8
  %3740 = and i32 %3739, 255
  %3741 = uitofp i32 %3740 to float
  %3742 = call float @dx.op.dot3.f32(i32 55, float %3492, float %3493, float %3494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3743 = fmul fast float %3741, %3742
  %3744 = fadd fast float %3743, %3738
  %3745 = fmul fast float %3744, 0x3F70101020000000
  %3746 = call float @dx.op.unary.f32(i32 7, float %3745)  ; Saturate(value)
  br i1 %3091, label %3747, label %3782

; <label>:3747                                    ; preds = %3729
  %3748 = fmul fast float %3733, 2.000000e+00
  %3749 = fcmp fast olt float %3678, 1.270000e+02
  %3750 = fcmp fast olt float %3679, 1.270000e+02
  %3751 = fcmp fast olt float %3680, 1.270000e+02
  %3752 = fmul fast float %3678, 0xBFF7154760000000
  %3753 = fmul fast float %3752, %3748
  %3754 = fmul fast float %3679, 0xBFF7154760000000
  %3755 = fmul fast float %3754, %3748
  %3756 = fmul fast float %3680, 0xBFF7154760000000
  %3757 = fmul fast float %3756, %3748
  %3758 = call float @dx.op.unary.f32(i32 21, float %3753)  ; Exp(value)
  %3759 = call float @dx.op.unary.f32(i32 21, float %3755)  ; Exp(value)
  %3760 = call float @dx.op.unary.f32(i32 21, float %3757)  ; Exp(value)
  %3761 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3762 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3763 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  %3764 = fadd fast float %3761, -1.000000e+00
  %3765 = select i1 %3749, float %3764, float -1.000000e+00
  %3766 = fadd fast float %3762, -1.000000e+00
  %3767 = select i1 %3750, float %3766, float -1.000000e+00
  %3768 = fadd fast float %3763, -1.000000e+00
  %3769 = select i1 %3751, float %3768, float -1.000000e+00
  %3770 = fmul fast float %3765, %3272
  %3771 = fmul fast float %3767, %3272
  %3772 = fmul fast float %3769, %3272
  %3773 = fadd fast float %3770, 1.000000e+00
  %3774 = fadd fast float %3771, 1.000000e+00
  %3775 = fadd fast float %3772, 1.000000e+00
  %3776 = fmul fast float %3773, %3073
  %3777 = fmul fast float %3774, %3074
  %3778 = fmul fast float %3775, %3075
  %3779 = fmul fast float %3773, %3076
  %3780 = fmul fast float %3774, %3077
  %3781 = fmul fast float %3775, %3078
  br label %3782

; <label>:3782                                    ; preds = %3747, %3729
  %3783 = phi float [ %3776, %3747 ], [ %3073, %3729 ]
  %3784 = phi float [ %3777, %3747 ], [ %3074, %3729 ]
  %3785 = phi float [ %3778, %3747 ], [ %3075, %3729 ]
  %3786 = phi float [ %3779, %3747 ], [ %3076, %3729 ]
  %3787 = phi float [ %3780, %3747 ], [ %3077, %3729 ]
  %3788 = phi float [ %3781, %3747 ], [ %3078, %3729 ]
  %3789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.i32 %3789, 0
  %3791 = and i32 %3790, 3
  %3792 = icmp eq i32 %3791, 3
  br i1 %3792, label %3871, label %3793

; <label>:3793                                    ; preds = %3782
  %3794 = and i32 %3790, 16
  %3795 = icmp ne i32 %3794, 0
  %3796 = select i1 %3795, float %3272, float 0.000000e+00
  %3797 = icmp eq i32 %3791, 0
  br i1 %3797, label %3798, label %3826

; <label>:3798                                    ; preds = %3793
  %3799 = and i32 %3790, 64
  %3800 = icmp ne i32 %3799, 0
  %3801 = select i1 %3800, float %3272, float 0.000000e+00
  %3802 = fsub fast float %3492, %3783
  %3803 = fsub fast float %3493, %3784
  %3804 = fsub fast float %3494, %3785
  %3805 = fmul fast float %3796, %3802
  %3806 = fmul fast float %3796, %3803
  %3807 = fmul fast float %3796, %3804
  %3808 = fadd fast float %3805, %3783
  %3809 = fadd fast float %3806, %3784
  %3810 = fadd fast float %3807, %3785
  %3811 = fsub fast float %3478, %3085
  %3812 = fmul fast float %3796, %3811
  %3813 = fadd fast float %3812, %3085
  %3814 = fsub fast float %3620, %3786
  %3815 = fsub fast float %3621, %3787
  %3816 = fsub fast float %3622, %3788
  %3817 = fmul fast float %3801, %3814
  %3818 = fmul fast float %3801, %3815
  %3819 = fmul fast float %3801, %3816
  %3820 = fadd fast float %3817, %3786
  %3821 = fadd fast float %3818, %3787
  %3822 = fadd fast float %3819, %3788
  %3823 = fsub fast float %3746, %3089
  %3824 = fmul fast float %3796, %3823
  %3825 = fadd fast float %3824, %3089
  br label %3871

; <label>:3826                                    ; preds = %3793
  %3827 = icmp eq i32 %3791, 1
  br i1 %3827, label %3828, label %3841

; <label>:3828                                    ; preds = %3826
  %3829 = fadd fast float %3492, -1.000000e+00
  %3830 = fadd fast float %3493, -1.000000e+00
  %3831 = fadd fast float %3494, -1.000000e+00
  %3832 = fmul fast float %3796, %3829
  %3833 = fmul fast float %3796, %3830
  %3834 = fmul fast float %3796, %3831
  %3835 = fadd fast float %3832, 1.000000e+00
  %3836 = fadd fast float %3833, 1.000000e+00
  %3837 = fadd fast float %3834, 1.000000e+00
  %3838 = fmul fast float %3835, %3783
  %3839 = fmul fast float %3836, %3784
  %3840 = fmul fast float %3837, %3785
  br label %3871

; <label>:3841                                    ; preds = %3826
  %3842 = icmp eq i32 %3791, 2
  br i1 %3842, label %3843, label %3871

; <label>:3843                                    ; preds = %3841
  %3844 = call float @dx.op.unary.f32(i32 24, float %3492)  ; Sqrt(value)
  %3845 = call float @dx.op.unary.f32(i32 24, float %3493)  ; Sqrt(value)
  %3846 = call float @dx.op.unary.f32(i32 24, float %3494)  ; Sqrt(value)
  %3847 = fadd fast float %3844, -5.000000e-01
  %3848 = fadd fast float %3845, -5.000000e-01
  %3849 = fadd fast float %3846, -5.000000e-01
  %3850 = fmul fast float %3847, %3796
  %3851 = fmul fast float %3848, %3796
  %3852 = fmul fast float %3849, %3796
  %3853 = fadd fast float %3850, 5.000000e-01
  %3854 = fadd fast float %3851, 5.000000e-01
  %3855 = fadd fast float %3852, 5.000000e-01
  %3856 = fmul fast float %3853, 2.000000e+00
  %3857 = fsub fast float 1.000000e+00, %3856
  %3858 = fmul fast float %3857, %3783
  %3859 = fadd fast float %3858, %3856
  %3860 = fmul fast float %3859, %3783
  %3861 = fmul fast float %3854, 2.000000e+00
  %3862 = fsub fast float 1.000000e+00, %3861
  %3863 = fmul fast float %3862, %3784
  %3864 = fadd fast float %3863, %3861
  %3865 = fmul fast float %3864, %3784
  %3866 = fmul fast float %3855, 2.000000e+00
  %3867 = fsub fast float 1.000000e+00, %3866
  %3868 = fmul fast float %3867, %3785
  %3869 = fadd fast float %3868, %3866
  %3870 = fmul fast float %3869, %3785
  br label %3871

; <label>:3871                                    ; preds = %3843, %3841, %3828, %3798, %3782
  %3872 = phi float [ %3783, %3782 ], [ %3860, %3843 ], [ %3783, %3841 ], [ %3838, %3828 ], [ %3808, %3798 ]
  %3873 = phi float [ %3784, %3782 ], [ %3865, %3843 ], [ %3784, %3841 ], [ %3839, %3828 ], [ %3809, %3798 ]
  %3874 = phi float [ %3785, %3782 ], [ %3870, %3843 ], [ %3785, %3841 ], [ %3840, %3828 ], [ %3810, %3798 ]
  %3875 = phi float [ %3786, %3782 ], [ %3786, %3843 ], [ %3786, %3841 ], [ %3786, %3828 ], [ %3820, %3798 ]
  %3876 = phi float [ %3787, %3782 ], [ %3787, %3843 ], [ %3787, %3841 ], [ %3787, %3828 ], [ %3821, %3798 ]
  %3877 = phi float [ %3788, %3782 ], [ %3788, %3843 ], [ %3788, %3841 ], [ %3788, %3828 ], [ %3822, %3798 ]
  %3878 = phi float [ %3085, %3782 ], [ %3085, %3843 ], [ %3085, %3841 ], [ %3085, %3828 ], [ %3813, %3798 ]
  %3879 = phi float [ %3089, %3782 ], [ %3089, %3843 ], [ %3089, %3841 ], [ %3089, %3828 ], [ %3825, %3798 ]
  %3880 = and i32 %3790, 12
  %3881 = icmp eq i32 %3880, 12
  br i1 %3881, label %4012, label %3882

; <label>:3882                                    ; preds = %3871
  %3883 = and i32 %3790, 2097184
  %3884 = icmp eq i32 %3883, 2097184
  %3885 = select i1 %3884, float %3272, float 0.000000e+00
  %3886 = and i32 %3790, 4194336
  %3887 = icmp eq i32 %3886, 4194336
  %3888 = select i1 %3887, float %3272, float 0.000000e+00
  %3889 = and i32 %3790, 8388640
  %3890 = icmp eq i32 %3889, 8388640
  %3891 = select i1 %3890, float %3272, float 0.000000e+00
  %3892 = and i32 %3790, 1024
  %3893 = icmp ne i32 %3892, 0
  %3894 = select i1 %3893, float %3272, float 0.000000e+00
  %3895 = and i32 %3790, 2048
  %3896 = icmp ne i32 %3895, 0
  %3897 = select i1 %3896, float %3272, float 0.000000e+00
  %3898 = and i32 %3790, 8192
  %3899 = icmp ne i32 %3898, 0
  %3900 = select i1 %3899, float %3272, float 0.000000e+00
  %3901 = icmp eq i32 %3880, 0
  br i1 %3901, label %3902, label %3936

; <label>:3902                                    ; preds = %3882
  %3903 = fsub fast float %3573, %3071
  %3904 = fsub fast float %3574, %3072
  %3905 = fmul fast float %3885, %3903
  %3906 = fmul fast float %3885, %3904
  %3907 = fadd fast float %3905, %3071
  %3908 = fadd fast float %3906, %3072
  %3909 = fsub fast float %3575, %3087
  %3910 = fmul fast float %3888, %3909
  %3911 = fadd fast float %3910, %3087
  %3912 = fsub fast float %3572, %3086
  %3913 = fmul fast float %3891, %3912
  %3914 = fadd fast float %3913, %3086
  %3915 = fsub fast float %3678, %3079
  %3916 = fsub fast float %3679, %3080
  %3917 = fsub fast float %3680, %3081
  %3918 = fmul fast float %3894, %3915
  %3919 = fmul fast float %3894, %3916
  %3920 = fmul fast float %3894, %3917
  %3921 = fadd fast float %3918, %3079
  %3922 = fadd fast float %3919, %3080
  %3923 = fadd fast float %3920, %3081
  %3924 = fsub fast float %3733, %3088
  %3925 = fmul fast float %3897, %3924
  %3926 = fadd fast float %3925, %3088
  %3927 = fsub fast float %3730, %3082
  %3928 = fsub fast float %3731, %3083
  %3929 = fsub fast float %3732, %3084
  %3930 = fmul fast float %3900, %3927
  %3931 = fmul fast float %3900, %3928
  %3932 = fmul fast float %3900, %3929
  %3933 = fadd fast float %3930, %3082
  %3934 = fadd fast float %3931, %3083
  %3935 = fadd fast float %3932, %3084
  br label %4012

; <label>:3936                                    ; preds = %3882
  %3937 = icmp eq i32 %3880, 4
  br i1 %3937, label %3938, label %3984

; <label>:3938                                    ; preds = %3936
  %3939 = fmul fast float %3885, %3573
  %3940 = fmul fast float %3885, %3574
  %3941 = fadd fast float %3939, %3071
  %3942 = fadd fast float %3940, %3072
  %3943 = call float @dx.op.binary.f32(i32 36, float %3087, float %3575)  ; FMin(a,b)
  %3944 = fsub fast float %3943, %3087
  %3945 = fmul fast float %3944, %3888
  %3946 = fadd fast float %3945, %3087
  %3947 = fadd fast float %3572, %3086
  %3948 = fmul fast float %3947, 0x3FF337FAE0000000
  %3949 = fmul fast float %3086, %3086
  %3950 = fmul fast float %3572, %3572
  %3951 = fadd fast float %3950, %3949
  %3952 = fmul fast float %3951, 0x3FE5152B00000000
  %3953 = fmul fast float %3086, 0xBFCC1F85E0000000
  %3954 = fmul fast float %3953, %3572
  %3955 = fadd fast float %3954, 0xBFE1363700000000
  %3956 = fadd fast float %3955, %3948
  %3957 = fsub fast float %3956, %3952
  %3958 = fmul fast float %3947, 0x3FBA6F0D00000000
  %3959 = fmul fast float %3951, 0x3FD0432880000000
  %3960 = fmul fast float %3086, 0xBFEF110800000000
  %3961 = fmul fast float %3960, %3572
  %3962 = fadd fast float %3961, 1.000000e+00
  %3963 = fsub fast float %3962, %3958
  %3964 = fadd fast float %3963, %3959
  %3965 = fdiv fast float %3957, %3964
  %3966 = call float @dx.op.unary.f32(i32 7, float %3965)  ; Saturate(value)
  %3967 = fsub fast float %3966, %3086
  %3968 = fmul fast float %3967, %3891
  %3969 = fadd fast float %3968, %3086
  %3970 = fmul fast float %3894, %3678
  %3971 = fmul fast float %3894, %3679
  %3972 = fmul fast float %3894, %3680
  %3973 = fadd fast float %3970, %3079
  %3974 = fadd fast float %3971, %3080
  %3975 = fadd fast float %3972, %3081
  %3976 = fmul fast float %3897, %3733
  %3977 = fadd fast float %3976, %3088
  %3978 = fmul fast float %3900, %3730
  %3979 = fmul fast float %3900, %3731
  %3980 = fmul fast float %3900, %3732
  %3981 = fadd fast float %3978, %3082
  %3982 = fadd fast float %3979, %3083
  %3983 = fadd fast float %3980, %3084
  br label %4012

; <label>:3984                                    ; preds = %3936
  %3985 = icmp eq i32 %3880, 8
  br i1 %3985, label %3986, label %4012

; <label>:3986                                    ; preds = %3984
  %3987 = fmul fast float %3885, %3573
  %3988 = fmul fast float %3885, %3574
  %3989 = fadd fast float %3987, %3071
  %3990 = fadd fast float %3988, %3072
  %3991 = call float @dx.op.binary.f32(i32 36, float %3087, float %3575)  ; FMin(a,b)
  %3992 = fsub fast float %3991, %3087
  %3993 = fmul fast float %3992, %3888
  %3994 = fadd fast float %3993, %3087
  %3995 = fsub fast float %3572, %3086
  %3996 = fmul fast float %3891, %3995
  %3997 = fadd fast float %3996, %3086
  %3998 = fmul fast float %3894, %3678
  %3999 = fmul fast float %3894, %3679
  %4000 = fmul fast float %3894, %3680
  %4001 = fadd fast float %3998, %3079
  %4002 = fadd fast float %3999, %3080
  %4003 = fadd fast float %4000, %3081
  %4004 = fmul fast float %3897, %3733
  %4005 = fadd fast float %4004, %3088
  %4006 = fmul fast float %3900, %3730
  %4007 = fmul fast float %3900, %3731
  %4008 = fmul fast float %3900, %3732
  %4009 = fadd fast float %4006, %3082
  %4010 = fadd fast float %4007, %3083
  %4011 = fadd fast float %4008, %3084
  br label %4012

; <label>:4012                                    ; preds = %3986, %3984, %3938, %3902, %3871, %3271, %3090, %3070
  %4013 = phi float [ %3071, %3871 ], [ %3071, %3271 ], [ %3071, %3070 ], [ %3071, %3090 ], [ %3907, %3902 ], [ %3941, %3938 ], [ %3071, %3984 ], [ %3989, %3986 ]
  %4014 = phi float [ %3072, %3871 ], [ %3072, %3271 ], [ %3072, %3070 ], [ %3072, %3090 ], [ %3908, %3902 ], [ %3942, %3938 ], [ %3072, %3984 ], [ %3990, %3986 ]
  %4015 = phi float [ %3872, %3871 ], [ %3073, %3271 ], [ %3073, %3070 ], [ %3073, %3090 ], [ %3872, %3902 ], [ %3872, %3938 ], [ %3872, %3984 ], [ %3872, %3986 ]
  %4016 = phi float [ %3873, %3871 ], [ %3074, %3271 ], [ %3074, %3070 ], [ %3074, %3090 ], [ %3873, %3902 ], [ %3873, %3938 ], [ %3873, %3984 ], [ %3873, %3986 ]
  %4017 = phi float [ %3874, %3871 ], [ %3075, %3271 ], [ %3075, %3070 ], [ %3075, %3090 ], [ %3874, %3902 ], [ %3874, %3938 ], [ %3874, %3984 ], [ %3874, %3986 ]
  %4018 = phi float [ %3875, %3871 ], [ %3076, %3271 ], [ %3076, %3070 ], [ %3076, %3090 ], [ %3875, %3902 ], [ %3875, %3938 ], [ %3875, %3984 ], [ %3875, %3986 ]
  %4019 = phi float [ %3876, %3871 ], [ %3077, %3271 ], [ %3077, %3070 ], [ %3077, %3090 ], [ %3876, %3902 ], [ %3876, %3938 ], [ %3876, %3984 ], [ %3876, %3986 ]
  %4020 = phi float [ %3877, %3871 ], [ %3078, %3271 ], [ %3078, %3070 ], [ %3078, %3090 ], [ %3877, %3902 ], [ %3877, %3938 ], [ %3877, %3984 ], [ %3877, %3986 ]
  %4021 = phi float [ %3079, %3871 ], [ %3079, %3271 ], [ %3079, %3070 ], [ %3079, %3090 ], [ %3921, %3902 ], [ %3973, %3938 ], [ %3079, %3984 ], [ %4001, %3986 ]
  %4022 = phi float [ %3080, %3871 ], [ %3080, %3271 ], [ %3080, %3070 ], [ %3080, %3090 ], [ %3922, %3902 ], [ %3974, %3938 ], [ %3080, %3984 ], [ %4002, %3986 ]
  %4023 = phi float [ %3081, %3871 ], [ %3081, %3271 ], [ %3081, %3070 ], [ %3081, %3090 ], [ %3923, %3902 ], [ %3975, %3938 ], [ %3081, %3984 ], [ %4003, %3986 ]
  %4024 = phi float [ %3082, %3871 ], [ %3082, %3271 ], [ %3082, %3070 ], [ %3082, %3090 ], [ %3933, %3902 ], [ %3981, %3938 ], [ %3082, %3984 ], [ %4009, %3986 ]
  %4025 = phi float [ %3083, %3871 ], [ %3083, %3271 ], [ %3083, %3070 ], [ %3083, %3090 ], [ %3934, %3902 ], [ %3982, %3938 ], [ %3083, %3984 ], [ %4010, %3986 ]
  %4026 = phi float [ %3084, %3871 ], [ %3084, %3271 ], [ %3084, %3070 ], [ %3084, %3090 ], [ %3935, %3902 ], [ %3983, %3938 ], [ %3084, %3984 ], [ %4011, %3986 ]
  %4027 = phi float [ %3878, %3871 ], [ %3085, %3271 ], [ %3085, %3070 ], [ %3085, %3090 ], [ %3878, %3902 ], [ %3878, %3938 ], [ %3878, %3984 ], [ %3878, %3986 ]
  %4028 = phi float [ %3086, %3871 ], [ %3086, %3271 ], [ %3086, %3070 ], [ %3086, %3090 ], [ %3914, %3902 ], [ %3969, %3938 ], [ %3086, %3984 ], [ %3997, %3986 ]
  %4029 = phi float [ %3087, %3871 ], [ %3087, %3271 ], [ %3087, %3070 ], [ %3087, %3090 ], [ %3911, %3902 ], [ %3946, %3938 ], [ %3087, %3984 ], [ %3994, %3986 ]
  %4030 = phi float [ %3088, %3871 ], [ %3088, %3271 ], [ %3088, %3070 ], [ %3088, %3090 ], [ %3926, %3902 ], [ %3977, %3938 ], [ %3088, %3984 ], [ %4005, %3986 ]
  %4031 = phi float [ %3879, %3871 ], [ %3089, %3271 ], [ %3089, %3070 ], [ %3089, %3090 ], [ %3879, %3902 ], [ %3879, %3938 ], [ %3879, %3984 ], [ %3879, %3986 ]
  %4032 = add i32 %45, 408
  %4033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %4032, i32 undef)  ; BufferLoad(srv,index,wot)
  %4034 = extractvalue %dx.types.ResRet.i32 %4033, 0
  %4035 = extractvalue %dx.types.ResRet.i32 %4033, 1
  %4036 = bitcast i32 %4034 to float
  %4037 = bitcast i32 %4035 to float
  %4038 = fcmp fast oge float %4036, 0.000000e+00
  %4039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4040 = extractvalue %dx.types.CBufRet.f32 %4039, 0
  %4041 = select i1 %4038, float %4036, float %4040
  %4042 = fadd fast float %4041, %194
  %4043 = fmul fast float %4037, %195
  %4044 = add i32 %45, 504
  %4045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %4044, i32 undef)  ; BufferLoad(srv,index,wot)
  %4046 = extractvalue %dx.types.ResRet.i32 %4045, 0
  %4047 = add i32 %4046, 0
  %4048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4049 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4048, %dx.types.Handle %98, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4050 = extractvalue %dx.types.ResRet.f32 %4049, 0
  %4051 = fmul fast float %4043, %4050
  %4052 = fadd fast float %4042, %4051
  %4053 = and i32 %186, 65535
  %4054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4053)  ; LegacyF16ToF32(value)
  %4055 = lshr i32 %186, 16
  %4056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4055)  ; LegacyF16ToF32(value)
  %4057 = and i32 %187, 65535
  %4058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4057)  ; LegacyF16ToF32(value)
  %4059 = fmul fast float %4054, %4015
  %4060 = fmul fast float %4056, %4016
  %4061 = fmul fast float %4058, %4017
  %4062 = shl i32 %188, 4
  %4063 = and i32 %4062, 32752
  %4064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4063)  ; LegacyF16ToF32(value)
  %4065 = lshr i32 %188, 7
  %4066 = and i32 %4065, 32752
  %4067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4066)  ; LegacyF16ToF32(value)
  %4068 = lshr i32 %188, 22
  %4069 = shl nuw nsw i32 %4068, 5
  %4070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4069)  ; LegacyF16ToF32(value)
  %4071 = and i32 %189, 65535
  %4072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4071)  ; LegacyF16ToF32(value)
  %4073 = fmul fast float %4064, %4018
  %4074 = fmul fast float %4073, %4072
  %4075 = fmul fast float %4067, %4019
  %4076 = fmul fast float %4075, %4072
  %4077 = fmul fast float %4070, %4020
  %4078 = fmul fast float %4077, %4072
  %4079 = call float @dx.op.dot2.f32(i32 54, float %4013, float %4014, float %4013, float %4014)  ; Dot2(ax,ay,bx,by)
  %4080 = fmul fast float %4079, 0x3FE3333340000000
  %4081 = fsub fast float 1.000000e+00, %4080
  %4082 = call float @dx.op.dot3.f32(i32 55, float %4013, float %4014, float %4081, float %4013, float %4014, float %4081)  ; Dot3(ax,ay,az,bx,by,bz)
  %4083 = call float @dx.op.unary.f32(i32 25, float %4082)  ; Rsqrt(value)
  %4084 = fmul fast float %4083, %4013
  %4085 = fmul fast float %4083, %4014
  %4086 = fmul fast float %4081, %4083
  %4087 = fmul fast float %4086, %108
  %4088 = fmul fast float %4086, %109
  %4089 = fmul fast float %4086, %110
  %4090 = fmul fast float %4084, %76
  %4091 = fmul fast float %4084, %77
  %4092 = fmul fast float %4084, %78
  %4093 = fadd fast float %4087, %4090
  %4094 = fadd fast float %4088, %4091
  %4095 = fadd fast float %4089, %4092
  %4096 = fmul fast float %120, %4085
  %4097 = fmul fast float %121, %4085
  %4098 = fmul fast float %122, %4085
  %4099 = fadd fast float %4093, %4096
  %4100 = fadd fast float %4094, %4097
  %4101 = fadd fast float %4095, %4098
  %4102 = call float @dx.op.dot3.f32(i32 55, float %4099, float %4100, float %4101, float %4099, float %4100, float %4101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4103 = call float @dx.op.unary.f32(i32 25, float %4102)  ; Rsqrt(value)
  %4104 = fmul fast float %4099, %4103
  %4105 = fmul fast float %4100, %4103
  %4106 = fmul fast float %4101, %4103
  %4107 = icmp eq i32 %47, 65535
  br i1 %4107, label %4706, label %4108

; <label>:4108                                    ; preds = %4012
  %4109 = call float @dx.op.unary.f32(i32 83, float %48)  ; DerivCoarseX(value)
  %4110 = call float @dx.op.unary.f32(i32 83, float %49)  ; DerivCoarseX(value)
  %4111 = call float @dx.op.unary.f32(i32 83, float %50)  ; DerivCoarseX(value)
  %4112 = call float @dx.op.unary.f32(i32 84, float %48)  ; DerivCoarseY(value)
  %4113 = call float @dx.op.unary.f32(i32 84, float %49)  ; DerivCoarseY(value)
  %4114 = call float @dx.op.unary.f32(i32 84, float %50)  ; DerivCoarseY(value)
  %4115 = fadd fast float %4109, %48
  %4116 = fadd fast float %4110, %49
  %4117 = fadd fast float %4111, %50
  %4118 = fadd fast float %4112, %48
  %4119 = fadd fast float %4113, %49
  %4120 = fadd fast float %4114, %50
  %4121 = mul i32 %47, 48
  %4122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4121, i32 undef)  ; BufferLoad(srv,index,wot)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.ResRet.f32 %4122, 1
  %4125 = extractvalue %dx.types.ResRet.f32 %4122, 2
  %4126 = add i32 %4121, 16
  %4127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4126, i32 undef)  ; BufferLoad(srv,index,wot)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = extractvalue %dx.types.ResRet.f32 %4127, 1
  %4130 = extractvalue %dx.types.ResRet.f32 %4127, 2
  %4131 = add i32 %4121, 32
  %4132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4131, i32 undef)  ; BufferLoad(srv,index,wot)
  %4133 = extractvalue %dx.types.ResRet.f32 %4132, 0
  %4134 = extractvalue %dx.types.ResRet.f32 %4132, 1
  %4135 = extractvalue %dx.types.ResRet.f32 %4132, 2
  %4136 = extractvalue %dx.types.ResRet.f32 %4132, 3
  %4137 = bitcast float %4136 to i32
  %4138 = fmul fast float %4123, %48
  %4139 = fmul fast float %4124, %49
  %4140 = fmul fast float %4125, %50
  %4141 = fsub fast float %4138, %4128
  %4142 = fsub fast float %4139, %4129
  %4143 = fsub fast float %4140, %4130
  %4144 = call float @dx.op.unary.f32(i32 7, float %4141)  ; Saturate(value)
  %4145 = call float @dx.op.unary.f32(i32 7, float %4142)  ; Saturate(value)
  %4146 = call float @dx.op.unary.f32(i32 7, float %4143)  ; Saturate(value)
  %4147 = fmul fast float %4144, %4133
  %4148 = fmul fast float %4145, %4134
  %4149 = fmul fast float %4146, %4135
  %4150 = fadd fast float %4133, -1.000000e+00
  %4151 = fadd fast float %4134, -1.000000e+00
  %4152 = fadd fast float %4135, -1.000000e+00
  %4153 = call float @dx.op.unary.f32(i32 27, float %4147)  ; Round_ni(value)
  %4154 = call float @dx.op.unary.f32(i32 27, float %4148)  ; Round_ni(value)
  %4155 = call float @dx.op.unary.f32(i32 27, float %4149)  ; Round_ni(value)
  %4156 = call float @dx.op.binary.f32(i32 36, float %4153, float %4150)  ; FMin(a,b)
  %4157 = call float @dx.op.binary.f32(i32 36, float %4154, float %4151)  ; FMin(a,b)
  %4158 = call float @dx.op.binary.f32(i32 36, float %4155, float %4152)  ; FMin(a,b)
  %4159 = fmul fast float %4158, %4134
  %4160 = fadd fast float %4159, %4157
  %4161 = fmul fast float %4160, %4133
  %4162 = fadd fast float %4161, %4156
  %4163 = fptosi float %4162 to i32
  %4164 = add nsw i32 %4163, %4137
  %4165 = shl nsw i32 %4164, 2
  %4166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4165, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.i32 %4166, 0
  %4168 = lshr i32 %4167, 16
  %4169 = icmp eq i32 %4168, 0
  br i1 %4169, label %4669, label %4170

; <label>:4170                                    ; preds = %4108
  br label %4171

; <label>:4171                                    ; preds = %4298, %4170
  %4172 = phi i32 [ %4200, %4298 ], [ %4168, %4170 ]
  %4173 = phi float [ %4299, %4298 ], [ 0.000000e+00, %4170 ]
  %4174 = phi float [ %4300, %4298 ], [ %4052, %4170 ]
  %4175 = phi float [ %4301, %4298 ], [ %4031, %4170 ]
  %4176 = phi float [ %4302, %4298 ], [ %4021, %4170 ]
  %4177 = phi float [ %4303, %4298 ], [ %4022, %4170 ]
  %4178 = phi float [ %4304, %4298 ], [ %4023, %4170 ]
  %4179 = phi float [ %4305, %4298 ], [ 0.000000e+00, %4170 ]
  %4180 = phi float [ %4306, %4298 ], [ 0.000000e+00, %4170 ]
  %4181 = phi float [ %4307, %4298 ], [ %4024, %4170 ]
  %4182 = phi float [ %4308, %4298 ], [ %4025, %4170 ]
  %4183 = phi float [ %4309, %4298 ], [ %4026, %4170 ]
  %4184 = phi float [ %4310, %4298 ], [ %4074, %4170 ]
  %4185 = phi float [ %4311, %4298 ], [ %4076, %4170 ]
  %4186 = phi float [ %4312, %4298 ], [ %4078, %4170 ]
  %4187 = phi float [ %4313, %4298 ], [ %4104, %4170 ]
  %4188 = phi float [ %4314, %4298 ], [ %4105, %4170 ]
  %4189 = phi float [ %4315, %4298 ], [ %4106, %4170 ]
  %4190 = phi float [ %4316, %4298 ], [ %4029, %4170 ]
  %4191 = phi float [ %4317, %4298 ], [ %4028, %4170 ]
  %4192 = phi float [ %4318, %4298 ], [ 0.000000e+00, %4170 ]
  %4193 = phi float [ %4319, %4298 ], [ %4027, %4170 ]
  %4194 = phi float [ %4320, %4298 ], [ %4059, %4170 ]
  %4195 = phi float [ %4321, %4298 ], [ %4060, %4170 ]
  %4196 = phi float [ %4322, %4298 ], [ %4061, %4170 ]
  %4197 = shl nuw nsw i32 %4172, 2
  %4198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.i32 %4198, 0
  %4200 = lshr i32 %4199, 16
  %4201 = shl i32 %4199, 8
  %4202 = and i32 %4201, 16776960
  %4203 = or i32 %4202, 48
  %4204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4203, i32 undef)  ; BufferLoad(srv,index,wot)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4206 = extractvalue %dx.types.ResRet.f32 %4204, 1
  %4207 = extractvalue %dx.types.ResRet.f32 %4204, 2
  %4208 = or i32 %4202, 64
  %4209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4208, i32 undef)  ; BufferLoad(srv,index,wot)
  %4210 = extractvalue %dx.types.ResRet.i32 %4209, 0
  %4211 = extractvalue %dx.types.ResRet.i32 %4209, 1
  %4212 = or i32 %4202, 80
  %4213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 2
  %4215 = extractvalue %dx.types.ResRet.f32 %4213, 3
  %4216 = or i32 %4202, 96
  %4217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.ResRet.f32 %4217, 1
  %4220 = extractvalue %dx.types.ResRet.f32 %4217, 2
  %4221 = extractvalue %dx.types.ResRet.f32 %4217, 3
  %4222 = or i32 %4202, 112
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 2
  %4225 = or i32 %4202, 128
  %4226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.ResRet.f32 %4226, 1
  %4229 = extractvalue %dx.types.ResRet.f32 %4226, 2
  %4230 = extractvalue %dx.types.ResRet.f32 %4226, 3
  %4231 = or i32 %4202, 144
  %4232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4231, i32 undef)  ; BufferLoad(srv,index,wot)
  %4233 = extractvalue %dx.types.ResRet.f32 %4232, 0
  %4234 = extractvalue %dx.types.ResRet.f32 %4232, 1
  %4235 = extractvalue %dx.types.ResRet.f32 %4232, 2
  %4236 = extractvalue %dx.types.ResRet.f32 %4232, 3
  %4237 = or i32 %4202, 160
  %4238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4237, i32 undef)  ; BufferLoad(srv,index,wot)
  %4239 = extractvalue %dx.types.ResRet.f32 %4238, 0
  %4240 = extractvalue %dx.types.ResRet.f32 %4238, 1
  %4241 = extractvalue %dx.types.ResRet.f32 %4238, 2
  %4242 = extractvalue %dx.types.ResRet.f32 %4238, 3
  %4243 = or i32 %4202, 192
  %4244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4243, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.i32 %4244, 0
  %4246 = or i32 %4202, 208
  %4247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4246, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.f32 %4247, 0
  %4249 = or i32 %4202, 248
  %4250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4249, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = extractvalue %dx.types.ResRet.f32 %4250, 1
  %4253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4202, i32 undef)  ; BufferLoad(srv,index,wot)
  %4254 = extractvalue %dx.types.ResRet.f32 %4253, 0
  %4255 = extractvalue %dx.types.ResRet.f32 %4253, 1
  %4256 = extractvalue %dx.types.ResRet.f32 %4253, 2
  %4257 = extractvalue %dx.types.ResRet.f32 %4253, 3
  %4258 = call float @dx.op.dot4.f32(i32 56, float %4254, float %4255, float %4256, float %4257, float %48, float %49, float %50, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4259 = or i32 %4202, 16
  %4260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4259, i32 undef)  ; BufferLoad(srv,index,wot)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = extractvalue %dx.types.ResRet.f32 %4260, 1
  %4263 = extractvalue %dx.types.ResRet.f32 %4260, 2
  %4264 = extractvalue %dx.types.ResRet.f32 %4260, 3
  %4265 = call float @dx.op.dot4.f32(i32 56, float %4261, float %4262, float %4263, float %4264, float %48, float %49, float %50, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4266 = or i32 %4202, 32
  %4267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4266, i32 undef)  ; BufferLoad(srv,index,wot)
  %4268 = extractvalue %dx.types.ResRet.f32 %4267, 0
  %4269 = extractvalue %dx.types.ResRet.f32 %4267, 1
  %4270 = extractvalue %dx.types.ResRet.f32 %4267, 2
  %4271 = extractvalue %dx.types.ResRet.f32 %4267, 3
  %4272 = call float @dx.op.dot4.f32(i32 56, float %4268, float %4269, float %4270, float %4271, float %48, float %49, float %50, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4273 = call float @dx.op.unary.f32(i32 27, float %4258)  ; Round_ni(value)
  %4274 = call float @dx.op.unary.f32(i32 6, float %4273)  ; FAbs(value)
  %4275 = call float @dx.op.unary.f32(i32 27, float %4265)  ; Round_ni(value)
  %4276 = call float @dx.op.unary.f32(i32 6, float %4275)  ; FAbs(value)
  %4277 = call float @dx.op.unary.f32(i32 6, float %4272)  ; FAbs(value)
  %4278 = call float @dx.op.unary.f32(i32 27, float %4277)  ; Round_ni(value)
  %4279 = fadd fast float %4276, %4274
  %4280 = fadd fast float %4279, %4278
  %4281 = fcmp fast oeq float %4280, 0.000000e+00
  %4282 = call float @dx.op.dot4.f32(i32 56, float %4254, float %4255, float %4256, float %4257, float %4115, float %4116, float %4117, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4283 = call float @dx.op.dot4.f32(i32 56, float %4261, float %4262, float %4263, float %4264, float %4115, float %4116, float %4117, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4284 = call float @dx.op.dot4.f32(i32 56, float %4254, float %4255, float %4256, float %4257, float %4118, float %4119, float %4120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4285 = call float @dx.op.dot4.f32(i32 56, float %4261, float %4262, float %4263, float %4264, float %4118, float %4119, float %4120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4286 = fsub fast float %4282, %4258
  %4287 = fsub fast float %4284, %4258
  %4288 = fsub fast float %4283, %4265
  %4289 = fsub fast float %4285, %4265
  %4290 = call float @dx.op.dot3.f32(i32 55, float %4205, float %4206, float %4207, float %108, float %109, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 2
  %4293 = fadd fast float %4292, %4290
  %4294 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4295 = extractvalue %dx.types.CBufRet.f32 %4291, 0
  %4296 = fcmp fast ogt float %4294, %4295
  %4297 = and i1 %4281, %4296
  br i1 %4297, label %4324, label %4298

; <label>:4298                                    ; preds = %4655, %4407, %4324, %4171
  %4299 = phi float [ %4173, %4324 ], [ %4410, %4407 ], [ %4410, %4655 ], [ %4173, %4171 ]
  %4300 = phi float [ %4174, %4324 ], [ %4174, %4407 ], [ %4631, %4655 ], [ %4174, %4171 ]
  %4301 = phi float [ %4175, %4324 ], [ %4175, %4407 ], [ %4629, %4655 ], [ %4175, %4171 ]
  %4302 = phi float [ %4176, %4324 ], [ %4176, %4407 ], [ %4607, %4655 ], [ %4176, %4171 ]
  %4303 = phi float [ %4177, %4324 ], [ %4177, %4407 ], [ %4608, %4655 ], [ %4177, %4171 ]
  %4304 = phi float [ %4178, %4324 ], [ %4178, %4407 ], [ %4609, %4655 ], [ %4178, %4171 ]
  %4305 = phi float [ %4179, %4324 ], [ %4179, %4407 ], [ %4534, %4655 ], [ %4179, %4171 ]
  %4306 = phi float [ %4180, %4324 ], [ %4180, %4407 ], [ %4532, %4655 ], [ %4180, %4171 ]
  %4307 = phi float [ %4181, %4324 ], [ %4181, %4407 ], [ %4577, %4655 ], [ %4181, %4171 ]
  %4308 = phi float [ %4182, %4324 ], [ %4182, %4407 ], [ %4578, %4655 ], [ %4182, %4171 ]
  %4309 = phi float [ %4183, %4324 ], [ %4183, %4407 ], [ %4579, %4655 ], [ %4183, %4171 ]
  %4310 = phi float [ %4184, %4324 ], [ %4184, %4407 ], [ %4665, %4655 ], [ %4184, %4171 ]
  %4311 = phi float [ %4185, %4324 ], [ %4185, %4407 ], [ %4666, %4655 ], [ %4185, %4171 ]
  %4312 = phi float [ %4186, %4324 ], [ %4186, %4407 ], [ %4667, %4655 ], [ %4186, %4171 ]
  %4313 = phi float [ %4187, %4324 ], [ %4187, %4407 ], [ %4513, %4655 ], [ %4187, %4171 ]
  %4314 = phi float [ %4188, %4324 ], [ %4188, %4407 ], [ %4514, %4655 ], [ %4188, %4171 ]
  %4315 = phi float [ %4189, %4324 ], [ %4189, %4407 ], [ %4515, %4655 ], [ %4189, %4171 ]
  %4316 = phi float [ %4190, %4324 ], [ %4190, %4407 ], [ %4587, %4655 ], [ %4190, %4171 ]
  %4317 = phi float [ %4191, %4324 ], [ %4191, %4407 ], [ %4584, %4655 ], [ %4191, %4171 ]
  %4318 = phi float [ %4192, %4324 ], [ %4192, %4407 ], [ %4581, %4655 ], [ %4192, %4171 ]
  %4319 = phi float [ %4193, %4324 ], [ %4193, %4407 ], [ %4530, %4655 ], [ %4193, %4171 ]
  %4320 = phi float [ %4194, %4324 ], [ %4194, %4407 ], [ %4525, %4655 ], [ %4194, %4171 ]
  %4321 = phi float [ %4195, %4324 ], [ %4195, %4407 ], [ %4526, %4655 ], [ %4195, %4171 ]
  %4322 = phi float [ %4196, %4324 ], [ %4196, %4407 ], [ %4527, %4655 ], [ %4196, %4171 ]
  %4323 = icmp eq i32 %4200, 0
  br i1 %4323, label %4668, label %4171

; <label>:4324                                    ; preds = %4171
  %4325 = extractvalue %dx.types.ResRet.f32 %4204, 3
  %4326 = extractvalue %dx.types.ResRet.f32 %4223, 3
  %4327 = extractvalue %dx.types.ResRet.f32 %4223, 1
  %4328 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4329 = extractvalue %dx.types.ResRet.f32 %4213, 1
  %4330 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4331 = extractvalue %dx.types.ResRet.i32 %4209, 3
  %4332 = extractvalue %dx.types.ResRet.i32 %4209, 2
  %4333 = bitcast float %4325 to i32
  %4334 = add i32 %4331, 0
  %4335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4334, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4337 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4335, %dx.types.Handle %4336, float %4258, float %4265, float undef, float undef, i32 0, i32 0, i32 undef, float %4286, float %4288, float undef, float %4287, float %4289, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4338 = extractvalue %dx.types.ResRet.f32 %4337, 0
  %4339 = fmul fast float %4338, %4330
  %4340 = fadd fast float %4339, %4329
  %4341 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4342 = fmul fast float %4258, %4218
  %4343 = call float @dx.op.tertiary.f32(i32 46, float %4219, float %4265, float %4342)  ; FMad(a,b,c)
  %4344 = fadd fast float %4343, %4328
  %4345 = fmul fast float %4258, %4220
  %4346 = call float @dx.op.tertiary.f32(i32 46, float %4221, float %4265, float %4345)  ; FMad(a,b,c)
  %4347 = fadd fast float %4346, %4327
  %4348 = fmul fast float %4286, %4218
  %4349 = call float @dx.op.tertiary.f32(i32 46, float %4219, float %4288, float %4348)  ; FMad(a,b,c)
  %4350 = fmul fast float %4286, %4220
  %4351 = call float @dx.op.tertiary.f32(i32 46, float %4221, float %4288, float %4350)  ; FMad(a,b,c)
  %4352 = fmul fast float %4287, %4218
  %4353 = call float @dx.op.tertiary.f32(i32 46, float %4219, float %4289, float %4352)  ; FMad(a,b,c)
  %4354 = fmul fast float %4287, %4220
  %4355 = call float @dx.op.tertiary.f32(i32 46, float %4221, float %4289, float %4354)  ; FMad(a,b,c)
  %4356 = add i32 %4332, 0
  %4357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4356, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4358 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4357, %dx.types.Handle %4336, float %4344, float %4347, float undef, float undef, i32 0, i32 0, i32 undef, float %4349, float %4351, float undef, float %4353, float %4355, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4359 = extractvalue %dx.types.ResRet.f32 %4358, 0
  %4360 = and i32 %4333, 1024
  %4361 = icmp ne i32 %4360, 0
  %4362 = fcmp fast ogt float %4359, 0x3FE0101020000000
  %4363 = uitofp i1 %4362 to float
  %4364 = select i1 %4361, float %4363, float %4359
  %4365 = and i32 %4333, 8192
  %4366 = icmp ne i32 %4365, 0
  %4367 = select i1 %4366, float %4326, float 1.000000e+00
  %4368 = fmul fast float %4258, 2.000000e+00
  %4369 = fadd fast float %4368, -1.000000e+00
  %4370 = call float @dx.op.unary.f32(i32 6, float %4369)  ; FAbs(value)
  %4371 = fmul fast float %4370, %4251
  %4372 = fsub fast float %4371, %4251
  %4373 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4374 = fmul fast float %4265, 2.000000e+00
  %4375 = fadd fast float %4374, -1.000000e+00
  %4376 = call float @dx.op.unary.f32(i32 6, float %4375)  ; FAbs(value)
  %4377 = fmul fast float %4376, %4252
  %4378 = fsub fast float %4377, %4252
  %4379 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4380 = fmul fast float %4277, %4214
  %4381 = fsub fast float %4380, %4214
  %4382 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4383 = fmul fast float %4341, %4367
  %4384 = fmul fast float %4383, %4338
  %4385 = fmul fast float %4384, %4373
  %4386 = fmul fast float %4385, %4364
  %4387 = fmul fast float %4386, %4379
  %4388 = fmul fast float %4387, %4382
  %4389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4390 = extractvalue %dx.types.CBufRet.f32 %4389, 1
  %4391 = extractvalue %dx.types.CBufRet.f32 %4389, 0
  %4392 = fsub fast float %4294, %4391
  %4393 = fmul fast float %4392, %4390
  %4394 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4395 = fmul fast float %4388, %4215
  %4396 = fadd fast float %4388, %4215
  %4397 = fmul fast float %4396, %4224
  %4398 = fsub fast float %4397, %4224
  %4399 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4400 = and i32 %4333, 128
  %4401 = icmp ne i32 %4400, 0
  %4402 = select i1 %4401, float %4399, float %4395
  %4403 = fmul fast float %4402, %4394
  %4404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4405 = extractvalue %dx.types.CBufRet.f32 %4404, 0
  %4406 = fcmp fast ugt float %4403, %4405
  br i1 %4406, label %4407, label %4298

; <label>:4407                                    ; preds = %4324
  %4408 = select i1 %4366, float %4403, float 0.000000e+00
  %4409 = fadd fast float %4408, %4173
  %4410 = call float @dx.op.unary.f32(i32 7, float %4409)  ; Saturate(value)
  br i1 %4366, label %4298, label %4411

; <label>:4411                                    ; preds = %4407
  %4412 = and i32 %4333, 4
  %4413 = and i32 %4333, 8
  %4414 = add i32 %4210, 0
  %4415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4414, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4417 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4415, %dx.types.Handle %4416, float %4344, float %4347, float undef, float undef, i32 0, i32 0, i32 undef, float %4349, float %4351, float undef, float %4353, float %4355, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4418 = extractvalue %dx.types.ResRet.f32 %4417, 0
  %4419 = extractvalue %dx.types.ResRet.f32 %4417, 1
  %4420 = extractvalue %dx.types.ResRet.f32 %4417, 2
  %4421 = extractvalue %dx.types.ResRet.f32 %4417, 3
  %4422 = bitcast float %4236 to i32
  %4423 = and i32 %4422, 255
  %4424 = uitofp i32 %4423 to float
  %4425 = lshr i32 %4422, 8
  %4426 = and i32 %4425, 255
  %4427 = uitofp i32 %4426 to float
  %4428 = fmul fast float %4421, %4424
  %4429 = fadd fast float %4428, %4427
  %4430 = fmul fast float %4429, 0x3F70101000000000
  %4431 = add i32 %4211, 0
  %4432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4431, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4433 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4432, %dx.types.Handle %4416, float %4344, float %4347, float undef, float undef, i32 0, i32 0, i32 undef, float %4349, float %4351, float undef, float %4353, float %4355, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4434 = extractvalue %dx.types.ResRet.f32 %4433, 0
  %4435 = extractvalue %dx.types.ResRet.f32 %4433, 1
  %4436 = extractvalue %dx.types.ResRet.f32 %4433, 2
  %4437 = extractvalue %dx.types.ResRet.f32 %4433, 3
  %4438 = bitcast float %4230 to i32
  %4439 = and i32 %4438, 255
  %4440 = uitofp i32 %4439 to float
  %4441 = lshr i32 %4438, 8
  %4442 = and i32 %4441, 255
  %4443 = uitofp i32 %4442 to float
  %4444 = lshr i32 %4438, 16
  %4445 = and i32 %4444, 255
  %4446 = uitofp i32 %4445 to float
  %4447 = fmul fast float %4446, 0x3F70101000000000
  %4448 = fmul fast float %4434, %4440
  %4449 = fadd fast float %4448, %4443
  %4450 = fmul fast float %4449, 0x3F70101000000000
  %4451 = fadd fast float %4435, -5.000000e-01
  %4452 = fadd fast float %4437, -5.000000e-01
  %4453 = fmul fast float %4451, %4447
  %4454 = fmul fast float %4452, %4447
  %4455 = fadd fast float %4453, 5.000000e-01
  %4456 = fadd fast float %4454, 5.000000e-01
  %4457 = fmul fast float %4418, %4239
  %4458 = fmul fast float %4419, %4240
  %4459 = fmul fast float %4420, %4241
  %4460 = fmul fast float %4455, 2.000000e+00
  %4461 = fadd fast float %4460, -1.000000e+00
  %4462 = fmul fast float %4456, 2.000000e+00
  %4463 = fadd fast float %4462, -1.000000e+00
  %4464 = fadd fast float %4461, %4463
  %4465 = fmul fast float %4464, 5.000000e-01
  %4466 = fsub fast float %4461, %4463
  %4467 = fmul fast float %4466, 5.000000e-01
  %4468 = call float @dx.op.unary.f32(i32 6, float %4465)  ; FAbs(value)
  %4469 = fsub fast float 1.000000e+00, %4468
  %4470 = call float @dx.op.unary.f32(i32 6, float %4467)  ; FAbs(value)
  %4471 = fsub fast float %4469, %4470
  %4472 = call float @dx.op.dot3.f32(i32 55, float %4465, float %4467, float %4471, float %4465, float %4467, float %4471)  ; Dot3(ax,ay,az,bx,by,bz)
  %4473 = call float @dx.op.unary.f32(i32 25, float %4472)  ; Rsqrt(value)
  %4474 = fmul fast float %4465, %4473
  %4475 = fmul fast float %4467, %4473
  %4476 = fmul fast float %4473, %4471
  %4477 = fmul fast float %4476, %4205
  %4478 = fmul fast float %4476, %4206
  %4479 = fmul fast float %4476, %4207
  %4480 = fmul fast float %4474, %4227
  %4481 = fmul fast float %4474, %4228
  %4482 = fmul fast float %4474, %4229
  %4483 = fadd fast float %4480, %4477
  %4484 = fadd fast float %4481, %4478
  %4485 = fadd fast float %4482, %4479
  %4486 = fmul fast float %4475, %4233
  %4487 = fmul fast float %4475, %4234
  %4488 = fmul fast float %4475, %4235
  %4489 = fadd fast float %4483, %4486
  %4490 = fadd fast float %4484, %4487
  %4491 = fadd fast float %4485, %4488
  %4492 = call float @dx.op.dot3.f32(i32 55, float %4489, float %4490, float %4491, float %4489, float %4490, float %4491)  ; Dot3(ax,ay,az,bx,by,bz)
  %4493 = call float @dx.op.unary.f32(i32 25, float %4492)  ; Rsqrt(value)
  %4494 = fmul fast float %4489, %4493
  %4495 = fmul fast float %4490, %4493
  %4496 = fmul fast float %4491, %4493
  %4497 = icmp ne i32 %4413, 0
  %4498 = select i1 %4497, float 1.000000e+00, float 0.000000e+00
  %4499 = fmul fast float %4403, %4498
  %4500 = and i32 %4333, 1
  %4501 = icmp eq i32 %4500, 0
  br i1 %4501, label %4502, label %4506

; <label>:4502                                    ; preds = %4411
  %4503 = fsub fast float %4494, %4187
  %4504 = fsub fast float %4495, %4188
  %4505 = fsub fast float %4496, %4189
  br label %4506

; <label>:4506                                    ; preds = %4502, %4411
  %4507 = phi float [ %4503, %4502 ], [ %4494, %4411 ]
  %4508 = phi float [ %4504, %4502 ], [ %4495, %4411 ]
  %4509 = phi float [ %4505, %4502 ], [ %4496, %4411 ]
  %4510 = fmul float %4509, %4499
  %4511 = fmul float %4508, %4499
  %4512 = fmul float %4507, %4499
  %4513 = fadd fast float %4512, %4187
  %4514 = fadd fast float %4511, %4188
  %4515 = fadd fast float %4510, %4189
  %4516 = icmp ne i32 %4412, 0
  %4517 = select i1 %4516, float 1.000000e+00, float 0.000000e+00
  %4518 = fmul fast float %4403, %4517
  %4519 = fsub fast float %4457, %4194
  %4520 = fsub fast float %4458, %4195
  %4521 = fsub fast float %4459, %4196
  %4522 = fmul fast float %4519, %4518
  %4523 = fmul fast float %4520, %4518
  %4524 = fmul fast float %4521, %4518
  %4525 = fadd fast float %4522, %4194
  %4526 = fadd fast float %4523, %4195
  %4527 = fadd fast float %4524, %4196
  %4528 = fsub fast float %4430, %4193
  %4529 = fmul fast float %4528, %4518
  %4530 = fadd fast float %4529, %4193
  %4531 = fmul fast float %4518, %4180
  %4532 = fsub fast float %4180, %4531
  %4533 = fmul fast float %4518, %4179
  %4534 = fsub fast float %4179, %4533
  %4535 = bitcast float %4248 to i32
  %4536 = lshr i32 %4535, 16
  %4537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4536)  ; LegacyF16ToF32(value)
  %4538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %4539 = extractvalue %dx.types.ResRet.i32 %4538, 0
  %4540 = and i32 %4539, 1
  %4541 = icmp eq i32 %4540, 0
  br i1 %4541, label %4542, label %4567

; <label>:4542                                    ; preds = %4506
  %4543 = fadd fast float %4430, 0xBFB99999A0000000
  %4544 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4545 = fmul fast float %4544, 0x3FF1C71C80000000
  %4546 = fsub fast float 1.000000e+00, %4545
  %4547 = call float @dx.op.unary.f32(i32 7, float %4546)  ; Saturate(value)
  %4548 = fmul fast float %4547, %4457
  %4549 = fmul fast float %4547, %4458
  %4550 = fmul fast float %4547, %4459
  %4551 = call float @dx.op.unary.f32(i32 7, float %4548)  ; Saturate(value)
  %4552 = call float @dx.op.unary.f32(i32 7, float %4549)  ; Saturate(value)
  %4553 = call float @dx.op.unary.f32(i32 7, float %4550)  ; Saturate(value)
  %4554 = call float @dx.op.binary.f32(i32 35, float %4552, float %4553)  ; FMax(a,b)
  %4555 = call float @dx.op.binary.f32(i32 35, float %4551, float %4554)  ; FMax(a,b)
  %4556 = fcmp fast ogt float %4555, 0.000000e+00
  %4557 = bitcast float %4555 to i32
  %4558 = sub nsw i32 2129859010, %4557
  %4559 = bitcast i32 %4558 to float
  %4560 = select i1 %4556, float %4559, float 0.000000e+00
  %4561 = fmul fast float %4551, %4537
  %4562 = fmul fast float %4552, %4537
  %4563 = fmul fast float %4553, %4537
  %4564 = fmul fast float %4561, %4560
  %4565 = fmul fast float %4562, %4560
  %4566 = fmul fast float %4563, %4560
  br label %4567

; <label>:4567                                    ; preds = %4542, %4506
  %4568 = phi float [ %4537, %4506 ], [ %4564, %4542 ]
  %4569 = phi float [ %4537, %4506 ], [ %4565, %4542 ]
  %4570 = phi float [ %4537, %4506 ], [ %4566, %4542 ]
  %4571 = fsub fast float %4568, %4181
  %4572 = fsub fast float %4569, %4182
  %4573 = fsub fast float %4570, %4183
  %4574 = fmul fast float %4571, %4518
  %4575 = fmul fast float %4572, %4518
  %4576 = fmul fast float %4573, %4518
  %4577 = fadd fast float %4574, %4181
  %4578 = fadd fast float %4575, %4182
  %4579 = fadd fast float %4576, %4183
  %4580 = fadd fast float %4403, %4192
  %4581 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4582 = fsub fast float %4450, %4191
  %4583 = fmul fast float %4582, %4499
  %4584 = fadd fast float %4583, %4191
  %4585 = fsub fast float %4436, %4190
  %4586 = fmul fast float %4585, %4499
  %4587 = fadd fast float %4586, %4190
  br i1 %4501, label %4596, label %4588

; <label>:4588                                    ; preds = %4567
  %4589 = and i32 %4333, 32768
  %4590 = icmp eq i32 %4589, 0
  br i1 %4590, label %4606, label %4591

; <label>:4591                                    ; preds = %4588
  %4592 = fmul fast float %4499, 1.270000e+02
  %4593 = fadd fast float %4592, %4176
  %4594 = fadd fast float %4592, %4177
  %4595 = fadd fast float %4592, %4178
  br label %4606

; <label>:4596                                    ; preds = %4567
  %4597 = fsub fast float 1.270000e+02, %4176
  %4598 = fsub fast float 1.270000e+02, %4177
  %4599 = fsub fast float 1.270000e+02, %4178
  %4600 = fmul fast float %4499, %4597
  %4601 = fmul fast float %4499, %4598
  %4602 = fmul fast float %4499, %4599
  %4603 = fadd fast float %4600, %4176
  %4604 = fadd fast float %4601, %4177
  %4605 = fadd fast float %4602, %4178
  br label %4606

; <label>:4606                                    ; preds = %4596, %4591, %4588
  %4607 = phi float [ %4593, %4591 ], [ %4176, %4588 ], [ %4603, %4596 ]
  %4608 = phi float [ %4594, %4591 ], [ %4177, %4588 ], [ %4604, %4596 ]
  %4609 = phi float [ %4595, %4591 ], [ %4178, %4588 ], [ %4605, %4596 ]
  %4610 = call float @dx.op.dot3.f32(i32 55, float %4457, float %4458, float %4459, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4612 = extractvalue %dx.types.CBufRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.CBufRet.f32 %4611, 1
  %4614 = fmul fast float %4613, %4610
  %4615 = fadd fast float %4614, %4612
  %4616 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4617 = bitcast float %4242 to i32
  %4618 = and i32 %4617, 65535
  %4619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4618)  ; LegacyF16ToF32(value)
  %4620 = lshr i32 %4617, 16
  %4621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4620)  ; LegacyF16ToF32(value)
  %4622 = fcmp fast oge float %4619, 0.000000e+00
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 0
  %4625 = select i1 %4622, float %4619, float %4624
  %4626 = fadd fast float %4625, %4621
  %4627 = fsub fast float %4616, %4175
  %4628 = fmul fast float %4627, %4403
  %4629 = fadd fast float %4628, %4175
  %4630 = fmul fast float %4626, %4403
  %4631 = call float @dx.op.binary.f32(i32 35, float %4174, float %4630)  ; FMax(a,b)
  %4632 = and i32 %4333, 16
  %4633 = icmp eq i32 %4632, 0
  br i1 %4633, label %4655, label %4634

; <label>:4634                                    ; preds = %4606
  %4635 = add i32 %4245, 0
  %4636 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4635, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4637 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4636, %dx.types.Handle %4416, float %4344, float %4347, float undef, float undef, i32 0, i32 0, i32 undef, float %4349, float %4351, float undef, float %4353, float %4355, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4638 = extractvalue %dx.types.ResRet.f32 %4637, 0
  %4639 = extractvalue %dx.types.ResRet.f32 %4637, 1
  %4640 = extractvalue %dx.types.ResRet.f32 %4637, 2
  %4641 = and i32 %4535, 65535
  %4642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4641)  ; LegacyF16ToF32(value)
  %4643 = fmul fast float %4638, %4239
  %4644 = fmul fast float %4639, %4240
  %4645 = fmul fast float %4640, %4241
  %4646 = and i32 %4333, 16384
  %4647 = icmp ne i32 %4646, 0
  %4648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4648, 0
  %4650 = select i1 %4647, float %4649, float 1.000000e+00
  %4651 = fmul fast float %4650, %4642
  %4652 = fmul fast float %4643, %4651
  %4653 = fmul fast float %4644, %4651
  %4654 = fmul fast float %4645, %4651
  br label %4655

; <label>:4655                                    ; preds = %4634, %4606
  %4656 = phi float [ %4652, %4634 ], [ 0.000000e+00, %4606 ]
  %4657 = phi float [ %4653, %4634 ], [ 0.000000e+00, %4606 ]
  %4658 = phi float [ %4654, %4634 ], [ 0.000000e+00, %4606 ]
  %4659 = fsub fast float %4656, %4184
  %4660 = fsub fast float %4657, %4185
  %4661 = fsub fast float %4658, %4186
  %4662 = fmul fast float %4659, %4403
  %4663 = fmul fast float %4660, %4403
  %4664 = fmul fast float %4661, %4403
  %4665 = fadd fast float %4662, %4184
  %4666 = fadd fast float %4663, %4185
  %4667 = fadd fast float %4664, %4186
  br label %4298

; <label>:4668                                    ; preds = %4298
  br label %4669

; <label>:4669                                    ; preds = %4668, %4108
  %4670 = phi float [ 0.000000e+00, %4108 ], [ %4299, %4668 ]
  %4671 = phi float [ %4052, %4108 ], [ %4300, %4668 ]
  %4672 = phi float [ %4031, %4108 ], [ %4301, %4668 ]
  %4673 = phi float [ %4021, %4108 ], [ %4302, %4668 ]
  %4674 = phi float [ %4022, %4108 ], [ %4303, %4668 ]
  %4675 = phi float [ %4023, %4108 ], [ %4304, %4668 ]
  %4676 = phi float [ 0.000000e+00, %4108 ], [ %4305, %4668 ]
  %4677 = phi float [ 0.000000e+00, %4108 ], [ %4306, %4668 ]
  %4678 = phi float [ %4024, %4108 ], [ %4307, %4668 ]
  %4679 = phi float [ %4025, %4108 ], [ %4308, %4668 ]
  %4680 = phi float [ %4026, %4108 ], [ %4309, %4668 ]
  %4681 = phi float [ %4074, %4108 ], [ %4310, %4668 ]
  %4682 = phi float [ %4076, %4108 ], [ %4311, %4668 ]
  %4683 = phi float [ %4078, %4108 ], [ %4312, %4668 ]
  %4684 = phi float [ %4104, %4108 ], [ %4313, %4668 ]
  %4685 = phi float [ %4105, %4108 ], [ %4314, %4668 ]
  %4686 = phi float [ %4106, %4108 ], [ %4315, %4668 ]
  %4687 = phi float [ %4029, %4108 ], [ %4316, %4668 ]
  %4688 = phi float [ %4028, %4108 ], [ %4317, %4668 ]
  %4689 = phi float [ 0.000000e+00, %4108 ], [ %4318, %4668 ]
  %4690 = phi float [ %4027, %4108 ], [ %4319, %4668 ]
  %4691 = phi float [ %4059, %4108 ], [ %4320, %4668 ]
  %4692 = phi float [ %4060, %4108 ], [ %4321, %4668 ]
  %4693 = phi float [ %4061, %4108 ], [ %4322, %4668 ]
  %4694 = call float @dx.op.dot3.f32(i32 55, float %4684, float %4685, float %4686, float %4684, float %4685, float %4686)  ; Dot3(ax,ay,az,bx,by,bz)
  %4695 = call float @dx.op.unary.f32(i32 25, float %4694)  ; Rsqrt(value)
  %4696 = fmul fast float %4695, %4684
  %4697 = fmul fast float %4695, %4685
  %4698 = fmul fast float %4695, %4686
  %4699 = fadd fast float %4689, %1201
  %4700 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4701 = call float @dx.op.dot3.f32(i32 55, float %4696, float %4697, float %4698, float %4696, float %4697, float %4698)  ; Dot3(ax,ay,az,bx,by,bz)
  %4702 = call float @dx.op.unary.f32(i32 25, float %4701)  ; Rsqrt(value)
  %4703 = fmul fast float %4702, %4696
  %4704 = fmul fast float %4702, %4697
  %4705 = fmul fast float %4702, %4698
  br label %4706

; <label>:4706                                    ; preds = %4669, %4012
  %4707 = phi float [ %4703, %4669 ], [ %4104, %4012 ]
  %4708 = phi float [ %4704, %4669 ], [ %4105, %4012 ]
  %4709 = phi float [ %4705, %4669 ], [ %4106, %4012 ]
  %4710 = phi float [ %4691, %4669 ], [ %4059, %4012 ]
  %4711 = phi float [ %4692, %4669 ], [ %4060, %4012 ]
  %4712 = phi float [ %4693, %4669 ], [ %4061, %4012 ]
  %4713 = phi float [ %4681, %4669 ], [ %4074, %4012 ]
  %4714 = phi float [ %4682, %4669 ], [ %4076, %4012 ]
  %4715 = phi float [ %4683, %4669 ], [ %4078, %4012 ]
  %4716 = phi float [ %4678, %4669 ], [ %4024, %4012 ]
  %4717 = phi float [ %4679, %4669 ], [ %4025, %4012 ]
  %4718 = phi float [ %4680, %4669 ], [ %4026, %4012 ]
  %4719 = phi float [ %4673, %4669 ], [ %4021, %4012 ]
  %4720 = phi float [ %4674, %4669 ], [ %4022, %4012 ]
  %4721 = phi float [ %4675, %4669 ], [ %4023, %4012 ]
  %4722 = phi float [ %4690, %4669 ], [ %4027, %4012 ]
  %4723 = phi float [ %4700, %4669 ], [ %1201, %4012 ]
  %4724 = phi float [ %4688, %4669 ], [ %4028, %4012 ]
  %4725 = phi float [ %4687, %4669 ], [ %4029, %4012 ]
  %4726 = phi float [ %4677, %4669 ], [ 0.000000e+00, %4012 ]
  %4727 = phi float [ %4676, %4669 ], [ 0.000000e+00, %4012 ]
  %4728 = phi float [ %4670, %4669 ], [ 0.000000e+00, %4012 ]
  %4729 = phi float [ %4671, %4669 ], [ %4052, %4012 ]
  %4730 = phi float [ %4672, %4669 ], [ %4031, %4012 ]
  %4731 = add i32 %45, 392
  %4732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %4731, i32 undef)  ; BufferLoad(srv,index,wot)
  %4733 = extractvalue %dx.types.ResRet.i32 %4732, 0
  %4734 = extractvalue %dx.types.ResRet.i32 %4732, 1
  %4735 = extractvalue %dx.types.ResRet.i32 %4732, 2
  %4736 = extractvalue %dx.types.ResRet.i32 %4732, 3
  %4737 = bitcast i32 %4733 to float
  %4738 = bitcast i32 %4734 to float
  %4739 = bitcast i32 %4735 to float
  %4740 = bitcast i32 %4736 to float
  %4741 = fsub fast float %4710, %4737
  %4742 = fsub fast float %4711, %4738
  %4743 = fsub fast float %4712, %4739
  %4744 = fmul fast float %4741, %227
  %4745 = fmul fast float %4742, %227
  %4746 = fmul fast float %4743, %227
  %4747 = fadd fast float %4744, %4737
  %4748 = fadd fast float %4745, %4738
  %4749 = fadd fast float %4746, %4739
  %4750 = fsub fast float %4723, %4740
  %4751 = fmul fast float %4750, %227
  %4752 = fadd fast float %4751, %4740
  %4753 = fadd fast float %4722, 0xBFB99999A0000000
  %4754 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4755 = fmul fast float %4754, 0x3FF1C71C80000000
  %4756 = call float @dx.op.binary.f32(i32 36, float %4722, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4757 = fsub fast float 1.000000e+00, %4755
  %4758 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4759 = fmul fast float %4747, %4758
  %4760 = fmul fast float %4748, %4758
  %4761 = fmul fast float %4749, %4758
  %4762 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4763 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4764 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4765 = fmul fast float %4747, %4755
  %4766 = fmul fast float %4748, %4755
  %4767 = fmul fast float %4749, %4755
  %4768 = fadd fast float %4765, %4756
  %4769 = fadd fast float %4766, %4756
  %4770 = fadd fast float %4767, %4756
  %4771 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4772 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4773 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4774 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %4776 = extractvalue %dx.types.ResRet.i32 %4775, 0
  %4777 = and i32 %4776, 1
  %4778 = icmp eq i32 %4777, 0
  br i1 %4778, label %4793, label %4779

; <label>:4779                                    ; preds = %4706
  %4780 = call float @dx.op.binary.f32(i32 35, float %4763, float %4764)  ; FMax(a,b)
  %4781 = call float @dx.op.binary.f32(i32 35, float %4762, float %4780)  ; FMax(a,b)
  %4782 = fcmp fast ogt float %4781, 0.000000e+00
  %4783 = bitcast float %4781 to i32
  %4784 = sub nsw i32 2129859010, %4783
  %4785 = bitcast i32 %4784 to float
  %4786 = select i1 %4782, float %4785, float 0.000000e+00
  %4787 = fmul fast float %4762, %4716
  %4788 = fmul fast float %4763, %4717
  %4789 = fmul fast float %4764, %4718
  %4790 = fmul fast float %4787, %4786
  %4791 = fmul fast float %4788, %4786
  %4792 = fmul fast float %4789, %4786
  br label %4793

; <label>:4793                                    ; preds = %4779, %4706
  %4794 = phi float [ %4790, %4779 ], [ %4716, %4706 ]
  %4795 = phi float [ %4791, %4779 ], [ %4717, %4706 ]
  %4796 = phi float [ %4792, %4779 ], [ %4718, %4706 ]
  %4797 = call float @dx.op.binary.f32(i32 36, float %4719, float 1.270000e+02)  ; FMin(a,b)
  %4798 = call float @dx.op.binary.f32(i32 36, float %4720, float 1.270000e+02)  ; FMin(a,b)
  %4799 = call float @dx.op.binary.f32(i32 36, float %4721, float 1.270000e+02)  ; FMin(a,b)
  %4800 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.i32 %4800, 3
  %4802 = and i32 %4801, 8
  %4803 = icmp ne i32 %4802, 0
  %4804 = call float @dx.op.binary.f32(i32 35, float %4762, float %4747)  ; FMax(a,b)
  %4805 = call float @dx.op.binary.f32(i32 35, float %4763, float %4747)  ; FMax(a,b)
  %4806 = call float @dx.op.binary.f32(i32 35, float %4764, float %4747)  ; FMax(a,b)
  %4807 = call float @dx.op.dot3.f32(i32 55, float %4762, float %4763, float %4764, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4808 = select i1 %286, float %4747, float %4762
  %4809 = select i1 %286, float %4807, float %4763
  %4810 = select i1 %286, float 1.000000e+00, float %4764
  %4811 = select i1 %4803, float %4804, float %4808
  %4812 = select i1 %4803, float %4805, float %4809
  %4813 = select i1 %4803, float %4806, float %4810
  %4814 = call float @dx.op.dot3.f32(i32 55, float %4794, float %4795, float %4796, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4815 = select i1 %286, float %4814, float %4794
  %4816 = select i1 %286, float %4814, float %4795
  %4817 = select i1 %286, float %4814, float %4796
  %4818 = and i32 %262, 3
  %4819 = select i1 %256, i32 %4818, i32 0
  %4820 = icmp eq i32 %4819, 1
  br i1 %4820, label %4821, label %4897

; <label>:4821                                    ; preds = %4793
  %4822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.f32 %4822, 0
  %4824 = extractvalue %dx.types.CBufRet.f32 %4822, 1
  %4825 = fadd fast float %4823, %180
  %4826 = fadd fast float %4824, %181
  %4827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4828 = extractvalue %dx.types.CBufRet.f32 %4827, 0
  %4829 = extractvalue %dx.types.CBufRet.f32 %4827, 1
  %4830 = fsub fast float %4825, %4828
  %4831 = fsub fast float %4826, %4829
  %4832 = fmul fast float %4830, %4830
  %4833 = fmul fast float %4831, %4831
  %4834 = fadd fast float %4832, %4833
  %4835 = call float @dx.op.unary.f32(i32 24, float %4834)  ; Sqrt(value)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4827, 2
  %4837 = fcmp fast olt float %4835, %4836
  br i1 %4837, label %4838, label %4891

; <label>:4838                                    ; preds = %4821
  %4839 = extractvalue %dx.types.CBufRet.f32 %4822, 2
  %4840 = fadd fast float %4839, %182
  %4841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.f32 %4841, 0
  %4843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4844 = extractvalue %dx.types.CBufRet.f32 %4843, 0
  %4845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4846 = extractvalue %dx.types.CBufRet.f32 %4845, 0
  %4847 = extractvalue %dx.types.CBufRet.f32 %4841, 1
  %4848 = extractvalue %dx.types.CBufRet.f32 %4843, 1
  %4849 = extractvalue %dx.types.CBufRet.f32 %4845, 1
  %4850 = extractvalue %dx.types.CBufRet.f32 %4841, 3
  %4851 = extractvalue %dx.types.CBufRet.f32 %4843, 3
  %4852 = extractvalue %dx.types.CBufRet.f32 %4845, 3
  %4853 = fadd fast float %4850, %4825
  %4854 = fadd fast float %4851, %4826
  %4855 = fadd fast float %4840, %4852
  %4856 = fmul fast float %4853, %4842
  %4857 = call float @dx.op.tertiary.f32(i32 46, float %4854, float %4844, float %4856)  ; FMad(a,b,c)
  %4858 = call float @dx.op.tertiary.f32(i32 46, float %4855, float %4846, float %4857)  ; FMad(a,b,c)
  %4859 = fmul fast float %4853, %4847
  %4860 = call float @dx.op.tertiary.f32(i32 46, float %4854, float %4848, float %4859)  ; FMad(a,b,c)
  %4861 = call float @dx.op.tertiary.f32(i32 46, float %4855, float %4849, float %4860)  ; FMad(a,b,c)
  %4862 = fsub fast float %4858, %4850
  %4863 = fsub fast float %4861, %4851
  %4864 = fsub fast float %4862, %4828
  %4865 = fadd fast float %4864, %4836
  %4866 = fsub fast float %4863, %4829
  %4867 = fadd fast float %4866, %4836
  %4868 = extractvalue %dx.types.CBufRet.f32 %4827, 3
  %4869 = fmul fast float %4865, %4868
  %4870 = fmul fast float %4867, %4868
  %4871 = call float @dx.op.unary.f32(i32 7, float %4869)  ; Saturate(value)
  %4872 = call float @dx.op.unary.f32(i32 7, float %4870)  ; Saturate(value)
  %4873 = fsub fast float 1.000000e+00, %4871
  %4874 = fsub fast float 1.000000e+00, %4872
  %4875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %39, float %4873, float %4874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4876 = extractvalue %dx.types.ResRet.f32 %4875, 0
  %4877 = fcmp fast ugt float %4876, 0.000000e+00
  br i1 %4877, label %4878, label %4891

; <label>:4878                                    ; preds = %4838
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 2
  %4881 = fmul fast float %4880, %4876
  %4882 = extractvalue %dx.types.CBufRet.f32 %4879, 3
  %4883 = fadd fast float %4882, %4881
  %4884 = extractvalue %dx.types.CBufRet.f32 %4845, 2
  %4885 = fadd fast float %4883, %4852
  %4886 = fmul fast float %4858, %4846
  %4887 = call float @dx.op.tertiary.f32(i32 46, float %4861, float %4849, float %4886)  ; FMad(a,b,c)
  %4888 = call float @dx.op.tertiary.f32(i32 46, float %4885, float %4884, float %4887)  ; FMad(a,b,c)
  %4889 = fsub fast float %4888, %4852
  %4890 = fsub fast float %4889, %4839
  br label %4891

; <label>:4891                                    ; preds = %4878, %4838, %4821
  %4892 = phi i1 [ true, %4878 ], [ false, %4838 ], [ false, %4821 ]
  %4893 = phi float [ %4890, %4878 ], [ -1.310720e+05, %4838 ], [ -1.310720e+05, %4821 ]
  %4894 = fsub fast float %4893, %182
  %4895 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4896 = select i1 %4892, float %4895, float 1.000000e+00
  br label %4897

; <label>:4897                                    ; preds = %4891, %4793
  %4898 = phi float [ %4896, %4891 ], [ 0.000000e+00, %4793 ]
  %4899 = icmp eq i32 %4819, 3
  %4900 = select i1 %4899, float 1.000000e+00, float %4898
  %4901 = call float @dx.op.binary.f32(i32 35, float %4728, float %4900)  ; FMax(a,b)
  %4902 = fcmp fast olt float %4900, 1.000000e+00
  %4903 = fcmp uge float %61, 0.000000e+00
  %4904 = and i1 %4903, %4902
  br i1 %4904, label %4905, label %4915

; <label>:4905                                    ; preds = %4897
  %4906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %37, float %61, float %62, float %63, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4907 = extractvalue %dx.types.ResRet.f32 %4906, 0
  %4908 = extractvalue %dx.types.ResRet.f32 %4906, 1
  %4909 = extractvalue %dx.types.ResRet.f32 %4906, 2
  %4910 = fadd fast float %4907, %4901
  %4911 = fcmp ule float %60, 0.000000e+00
  %4912 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4913 = select i1 %4911, float %4912, float 1.000000e+00
  %4914 = fmul fast float %4913, %4909
  br label %4915

; <label>:4915                                    ; preds = %4905, %4897
  %4916 = phi float [ %4910, %4905 ], [ %4901, %4897 ]
  %4917 = phi float [ %4908, %4905 ], [ 0.000000e+00, %4897 ]
  %4918 = phi float [ %4914, %4905 ], [ 0.000000e+00, %4897 ]
  %4919 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4920 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4921 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4922 = fcmp fast une float %4920, 0.000000e+00
  %4923 = fcmp fast une float %4921, 0.000000e+00
  %4924 = or i1 %4922, %4923
  br i1 %4924, label %4925, label %5500

; <label>:4925                                    ; preds = %4915
  br i1 %4922, label %4926, label %5199

; <label>:4926                                    ; preds = %4925
  %4927 = call float @dx.op.unary.f32(i32 23, float %4725)  ; Log(value)
  %4928 = fmul fast float %4927, 4.000000e+00
  %4929 = call float @dx.op.unary.f32(i32 21, float %4928)  ; Exp(value)
  %4930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.f32 %4930, 0
  %4932 = fmul fast float %4931, %48
  %4933 = fmul fast float %4931, %49
  %4934 = fmul fast float %4931, %50
  %4935 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %4936 = call float @dx.op.unary.f32(i32 6, float %58)  ; FAbs(value)
  %4937 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %4938 = call float @dx.op.unary.f32(i32 23, float %4935)  ; Log(value)
  %4939 = call float @dx.op.unary.f32(i32 23, float %4936)  ; Log(value)
  %4940 = call float @dx.op.unary.f32(i32 23, float %4937)  ; Log(value)
  %4941 = fmul fast float %4938, 4.000000e+00
  %4942 = fmul fast float %4939, 4.000000e+00
  %4943 = fmul fast float %4940, 4.000000e+00
  %4944 = call float @dx.op.unary.f32(i32 21, float %4941)  ; Exp(value)
  %4945 = call float @dx.op.unary.f32(i32 21, float %4942)  ; Exp(value)
  %4946 = call float @dx.op.unary.f32(i32 21, float %4943)  ; Exp(value)
  %4947 = fadd fast float %4945, %4944
  %4948 = fadd fast float %4947, %4946
  %4949 = fdiv fast float 1.000000e+00, %4948
  %4950 = fmul fast float %4949, %4944
  %4951 = fcmp fast ogt float %57, 0.000000e+00
  %4952 = fcmp fast ogt float %58, 0.000000e+00
  %4953 = fcmp fast ogt float %59, 0.000000e+00
  %4954 = fcmp fast olt float %57, 0.000000e+00
  %4955 = fcmp fast olt float %58, 0.000000e+00
  %4956 = fcmp fast olt float %59, 0.000000e+00
  %4957 = zext i1 %4951 to i32
  %4958 = zext i1 %4952 to i32
  %4959 = zext i1 %4953 to i32
  %4960 = zext i1 %4954 to i32
  %4961 = zext i1 %4955 to i32
  %4962 = zext i1 %4956 to i32
  %4963 = sub nsw i32 %4957, %4960
  %4964 = sub nsw i32 %4958, %4961
  %4965 = sub nsw i32 %4959, %4962
  %4966 = call float @dx.op.unary.f32(i32 83, float %4932)  ; DerivCoarseX(value)
  %4967 = call float @dx.op.unary.f32(i32 83, float %4933)  ; DerivCoarseX(value)
  %4968 = call float @dx.op.unary.f32(i32 83, float %4934)  ; DerivCoarseX(value)
  %4969 = call float @dx.op.unary.f32(i32 84, float %4932)  ; DerivCoarseY(value)
  %4970 = call float @dx.op.unary.f32(i32 84, float %4933)  ; DerivCoarseY(value)
  %4971 = call float @dx.op.unary.f32(i32 84, float %4934)  ; DerivCoarseY(value)
  %4972 = fcmp fast ole float %299, %4950
  %4973 = fmul fast float %4949, %4947
  %4974 = fcmp fast ole float %299, %4973
  %4975 = select i1 %4974, float %4934, float %4932
  %4976 = select i1 %4974, float %4932, float %4933
  %4977 = select i1 %4972, float %4933, float %4975
  %4978 = select i1 %4972, float %4934, float %4976
  %4979 = select i1 %4974, float %4968, float %4966
  %4980 = select i1 %4974, float %4966, float %4967
  %4981 = select i1 %4972, float %4967, float %4979
  %4982 = select i1 %4972, float %4968, float %4980
  %4983 = select i1 %4974, float %4971, float %4969
  %4984 = select i1 %4974, float %4969, float %4970
  %4985 = select i1 %4972, float %4970, float %4983
  %4986 = select i1 %4972, float %4971, float %4984
  %4987 = call float @dx.op.unary.f32(i32 27, float %4977)  ; Round_ni(value)
  %4988 = call float @dx.op.unary.f32(i32 27, float %4978)  ; Round_ni(value)
  %4989 = fptosi float %4987 to i32
  %4990 = fptosi float %4988 to i32
  %4991 = xor i32 %4990, %4989
  %4992 = sitofp i32 %4991 to float
  %4993 = fptosi float %4992 to i32
  %4994 = sitofp i32 %4993 to float
  %4995 = fmul fast float %4994, 0x3FE3C6EF40000000
  %4996 = frem fast float %4987, 2.560000e+02
  %4997 = frem fast float %4988, 2.560000e+02
  %4998 = fptoui float %4996 to i32
  %4999 = fptoui float %4997 to i32
  %5000 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %4998, i32 %4999, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5001 = extractvalue %dx.types.ResRet.f32 %5000, 0
  %5002 = extractvalue %dx.types.ResRet.f32 %5000, 1
  %5003 = extractvalue %dx.types.ResRet.f32 %5000, 2
  %5004 = fadd fast float %5001, %4995
  %5005 = fadd fast float %5002, %4995
  %5006 = fadd fast float %5003, %4995
  %5007 = call float @dx.op.unary.f32(i32 22, float %5004)  ; Frc(value)
  %5008 = call float @dx.op.unary.f32(i32 22, float %5005)  ; Frc(value)
  %5009 = call float @dx.op.unary.f32(i32 22, float %5006)  ; Frc(value)
  %5010 = fmul fast float %5009, 0x401921FB60000000
  %5011 = call float @dx.op.unary.f32(i32 13, float %5010)  ; Sin(value)
  %5012 = call float @dx.op.unary.f32(i32 12, float %5010)  ; Cos(value)
  %5013 = fsub fast float -0.000000e+00, %5012
  %5014 = fmul fast float %5012, %4977
  %5015 = call float @dx.op.tertiary.f32(i32 46, float %5011, float %4978, float %5014)  ; FMad(a,b,c)
  %5016 = fmul fast float %5011, %4977
  %5017 = call float @dx.op.tertiary.f32(i32 46, float %5013, float %4978, float %5016)  ; FMad(a,b,c)
  %5018 = fadd fast float %5015, %5007
  %5019 = fadd fast float %5017, %5008
  %5020 = extractvalue %dx.types.CBufRet.f32 %4930, 3
  %5021 = bitcast float %5020 to i32
  %5022 = icmp eq i32 %5021, 0
  br i1 %5022, label %5061, label %5023

; <label>:5023                                    ; preds = %4926
  %5024 = add i32 %5021, 0
  %5025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5026 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5025, %dx.types.Handle %98, float %5018, float %5019, float undef, float undef, i32 0, i32 0, i32 undef, float %4981, float %4982, float undef, float %4985, float %4986, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5027 = extractvalue %dx.types.ResRet.f32 %5026, 0
  %5028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5029 = extractvalue %dx.types.CBufRet.f32 %5028, 1
  %5030 = extractvalue %dx.types.CBufRet.f32 %5028, 2
  %5031 = fsub fast float 1.000000e+00, %4920
  %5032 = call float @dx.op.binary.f32(i32 35, float %5031, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5033 = bitcast float %4920 to i32
  %5034 = sitofp i32 %5033 to float
  %5035 = fadd fast float %5034, 0xC1CFBF8940000000
  %5036 = fmul fast float %5030, %5035
  %5037 = fadd fast float %5036, 0x41CFBF8940000000
  %5038 = fptosi float %5037 to i32
  %5039 = bitcast i32 %5038 to float
  %5040 = bitcast float %5032 to i32
  %5041 = sitofp i32 %5040 to float
  %5042 = fadd fast float %5041, 0xC1CFBF8940000000
  %5043 = fmul fast float %5042, %5030
  %5044 = fadd fast float %5043, 0x41CFBF8940000000
  %5045 = fptosi float %5044 to i32
  %5046 = bitcast i32 %5045 to float
  %5047 = fmul fast float %5039, %5029
  %5048 = fmul fast float %5046, %5029
  %5049 = fsub fast float %5032, %5047
  %5050 = fadd fast float %5048, %5032
  %5051 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5052 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5053 = fsub fast float %5027, %5051
  %5054 = fsub fast float %5052, %5051
  %5055 = bitcast float %5054 to i32
  %5056 = sub nsw i32 2129859010, %5055
  %5057 = bitcast i32 %5056 to float
  %5058 = fmul fast float %5057, %5053
  %5059 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  %5060 = fcmp fast olt float %5059, 0x3F70101020000000
  br i1 %5060, label %5199, label %5061

; <label>:5061                                    ; preds = %5023, %4926
  %5062 = phi float [ %5059, %5023 ], [ %4920, %4926 ]
  %5063 = fmul fast float %5062, %4929
  %5064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.i32 %5064, 1
  %5066 = extractvalue %dx.types.CBufRet.i32 %5064, 0
  %5067 = add i32 %5066, 0
  %5068 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5067, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5069 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5068, %dx.types.Handle %97, float %5018, float %5019, float undef, float undef, i32 0, i32 0, i32 undef, float %4981, float %4982, float undef, float %4985, float %4986, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5070 = extractvalue %dx.types.ResRet.f32 %5069, 0
  %5071 = extractvalue %dx.types.ResRet.f32 %5069, 1
  %5072 = extractvalue %dx.types.ResRet.f32 %5069, 2
  %5073 = extractvalue %dx.types.ResRet.f32 %5069, 3
  %5074 = and i32 %5065, 255
  %5075 = uitofp i32 %5074 to float
  %5076 = lshr i32 %5065, 8
  %5077 = and i32 %5076, 255
  %5078 = uitofp i32 %5077 to float
  %5079 = fmul fast float %5073, %5075
  %5080 = fadd fast float %5079, %5078
  %5081 = fmul fast float %5080, 0x3F70101000000000
  %5082 = fadd fast float %5081, 0xBFB99999A0000000
  %5083 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5084 = fmul fast float %5083, 0x3FF1C71C80000000
  %5085 = call float @dx.op.binary.f32(i32 36, float %5081, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5086 = fsub fast float 1.000000e+00, %5084
  %5087 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5088 = fmul fast float %5087, %5070
  %5089 = fmul fast float %5087, %5071
  %5090 = fmul fast float %5087, %5072
  %5091 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5092 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = fmul fast float %5084, %5070
  %5095 = fmul fast float %5084, %5071
  %5096 = fmul fast float %5084, %5072
  %5097 = fadd fast float %5094, %5085
  %5098 = fadd fast float %5095, %5085
  %5099 = fadd fast float %5096, %5085
  %5100 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5101 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5102 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5104 = extractvalue %dx.types.CBufRet.i32 %5103, 3
  %5105 = extractvalue %dx.types.CBufRet.i32 %5103, 2
  %5106 = add i32 %5105, 0
  %5107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5108 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5107, %dx.types.Handle %97, float %5018, float %5019, float undef, float undef, i32 0, i32 0, i32 undef, float %4981, float %4982, float undef, float %4985, float %4986, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5109 = extractvalue %dx.types.ResRet.f32 %5108, 0
  %5110 = extractvalue %dx.types.ResRet.f32 %5108, 1
  %5111 = extractvalue %dx.types.ResRet.f32 %5108, 2
  %5112 = extractvalue %dx.types.ResRet.f32 %5108, 3
  %5113 = and i32 %5104, 255
  %5114 = uitofp i32 %5113 to float
  %5115 = lshr i32 %5104, 8
  %5116 = and i32 %5115, 255
  %5117 = uitofp i32 %5116 to float
  %5118 = lshr i32 %5104, 16
  %5119 = and i32 %5118, 255
  %5120 = uitofp i32 %5119 to float
  %5121 = fmul fast float %5120, 0x3F70101000000000
  %5122 = fmul fast float %5109, %5114
  %5123 = fadd fast float %5122, %5117
  %5124 = fmul fast float %5123, 0x3F70101000000000
  %5125 = fadd fast float %5110, -5.000000e-01
  %5126 = fadd fast float %5112, -5.000000e-01
  %5127 = fmul fast float %5125, %5121
  %5128 = fmul fast float %5126, %5121
  %5129 = fadd fast float %5127, 5.000000e-01
  %5130 = fadd fast float %5128, 5.000000e-01
  %5131 = fmul fast float %5129, 2.000000e+00
  %5132 = fadd fast float %5131, -1.000000e+00
  %5133 = fmul fast float %5130, 2.000000e+00
  %5134 = fadd fast float %5133, -1.000000e+00
  %5135 = fadd fast float %5132, %5134
  %5136 = fmul fast float %5135, 5.000000e-01
  %5137 = fsub fast float %5132, %5134
  %5138 = fmul fast float %5137, 5.000000e-01
  %5139 = call float @dx.op.unary.f32(i32 6, float %5136)  ; FAbs(value)
  %5140 = fsub fast float 1.000000e+00, %5139
  %5141 = call float @dx.op.unary.f32(i32 6, float %5138)  ; FAbs(value)
  %5142 = fsub fast float %5140, %5141
  %5143 = call float @dx.op.dot3.f32(i32 55, float %5136, float %5138, float %5142, float %5136, float %5138, float %5142)  ; Dot3(ax,ay,az,bx,by,bz)
  %5144 = call float @dx.op.unary.f32(i32 25, float %5143)  ; Rsqrt(value)
  %5145 = fmul fast float %5136, %5144
  %5146 = fmul fast float %5138, %5144
  %5147 = select i1 %4974, i32 %4964, i32 %4965
  %5148 = select i1 %4972, i32 %4963, i32 %5147
  %5149 = sitofp i32 %5148 to float
  %5150 = fmul fast float %5142, %5149
  %5151 = fmul fast float %5150, %5144
  %5152 = select i1 %4974, float %5151, float %5146
  %5153 = select i1 %4974, float %5146, float %5151
  %5154 = select i1 %4972, float %5151, float %5145
  %5155 = select i1 %4972, float %5146, float %5152
  %5156 = select i1 %4972, float %5145, float %5153
  %5157 = fsub fast float %5091, %4811
  %5158 = fsub fast float %5092, %4812
  %5159 = fsub fast float %5093, %4813
  %5160 = fmul fast float %5157, %5063
  %5161 = fmul fast float %5158, %5063
  %5162 = fmul fast float %5159, %5063
  %5163 = fadd fast float %5160, %4811
  %5164 = fadd fast float %5161, %4812
  %5165 = fadd fast float %5162, %4813
  %5166 = fsub fast float %5100, %4771
  %5167 = fsub fast float %5101, %4772
  %5168 = fsub fast float %5102, %4773
  %5169 = fmul fast float %5166, %5063
  %5170 = fmul fast float %5167, %5063
  %5171 = fmul fast float %5168, %5063
  %5172 = fadd fast float %5169, %4771
  %5173 = fadd fast float %5170, %4772
  %5174 = fadd fast float %5171, %4773
  %5175 = fadd fast float %5154, %4707
  %5176 = fadd fast float %5155, %4708
  %5177 = fadd fast float %5156, %4709
  %5178 = call float @dx.op.dot3.f32(i32 55, float %5175, float %5176, float %5177, float %5175, float %5176, float %5177)  ; Dot3(ax,ay,az,bx,by,bz)
  %5179 = call float @dx.op.unary.f32(i32 25, float %5178)  ; Rsqrt(value)
  %5180 = fmul fast float %5175, %5179
  %5181 = fmul fast float %5176, %5179
  %5182 = fmul fast float %5177, %5179
  %5183 = fsub fast float %5180, %4707
  %5184 = fsub fast float %5181, %4708
  %5185 = fsub fast float %5182, %4709
  %5186 = fmul fast float %5183, %5063
  %5187 = fmul fast float %5184, %5063
  %5188 = fmul fast float %5185, %5063
  %5189 = fadd fast float %5186, %4707
  %5190 = fadd fast float %5187, %4708
  %5191 = fadd fast float %5188, %4709
  %5192 = call float @dx.op.binary.f32(i32 36, float %4725, float %5111)  ; FMin(a,b)
  %5193 = fsub fast float %5192, %4725
  %5194 = fmul fast float %5193, %5063
  %5195 = fadd fast float %5194, %4725
  %5196 = fsub fast float %5124, %4774
  %5197 = fmul fast float %5196, %5063
  %5198 = fadd fast float %5197, %4774
  br label %5199

; <label>:5199                                    ; preds = %5061, %5023, %4925
  %5200 = phi float [ %5172, %5061 ], [ %4771, %5023 ], [ %4771, %4925 ]
  %5201 = phi float [ %5173, %5061 ], [ %4772, %5023 ], [ %4772, %4925 ]
  %5202 = phi float [ %5174, %5061 ], [ %4773, %5023 ], [ %4773, %4925 ]
  %5203 = phi float [ %5163, %5061 ], [ %4811, %5023 ], [ %4811, %4925 ]
  %5204 = phi float [ %5164, %5061 ], [ %4812, %5023 ], [ %4812, %4925 ]
  %5205 = phi float [ %5165, %5061 ], [ %4813, %5023 ], [ %4813, %4925 ]
  %5206 = phi float [ %5189, %5061 ], [ %4707, %5023 ], [ %4707, %4925 ]
  %5207 = phi float [ %5190, %5061 ], [ %4708, %5023 ], [ %4708, %4925 ]
  %5208 = phi float [ %5191, %5061 ], [ %4709, %5023 ], [ %4709, %4925 ]
  %5209 = phi float [ %5198, %5061 ], [ %4774, %5023 ], [ %4774, %4925 ]
  %5210 = phi float [ %5195, %5061 ], [ %4725, %5023 ], [ %4725, %4925 ]
  br i1 %4923, label %5211, label %5500

; <label>:5211                                    ; preds = %5199
  %5212 = call float @dx.op.unary.f32(i32 23, float %5210)  ; Log(value)
  %5213 = fmul fast float %5212, 4.000000e+00
  %5214 = call float @dx.op.unary.f32(i32 21, float %5213)  ; Exp(value)
  %5215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5216 = extractvalue %dx.types.CBufRet.f32 %5215, 0
  %5217 = fmul fast float %5216, %48
  %5218 = fmul fast float %5216, %49
  %5219 = fmul fast float %5216, %50
  %5220 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %5221 = call float @dx.op.unary.f32(i32 6, float %58)  ; FAbs(value)
  %5222 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %5223 = call float @dx.op.unary.f32(i32 23, float %5220)  ; Log(value)
  %5224 = call float @dx.op.unary.f32(i32 23, float %5221)  ; Log(value)
  %5225 = call float @dx.op.unary.f32(i32 23, float %5222)  ; Log(value)
  %5226 = fmul fast float %5223, 4.000000e+00
  %5227 = fmul fast float %5224, 4.000000e+00
  %5228 = fmul fast float %5225, 4.000000e+00
  %5229 = call float @dx.op.unary.f32(i32 21, float %5226)  ; Exp(value)
  %5230 = call float @dx.op.unary.f32(i32 21, float %5227)  ; Exp(value)
  %5231 = call float @dx.op.unary.f32(i32 21, float %5228)  ; Exp(value)
  %5232 = fadd fast float %5230, %5229
  %5233 = fadd fast float %5232, %5231
  %5234 = fdiv fast float 1.000000e+00, %5233
  %5235 = fmul fast float %5234, %5229
  %5236 = fcmp fast ogt float %57, 0.000000e+00
  %5237 = fcmp fast ogt float %58, 0.000000e+00
  %5238 = fcmp fast ogt float %59, 0.000000e+00
  %5239 = fcmp fast olt float %57, 0.000000e+00
  %5240 = fcmp fast olt float %58, 0.000000e+00
  %5241 = fcmp fast olt float %59, 0.000000e+00
  %5242 = zext i1 %5236 to i32
  %5243 = zext i1 %5237 to i32
  %5244 = zext i1 %5238 to i32
  %5245 = zext i1 %5239 to i32
  %5246 = zext i1 %5240 to i32
  %5247 = zext i1 %5241 to i32
  %5248 = sub nsw i32 %5242, %5245
  %5249 = sub nsw i32 %5243, %5246
  %5250 = sub nsw i32 %5244, %5247
  %5251 = call float @dx.op.unary.f32(i32 83, float %5217)  ; DerivCoarseX(value)
  %5252 = call float @dx.op.unary.f32(i32 83, float %5218)  ; DerivCoarseX(value)
  %5253 = call float @dx.op.unary.f32(i32 83, float %5219)  ; DerivCoarseX(value)
  %5254 = call float @dx.op.unary.f32(i32 84, float %5217)  ; DerivCoarseY(value)
  %5255 = call float @dx.op.unary.f32(i32 84, float %5218)  ; DerivCoarseY(value)
  %5256 = call float @dx.op.unary.f32(i32 84, float %5219)  ; DerivCoarseY(value)
  %5257 = fcmp fast ole float %299, %5235
  %5258 = fmul fast float %5234, %5232
  %5259 = fcmp fast ole float %299, %5258
  %5260 = select i1 %5259, float %5219, float %5217
  %5261 = select i1 %5259, float %5217, float %5218
  %5262 = select i1 %5257, float %5218, float %5260
  %5263 = select i1 %5257, float %5219, float %5261
  %5264 = select i1 %5259, float %5253, float %5251
  %5265 = select i1 %5259, float %5251, float %5252
  %5266 = select i1 %5257, float %5252, float %5264
  %5267 = select i1 %5257, float %5253, float %5265
  %5268 = select i1 %5259, float %5256, float %5254
  %5269 = select i1 %5259, float %5254, float %5255
  %5270 = select i1 %5257, float %5255, float %5268
  %5271 = select i1 %5257, float %5256, float %5269
  %5272 = call float @dx.op.unary.f32(i32 27, float %5262)  ; Round_ni(value)
  %5273 = call float @dx.op.unary.f32(i32 27, float %5263)  ; Round_ni(value)
  %5274 = fptosi float %5272 to i32
  %5275 = fptosi float %5273 to i32
  %5276 = xor i32 %5275, %5274
  %5277 = sitofp i32 %5276 to float
  %5278 = fptosi float %5277 to i32
  %5279 = sitofp i32 %5278 to float
  %5280 = fmul fast float %5279, 0x3FE3C6EF40000000
  %5281 = frem fast float %5272, 2.560000e+02
  %5282 = frem fast float %5273, 2.560000e+02
  %5283 = fptoui float %5281 to i32
  %5284 = fptoui float %5282 to i32
  %5285 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %5283, i32 %5284, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5286 = extractvalue %dx.types.ResRet.f32 %5285, 0
  %5287 = extractvalue %dx.types.ResRet.f32 %5285, 1
  %5288 = extractvalue %dx.types.ResRet.f32 %5285, 2
  %5289 = fadd fast float %5286, %5280
  %5290 = fadd fast float %5287, %5280
  %5291 = fadd fast float %5288, %5280
  %5292 = call float @dx.op.unary.f32(i32 22, float %5289)  ; Frc(value)
  %5293 = call float @dx.op.unary.f32(i32 22, float %5290)  ; Frc(value)
  %5294 = call float @dx.op.unary.f32(i32 22, float %5291)  ; Frc(value)
  %5295 = fmul fast float %5294, 0x401921FB60000000
  %5296 = call float @dx.op.unary.f32(i32 13, float %5295)  ; Sin(value)
  %5297 = call float @dx.op.unary.f32(i32 12, float %5295)  ; Cos(value)
  %5298 = fsub fast float -0.000000e+00, %5297
  %5299 = fmul fast float %5297, %5262
  %5300 = call float @dx.op.tertiary.f32(i32 46, float %5296, float %5263, float %5299)  ; FMad(a,b,c)
  %5301 = fmul fast float %5296, %5262
  %5302 = call float @dx.op.tertiary.f32(i32 46, float %5298, float %5263, float %5301)  ; FMad(a,b,c)
  %5303 = fadd fast float %5300, %5292
  %5304 = fadd fast float %5302, %5293
  %5305 = extractvalue %dx.types.CBufRet.f32 %5215, 3
  %5306 = bitcast float %5305 to i32
  %5307 = icmp eq i32 %5306, 0
  br i1 %5307, label %5346, label %5308

; <label>:5308                                    ; preds = %5211
  %5309 = add i32 %5306, 0
  %5310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5309, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5311 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5310, %dx.types.Handle %98, float %5303, float %5304, float undef, float undef, i32 0, i32 0, i32 undef, float %5266, float %5267, float undef, float %5270, float %5271, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5312 = extractvalue %dx.types.ResRet.f32 %5311, 0
  %5313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5314 = extractvalue %dx.types.CBufRet.f32 %5313, 1
  %5315 = extractvalue %dx.types.CBufRet.f32 %5313, 2
  %5316 = fsub fast float 1.000000e+00, %4921
  %5317 = call float @dx.op.binary.f32(i32 35, float %5316, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5318 = bitcast float %4921 to i32
  %5319 = sitofp i32 %5318 to float
  %5320 = fadd fast float %5319, 0xC1CFBF8940000000
  %5321 = fmul fast float %5315, %5320
  %5322 = fadd fast float %5321, 0x41CFBF8940000000
  %5323 = fptosi float %5322 to i32
  %5324 = bitcast i32 %5323 to float
  %5325 = bitcast float %5317 to i32
  %5326 = sitofp i32 %5325 to float
  %5327 = fadd fast float %5326, 0xC1CFBF8940000000
  %5328 = fmul fast float %5327, %5315
  %5329 = fadd fast float %5328, 0x41CFBF8940000000
  %5330 = fptosi float %5329 to i32
  %5331 = bitcast i32 %5330 to float
  %5332 = fmul fast float %5324, %5314
  %5333 = fmul fast float %5331, %5314
  %5334 = fsub fast float %5317, %5332
  %5335 = fadd fast float %5333, %5317
  %5336 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5337 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  %5338 = fsub fast float %5312, %5336
  %5339 = fsub fast float %5337, %5336
  %5340 = bitcast float %5339 to i32
  %5341 = sub nsw i32 2129859010, %5340
  %5342 = bitcast i32 %5341 to float
  %5343 = fmul fast float %5342, %5338
  %5344 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5345 = fcmp fast olt float %5344, 0x3F70101020000000
  br i1 %5345, label %5500, label %5346

; <label>:5346                                    ; preds = %5308, %5211
  %5347 = phi float [ %5344, %5308 ], [ %4921, %5211 ]
  %5348 = fmul fast float %5347, %5214
  %5349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5350 = extractvalue %dx.types.CBufRet.i32 %5349, 1
  %5351 = extractvalue %dx.types.CBufRet.i32 %5349, 0
  %5352 = add i32 %5351, 0
  %5353 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5352, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5354 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5353, %dx.types.Handle %97, float %5303, float %5304, float undef, float undef, i32 0, i32 0, i32 undef, float %5266, float %5267, float undef, float %5270, float %5271, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5355 = extractvalue %dx.types.ResRet.f32 %5354, 0
  %5356 = extractvalue %dx.types.ResRet.f32 %5354, 1
  %5357 = extractvalue %dx.types.ResRet.f32 %5354, 2
  %5358 = extractvalue %dx.types.ResRet.f32 %5354, 3
  %5359 = and i32 %5350, 255
  %5360 = uitofp i32 %5359 to float
  %5361 = lshr i32 %5350, 8
  %5362 = and i32 %5361, 255
  %5363 = uitofp i32 %5362 to float
  %5364 = fmul fast float %5358, %5360
  %5365 = fadd fast float %5364, %5363
  %5366 = fmul fast float %5365, 0x3F70101000000000
  %5367 = fadd fast float %5366, 0xBFB99999A0000000
  %5368 = call float @dx.op.unary.f32(i32 7, float %5367)  ; Saturate(value)
  %5369 = fmul fast float %5368, 0x3FF1C71C80000000
  %5370 = call float @dx.op.binary.f32(i32 36, float %5366, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5371 = fsub fast float 1.000000e+00, %5369
  %5372 = call float @dx.op.unary.f32(i32 7, float %5371)  ; Saturate(value)
  %5373 = fmul fast float %5372, %5355
  %5374 = fmul fast float %5372, %5356
  %5375 = fmul fast float %5372, %5357
  %5376 = call float @dx.op.unary.f32(i32 7, float %5373)  ; Saturate(value)
  %5377 = call float @dx.op.unary.f32(i32 7, float %5374)  ; Saturate(value)
  %5378 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5379 = fmul fast float %5369, %5355
  %5380 = fmul fast float %5369, %5356
  %5381 = fmul fast float %5369, %5357
  %5382 = fadd fast float %5379, %5370
  %5383 = fadd fast float %5380, %5370
  %5384 = fadd fast float %5381, %5370
  %5385 = call float @dx.op.unary.f32(i32 7, float %5382)  ; Saturate(value)
  %5386 = call float @dx.op.unary.f32(i32 7, float %5383)  ; Saturate(value)
  %5387 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  %5388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5389 = extractvalue %dx.types.CBufRet.i32 %5388, 3
  %5390 = extractvalue %dx.types.CBufRet.i32 %5388, 2
  %5391 = add i32 %5390, 0
  %5392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5393 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5392, %dx.types.Handle %97, float %5303, float %5304, float undef, float undef, i32 0, i32 0, i32 undef, float %5266, float %5267, float undef, float %5270, float %5271, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5394 = extractvalue %dx.types.ResRet.f32 %5393, 0
  %5395 = extractvalue %dx.types.ResRet.f32 %5393, 1
  %5396 = extractvalue %dx.types.ResRet.f32 %5393, 2
  %5397 = extractvalue %dx.types.ResRet.f32 %5393, 3
  %5398 = and i32 %5389, 255
  %5399 = uitofp i32 %5398 to float
  %5400 = lshr i32 %5389, 8
  %5401 = and i32 %5400, 255
  %5402 = uitofp i32 %5401 to float
  %5403 = lshr i32 %5389, 16
  %5404 = and i32 %5403, 255
  %5405 = uitofp i32 %5404 to float
  %5406 = fmul fast float %5405, 0x3F70101000000000
  %5407 = fmul fast float %5394, %5399
  %5408 = fadd fast float %5407, %5402
  %5409 = fmul fast float %5408, 0x3F70101000000000
  %5410 = fadd fast float %5395, -5.000000e-01
  %5411 = fadd fast float %5397, -5.000000e-01
  %5412 = fmul fast float %5410, %5406
  %5413 = fmul fast float %5411, %5406
  %5414 = fadd fast float %5412, 5.000000e-01
  %5415 = fadd fast float %5413, 5.000000e-01
  %5416 = fmul fast float %5414, 2.000000e+00
  %5417 = fadd fast float %5416, -1.000000e+00
  %5418 = fmul fast float %5415, 2.000000e+00
  %5419 = fadd fast float %5418, -1.000000e+00
  %5420 = fadd fast float %5417, %5419
  %5421 = fmul fast float %5420, 5.000000e-01
  %5422 = fsub fast float %5417, %5419
  %5423 = fmul fast float %5422, 5.000000e-01
  %5424 = call float @dx.op.unary.f32(i32 6, float %5421)  ; FAbs(value)
  %5425 = fsub fast float 1.000000e+00, %5424
  %5426 = call float @dx.op.unary.f32(i32 6, float %5423)  ; FAbs(value)
  %5427 = fsub fast float %5425, %5426
  %5428 = call float @dx.op.dot3.f32(i32 55, float %5421, float %5423, float %5427, float %5421, float %5423, float %5427)  ; Dot3(ax,ay,az,bx,by,bz)
  %5429 = call float @dx.op.unary.f32(i32 25, float %5428)  ; Rsqrt(value)
  %5430 = fmul fast float %5421, %5429
  %5431 = fmul fast float %5423, %5429
  %5432 = select i1 %5259, i32 %5249, i32 %5250
  %5433 = select i1 %5257, i32 %5248, i32 %5432
  %5434 = sitofp i32 %5433 to float
  %5435 = fmul fast float %5427, %5434
  %5436 = fmul fast float %5435, %5429
  %5437 = select i1 %5259, float %5436, float %5431
  %5438 = select i1 %5259, float %5431, float %5436
  %5439 = select i1 %5257, float %5436, float %5430
  %5440 = select i1 %5257, float %5431, float %5437
  %5441 = select i1 %5257, float %5430, float %5438
  %5442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5442, 0
  %5444 = fptoui float %5443 to i32
  %5445 = add i32 %5444, 0
  %5446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5445, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5447 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5446, %dx.types.Handle %97, float %5303, float %5304, float undef, float undef, i32 0, i32 0, i32 undef, float %5266, float %5267, float undef, float %5270, float %5271, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5448 = extractvalue %dx.types.ResRet.f32 %5447, 0
  %5449 = fsub fast float %5376, %5203
  %5450 = fsub fast float %5377, %5204
  %5451 = fsub fast float %5378, %5205
  %5452 = fmul fast float %5449, %5348
  %5453 = fmul fast float %5450, %5348
  %5454 = fmul fast float %5451, %5348
  %5455 = fadd fast float %5452, %5203
  %5456 = fadd fast float %5453, %5204
  %5457 = fadd fast float %5454, %5205
  %5458 = fsub fast float %5385, %5200
  %5459 = fsub fast float %5386, %5201
  %5460 = fsub fast float %5387, %5202
  %5461 = fmul fast float %5458, %5348
  %5462 = fmul fast float %5459, %5348
  %5463 = fmul fast float %5460, %5348
  %5464 = fadd fast float %5461, %5200
  %5465 = fadd fast float %5462, %5201
  %5466 = fadd fast float %5463, %5202
  %5467 = fadd fast float %5439, %5206
  %5468 = fadd fast float %5440, %5207
  %5469 = fadd fast float %5441, %5208
  %5470 = call float @dx.op.dot3.f32(i32 55, float %5467, float %5468, float %5469, float %5467, float %5468, float %5469)  ; Dot3(ax,ay,az,bx,by,bz)
  %5471 = call float @dx.op.unary.f32(i32 25, float %5470)  ; Rsqrt(value)
  %5472 = fmul fast float %5471, %5467
  %5473 = fmul fast float %5471, %5468
  %5474 = fmul fast float %5471, %5469
  %5475 = fsub fast float %5472, %5206
  %5476 = fsub fast float %5473, %5207
  %5477 = fsub fast float %5474, %5208
  %5478 = fmul fast float %5475, %5348
  %5479 = fmul fast float %5476, %5348
  %5480 = fmul fast float %5477, %5348
  %5481 = fadd fast float %5478, %5206
  %5482 = fadd fast float %5479, %5207
  %5483 = fadd fast float %5480, %5208
  %5484 = call float @dx.op.binary.f32(i32 36, float %5210, float %5396)  ; FMin(a,b)
  %5485 = fsub fast float %5484, %5210
  %5486 = fmul fast float %5485, %5348
  %5487 = fadd fast float %5486, %5210
  %5488 = fsub fast float %5409, %5209
  %5489 = fmul fast float %5488, %5348
  %5490 = fadd fast float %5489, %5209
  %5491 = fsub fast float %5448, %4815
  %5492 = fsub fast float %5448, %4816
  %5493 = fsub fast float %5448, %4817
  %5494 = fmul fast float %5491, %5348
  %5495 = fmul fast float %5492, %5348
  %5496 = fmul fast float %5493, %5348
  %5497 = fadd fast float %5494, %4815
  %5498 = fadd fast float %5495, %4816
  %5499 = fadd fast float %5496, %4817
  br label %5500

; <label>:5500                                    ; preds = %5346, %5308, %5199, %4915
  %5501 = phi float [ %5464, %5346 ], [ %5200, %5308 ], [ %5200, %5199 ], [ %4771, %4915 ]
  %5502 = phi float [ %5465, %5346 ], [ %5201, %5308 ], [ %5201, %5199 ], [ %4772, %4915 ]
  %5503 = phi float [ %5466, %5346 ], [ %5202, %5308 ], [ %5202, %5199 ], [ %4773, %4915 ]
  %5504 = phi float [ %5455, %5346 ], [ %5203, %5308 ], [ %5203, %5199 ], [ %4811, %4915 ]
  %5505 = phi float [ %5456, %5346 ], [ %5204, %5308 ], [ %5204, %5199 ], [ %4812, %4915 ]
  %5506 = phi float [ %5457, %5346 ], [ %5205, %5308 ], [ %5205, %5199 ], [ %4813, %4915 ]
  %5507 = phi float [ %5481, %5346 ], [ %5206, %5308 ], [ %5206, %5199 ], [ %4707, %4915 ]
  %5508 = phi float [ %5482, %5346 ], [ %5207, %5308 ], [ %5207, %5199 ], [ %4708, %4915 ]
  %5509 = phi float [ %5483, %5346 ], [ %5208, %5308 ], [ %5208, %5199 ], [ %4709, %4915 ]
  %5510 = phi float [ %5497, %5346 ], [ %4815, %5308 ], [ %4815, %5199 ], [ %4815, %4915 ]
  %5511 = phi float [ %5498, %5346 ], [ %4816, %5308 ], [ %4816, %5199 ], [ %4816, %4915 ]
  %5512 = phi float [ %5499, %5346 ], [ %4817, %5308 ], [ %4817, %5199 ], [ %4817, %4915 ]
  %5513 = phi float [ %5490, %5346 ], [ %5209, %5308 ], [ %5209, %5199 ], [ %4774, %4915 ]
  %5514 = phi float [ %5487, %5346 ], [ %5210, %5308 ], [ %5210, %5199 ], [ %4725, %4915 ]
  %5515 = fcmp fast une float %4919, 0.000000e+00
  %5516 = fsub fast float -0.000000e+00, %213
  %5517 = fsub fast float -0.000000e+00, %214
  %5518 = fsub fast float -0.000000e+00, %215
  br i1 %5515, label %5519, label %5680

; <label>:5519                                    ; preds = %5500
  %5520 = call float @dx.op.dot3.f32(i32 55, float %5516, float %5517, float %5518, float %108, float %109, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5521 = fmul fast float %4919, 2.500000e+00
  %5522 = call float @dx.op.unary.f32(i32 7, float %5521)  ; Saturate(value)
  %5523 = fmul fast float %4919, 0x4013FFFFE0000000
  %5524 = fadd fast float %5523, 0xBFFFFFFFE0000000
  %5525 = call float @dx.op.unary.f32(i32 7, float %5524)  ; Saturate(value)
  %5526 = fmul fast float %4919, 0x4004000020000000
  %5527 = fadd fast float %5526, 0xBFF8000040000000
  %5528 = call float @dx.op.unary.f32(i32 7, float %5527)  ; Saturate(value)
  %5529 = fmul fast float %4753, 1.000000e+01
  %5530 = call float @dx.op.unary.f32(i32 7, float %5529)  ; Saturate(value)
  %5531 = fmul fast float %5530, 2.000000e+00
  %5532 = fsub fast float 3.000000e+00, %5531
  %5533 = fmul fast float %5530, %5530
  %5534 = fmul fast float %5533, %5532
  %5535 = fsub fast float 1.000000e+00, %5534
  %5536 = fsub fast float 0x3FE3333340000000, %5513
  %5537 = fmul fast float %5536, 0x400AAAAAA0000000
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5539 = fmul fast float %5535, %5538
  %5540 = fmul fast float %5504, 0x3FEA2B8620000000
  %5541 = fmul fast float %5505, 0x3FEA2B8620000000
  %5542 = fmul fast float %5506, 0x3FEA2B8620000000
  %5543 = fadd fast float %5540, 0x3FC81DFBA0000000
  %5544 = fmul fast float %5543, %5504
  %5545 = fadd fast float %5544, 0x3F910E6020000000
  %5546 = fadd fast float %5541, 0x3FC81DFBA0000000
  %5547 = fmul fast float %5546, %5505
  %5548 = fadd fast float %5547, 0x3F910E6020000000
  %5549 = fadd fast float %5542, 0x3FC81DFBA0000000
  %5550 = fmul fast float %5549, %5506
  %5551 = fadd fast float %5550, 0x3F910E6020000000
  %5552 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5553 = call float @dx.op.unary.f32(i32 7, float %5548)  ; Saturate(value)
  %5554 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5555 = fsub fast float %5552, %5504
  %5556 = fsub fast float %5553, %5505
  %5557 = fsub fast float %5554, %5506
  %5558 = fmul fast float %5555, %5522
  %5559 = fmul fast float %5558, %5539
  %5560 = fmul fast float %5556, %5522
  %5561 = fmul fast float %5560, %5539
  %5562 = fmul fast float %5557, %5522
  %5563 = fmul fast float %5562, %5539
  %5564 = fadd fast float %5559, %5504
  %5565 = fadd fast float %5561, %5505
  %5566 = fadd fast float %5563, %5506
  %5567 = fmul fast float %5514, %5514
  %5568 = fmul fast float %5567, %5567
  %5569 = fadd fast float %5525, 1.000000e+00
  %5570 = fsub fast float %5569, %5539
  %5571 = call float @dx.op.unary.f32(i32 7, float %5570)  ; Saturate(value)
  %5572 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = call float @dx.op.unary.f32(i32 7, float %5572)  ; Saturate(value)
  %5574 = fsub fast float 1.000000e+00, %5568
  %5575 = call float @dx.op.binary.f32(i32 36, float %5571, float %5574)  ; FMin(a,b)
  %5576 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5577 = call float @dx.op.binary.f32(i32 35, float %5575, float %5576)  ; FMax(a,b)
  %5578 = fadd fast float %5573, 0xBFE4CCCCC0000000
  %5579 = fmul fast float %5578, 0x4006DB6DA0000000
  %5580 = call float @dx.op.unary.f32(i32 7, float %5579)  ; Saturate(value)
  %5581 = fmul fast float %5580, 2.000000e+00
  %5582 = fsub fast float 3.000000e+00, %5581
  %5583 = bitcast float %5501 to i32
  %5584 = ashr i32 %5583, 1
  %5585 = add nsw i32 %5584, 532487669
  %5586 = bitcast i32 %5585 to float
  %5587 = fsub fast float 1.000000e+00, %5586
  %5588 = bitcast float %5587 to i32
  %5589 = sub nsw i32 2129859010, %5588
  %5590 = bitcast i32 %5589 to float
  %5591 = fmul fast float %5590, 2.000000e+00
  %5592 = bitcast float %5502 to i32
  %5593 = ashr i32 %5592, 1
  %5594 = add nsw i32 %5593, 532487669
  %5595 = bitcast i32 %5594 to float
  %5596 = fsub fast float 1.000000e+00, %5595
  %5597 = bitcast float %5596 to i32
  %5598 = sub nsw i32 2129859010, %5597
  %5599 = bitcast i32 %5598 to float
  %5600 = fmul fast float %5599, 2.000000e+00
  %5601 = bitcast float %5503 to i32
  %5602 = ashr i32 %5601, 1
  %5603 = add nsw i32 %5602, 532487669
  %5604 = bitcast i32 %5603 to float
  %5605 = fsub fast float 1.000000e+00, %5604
  %5606 = bitcast float %5605 to i32
  %5607 = sub nsw i32 2129859010, %5606
  %5608 = bitcast i32 %5607 to float
  %5609 = fmul fast float %5608, 2.000000e+00
  %5610 = fsub fast float 0x4002A9FBE0000000, %5591
  %5611 = fadd fast float %5591, 0x3FD54FDF00000000
  %5612 = bitcast float %5611 to i32
  %5613 = sub nsw i32 2129859010, %5612
  %5614 = bitcast i32 %5613 to float
  %5615 = fmul fast float %5614, %5610
  %5616 = fmul fast float %5615, %5615
  %5617 = fsub fast float 0x4002A9FBE0000000, %5600
  %5618 = fadd fast float %5600, 0x3FD54FDF00000000
  %5619 = bitcast float %5618 to i32
  %5620 = sub nsw i32 2129859010, %5619
  %5621 = bitcast i32 %5620 to float
  %5622 = fmul fast float %5621, %5617
  %5623 = fmul fast float %5622, %5622
  %5624 = fsub fast float 0x4002A9FBE0000000, %5609
  %5625 = fadd fast float %5609, 0x3FD54FDF00000000
  %5626 = bitcast float %5625 to i32
  %5627 = sub nsw i32 2129859010, %5626
  %5628 = bitcast i32 %5627 to float
  %5629 = fmul fast float %5628, %5624
  %5630 = fmul fast float %5629, %5629
  %5631 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5616)  ; FMax(a,b)
  %5632 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5623)  ; FMax(a,b)
  %5633 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5630)  ; FMax(a,b)
  %5634 = fsub fast float 1.000000e+00, %5520
  %5635 = fadd fast float %5634, %5535
  %5636 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5637 = fsub fast float 1.000000e+00, %4900
  %5638 = fmul fast float %5577, %5637
  %5639 = fmul fast float %5580, %5580
  %5640 = fmul fast float %5639, %5638
  %5641 = fmul fast float %5640, %5582
  %5642 = fmul fast float %5637, 0xBFE99999A0000000
  %5643 = fmul fast float %5642, %5522
  %5644 = fmul fast float %5643, %5539
  %5645 = fadd fast float %5644, 1.000000e+00
  %5646 = fadd fast float %5513, -1.000000e+00
  %5647 = fmul fast float %5645, %5646
  %5648 = fadd fast float %5647, 1.000000e+00
  %5649 = fsub fast float %5631, %5501
  %5650 = fsub fast float %5632, %5502
  %5651 = fsub fast float %5633, %5503
  %5652 = fmul fast float %5641, %5649
  %5653 = fmul fast float %5641, %5650
  %5654 = fmul fast float %5641, %5651
  %5655 = fadd fast float %5652, %5501
  %5656 = fadd fast float %5653, %5502
  %5657 = fadd fast float %5654, %5503
  %5658 = fsub fast float %108, %5507
  %5659 = fsub fast float %109, %5508
  %5660 = fsub fast float %110, %5509
  %5661 = fmul fast float %5641, %5658
  %5662 = fmul fast float %5641, %5659
  %5663 = fmul fast float %5641, %5660
  %5664 = fadd fast float %5661, %5507
  %5665 = fadd fast float %5662, %5508
  %5666 = fadd fast float %5663, %5509
  %5667 = fmul fast float %5641, %5636
  %5668 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5669 = fsub fast float 1.000000e+00, %5668
  %5670 = fmul fast float %5667, %5669
  %5671 = fadd fast float %5670, %5668
  %5672 = fsub fast float 1.000000e+00, %5514
  %5673 = fmul fast float %5641, %5672
  %5674 = fadd fast float %5673, %5514
  %5675 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5665, float %5666, float %5664, float %5665, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = call float @dx.op.unary.f32(i32 25, float %5675)  ; Rsqrt(value)
  %5677 = fmul fast float %5664, %5676
  %5678 = fmul fast float %5665, %5676
  %5679 = fmul fast float %5666, %5676
  br label %5680

; <label>:5680                                    ; preds = %5519, %5500
  %5681 = phi float [ %5655, %5519 ], [ %5501, %5500 ]
  %5682 = phi float [ %5656, %5519 ], [ %5502, %5500 ]
  %5683 = phi float [ %5657, %5519 ], [ %5503, %5500 ]
  %5684 = phi float [ %5564, %5519 ], [ %5504, %5500 ]
  %5685 = phi float [ %5565, %5519 ], [ %5505, %5500 ]
  %5686 = phi float [ %5566, %5519 ], [ %5506, %5500 ]
  %5687 = phi float [ %5677, %5519 ], [ %5507, %5500 ]
  %5688 = phi float [ %5678, %5519 ], [ %5508, %5500 ]
  %5689 = phi float [ %5679, %5519 ], [ %5509, %5500 ]
  %5690 = phi float [ %5671, %5519 ], [ %5513, %5500 ]
  %5691 = phi float [ %5674, %5519 ], [ %5514, %5500 ]
  %5692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5693 = extractvalue %dx.types.CBufRet.f32 %5692, 2
  %5694 = extractvalue %dx.types.CBufRet.f32 %5692, 3
  %5695 = fmul fast float %129, %5693
  %5696 = fmul fast float %131, %5694
  %5697 = fsub fast float 1.000000e+00, %5695
  %5698 = fsub fast float 1.000000e+00, %5696
  %5699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5700 = extractvalue %dx.types.CBufRet.f32 %5699, 0
  %5701 = extractvalue %dx.types.CBufRet.f32 %5699, 1
  %5702 = extractvalue %dx.types.CBufRet.f32 %5699, 2
  %5703 = fmul fast float %5697, %5700
  %5704 = fmul fast float %5697, %5701
  %5705 = fmul fast float %5697, %5702
  %5706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5707 = extractvalue %dx.types.CBufRet.f32 %5706, 0
  %5708 = extractvalue %dx.types.CBufRet.f32 %5706, 1
  %5709 = extractvalue %dx.types.CBufRet.f32 %5706, 2
  %5710 = fmul fast float %5698, %5707
  %5711 = fmul fast float %5698, %5708
  %5712 = fmul fast float %5698, %5709
  %5713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5714 = extractvalue %dx.types.CBufRet.f32 %5713, 0
  %5715 = extractvalue %dx.types.CBufRet.f32 %5713, 1
  %5716 = extractvalue %dx.types.CBufRet.f32 %5713, 2
  %5717 = fadd fast float %5710, %5714
  %5718 = fadd fast float %5717, %5703
  %5719 = fadd fast float %5711, %5715
  %5720 = fadd fast float %5719, %5704
  %5721 = fadd fast float %5712, %5716
  %5722 = fadd fast float %5721, %5705
  %5723 = fmul fast float %5718, %92
  %5724 = fmul fast float %5720, %92
  %5725 = fmul fast float %5722, %92
  %5726 = select i1 %286, float 0.000000e+00, float %5683
  %5727 = call float @dx.op.dot3.f32(i32 55, float %5687, float %5688, float %5689, float %5516, float %5517, float %5518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5729 = call float @dx.op.dot3.f32(i32 55, float %213, float %214, float %215, float %5687, float %5688, float %5689)  ; Dot3(ax,ay,az,bx,by,bz)
  %5730 = fmul fast float %5729, 2.000000e+00
  %5731 = fmul fast float %5730, %5687
  %5732 = fmul fast float %5730, %5688
  %5733 = fmul fast float %5730, %5689
  %5734 = fsub fast float %213, %5731
  %5735 = fsub fast float %214, %5732
  %5736 = fsub fast float %215, %5733
  %5737 = call float @dx.op.binary.f32(i32 36, float %5691, float 1.000000e+00)  ; FMin(a,b)
  %5738 = fsub fast float 1.000000e+00, %5691
  %5739 = bitcast float %5738 to i32
  %5740 = sub nsw i32 2129859010, %5739
  %5741 = bitcast i32 %5740 to float
  %5742 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5743 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = fcmp fast oeq float %5743, 0.000000e+00
  %5745 = fcmp fast oeq float %5742, 0.000000e+00
  %5746 = or i1 %5745, %5744
  br i1 %5746, label %5776, label %5747

; <label>:5747                                    ; preds = %5680
  %5748 = fsub fast float -0.000000e+00, %75
  %5749 = fsub fast float -0.000000e+00, %73
  %5750 = call float @dx.op.unary.f32(i32 24, float %5743)  ; Sqrt(value)
  %5751 = fdiv fast float %5750, %5742
  %5752 = fcmp fast ogt float %5751, 0x3FFB6F8900000000
  %5753 = select i1 %5752, float 0x3FFB6F8900000000, float %5751
  %5754 = fmul fast float %5753, 0x3FE8A23460000000
  %5755 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5756 = call float @dx.op.binary.f32(i32 35, float %5753, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5757 = fmul fast float %5755, %5742
  %5758 = fmul fast float %5756, 0x3FF279A740000000
  %5759 = fadd fast float %5758, -1.000000e+00
  %5760 = call float @dx.op.dot3.f32(i32 55, float %5748, float %5749, float %74, float %5748, float %5749, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5761 = call float @dx.op.unary.f32(i32 25, float %5760)  ; Rsqrt(value)
  %5762 = fmul fast float %5761, %5748
  %5763 = fmul fast float %5761, %5749
  %5764 = fmul fast float %5761, %74
  %5765 = fmul fast float %5759, %5759
  %5766 = fsub fast float 1.000000e+00, %5765
  %5767 = fmul fast float %5756, 0x40005F8BE0000000
  %5768 = fsub fast float 0x400C5BF8A0000000, %5767
  %5769 = fdiv fast float %5757, %5768
  %5770 = fmul fast float %5769, 0x3FEE31C3C0000000
  %5771 = fmul fast float %5770, %5766
  %5772 = fmul fast float %5756, 0x3FDACB7480000000
  %5773 = fadd fast float %5772, 0xBFD7347680000000
  %5774 = fmul fast float %5773, %5769
  %5775 = fmul fast float %5774, %5766
  br label %5776

; <label>:5776                                    ; preds = %5747, %5680
  %5777 = phi float [ %5762, %5747 ], [ 0.000000e+00, %5680 ]
  %5778 = phi float [ %5763, %5747 ], [ 0.000000e+00, %5680 ]
  %5779 = phi float [ %5764, %5747 ], [ 0.000000e+00, %5680 ]
  %5780 = phi float [ %5771, %5747 ], [ 0.000000e+00, %5680 ]
  %5781 = phi float [ %5775, %5747 ], [ 0.000000e+00, %5680 ]
  %5782 = call float @dx.op.dot3.f32(i32 55, float %5777, float %5778, float %5779, float %5687, float %5688, float %5689)  ; Dot3(ax,ay,az,bx,by,bz)
  %5783 = fmul fast float %5782, %5782
  %5784 = fmul fast float %5783, 0x3FEE471020000000
  %5785 = fadd fast float %5784, 0xBFD42F6020000000
  %5786 = fmul fast float %5742, 0x3FD20DD760000000
  %5787 = fmul fast float %5785, %5781
  %5788 = fmul fast float %5780, 0x3FDF454380000000
  %5789 = fmul fast float %5788, %5782
  %5790 = fadd fast float %5789, %5786
  %5791 = fadd fast float %5790, %5787
  %5792 = call float @dx.op.dot3.f32(i32 55, float %5777, float %5778, float %5779, float %5734, float %5735, float %5736)  ; Dot3(ax,ay,az,bx,by,bz)
  %5793 = fmul fast float %5792, 0x3FDF454380000000
  %5794 = fmul fast float %5792, %5792
  %5795 = fmul fast float %5794, 0x3FEE471020000000
  %5796 = fadd fast float %5795, 0xBFD42F6020000000
  %5797 = call float @dx.op.dot3.f32(i32 55, float %5742, float %5780, float %5781, float 0x3FD20DD760000000, float %5793, float %5796)  ; Dot3(ax,ay,az,bx,by,bz)
  %5798 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5799 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5800 = fcmp fast oeq float %5799, 0.000000e+00
  %5801 = fcmp fast oeq float %5798, 0.000000e+00
  %5802 = or i1 %5801, %5800
  br i1 %5802, label %5832, label %5803

; <label>:5803                                    ; preds = %5776
  %5804 = fsub fast float -0.000000e+00, %71
  %5805 = fsub fast float -0.000000e+00, %69
  %5806 = call float @dx.op.unary.f32(i32 24, float %5799)  ; Sqrt(value)
  %5807 = fdiv fast float %5806, %5798
  %5808 = fcmp fast ogt float %5807, 0x3FFB6F8900000000
  %5809 = select i1 %5808, float 0x3FFB6F8900000000, float %5807
  %5810 = fmul fast float %5809, 0x3FE8A23460000000
  %5811 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  %5812 = call float @dx.op.binary.f32(i32 35, float %5809, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5813 = fmul fast float %5811, %5798
  %5814 = fmul fast float %5812, 0x3FF279A740000000
  %5815 = fadd fast float %5814, -1.000000e+00
  %5816 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5805, float %70, float %5804, float %5805, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5817 = call float @dx.op.unary.f32(i32 25, float %5816)  ; Rsqrt(value)
  %5818 = fmul fast float %5817, %5804
  %5819 = fmul fast float %5817, %5805
  %5820 = fmul fast float %5817, %70
  %5821 = fmul fast float %5815, %5815
  %5822 = fsub fast float 1.000000e+00, %5821
  %5823 = fmul fast float %5812, 0x40005F8BE0000000
  %5824 = fsub fast float 0x400C5BF8A0000000, %5823
  %5825 = fdiv fast float %5813, %5824
  %5826 = fmul fast float %5825, 0x3FEE31C3C0000000
  %5827 = fmul fast float %5826, %5822
  %5828 = fmul fast float %5812, 0x3FDACB7480000000
  %5829 = fadd fast float %5828, 0xBFD7347680000000
  %5830 = fmul fast float %5829, %5825
  %5831 = fmul fast float %5830, %5822
  br label %5832

; <label>:5832                                    ; preds = %5803, %5776
  %5833 = phi float [ %5818, %5803 ], [ 0.000000e+00, %5776 ]
  %5834 = phi float [ %5819, %5803 ], [ 0.000000e+00, %5776 ]
  %5835 = phi float [ %5820, %5803 ], [ 0.000000e+00, %5776 ]
  %5836 = phi float [ %5827, %5803 ], [ 0.000000e+00, %5776 ]
  %5837 = phi float [ %5831, %5803 ], [ 0.000000e+00, %5776 ]
  %5838 = call float @dx.op.dot3.f32(i32 55, float %5833, float %5834, float %5835, float %5687, float %5688, float %5689)  ; Dot3(ax,ay,az,bx,by,bz)
  %5839 = fmul fast float %5838, %5838
  %5840 = fmul fast float %5839, 0x3FEE471020000000
  %5841 = fadd fast float %5840, 0xBFD42F6020000000
  %5842 = fmul fast float %5798, 0x3FD20DD760000000
  %5843 = fmul fast float %5841, %5837
  %5844 = fmul fast float %5836, 0x3FDF454380000000
  %5845 = fmul fast float %5844, %5838
  %5846 = fadd fast float %5845, %5842
  %5847 = fadd fast float %5846, %5843
  %5848 = call float @dx.op.dot3.f32(i32 55, float %5833, float %5834, float %5835, float %5734, float %5735, float %5736)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = fmul fast float %5848, 0x3FDF454380000000
  %5850 = fmul fast float %5848, %5848
  %5851 = fmul fast float %5850, 0x3FEE471020000000
  %5852 = fadd fast float %5851, 0xBFD42F6020000000
  %5853 = call float @dx.op.dot3.f32(i32 55, float %5798, float %5836, float %5837, float 0x3FD20DD760000000, float %5849, float %5852)  ; Dot3(ax,ay,az,bx,by,bz)
  %5854 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %64)  ; FMax(a,b)
  %5855 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = fcmp fast oeq float %5855, 0.000000e+00
  %5857 = fcmp fast oeq float %5854, 0.000000e+00
  %5858 = or i1 %5857, %5856
  br i1 %5858, label %5888, label %5859

; <label>:5859                                    ; preds = %5832
  %5860 = fsub fast float -0.000000e+00, %67
  %5861 = fsub fast float -0.000000e+00, %65
  %5862 = call float @dx.op.unary.f32(i32 24, float %5855)  ; Sqrt(value)
  %5863 = fdiv fast float %5862, %5854
  %5864 = fcmp fast ogt float %5863, 0x3FFB6F8900000000
  %5865 = select i1 %5864, float 0x3FFB6F8900000000, float %5863
  %5866 = fmul fast float %5865, 0x3FE8A23460000000
  %5867 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5868 = call float @dx.op.binary.f32(i32 35, float %5865, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5869 = fmul fast float %5867, %5854
  %5870 = fmul fast float %5868, 0x3FF279A740000000
  %5871 = fadd fast float %5870, -1.000000e+00
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5860, float %5861, float %66, float %5860, float %5861, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = call float @dx.op.unary.f32(i32 25, float %5872)  ; Rsqrt(value)
  %5874 = fmul fast float %5873, %5860
  %5875 = fmul fast float %5873, %5861
  %5876 = fmul fast float %5873, %66
  %5877 = fmul fast float %5871, %5871
  %5878 = fsub fast float 1.000000e+00, %5877
  %5879 = fmul fast float %5868, 0x40005F8BE0000000
  %5880 = fsub fast float 0x400C5BF8A0000000, %5879
  %5881 = fdiv fast float %5869, %5880
  %5882 = fmul fast float %5881, 0x3FEE31C3C0000000
  %5883 = fmul fast float %5882, %5878
  %5884 = fmul fast float %5868, 0x3FDACB7480000000
  %5885 = fadd fast float %5884, 0xBFD7347680000000
  %5886 = fmul fast float %5885, %5881
  %5887 = fmul fast float %5886, %5878
  br label %5888

; <label>:5888                                    ; preds = %5859, %5832
  %5889 = phi float [ %5874, %5859 ], [ 0.000000e+00, %5832 ]
  %5890 = phi float [ %5875, %5859 ], [ 0.000000e+00, %5832 ]
  %5891 = phi float [ %5876, %5859 ], [ 0.000000e+00, %5832 ]
  %5892 = phi float [ %5883, %5859 ], [ 0.000000e+00, %5832 ]
  %5893 = phi float [ %5887, %5859 ], [ 0.000000e+00, %5832 ]
  %5894 = call float @dx.op.dot3.f32(i32 55, float %5889, float %5890, float %5891, float %5687, float %5688, float %5689)  ; Dot3(ax,ay,az,bx,by,bz)
  %5895 = fmul fast float %5894, %5894
  %5896 = fmul fast float %5895, 0x3FEE471020000000
  %5897 = fadd fast float %5896, 0xBFD42F6020000000
  %5898 = fmul fast float %5854, 0x3FD20DD760000000
  %5899 = fmul fast float %5897, %5893
  %5900 = fmul fast float %5892, 0x3FDF454380000000
  %5901 = fmul fast float %5900, %5894
  %5902 = fadd fast float %5901, %5898
  %5903 = fadd fast float %5902, %5899
  %5904 = call float @dx.op.dot3.f32(i32 55, float %5889, float %5890, float %5891, float %5734, float %5735, float %5736)  ; Dot3(ax,ay,az,bx,by,bz)
  %5905 = fmul fast float %5904, 0x3FDF454380000000
  %5906 = fmul fast float %5904, %5904
  %5907 = fmul fast float %5906, 0x3FEE471020000000
  %5908 = fadd fast float %5907, 0xBFD42F6020000000
  %5909 = call float @dx.op.dot3.f32(i32 55, float %5854, float %5892, float %5893, float 0x3FD20DD760000000, float %5905, float %5908)  ; Dot3(ax,ay,az,bx,by,bz)
  %5910 = call float @dx.op.binary.f32(i32 35, float %5791, float 0.000000e+00)  ; FMax(a,b)
  %5911 = call float @dx.op.binary.f32(i32 35, float %5847, float 0.000000e+00)  ; FMax(a,b)
  %5912 = call float @dx.op.binary.f32(i32 35, float %5903, float 0.000000e+00)  ; FMax(a,b)
  %5913 = call float @dx.op.binary.f32(i32 35, float %5797, float 0.000000e+00)  ; FMax(a,b)
  %5914 = call float @dx.op.binary.f32(i32 35, float %5853, float 0.000000e+00)  ; FMax(a,b)
  %5915 = call float @dx.op.binary.f32(i32 35, float %5909, float 0.000000e+00)  ; FMax(a,b)
  %5916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5917 = extractvalue %dx.types.CBufRet.f32 %5916, 0
  %5918 = call float @dx.op.binary.f32(i32 36, float %5684, float %5917)  ; FMin(a,b)
  %5919 = fsub fast float 1.000000e+00, %5737
  %5920 = fmul fast float %5918, %5919
  %5921 = fsub fast float 1.000000e+00, %5920
  %5922 = bitcast float %5921 to i32
  %5923 = sub nsw i32 2129859010, %5922
  %5924 = bitcast i32 %5923 to float
  %5925 = call float @dx.op.binary.f32(i32 36, float %5685, float %5917)  ; FMin(a,b)
  %5926 = fmul fast float %5925, %5919
  %5927 = fsub fast float 1.000000e+00, %5926
  %5928 = bitcast float %5927 to i32
  %5929 = sub nsw i32 2129859010, %5928
  %5930 = bitcast i32 %5929 to float
  %5931 = call float @dx.op.binary.f32(i32 36, float %5686, float %5917)  ; FMin(a,b)
  %5932 = fmul fast float %5931, %5919
  %5933 = fsub fast float 1.000000e+00, %5932
  %5934 = bitcast float %5933 to i32
  %5935 = sub nsw i32 2129859010, %5934
  %5936 = bitcast i32 %5935 to float
  %5937 = fmul fast float %5910, %5737
  %5938 = fmul fast float %5937, %5924
  %5939 = fmul fast float %5911, %5737
  %5940 = fmul fast float %5939, %5930
  %5941 = fmul fast float %5912, %5737
  %5942 = fmul fast float %5941, %5936
  %5943 = call float @dx.op.binary.f32(i32 36, float %5681, float %5917)  ; FMin(a,b)
  %5944 = fmul fast float %5943, %5919
  %5945 = fsub fast float 1.000000e+00, %5944
  %5946 = bitcast float %5945 to i32
  %5947 = sub nsw i32 2129859010, %5946
  %5948 = bitcast i32 %5947 to float
  %5949 = call float @dx.op.binary.f32(i32 36, float %5682, float %5917)  ; FMin(a,b)
  %5950 = fmul fast float %5949, %5919
  %5951 = fsub fast float 1.000000e+00, %5950
  %5952 = bitcast float %5951 to i32
  %5953 = sub nsw i32 2129859010, %5952
  %5954 = bitcast i32 %5953 to float
  %5955 = call float @dx.op.binary.f32(i32 36, float %5726, float %5917)  ; FMin(a,b)
  %5956 = fmul fast float %5955, %5919
  %5957 = fsub fast float 1.000000e+00, %5956
  %5958 = bitcast float %5957 to i32
  %5959 = sub nsw i32 2129859010, %5958
  %5960 = bitcast i32 %5959 to float
  %5961 = fmul fast float %5913, %5737
  %5962 = fmul fast float %5961, %5948
  %5963 = fmul fast float %5914, %5737
  %5964 = fmul fast float %5963, %5954
  %5965 = fmul fast float %5915, %5737
  %5966 = fmul fast float %5965, %5960
  %5967 = call float @dx.op.dot3.f32(i32 55, float %5938, float %5940, float %5942, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5968 = select i1 %286, float 0.000000e+00, float %5938
  %5969 = select i1 %286, float %5967, float %5940
  %5970 = select i1 %286, float 0.000000e+00, float %5942
  %5971 = call float @dx.op.dot3.f32(i32 55, float %5962, float %5964, float %5966, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5972 = select i1 %286, float 0.000000e+00, float %5962
  %5973 = select i1 %286, float %5971, float %5964
  %5974 = select i1 %286, float 0.000000e+00, float %5966
  %5975 = fmul fast float %4030, %4030
  %5976 = call float @dx.op.unary.f32(i32 7, float %5975)  ; Saturate(value)
  %5977 = fmul fast float %5728, 9.843750e-01
  %5978 = fmul fast float %5690, 9.843750e-01
  %5979 = fadd fast float %5977, 7.812500e-03
  %5980 = fadd fast float %5978, 7.812500e-03
  %5981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %5979, float %5980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5982 = extractvalue %dx.types.ResRet.f32 %5981, 0
  %5983 = extractvalue %dx.types.ResRet.f32 %5981, 1
  %5984 = extractvalue %dx.types.ResRet.f32 %5981, 2
  %5985 = extractvalue %dx.types.ResRet.f32 %5981, 3
  %5986 = fsub fast float 1.000000e+00, %5976
  %5987 = fsub fast float %5984, %5982
  %5988 = fsub fast float %5985, %5983
  %5989 = fmul fast float %5987, %5986
  %5990 = fmul fast float %5988, %5986
  %5991 = fadd fast float %5989, %5982
  %5992 = fadd fast float %5990, %5983
  %5993 = fmul fast float %5991, %5681
  %5994 = fmul fast float %5991, %5682
  %5995 = fmul fast float %5991, %5726
  %5996 = fadd fast float %5993, %5992
  %5997 = fadd fast float %5994, %5992
  %5998 = fadd fast float %5995, %5992
  %5999 = fcmp fast ogt float %4726, 0.000000e+00
  br i1 %5999, label %6000, label %6026

; <label>:6000                                    ; preds = %5888
  %6001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4726, float %5728, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6002 = extractvalue %dx.types.ResRet.f32 %6001, 0
  %6003 = extractvalue %dx.types.ResRet.f32 %6001, 1
  %6004 = extractvalue %dx.types.ResRet.f32 %6001, 2
  %6005 = fadd fast float %6002, -5.000000e-01
  %6006 = fadd fast float %6003, -5.000000e-01
  %6007 = fadd fast float %6004, -5.000000e-01
  %6008 = fsub fast float 1.000000e+00, %5681
  %6009 = fsub fast float 1.000000e+00, %5682
  %6010 = fsub fast float 1.000000e+00, %5726
  %6011 = fmul fast float %5681, 4.000000e+00
  %6012 = fmul fast float %6011, %6008
  %6013 = fmul fast float %6012, %6005
  %6014 = fmul fast float %5682, 4.000000e+00
  %6015 = fmul fast float %6014, %6009
  %6016 = fmul fast float %6015, %6006
  %6017 = fmul fast float %5726, 4.000000e+00
  %6018 = fmul fast float %6017, %6010
  %6019 = fmul fast float %6018, %6007
  %6020 = fadd fast float %6013, %5996
  %6021 = fadd fast float %6016, %5997
  %6022 = fadd fast float %6019, %5998
  %6023 = call float @dx.op.unary.f32(i32 7, float %6020)  ; Saturate(value)
  %6024 = call float @dx.op.unary.f32(i32 7, float %6021)  ; Saturate(value)
  %6025 = call float @dx.op.unary.f32(i32 7, float %6022)  ; Saturate(value)
  br label %6026

; <label>:6026                                    ; preds = %6000, %5888
  %6027 = phi float [ %6023, %6000 ], [ %5996, %5888 ]
  %6028 = phi float [ %6024, %6000 ], [ %5997, %5888 ]
  %6029 = phi float [ %6025, %6000 ], [ %5998, %5888 ]
  %6030 = call float @dx.op.binary.f32(i32 35, float %6028, float %6029)  ; FMax(a,b)
  %6031 = call float @dx.op.binary.f32(i32 35, float %6027, float %6030)  ; FMax(a,b)
  %6032 = fsub fast float 1.000000e+00, %6031
  %6033 = fmul fast float %6032, %5968
  %6034 = fmul fast float %6032, %5969
  %6035 = fmul fast float %6032, %5970
  %6036 = call float @dx.op.dot3.f32(i32 55, float %5684, float %5685, float %5686, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6037 = fcmp fast ogt float %6036, 0x3E7FF19E20000000
  %6038 = fdiv fast float 1.000000e+00, %6036
  %6039 = select i1 %6037, float %6038, float 0.000000e+00
  %6040 = fmul fast float %6039, %5684
  %6041 = fmul fast float %6039, %5685
  %6042 = fmul fast float %6039, %5686
  %6043 = fadd fast float %6040, -1.000000e+00
  %6044 = fadd fast float %6041, -1.000000e+00
  %6045 = fadd fast float %6042, -1.000000e+00
  %6046 = fmul fast float %6043, 5.000000e-01
  %6047 = fmul fast float %6044, 5.000000e-01
  %6048 = fmul fast float %6045, 5.000000e-01
  %6049 = fadd fast float %6046, 1.000000e+00
  %6050 = fadd fast float %6047, 1.000000e+00
  %6051 = fadd fast float %6048, 1.000000e+00
  %6052 = call float @dx.op.binary.f32(i32 35, float %5728, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6053 = fdiv fast float %4030, %6052
  %6054 = fcmp fast olt float %4797, 1.270000e+02
  %6055 = fcmp fast olt float %4798, 1.270000e+02
  %6056 = fcmp fast olt float %4799, 1.270000e+02
  %6057 = fmul fast float %4797, 0xBFF7154760000000
  %6058 = fmul fast float %6057, %6053
  %6059 = fmul fast float %4798, 0xBFF7154760000000
  %6060 = fmul fast float %6059, %6053
  %6061 = fmul fast float %4799, 0xBFF7154760000000
  %6062 = fmul fast float %6061, %6053
  %6063 = call float @dx.op.unary.f32(i32 21, float %6058)  ; Exp(value)
  %6064 = call float @dx.op.unary.f32(i32 21, float %6060)  ; Exp(value)
  %6065 = call float @dx.op.unary.f32(i32 21, float %6062)  ; Exp(value)
  %6066 = call float @dx.op.unary.f32(i32 7, float %6063)  ; Saturate(value)
  %6067 = call float @dx.op.unary.f32(i32 7, float %6064)  ; Saturate(value)
  %6068 = call float @dx.op.unary.f32(i32 7, float %6065)  ; Saturate(value)
  %6069 = select i1 %6054, float %6066, float 0.000000e+00
  %6070 = select i1 %6055, float %6067, float 0.000000e+00
  %6071 = select i1 %6056, float %6068, float 0.000000e+00
  %6072 = fmul fast float %6069, %6032
  %6073 = fmul fast float %6070, %6032
  %6074 = fmul fast float %6071, %6032
  %6075 = fadd fast float %6072, -1.000000e+00
  %6076 = fadd fast float %6073, -1.000000e+00
  %6077 = fadd fast float %6074, -1.000000e+00
  %6078 = fmul fast float %6075, %4752
  %6079 = fmul fast float %6076, %4752
  %6080 = fmul fast float %6077, %4752
  %6081 = fadd fast float %6078, 1.000000e+00
  %6082 = fadd fast float %6079, 1.000000e+00
  %6083 = fadd fast float %6080, 1.000000e+00
  %6084 = fmul fast float %5682, 0x401CF23780000000
  %6085 = fadd fast float %6084, 0x3FF32641C0000000
  %6086 = fdiv fast float 1.000000e+00, %6085
  %6087 = call float @dx.op.dot3.f32(i32 55, float %5516, float %5517, float %5518, float %5687, float %5688, float %5689)  ; Dot3(ax,ay,az,bx,by,bz)
  %6088 = fmul fast float %6086, %6086
  %6089 = fmul fast float %6087, %6087
  %6090 = fsub fast float 1.000000e+00, %6089
  %6091 = fmul fast float %6088, %6090
  %6092 = fsub fast float 1.000000e+00, %6091
  %6093 = fcmp fast oge float %6092, 0.000000e+00
  %6094 = fmul fast float %6086, %5516
  %6095 = fmul fast float %6086, %5517
  %6096 = fmul fast float %6086, %5518
  %6097 = call float @dx.op.unary.f32(i32 24, float %6092)  ; Sqrt(value)
  %6098 = fmul fast float %6087, %6086
  %6099 = fadd fast float %6098, %6097
  %6100 = fmul fast float %6099, %5687
  %6101 = fmul fast float %6099, %5688
  %6102 = fmul fast float %6099, %5689
  %6103 = fsub fast float %6094, %6100
  %6104 = fsub fast float %6095, %6101
  %6105 = fsub fast float %6096, %6102
  %6106 = select i1 %6093, float %6103, float 0.000000e+00
  %6107 = select i1 %6093, float %6104, float 0.000000e+00
  %6108 = select i1 %6093, float %6105, float 0.000000e+00
  %6109 = fmul fast float %6106, %4030
  %6110 = fmul fast float %6107, %4030
  %6111 = fmul fast float %6108, %4030
  %6112 = fadd fast float %6109, %5723
  %6113 = fadd fast float %6110, %5724
  %6114 = fadd fast float %6111, %5725
  %6115 = call float @dx.op.dot3.f32(i32 55, float %5510, float %5511, float %5512, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6116 = fsub fast float 1.000000e+00, %5690
  %6117 = fmul fast float %6116, %4752
  %6118 = fsub fast float 1.000000e+00, %6117
  %6119 = call float @dx.op.unary.f32(i32 7, float %6118)  ; Saturate(value)
  %6120 = fsub fast float 1.000000e+00, %6119
  %6121 = fmul fast float %5682, 0x4012D0A400000000
  %6122 = fadd fast float %6121, 0x3FDB6377A0000000
  %6123 = fmul fast float %6120, %6122
  %6124 = fadd fast float %6123, %6115
  %6125 = call float @dx.op.unary.f32(i32 7, float %6124)  ; Saturate(value)
  %6126 = fmul fast float %6027, %5972
  %6127 = fmul fast float %6028, %5973
  %6128 = fmul fast float %6029, %5974
  %6129 = fsub fast float 1.000000e+00, %5728
  %6130 = bitcast float %6129 to i32
  %6131 = sitofp i32 %6130 to float
  %6132 = fmul fast float %6131, 5.000000e+00
  %6133 = fadd fast float %6132, 0xC1EFBF8940000000
  %6134 = fptosi float %6133 to i32
  %6135 = bitcast i32 %6134 to float
  %6136 = fmul fast float %6135, %4727
  %6137 = fmul fast float %5968, %6136
  %6138 = fmul fast float %6137, %6032
  %6139 = fmul fast float %6138, %6049
  %6140 = fmul fast float %5969, %6136
  %6141 = fmul fast float %6140, %6032
  %6142 = fmul fast float %6141, %6050
  %6143 = fmul fast float %5970, %6136
  %6144 = fmul fast float %6143, %6032
  %6145 = fmul fast float %6144, %6051
  %6146 = fmul fast float %6033, %4752
  %6147 = fmul fast float %6034, %4752
  %6148 = fmul fast float %6035, %4752
  %6149 = fsub fast float 1.000000e+00, %6125
  %6150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6151 = extractvalue %dx.types.CBufRet.f32 %6150, 0
  %6152 = extractvalue %dx.types.CBufRet.f32 %6150, 1
  %6153 = extractvalue %dx.types.CBufRet.f32 %6150, 2
  %6154 = extractvalue %dx.types.CBufRet.f32 %6150, 3
  %6155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6156 = extractvalue %dx.types.CBufRet.f32 %6155, 0
  %6157 = extractvalue %dx.types.CBufRet.f32 %6155, 1
  %6158 = extractvalue %dx.types.CBufRet.f32 %6155, 2
  %6159 = extractvalue %dx.types.CBufRet.f32 %6155, 3
  %6160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.f32 %6160, 0
  %6162 = extractvalue %dx.types.CBufRet.f32 %6160, 1
  %6163 = extractvalue %dx.types.CBufRet.f32 %6160, 2
  %6164 = extractvalue %dx.types.CBufRet.f32 %6160, 3
  %6165 = fmul fast float %6112, %6151
  %6166 = call float @dx.op.tertiary.f32(i32 46, float %6113, float %6152, float %6165)  ; FMad(a,b,c)
  %6167 = call float @dx.op.tertiary.f32(i32 46, float %6114, float %6153, float %6166)  ; FMad(a,b,c)
  %6168 = fadd fast float %6167, %6154
  %6169 = fmul fast float %6112, %6156
  %6170 = call float @dx.op.tertiary.f32(i32 46, float %6113, float %6157, float %6169)  ; FMad(a,b,c)
  %6171 = call float @dx.op.tertiary.f32(i32 46, float %6114, float %6158, float %6170)  ; FMad(a,b,c)
  %6172 = fadd fast float %6171, %6159
  %6173 = fmul fast float %6112, %6161
  %6174 = call float @dx.op.tertiary.f32(i32 46, float %6113, float %6162, float %6173)  ; FMad(a,b,c)
  %6175 = call float @dx.op.tertiary.f32(i32 46, float %6114, float %6163, float %6174)  ; FMad(a,b,c)
  %6176 = fadd fast float %6175, %6164
  %6177 = fdiv fast float %6168, %6176
  %6178 = fdiv fast float %6172, %6176
  %6179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6180 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6181 = extractvalue %dx.types.CBufRet.f32 %6179, 1
  %6182 = fmul fast float %6180, %6177
  %6183 = fmul fast float %6181, %6178
  %6184 = extractvalue %dx.types.CBufRet.f32 %6179, 2
  %6185 = extractvalue %dx.types.CBufRet.f32 %6179, 3
  %6186 = fadd fast float %6182, %6184
  %6187 = fadd fast float %6183, %6185
  %6188 = call float @dx.op.unary.f32(i32 7, float %6186)  ; Saturate(value)
  %6189 = call float @dx.op.unary.f32(i32 7, float %6187)  ; Saturate(value)
  %6190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6191 = extractvalue %dx.types.CBufRet.f32 %6190, 0
  %6192 = extractvalue %dx.types.CBufRet.f32 %6190, 1
  %6193 = fmul fast float %6191, %6188
  %6194 = fmul fast float %6192, %6189
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 1
  %6197 = extractvalue %dx.types.CBufRet.f32 %6195, 2
  %6198 = fsub fast float %6196, %6197
  %6199 = fmul fast float %6198, %6149
  %6200 = fadd fast float %6199, %6197
  %6201 = fmul fast float %299, 2.000000e+00
  %6202 = fmul fast float %300, 2.000000e+00
  %6203 = fadd fast float %6201, -1.000000e+00
  %6204 = fadd fast float %6202, -1.000000e+00
  %6205 = fmul fast float %6200, %6203
  %6206 = fmul fast float %6200, %6204
  %6207 = fadd fast float %6205, %6193
  %6208 = fadd fast float %6206, %6194
  %6209 = extractvalue %dx.types.CBufRet.f32 %6190, 2
  %6210 = extractvalue %dx.types.CBufRet.f32 %6190, 3
  %6211 = fmul fast float %6207, %6209
  %6212 = fmul fast float %6208, %6210
  %6213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %6211, float %6212, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6214 = extractvalue %dx.types.ResRet.f32 %6213, 0
  %6215 = fcmp fast ogt float %6214, -1.000000e+00
  %6216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6217 = extractvalue %dx.types.CBufRet.f32 %6216, 1
  %6218 = select i1 %6215, float %6217, float 1.000000e+00
  %6219 = fadd fast float %6214, 1.000000e+00
  %6220 = fmul fast float %6218, %6219
  %6221 = call float @dx.op.unary.f32(i32 6, float %6220)  ; FAbs(value)
  %6222 = fsub fast float %6221, %6176
  %6223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6224 = extractvalue %dx.types.CBufRet.f32 %6223, 2
  %6225 = fmul fast float %6224, %6221
  %6226 = fdiv fast float 1.600000e+02, %6225
  %6227 = fmul fast float %6125, %6125
  %6228 = fmul fast float %6227, 0xBFB5B17960000000
  %6229 = fmul fast float %6228, %6222
  %6230 = fmul fast float %6229, %6226
  %6231 = call float @dx.op.unary.f32(i32 21, float %6230)  ; Exp(value)
  %6232 = fmul fast float %6231, 0x3FF04B2960000000
  %6233 = fsub fast float 0x3FF04B2960000000, %6232
  %6234 = call float @dx.op.unary.f32(i32 7, float %6233)  ; Saturate(value)
  %6235 = fmul fast float %6234, 4.000000e+00
  %6236 = fadd fast float %299, -5.000000e-01
  %6237 = fadd fast float %300, -5.000000e-01
  %6238 = fmul fast float %6234, 0x3FBEB851E0000000
  %6239 = call float @dx.op.unary.f32(i32 7, float %6238)  ; Saturate(value)
  %6240 = fmul fast float %6239, %6236
  %6241 = fmul fast float %6239, %6237
  %6242 = fadd fast float %6240, %6186
  %6243 = fadd fast float %6241, %6187
  %6244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.i32 %6244, 0
  %6246 = icmp eq i32 %6245, 0
  br i1 %6246, label %6252, label %6247, !dx.controlflow.hints !88

; <label>:6247                                    ; preds = %6026
  %6248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %6242, float %6243, float undef, float undef, i32 0, i32 0, i32 undef, float %6235)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6249 = extractvalue %dx.types.ResRet.f32 %6248, 0
  %6250 = extractvalue %dx.types.ResRet.f32 %6248, 1
  %6251 = extractvalue %dx.types.ResRet.f32 %6248, 2
  br label %6257

; <label>:6252                                    ; preds = %6026
  %6253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %37, float %6242, float %6243, float undef, float undef, i32 0, i32 0, i32 undef, float %6235)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6254 = extractvalue %dx.types.ResRet.f32 %6253, 0
  %6255 = extractvalue %dx.types.ResRet.f32 %6253, 1
  %6256 = extractvalue %dx.types.ResRet.f32 %6253, 2
  br label %6257

; <label>:6257                                    ; preds = %6252, %6247
  %6258 = phi float [ %6249, %6247 ], [ %6254, %6252 ]
  %6259 = phi float [ %6250, %6247 ], [ %6255, %6252 ]
  %6260 = phi float [ %6251, %6247 ], [ %6256, %6252 ]
  %6261 = select i1 %286, float 0.000000e+00, float %6259
  %6262 = select i1 %286, float 0.000000e+00, float %6260
  %6263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6264 = extractvalue %dx.types.CBufRet.f32 %6263, 1
  %6265 = fmul fast float %6258, %6081
  %6266 = fmul fast float %6265, %6264
  %6267 = fmul fast float %6261, %6082
  %6268 = fmul fast float %6267, %6264
  %6269 = fmul fast float %6262, %6083
  %6270 = fmul fast float %6269, %6264
  %6271 = fadd fast float %6126, %4713
  %6272 = fadd fast float %6271, %6139
  %6273 = fadd fast float %6272, %6266
  %6274 = fmul fast float %6273, %4752
  %6275 = fadd fast float %6127, %4714
  %6276 = fadd fast float %6275, %6142
  %6277 = fadd fast float %6276, %6268
  %6278 = fmul fast float %6277, %4752
  %6279 = fadd fast float %6128, %4715
  %6280 = fadd fast float %6279, %6145
  %6281 = fadd fast float %6280, %6270
  %6282 = fmul fast float %6281, %4752
  %6283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6284 = extractvalue %dx.types.CBufRet.f32 %6283, 3
  %6285 = fcmp fast oeq float %6284, 0.000000e+00
  br i1 %6285, label %7430, label %6286

; <label>:6286                                    ; preds = %6257
  %6287 = extractvalue %dx.types.CBufRet.f32 %6283, 0
  %6288 = extractvalue %dx.types.CBufRet.f32 %6283, 1
  %6289 = extractvalue %dx.types.CBufRet.f32 %6283, 2
  %6290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6291 = extractvalue %dx.types.CBufRet.f32 %6290, 0
  %6292 = extractvalue %dx.types.CBufRet.f32 %6290, 1
  %6293 = extractvalue %dx.types.CBufRet.f32 %6290, 2
  %6294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6295 = extractvalue %dx.types.CBufRet.f32 %6294, 0
  %6296 = extractvalue %dx.types.CBufRet.f32 %6294, 1
  %6297 = call float @dx.op.dot3.f32(i32 55, float %6291, float %6292, float %6293, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6298 = select i1 %286, float %6295, float %6291
  %6299 = select i1 %286, float %6297, float %6292
  %6300 = select i1 %286, float %6296, float %6293
  %6301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6302 = extractvalue %dx.types.CBufRet.f32 %6301, 2
  %6303 = fmul fast float %6302, %108
  %6304 = fmul fast float %6302, %109
  %6305 = fmul fast float %6302, %110
  %6306 = fadd fast float %6303, %180
  %6307 = fadd fast float %6304, %181
  %6308 = fadd fast float %6305, %182
  %6309 = fcmp fast olt float %6284, 0.000000e+00
  br i1 %6309, label %6949, label %6310

; <label>:6310                                    ; preds = %6286
  %6311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6312 = extractvalue %dx.types.CBufRet.f32 %6311, 0
  %6313 = extractvalue %dx.types.CBufRet.f32 %6311, 1
  %6314 = extractvalue %dx.types.CBufRet.f32 %6311, 2
  %6315 = extractvalue %dx.types.CBufRet.f32 %6311, 3
  %6316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6317 = extractvalue %dx.types.CBufRet.f32 %6316, 0
  %6318 = extractvalue %dx.types.CBufRet.f32 %6316, 1
  %6319 = extractvalue %dx.types.CBufRet.f32 %6316, 2
  %6320 = extractvalue %dx.types.CBufRet.f32 %6316, 3
  %6321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6322 = extractvalue %dx.types.CBufRet.f32 %6321, 0
  %6323 = extractvalue %dx.types.CBufRet.f32 %6321, 1
  %6324 = extractvalue %dx.types.CBufRet.f32 %6321, 2
  %6325 = extractvalue %dx.types.CBufRet.f32 %6321, 3
  %6326 = fmul fast float %6312, %6306
  %6327 = call float @dx.op.tertiary.f32(i32 46, float %6307, float %6313, float %6326)  ; FMad(a,b,c)
  %6328 = call float @dx.op.tertiary.f32(i32 46, float %6308, float %6314, float %6327)  ; FMad(a,b,c)
  %6329 = fadd fast float %6328, %6315
  %6330 = fmul fast float %6317, %6306
  %6331 = call float @dx.op.tertiary.f32(i32 46, float %6307, float %6318, float %6330)  ; FMad(a,b,c)
  %6332 = call float @dx.op.tertiary.f32(i32 46, float %6308, float %6319, float %6331)  ; FMad(a,b,c)
  %6333 = fadd fast float %6332, %6320
  %6334 = fmul fast float %6322, %6306
  %6335 = call float @dx.op.tertiary.f32(i32 46, float %6307, float %6323, float %6334)  ; FMad(a,b,c)
  %6336 = call float @dx.op.tertiary.f32(i32 46, float %6308, float %6324, float %6335)  ; FMad(a,b,c)
  %6337 = fadd fast float %6336, %6325
  %6338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6339 = extractvalue %dx.types.CBufRet.f32 %6338, 0
  %6340 = fcmp fast une float %6339, 0.000000e+00
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 0
  %6343 = extractvalue %dx.types.CBufRet.f32 %6341, 1
  %6344 = extractvalue %dx.types.CBufRet.f32 %6341, 3
  %6345 = fmul fast float %6344, %6329
  %6346 = fmul fast float %6344, %6333
  %6347 = fadd fast float %6345, %6342
  %6348 = fadd fast float %6346, %6343
  %6349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6349, 0
  %6351 = extractvalue %dx.types.CBufRet.f32 %6349, 1
  %6352 = extractvalue %dx.types.CBufRet.f32 %6349, 3
  %6353 = fmul fast float %6352, %6329
  %6354 = fmul fast float %6352, %6333
  %6355 = fadd fast float %6353, %6350
  %6356 = fadd fast float %6354, %6351
  %6357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6358 = extractvalue %dx.types.CBufRet.f32 %6357, 1
  %6359 = fsub fast float %6358, %6337
  %6360 = extractvalue %dx.types.CBufRet.f32 %6357, 2
  %6361 = fmul fast float %6359, %6360
  %6362 = fsub fast float 1.000000e+00, %6361
  %6363 = call float @dx.op.unary.f32(i32 7, float %6362)  ; Saturate(value)
  br i1 %6340, label %6424, label %6364

; <label>:6364                                    ; preds = %6310
  %6365 = extractvalue %dx.types.CBufRet.f32 %6349, 2
  %6366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6367 = extractvalue %dx.types.CBufRet.f32 %6366, 2
  %6368 = fadd fast float %6367, %6365
  %6369 = fcmp fast ogt float %6368, 0.000000e+00
  br i1 %6369, label %6370, label %6394

; <label>:6370                                    ; preds = %6364
  %6371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6372 = extractvalue %dx.types.CBufRet.f32 %6371, 0
  %6373 = extractvalue %dx.types.CBufRet.f32 %6371, 1
  %6374 = fsub fast float %6355, %6372
  %6375 = fsub fast float %6356, %6373
  %6376 = fcmp fast olt float %6374, 0.000000e+00
  %6377 = fcmp fast olt float %6375, 0.000000e+00
  %6378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6378, 0
  %6380 = extractvalue %dx.types.CBufRet.f32 %6378, 1
  %6381 = extractvalue %dx.types.CBufRet.f32 %6378, 2
  %6382 = extractvalue %dx.types.CBufRet.f32 %6378, 3
  %6383 = select i1 %6376, float %6379, float %6381
  %6384 = select i1 %6377, float %6380, float %6382
  %6385 = fmul fast float %6383, %6374
  %6386 = fmul fast float %6384, %6375
  %6387 = call float @dx.op.unary.f32(i32 6, float %6385)  ; FAbs(value)
  %6388 = call float @dx.op.unary.f32(i32 6, float %6386)  ; FAbs(value)
  %6389 = extractvalue %dx.types.CBufRet.f32 %6301, 0
  %6390 = call float @dx.op.binary.f32(i32 35, float %6387, float %6388)  ; FMax(a,b)
  %6391 = fsub fast float %6389, %6390
  %6392 = call float @dx.op.unary.f32(i32 7, float %6391)  ; Saturate(value)
  %6393 = fmul fast float %6392, %6363
  br label %6394

; <label>:6394                                    ; preds = %6370, %6364
  %6395 = phi float [ %6393, %6370 ], [ 0.000000e+00, %6364 ]
  %6396 = extractvalue %dx.types.CBufRet.f32 %6341, 2
  %6397 = extractvalue %dx.types.CBufRet.f32 %6366, 1
  %6398 = fadd fast float %6397, %6396
  %6399 = fcmp fast ogt float %6398, 0.000000e+00
  br i1 %6399, label %6400, label %6424

; <label>:6400                                    ; preds = %6394
  %6401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6402 = extractvalue %dx.types.CBufRet.f32 %6401, 0
  %6403 = extractvalue %dx.types.CBufRet.f32 %6401, 1
  %6404 = fsub fast float %6347, %6402
  %6405 = fsub fast float %6348, %6403
  %6406 = fcmp fast olt float %6404, 0.000000e+00
  %6407 = fcmp fast olt float %6405, 0.000000e+00
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 0
  %6410 = extractvalue %dx.types.CBufRet.f32 %6408, 1
  %6411 = extractvalue %dx.types.CBufRet.f32 %6408, 2
  %6412 = extractvalue %dx.types.CBufRet.f32 %6408, 3
  %6413 = select i1 %6406, float %6409, float %6411
  %6414 = select i1 %6407, float %6410, float %6412
  %6415 = fmul fast float %6413, %6404
  %6416 = fmul fast float %6414, %6405
  %6417 = call float @dx.op.unary.f32(i32 6, float %6415)  ; FAbs(value)
  %6418 = call float @dx.op.unary.f32(i32 6, float %6416)  ; FAbs(value)
  %6419 = extractvalue %dx.types.CBufRet.f32 %6301, 0
  %6420 = call float @dx.op.binary.f32(i32 35, float %6417, float %6418)  ; FMax(a,b)
  %6421 = fsub fast float %6419, %6420
  %6422 = call float @dx.op.unary.f32(i32 7, float %6421)  ; Saturate(value)
  %6423 = fmul fast float %6422, %6363
  br label %6424

; <label>:6424                                    ; preds = %6400, %6394, %6310
  %6425 = phi float [ 0.000000e+00, %6310 ], [ %6423, %6400 ], [ 0.000000e+00, %6394 ]
  %6426 = phi float [ 0.000000e+00, %6310 ], [ %6395, %6400 ], [ %6395, %6394 ]
  %6427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.f32 %6427, 1
  %6429 = call float @dx.op.unary.f32(i32 7, float %6428)  ; Saturate(value)
  %6430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6431 = extractvalue %dx.types.CBufRet.f32 %6430, 0
  %6432 = extractvalue %dx.types.CBufRet.f32 %6430, 1
  %6433 = fsub fast float %6329, %6431
  %6434 = fsub fast float %6333, %6432
  %6435 = fcmp fast olt float %6433, 0.000000e+00
  %6436 = fcmp fast olt float %6434, 0.000000e+00
  %6437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6438 = extractvalue %dx.types.CBufRet.f32 %6437, 0
  %6439 = extractvalue %dx.types.CBufRet.f32 %6437, 1
  %6440 = extractvalue %dx.types.CBufRet.f32 %6437, 2
  %6441 = extractvalue %dx.types.CBufRet.f32 %6437, 3
  %6442 = select i1 %6435, float %6438, float %6440
  %6443 = select i1 %6436, float %6439, float %6441
  %6444 = fmul fast float %6442, %6433
  %6445 = fmul fast float %6443, %6434
  %6446 = call float @dx.op.unary.f32(i32 6, float %6444)  ; FAbs(value)
  %6447 = call float @dx.op.unary.f32(i32 6, float %6445)  ; FAbs(value)
  %6448 = extractvalue %dx.types.CBufRet.f32 %6301, 0
  %6449 = call float @dx.op.binary.f32(i32 35, float %6446, float %6447)  ; FMax(a,b)
  %6450 = fsub fast float %6448, %6449
  %6451 = call float @dx.op.unary.f32(i32 7, float %6450)  ; Saturate(value)
  %6452 = call float @dx.op.binary.f32(i32 36, float %6451, float %6429)  ; FMin(a,b)
  %6453 = fmul fast float %6452, %6363
  %6454 = fsub fast float %6425, %6453
  %6455 = fsub fast float %6426, %6425
  %6456 = fsub fast float %6455, %6453
  %6457 = call float @dx.op.binary.f32(i32 35, float %6425, float %6426)  ; FMax(a,b)
  %6458 = call float @dx.op.binary.f32(i32 35, float %6453, float %6457)  ; FMax(a,b)
  %6459 = fcmp fast olt float %6458, 1.000000e+00
  br i1 %6459, label %6460, label %6858, !dx.controlflow.hints !89

; <label>:6460                                    ; preds = %6424
  %6461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6462 = extractvalue %dx.types.CBufRet.f32 %6461, 0
  %6463 = fcmp fast une float %6462, 0.000000e+00
  br i1 %6463, label %6464, label %6858, !dx.controlflow.hints !90

; <label>:6464                                    ; preds = %6460
  %6465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6466 = extractvalue %dx.types.CBufRet.f32 %6465, 0
  %6467 = extractvalue %dx.types.CBufRet.f32 %6465, 1
  %6468 = extractvalue %dx.types.CBufRet.f32 %6465, 2
  %6469 = extractvalue %dx.types.CBufRet.f32 %6465, 3
  %6470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6471 = extractvalue %dx.types.CBufRet.f32 %6470, 0
  %6472 = extractvalue %dx.types.CBufRet.f32 %6470, 1
  %6473 = extractvalue %dx.types.CBufRet.f32 %6470, 2
  %6474 = extractvalue %dx.types.CBufRet.f32 %6470, 3
  %6475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6475, 0
  %6477 = extractvalue %dx.types.CBufRet.f32 %6475, 1
  %6478 = extractvalue %dx.types.CBufRet.f32 %6475, 2
  %6479 = extractvalue %dx.types.CBufRet.f32 %6475, 3
  %6480 = fmul fast float %6466, %6306
  %6481 = call float @dx.op.tertiary.f32(i32 46, float %6307, float %6467, float %6480)  ; FMad(a,b,c)
  %6482 = call float @dx.op.tertiary.f32(i32 46, float %6308, float %6468, float %6481)  ; FMad(a,b,c)
  %6483 = fadd fast float %6482, %6469
  %6484 = fmul fast float %6471, %6306
  %6485 = call float @dx.op.tertiary.f32(i32 46, float %6307, float %6472, float %6484)  ; FMad(a,b,c)
  %6486 = call float @dx.op.tertiary.f32(i32 46, float %6308, float %6473, float %6485)  ; FMad(a,b,c)
  %6487 = fadd fast float %6486, %6474
  %6488 = fmul fast float %6476, %6306
  %6489 = call float @dx.op.tertiary.f32(i32 46, float %6307, float %6477, float %6488)  ; FMad(a,b,c)
  %6490 = call float @dx.op.tertiary.f32(i32 46, float %6308, float %6478, float %6489)  ; FMad(a,b,c)
  %6491 = fadd fast float %6490, %6479
  %6492 = fcmp fast oge float %6483, 1.000000e+00
  %6493 = fcmp fast oge float %6487, 1.000000e+00
  %6494 = or i1 %6492, %6493
  %6495 = fcmp fast olt float %6483, 0.000000e+00
  %6496 = fcmp fast olt float %6487, 0.000000e+00
  %6497 = or i1 %6495, %6496
  %6498 = or i1 %6494, %6497
  br i1 %6498, label %6858, label %6499, !dx.controlflow.hints !91

; <label>:6499                                    ; preds = %6464
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 0
  %6502 = extractvalue %dx.types.CBufRet.f32 %6500, 1
  %6503 = extractvalue %dx.types.CBufRet.f32 %6500, 2
  %6504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6505 = extractvalue %dx.types.CBufRet.i32 %6504, 2
  %6506 = uitofp i32 %6505 to float
  %6507 = extractvalue %dx.types.CBufRet.i32 %6504, 3
  %6508 = uitofp i32 %6507 to float
  %6509 = extractvalue %dx.types.CBufRet.f32 %6500, 3
  %6510 = fmul fast float %6509, 2.000000e+00
  %6511 = fsub fast float %6483, %6501
  %6512 = fsub fast float %6487, %6502
  %6513 = fmul fast float %6510, %6511
  %6514 = fmul fast float %6510, %6512
  %6515 = fdiv fast float 1.000000e+00, %6289
  %6516 = fmul fast float %6514, %6515
  %6517 = call float @dx.op.unary.f32(i32 6, float %6516)  ; FAbs(value)
  %6518 = fmul fast float %6503, %6308
  %6519 = fmul fast float %6518, %6510
  %6520 = call float @dx.op.unary.f32(i32 6, float %6519)  ; FAbs(value)
  %6521 = call float @dx.op.unary.f32(i32 6, float %6513)  ; FAbs(value)
  %6522 = call float @dx.op.binary.f32(i32 35, float %6520, float %6517)  ; FMax(a,b)
  %6523 = call float @dx.op.binary.f32(i32 35, float %6521, float %6522)  ; FMax(a,b)
  %6524 = fmul fast float %6523, 2.000000e+00
  %6525 = call float @dx.op.unary.f32(i32 23, float %6524)  ; Log(value)
  %6526 = call float @dx.op.binary.f32(i32 35, float %6525, float %6506)  ; FMax(a,b)
  %6527 = call float @dx.op.unary.f32(i32 22, float %6526)  ; Frc(value)
  %6528 = fadd fast float %6527, 0xBFEA666660000000
  %6529 = fmul fast float %6528, 8.000000e+00
  %6530 = call float @dx.op.unary.f32(i32 7, float %6529)  ; Saturate(value)
  %6531 = call float @dx.op.unary.f32(i32 27, float %6526)  ; Round_ni(value)
  %6532 = fadd fast float %6531, %6530
  %6533 = call float @dx.op.binary.f32(i32 36, float %6532, float %6508)  ; FMin(a,b)
  %6534 = call float @dx.op.unary.f32(i32 27, float %6533)  ; Round_ni(value)
  %6535 = fsub fast float -0.000000e+00, %6534
  %6536 = call float @dx.op.unary.f32(i32 21, float %6535)  ; Exp(value)
  %6537 = fmul fast float %6536, %6510
  %6538 = fmul fast float %6537, %6483
  %6539 = fmul fast float %6537, %6487
  %6540 = fmul fast float %6538, 2.500000e-01
  %6541 = fmul fast float %6539, 2.500000e-01
  %6542 = fadd fast float %6540, 5.000000e-01
  %6543 = fadd fast float %6541, 5.000000e-01
  %6544 = fsub fast float %6508, %6506
  %6545 = fptoui float %6544 to i32
  %6546 = add i32 %6545, 320
  %6547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 %6546)  ; CBufferLoadLegacy(handle,regIndex)
  %6548 = extractvalue %dx.types.CBufRet.f32 %6547, 0
  %6549 = extractvalue %dx.types.CBufRet.f32 %6547, 1
  %6550 = fcmp fast une float %6533, %6508
  %6551 = fsub fast float %6483, %6548
  %6552 = fsub fast float %6487, %6549
  %6553 = call float @dx.op.unary.f32(i32 6, float %6551)  ; FAbs(value)
  %6554 = call float @dx.op.unary.f32(i32 6, float %6552)  ; FAbs(value)
  %6555 = fmul fast float %6553, %6537
  %6556 = fmul fast float %6554, %6537
  %6557 = fcmp fast olt float %6555, 1.000000e+00
  %6558 = fcmp fast olt float %6556, 1.000000e+00
  %6559 = and i1 %6557, %6558
  %6560 = or i1 %6550, %6559
  br i1 %6560, label %6561, label %6858, !dx.controlflow.hints !92

; <label>:6561                                    ; preds = %6499
  %6562 = fmul fast float %6539, 5.000000e-01
  %6563 = fmul fast float %6538, 5.000000e-01
  %6564 = fadd fast float %6562, 5.000000e-01
  %6565 = fadd fast float %6563, 5.000000e-01
  %6566 = sitofp i32 %6505 to float
  %6567 = fsub fast float %6533, %6566
  %6568 = call float @dx.op.unary.f32(i32 27, float %6567)  ; Round_ni(value)
  %6569 = call float @dx.op.unary.f32(i32 22, float %6533)  ; Frc(value)
  %6570 = call float @dx.op.unary.f32(i32 22, float %6565)  ; Frc(value)
  %6571 = call float @dx.op.unary.f32(i32 22, float %6564)  ; Frc(value)
  %6572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %38, float %6570, float %6571, float %6568, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6573 = extractvalue %dx.types.ResRet.f32 %6572, 0
  %6574 = extractvalue %dx.types.ResRet.f32 %6572, 1
  %6575 = extractvalue %dx.types.ResRet.f32 %6572, 2
  %6576 = extractvalue %dx.types.ResRet.f32 %6572, 3
  %6577 = fcmp fast ogt float %6569, 0.000000e+00
  br i1 %6577, label %6578, label %6599, !dx.controlflow.hints !93

; <label>:6578                                    ; preds = %6561
  %6579 = fadd fast float %6568, 1.000000e+00
  %6580 = call float @dx.op.unary.f32(i32 22, float %6542)  ; Frc(value)
  %6581 = call float @dx.op.unary.f32(i32 22, float %6543)  ; Frc(value)
  %6582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %38, float %6580, float %6581, float %6579, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6583 = extractvalue %dx.types.ResRet.f32 %6582, 0
  %6584 = extractvalue %dx.types.ResRet.f32 %6582, 1
  %6585 = extractvalue %dx.types.ResRet.f32 %6582, 2
  %6586 = extractvalue %dx.types.ResRet.f32 %6582, 3
  %6587 = fsub fast float %6583, %6573
  %6588 = fsub fast float %6584, %6574
  %6589 = fsub fast float %6585, %6575
  %6590 = fsub fast float %6586, %6576
  %6591 = fmul fast float %6587, %6569
  %6592 = fmul fast float %6588, %6569
  %6593 = fmul fast float %6589, %6569
  %6594 = fmul fast float %6590, %6569
  %6595 = fadd fast float %6591, %6573
  %6596 = fadd fast float %6592, %6574
  %6597 = fadd fast float %6593, %6575
  %6598 = fadd fast float %6594, %6576
  br label %6599

; <label>:6599                                    ; preds = %6578, %6561
  %6600 = phi float [ %6595, %6578 ], [ %6573, %6561 ]
  %6601 = phi float [ %6596, %6578 ], [ %6574, %6561 ]
  %6602 = phi float [ %6597, %6578 ], [ %6575, %6561 ]
  %6603 = phi float [ %6598, %6578 ], [ %6576, %6561 ]
  %6604 = fadd fast float %6600, -5.000000e-01
  %6605 = fadd fast float %6602, -5.000000e-01
  %6606 = fmul fast float %6604, 0xBFD5555560000000
  %6607 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6605, float %6606)  ; FMad(a,b,c)
  %6608 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6601, float 0.000000e+00)  ; FMad(a,b,c)
  %6609 = fadd fast float %6608, %6603
  %6610 = fmul fast float %6604, -7.500000e-01
  %6611 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6605, float %6610)  ; FMad(a,b,c)
  %6612 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6601, float 0.000000e+00)  ; FMad(a,b,c)
  %6613 = fadd fast float %6612, %6603
  %6614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6615 = extractvalue %dx.types.CBufRet.f32 %6614, 0
  %6616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6617 = extractvalue %dx.types.CBufRet.f32 %6616, 0
  %6618 = extractvalue %dx.types.CBufRet.f32 %6616, 1
  %6619 = extractvalue %dx.types.CBufRet.f32 %6616, 2
  %6620 = extractvalue %dx.types.CBufRet.f32 %6616, 3
  %6621 = fsub fast float %6617, %6607
  %6622 = fsub fast float %6618, %6609
  %6623 = fsub fast float %6619, %6611
  %6624 = fsub fast float %6620, %6613
  %6625 = fmul fast float %6621, %6615
  %6626 = fmul fast float %6622, %6615
  %6627 = fmul fast float %6623, %6615
  %6628 = fmul fast float %6624, %6615
  %6629 = fadd fast float %6625, %6607
  %6630 = fadd fast float %6626, %6609
  %6631 = fadd fast float %6627, %6611
  %6632 = fadd fast float %6628, %6613
  %6633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6634 = extractvalue %dx.types.ResRet.i32 %6633, 0
  %6635 = and i32 %6634, 536870911
  %6636 = uitofp i32 %6635 to float
  %6637 = fmul fast float %6636, %6483
  %6638 = fmul fast float %6636, %6487
  %6639 = fptoui float %6637 to i32
  %6640 = fptoui float %6638 to i32
  %6641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6642 = extractvalue %dx.types.ResRet.i32 %6641, 0
  %6643 = and i32 %6642, 31
  %6644 = lshr i32 %6639, %6643
  %6645 = lshr i32 %6640, %6643
  %6646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6647 = extractvalue %dx.types.ResRet.i32 %6646, 0
  %6648 = and i32 %6647, 31
  %6649 = shl i32 1, %6648
  %6650 = call i32 @dx.op.binary.i32(i32 40, i32 %6649, i32 4)  ; UMin(a,b)
  %6651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6652 = extractvalue %dx.types.ResRet.i32 %6651, 0
  %6653 = extractvalue %dx.types.ResRet.i32 %6651, 1
  %6654 = icmp eq i32 %6650, 0
  br i1 %6654, label %6696, label %6655

; <label>:6655                                    ; preds = %6599
  br label %6656

; <label>:6656                                    ; preds = %6684, %6655
  %6657 = phi i32 [ %6687, %6684 ], [ 0, %6655 ]
  %6658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6659 = extractvalue %dx.types.ResRet.i32 %6658, 0
  %6660 = lshr i32 %6659, 16
  %6661 = and i32 %6660, 31
  %6662 = shl i32 %6645, %6661
  %6663 = add i32 %6662, %6644
  %6664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6665 = extractvalue %dx.types.ResRet.i32 %6664, 0
  %6666 = and i32 %6665, 31
  %6667 = shl i32 %6663, %6666
  %6668 = add i32 %6667, %6657
  %6669 = shl i32 %6668, 2
  %6670 = add i32 %6669, 32
  %6671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6670, i32 undef)  ; BufferLoad(srv,index,wot)
  %6672 = extractvalue %dx.types.ResRet.i32 %6671, 0
  %6673 = icmp slt i32 %6672, 0
  %6674 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6657
  %6675 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6657
  %6676 = bitcast float* %6674 to i32*
  %6677 = bitcast float* %6675 to i32*
  br i1 %6673, label %6678, label %6684

; <label>:6678                                    ; preds = %6656
  %6679 = and i32 %6672, 1073741823
  %6680 = add nuw nsw i32 %6679, 20
  %6681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6680, i32 undef)  ; BufferLoad(srv,index,wot)
  %6682 = extractvalue %dx.types.ResRet.i32 %6681, 0
  %6683 = extractvalue %dx.types.ResRet.i32 %6681, 1
  br label %6684

; <label>:6684                                    ; preds = %6678, %6656
  %6685 = phi i32 [ %6682, %6678 ], [ %6652, %6656 ]
  %6686 = phi i32 [ %6683, %6678 ], [ %6653, %6656 ]
  store i32 %6685, i32* %6676, align 4
  store i32 %6686, i32* %6677, align 4
  %6687 = add nuw i32 %6657, 1
  %6688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6689 = extractvalue %dx.types.CBufRet.i32 %6688, 2
  %6690 = icmp eq i32 %6689, 0
  %6691 = icmp ugt i32 %6672, -1073741825
  %6692 = and i1 %6691, %6690
  %6693 = icmp ult i32 %6687, %6650
  %6694 = and i1 %6692, %6693
  br i1 %6694, label %6656, label %6695

; <label>:6695                                    ; preds = %6684
  br label %6696

; <label>:6696                                    ; preds = %6695, %6599
  %6697 = phi i32 [ 0, %6599 ], [ %6687, %6695 ]
  %6698 = extractvalue %dx.types.CBufRet.f32 %6461, 2
  %6699 = fptoui float %6698 to i32
  %6700 = icmp eq i32 %6699, 0
  br i1 %6700, label %6752, label %6701

; <label>:6701                                    ; preds = %6696
  br label %6702

; <label>:6702                                    ; preds = %6747, %6701
  %6703 = phi i32 [ %6748, %6747 ], [ %6697, %6701 ]
  %6704 = phi i32 [ %6749, %6747 ], [ 0, %6701 ]
  %6705 = lshr i32 %6704, 2
  %6706 = and i32 %6704, 3
  %6707 = add nuw nsw i32 %6705, 83
  %6708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 %6707)  ; CBufferLoadLegacy(handle,regIndex)
  %6709 = extractvalue %dx.types.CBufRet.i32 %6708, 0
  %6710 = extractvalue %dx.types.CBufRet.i32 %6708, 1
  %6711 = extractvalue %dx.types.CBufRet.i32 %6708, 2
  %6712 = extractvalue %dx.types.CBufRet.i32 %6708, 3
  %6713 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 0
  store i32 %6709, i32* %6713, align 4
  %6714 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 1
  store i32 %6710, i32* %6714, align 4
  %6715 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 2
  store i32 %6711, i32* %6715, align 4
  %6716 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 3
  store i32 %6712, i32* %6716, align 4
  %6717 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 %6706
  %6718 = load i32, i32* %6717, align 4, !tbaa !94, !noalias !98
  %6719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6720 = extractvalue %dx.types.ResRet.i32 %6719, 0
  %6721 = lshr i32 %6720, 16
  %6722 = and i32 %6721, 31
  %6723 = shl i32 %6645, %6722
  %6724 = add i32 %6723, %6644
  %6725 = shl i32 %6724, 2
  %6726 = add i32 %6725, %6718
  %6727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6726, i32 undef)  ; BufferLoad(srv,index,wot)
  %6728 = extractvalue %dx.types.ResRet.i32 %6727, 0
  %6729 = icmp eq i32 %6728, 0
  br i1 %6729, label %6747, label %6730

; <label>:6730                                    ; preds = %6702
  %6731 = icmp slt i32 %6728, 0
  %6732 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6703
  %6733 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6703
  %6734 = bitcast float* %6732 to i32*
  %6735 = bitcast float* %6733 to i32*
  br i1 %6731, label %6736, label %6743

; <label>:6736                                    ; preds = %6730
  %6737 = and i32 %6728, 1073741823
  %6738 = add i32 %6718, 20
  %6739 = add i32 %6738, %6737
  %6740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6739, i32 undef)  ; BufferLoad(srv,index,wot)
  %6741 = extractvalue %dx.types.ResRet.i32 %6740, 0
  %6742 = extractvalue %dx.types.ResRet.i32 %6740, 1
  br label %6743

; <label>:6743                                    ; preds = %6736, %6730
  %6744 = phi i32 [ %6741, %6736 ], [ %6652, %6730 ]
  %6745 = phi i32 [ %6742, %6736 ], [ %6653, %6730 ]
  store i32 %6744, i32* %6734, align 4
  store i32 %6745, i32* %6735, align 4
  %6746 = add i32 %6703, 1
  br label %6747

; <label>:6747                                    ; preds = %6743, %6702
  %6748 = phi i32 [ %6703, %6702 ], [ %6746, %6743 ]
  %6749 = add nuw i32 %6704, 1
  %6750 = icmp eq i32 %6749, %6699
  br i1 %6750, label %6751, label %6702

; <label>:6751                                    ; preds = %6747
  br label %6752

; <label>:6752                                    ; preds = %6751, %6696
  %6753 = phi i32 [ %6697, %6696 ], [ %6748, %6751 ]
  %6754 = icmp eq i32 %6753, 1
  %6755 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %6756 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %6754, label %6757, label %6760

; <label>:6757                                    ; preds = %6752
  %6758 = load float, float* %6755, align 4
  %6759 = load float, float* %6756, align 4
  br label %6787

; <label>:6760                                    ; preds = %6752
  %6761 = load float, float* %6755, align 4
  %6762 = load float, float* %6756, align 4
  %6763 = fdiv fast float 1.000000e+00, %6762
  %6764 = fsub fast float %6761, %6763
  %6765 = icmp ugt i32 %6753, 1
  br i1 %6765, label %6766, label %6782

; <label>:6766                                    ; preds = %6760
  br label %6767

; <label>:6767                                    ; preds = %6767, %6766
  %6768 = phi float [ %6777, %6767 ], [ %6764, %6766 ]
  %6769 = phi float [ %6778, %6767 ], [ %6761, %6766 ]
  %6770 = phi i32 [ %6779, %6767 ], [ 1, %6766 ]
  %6771 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6770
  %6772 = load float, float* %6771, align 4
  %6773 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6770
  %6774 = load float, float* %6773, align 4
  %6775 = fdiv fast float 1.000000e+00, %6774
  %6776 = fsub fast float %6772, %6775
  %6777 = call float @dx.op.binary.f32(i32 36, float %6768, float %6776)  ; FMin(a,b)
  %6778 = call float @dx.op.binary.f32(i32 35, float %6769, float %6772)  ; FMax(a,b)
  %6779 = add nuw i32 %6770, 1
  %6780 = icmp eq i32 %6779, %6753
  br i1 %6780, label %6781, label %6767

; <label>:6781                                    ; preds = %6767
  br label %6782

; <label>:6782                                    ; preds = %6781, %6760
  %6783 = phi float [ %6764, %6760 ], [ %6777, %6781 ]
  %6784 = phi float [ %6761, %6760 ], [ %6778, %6781 ]
  %6785 = fsub fast float %6784, %6783
  %6786 = fdiv fast float 1.000000e+00, %6785
  br label %6787

; <label>:6787                                    ; preds = %6782, %6757
  %6788 = phi float [ %6758, %6757 ], [ %6784, %6782 ]
  %6789 = phi float [ %6759, %6757 ], [ %6786, %6782 ]
  %6790 = fadd fast float %6491, %6788
  %6791 = fmul fast float %6790, %6789
  %6792 = call float @dx.op.unary.f32(i32 7, float %6791)  ; Saturate(value)
  %6793 = fmul fast float %6792, 2.000000e+00
  %6794 = fsub fast float 1.000000e+00, %6793
  %6795 = fmul fast float %6629, %6629
  %6796 = fsub fast float %6630, %6795
  %6797 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6796)  ; FMax(a,b)
  %6798 = fdiv fast float 1.000000e+00, %6797
  %6799 = fmul fast float %6630, %6629
  %6800 = fsub fast float %6631, %6799
  %6801 = fsub fast float %6794, %6629
  %6802 = fmul fast float %6794, %6794
  %6803 = fsub fast float %6802, %6630
  %6804 = fmul fast float %6798, %6800
  %6805 = fmul fast float %6804, %6801
  %6806 = fsub fast float %6803, %6805
  %6807 = fmul fast float %6630, %6630
  %6808 = fsub fast float %6632, %6807
  %6809 = fmul fast float %6800, %6800
  %6810 = fmul fast float %6809, %6798
  %6811 = fsub fast float %6808, %6810
  %6812 = fdiv fast float %6806, %6811
  %6813 = fmul fast float %6812, %6800
  %6814 = fsub fast float %6801, %6813
  %6815 = fmul fast float %6814, %6798
  %6816 = fmul fast float %6815, %6629
  %6817 = fsub fast float 1.000000e+00, %6816
  %6818 = fmul fast float %6812, %6630
  %6819 = fsub fast float %6817, %6818
  %6820 = fmul fast float %6815, %6815
  %6821 = fmul fast float %6812, 4.000000e+00
  %6822 = fmul fast float %6821, %6819
  %6823 = fsub fast float %6820, %6822
  %6824 = call float @dx.op.unary.f32(i32 24, float %6823)  ; Sqrt(value)
  %6825 = fcmp fast oge float %6815, 0.000000e+00
  %6826 = fsub fast float -0.000000e+00, %6824
  %6827 = select i1 %6825, float %6826, float %6824
  %6828 = fsub fast float %6827, %6815
  %6829 = fdiv fast float %6828, %6812
  %6830 = fdiv fast float %6819, %6828
  %6831 = fmul fast float %6829, 5.000000e-01
  %6832 = fmul fast float %6830, 2.000000e+00
  %6833 = select i1 %6825, float %6831, float %6832
  %6834 = select i1 %6825, float %6832, float %6831
  %6835 = call float @dx.op.binary.f32(i32 35, float %6833, float %6834)  ; FMax(a,b)
  %6836 = call float @dx.op.binary.f32(i32 36, float %6833, float %6834)  ; FMin(a,b)
  %6837 = fcmp fast ogt float %6794, %6835
  %6838 = fsub fast float %6794, %6836
  %6839 = fsub fast float %6794, %6835
  %6840 = fsub fast float %6835, %6836
  %6841 = select i1 %6837, float %6839, float %6840
  %6842 = fmul float %6838, %6841
  %6843 = select i1 %6837, float %6836, float %6794
  %6844 = fcmp fast ogt float %6794, %6836
  %6845 = fmul fast float %6843, %6835
  %6846 = fadd fast float %6843, %6835
  %6847 = fmul fast float %6846, %6629
  %6848 = fadd fast float %6845, %6630
  %6849 = fsub fast float %6848, %6847
  %6850 = fdiv fast float %6849, %6842
  %6851 = select i1 %6844, float %6850, float 0.000000e+00
  %6852 = fsub fast float 1.000000e+00, %6851
  %6853 = select i1 %6837, float %6852, float %6851
  %6854 = call float @dx.op.unary.f32(i32 7, float %6853)  ; Saturate(value)
  %6855 = extractvalue %dx.types.CBufRet.f32 %6614, 3
  %6856 = fmul fast float %6855, %6854
  %6857 = fsub fast float 1.000000e+00, %6856
  br label %6858

; <label>:6858                                    ; preds = %6787, %6499, %6464, %6460, %6424
  %6859 = phi float [ 1.000000e+00, %6424 ], [ %6857, %6787 ], [ 1.000000e+00, %6464 ], [ 1.000000e+00, %6499 ], [ 1.000000e+00, %6460 ]
  %6860 = fcmp fast ogt float %6456, 0.000000e+00
  br i1 %6860, label %6861, label %6869, !dx.controlflow.hints !107

; <label>:6861                                    ; preds = %6858
  %6862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6863 = extractvalue %dx.types.CBufRet.f32 %6862, 2
  %6864 = fadd fast float %6863, %6337
  %6865 = call float @dx.op.binary.f32(i32 35, float %6864, float 0.000000e+00)  ; FMax(a,b)
  %6866 = fadd fast float %6865, 0x3F10000000000000
  %6867 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %41, float %6355, float %6356, float undef, float undef, i32 0, i32 0, i32 undef, float %6866)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6868 = extractvalue %dx.types.ResRet.f32 %6867, 0
  br label %6869

; <label>:6869                                    ; preds = %6861, %6858
  %6870 = phi float [ %6868, %6861 ], [ 1.000000e+00, %6858 ]
  %6871 = fcmp fast ogt float %6454, 0.000000e+00
  br i1 %6871, label %6872, label %6880, !dx.controlflow.hints !108

; <label>:6872                                    ; preds = %6869
  %6873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6874 = extractvalue %dx.types.CBufRet.f32 %6873, 1
  %6875 = fadd fast float %6874, %6337
  %6876 = call float @dx.op.binary.f32(i32 35, float %6875, float 0.000000e+00)  ; FMax(a,b)
  %6877 = fadd fast float %6876, 0x3F10000000000000
  %6878 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %41, float %6347, float %6348, float undef, float undef, i32 0, i32 0, i32 undef, float %6877)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6879 = extractvalue %dx.types.ResRet.f32 %6878, 0
  br label %6880

; <label>:6880                                    ; preds = %6872, %6869
  %6881 = phi float [ %6879, %6872 ], [ 1.000000e+00, %6869 ]
  %6882 = fcmp fast ogt float %6453, 0.000000e+00
  br i1 %6882, label %6883, label %6895, !dx.controlflow.hints !109

; <label>:6883                                    ; preds = %6880
  %6884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6885 = extractvalue %dx.types.CBufRet.f32 %6884, 0
  %6886 = fadd fast float %6885, %6337
  %6887 = call float @dx.op.binary.f32(i32 35, float %6886, float 0.000000e+00)  ; FMax(a,b)
  %6888 = fadd fast float %6887, 0x3F10000000000000
  br i1 %6340, label %6889, label %6892, !dx.controlflow.hints !110

; <label>:6889                                    ; preds = %6883
  %6890 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %41, float %6329, float %6333, float undef, float undef, i32 0, i32 0, i32 undef, float %6888)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6891 = extractvalue %dx.types.ResRet.f32 %6890, 0
  br label %6895

; <label>:6892                                    ; preds = %6883
  %6893 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %41, float %6329, float %6333, float undef, float undef, i32 0, i32 0, i32 undef, float %6888)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6894 = extractvalue %dx.types.ResRet.f32 %6893, 0
  br label %6895

; <label>:6895                                    ; preds = %6892, %6889, %6880
  %6896 = phi float [ %6891, %6889 ], [ %6894, %6892 ], [ 1.000000e+00, %6880 ]
  %6897 = fsub fast float %6870, %6859
  %6898 = fmul fast float %6897, %6426
  %6899 = fadd fast float %6898, %6859
  %6900 = fsub fast float %6881, %6899
  %6901 = fmul fast float %6900, %6425
  %6902 = fadd fast float %6901, %6899
  %6903 = fsub fast float %6896, %6902
  %6904 = fmul fast float %6903, %6453
  %6905 = fadd fast float %6904, %6902
  %6906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6907 = extractvalue %dx.types.CBufRet.f32 %6906, 2
  %6908 = fcmp fast ogt float %6907, 0.000000e+00
  br i1 %6908, label %6909, label %6949, !dx.controlflow.hints !111

; <label>:6909                                    ; preds = %6895
  %6910 = fcmp fast ugt float %6907, 0.000000e+00
  br i1 %6910, label %6911, label %6946

; <label>:6911                                    ; preds = %6909
  %6912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6913 = extractvalue %dx.types.CBufRet.f32 %6912, 0
  %6914 = extractvalue %dx.types.CBufRet.f32 %6912, 1
  %6915 = extractvalue %dx.types.CBufRet.f32 %6912, 2
  %6916 = extractvalue %dx.types.CBufRet.f32 %6912, 3
  %6917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6918 = extractvalue %dx.types.CBufRet.f32 %6917, 0
  %6919 = extractvalue %dx.types.CBufRet.f32 %6917, 1
  %6920 = extractvalue %dx.types.CBufRet.f32 %6917, 2
  %6921 = extractvalue %dx.types.CBufRet.f32 %6917, 3
  %6922 = extractvalue %dx.types.CBufRet.f32 %6906, 0
  %6923 = extractvalue %dx.types.CBufRet.f32 %6906, 1
  %6924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6925 = extractvalue %dx.types.CBufRet.f32 %6924, 0
  %6926 = extractvalue %dx.types.CBufRet.f32 %6924, 1
  %6927 = extractvalue %dx.types.CBufRet.f32 %6924, 2
  %6928 = fadd fast float %6925, %6306
  %6929 = fadd fast float %6926, %6307
  %6930 = fadd fast float %6927, %6308
  %6931 = fmul fast float %6928, %6913
  %6932 = call float @dx.op.tertiary.f32(i32 46, float %6914, float %6929, float %6931)  ; FMad(a,b,c)
  %6933 = call float @dx.op.tertiary.f32(i32 46, float %6915, float %6930, float %6932)  ; FMad(a,b,c)
  %6934 = fadd fast float %6933, %6916
  %6935 = fmul fast float %6928, %6918
  %6936 = call float @dx.op.tertiary.f32(i32 46, float %6919, float %6929, float %6935)  ; FMad(a,b,c)
  %6937 = call float @dx.op.tertiary.f32(i32 46, float %6920, float %6930, float %6936)  ; FMad(a,b,c)
  %6938 = fadd fast float %6937, %6921
  %6939 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %36, float %6934, float %6938, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6940 = extractvalue %dx.types.ResRet.f32 %6939, 0
  %6941 = fmul fast float %6940, %6923
  %6942 = fadd fast float %6941, %6922
  %6943 = call float @dx.op.unary.f32(i32 7, float %6942)  ; Saturate(value)
  %6944 = fmul fast float %6943, %6907
  %6945 = fsub fast float 1.000000e+00, %6944
  br label %6946

; <label>:6946                                    ; preds = %6911, %6909
  %6947 = phi float [ %6945, %6911 ], [ 1.000000e+00, %6909 ]
  %6948 = fmul fast float %6947, %6905
  br label %6949

; <label>:6949                                    ; preds = %6946, %6895, %6286
  %6950 = phi float [ 1.000000e+00, %6286 ], [ %6948, %6946 ], [ %6905, %6895 ]
  %6951 = call float @dx.op.binary.f32(i32 36, float %6950, float %6950)  ; FMin(a,b)
  %6952 = call float @dx.op.binary.f32(i32 36, float %6950, float %6951)  ; FMin(a,b)
  %6953 = fcmp fast ogt float %6952, 0.000000e+00
  br i1 %6953, label %6954, label %7115, !dx.controlflow.hints !112

; <label>:6954                                    ; preds = %6949
  %6955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6956 = extractvalue %dx.types.CBufRet.f32 %6955, 0
  %6957 = extractvalue %dx.types.CBufRet.f32 %6955, 1
  %6958 = extractvalue %dx.types.CBufRet.f32 %6955, 2
  %6959 = extractvalue %dx.types.CBufRet.f32 %6955, 3
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 0
  %6962 = extractvalue %dx.types.CBufRet.f32 %6960, 1
  %6963 = extractvalue %dx.types.CBufRet.f32 %6960, 2
  %6964 = extractvalue %dx.types.CBufRet.f32 %6960, 3
  %6965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6966 = extractvalue %dx.types.CBufRet.f32 %6965, 0
  %6967 = extractvalue %dx.types.CBufRet.f32 %6965, 1
  %6968 = extractvalue %dx.types.CBufRet.f32 %6965, 2
  %6969 = extractvalue %dx.types.CBufRet.f32 %6965, 3
  %6970 = fmul fast float %6956, %6306
  %6971 = call float @dx.op.tertiary.f32(i32 46, float %6307, float %6957, float %6970)  ; FMad(a,b,c)
  %6972 = call float @dx.op.tertiary.f32(i32 46, float %6308, float %6958, float %6971)  ; FMad(a,b,c)
  %6973 = fadd fast float %6972, %6959
  %6974 = fmul fast float %6961, %6306
  %6975 = call float @dx.op.tertiary.f32(i32 46, float %6307, float %6962, float %6974)  ; FMad(a,b,c)
  %6976 = call float @dx.op.tertiary.f32(i32 46, float %6308, float %6963, float %6975)  ; FMad(a,b,c)
  %6977 = fadd fast float %6976, %6964
  %6978 = fmul fast float %6966, %6306
  %6979 = call float @dx.op.tertiary.f32(i32 46, float %6307, float %6967, float %6978)  ; FMad(a,b,c)
  %6980 = call float @dx.op.tertiary.f32(i32 46, float %6308, float %6968, float %6979)  ; FMad(a,b,c)
  %6981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6982 = extractvalue %dx.types.CBufRet.f32 %6981, 0
  %6983 = extractvalue %dx.types.CBufRet.f32 %6981, 1
  %6984 = extractvalue %dx.types.CBufRet.f32 %6981, 3
  %6985 = fmul fast float %6984, %6973
  %6986 = fmul fast float %6984, %6977
  %6987 = fadd fast float %6985, %6982
  %6988 = fadd fast float %6986, %6983
  %6989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6990 = extractvalue %dx.types.CBufRet.f32 %6989, 0
  %6991 = extractvalue %dx.types.CBufRet.f32 %6989, 1
  %6992 = fsub fast float %6987, %6990
  %6993 = fsub fast float %6988, %6991
  %6994 = fcmp fast olt float %6992, 0.000000e+00
  %6995 = fcmp fast olt float %6993, 0.000000e+00
  %6996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6997 = extractvalue %dx.types.CBufRet.f32 %6996, 0
  %6998 = extractvalue %dx.types.CBufRet.f32 %6996, 1
  %6999 = extractvalue %dx.types.CBufRet.f32 %6996, 2
  %7000 = extractvalue %dx.types.CBufRet.f32 %6996, 3
  %7001 = select i1 %6994, float %6997, float %6999
  %7002 = select i1 %6995, float %6998, float %7000
  %7003 = fmul fast float %7001, %6992
  %7004 = fmul fast float %7002, %6993
  %7005 = call float @dx.op.unary.f32(i32 6, float %7003)  ; FAbs(value)
  %7006 = call float @dx.op.unary.f32(i32 6, float %7004)  ; FAbs(value)
  %7007 = extractvalue %dx.types.CBufRet.f32 %6301, 0
  %7008 = call float @dx.op.binary.f32(i32 35, float %7005, float %7006)  ; FMax(a,b)
  %7009 = fsub fast float %7007, %7008
  %7010 = call float @dx.op.unary.f32(i32 7, float %7009)  ; Saturate(value)
  %7011 = fcmp fast ogt float %7010, 0.000000e+00
  br i1 %7011, label %7012, label %7053, !dx.controlflow.hints !113

; <label>:7012                                    ; preds = %6954
  %7013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %39, float %6987, float %6988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7014 = extractvalue %dx.types.ResRet.f32 %7013, 1
  %7015 = fcmp fast ogt float %7014, 0.000000e+00
  br i1 %7015, label %7016, label %7048

; <label>:7016                                    ; preds = %7012
  %7017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %39, float %6987, float %6988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7018 = extractvalue %dx.types.ResRet.f32 %7017, 0
  %7019 = extractvalue %dx.types.ResRet.f32 %7017, 1
  %7020 = extractvalue %dx.types.ResRet.f32 %7017, 2
  %7021 = extractvalue %dx.types.ResRet.f32 %7017, 3
  %7022 = fsub fast float 1.000000e+00, %6969
  %7023 = fsub fast float %7022, %6980
  %7024 = fmul fast float %7023, 0x400921FB60000000
  %7025 = fadd fast float %7024, 0x3FF921FB60000000
  %7026 = call float @dx.op.unary.f32(i32 13, float %7025)  ; Sin(value)
  %7027 = fadd fast float %7026, -1.000000e+00
  %7028 = fmul fast float %7027, 0x3FD45F3060000000
  %7029 = fmul fast float %7023, 0x401921FB60000000
  %7030 = fadd fast float %7029, 0x400921FB60000000
  %7031 = call float @dx.op.unary.f32(i32 13, float %7030)  ; Sin(value)
  %7032 = fadd fast float %7031, 0x3E7777A5C0000000
  %7033 = fmul fast float %7032, 0x3FC45F3060000000
  %7034 = fmul fast float %7023, 0x4022D97C80000000
  %7035 = fadd fast float %7034, 0x4012D97C80000000
  %7036 = call float @dx.op.unary.f32(i32 13, float %7035)  ; Sin(value)
  %7037 = fadd fast float %7036, 1.000000e+00
  %7038 = fmul fast float %7037, 0x3FBB2995E0000000
  %7039 = fmul fast float %7023, 0x402921FB60000000
  %7040 = fadd fast float %7039, 0x401921FB60000000
  %7041 = call float @dx.op.unary.f32(i32 13, float %7040)  ; Sin(value)
  %7042 = fadd fast float %7041, 0xBE8777A5C0000000
  %7043 = fmul fast float %7042, 0x3FB45F3060000000
  %7044 = call float @dx.op.dot4.f32(i32 56, float %7018, float %7019, float %7020, float %7021, float %7028, float %7033, float %7038, float %7043)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7045 = fmul fast float %7044, 0xBFF7154760000000
  %7046 = call float @dx.op.unary.f32(i32 21, float %7045)  ; Exp(value)
  %7047 = call float @dx.op.unary.f32(i32 7, float %7046)  ; Saturate(value)
  br label %7048

; <label>:7048                                    ; preds = %7016, %7012
  %7049 = phi float [ %7047, %7016 ], [ 1.000000e+00, %7012 ]
  %7050 = fadd fast float %7049, -1.000000e+00
  %7051 = fmul fast float %7050, %7010
  %7052 = fadd fast float %7051, 1.000000e+00
  br label %7053

; <label>:7053                                    ; preds = %7048, %6954
  %7054 = phi float [ %7052, %7048 ], [ 1.000000e+00, %6954 ]
  %7055 = fmul fast float %7054, %6950
  %7056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7057 = extractvalue %dx.types.CBufRet.f32 %7056, 0
  %7058 = extractvalue %dx.types.CBufRet.f32 %7056, 1
  %7059 = extractvalue %dx.types.CBufRet.f32 %7056, 2
  %7060 = fadd fast float %7057, %180
  %7061 = fadd fast float %7058, %181
  %7062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7063 = extractvalue %dx.types.CBufRet.f32 %7062, 1
  %7064 = fsub fast float -0.000000e+00, %7060
  %7065 = fsub fast float -0.000000e+00, %7061
  %7066 = fsub fast float -0.000000e+00, %182
  %7067 = fsub fast float %7066, %7059
  %7068 = fadd fast float %7067, %7063
  %7069 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7064, float %7065, float %7068)  ; Dot3(ax,ay,az,bx,by,bz)
  %7070 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6287, float %6288, float %6289)  ; Dot3(ax,ay,az,bx,by,bz)
  %7071 = fdiv fast float 1.000000e+00, %7070
  %7072 = fmul fast float %7071, %7069
  %7073 = fmul fast float %6287, %7072
  %7074 = fmul fast float %6288, %7072
  %7075 = fadd fast float %7073, %7060
  %7076 = fadd fast float %7074, %7061
  %7077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7078 = extractvalue %dx.types.CBufRet.f32 %7077, 0
  %7079 = extractvalue %dx.types.CBufRet.f32 %7077, 1
  %7080 = fsub fast float %7075, %7078
  %7081 = fsub fast float %7076, %7079
  %7082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7083 = extractvalue %dx.types.CBufRet.f32 %7082, 2
  %7084 = extractvalue %dx.types.CBufRet.f32 %7082, 3
  %7085 = fmul fast float %7080, %7083
  %7086 = fmul fast float %7081, %7084
  %7087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7088 = extractvalue %dx.types.CBufRet.i32 %7087, 3
  %7089 = icmp eq i32 %7088, 0
  br i1 %7089, label %7095, label %7090

; <label>:7090                                    ; preds = %7053
  %7091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %7085, float %7086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7092 = extractvalue %dx.types.ResRet.f32 %7091, 0
  %7093 = extractvalue %dx.types.ResRet.f32 %7091, 1
  %7094 = extractvalue %dx.types.ResRet.f32 %7091, 2
  br label %7100

; <label>:7095                                    ; preds = %7053
  %7096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %7085, float %7086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7097 = extractvalue %dx.types.ResRet.f32 %7096, 0
  %7098 = extractvalue %dx.types.ResRet.f32 %7096, 1
  %7099 = extractvalue %dx.types.ResRet.f32 %7096, 2
  br label %7100

; <label>:7100                                    ; preds = %7095, %7090
  %7101 = phi float [ %7092, %7090 ], [ %7097, %7095 ]
  %7102 = phi float [ %7093, %7090 ], [ %7098, %7095 ]
  %7103 = phi float [ %7094, %7090 ], [ %7099, %7095 ]
  %7104 = extractvalue %dx.types.CBufRet.f32 %7062, 2
  %7105 = fmul fast float %7104, %7101
  %7106 = extractvalue %dx.types.CBufRet.f32 %7062, 0
  %7107 = fsub fast float %7072, %7106
  %7108 = fsub fast float %7107, %7105
  %7109 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7108)  ; FMax(a,b)
  %7110 = fmul fast float %7109, %7102
  %7111 = call float @dx.op.binary.f32(i32 36, float %7103, float %7110)  ; FMin(a,b)
  %7112 = fmul fast float %7111, 0xBFF7154760000000
  %7113 = call float @dx.op.unary.f32(i32 21, float %7112)  ; Exp(value)
  %7114 = fmul fast float %7055, %7113
  br label %7115

; <label>:7115                                    ; preds = %7100, %6949
  %7116 = phi float [ %7114, %7100 ], [ %6950, %6949 ]
  %7117 = call float @dx.op.binary.f32(i32 36, float %7116, float %7116)  ; FMin(a,b)
  %7118 = call float @dx.op.binary.f32(i32 36, float %7116, float %7117)  ; FMin(a,b)
  %7119 = fcmp fast ogt float %7118, 0.000000e+00
  br i1 %7119, label %7120, label %7430, !dx.controlflow.hints !114

; <label>:7120                                    ; preds = %7115
  %7121 = fmul fast float %7116, %6298
  %7122 = fmul fast float %7116, %6299
  %7123 = fmul fast float %7116, %6300
  %7124 = fsub fast float %6287, %213
  %7125 = fsub fast float %6288, %214
  %7126 = fsub fast float %6289, %215
  %7127 = call float @dx.op.dot3.f32(i32 55, float %7124, float %7125, float %7126, float %7124, float %7125, float %7126)  ; Dot3(ax,ay,az,bx,by,bz)
  %7128 = call float @dx.op.unary.f32(i32 25, float %7127)  ; Rsqrt(value)
  %7129 = fmul fast float %7128, %7124
  %7130 = fmul fast float %7128, %7125
  %7131 = fmul fast float %7128, %7126
  %7132 = call float @dx.op.dot3.f32(i32 55, float %6287, float %6288, float %6289, float %5687, float %5688, float %5689)  ; Dot3(ax,ay,az,bx,by,bz)
  %7133 = call float @dx.op.dot3.f32(i32 55, float %5516, float %5517, float %5518, float %7129, float %7130, float %7131)  ; Dot3(ax,ay,az,bx,by,bz)
  %7134 = call float @dx.op.unary.f32(i32 7, float %7132)  ; Saturate(value)
  %7135 = fmul fast float %7134, %7134
  %7136 = fmul fast float %7135, %5741
  %7137 = call float @dx.op.unary.f32(i32 7, float %7136)  ; Saturate(value)
  %7138 = fmul fast float %7137, %7134
  %7139 = call float @dx.op.dot3.f32(i32 55, float %5687, float %5688, float %5689, float %7129, float %7130, float %7131)  ; Dot3(ax,ay,az,bx,by,bz)
  %7140 = fmul fast float %7139, %7139
  %7141 = call float @dx.op.unary.f32(i32 6, float %7132)  ; FAbs(value)
  %7142 = call float @dx.op.binary.f32(i32 35, float %6116, float 0x3F847AE140000000)  ; FMax(a,b)
  %7143 = fmul fast float %7142, %7142
  %7144 = fmul fast float %7143, %7143
  %7145 = fsub fast float 1.000000e+00, %7144
  %7146 = fmul fast float %5728, %5728
  %7147 = fmul fast float %7146, %7145
  %7148 = fadd fast float %7147, %7144
  %7149 = bitcast float %7148 to i32
  %7150 = ashr i32 %7149, 1
  %7151 = add nsw i32 %7150, 532487669
  %7152 = bitcast i32 %7151 to float
  %7153 = fadd fast float %7152, %5728
  %7154 = fmul fast float %7144, %7140
  %7155 = fsub fast float 1.000000e+00, %7140
  %7156 = fadd fast float %7155, %7154
  %7157 = fmul fast float %7141, %7141
  %7158 = fmul fast float %7157, %7145
  %7159 = fadd fast float %7158, %7144
  %7160 = bitcast float %7159 to i32
  %7161 = ashr i32 %7160, 1
  %7162 = add nsw i32 %7161, 532487669
  %7163 = bitcast i32 %7162 to float
  %7164 = fadd fast float %7163, %7141
  %7165 = fmul fast float %7156, %7156
  %7166 = fmul fast float %7165, %7153
  %7167 = fmul fast float %7166, %7164
  %7168 = fdiv fast float 0x3FF0A00000000000, %7167
  %7169 = fmul fast float %7168, %7144
  %7170 = fmul fast float %5976, 0x3FF9999980000000
  %7171 = fsub fast float 5.000000e+00, %7170
  %7172 = call float @dx.op.unary.f32(i32 6, float %7133)  ; FAbs(value)
  %7173 = fsub fast float 1.000000e+00, %7172
  %7174 = fmul fast float %5976, 0x41D9660740000000
  %7175 = fadd fast float %7174, 0xC1EFBF8940000000
  %7176 = bitcast float %7173 to i32
  %7177 = sitofp i32 %7176 to float
  %7178 = fmul fast float %7177, %7171
  %7179 = fadd fast float %7175, %7178
  %7180 = fptosi float %7179 to i32
  %7181 = bitcast i32 %7180 to float
  %7182 = fsub fast float 1.000000e+00, %5681
  %7183 = fsub fast float 1.000000e+00, %5682
  %7184 = fsub fast float 1.000000e+00, %5726
  %7185 = fmul fast float %7181, %7182
  %7186 = fmul fast float %7181, %7183
  %7187 = fmul fast float %7181, %7184
  %7188 = fadd fast float %7185, %5681
  %7189 = fadd fast float %7186, %5682
  %7190 = fadd fast float %7187, %5726
  br i1 %5999, label %7191, label %7214

; <label>:7191                                    ; preds = %7120
  %7192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4726, float %7172, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7193 = extractvalue %dx.types.ResRet.f32 %7192, 0
  %7194 = extractvalue %dx.types.ResRet.f32 %7192, 1
  %7195 = extractvalue %dx.types.ResRet.f32 %7192, 2
  %7196 = fadd fast float %7193, -5.000000e-01
  %7197 = fadd fast float %7194, -5.000000e-01
  %7198 = fadd fast float %7195, -5.000000e-01
  %7199 = fmul fast float %5681, 4.000000e+00
  %7200 = fmul fast float %7199, %7182
  %7201 = fmul fast float %7200, %7196
  %7202 = fmul fast float %5682, 4.000000e+00
  %7203 = fmul fast float %7202, %7183
  %7204 = fmul fast float %7203, %7197
  %7205 = fmul fast float %5726, 4.000000e+00
  %7206 = fmul fast float %7205, %7184
  %7207 = fmul fast float %7206, %7198
  %7208 = fadd fast float %7201, %7188
  %7209 = fadd fast float %7204, %7189
  %7210 = fadd fast float %7207, %7190
  %7211 = call float @dx.op.unary.f32(i32 7, float %7208)  ; Saturate(value)
  %7212 = call float @dx.op.unary.f32(i32 7, float %7209)  ; Saturate(value)
  %7213 = call float @dx.op.unary.f32(i32 7, float %7210)  ; Saturate(value)
  br label %7214

; <label>:7214                                    ; preds = %7191, %7120
  %7215 = phi float [ %7211, %7191 ], [ %7188, %7120 ]
  %7216 = phi float [ %7212, %7191 ], [ %7189, %7120 ]
  %7217 = phi float [ %7213, %7191 ], [ %7190, %7120 ]
  %7218 = fmul fast float %7132, 9.843750e-01
  %7219 = fadd fast float %7218, 7.812500e-03
  %7220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %7219, float %5980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7221 = extractvalue %dx.types.ResRet.f32 %7220, 0
  %7222 = extractvalue %dx.types.ResRet.f32 %7220, 1
  %7223 = extractvalue %dx.types.ResRet.f32 %7220, 2
  %7224 = extractvalue %dx.types.ResRet.f32 %7220, 3
  %7225 = fsub fast float %7223, %7221
  %7226 = fsub fast float %7224, %7222
  %7227 = fmul fast float %7225, %5986
  %7228 = fmul fast float %7226, %5986
  %7229 = fadd fast float %7227, %7221
  %7230 = fadd fast float %7228, %7222
  %7231 = fmul fast float %7229, %5681
  %7232 = fmul fast float %7229, %5682
  %7233 = fmul fast float %7229, %5726
  %7234 = fadd fast float %7231, %7230
  %7235 = fadd fast float %7232, %7230
  %7236 = fadd fast float %7233, %7230
  br i1 %5999, label %7237, label %7260

; <label>:7237                                    ; preds = %7214
  %7238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4726, float %7132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7239 = extractvalue %dx.types.ResRet.f32 %7238, 0
  %7240 = extractvalue %dx.types.ResRet.f32 %7238, 1
  %7241 = extractvalue %dx.types.ResRet.f32 %7238, 2
  %7242 = fadd fast float %7239, -5.000000e-01
  %7243 = fadd fast float %7240, -5.000000e-01
  %7244 = fadd fast float %7241, -5.000000e-01
  %7245 = fmul fast float %5681, 4.000000e+00
  %7246 = fmul fast float %7245, %7182
  %7247 = fmul fast float %7246, %7242
  %7248 = fmul fast float %5682, 4.000000e+00
  %7249 = fmul fast float %7248, %7183
  %7250 = fmul fast float %7249, %7243
  %7251 = fmul fast float %5726, 4.000000e+00
  %7252 = fmul fast float %7251, %7184
  %7253 = fmul fast float %7252, %7244
  %7254 = fadd fast float %7247, %7234
  %7255 = fadd fast float %7250, %7235
  %7256 = fadd fast float %7253, %7236
  %7257 = call float @dx.op.unary.f32(i32 7, float %7254)  ; Saturate(value)
  %7258 = call float @dx.op.unary.f32(i32 7, float %7255)  ; Saturate(value)
  %7259 = call float @dx.op.unary.f32(i32 7, float %7256)  ; Saturate(value)
  br label %7260

; <label>:7260                                    ; preds = %7237, %7214
  %7261 = phi float [ %7257, %7237 ], [ %7234, %7214 ]
  %7262 = phi float [ %7258, %7237 ], [ %7235, %7214 ]
  %7263 = phi float [ %7259, %7237 ], [ %7236, %7214 ]
  %7264 = call float @dx.op.binary.f32(i32 35, float %7262, float %7263)  ; FMax(a,b)
  %7265 = call float @dx.op.binary.f32(i32 35, float %7261, float %7264)  ; FMax(a,b)
  %7266 = fsub fast float 1.000000e+00, %7265
  %7267 = call float @dx.op.binary.f32(i32 35, float %7141, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7268 = fdiv fast float %4030, %7267
  %7269 = fmul fast float %6057, %7268
  %7270 = fmul fast float %6059, %7268
  %7271 = fmul fast float %6061, %7268
  %7272 = call float @dx.op.unary.f32(i32 21, float %7269)  ; Exp(value)
  %7273 = call float @dx.op.unary.f32(i32 21, float %7270)  ; Exp(value)
  %7274 = call float @dx.op.unary.f32(i32 21, float %7271)  ; Exp(value)
  %7275 = call float @dx.op.unary.f32(i32 7, float %7272)  ; Saturate(value)
  %7276 = call float @dx.op.unary.f32(i32 7, float %7273)  ; Saturate(value)
  %7277 = call float @dx.op.unary.f32(i32 7, float %7274)  ; Saturate(value)
  %7278 = select i1 %6054, float %7275, float 0.000000e+00
  %7279 = select i1 %6055, float %7276, float 0.000000e+00
  %7280 = select i1 %6056, float %7277, float 0.000000e+00
  %7281 = fsub fast float -0.000000e+00, %5687
  %7282 = fsub fast float -0.000000e+00, %5688
  %7283 = fsub fast float -0.000000e+00, %5689
  %7284 = call float @dx.op.dot3.f32(i32 55, float %6287, float %6288, float %6289, float %7281, float %7282, float %7283)  ; Dot3(ax,ay,az,bx,by,bz)
  %7285 = call float @dx.op.unary.f32(i32 7, float %7284)  ; Saturate(value)
  %7286 = fmul fast float %7285, 9.843750e-01
  %7287 = fadd fast float %7286, 7.812500e-03
  %7288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %7287, float %5980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7289 = extractvalue %dx.types.ResRet.f32 %7288, 0
  %7290 = extractvalue %dx.types.ResRet.f32 %7288, 1
  %7291 = extractvalue %dx.types.ResRet.f32 %7288, 2
  %7292 = extractvalue %dx.types.ResRet.f32 %7288, 3
  %7293 = fsub fast float %7291, %7289
  %7294 = fsub fast float %7292, %7290
  %7295 = fmul fast float %7293, %5986
  %7296 = fmul fast float %7294, %5986
  %7297 = fadd fast float %7295, %7289
  %7298 = fadd fast float %7296, %7290
  %7299 = fmul fast float %7297, %5681
  %7300 = fmul fast float %7297, %5682
  %7301 = fmul fast float %7297, %5726
  %7302 = fadd fast float %7299, %7298
  %7303 = fadd fast float %7300, %7298
  %7304 = fadd fast float %7301, %7298
  br i1 %5999, label %7305, label %7328

; <label>:7305                                    ; preds = %7260
  %7306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4726, float %7285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7307 = extractvalue %dx.types.ResRet.f32 %7306, 0
  %7308 = extractvalue %dx.types.ResRet.f32 %7306, 1
  %7309 = extractvalue %dx.types.ResRet.f32 %7306, 2
  %7310 = fadd fast float %7307, -5.000000e-01
  %7311 = fadd fast float %7308, -5.000000e-01
  %7312 = fadd fast float %7309, -5.000000e-01
  %7313 = fmul fast float %5681, 4.000000e+00
  %7314 = fmul fast float %7313, %7182
  %7315 = fmul fast float %7314, %7310
  %7316 = fmul fast float %5682, 4.000000e+00
  %7317 = fmul fast float %7316, %7183
  %7318 = fmul fast float %7317, %7311
  %7319 = fmul fast float %5726, 4.000000e+00
  %7320 = fmul fast float %7319, %7184
  %7321 = fmul fast float %7320, %7312
  %7322 = fadd fast float %7315, %7302
  %7323 = fadd fast float %7318, %7303
  %7324 = fadd fast float %7321, %7304
  %7325 = call float @dx.op.unary.f32(i32 7, float %7322)  ; Saturate(value)
  %7326 = call float @dx.op.unary.f32(i32 7, float %7323)  ; Saturate(value)
  %7327 = call float @dx.op.unary.f32(i32 7, float %7324)  ; Saturate(value)
  br label %7328

; <label>:7328                                    ; preds = %7305, %7260
  %7329 = phi float [ %7325, %7305 ], [ %7302, %7260 ]
  %7330 = phi float [ %7326, %7305 ], [ %7303, %7260 ]
  %7331 = phi float [ %7327, %7305 ], [ %7304, %7260 ]
  %7332 = call float @dx.op.binary.f32(i32 35, float %7330, float %7331)  ; FMax(a,b)
  %7333 = call float @dx.op.binary.f32(i32 35, float %7329, float %7332)  ; FMax(a,b)
  %7334 = fsub fast float 1.000000e+00, %7333
  %7335 = fmul fast float %6116, %6122
  %7336 = fadd fast float %6115, %7335
  %7337 = call float @dx.op.unary.f32(i32 7, float %7336)  ; Saturate(value)
  %7338 = fsub fast float %6287, %5734
  %7339 = fsub fast float %6288, %5735
  %7340 = fsub fast float %6289, %5736
  %7341 = call float @dx.op.dot3.f32(i32 55, float %7338, float %7339, float %7340, float %7338, float %7339, float %7340)  ; Dot3(ax,ay,az,bx,by,bz)
  %7342 = call float @dx.op.unary.f32(i32 25, float %7341)  ; Rsqrt(value)
  %7343 = fmul fast float %7342, %7338
  %7344 = fmul fast float %7342, %7339
  %7345 = fmul fast float %7342, %7340
  %7346 = call float @dx.op.dot3.f32(i32 55, float %7281, float %7282, float %7283, float %7343, float %7344, float %7345)  ; Dot3(ax,ay,az,bx,by,bz)
  %7347 = fmul fast float %7346, %7346
  %7348 = call float @dx.op.unary.f32(i32 6, float %7285)  ; FAbs(value)
  %7349 = call float @dx.op.binary.f32(i32 35, float %7337, float 0x3F847AE140000000)  ; FMax(a,b)
  %7350 = fmul fast float %7349, %7349
  %7351 = fmul fast float %7350, %7350
  %7352 = fsub fast float 1.000000e+00, %7351
  %7353 = fmul fast float %7146, %7352
  %7354 = fadd fast float %7353, %7351
  %7355 = bitcast float %7354 to i32
  %7356 = ashr i32 %7355, 1
  %7357 = add nsw i32 %7356, 532487669
  %7358 = bitcast i32 %7357 to float
  %7359 = fadd fast float %7358, %5728
  %7360 = fmul fast float %7351, %7347
  %7361 = fsub fast float 1.000000e+00, %7347
  %7362 = fadd fast float %7361, %7360
  %7363 = fmul fast float %7348, %7348
  %7364 = fmul fast float %7363, %7352
  %7365 = fadd fast float %7364, %7351
  %7366 = bitcast float %7365 to i32
  %7367 = ashr i32 %7366, 1
  %7368 = add nsw i32 %7367, 532487669
  %7369 = bitcast i32 %7368 to float
  %7370 = fadd fast float %7369, %7348
  %7371 = fmul fast float %7362, %7362
  %7372 = fmul fast float %7371, %7359
  %7373 = fmul fast float %7372, %7370
  %7374 = fdiv fast float 0x3FF0A00000000000, %7373
  %7375 = fmul fast float %7374, %7351
  %7376 = fmul fast float %7285, %7278
  %7377 = fmul fast float %7285, %7279
  %7378 = fmul fast float %7285, %7280
  %7379 = fmul fast float %7376, %7334
  %7380 = fmul fast float %7379, %7375
  %7381 = fmul fast float %7377, %7334
  %7382 = fmul fast float %7381, %7375
  %7383 = fmul fast float %7378, %7334
  %7384 = fmul fast float %7383, %7375
  %7385 = fmul fast float %7215, %7169
  %7386 = fmul fast float %7216, %7169
  %7387 = fmul fast float %7217, %7169
  %7388 = fsub fast float 1.000000e+00, %7133
  %7389 = bitcast float %7388 to i32
  %7390 = sitofp i32 %7389 to float
  %7391 = fmul fast float %7390, 5.000000e+00
  %7392 = fadd fast float %7391, 0xC1EFBF8940000000
  %7393 = fptosi float %7392 to i32
  %7394 = bitcast i32 %7393 to float
  %7395 = fmul fast float %7394, %4727
  %7396 = fmul fast float %7266, %7395
  %7397 = fmul fast float %7396, %6049
  %7398 = fmul fast float %7396, %6050
  %7399 = fmul fast float %7396, %6051
  %7400 = fadd fast float %7397, %7385
  %7401 = fadd fast float %7398, %7386
  %7402 = fadd fast float %7399, %7387
  %7403 = fmul fast float %7400, %7138
  %7404 = fmul fast float %7401, %7138
  %7405 = fmul fast float %7402, %7138
  %7406 = fmul fast float %7138, %7121
  %7407 = fmul fast float %7406, %7266
  %7408 = fmul fast float %7138, %7122
  %7409 = fmul fast float %7408, %7266
  %7410 = fmul fast float %7138, %7123
  %7411 = fmul fast float %7410, %7266
  %7412 = fadd fast float %7403, %7380
  %7413 = fadd fast float %7404, %7382
  %7414 = fadd fast float %7405, %7384
  %7415 = fmul fast float %7412, %7121
  %7416 = fmul fast float %7413, %7122
  %7417 = fmul fast float %7414, %7123
  %7418 = fadd fast float %7407, %6033
  %7419 = fmul fast float %7418, %4752
  %7420 = fadd fast float %7409, %6034
  %7421 = fmul fast float %7420, %4752
  %7422 = fadd fast float %7411, %6035
  %7423 = fmul fast float %7422, %4752
  %7424 = fadd fast float %7415, %6273
  %7425 = fmul fast float %7424, %4752
  %7426 = fadd fast float %7416, %6277
  %7427 = fmul fast float %7426, %4752
  %7428 = fadd fast float %7417, %6281
  %7429 = fmul fast float %7428, %4752
  br label %7430

; <label>:7430                                    ; preds = %7328, %7115, %6257
  %7431 = phi float [ %6274, %6257 ], [ %6274, %7115 ], [ %7425, %7328 ]
  %7432 = phi float [ %6278, %6257 ], [ %6278, %7115 ], [ %7427, %7328 ]
  %7433 = phi float [ %6282, %6257 ], [ %6282, %7115 ], [ %7429, %7328 ]
  %7434 = phi float [ %6146, %6257 ], [ %6146, %7115 ], [ %7419, %7328 ]
  %7435 = phi float [ %6147, %6257 ], [ %6147, %7115 ], [ %7421, %7328 ]
  %7436 = phi float [ %6148, %6257 ], [ %6148, %7115 ], [ %7423, %7328 ]
  %7437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7438 = extractvalue %dx.types.CBufRet.f32 %7437, 0
  %7439 = fmul fast float %7438, %6129
  %7440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7441 = extractvalue %dx.types.CBufRet.f32 %7440, 3
  %7442 = fsub fast float 1.000000e+00, %4730
  %7443 = call float @dx.op.unary.f32(i32 7, float %7442)  ; Saturate(value)
  %7444 = fadd fast float %7436, %4729
  %7445 = fmul fast float %7444, %4730
  %7446 = fmul fast float %7443, %7441
  %7447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7448 = extractvalue %dx.types.CBufRet.f32 %7447, 3
  %7449 = fmul fast float %7434, %5684
  %7450 = fmul fast float %7435, %5685
  %7451 = fmul fast float %7436, %5686
  %7452 = fcmp fast ogt float %92, %247
  %7453 = and i1 %7452, %4820
  %7454 = or i1 %4899, %7453
  %7455 = icmp eq i32 %4819, 2
  %7456 = fcmp fast ole float %92, %247
  %7457 = and i1 %7456, %7455
  %7458 = or i1 %7457, %7454
  br i1 %7453, label %7459, label %7708

; <label>:7459                                    ; preds = %7430
  %7460 = fmul fast float %6209, %101
  %7461 = fmul fast float %6210, %102
  %7462 = call float @dx.op.unary.f32(i32 7, float %7460)  ; Saturate(value)
  %7463 = call float @dx.op.unary.f32(i32 7, float %7461)  ; Saturate(value)
  %7464 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %39, float %7462, float %7463, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7465 = extractvalue %dx.types.ResRet.f32 %7464, 0
  %7466 = extractvalue %dx.types.ResRet.f32 %7464, 1
  %7467 = extractvalue %dx.types.ResRet.f32 %7464, 2
  %7468 = extractvalue %dx.types.ResRet.f32 %7464, 3
  %7469 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %39, float %7462, float %7463, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7470 = extractvalue %dx.types.ResRet.f32 %7469, 0
  %7471 = extractvalue %dx.types.ResRet.f32 %7469, 1
  %7472 = extractvalue %dx.types.ResRet.f32 %7469, 2
  %7473 = extractvalue %dx.types.ResRet.f32 %7469, 3
  %7474 = call float @dx.op.binary.f32(i32 35, float %7466, float %7467)  ; FMax(a,b)
  %7475 = call float @dx.op.binary.f32(i32 35, float %7465, float %7474)  ; FMax(a,b)
  %7476 = call float @dx.op.binary.f32(i32 35, float %7475, float %7468)  ; FMax(a,b)
  %7477 = call float @dx.op.binary.f32(i32 36, float %7471, float %7472)  ; FMin(a,b)
  %7478 = call float @dx.op.binary.f32(i32 36, float %7470, float %7477)  ; FMin(a,b)
  %7479 = call float @dx.op.binary.f32(i32 36, float %7478, float %7473)  ; FMin(a,b)
  %7480 = fmul fast float %7476, 2.550000e+02
  %7481 = fadd fast float %7480, 0x3F70101020000000
  %7482 = fptoui float %7481 to i32
  %7483 = fmul fast float %7479, 2.550000e+02
  %7484 = fadd fast float %7483, 0x3F70101020000000
  %7485 = fptoui float %7484 to i32
  %7486 = icmp ult i32 %7482, %7485
  br i1 %7486, label %7487, label %7653

; <label>:7487                                    ; preds = %7459
  %7488 = fcmp fast ogt float %91, 9.843750e-01
  %7489 = fadd fast float %92, -4.000000e+00
  %7490 = select i1 %7488, float -4.000000e+00, float %7489
  %7491 = call float @dx.op.binary.f32(i32 35, float %7490, float 0.000000e+00)  ; FMax(a,b)
  %7492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7493 = extractvalue %dx.types.CBufRet.f32 %7492, 0
  %7494 = fadd fast float %7493, %7491
  %7495 = extractvalue %dx.types.CBufRet.f32 %7492, 2
  %7496 = fmul fast float %7494, %7495
  %7497 = call float @dx.op.unary.f32(i32 23, float %7496)  ; Log(value)
  %7498 = extractvalue %dx.types.CBufRet.f32 %7492, 3
  %7499 = fmul fast float %7498, %7497
  %7500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7501 = extractvalue %dx.types.CBufRet.f32 %7500, 2
  %7502 = fmul fast float %7499, %7501
  %7503 = call float @dx.op.unary.f32(i32 7, float %7502)  ; Saturate(value)
  %7504 = uitofp i32 %7482 to float
  %7505 = uitofp i32 %7485 to float
  %7506 = fadd fast float %7504, 5.000000e-01
  %7507 = fadd fast float %7505, 5.000000e-01
  %7508 = fmul fast float %7501, %7506
  %7509 = fmul fast float %7501, %7507
  %7510 = fadd fast float %7508, 0x3F0FFB4800000000
  %7511 = fadd fast float %7509, 0xBF0FFB4800000000
  %7512 = call float @dx.op.binary.f32(i32 35, float %7503, float %7510)  ; FMax(a,b)
  %7513 = call float @dx.op.binary.f32(i32 36, float %7512, float %7511)  ; FMin(a,b)
  %7514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7515 = extractvalue %dx.types.CBufRet.f32 %7514, 1
  %7516 = extractvalue %dx.types.CBufRet.f32 %7514, 2
  %7517 = extractvalue %dx.types.CBufRet.f32 %7514, 0
  %7518 = fmul fast float %7515, %7513
  %7519 = fadd fast float %7517, %7518
  %7520 = fadd fast float %7517, %7516
  %7521 = fsub fast float %7515, %7516
  %7522 = fadd fast float %7521, %7517
  %7523 = call float @dx.op.binary.f32(i32 35, float %7519, float %7520)  ; FMax(a,b)
  %7524 = call float @dx.op.binary.f32(i32 36, float %7523, float %7522)  ; FMin(a,b)
  %7525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %37, float %7462, float %7463, float %7524, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7526 = extractvalue %dx.types.ResRet.f32 %7525, 0
  %7527 = extractvalue %dx.types.ResRet.f32 %7525, 1
  %7528 = extractvalue %dx.types.ResRet.f32 %7525, 2
  %7529 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7530 = extractvalue %dx.types.CBufRet.i32 %7529, 0
  %7531 = extractvalue %dx.types.CBufRet.i32 %7529, 1
  %7532 = uitofp i32 %7530 to float
  %7533 = uitofp i32 %7531 to float
  %7534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7535 = extractvalue %dx.types.CBufRet.f32 %7534, 0
  %7536 = extractvalue %dx.types.CBufRet.f32 %7534, 1
  %7537 = fmul fast float %7532, %7462
  %7538 = fmul fast float %7533, %7463
  %7539 = fadd fast float %7537, -5.000000e-01
  %7540 = fadd fast float %7538, -5.000000e-01
  %7541 = call float @dx.op.unary.f32(i32 22, float %7539)  ; Frc(value)
  %7542 = call float @dx.op.unary.f32(i32 22, float %7540)  ; Frc(value)
  %7543 = fmul fast float %7541, %7541
  %7544 = fmul fast float %7543, %7541
  %7545 = fsub fast float 3.000000e+00, %7541
  %7546 = fmul fast float %7543, %7545
  %7547 = fmul fast float %7541, 3.000000e+00
  %7548 = fmul fast float %7544, 3.000000e+00
  %7549 = fmul fast float %7543, 6.000000e+00
  %7550 = fsub fast float %7548, %7549
  %7551 = fadd fast float %7550, 4.000000e+00
  %7552 = fmul fast float %7551, 0x3FC5555560000000
  %7553 = fmul fast float %7544, -3.000000e+00
  %7554 = fadd fast float %7543, %7541
  %7555 = fmul fast float %7554, 3.000000e+00
  %7556 = fadd fast float %7553, 1.000000e+00
  %7557 = fadd fast float %7556, %7555
  %7558 = fmul fast float %7544, 0x3FC5555560000000
  %7559 = fmul fast float %7542, %7542
  %7560 = fmul fast float %7559, %7542
  %7561 = fsub fast float 3.000000e+00, %7542
  %7562 = fmul fast float %7559, %7561
  %7563 = fmul fast float %7542, 3.000000e+00
  %7564 = fmul fast float %7560, 3.000000e+00
  %7565 = fmul fast float %7559, 6.000000e+00
  %7566 = fsub fast float %7564, %7565
  %7567 = fadd fast float %7566, 4.000000e+00
  %7568 = fmul fast float %7567, 0x3FC5555560000000
  %7569 = fmul fast float %7560, -3.000000e+00
  %7570 = fadd fast float %7559, %7542
  %7571 = fmul fast float %7570, 3.000000e+00
  %7572 = fadd fast float %7569, 1.000000e+00
  %7573 = fadd fast float %7572, %7571
  %7574 = fmul fast float %7560, 0x3FC5555560000000
  %7575 = fadd fast float %7541, 1.000000e+00
  %7576 = fsub fast float 1.000000e+00, %7547
  %7577 = fadd fast float %7576, %7546
  %7578 = fadd fast float %7577, %7551
  %7579 = fmul fast float %7578, 0x3FC5555560000000
  %7580 = fdiv fast float %7552, %7579
  %7581 = fsub fast float %7575, %7580
  %7582 = fsub fast float 1.000000e+00, %7541
  %7583 = fadd fast float %7557, %7544
  %7584 = fmul fast float %7583, 0x3FC5555560000000
  %7585 = fdiv fast float %7558, %7584
  %7586 = fadd fast float %7582, %7585
  %7587 = fadd fast float %7542, 1.000000e+00
  %7588 = fsub fast float 1.000000e+00, %7563
  %7589 = fadd fast float %7588, %7562
  %7590 = fadd fast float %7589, %7567
  %7591 = fmul fast float %7590, 0x3FC5555560000000
  %7592 = fdiv fast float %7568, %7591
  %7593 = fsub fast float %7587, %7592
  %7594 = fsub fast float 1.000000e+00, %7542
  %7595 = fadd fast float %7573, %7560
  %7596 = fmul fast float %7595, 0x3FC5555560000000
  %7597 = fdiv fast float %7574, %7596
  %7598 = fadd fast float %7597, %7594
  %7599 = fmul fast float %7581, %7535
  %7600 = fsub fast float %7462, %7599
  %7601 = fmul fast float %7586, %7535
  %7602 = fadd fast float %7601, %7462
  %7603 = fmul fast float %7598, %7536
  %7604 = fadd fast float %7603, %7463
  %7605 = fmul fast float %7593, %7536
  %7606 = fsub fast float %7463, %7605
  %7607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %7600, float %7606, float %7524, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7608 = extractvalue %dx.types.ResRet.f32 %7607, 0
  %7609 = extractvalue %dx.types.ResRet.f32 %7607, 1
  %7610 = extractvalue %dx.types.ResRet.f32 %7607, 2
  %7611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %7602, float %7606, float %7524, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7612 = extractvalue %dx.types.ResRet.f32 %7611, 0
  %7613 = extractvalue %dx.types.ResRet.f32 %7611, 1
  %7614 = extractvalue %dx.types.ResRet.f32 %7611, 2
  %7615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %7600, float %7604, float %7524, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7616 = extractvalue %dx.types.ResRet.f32 %7615, 0
  %7617 = extractvalue %dx.types.ResRet.f32 %7615, 1
  %7618 = extractvalue %dx.types.ResRet.f32 %7615, 2
  %7619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %7602, float %7604, float %7524, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7620 = extractvalue %dx.types.ResRet.f32 %7619, 0
  %7621 = extractvalue %dx.types.ResRet.f32 %7619, 1
  %7622 = extractvalue %dx.types.ResRet.f32 %7619, 2
  %7623 = fsub fast float %7616, %7608
  %7624 = fsub fast float %7617, %7609
  %7625 = fsub fast float %7618, %7610
  %7626 = fmul fast float %7623, %7596
  %7627 = fmul fast float %7624, %7596
  %7628 = fmul fast float %7625, %7596
  %7629 = fadd fast float %7626, %7608
  %7630 = fadd fast float %7627, %7609
  %7631 = fadd fast float %7628, %7610
  %7632 = fsub fast float %7620, %7612
  %7633 = fsub fast float %7621, %7613
  %7634 = fsub fast float %7622, %7614
  %7635 = fmul fast float %7632, %7596
  %7636 = fmul fast float %7633, %7596
  %7637 = fmul fast float %7634, %7596
  %7638 = fsub fast float %7612, %7629
  %7639 = fadd fast float %7638, %7635
  %7640 = fsub fast float %7613, %7630
  %7641 = fadd fast float %7640, %7636
  %7642 = fsub fast float %7614, %7631
  %7643 = fadd fast float %7642, %7637
  %7644 = fmul fast float %7639, %7584
  %7645 = fmul fast float %7641, %7584
  %7646 = fmul fast float %7643, %7584
  %7647 = fadd fast float %7644, %7629
  %7648 = fadd fast float %7645, %7630
  %7649 = fadd fast float %7646, %7631
  %7650 = fmul fast float %7647, %6264
  %7651 = fmul fast float %7648, %6264
  %7652 = fmul fast float %7649, %6264
  br label %7653

; <label>:7653                                    ; preds = %7487, %7459
  %7654 = phi float [ %7526, %7487 ], [ 1.000000e+00, %7459 ]
  %7655 = phi float [ %7527, %7487 ], [ 1.000000e+00, %7459 ]
  %7656 = phi float [ %7528, %7487 ], [ 1.000000e+00, %7459 ]
  %7657 = phi float [ %7650, %7487 ], [ 0.000000e+00, %7459 ]
  %7658 = phi float [ %7651, %7487 ], [ 0.000000e+00, %7459 ]
  %7659 = phi float [ %7652, %7487 ], [ 0.000000e+00, %7459 ]
  %7660 = call float @dx.op.dot3.f32(i32 55, float %7654, float %7655, float %7656, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7661 = call float @dx.op.dot3.f32(i32 55, float %7657, float %7658, float %7659, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7662 = select i1 %286, float %7660, float %7654
  %7663 = select i1 %286, float %7660, float %7655
  %7664 = select i1 %286, float 1.000000e+00, float %7656
  %7665 = select i1 %286, float %7661, float %7657
  %7666 = select i1 %286, float 0.000000e+00, float %7658
  %7667 = select i1 %286, float 0.000000e+00, float %7659
  %7668 = fmul fast float %7662, %7449
  %7669 = fmul fast float %7663, %7450
  %7670 = fmul fast float %7664, %7451
  %7671 = fadd fast float %7668, %7665
  %7672 = fadd fast float %7669, %7666
  %7673 = fadd fast float %7667, %7670
  %7674 = fmul fast float %7662, %7431
  %7675 = fmul fast float %7663, %7432
  %7676 = fmul fast float %7664, %7433
  %7677 = fmul fast float %129, %6209
  %7678 = fmul fast float %131, %6210
  %7679 = fsub fast float 1.000000e+00, %7677
  %7680 = fsub fast float 1.000000e+00, %7678
  %7681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7682 = extractvalue %dx.types.CBufRet.f32 %7681, 0
  %7683 = extractvalue %dx.types.CBufRet.f32 %7681, 1
  %7684 = extractvalue %dx.types.CBufRet.f32 %7681, 2
  %7685 = fmul fast float %7679, %7682
  %7686 = fmul fast float %7679, %7683
  %7687 = fmul fast float %7679, %7684
  %7688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7689 = extractvalue %dx.types.CBufRet.f32 %7688, 0
  %7690 = extractvalue %dx.types.CBufRet.f32 %7688, 1
  %7691 = extractvalue %dx.types.CBufRet.f32 %7688, 2
  %7692 = fmul fast float %7680, %7689
  %7693 = fmul fast float %7680, %7690
  %7694 = fmul fast float %7680, %7691
  %7695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7696 = extractvalue %dx.types.CBufRet.f32 %7695, 0
  %7697 = extractvalue %dx.types.CBufRet.f32 %7695, 1
  %7698 = extractvalue %dx.types.CBufRet.f32 %7695, 2
  %7699 = fadd fast float %7692, %7696
  %7700 = fadd fast float %7699, %7685
  %7701 = fadd fast float %7693, %7697
  %7702 = fadd fast float %7701, %7686
  %7703 = fadd fast float %7694, %7698
  %7704 = fadd fast float %7703, %7687
  %7705 = fmul fast float %7700, %247
  %7706 = fmul fast float %7702, %247
  %7707 = fmul fast float %7704, %247
  br label %7708

; <label>:7708                                    ; preds = %7653, %7430
  %7709 = phi float [ %7705, %7653 ], [ %180, %7430 ]
  %7710 = phi float [ %7706, %7653 ], [ %181, %7430 ]
  %7711 = phi float [ %7707, %7653 ], [ %182, %7430 ]
  %7712 = phi float [ %247, %7653 ], [ %92, %7430 ]
  %7713 = phi float [ %7671, %7653 ], [ %7449, %7430 ]
  %7714 = phi float [ %7672, %7653 ], [ %7450, %7430 ]
  %7715 = phi float [ %7673, %7653 ], [ %7451, %7430 ]
  %7716 = phi float [ %7674, %7653 ], [ %7431, %7430 ]
  %7717 = phi float [ %7675, %7653 ], [ %7432, %7430 ]
  %7718 = phi float [ %7676, %7653 ], [ %7433, %7430 ]
  %7719 = phi float [ %7654, %7653 ], [ 1.000000e+00, %7430 ]
  br i1 %7458, label %8861, label %7720

; <label>:7720                                    ; preds = %7708
  %7721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7722 = extractvalue %dx.types.CBufRet.f32 %7721, 0
  %7723 = extractvalue %dx.types.CBufRet.f32 %7721, 1
  %7724 = extractvalue %dx.types.CBufRet.f32 %7721, 2
  %7725 = extractvalue %dx.types.CBufRet.f32 %7721, 3
  %7726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7727 = extractvalue %dx.types.CBufRet.f32 %7726, 0
  %7728 = extractvalue %dx.types.CBufRet.f32 %7726, 1
  %7729 = extractvalue %dx.types.CBufRet.f32 %7726, 2
  %7730 = extractvalue %dx.types.CBufRet.f32 %7726, 3
  %7731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7732 = extractvalue %dx.types.CBufRet.f32 %7731, 0
  %7733 = extractvalue %dx.types.CBufRet.f32 %7731, 1
  %7734 = extractvalue %dx.types.CBufRet.f32 %7731, 2
  %7735 = extractvalue %dx.types.CBufRet.f32 %7731, 3
  %7736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7737 = extractvalue %dx.types.CBufRet.f32 %7736, 0
  %7738 = extractvalue %dx.types.CBufRet.f32 %7736, 1
  %7739 = extractvalue %dx.types.CBufRet.f32 %7736, 2
  %7740 = extractvalue %dx.types.CBufRet.f32 %7736, 3
  %7741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7742 = extractvalue %dx.types.CBufRet.f32 %7741, 3
  %7743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7744 = extractvalue %dx.types.CBufRet.f32 %7743, 3
  %7745 = extractvalue %dx.types.CBufRet.f32 %7743, 0
  %7746 = extractvalue %dx.types.CBufRet.f32 %7743, 1
  %7747 = extractvalue %dx.types.CBufRet.f32 %7743, 2
  %7748 = fcmp fast olt float %7747, -5.000000e-01
  %7749 = call float @dx.op.dot3.f32(i32 55, float %7709, float %7710, float %7711, float %7709, float %7710, float %7711)  ; Dot3(ax,ay,az,bx,by,bz)
  %7750 = call float @dx.op.unary.f32(i32 25, float %7749)  ; Rsqrt(value)
  %7751 = fmul fast float %7750, %7749
  %7752 = fmul fast float %7750, %7709
  %7753 = fmul fast float %7750, %7710
  %7754 = fmul fast float %7750, %7711
  %7755 = fadd fast float %7751, %7725
  %7756 = call float @dx.op.dot3.f32(i32 55, float %7752, float %7753, float %7754, float %7722, float %7723, float %7724)  ; Dot3(ax,ay,az,bx,by,bz)
  %7757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7758 = extractvalue %dx.types.CBufRet.i32 %7757, 1
  %7759 = and i32 %7758, 1
  %7760 = icmp ne i32 %7759, 0
  %7761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7762 = extractvalue %dx.types.CBufRet.f32 %7761, 2
  %7763 = fcmp fast ogt float %7762, 0.000000e+00
  %7764 = and i1 %7760, %7763
  br i1 %7764, label %7765, label %8171, !dx.controlflow.hints !115

; <label>:7765                                    ; preds = %7720
  %7766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7767 = extractvalue %dx.types.CBufRet.f32 %7766, 3
  %7768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7769 = extractvalue %dx.types.CBufRet.f32 %7768, 2
  %7770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7771 = extractvalue %dx.types.CBufRet.f32 %7770, 2
  %7772 = fsub fast float %7769, %7771
  %7773 = and i32 %7758, 2
  %7774 = extractvalue %dx.types.CBufRet.i32 %7757, 0
  %7775 = call i32 @dx.op.binary.i32(i32 40, i32 %7774, i32 3)  ; UMin(a,b)
  %7776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7777 = extractvalue %dx.types.CBufRet.f32 %7776, 0
  %7778 = extractvalue %dx.types.CBufRet.f32 %7776, 1
  %7779 = extractvalue %dx.types.CBufRet.f32 %7770, 0
  %7780 = extractvalue %dx.types.CBufRet.f32 %7770, 1
  %7781 = fsub fast float %7777, %7779
  %7782 = fsub fast float %7778, %7780
  %7783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7784 = extractvalue %dx.types.CBufRet.f32 %7783, 0
  %7785 = fcmp fast ogt float %7784, 0.000000e+00
  %7786 = fsub fast float -0.000000e+00, %7781
  %7787 = fsub fast float -0.000000e+00, %7782
  %7788 = call float @dx.op.dot2.f32(i32 54, float %7752, float %7753, float %7752, float %7753)  ; Dot2(ax,ay,bx,by)
  %7789 = call float @dx.op.dot2.f32(i32 54, float %7752, float %7753, float %7786, float %7787)  ; Dot2(ax,ay,bx,by)
  %7790 = fmul fast float %7789, 2.000000e+00
  %7791 = call float @dx.op.dot2.f32(i32 54, float %7786, float %7787, float %7786, float %7787)  ; Dot2(ax,ay,bx,by)
  %7792 = fmul fast float %7784, %7784
  %7793 = fsub fast float %7791, %7792
  %7794 = fmul fast float %7790, %7790
  %7795 = fmul fast float %7788, 4.000000e+00
  %7796 = fmul fast float %7795, %7793
  %7797 = fsub fast float %7794, %7796
  %7798 = fcmp fast ogt float %7797, 0.000000e+00
  br i1 %7798, label %7799, label %7814

; <label>:7799                                    ; preds = %7765
  %7800 = fcmp fast ogt float %7790, 0.000000e+00
  %7801 = call float @dx.op.unary.f32(i32 24, float %7797)  ; Sqrt(value)
  %7802 = fsub fast float -0.000000e+00, %7801
  %7803 = select i1 %7800, float %7801, float %7802
  %7804 = fadd fast float %7803, %7790
  %7805 = fmul float %7804, -5.000000e-01
  %7806 = fdiv fast float %7805, %7788
  %7807 = call float @dx.op.binary.f32(i32 35, float %7806, float 0.000000e+00)  ; FMax(a,b)
  %7808 = call float @dx.op.binary.f32(i32 36, float %7751, float %7807)  ; FMin(a,b)
  %7809 = fdiv fast float %7793, %7805
  %7810 = call float @dx.op.binary.f32(i32 35, float %7809, float 0.000000e+00)  ; FMax(a,b)
  %7811 = call float @dx.op.binary.f32(i32 36, float %7751, float %7810)  ; FMin(a,b)
  %7812 = call float @dx.op.binary.f32(i32 36, float %7808, float %7811)  ; FMin(a,b)
  %7813 = call float @dx.op.binary.f32(i32 35, float %7808, float %7811)  ; FMax(a,b)
  br label %7814

; <label>:7814                                    ; preds = %7799, %7765
  %7815 = phi float [ %7813, %7799 ], [ -1.000000e+00, %7765 ]
  %7816 = phi float [ %7812, %7799 ], [ -1.000000e+00, %7765 ]
  %7817 = phi i1 [ true, %7799 ], [ false, %7765 ]
  %7818 = and i1 %7785, %7817
  br i1 %7818, label %7819, label %7821

; <label>:7819                                    ; preds = %7814
  %7820 = fcmp fast oeq float %7816, %7815
  br i1 %7820, label %8124, label %7822

; <label>:7821                                    ; preds = %7814
  br i1 %7785, label %8124, label %7822

; <label>:7822                                    ; preds = %7821, %7819
  %7823 = phi float [ %7751, %7821 ], [ %7815, %7819 ]
  %7824 = phi float [ 0.000000e+00, %7821 ], [ %7816, %7819 ]
  %7825 = icmp ne i32 %7773, 0
  %7826 = fmul fast float %7823, %7754
  %7827 = fadd fast float %7826, %7767
  %7828 = fmul fast float %7827, %7823
  %7829 = select i1 %7825, float 0.000000e+00, float %7828
  %7830 = fcmp fast oeq float %7754, 0.000000e+00
  %7831 = fdiv fast float %7772, %7754
  %7832 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7831)  ; FMax(a,b)
  %7833 = select i1 %7830, float %7823, float %7832
  %7834 = call float @dx.op.binary.f32(i32 36, float %7823, float %7833)  ; FMin(a,b)
  %7835 = fcmp fast ogt float %7754, 0.000000e+00
  %7836 = fcmp fast olt float %7772, 0.000000e+00
  br i1 %7835, label %7837, label %7894

; <label>:7837                                    ; preds = %7822
  %7838 = icmp eq i32 %7773, 0
  br i1 %7836, label %7839, label %7883

; <label>:7839                                    ; preds = %7837
  %7840 = select i1 %7838, float %7823, float 0.000000e+00
  %7841 = fsub fast float -0.000000e+00, %7840
  %7842 = call float @dx.op.unary.f32(i32 6, float %7841)  ; FAbs(value)
  %7843 = fmul fast float %7840, %7754
  %7844 = fadd fast float %7843, %7767
  %7845 = fmul fast float %7842, %7844
  %7846 = fsub fast float %7829, %7845
  %7847 = fsub fast float %7823, %7842
  %7848 = select i1 %7838, float %7847, float 0.000000e+00
  %7849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7850 = extractvalue %dx.types.CBufRet.f32 %7849, 0
  %7851 = extractvalue %dx.types.CBufRet.f32 %7849, 1
  %7852 = extractvalue %dx.types.CBufRet.f32 %7849, 2
  %7853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7854 = extractvalue %dx.types.CBufRet.f32 %7853, 0
  %7855 = extractvalue %dx.types.CBufRet.f32 %7853, 1
  %7856 = extractvalue %dx.types.CBufRet.f32 %7853, 2
  %7857 = extractvalue %dx.types.CBufRet.f32 %7853, 3
  %7858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7859 = extractvalue %dx.types.CBufRet.f32 %7858, 3
  %7860 = call float @dx.op.binary.f32(i32 36, float %7846, float %7859)  ; FMin(a,b)
  %7861 = fmul fast float %7857, %7848
  %7862 = call float @dx.op.unary.f32(i32 7, float %7861)  ; Saturate(value)
  %7863 = fsub fast float %7854, %7850
  %7864 = fsub fast float %7855, %7851
  %7865 = fsub fast float %7856, %7852
  %7866 = fmul fast float %7862, %7863
  %7867 = fmul fast float %7862, %7864
  %7868 = fmul fast float %7862, %7865
  %7869 = fadd fast float %7866, %7850
  %7870 = fadd fast float %7867, %7851
  %7871 = fadd fast float %7868, %7852
  %7872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7873 = extractvalue %dx.types.CBufRet.f32 %7872, 0
  %7874 = extractvalue %dx.types.CBufRet.f32 %7872, 1
  %7875 = fadd fast float %7874, %7873
  %7876 = call float @dx.op.unary.f32(i32 7, float %7875)  ; Saturate(value)
  %7877 = extractvalue %dx.types.CBufRet.f32 %7872, 2
  %7878 = extractvalue %dx.types.CBufRet.f32 %7872, 3
  %7879 = fadd fast float %7878, %7877
  %7880 = call float @dx.op.unary.f32(i32 7, float %7879)  ; Saturate(value)
  %7881 = fmul fast float %7876, %7860
  %7882 = fmul fast float %7881, %7880
  br label %8124

; <label>:7883                                    ; preds = %7837
  br i1 %7838, label %7884, label %7905

; <label>:7884                                    ; preds = %7883
  %7885 = call float @dx.op.binary.f32(i32 36, float %7834, float %7824)  ; FMin(a,b)
  %7886 = fsub fast float %7834, %7885
  %7887 = fsub fast float %7886, %7823
  %7888 = call float @dx.op.unary.f32(i32 6, float %7887)  ; FAbs(value)
  %7889 = fadd fast float %7886, %7823
  %7890 = fmul fast float %7889, %7754
  %7891 = fadd fast float %7890, %7767
  %7892 = fmul fast float %7891, %7888
  %7893 = fsub fast float %7829, %7892
  br label %7905

; <label>:7894                                    ; preds = %7822
  br i1 %7836, label %7895, label %7905

; <label>:7895                                    ; preds = %7894
  %7896 = call float @dx.op.binary.f32(i32 35, float %7824, float %7834)  ; FMax(a,b)
  %7897 = icmp eq i32 %7773, 0
  %7898 = select i1 %7897, float %7834, float 0.000000e+00
  %7899 = fsub fast float -0.000000e+00, %7898
  %7900 = call float @dx.op.unary.f32(i32 6, float %7899)  ; FAbs(value)
  %7901 = fmul fast float %7898, %7754
  %7902 = fadd fast float %7901, %7767
  %7903 = fmul fast float %7900, %7902
  %7904 = fsub fast float %7829, %7903
  br label %7905

; <label>:7905                                    ; preds = %7895, %7894, %7884, %7883
  %7906 = phi float [ %7824, %7883 ], [ %7824, %7884 ], [ %7896, %7895 ], [ %7824, %7894 ]
  %7907 = phi float [ 0.000000e+00, %7883 ], [ %7888, %7884 ], [ %7900, %7895 ], [ 0.000000e+00, %7894 ]
  %7908 = phi float [ %7829, %7883 ], [ %7893, %7884 ], [ %7904, %7895 ], [ %7829, %7894 ]
  %7909 = phi float [ %7834, %7883 ], [ %7834, %7884 ], [ %7823, %7895 ], [ %7823, %7894 ]
  %7910 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %7910, align 4, !tbaa !116, !noalias !118
  %7911 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %7911, align 4, !tbaa !116, !noalias !118
  %7912 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %7912, align 4, !tbaa !116, !noalias !118
  %7913 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %7913, align 4, !tbaa !116, !noalias !118
  %7914 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %7914, align 4, !tbaa !116, !noalias !118
  %7915 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %7915, align 4, !tbaa !116, !noalias !118
  %7916 = icmp sgt i32 %7775, 0
  br i1 %7916, label %7917, label %7978

; <label>:7917                                    ; preds = %7905
  br label %7918

; <label>:7918                                    ; preds = %7967, %7917
  %7919 = phi i32 [ %7968, %7967 ], [ 0, %7917 ]
  %7920 = phi i32 [ %7969, %7967 ], [ 0, %7917 ]
  %7921 = add nuw i32 %7920, 171
  %7922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 %7921)  ; CBufferLoadLegacy(handle,regIndex)
  %7923 = extractvalue %dx.types.CBufRet.f32 %7922, 0
  %7924 = extractvalue %dx.types.CBufRet.f32 %7922, 1
  %7925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7926 = extractvalue %dx.types.CBufRet.f32 %7925, 0
  %7927 = extractvalue %dx.types.CBufRet.f32 %7925, 1
  %7928 = fsub fast float %7923, %7926
  %7929 = fsub fast float %7924, %7927
  %7930 = extractvalue %dx.types.CBufRet.f32 %7922, 2
  %7931 = fsub fast float -0.000000e+00, %7928
  %7932 = fsub fast float -0.000000e+00, %7929
  %7933 = call float @dx.op.dot2.f32(i32 54, float %7752, float %7753, float %7931, float %7932)  ; Dot2(ax,ay,bx,by)
  %7934 = fmul fast float %7933, 2.000000e+00
  %7935 = call float @dx.op.dot2.f32(i32 54, float %7931, float %7932, float %7931, float %7932)  ; Dot2(ax,ay,bx,by)
  %7936 = fmul fast float %7930, %7930
  %7937 = fsub fast float %7935, %7936
  %7938 = fmul fast float %7934, %7934
  %7939 = fmul fast float %7795, %7937
  %7940 = fsub fast float %7938, %7939
  %7941 = fcmp fast ogt float %7940, 0.000000e+00
  br i1 %7941, label %7942, label %7957

; <label>:7942                                    ; preds = %7918
  %7943 = fcmp fast ogt float %7934, 0.000000e+00
  %7944 = call float @dx.op.unary.f32(i32 24, float %7940)  ; Sqrt(value)
  %7945 = fsub fast float -0.000000e+00, %7944
  %7946 = select i1 %7943, float %7944, float %7945
  %7947 = fadd fast float %7946, %7934
  %7948 = fmul float %7947, -5.000000e-01
  %7949 = fdiv fast float %7948, %7788
  %7950 = call float @dx.op.binary.f32(i32 35, float %7949, float 0.000000e+00)  ; FMax(a,b)
  %7951 = call float @dx.op.binary.f32(i32 36, float %7823, float %7950)  ; FMin(a,b)
  %7952 = fdiv fast float %7937, %7948
  %7953 = call float @dx.op.binary.f32(i32 35, float %7952, float 0.000000e+00)  ; FMax(a,b)
  %7954 = call float @dx.op.binary.f32(i32 36, float %7823, float %7953)  ; FMin(a,b)
  %7955 = call float @dx.op.binary.f32(i32 36, float %7951, float %7954)  ; FMin(a,b)
  %7956 = call float @dx.op.binary.f32(i32 35, float %7951, float %7954)  ; FMax(a,b)
  br label %7957

; <label>:7957                                    ; preds = %7942, %7918
  %7958 = phi float [ %7956, %7942 ], [ -1.000000e+00, %7918 ]
  %7959 = phi float [ %7955, %7942 ], [ -1.000000e+00, %7918 ]
  %7960 = phi i1 [ true, %7942 ], [ false, %7918 ]
  br i1 %7960, label %7961, label %7967

; <label>:7961                                    ; preds = %7957
  %7962 = call float @dx.op.binary.f32(i32 35, float %7906, float %7959)  ; FMax(a,b)
  %7963 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %7920
  store float %7962, float* %7963, align 4, !tbaa !116, !noalias !118
  %7964 = call float @dx.op.binary.f32(i32 35, float %7906, float %7958)  ; FMax(a,b)
  %7965 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7920
  store float %7964, float* %7965, align 4, !tbaa !116, !noalias !118
  %7966 = add nsw i32 %7919, 1
  br label %7967

; <label>:7967                                    ; preds = %7961, %7957
  %7968 = phi i32 [ %7966, %7961 ], [ %7919, %7957 ]
  %7969 = add nuw nsw i32 %7920, 1
  %7970 = icmp eq i32 %7969, %7775
  br i1 %7970, label %7971, label %7918

; <label>:7971                                    ; preds = %7967
  %7972 = load float, float* %7912, align 4, !tbaa !116, !alias.scope !134, !noalias !137
  %7973 = load float, float* %7911, align 4, !tbaa !116, !alias.scope !140, !noalias !141
  %7974 = load float, float* %7910, align 4, !tbaa !116, !alias.scope !142, !noalias !143
  %7975 = load float, float* %7915, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %7976 = load float, float* %7914, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  %7977 = load float, float* %7913, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  br label %7978

; <label>:7978                                    ; preds = %7971, %7905
  %7979 = phi float [ -1.000000e+00, %7905 ], [ %7977, %7971 ]
  %7980 = phi float [ -1.000000e+00, %7905 ], [ %7976, %7971 ]
  %7981 = phi float [ -1.000000e+00, %7905 ], [ %7975, %7971 ]
  %7982 = phi float [ -1.000000e+00, %7905 ], [ %7974, %7971 ]
  %7983 = phi float [ -1.000000e+00, %7905 ], [ %7973, %7971 ]
  %7984 = phi float [ -1.000000e+00, %7905 ], [ %7972, %7971 ]
  %7985 = phi i32 [ 0, %7905 ], [ %7968, %7971 ]
  %7986 = call float @dx.op.binary.f32(i32 36, float %7983, float %7984)  ; FMin(a,b)
  %7987 = call float @dx.op.binary.f32(i32 36, float %7982, float %7986)  ; FMin(a,b)
  %7988 = call float @dx.op.binary.f32(i32 35, float %7982, float %7983)  ; FMax(a,b)
  %7989 = call float @dx.op.binary.f32(i32 36, float %7988, float %7984)  ; FMin(a,b)
  %7990 = call float @dx.op.binary.f32(i32 36, float %7982, float %7983)  ; FMin(a,b)
  %7991 = call float @dx.op.binary.f32(i32 35, float %7990, float %7989)  ; FMax(a,b)
  %7992 = call float @dx.op.binary.f32(i32 35, float %7983, float %7984)  ; FMax(a,b)
  %7993 = call float @dx.op.binary.f32(i32 35, float %7982, float %7992)  ; FMax(a,b)
  store float %7987, float* %7910, align 4, !tbaa !116, !alias.scope !142, !noalias !143
  store float %7991, float* %7911, align 4, !tbaa !116, !alias.scope !140, !noalias !141
  store float %7993, float* %7912, align 4, !tbaa !116, !alias.scope !134, !noalias !137
  %7994 = call float @dx.op.binary.f32(i32 36, float %7980, float %7981)  ; FMin(a,b)
  %7995 = call float @dx.op.binary.f32(i32 36, float %7979, float %7994)  ; FMin(a,b)
  %7996 = call float @dx.op.binary.f32(i32 35, float %7979, float %7980)  ; FMax(a,b)
  %7997 = call float @dx.op.binary.f32(i32 36, float %7996, float %7981)  ; FMin(a,b)
  %7998 = call float @dx.op.binary.f32(i32 36, float %7979, float %7980)  ; FMin(a,b)
  %7999 = call float @dx.op.binary.f32(i32 35, float %7998, float %7997)  ; FMax(a,b)
  %8000 = call float @dx.op.binary.f32(i32 35, float %7980, float %7981)  ; FMax(a,b)
  %8001 = call float @dx.op.binary.f32(i32 35, float %7979, float %8000)  ; FMax(a,b)
  store float %7995, float* %7913, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  store float %7999, float* %7914, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  store float %8001, float* %7915, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %8002 = sub nsw i32 3, %7985
  %8003 = icmp sgt i32 %8002, 2
  br i1 %8003, label %8004, label %8042

; <label>:8004                                    ; preds = %7978
  %8005 = icmp eq i32 %7773, 0
  %8006 = fsub fast float %7823, %7907
  %8007 = select i1 %8005, float %8006, float %7907
  %8008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8009 = extractvalue %dx.types.CBufRet.f32 %8008, 0
  %8010 = extractvalue %dx.types.CBufRet.f32 %8008, 1
  %8011 = extractvalue %dx.types.CBufRet.f32 %8008, 2
  %8012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8013 = extractvalue %dx.types.CBufRet.f32 %8012, 0
  %8014 = extractvalue %dx.types.CBufRet.f32 %8012, 1
  %8015 = extractvalue %dx.types.CBufRet.f32 %8012, 2
  %8016 = extractvalue %dx.types.CBufRet.f32 %8012, 3
  %8017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8018 = extractvalue %dx.types.CBufRet.f32 %8017, 3
  %8019 = call float @dx.op.binary.f32(i32 36, float %7908, float %8018)  ; FMin(a,b)
  %8020 = fmul fast float %8016, %8007
  %8021 = call float @dx.op.unary.f32(i32 7, float %8020)  ; Saturate(value)
  %8022 = fsub fast float %8013, %8009
  %8023 = fsub fast float %8014, %8010
  %8024 = fsub fast float %8015, %8011
  %8025 = fmul fast float %8021, %8022
  %8026 = fmul fast float %8021, %8023
  %8027 = fmul fast float %8021, %8024
  %8028 = fadd fast float %8025, %8009
  %8029 = fadd fast float %8026, %8010
  %8030 = fadd fast float %8027, %8011
  %8031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8032 = extractvalue %dx.types.CBufRet.f32 %8031, 0
  %8033 = extractvalue %dx.types.CBufRet.f32 %8031, 1
  %8034 = fadd fast float %8033, %8032
  %8035 = call float @dx.op.unary.f32(i32 7, float %8034)  ; Saturate(value)
  %8036 = extractvalue %dx.types.CBufRet.f32 %8031, 2
  %8037 = extractvalue %dx.types.CBufRet.f32 %8031, 3
  %8038 = fadd fast float %8037, %8036
  %8039 = call float @dx.op.unary.f32(i32 7, float %8038)  ; Saturate(value)
  %8040 = fmul fast float %8035, %8019
  %8041 = fmul fast float %8040, %8039
  br label %8124

; <label>:8042                                    ; preds = %7978
  %8043 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8002
  %8044 = load float, float* %8043, align 4, !tbaa !116, !noalias !118
  %8045 = fcmp fast olt float %8044, %7909
  %8046 = icmp sgt i32 %7985, 0
  %8047 = and i1 %8046, %8045
  br i1 %8047, label %8048, label %8085

; <label>:8048                                    ; preds = %8042
  br label %8049

; <label>:8049                                    ; preds = %8078, %8048
  %8050 = phi float [ %8079, %8078 ], [ %7907, %8048 ]
  %8051 = phi float [ %8080, %8078 ], [ %7908, %8048 ]
  %8052 = phi float [ %8060, %8078 ], [ %8044, %8048 ]
  %8053 = phi i32 [ %8057, %8078 ], [ %8002, %8048 ]
  %8054 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8053
  %8055 = load float, float* %8054, align 4, !tbaa !116, !noalias !118
  %8056 = icmp slt i32 %8053, 2
  %8057 = add nsw i32 %8053, 1
  %8058 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8057
  %8059 = load float, float* %8058, align 4, !tbaa !116, !noalias !118
  %8060 = select i1 %8056, float %8059, float %7823
  %8061 = call float @dx.op.binary.f32(i32 36, float %8060, float %8055)  ; FMin(a,b)
  %8062 = call float @dx.op.binary.f32(i32 36, float %7909, float %8061)  ; FMin(a,b)
  %8063 = icmp eq i32 %7773, 0
  %8064 = fadd fast float %8062, %8052
  %8065 = fmul fast float %8064, %7754
  %8066 = fadd fast float %8065, %7767
  br i1 %8063, label %8072, label %8067

; <label>:8067                                    ; preds = %8049
  %8068 = fsub fast float %8062, %8052
  %8069 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8068)  ; FMax(a,b)
  %8070 = fmul fast float %8069, %8066
  %8071 = fadd fast float %8070, %8051
  br label %8078

; <label>:8072                                    ; preds = %8049
  %8073 = fsub fast float %8052, %8062
  %8074 = call float @dx.op.unary.f32(i32 6, float %8073)  ; FAbs(value)
  %8075 = fadd fast float %8074, %8050
  %8076 = fmul fast float %8074, %8066
  %8077 = fsub fast float %8051, %8076
  br label %8078

; <label>:8078                                    ; preds = %8072, %8067
  %8079 = phi float [ %8069, %8067 ], [ %8075, %8072 ]
  %8080 = phi float [ %8071, %8067 ], [ %8077, %8072 ]
  %8081 = fcmp fast olt float %8060, %7909
  %8082 = icmp slt i32 %8057, 3
  %8083 = and i1 %8082, %8081
  br i1 %8083, label %8049, label %8084

; <label>:8084                                    ; preds = %8078
  br label %8085

; <label>:8085                                    ; preds = %8084, %8042
  %8086 = phi float [ %7907, %8042 ], [ %8079, %8084 ]
  %8087 = phi float [ %7908, %8042 ], [ %8080, %8084 ]
  %8088 = fsub fast float %7823, %8086
  %8089 = select i1 %7825, float %8086, float %8088
  %8090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8091 = extractvalue %dx.types.CBufRet.f32 %8090, 0
  %8092 = extractvalue %dx.types.CBufRet.f32 %8090, 1
  %8093 = extractvalue %dx.types.CBufRet.f32 %8090, 2
  %8094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8095 = extractvalue %dx.types.CBufRet.f32 %8094, 0
  %8096 = extractvalue %dx.types.CBufRet.f32 %8094, 1
  %8097 = extractvalue %dx.types.CBufRet.f32 %8094, 2
  %8098 = extractvalue %dx.types.CBufRet.f32 %8094, 3
  %8099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8100 = extractvalue %dx.types.CBufRet.f32 %8099, 3
  %8101 = call float @dx.op.binary.f32(i32 36, float %8087, float %8100)  ; FMin(a,b)
  %8102 = fmul fast float %8098, %8089
  %8103 = call float @dx.op.unary.f32(i32 7, float %8102)  ; Saturate(value)
  %8104 = fsub fast float %8095, %8091
  %8105 = fsub fast float %8096, %8092
  %8106 = fsub fast float %8097, %8093
  %8107 = fmul fast float %8103, %8104
  %8108 = fmul fast float %8103, %8105
  %8109 = fmul fast float %8103, %8106
  %8110 = fadd fast float %8107, %8091
  %8111 = fadd fast float %8108, %8092
  %8112 = fadd fast float %8109, %8093
  %8113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8114 = extractvalue %dx.types.CBufRet.f32 %8113, 0
  %8115 = extractvalue %dx.types.CBufRet.f32 %8113, 1
  %8116 = fadd fast float %8115, %8114
  %8117 = call float @dx.op.unary.f32(i32 7, float %8116)  ; Saturate(value)
  %8118 = extractvalue %dx.types.CBufRet.f32 %8113, 2
  %8119 = extractvalue %dx.types.CBufRet.f32 %8113, 3
  %8120 = fadd fast float %8119, %8118
  %8121 = call float @dx.op.unary.f32(i32 7, float %8120)  ; Saturate(value)
  %8122 = fmul fast float %8117, %8101
  %8123 = fmul fast float %8122, %8121
  br label %8124

; <label>:8124                                    ; preds = %8085, %8004, %7839, %7821, %7819
  %8125 = phi float [ %7848, %7839 ], [ %8007, %8004 ], [ %8089, %8085 ], [ 0.000000e+00, %7819 ], [ 0.000000e+00, %7821 ]
  %8126 = phi float [ %7882, %7839 ], [ %8041, %8004 ], [ %8123, %8085 ], [ 0.000000e+00, %7819 ], [ 0.000000e+00, %7821 ]
  %8127 = phi float [ %7869, %7839 ], [ %8028, %8004 ], [ %8110, %8085 ], [ 0.000000e+00, %7819 ], [ 0.000000e+00, %7821 ]
  %8128 = phi float [ %7870, %7839 ], [ %8029, %8004 ], [ %8111, %8085 ], [ 0.000000e+00, %7819 ], [ 0.000000e+00, %7821 ]
  %8129 = phi float [ %7871, %7839 ], [ %8030, %8004 ], [ %8112, %8085 ], [ 0.000000e+00, %7819 ], [ 0.000000e+00, %7821 ]
  %8130 = fmul fast float %7762, %8126
  %8131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8132 = extractvalue %dx.types.CBufRet.f32 %8131, 2
  %8133 = fsub fast float %7769, %8132
  %8134 = fcmp fast olt float %8130, -2.000000e+01
  %8135 = call float @dx.op.unary.f32(i32 21, float %8130)  ; Exp(value)
  %8136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8137 = extractvalue %dx.types.CBufRet.f32 %8136, 2
  %8138 = extractvalue %dx.types.CBufRet.f32 %8136, 3
  %8139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8140 = extractvalue %dx.types.CBufRet.f32 %8139, 2
  %8141 = fmul fast float %8138, %8133
  %8142 = call float @dx.op.unary.f32(i32 7, float %8141)  ; Saturate(value)
  %8143 = fsub fast float 1.000000e+00, %8142
  %8144 = fmul fast float %7754, 5.000000e-01
  %8145 = fadd fast float %8144, 5.000000e-01
  %8146 = call float @dx.op.unary.f32(i32 7, float %8145)  ; Saturate(value)
  %8147 = fsub fast float 1.000000e+00, %8146
  %8148 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8143)  ; FMax(a,b)
  %8149 = fdiv fast float %8147, %8148
  %8150 = fsub fast float %8133, %7711
  %8151 = call float @dx.op.unary.f32(i32 6, float %8150)  ; FAbs(value)
  %8152 = fmul fast float %8151, %8137
  %8153 = call float @dx.op.unary.f32(i32 7, float %8149)  ; Saturate(value)
  %8154 = fsub fast float 1.000000e+00, %8152
  %8155 = fmul fast float %8154, %8153
  %8156 = fadd fast float %8155, %8152
  %8157 = fmul fast float %8140, %8133
  %8158 = call float @dx.op.unary.f32(i32 7, float %8157)  ; Saturate(value)
  %8159 = fsub fast float 1.000000e+00, %8156
  %8160 = fmul fast float %8159, %8158
  %8161 = fadd fast float %8160, %8156
  %8162 = call float @dx.op.unary.f32(i32 7, float %8161)  ; Saturate(value)
  %8163 = fadd fast float %8135, -1.000000e+00
  %8164 = select i1 %8134, float -1.000000e+00, float %8163
  %8165 = fmul fast float %8162, %8164
  %8166 = fadd fast float %8165, 1.000000e+00
  %8167 = fsub fast float -0.000000e+00, %8165
  %8168 = fmul fast float %8127, %8167
  %8169 = fmul fast float %8128, %8167
  %8170 = fmul fast float %8129, %8167
  br label %8171

; <label>:8171                                    ; preds = %8124, %7720
  %8172 = phi float [ %8125, %8124 ], [ 0.000000e+00, %7720 ]
  %8173 = phi float [ %8166, %8124 ], [ 1.000000e+00, %7720 ]
  %8174 = phi float [ %8168, %8124 ], [ 0.000000e+00, %7720 ]
  %8175 = phi float [ %8169, %8124 ], [ 0.000000e+00, %7720 ]
  %8176 = phi float [ %8170, %8124 ], [ 0.000000e+00, %7720 ]
  %8177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8178 = extractvalue %dx.types.CBufRet.f32 %8177, 1
  %8179 = fsub fast float 1.000000e+00, %8173
  %8180 = fmul fast float %8179, %7755
  %8181 = fmul fast float %8180, %8178
  %8182 = fsub fast float %7755, %8181
  br i1 %7748, label %8183, label %8212, !dx.controlflow.hints !154

; <label>:8183                                    ; preds = %8171
  %8184 = fmul fast float %7756, %7745
  %8185 = fadd fast float %8184, %7746
  %8186 = call float @dx.op.unary.f32(i32 7, float %8185)  ; Saturate(value)
  %8187 = fmul fast float %7727, %8182
  %8188 = fsub fast float -0.000000e+00, %8187
  %8189 = fmul fast float %7728, %8182
  %8190 = fsub fast float -0.000000e+00, %8189
  %8191 = call float @dx.op.unary.f32(i32 21, float %8188)  ; Exp(value)
  %8192 = call float @dx.op.unary.f32(i32 21, float %8190)  ; Exp(value)
  %8193 = call float @dx.op.binary.f32(i32 35, float %7735, float %8191)  ; FMax(a,b)
  %8194 = call float @dx.op.binary.f32(i32 35, float %7735, float %8192)  ; FMax(a,b)
  %8195 = fsub fast float %8194, %8193
  %8196 = fmul fast float %8195, %8186
  %8197 = fadd fast float %8196, %8193
  %8198 = call float @dx.op.unary.f32(i32 7, float %8197)  ; Saturate(value)
  %8199 = fsub fast float %7732, %7737
  %8200 = fsub fast float %7733, %7738
  %8201 = fsub fast float %7734, %7739
  %8202 = fmul fast float %8186, %8199
  %8203 = fmul fast float %8186, %8200
  %8204 = fmul fast float %8186, %8201
  %8205 = fadd fast float %8202, %7737
  %8206 = fadd fast float %8203, %7738
  %8207 = fadd fast float %8204, %7739
  %8208 = fsub fast float 1.000000e+00, %8198
  %8209 = fmul fast float %8208, %8205
  %8210 = fmul fast float %8208, %8206
  %8211 = fmul fast float %8208, %8207
  br label %8271

; <label>:8212                                    ; preds = %8171
  %8213 = fmul fast float %8182, %7744
  %8214 = call float @dx.op.unary.f32(i32 7, float %8213)  ; Saturate(value)
  %8215 = fsub fast float 2.000000e+00, %8214
  %8216 = fmul fast float %8214, 9.921875e-01
  %8217 = fmul fast float %8216, %8215
  %8218 = fadd fast float %8217, 3.906250e-03
  %8219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %8218, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8220 = extractvalue %dx.types.ResRet.f32 %8219, 0
  %8221 = fsub fast float %8214, %8220
  %8222 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8221)  ; FMax(a,b)
  %8223 = fmul fast float %7730, %7711
  %8224 = call float @dx.op.unary.f32(i32 6, float %8223)  ; FAbs(value)
  %8225 = fcmp fast ogt float %8224, 0x3EB0C6F7A0000000
  br i1 %8225, label %8226, label %8232, !dx.controlflow.hints !155

; <label>:8226                                    ; preds = %8212
  %8227 = fmul fast float %8223, 0xBFF7154760000000
  %8228 = call float @dx.op.unary.f32(i32 21, float %8227)  ; Exp(value)
  %8229 = fsub fast float 1.000000e+00, %8228
  %8230 = fdiv fast float %8229, %8223
  %8231 = fmul fast float %8230, %7740
  br label %8232

; <label>:8232                                    ; preds = %8226, %8212
  %8233 = phi float [ %8231, %8226 ], [ %7740, %8212 ]
  %8234 = fadd fast float %8233, %7742
  %8235 = fmul fast float %8234, %8222
  %8236 = fmul fast float %7727, %8235
  %8237 = fsub fast float -0.000000e+00, %8236
  %8238 = fmul fast float %7728, %8235
  %8239 = fsub fast float -0.000000e+00, %8238
  %8240 = fmul fast float %7729, %8235
  %8241 = fsub fast float -0.000000e+00, %8240
  %8242 = call float @dx.op.unary.f32(i32 21, float %8237)  ; Exp(value)
  %8243 = call float @dx.op.unary.f32(i32 21, float %8239)  ; Exp(value)
  %8244 = call float @dx.op.unary.f32(i32 21, float %8241)  ; Exp(value)
  %8245 = fmul fast float %7756, %7756
  %8246 = fadd fast float %8245, 1.000000e+00
  %8247 = fmul fast float %8246, 0x3FAE8EC8A0000000
  %8248 = fmul fast float %8247, %7737
  %8249 = fmul fast float %8247, %7738
  %8250 = fmul fast float %8247, %7739
  %8251 = fmul fast float %7756, %7735
  %8252 = fsub fast float 1.000000e+00, %8251
  %8253 = fmul fast float %7735, %7735
  %8254 = fsub fast float 1.000000e+00, %8253
  %8255 = fmul fast float %8254, 0x3FB45F3060000000
  %8256 = fmul fast float %8252, %8252
  %8257 = fdiv fast float 1.000000e+00, %8256
  %8258 = fmul fast float %8255, %8257
  %8259 = fmul fast float %8258, %7732
  %8260 = fmul fast float %8258, %7733
  %8261 = fmul fast float %8258, %7734
  %8262 = fadd fast float %8259, %8248
  %8263 = fadd fast float %8260, %8249
  %8264 = fadd fast float %8261, %8250
  %8265 = fsub fast float 1.000000e+00, %8242
  %8266 = fsub fast float 1.000000e+00, %8243
  %8267 = fsub fast float 1.000000e+00, %8244
  %8268 = fmul fast float %8262, %8265
  %8269 = fmul fast float %8263, %8266
  %8270 = fmul fast float %8264, %8267
  br label %8271

; <label>:8271                                    ; preds = %8232, %8183
  %8272 = phi float [ %8209, %8183 ], [ %8268, %8232 ]
  %8273 = phi float [ %8210, %8183 ], [ %8269, %8232 ]
  %8274 = phi float [ %8211, %8183 ], [ %8270, %8232 ]
  %8275 = phi float [ %8198, %8183 ], [ %8242, %8232 ]
  %8276 = phi float [ %8198, %8183 ], [ %8243, %8232 ]
  %8277 = phi float [ %8198, %8183 ], [ %8244, %8232 ]
  br i1 %7764, label %8278, label %8476, !dx.controlflow.hints !156

; <label>:8278                                    ; preds = %8271
  %8279 = extractvalue %dx.types.CBufRet.f32 %8177, 0
  %8280 = fmul fast float %8279, %8179
  %8281 = fsub fast float %8174, %8272
  %8282 = fsub fast float %8175, %8273
  %8283 = fsub fast float %8176, %8274
  %8284 = fmul fast float %8280, %8281
  %8285 = fmul fast float %8280, %8282
  %8286 = fmul fast float %8280, %8283
  %8287 = fadd fast float %8284, %8272
  %8288 = fadd fast float %8285, %8273
  %8289 = fadd fast float %8286, %8274
  %8290 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8275)  ; FMax(a,b)
  %8291 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8276)  ; FMax(a,b)
  %8292 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8277)  ; FMax(a,b)
  %8293 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8173)  ; FMax(a,b)
  %8294 = call float @dx.op.binary.f32(i32 35, float %8172, float %8182)  ; FMax(a,b)
  %8295 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8294)  ; FMax(a,b)
  %8296 = fdiv fast float %8172, %8295
  %8297 = call float @dx.op.unary.f32(i32 7, float %8296)  ; Saturate(value)
  %8298 = fdiv fast float %8182, %8295
  %8299 = call float @dx.op.unary.f32(i32 7, float %8298)  ; Saturate(value)
  %8300 = fcmp fast une float %8293, 1.000000e+00
  br i1 %8300, label %8301, label %8314, !dx.controlflow.hints !157

; <label>:8301                                    ; preds = %8278
  %8302 = call float @dx.op.unary.f32(i32 23, float %8293)  ; Log(value)
  %8303 = fmul fast float %8302, 0x3FE62E4300000000
  %8304 = fmul fast float %8174, %8303
  %8305 = fsub fast float -0.000000e+00, %8304
  %8306 = fmul fast float %8175, %8303
  %8307 = fsub fast float -0.000000e+00, %8306
  %8308 = fmul fast float %8176, %8303
  %8309 = fsub fast float -0.000000e+00, %8308
  %8310 = fsub fast float 1.000000e+00, %8293
  %8311 = fdiv fast float %8305, %8310
  %8312 = fdiv fast float %8307, %8310
  %8313 = fdiv fast float %8309, %8310
  br label %8314

; <label>:8314                                    ; preds = %8301, %8278
  %8315 = phi float [ %8311, %8301 ], [ %8174, %8278 ]
  %8316 = phi float [ %8312, %8301 ], [ %8175, %8278 ]
  %8317 = phi float [ %8313, %8301 ], [ %8176, %8278 ]
  %8318 = phi float [ %8303, %8301 ], [ 0.000000e+00, %8278 ]
  %8319 = fcmp fast une float %8290, 1.000000e+00
  br i1 %8319, label %8320, label %8327, !dx.controlflow.hints !158

; <label>:8320                                    ; preds = %8314
  %8321 = call float @dx.op.unary.f32(i32 23, float %8290)  ; Log(value)
  %8322 = fmul fast float %8321, 0x3FE62E4300000000
  %8323 = fmul fast float %8287, %8322
  %8324 = fsub fast float -0.000000e+00, %8323
  %8325 = fsub fast float 1.000000e+00, %8290
  %8326 = fdiv fast float %8324, %8325
  br label %8327

; <label>:8327                                    ; preds = %8320, %8314
  %8328 = phi float [ %8326, %8320 ], [ %8287, %8314 ]
  %8329 = phi float [ %8322, %8320 ], [ 0.000000e+00, %8314 ]
  %8330 = fcmp fast une float %8291, 1.000000e+00
  br i1 %8330, label %8331, label %8338, !dx.controlflow.hints !158

; <label>:8331                                    ; preds = %8327
  %8332 = call float @dx.op.unary.f32(i32 23, float %8291)  ; Log(value)
  %8333 = fmul fast float %8332, 0x3FE62E4300000000
  %8334 = fmul fast float %8288, %8333
  %8335 = fsub fast float -0.000000e+00, %8334
  %8336 = fsub fast float 1.000000e+00, %8291
  %8337 = fdiv fast float %8335, %8336
  br label %8338

; <label>:8338                                    ; preds = %8331, %8327
  %8339 = phi float [ %8337, %8331 ], [ %8288, %8327 ]
  %8340 = phi float [ %8333, %8331 ], [ 0.000000e+00, %8327 ]
  %8341 = fcmp fast une float %8292, 1.000000e+00
  br i1 %8341, label %8342, label %8349, !dx.controlflow.hints !158

; <label>:8342                                    ; preds = %8338
  %8343 = call float @dx.op.unary.f32(i32 23, float %8292)  ; Log(value)
  %8344 = fmul fast float %8343, 0x3FE62E4300000000
  %8345 = fmul fast float %8289, %8344
  %8346 = fsub fast float -0.000000e+00, %8345
  %8347 = fsub fast float 1.000000e+00, %8292
  %8348 = fdiv fast float %8346, %8347
  br label %8349

; <label>:8349                                    ; preds = %8342, %8338
  %8350 = phi float [ %8348, %8342 ], [ %8289, %8338 ]
  %8351 = phi float [ %8344, %8342 ], [ 0.000000e+00, %8338 ]
  %8352 = fmul fast float %8315, %8299
  %8353 = fmul fast float %8316, %8299
  %8354 = fmul fast float %8317, %8299
  %8355 = fmul fast float %8318, %8299
  %8356 = fmul fast float %8328, %8297
  %8357 = fmul fast float %8339, %8297
  %8358 = fmul fast float %8350, %8297
  %8359 = fmul fast float %8329, %8297
  %8360 = fmul fast float %8340, %8297
  %8361 = fmul fast float %8351, %8297
  %8362 = fadd fast float %8356, %8352
  %8363 = fadd fast float %8357, %8353
  %8364 = fadd fast float %8358, %8354
  %8365 = fadd fast float %8359, %8355
  %8366 = fadd fast float %8360, %8355
  %8367 = fadd fast float %8361, %8355
  %8368 = fcmp fast une float %8365, 0.000000e+00
  br i1 %8368, label %8369, label %8376, !dx.controlflow.hints !159

; <label>:8369                                    ; preds = %8349
  %8370 = fmul fast float %8365, 0x3FF7154760000000
  %8371 = call float @dx.op.unary.f32(i32 21, float %8370)  ; Exp(value)
  %8372 = fsub fast float 1.000000e+00, %8371
  %8373 = fmul fast float %8362, %8372
  %8374 = fsub fast float -0.000000e+00, %8373
  %8375 = fdiv fast float %8374, %8365
  br label %8376

; <label>:8376                                    ; preds = %8369, %8349
  %8377 = phi float [ %8371, %8369 ], [ 1.000000e+00, %8349 ]
  %8378 = phi float [ %8375, %8369 ], [ %8362, %8349 ]
  %8379 = fcmp fast une float %8366, 0.000000e+00
  br i1 %8379, label %8380, label %8387, !dx.controlflow.hints !159

; <label>:8380                                    ; preds = %8376
  %8381 = fmul fast float %8366, 0x3FF7154760000000
  %8382 = call float @dx.op.unary.f32(i32 21, float %8381)  ; Exp(value)
  %8383 = fsub fast float 1.000000e+00, %8382
  %8384 = fmul fast float %8363, %8383
  %8385 = fsub fast float -0.000000e+00, %8384
  %8386 = fdiv fast float %8385, %8366
  br label %8387

; <label>:8387                                    ; preds = %8380, %8376
  %8388 = phi float [ %8382, %8380 ], [ 1.000000e+00, %8376 ]
  %8389 = phi float [ %8386, %8380 ], [ %8363, %8376 ]
  %8390 = fcmp fast une float %8367, 0.000000e+00
  br i1 %8390, label %8391, label %8398, !dx.controlflow.hints !159

; <label>:8391                                    ; preds = %8387
  %8392 = fmul fast float %8367, 0x3FF7154760000000
  %8393 = call float @dx.op.unary.f32(i32 21, float %8392)  ; Exp(value)
  %8394 = fsub fast float 1.000000e+00, %8393
  %8395 = fmul fast float %8364, %8394
  %8396 = fsub fast float -0.000000e+00, %8395
  %8397 = fdiv fast float %8396, %8367
  br label %8398

; <label>:8398                                    ; preds = %8391, %8387
  %8399 = phi float [ %8393, %8391 ], [ 1.000000e+00, %8387 ]
  %8400 = phi float [ %8397, %8391 ], [ %8364, %8387 ]
  %8401 = fcmp fast ogt float %8297, %8299
  br i1 %8401, label %8402, label %8422

; <label>:8402                                    ; preds = %8398
  %8403 = fsub fast float 1.000000e+00, %8299
  %8404 = fmul fast float %8315, %8403
  %8405 = fmul fast float %8316, %8403
  %8406 = fmul fast float %8317, %8403
  %8407 = fmul fast float %8318, %8403
  %8408 = fcmp fast une float %8407, 0.000000e+00
  br i1 %8408, label %8409, label %8460, !dx.controlflow.hints !160

; <label>:8409                                    ; preds = %8402
  %8410 = fmul fast float %8407, 0x3FF7154760000000
  %8411 = call float @dx.op.unary.f32(i32 21, float %8410)  ; Exp(value)
  %8412 = fsub fast float 1.000000e+00, %8411
  %8413 = fmul fast float %8404, %8412
  %8414 = fsub fast float -0.000000e+00, %8413
  %8415 = fmul fast float %8405, %8412
  %8416 = fsub fast float -0.000000e+00, %8415
  %8417 = fmul fast float %8406, %8412
  %8418 = fsub fast float -0.000000e+00, %8417
  %8419 = fdiv fast float %8414, %8407
  %8420 = fdiv fast float %8416, %8407
  %8421 = fdiv fast float %8418, %8407
  br label %8460

; <label>:8422                                    ; preds = %8398
  %8423 = fsub fast float 1.000000e+00, %8297
  %8424 = fmul fast float %8328, %8423
  %8425 = fmul fast float %8339, %8423
  %8426 = fmul fast float %8350, %8423
  %8427 = fmul fast float %8329, %8423
  %8428 = fmul fast float %8340, %8423
  %8429 = fmul fast float %8351, %8423
  %8430 = fcmp fast une float %8427, 0.000000e+00
  br i1 %8430, label %8431, label %8438, !dx.controlflow.hints !159

; <label>:8431                                    ; preds = %8422
  %8432 = fmul fast float %8427, 0x3FF7154760000000
  %8433 = call float @dx.op.unary.f32(i32 21, float %8432)  ; Exp(value)
  %8434 = fsub fast float 1.000000e+00, %8433
  %8435 = fmul fast float %8424, %8434
  %8436 = fsub fast float -0.000000e+00, %8435
  %8437 = fdiv fast float %8436, %8427
  br label %8438

; <label>:8438                                    ; preds = %8431, %8422
  %8439 = phi float [ %8437, %8431 ], [ %8424, %8422 ]
  %8440 = phi float [ %8433, %8431 ], [ 1.000000e+00, %8422 ]
  %8441 = fcmp fast une float %8428, 0.000000e+00
  br i1 %8441, label %8442, label %8449, !dx.controlflow.hints !159

; <label>:8442                                    ; preds = %8438
  %8443 = fmul fast float %8428, 0x3FF7154760000000
  %8444 = call float @dx.op.unary.f32(i32 21, float %8443)  ; Exp(value)
  %8445 = fsub fast float 1.000000e+00, %8444
  %8446 = fmul fast float %8425, %8445
  %8447 = fsub fast float -0.000000e+00, %8446
  %8448 = fdiv fast float %8447, %8428
  br label %8449

; <label>:8449                                    ; preds = %8442, %8438
  %8450 = phi float [ %8448, %8442 ], [ %8425, %8438 ]
  %8451 = phi float [ %8444, %8442 ], [ 1.000000e+00, %8438 ]
  %8452 = fcmp fast une float %8429, 0.000000e+00
  br i1 %8452, label %8453, label %8460, !dx.controlflow.hints !159

; <label>:8453                                    ; preds = %8449
  %8454 = fmul fast float %8429, 0x3FF7154760000000
  %8455 = call float @dx.op.unary.f32(i32 21, float %8454)  ; Exp(value)
  %8456 = fsub fast float 1.000000e+00, %8455
  %8457 = fmul fast float %8426, %8456
  %8458 = fsub fast float -0.000000e+00, %8457
  %8459 = fdiv fast float %8458, %8429
  br label %8460

; <label>:8460                                    ; preds = %8453, %8449, %8409, %8402
  %8461 = phi float [ %8459, %8453 ], [ %8421, %8409 ], [ %8406, %8402 ], [ %8426, %8449 ]
  %8462 = phi float [ %8450, %8453 ], [ %8420, %8409 ], [ %8405, %8402 ], [ %8450, %8449 ]
  %8463 = phi float [ %8439, %8453 ], [ %8419, %8409 ], [ %8404, %8402 ], [ %8439, %8449 ]
  %8464 = phi float [ %8455, %8453 ], [ %8411, %8409 ], [ 1.000000e+00, %8402 ], [ 1.000000e+00, %8449 ]
  %8465 = phi float [ %8451, %8453 ], [ %8411, %8409 ], [ 1.000000e+00, %8402 ], [ %8451, %8449 ]
  %8466 = phi float [ %8440, %8453 ], [ %8411, %8409 ], [ 1.000000e+00, %8402 ], [ %8440, %8449 ]
  %8467 = fmul fast float %8466, %8378
  %8468 = fmul fast float %8465, %8389
  %8469 = fmul fast float %8464, %8400
  %8470 = fadd fast float %8467, %8463
  %8471 = fadd fast float %8468, %8462
  %8472 = fadd fast float %8469, %8461
  %8473 = fmul fast float %8466, %8377
  %8474 = fmul fast float %8465, %8388
  %8475 = fmul fast float %8464, %8399
  br label %8476

; <label>:8476                                    ; preds = %8460, %8271
  %8477 = phi float [ %8475, %8460 ], [ %8277, %8271 ]
  %8478 = phi float [ %8474, %8460 ], [ %8276, %8271 ]
  %8479 = phi float [ %8473, %8460 ], [ %8275, %8271 ]
  %8480 = phi float [ %8472, %8460 ], [ %8274, %8271 ]
  %8481 = phi float [ %8471, %8460 ], [ %8273, %8271 ]
  %8482 = phi float [ %8470, %8460 ], [ %8272, %8271 ]
  %8483 = fmul fast float %8479, %7719
  %8484 = call float @dx.op.dot3.f32(i32 55, float %8479, float %8478, float %8477, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8485 = call float @dx.op.dot3.f32(i32 55, float %8482, float %8481, float %8480, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8486 = select i1 %286, float %8484, float %8479
  %8487 = select i1 %286, float %8484, float %8478
  %8488 = select i1 %286, float 1.000000e+00, float %8477
  %8489 = select i1 %286, float %8485, float %8482
  %8490 = select i1 %286, float 0.000000e+00, float %8481
  %8491 = select i1 %286, float 0.000000e+00, float %8480
  %8492 = fmul fast float %8486, %7713
  %8493 = fmul fast float %8487, %7714
  %8494 = fmul fast float %8488, %7715
  %8495 = fadd fast float %8492, %8489
  %8496 = fadd fast float %8493, %8490
  %8497 = fadd fast float %8491, %8494
  %8498 = fmul fast float %8486, %7716
  %8499 = fmul fast float %8487, %7717
  %8500 = fmul fast float %8488, %7718
  %8501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8502 = extractvalue %dx.types.CBufRet.i32 %8501, 0
  %8503 = icmp eq i32 %8502, 0
  br i1 %8503, label %8861, label %8504, !dx.controlflow.hints !161

; <label>:8504                                    ; preds = %8476
  %8505 = fmul fast float %6209, %101
  %8506 = fmul fast float %6210, %102
  %8507 = fmul fast float %8505, 2.000000e+00
  %8508 = fmul fast float %8506, 2.000000e+00
  %8509 = fsub fast float 1.000000e+00, %8507
  %8510 = fsub fast float 1.000000e+00, %8508
  %8511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8512 = extractvalue %dx.types.CBufRet.f32 %8511, 0
  %8513 = extractvalue %dx.types.CBufRet.f32 %8511, 1
  %8514 = extractvalue %dx.types.CBufRet.f32 %8511, 2
  %8515 = fmul fast float %8509, %8512
  %8516 = fmul fast float %8509, %8513
  %8517 = fmul fast float %8509, %8514
  %8518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8519 = extractvalue %dx.types.CBufRet.f32 %8518, 0
  %8520 = extractvalue %dx.types.CBufRet.f32 %8518, 1
  %8521 = extractvalue %dx.types.CBufRet.f32 %8518, 2
  %8522 = fmul fast float %8510, %8519
  %8523 = fmul fast float %8510, %8520
  %8524 = fmul fast float %8510, %8521
  %8525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8526 = extractvalue %dx.types.CBufRet.f32 %8525, 0
  %8527 = extractvalue %dx.types.CBufRet.f32 %8525, 1
  %8528 = extractvalue %dx.types.CBufRet.f32 %8525, 2
  %8529 = fadd fast float %8522, %8526
  %8530 = fadd fast float %8529, %8515
  %8531 = fadd fast float %8523, %8527
  %8532 = fadd fast float %8531, %8516
  %8533 = fadd fast float %8524, %8528
  %8534 = fadd fast float %8533, %8517
  %8535 = fmul fast float %8530, %7712
  %8536 = fmul fast float %8532, %7712
  %8537 = fmul fast float %8534, %7712
  %8538 = fmul fast float %8535, %8535
  %8539 = fmul fast float %8536, %8536
  %8540 = fadd fast float %8538, %8539
  %8541 = fmul fast float %8537, %8537
  %8542 = fadd fast float %8540, %8541
  %8543 = call float @dx.op.unary.f32(i32 24, float %8542)  ; Sqrt(value)
  %8544 = extractvalue %dx.types.CBufRet.f32 %7447, 0
  %8545 = fsub fast float %8543, %8544
  %8546 = extractvalue %dx.types.CBufRet.f32 %7447, 2
  %8547 = fmul fast float %8545, %8546
  %8548 = call float @dx.op.unary.f32(i32 7, float %8547)  ; Saturate(value)
  %8549 = fadd fast float %8548, -5.000000e-01
  %8550 = fmul fast float %8549, 2.000000e+00
  %8551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8552 = extractvalue %dx.types.CBufRet.f32 %8551, 2
  %8553 = call float @dx.op.binary.f32(i32 36, float %8552, float %8550)  ; FMin(a,b)
  %8554 = fsub fast float -0.000000e+00, %8552
  %8555 = fcmp fast ogt float %8553, %8554
  br i1 %8555, label %8556, label %8861, !dx.controlflow.hints !162

; <label>:8556                                    ; preds = %8504
  %8557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8558 = extractvalue %dx.types.CBufRet.f32 %8557, 3
  %8559 = fcmp fast ogt float %8558, 0.000000e+00
  br i1 %8559, label %8560, label %8633, !dx.controlflow.hints !163

; <label>:8560                                    ; preds = %8556
  %8561 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %8562 = extractvalue %dx.types.Dimensions %8561, 0
  %8563 = sitofp i32 %8562 to float
  %8564 = extractvalue %dx.types.Dimensions %8561, 1
  %8565 = sitofp i32 %8564 to float
  %8566 = fmul fast float %8505, %8563
  %8567 = fmul fast float %8506, %8565
  %8568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %8569 = extractvalue %dx.types.CBufRet.f32 %8568, 1
  %8570 = fsub fast float -0.000000e+00, %8569
  %8571 = fptoui float %8570 to i32
  %8572 = fptoui float %8566 to i32
  %8573 = fptoui float %8567 to i32
  %8574 = and i32 %8571, 31
  %8575 = lshr i32 %8572, %8574
  %8576 = lshr i32 %8573, %8574
  %8577 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %8571, i32 %8575, i32 %8576, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8578 = extractvalue %dx.types.ResRet.f32 %8577, 0
  %8579 = fcmp fast olt float %8578, -1.000000e+00
  %8580 = fcmp fast ogt float %8578, -1.000000e+00
  %8581 = select i1 %8580, float %6217, float 1.000000e+00
  %8582 = fadd fast float %8578, 1.000000e+00
  %8583 = fmul fast float %8581, %8582
  %8584 = call float @dx.op.unary.f32(i32 6, float %8583)  ; FAbs(value)
  %8585 = extractvalue %dx.types.CBufRet.f32 %6216, 3
  %8586 = fcmp fast oge float %8584, %8585
  %8587 = select i1 %8586, float 0x4197782600000000, float %8584
  %8588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8589 = extractvalue %dx.types.CBufRet.f32 %8588, 0
  %8590 = extractvalue %dx.types.CBufRet.f32 %8588, 1
  %8591 = extractvalue %dx.types.CBufRet.f32 %8588, 2
  %8592 = select i1 %8579, float %8589, float %8512
  %8593 = select i1 %8579, float %8590, float %8513
  %8594 = select i1 %8579, float %8591, float %8514
  %8595 = fmul fast float %8592, %8509
  %8596 = fmul fast float %8593, %8509
  %8597 = fmul fast float %8594, %8509
  %8598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8599 = extractvalue %dx.types.CBufRet.f32 %8598, 0
  %8600 = extractvalue %dx.types.CBufRet.f32 %8598, 1
  %8601 = extractvalue %dx.types.CBufRet.f32 %8598, 2
  %8602 = select i1 %8579, float %8599, float %8519
  %8603 = select i1 %8579, float %8600, float %8520
  %8604 = select i1 %8579, float %8601, float %8521
  %8605 = fmul fast float %8602, %8510
  %8606 = fmul fast float %8603, %8510
  %8607 = fmul fast float %8604, %8510
  %8608 = fadd fast float %8605, %8595
  %8609 = fadd fast float %8606, %8596
  %8610 = fadd fast float %8607, %8597
  %8611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8612 = extractvalue %dx.types.CBufRet.f32 %8611, 0
  %8613 = extractvalue %dx.types.CBufRet.f32 %8611, 1
  %8614 = extractvalue %dx.types.CBufRet.f32 %8611, 2
  %8615 = select i1 %8579, float %8612, float %8526
  %8616 = select i1 %8579, float %8613, float %8527
  %8617 = select i1 %8579, float %8614, float %8528
  %8618 = fadd fast float %8608, %8615
  %8619 = fadd fast float %8609, %8616
  %8620 = fadd fast float %8610, %8617
  %8621 = fmul fast float %8618, %8587
  %8622 = fmul fast float %8619, %8587
  %8623 = fmul fast float %8620, %8587
  %8624 = fmul fast float %8621, %8621
  %8625 = fmul fast float %8622, %8622
  %8626 = fadd fast float %8624, %8625
  %8627 = fmul fast float %8623, %8623
  %8628 = fadd fast float %8626, %8627
  %8629 = call float @dx.op.unary.f32(i32 24, float %8628)  ; Sqrt(value)
  %8630 = fsub fast float %8629, %8544
  %8631 = fmul fast float %8630, %8546
  %8632 = call float @dx.op.unary.f32(i32 7, float %8631)  ; Saturate(value)
  br label %8633

; <label>:8633                                    ; preds = %8560, %8556
  %8634 = phi float [ %8632, %8560 ], [ 1.000000e+00, %8556 ]
  %8635 = fmul fast float %8553, 5.000000e-01
  %8636 = fadd fast float %8635, 5.000000e-01
  %8637 = call float @dx.op.unary.f32(i32 22, float %8636)  ; Frc(value)
  %8638 = call float @dx.op.unary.f32(i32 27, float %8637)  ; Round_ni(value)
  %8639 = call float @dx.op.unary.f32(i32 22, float %8637)  ; Frc(value)
  %8640 = fmul fast float %8639, 2.000000e+00
  %8641 = fadd fast float %8640, -1.000000e+00
  %8642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %39, float %8505, float %8506, float %8638, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8643 = extractvalue %dx.types.ResRet.f32 %8642, 0
  %8644 = extractvalue %dx.types.ResRet.f32 %8642, 1
  %8645 = extractvalue %dx.types.ResRet.f32 %8642, 2
  %8646 = extractvalue %dx.types.ResRet.f32 %8642, 3
  %8647 = fadd fast float %8643, -5.000000e-01
  %8648 = fadd fast float %8645, -5.000000e-01
  %8649 = fmul fast float %8647, 0xBFD5555560000000
  %8650 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8648, float %8649)  ; FMad(a,b,c)
  %8651 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8644, float 0.000000e+00)  ; FMad(a,b,c)
  %8652 = fadd fast float %8651, %8646
  %8653 = fmul fast float %8647, -7.500000e-01
  %8654 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8648, float %8653)  ; FMad(a,b,c)
  %8655 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8644, float 0.000000e+00)  ; FMad(a,b,c)
  %8656 = fadd fast float %8655, %8646
  %8657 = call float @dx.op.binary.f32(i32 35, float %8650, float -1.000000e+00)  ; FMax(a,b)
  %8658 = call float @dx.op.binary.f32(i32 35, float %8652, float -1.000000e+00)  ; FMax(a,b)
  %8659 = call float @dx.op.binary.f32(i32 35, float %8654, float -1.000000e+00)  ; FMax(a,b)
  %8660 = call float @dx.op.binary.f32(i32 35, float %8656, float -1.000000e+00)  ; FMax(a,b)
  %8661 = call float @dx.op.binary.f32(i32 36, float %8657, float 1.000000e+00)  ; FMin(a,b)
  %8662 = call float @dx.op.binary.f32(i32 36, float %8658, float 1.000000e+00)  ; FMin(a,b)
  %8663 = call float @dx.op.binary.f32(i32 36, float %8659, float 1.000000e+00)  ; FMin(a,b)
  %8664 = call float @dx.op.binary.f32(i32 36, float %8660, float 1.000000e+00)  ; FMin(a,b)
  %8665 = fcmp fast olt float %8661, 0x3FEFFF8020000000
  br i1 %8665, label %8666, label %8781, !dx.controlflow.hints !164

; <label>:8666                                    ; preds = %8633
  %8667 = extractvalue %dx.types.CBufRet.f32 %8551, 3
  %8668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8669 = extractvalue %dx.types.CBufRet.f32 %8668, 0
  %8670 = extractvalue %dx.types.CBufRet.f32 %8668, 1
  %8671 = extractvalue %dx.types.CBufRet.f32 %8668, 2
  %8672 = extractvalue %dx.types.CBufRet.f32 %8668, 3
  %8673 = fsub fast float %8669, %8661
  %8674 = fsub fast float %8670, %8662
  %8675 = fsub fast float %8671, %8663
  %8676 = fsub fast float %8672, %8664
  %8677 = fmul fast float %8673, %8667
  %8678 = fmul fast float %8674, %8667
  %8679 = fmul fast float %8675, %8667
  %8680 = fmul fast float %8676, %8667
  %8681 = fadd fast float %8677, %8661
  %8682 = fadd fast float %8678, %8662
  %8683 = fsub fast float -0.000000e+00, %8682
  %8684 = fadd fast float %8679, %8663
  %8685 = fadd fast float %8680, %8664
  %8686 = fmul fast float %8681, %8681
  %8687 = fsub fast float %8682, %8686
  %8688 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8687)  ; FMax(a,b)
  %8689 = fdiv fast float 1.000000e+00, %8688
  %8690 = fmul fast float %8682, %8681
  %8691 = fsub fast float %8684, %8690
  %8692 = fsub fast float %8641, %8681
  %8693 = fmul fast float %8641, %8641
  %8694 = fsub fast float %8693, %8682
  %8695 = fmul fast float %8692, %8689
  %8696 = fmul fast float %8695, %8691
  %8697 = fsub fast float %8694, %8696
  %8698 = fmul fast float %8682, %8682
  %8699 = fsub fast float %8685, %8698
  %8700 = fmul fast float %8691, %8691
  %8701 = fmul fast float %8700, %8689
  %8702 = fsub fast float %8699, %8701
  %8703 = fdiv fast float %8697, %8702
  %8704 = fmul fast float %8691, %8703
  %8705 = fsub fast float %8692, %8704
  %8706 = fmul fast float %8705, %8689
  %8707 = fmul fast float %8706, %8681
  %8708 = fsub fast float 1.000000e+00, %8707
  %8709 = fmul fast float %8682, %8703
  %8710 = fsub fast float %8708, %8709
  %8711 = fmul fast float %8706, %8706
  %8712 = fmul fast float %8703, 4.000000e+00
  %8713 = fmul fast float %8712, %8710
  %8714 = fsub fast float %8711, %8713
  %8715 = call float @dx.op.unary.f32(i32 24, float %8714)  ; Sqrt(value)
  %8716 = fcmp fast oge float %8706, 0.000000e+00
  %8717 = fsub fast float -0.000000e+00, %8715
  %8718 = select i1 %8716, float %8717, float %8715
  %8719 = fsub fast float %8718, %8706
  %8720 = fdiv fast float %8719, %8703
  %8721 = fdiv fast float %8710, %8719
  %8722 = fmul fast float %8720, 5.000000e-01
  %8723 = fmul fast float %8721, 2.000000e+00
  %8724 = select i1 %8716, float %8722, float %8723
  %8725 = select i1 %8716, float %8723, float %8722
  %8726 = call float @dx.op.binary.f32(i32 35, float %8724, float %8725)  ; FMax(a,b)
  %8727 = call float @dx.op.binary.f32(i32 36, float %8724, float %8725)  ; FMin(a,b)
  %8728 = fcmp fast ogt float %8641, %8727
  br i1 %8728, label %8729, label %8739

; <label>:8729                                    ; preds = %8666
  %8730 = fsub fast float %8641, %8727
  %8731 = fsub fast float %8726, %8727
  %8732 = fmul fast float %8730, %8731
  %8733 = fmul fast float %8726, %8641
  %8734 = fadd fast float %8726, %8641
  %8735 = fmul fast float %8734, %8681
  %8736 = fadd fast float %8733, %8682
  %8737 = fsub fast float %8736, %8735
  %8738 = fdiv fast float %8737, %8732
  br label %8739

; <label>:8739                                    ; preds = %8729, %8666
  %8740 = phi float [ %8738, %8729 ], [ 0.000000e+00, %8666 ]
  %8741 = fcmp fast ogt float %8641, %8726
  %8742 = fsub fast float %8641, %8726
  br i1 %8741, label %8743, label %8753

; <label>:8743                                    ; preds = %8739
  %8744 = fsub fast float %8726, %8727
  %8745 = fmul fast float %8744, %8742
  %8746 = fmul fast float %8727, %8641
  %8747 = fadd fast float %8727, %8641
  %8748 = fmul fast float %8747, %8681
  %8749 = fsub fast float %8683, %8746
  %8750 = fadd fast float %8749, %8748
  %8751 = fdiv fast float %8750, %8745
  %8752 = fadd fast float %8751, %8740
  br label %8753

; <label>:8753                                    ; preds = %8743, %8739
  %8754 = phi float [ %8752, %8743 ], [ %8740, %8739 ]
  %8755 = fsub fast float %8641, %8727
  %8756 = fmul fast float %8755, %8742
  %8757 = fmul fast float %8727, %8726
  %8758 = fadd fast float %8727, %8726
  %8759 = fmul fast float %8758, %8681
  %8760 = fadd fast float %8757, %8682
  %8761 = fsub fast float %8760, %8759
  %8762 = fdiv fast float %8761, %8756
  %8763 = call float @dx.op.unary.f32(i32 7, float %8754)  ; Saturate(value)
  %8764 = fcmp fast oeq float %7448, 0.000000e+00
  %8765 = extractvalue %dx.types.CBufRet.f32 %8551, 0
  %8766 = fcmp fast oeq float %8765, 0.000000e+00
  %8767 = or i1 %8764, %8766
  %8768 = fmul fast float %8765, 2.000000e+00
  %8769 = fadd fast float %8552, %8553
  %8770 = fdiv fast float %8769, %8768
  %8771 = call float @dx.op.unary.f32(i32 7, float %8770)  ; Saturate(value)
  %8772 = fmul fast float %8771, 2.000000e+00
  %8773 = fsub fast float 3.000000e+00, %8772
  %8774 = fmul fast float %8771, %8771
  %8775 = fmul fast float %8774, %8773
  %8776 = select i1 %8767, float 1.000000e+00, float %8775
  %8777 = fmul fast float %8762, %7448
  %8778 = fadd fast float %8763, %8777
  %8779 = call float @dx.op.unary.f32(i32 7, float %8778)  ; Saturate(value)
  %8780 = fmul fast float %8776, %8779
  br label %8781

; <label>:8781                                    ; preds = %8753, %8633
  %8782 = phi float [ %8780, %8753 ], [ 0.000000e+00, %8633 ]
  %8783 = fsub fast float 1.000000e+00, %8782
  %8784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %39, float %8505, float %8506, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8785 = extractvalue %dx.types.ResRet.f32 %8784, 0
  %8786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8787 = extractvalue %dx.types.CBufRet.i32 %8786, 2
  %8788 = icmp eq i32 %8787, 0
  br i1 %8788, label %8794, label %8789

; <label>:8789                                    ; preds = %8781
  %8790 = call float @dx.op.unary.f32(i32 7, float %8782)  ; Saturate(value)
  %8791 = fadd fast float %8785, -1.000000e+00
  %8792 = fmul fast float %8790, %8791
  %8793 = fadd fast float %8792, 1.000000e+00
  br label %8794

; <label>:8794                                    ; preds = %8789, %8781
  %8795 = phi float [ %8793, %8789 ], [ %8783, %8781 ]
  br i1 %8559, label %8796, label %8814

; <label>:8796                                    ; preds = %8794
  %8797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8797, 1
  %8799 = fsub fast float %8634, %8798
  %8800 = call float @dx.op.unary.f32(i32 7, float %8799)  ; Saturate(value)
  %8801 = fsub fast float %8634, %8558
  %8802 = call float @dx.op.unary.f32(i32 7, float %8801)  ; Saturate(value)
  %8803 = fsub fast float %8800, %8802
  %8804 = fsub fast float %8636, %8802
  %8805 = fdiv fast float %8804, %8803
  %8806 = call float @dx.op.unary.f32(i32 7, float %8805)  ; Saturate(value)
  %8807 = fmul fast float %8806, 2.000000e+00
  %8808 = fsub fast float 3.000000e+00, %8807
  %8809 = fsub fast float %8785, %8795
  %8810 = fmul fast float %8806, %8806
  %8811 = fmul fast float %8810, %8809
  %8812 = fmul fast float %8811, %8808
  %8813 = fadd fast float %8812, %8795
  br label %8814

; <label>:8814                                    ; preds = %8796, %8794
  %8815 = phi float [ %8813, %8796 ], [ %8795, %8794 ]
  %8816 = call float @dx.op.binary.f32(i32 35, float %8785, float %8815)  ; FMax(a,b)
  %8817 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8818 = extractvalue %dx.types.CBufRet.i32 %8817, 2
  %8819 = and i32 %8818, 1
  %8820 = icmp eq i32 %8819, 0
  %8821 = fcmp fast une float %8816, 1.000000e+00
  %8822 = and i1 %8821, %8820
  br i1 %8822, label %8823, label %8840

; <label>:8823                                    ; preds = %8814
  %8824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %8505, float %8506, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8825 = extractvalue %dx.types.ResRet.f32 %8824, 0
  %8826 = extractvalue %dx.types.ResRet.f32 %8824, 1
  %8827 = extractvalue %dx.types.ResRet.f32 %8824, 2
  %8828 = fmul fast float %6264, %8825
  %8829 = fmul fast float %6264, %8826
  %8830 = fmul fast float %6264, %8827
  %8831 = fcmp fast ogt float %8785, 0x3FEFFF2E40000000
  %8832 = fsub fast float 1.000000e+00, %8816
  %8833 = fsub fast float 1.000000e+00, %8785
  %8834 = fdiv fast float %8832, %8833
  %8835 = call float @dx.op.unary.f32(i32 7, float %8834)  ; Saturate(value)
  %8836 = select i1 %8831, float 0.000000e+00, float %8835
  %8837 = fmul fast float %8828, %8836
  %8838 = fmul fast float %8829, %8836
  %8839 = fmul fast float %8830, %8836
  br label %8840

; <label>:8840                                    ; preds = %8823, %8814
  %8841 = phi float [ 0.000000e+00, %8814 ], [ %8837, %8823 ]
  %8842 = phi float [ 0.000000e+00, %8814 ], [ %8838, %8823 ]
  %8843 = phi float [ 0.000000e+00, %8814 ], [ %8839, %8823 ]
  %8844 = fmul fast float %8816, %8483
  %8845 = call float @dx.op.dot3.f32(i32 55, float %8816, float %8816, float %8816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8846 = call float @dx.op.dot3.f32(i32 55, float %8841, float %8842, float %8843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8847 = select i1 %286, float %8845, float %8816
  %8848 = select i1 %286, float 1.000000e+00, float %8816
  %8849 = select i1 %286, float %8846, float %8841
  %8850 = select i1 %286, float 0.000000e+00, float %8842
  %8851 = select i1 %286, float 0.000000e+00, float %8843
  %8852 = fmul fast float %8847, %8495
  %8853 = fmul fast float %8847, %8496
  %8854 = fmul fast float %8848, %8497
  %8855 = fadd fast float %8852, %8849
  %8856 = fadd fast float %8853, %8850
  %8857 = fadd fast float %8851, %8854
  %8858 = fmul fast float %8847, %8498
  %8859 = fmul fast float %8847, %8499
  %8860 = fmul fast float %8848, %8500
  br label %8861

; <label>:8861                                    ; preds = %8840, %8504, %8476, %7708
  %8862 = phi float [ %7713, %7708 ], [ %8495, %8476 ], [ %8855, %8840 ], [ %8495, %8504 ]
  %8863 = phi float [ %7714, %7708 ], [ %8496, %8476 ], [ %8856, %8840 ], [ %8496, %8504 ]
  %8864 = phi float [ %7715, %7708 ], [ %8497, %8476 ], [ %8857, %8840 ], [ %8497, %8504 ]
  %8865 = phi float [ %7716, %7708 ], [ %8498, %8476 ], [ %8858, %8840 ], [ %8498, %8504 ]
  %8866 = phi float [ %7717, %7708 ], [ %8499, %8476 ], [ %8859, %8840 ], [ %8499, %8504 ]
  %8867 = phi float [ %7718, %7708 ], [ %8500, %8476 ], [ %8860, %8840 ], [ %8500, %8504 ]
  %8868 = phi float [ %7719, %7708 ], [ %8483, %8476 ], [ %8844, %8840 ], [ %8483, %8504 ]
  %8869 = fmul fast float %6209, %101
  %8870 = fmul fast float %6210, %102
  %8871 = call float @dx.op.unary.f32(i32 7, float %8869)  ; Saturate(value)
  %8872 = call float @dx.op.unary.f32(i32 7, float %8870)  ; Saturate(value)
  %8873 = select i1 %7458, i32 2, i32 0
  %8874 = or i32 %8873, 1
  %8875 = uitofp i32 %8874 to float
  %8876 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %39, float %8871, float %8872, float %8875, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8877 = extractvalue %dx.types.ResRet.f32 %8876, 0
  %8878 = extractvalue %dx.types.ResRet.f32 %8876, 1
  %8879 = extractvalue %dx.types.ResRet.f32 %8876, 2
  %8880 = extractvalue %dx.types.ResRet.f32 %8876, 3
  %8881 = add nuw nsw i32 %8873, 2
  %8882 = uitofp i32 %8881 to float
  %8883 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %39, float %8871, float %8872, float %8882, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8884 = extractvalue %dx.types.ResRet.f32 %8883, 0
  %8885 = extractvalue %dx.types.ResRet.f32 %8883, 1
  %8886 = extractvalue %dx.types.ResRet.f32 %8883, 2
  %8887 = extractvalue %dx.types.ResRet.f32 %8883, 3
  %8888 = call float @dx.op.binary.f32(i32 35, float %8878, float %8879)  ; FMax(a,b)
  %8889 = call float @dx.op.binary.f32(i32 35, float %8877, float %8888)  ; FMax(a,b)
  %8890 = call float @dx.op.binary.f32(i32 35, float %8889, float %8880)  ; FMax(a,b)
  %8891 = call float @dx.op.binary.f32(i32 36, float %8885, float %8886)  ; FMin(a,b)
  %8892 = call float @dx.op.binary.f32(i32 36, float %8884, float %8891)  ; FMin(a,b)
  %8893 = call float @dx.op.binary.f32(i32 36, float %8892, float %8887)  ; FMin(a,b)
  %8894 = fmul fast float %8890, 2.550000e+02
  %8895 = fadd fast float %8894, 0x3F70101020000000
  %8896 = fptoui float %8895 to i32
  %8897 = fmul fast float %8893, 2.550000e+02
  %8898 = fadd fast float %8897, 0x3F70101020000000
  %8899 = fptoui float %8898 to i32
  %8900 = icmp ult i32 %8896, %8899
  br i1 %8900, label %8901, label %9068

; <label>:8901                                    ; preds = %8861
  %8902 = fcmp fast ogt float %91, 9.843750e-01
  %8903 = fadd fast float %7712, -4.000000e+00
  %8904 = select i1 %8902, float -4.000000e+00, float %8903
  %8905 = call float @dx.op.binary.f32(i32 35, float %8904, float 0.000000e+00)  ; FMax(a,b)
  %8906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8907 = extractvalue %dx.types.CBufRet.f32 %8906, 0
  %8908 = fadd fast float %8907, %8905
  %8909 = extractvalue %dx.types.CBufRet.f32 %8906, 2
  %8910 = fmul fast float %8908, %8909
  %8911 = call float @dx.op.unary.f32(i32 23, float %8910)  ; Log(value)
  %8912 = extractvalue %dx.types.CBufRet.f32 %8906, 3
  %8913 = fmul fast float %8912, %8911
  %8914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8915 = extractvalue %dx.types.CBufRet.f32 %8914, 2
  %8916 = fmul fast float %8913, %8915
  %8917 = call float @dx.op.unary.f32(i32 7, float %8916)  ; Saturate(value)
  %8918 = uitofp i32 %8896 to float
  %8919 = uitofp i32 %8899 to float
  %8920 = fadd fast float %8918, 5.000000e-01
  %8921 = fadd fast float %8919, 5.000000e-01
  %8922 = fmul fast float %8915, %8920
  %8923 = fmul fast float %8915, %8921
  %8924 = fadd fast float %8922, 0x3F0FFB4800000000
  %8925 = fadd fast float %8923, 0xBF0FFB4800000000
  %8926 = call float @dx.op.binary.f32(i32 35, float %8917, float %8924)  ; FMax(a,b)
  %8927 = call float @dx.op.binary.f32(i32 36, float %8926, float %8925)  ; FMin(a,b)
  %8928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8929 = extractvalue %dx.types.CBufRet.f32 %8928, 1
  %8930 = extractvalue %dx.types.CBufRet.f32 %8928, 2
  %8931 = extractvalue %dx.types.CBufRet.f32 %8928, 0
  %8932 = select i1 %7458, float %8931, float 0.000000e+00
  %8933 = fmul fast float %8929, %8927
  %8934 = fadd fast float %8932, %8933
  %8935 = fadd fast float %8932, %8930
  %8936 = fsub fast float %8929, %8930
  %8937 = fadd fast float %8936, %8932
  %8938 = call float @dx.op.binary.f32(i32 35, float %8934, float %8935)  ; FMax(a,b)
  %8939 = call float @dx.op.binary.f32(i32 36, float %8938, float %8937)  ; FMin(a,b)
  %8940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %37, float %8871, float %8872, float %8939, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8941 = extractvalue %dx.types.ResRet.f32 %8940, 0
  %8942 = extractvalue %dx.types.ResRet.f32 %8940, 1
  %8943 = extractvalue %dx.types.ResRet.f32 %8940, 2
  %8944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8945 = extractvalue %dx.types.CBufRet.i32 %8944, 0
  %8946 = extractvalue %dx.types.CBufRet.i32 %8944, 1
  %8947 = uitofp i32 %8945 to float
  %8948 = uitofp i32 %8946 to float
  %8949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8950 = extractvalue %dx.types.CBufRet.f32 %8949, 0
  %8951 = extractvalue %dx.types.CBufRet.f32 %8949, 1
  %8952 = fmul fast float %8947, %8871
  %8953 = fmul fast float %8948, %8872
  %8954 = fadd fast float %8952, -5.000000e-01
  %8955 = fadd fast float %8953, -5.000000e-01
  %8956 = call float @dx.op.unary.f32(i32 22, float %8954)  ; Frc(value)
  %8957 = call float @dx.op.unary.f32(i32 22, float %8955)  ; Frc(value)
  %8958 = fmul fast float %8956, %8956
  %8959 = fmul fast float %8958, %8956
  %8960 = fsub fast float 3.000000e+00, %8956
  %8961 = fmul fast float %8958, %8960
  %8962 = fmul fast float %8956, 3.000000e+00
  %8963 = fmul fast float %8959, 3.000000e+00
  %8964 = fmul fast float %8958, 6.000000e+00
  %8965 = fsub fast float %8963, %8964
  %8966 = fadd fast float %8965, 4.000000e+00
  %8967 = fmul fast float %8966, 0x3FC5555560000000
  %8968 = fmul fast float %8959, -3.000000e+00
  %8969 = fadd fast float %8958, %8956
  %8970 = fmul fast float %8969, 3.000000e+00
  %8971 = fadd fast float %8968, 1.000000e+00
  %8972 = fadd fast float %8971, %8970
  %8973 = fmul fast float %8959, 0x3FC5555560000000
  %8974 = fmul fast float %8957, %8957
  %8975 = fmul fast float %8974, %8957
  %8976 = fsub fast float 3.000000e+00, %8957
  %8977 = fmul fast float %8974, %8976
  %8978 = fmul fast float %8957, 3.000000e+00
  %8979 = fmul fast float %8975, 3.000000e+00
  %8980 = fmul fast float %8974, 6.000000e+00
  %8981 = fsub fast float %8979, %8980
  %8982 = fadd fast float %8981, 4.000000e+00
  %8983 = fmul fast float %8982, 0x3FC5555560000000
  %8984 = fmul fast float %8975, -3.000000e+00
  %8985 = fadd fast float %8974, %8957
  %8986 = fmul fast float %8985, 3.000000e+00
  %8987 = fadd fast float %8984, 1.000000e+00
  %8988 = fadd fast float %8987, %8986
  %8989 = fmul fast float %8975, 0x3FC5555560000000
  %8990 = fadd fast float %8956, 1.000000e+00
  %8991 = fsub fast float 1.000000e+00, %8962
  %8992 = fadd fast float %8991, %8961
  %8993 = fadd fast float %8992, %8966
  %8994 = fmul fast float %8993, 0x3FC5555560000000
  %8995 = fdiv fast float %8967, %8994
  %8996 = fsub fast float %8990, %8995
  %8997 = fsub fast float 1.000000e+00, %8956
  %8998 = fadd fast float %8972, %8959
  %8999 = fmul fast float %8998, 0x3FC5555560000000
  %9000 = fdiv fast float %8973, %8999
  %9001 = fadd fast float %8997, %9000
  %9002 = fadd fast float %8957, 1.000000e+00
  %9003 = fsub fast float 1.000000e+00, %8978
  %9004 = fadd fast float %9003, %8977
  %9005 = fadd fast float %9004, %8982
  %9006 = fmul fast float %9005, 0x3FC5555560000000
  %9007 = fdiv fast float %8983, %9006
  %9008 = fsub fast float %9002, %9007
  %9009 = fsub fast float 1.000000e+00, %8957
  %9010 = fadd fast float %8988, %8975
  %9011 = fmul fast float %9010, 0x3FC5555560000000
  %9012 = fdiv fast float %8989, %9011
  %9013 = fadd fast float %9012, %9009
  %9014 = fmul fast float %8996, %8950
  %9015 = fsub fast float %8871, %9014
  %9016 = fmul fast float %9001, %8950
  %9017 = fadd fast float %9016, %8871
  %9018 = fmul fast float %9013, %8951
  %9019 = fadd fast float %9018, %8872
  %9020 = fmul fast float %9008, %8951
  %9021 = fsub fast float %8872, %9020
  %9022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %9015, float %9021, float %8939, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9023 = extractvalue %dx.types.ResRet.f32 %9022, 0
  %9024 = extractvalue %dx.types.ResRet.f32 %9022, 1
  %9025 = extractvalue %dx.types.ResRet.f32 %9022, 2
  %9026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %9017, float %9021, float %8939, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9027 = extractvalue %dx.types.ResRet.f32 %9026, 0
  %9028 = extractvalue %dx.types.ResRet.f32 %9026, 1
  %9029 = extractvalue %dx.types.ResRet.f32 %9026, 2
  %9030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %9015, float %9019, float %8939, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9031 = extractvalue %dx.types.ResRet.f32 %9030, 0
  %9032 = extractvalue %dx.types.ResRet.f32 %9030, 1
  %9033 = extractvalue %dx.types.ResRet.f32 %9030, 2
  %9034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %9017, float %9019, float %8939, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9035 = extractvalue %dx.types.ResRet.f32 %9034, 0
  %9036 = extractvalue %dx.types.ResRet.f32 %9034, 1
  %9037 = extractvalue %dx.types.ResRet.f32 %9034, 2
  %9038 = fsub fast float %9031, %9023
  %9039 = fsub fast float %9032, %9024
  %9040 = fsub fast float %9033, %9025
  %9041 = fmul fast float %9038, %9011
  %9042 = fmul fast float %9039, %9011
  %9043 = fmul fast float %9040, %9011
  %9044 = fadd fast float %9041, %9023
  %9045 = fadd fast float %9042, %9024
  %9046 = fadd fast float %9043, %9025
  %9047 = fsub fast float %9035, %9027
  %9048 = fsub fast float %9036, %9028
  %9049 = fsub fast float %9037, %9029
  %9050 = fmul fast float %9047, %9011
  %9051 = fmul fast float %9048, %9011
  %9052 = fmul fast float %9049, %9011
  %9053 = fsub fast float %9027, %9044
  %9054 = fadd fast float %9053, %9050
  %9055 = fsub fast float %9028, %9045
  %9056 = fadd fast float %9055, %9051
  %9057 = fsub fast float %9029, %9046
  %9058 = fadd fast float %9057, %9052
  %9059 = fmul fast float %9054, %8999
  %9060 = fmul fast float %9056, %8999
  %9061 = fmul fast float %9058, %8999
  %9062 = fadd fast float %9059, %9044
  %9063 = fadd fast float %9060, %9045
  %9064 = fadd fast float %9061, %9046
  %9065 = fmul fast float %9062, %6264
  %9066 = fmul fast float %9063, %6264
  %9067 = fmul fast float %9064, %6264
  br label %9068

; <label>:9068                                    ; preds = %8901, %8861
  %9069 = phi float [ %8941, %8901 ], [ 1.000000e+00, %8861 ]
  %9070 = phi float [ %8942, %8901 ], [ 1.000000e+00, %8861 ]
  %9071 = phi float [ %8943, %8901 ], [ 1.000000e+00, %8861 ]
  %9072 = phi float [ %9065, %8901 ], [ 0.000000e+00, %8861 ]
  %9073 = phi float [ %9066, %8901 ], [ 0.000000e+00, %8861 ]
  %9074 = phi float [ %9067, %8901 ], [ 0.000000e+00, %8861 ]
  %9075 = fmul fast float %9069, %8868
  %9076 = call float @dx.op.dot3.f32(i32 55, float %9069, float %9070, float %9071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9077 = call float @dx.op.dot3.f32(i32 55, float %9072, float %9073, float %9074, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9078 = select i1 %286, float %9076, float %9069
  %9079 = select i1 %286, float %9076, float %9070
  %9080 = select i1 %286, float 1.000000e+00, float %9071
  %9081 = select i1 %286, float %9077, float %9072
  %9082 = select i1 %286, float 0.000000e+00, float %9073
  %9083 = select i1 %286, float 0.000000e+00, float %9074
  %9084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9085 = extractvalue %dx.types.CBufRet.i32 %9084, 3
  %9086 = and i32 %9085, 3
  %9087 = icmp ne i32 %9086, 0
  %9088 = and i32 %9085, 4
  %9089 = icmp ne i32 %9088, 0
  %9090 = and i1 %9087, %9089
  %9091 = and i1 %286, %9090
  br i1 %9091, label %9092, label %9098

; <label>:9092                                    ; preds = %9068
  %9093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9094 = extractvalue %dx.types.CBufRet.f32 %9093, 1
  %9095 = fadd fast float %9075, -1.000000e+00
  %9096 = fmul fast float %9094, %9095
  %9097 = fadd fast float %9096, 1.000000e+00
  br label %9098

; <label>:9098                                    ; preds = %9092, %9068
  %9099 = phi float [ %9097, %9092 ], [ %9075, %9068 ]
  %9100 = fadd fast float %8865, %8862
  %9101 = fmul fast float %9078, %9100
  %9102 = fadd fast float %9101, %9081
  %9103 = fadd fast float %8866, %8863
  %9104 = fmul fast float %9079, %9103
  %9105 = fadd fast float %9104, %9082
  %9106 = extractvalue %dx.types.CBufRet.f32 %6263, 0
  br i1 %286, label %9107, label %9122

; <label>:9107                                    ; preds = %9098
  %9108 = fadd fast float %9102, %9105
  %9109 = fmul fast float %9106, %9108
  %9110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9111 = extractvalue %dx.types.CBufRet.f32 %9110, 3
  %9112 = extractvalue %dx.types.CBufRet.f32 %7440, 1
  %9113 = fsub fast float %7445, %7439
  %9114 = fadd fast float %9113, %7446
  %9115 = fsub fast float %9114, %9112
  %9116 = extractvalue %dx.types.CBufRet.f32 %7440, 2
  %9117 = fmul fast float %9115, %9116
  %9118 = call float @dx.op.unary.f32(i32 7, float %9117)  ; Saturate(value)
  %9119 = fsub fast float %9118, %9111
  %9120 = fmul fast float %9119, %9099
  %9121 = fadd fast float %9120, %9111
  br label %9146

; <label>:9122                                    ; preds = %9098
  %9123 = fadd fast float %8867, %8864
  %9124 = fmul fast float %9080, %9123
  %9125 = fadd fast float %9124, %9083
  %9126 = fmul fast float %9106, %9102
  %9127 = fmul fast float %9106, %9105
  %9128 = fmul fast float %9106, %9125
  %9129 = call float @dx.op.binary.f32(i32 35, float %9127, float %9128)  ; FMax(a,b)
  %9130 = call float @dx.op.binary.f32(i32 35, float %9126, float %9129)  ; FMax(a,b)
  %9131 = call float @dx.op.binary.f32(i32 35, float %9130, float 1.000000e+00)  ; FMax(a,b)
  %9132 = fcmp fast ugt float %9131, 0x3F10000000000000
  br i1 %9132, label %9134, label %9133

; <label>:9133                                    ; preds = %9122
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9134

; <label>:9134                                    ; preds = %9133, %9122
  %9135 = add i32 %45, 356
  %9136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %9135, i32 undef)  ; BufferLoad(srv,index,wot)
  %9137 = extractvalue %dx.types.ResRet.i32 %9136, 0
  %9138 = and i32 %9137, 32
  %9139 = icmp eq i32 %9138, 0
  br i1 %9139, label %9146, label %9140

; <label>:9140                                    ; preds = %9134
  %9141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9142 = extractvalue %dx.types.CBufRet.f32 %9141, 0
  %9143 = fmul fast float %9142, 0x3FE99999A0000000
  %9144 = fadd fast float %9142, %9126
  %9145 = fadd fast float %9143, %9128
  br label %9146

; <label>:9146                                    ; preds = %9140, %9134, %9107
  %9147 = phi float [ %9109, %9107 ], [ %9144, %9140 ], [ %9126, %9134 ]
  %9148 = phi float [ %9121, %9107 ], [ %9127, %9140 ], [ %9127, %9134 ]
  %9149 = phi float [ 1.000000e+00, %9107 ], [ %9145, %9140 ], [ %9128, %9134 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9150 = call float @dx.op.binary.f32(i32 36, float %9147, float 3.225500e+04)  ; FMin(a,b)
  %9151 = call float @dx.op.binary.f32(i32 36, float %9148, float 3.225500e+04)  ; FMin(a,b)
  %9152 = call float @dx.op.binary.f32(i32 36, float %9149, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9150)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9151)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9152)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!57}
!dx.entryPoints = !{!58}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !45, !48}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !25}
!25 = !{i32 0, i32 5}
!26 = !{i32 18, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !32}
!32 = !{i32 0, i32 14}
!33 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!34 = !{i32 25, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!38 = !{i32 29, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!39 = !{i32 30, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!40 = !{i32 31, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!41 = !{i32 32, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!42 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !32}
!43 = !{i32 34, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!45 = !{!46, !47}
!46 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!47 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56}
!49 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!50 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!51 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!52 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!53 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!54 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!55 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!56 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!57 = !{[62 x i32] [i32 60, i32 8, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !87}
!59 = !{!60, !83, null}
!60 = !{!61, !64, !65, !67, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !80, !81, !82}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 15}
!64 = !{i32 1, !"COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !63}
!65 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 2, i8 0, !66}
!66 = !{i32 3, i32 3}
!67 = !{i32 3, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !68}
!68 = !{i32 3, i32 7}
!69 = !{i32 4, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 4, i8 0, !63}
!70 = !{i32 5, !"SH_RED", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 5, i8 0, !63}
!71 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, !63}
!72 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 7, i8 0, !63}
!73 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 8, i8 0, !68}
!74 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 9, i8 0, !63}
!75 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 2, i32 10, i8 0, !66}
!76 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 11, i8 0, !63}
!77 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 12, i8 0, !68}
!78 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 13, i8 0, !79}
!79 = !{i32 3, i32 1}
!80 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !62, i8 1, i32 1, i8 2, i32 13, i8 1, !79}
!81 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !62, i8 1, i32 1, i8 4, i32 14, i8 0, !79}
!82 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!83 = !{!84, !85}
!84 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !63}
!85 = !{i32 1, !"SV_Target", i8 9, i8 16, !86, i8 0, i32 1, i8 4, i32 1, i8 0, !63}
!86 = !{i32 1}
!87 = !{i32 0, i64 16}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = !{!95, !95, i64 0}
!95 = !{!"int", !96, i64 0}
!96 = !{!"omnipotent char", !97, i64 0}
!97 = !{!"Simple C/C++ TBAA"}
!98 = !{!99, !101, !103, !105}
!99 = distinct !{!99, !100, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!100 = distinct !{!100, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!101 = distinct !{!101, !102, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!102 = distinct !{!102, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!103 = distinct !{!103, !104, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!104 = distinct !{!104, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!105 = distinct !{!105, !106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!106 = distinct !{!106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = !{!117, !117, i64 0}
!117 = !{!"float", !96, i64 0}
!118 = !{!119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!119 = distinct !{!119, !120, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!120 = distinct !{!120, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!121 = distinct !{!121, !122, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!122 = distinct !{!122, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!123 = distinct !{!123, !122, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!124 = distinct !{!124, !125, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!125 = distinct !{!125, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!126 = distinct !{!126, !125, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!127 = distinct !{!127, !125, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!128 = distinct !{!128, !129, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!129 = distinct !{!129, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!130 = distinct !{!130, !129, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!131 = distinct !{!131, !129, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!132 = distinct !{!132, !133, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!133 = distinct !{!133, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"\01?sort@@YAXAIAM00@Z: %c"}
!136 = distinct !{!136, !"\01?sort@@YAXAIAM00@Z"}
!137 = !{!138, !139, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!138 = distinct !{!138, !136, !"\01?sort@@YAXAIAM00@Z: %a"}
!139 = distinct !{!139, !136, !"\01?sort@@YAXAIAM00@Z: %b"}
!140 = !{!139}
!141 = !{!138, !135, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!142 = !{!138}
!143 = !{!139, !135, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!144 = !{!145}
!145 = distinct !{!145, !146, !"\01?sort@@YAXAIAM00@Z: %c"}
!146 = distinct !{!146, !"\01?sort@@YAXAIAM00@Z"}
!147 = !{!148, !149, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!148 = distinct !{!148, !146, !"\01?sort@@YAXAIAM00@Z: %a"}
!149 = distinct !{!149, !146, !"\01?sort@@YAXAIAM00@Z: %b"}
!150 = !{!149}
!151 = !{!148, !145, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!152 = !{!148}
!153 = !{!149, !145, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 2}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}

