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
; shader hash: a4e89d767a4ef26b8f4ea0f4ad46b11f
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
  %196 = fmul fast float %101, 5.000000e-01
  %197 = fmul fast float %102, 5.000000e-01
  %198 = fptosi float %196 to i32
  %199 = fptosi float %197 to i32
  %200 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %198, i32 %199, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = lshr i32 %201, 18
  %203 = uitofp i32 %202 to float
  %204 = fmul fast float %203, 0x3F4C00EBA0000000
  %205 = call float @dx.op.unary.f32(i32 21, float %204)  ; Exp(value)
  %206 = fadd fast float %205, -1.000000e+00
  %207 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %19, i32 0)  ; GetDimensions(handle,mipLevel)
  %208 = extractvalue %dx.types.Dimensions %207, 0
  %209 = sitofp i32 %208 to float
  %210 = extractvalue %dx.types.Dimensions %207, 1
  %211 = sitofp i32 %210 to float
  %212 = fcmp fast oge float %196, %209
  %213 = fcmp fast oge float %197, %211
  %214 = or i1 %212, %213
  %215 = select i1 %214, float 0x4197782600000000, float %206
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = extractvalue %dx.types.CBufRet.f32 %216, 3
  %219 = fmul fast float %217, %101
  %220 = fmul fast float %218, %102
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = and i32 %222, 114688
  %224 = icmp ne i32 %223, 0
  %225 = select i1 %224, float %219, float 0.000000e+00
  %226 = select i1 %224, float %220, float 0.000000e+00
  %227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %40, float %225, float %226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = fmul fast float %228, 2.550000e+02
  %230 = fptoui float %229 to i32
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.i32 %232, 3
  %234 = and i32 %233, 3
  %235 = icmp ne i32 %234, 0
  %236 = and i32 %233, 4
  %237 = icmp ne i32 %236, 0
  %238 = and i1 %235, %237
  br i1 %238, label %239, label %250

; <label>:239                                     ; preds = %0
  %240 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %241 = fmul fast float %240, %102
  %242 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %243 = fmul fast float %242, %101
  %244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %39, float %243, float %241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = fsub fast float 1.000000e+00, %245
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 0
  %249 = fcmp fast olt float %246, %248
  br label %253

; <label>:250                                     ; preds = %0
  %251 = icmp eq i32 %236, 0
  %252 = and i1 %235, %251
  br label %253

; <label>:253                                     ; preds = %250, %239
  %254 = phi i1 [ %249, %239 ], [ %252, %250 ]
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 2
  %257 = fmul fast float %256, 0x3FE3C6EF40000000
  %258 = frem fast float %101, 2.560000e+02
  %259 = frem fast float %102, 2.560000e+02
  %260 = fptoui float %258 to i32
  %261 = fptoui float %259 to i32
  %262 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %260, i32 %261, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = fadd fast float %263, %257
  %266 = fadd fast float %264, %257
  %267 = call float @dx.op.unary.f32(i32 22, float %265)  ; Frc(value)
  %268 = call float @dx.op.unary.f32(i32 22, float %266)  ; Frc(value)
  %269 = add i32 %45, 156
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = shl i32 %271, 4
  %273 = and i32 %272, 32752
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %271, 7
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %271, 22
  %279 = shl nuw nsw i32 %278, 5
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = add i32 %45, 216
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = lshr i32 %283, 8
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = lshr i32 %283, 16
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = add i32 %45, 36
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = add i32 %45, 288
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %304, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = fmul fast float %306, 0x3F50624DE0000000
  %310 = fmul fast float %308, 0x3F50624DE0000000
  %311 = add i32 %45, 172
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = shl i32 %313, 4
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %313, 7
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %313, 22
  %321 = shl nuw nsw i32 %320, 5
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = add i32 %45, 232
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %337 = add i32 %45, 52
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %45, 304
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = fmul fast float %348, 0x3F50624DE0000000
  %352 = fmul fast float %350, 0x3F50624DE0000000
  %353 = add i32 %45, 188
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = shl i32 %355, 4
  %357 = and i32 %356, 32752
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %355, 7
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %355, 22
  %363 = shl nuw nsw i32 %362, 5
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = add i32 %45, 248
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 255
  %369 = uitofp i32 %368 to float
  %370 = fmul fast float %369, 0x3F70101020000000
  %371 = lshr i32 %367, 8
  %372 = and i32 %371, 255
  %373 = uitofp i32 %372 to float
  %374 = fmul fast float %373, 0x3F70101020000000
  %375 = lshr i32 %367, 16
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = add i32 %45, 68
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %381, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = add i32 %45, 320
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 65535
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %388, 16
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = fmul fast float %390, 0x3F50624DE0000000
  %394 = fmul fast float %392, 0x3F50624DE0000000
  %395 = add i32 %45, 204
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = shl i32 %397, 4
  %399 = and i32 %398, 32752
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %397, 7
  %402 = and i32 %401, 32752
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %397, 22
  %405 = shl nuw nsw i32 %404, 5
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = add i32 %45, 264
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 255
  %411 = uitofp i32 %410 to float
  %412 = fmul fast float %411, 0x3F70101020000000
  %413 = lshr i32 %409, 8
  %414 = and i32 %413, 255
  %415 = uitofp i32 %414 to float
  %416 = fmul fast float %415, 0x3F70101020000000
  %417 = lshr i32 %409, 16
  %418 = and i32 %417, 255
  %419 = uitofp i32 %418 to float
  %420 = fmul fast float %419, 0x3F70101020000000
  %421 = add i32 %45, 84
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %423, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = add i32 %45, 336
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 65535
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %430, 16
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = fmul fast float %432, 0x3F50624DE0000000
  %436 = fmul fast float %434, 0x3F50624DE0000000
  %437 = add i32 %45, 348
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, 32
  %441 = icmp eq i32 %440, 0
  %442 = and i32 %439, 64
  %443 = icmp eq i32 %442, 0
  %444 = and i32 %439, 128
  %445 = icmp eq i32 %444, 0
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = and i32 %447, 2
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %465, label %450

; <label>:450                                     ; preds = %253
  %451 = add i32 %45, 508
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = add i32 %453, 0
  %455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %454, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %456 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %455, %dx.types.Handle %98, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = extractvalue %dx.types.ResRet.f32 %456, 1
  %459 = extractvalue %dx.types.ResRet.f32 %456, 2
  %460 = extractvalue %dx.types.ResRet.f32 %456, 3
  %461 = fmul fast float %460, %85
  %462 = fmul fast float %457, %86
  %463 = fmul fast float %458, %87
  %464 = fmul fast float %459, %88
  br label %465

; <label>:465                                     ; preds = %450, %253
  %466 = phi float [ %88, %253 ], [ %464, %450 ]
  %467 = phi float [ %87, %253 ], [ %463, %450 ]
  %468 = phi float [ %86, %253 ], [ %462, %450 ]
  %469 = phi float [ %85, %253 ], [ %461, %450 ]
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = and i32 %471, 2
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %493, label %474

; <label>:474                                     ; preds = %465
  %475 = add i32 %45, 44
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = and i32 %477, 1
  %479 = icmp ne i32 %478, 0
  %480 = select i1 %479, float %468, float 1.000000e+00
  %481 = add i32 %45, 60
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = and i32 %483, 1
  %485 = icmp ne i32 %484, 0
  %486 = select i1 %485, float %467, float 1.000000e+00
  %487 = add i32 %45, 76
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = and i32 %489, 1
  %491 = icmp ne i32 %490, 0
  %492 = select i1 %491, float %466, float 1.000000e+00
  br label %493

; <label>:493                                     ; preds = %474, %465
  %494 = phi float [ %466, %465 ], [ %492, %474 ]
  %495 = phi float [ %467, %465 ], [ %486, %474 ]
  %496 = phi float [ %468, %465 ], [ %480, %474 ]
  %497 = lshr i32 %471, 20
  %498 = and i32 %497, 3
  %499 = add nuw nsw i32 %498, 1
  %500 = add i32 %45, 24
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = add i32 %45, 28
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = or i32 %505, %502
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %1153, label %508

; <label>:508                                     ; preds = %493
  %509 = and i32 %502, 262144
  %510 = icmp ne i32 %509, 0
  %511 = select i1 %510, float %51, float 1.000000e+00
  %512 = select i1 %510, float %52, float 0.000000e+00
  %513 = select i1 %510, float %53, float 0.000000e+00
  %514 = select i1 %510, float %54, float 1.000000e+00
  %515 = select i1 %510, float %55, float %83
  %516 = select i1 %510, float %56, float %84
  %517 = add i32 %45, 284
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = lshr i32 %519, 16
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = fmul fast float %521, 0x3F50624DE0000000
  %523 = add i32 %45, 88
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = lshr i32 %525, 16
  %527 = and i32 %526, 255
  %528 = lshr i32 %525, 24
  %529 = add i32 %45, 292
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = and i32 %531, 65535
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = lshr i32 %531, 16
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = add i32 %45, 32
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = lshr i32 %538, 22
  %540 = shl nuw nsw i32 %539, 5
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = shl i32 %538, 4
  %543 = and i32 %542, 32752
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = lshr i32 %538, 7
  %546 = and i32 %545, 32752
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 3
  %550 = fmul fast float %549, 1.000000e+03
  %551 = fmul fast float %309, %550
  %552 = call float @dx.op.unary.f32(i32 22, float %551)  ; Frc(value)
  %553 = fadd fast float %552, %299
  %554 = fmul fast float %310, %550
  %555 = call float @dx.op.unary.f32(i32 22, float %554)  ; Frc(value)
  %556 = fadd fast float %555, %301
  %557 = fmul fast float %522, %550
  %558 = call float @dx.op.unary.f32(i32 22, float %557)  ; Frc(value)
  %559 = fmul fast float %558, 0x401921FB60000000
  %560 = fadd fast float %559, %541
  %561 = call float @dx.op.unary.f32(i32 13, float %560)  ; Sin(value)
  %562 = call float @dx.op.unary.f32(i32 12, float %560)  ; Cos(value)
  %563 = fsub fast float -0.000000e+00, %561
  %564 = fadd fast float %515, -5.000000e-01
  %565 = fadd fast float %516, -5.000000e-01
  %566 = fmul fast float %533, %564
  %567 = fmul fast float %535, %565
  %568 = fadd fast float %566, 5.000000e-01
  %569 = fadd fast float %567, 5.000000e-01
  %570 = fmul fast float %544, %568
  %571 = fmul fast float %547, %569
  %572 = fmul fast float %562, %570
  %573 = call float @dx.op.tertiary.f32(i32 46, float %563, float %571, float %572)  ; FMad(a,b,c)
  %574 = fmul fast float %561, %570
  %575 = call float @dx.op.tertiary.f32(i32 46, float %562, float %571, float %574)  ; FMad(a,b,c)
  %576 = fadd fast float %553, %573
  %577 = fadd fast float %556, %575
  %578 = icmp ugt i32 %527, 1
  %579 = icmp ugt i32 %525, 33554431
  %580 = or i1 %579, %578
  br i1 %580, label %581, label %606

; <label>:581                                     ; preds = %508
  %582 = add i32 %45, 228
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = lshr i32 %584, 16
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = fmul fast float %549, %586
  %588 = call float @dx.op.unary.f32(i32 22, float %587)  ; Frc(value)
  %589 = mul nuw nsw i32 %527, %528
  %590 = uitofp i32 %589 to float
  %591 = fmul fast float %588, %590
  %592 = call float @dx.op.unary.f32(i32 27, float %591)  ; Round_ni(value)
  %593 = fptoui float %592 to i32
  %594 = urem i32 %593, %527
  %595 = udiv i32 %593, %528
  %596 = call float @dx.op.unary.f32(i32 22, float %576)  ; Frc(value)
  %597 = call float @dx.op.unary.f32(i32 22, float %577)  ; Frc(value)
  %598 = uitofp i32 %594 to float
  %599 = uitofp i32 %595 to float
  %600 = fadd fast float %596, %598
  %601 = fadd fast float %597, %599
  %602 = uitofp i32 %527 to float
  %603 = uitofp i32 %528 to float
  %604 = fdiv fast float %600, %602
  %605 = fdiv fast float %601, %603
  br label %606

; <label>:606                                     ; preds = %581, %508
  %607 = phi float [ %604, %581 ], [ %576, %508 ]
  %608 = phi float [ %605, %581 ], [ %577, %508 ]
  %609 = and i32 %502, 256
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %657, label %611

; <label>:611                                     ; preds = %606
  %612 = add i32 %45, 440
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = add i32 %614, 0
  %616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %615, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %617 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %616, %dx.types.Handle %98, float %607, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = add i32 %45, 100
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = shl i32 %621, 4
  %623 = and i32 %622, 32752
  %624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %623)  ; LegacyF16ToF32(value)
  %625 = lshr i32 %621, 7
  %626 = and i32 %625, 32752
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = fsub fast float 1.000000e+00, %469
  %629 = call float @dx.op.binary.f32(i32 35, float %628, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %630 = bitcast float %469 to i32
  %631 = sitofp i32 %630 to float
  %632 = fadd fast float %631, 0xC1CFBF8940000000
  %633 = fmul fast float %627, %632
  %634 = fadd fast float %633, 0x41CFBF8940000000
  %635 = fptosi float %634 to i32
  %636 = bitcast i32 %635 to float
  %637 = bitcast float %629 to i32
  %638 = sitofp i32 %637 to float
  %639 = fadd fast float %638, 0xC1CFBF8940000000
  %640 = fmul fast float %639, %627
  %641 = fadd fast float %640, 0x41CFBF8940000000
  %642 = fptosi float %641 to i32
  %643 = bitcast i32 %642 to float
  %644 = fmul fast float %636, %624
  %645 = fmul fast float %643, %624
  %646 = fsub fast float %629, %644
  %647 = fadd fast float %645, %629
  %648 = call float @dx.op.unary.f32(i32 7, float %646)  ; Saturate(value)
  %649 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  %650 = fsub fast float %618, %648
  %651 = fsub fast float %649, %648
  %652 = bitcast float %651 to i32
  %653 = sub nsw i32 2129859010, %652
  %654 = bitcast i32 %653 to float
  %655 = fmul fast float %654, %650
  %656 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  br label %657

; <label>:657                                     ; preds = %611, %606
  %658 = phi float [ %656, %611 ], [ %469, %606 ]
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = and i32 %660, 128
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %679, label %663

; <label>:663                                     ; preds = %657
  %664 = add i32 %45, 424
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = add i32 %666, 0
  %668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %668, %dx.types.Handle %98, float %607, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = and i32 %672, 524288
  %674 = icmp ne i32 %673, 0
  %675 = fcmp fast ogt float %670, 0x3FE0101020000000
  %676 = select i1 %675, float 1.000000e+00, float 0.000000e+00
  %677 = select i1 %674, float %676, float %670
  %678 = fmul fast float %677, %658
  br label %679

; <label>:679                                     ; preds = %663, %657
  %680 = phi float [ %678, %663 ], [ %658, %657 ]
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 16
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %883, label %685

; <label>:685                                     ; preds = %679
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = add i32 %45, 376
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = add i32 %690, 0
  %692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %691, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %693 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %692, %dx.types.Handle %97, float %607, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = extractvalue %dx.types.ResRet.f32 %693, 1
  %696 = extractvalue %dx.types.ResRet.f32 %693, 2
  %697 = extractvalue %dx.types.ResRet.f32 %693, 3
  %698 = and i32 %687, 255
  %699 = uitofp i32 %698 to float
  %700 = lshr i32 %687, 8
  %701 = and i32 %700, 255
  %702 = uitofp i32 %701 to float
  %703 = fmul fast float %697, %699
  %704 = fadd fast float %703, %702
  %705 = fmul fast float %704, 0x3F70101000000000
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 512
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %718, label %710

; <label>:710                                     ; preds = %685
  %711 = add i32 %45, 460
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = add i32 %713, 0
  %715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %714, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %716 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %715, %dx.types.Handle %98, float %607, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  br label %718

; <label>:718                                     ; preds = %710, %685
  %719 = phi float [ %717, %710 ], [ 1.000000e+00, %685 ]
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = and i32 %721, 33554432
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %830, label %724

; <label>:724                                     ; preds = %718
  %725 = add i32 %45, 224
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 65535
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = lshr i32 %727, 16
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = add i32 %45, 228
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 65535
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %753 = add i32 %45, 220
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = lshr i32 %755, 24
  %757 = uitofp i32 %756 to float
  %758 = fmul fast float %757, 0x3F70101020000000
  %759 = and i32 %755, 255
  %760 = uitofp i32 %759 to float
  %761 = fmul fast float %760, 0x3F70101020000000
  %762 = lshr i32 %755, 8
  %763 = and i32 %762, 255
  %764 = uitofp i32 %763 to float
  %765 = fmul fast float %764, 0x3F70101020000000
  %766 = lshr i32 %755, 16
  %767 = and i32 %766, 255
  %768 = uitofp i32 %767 to float
  %769 = fmul fast float %768, 0x3F70101020000000
  %770 = bitcast float %694 to i32
  %771 = ashr i32 %770, 1
  %772 = sub nsw i32 1597463174, %771
  %773 = bitcast i32 %772 to float
  %774 = fmul fast float %694, 5.000000e-01
  %775 = fmul fast float %773, %773
  %776 = fmul fast float %775, %774
  %777 = fsub fast float 1.500000e+00, %776
  %778 = fmul fast float %773, %694
  %779 = fmul fast float %778, %777
  %780 = bitcast float %695 to i32
  %781 = ashr i32 %780, 1
  %782 = sub nsw i32 1597463174, %781
  %783 = bitcast i32 %782 to float
  %784 = fmul fast float %695, 5.000000e-01
  %785 = fmul fast float %783, %783
  %786 = fmul fast float %785, %784
  %787 = fsub fast float 1.500000e+00, %786
  %788 = fmul fast float %783, %695
  %789 = fmul fast float %788, %787
  %790 = bitcast float %696 to i32
  %791 = ashr i32 %790, 1
  %792 = sub nsw i32 1597463174, %791
  %793 = bitcast i32 %792 to float
  %794 = fmul fast float %696, 5.000000e-01
  %795 = fmul fast float %793, %793
  %796 = fmul fast float %795, %794
  %797 = fsub fast float 1.500000e+00, %796
  %798 = fmul fast float %793, %696
  %799 = fmul fast float %798, %797
  %800 = fsub fast float %779, %761
  %801 = fsub fast float %789, %765
  %802 = fsub fast float %799, %769
  %803 = fmul fast float %800, %729
  %804 = fmul fast float %801, %731
  %805 = fmul fast float %802, %736
  %806 = fadd fast float %803, %744
  %807 = fadd fast float %804, %748
  %808 = fadd fast float %805, %752
  %809 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %810 = call float @dx.op.unary.f32(i32 7, float %807)  ; Saturate(value)
  %811 = call float @dx.op.unary.f32(i32 7, float %808)  ; Saturate(value)
  %812 = fmul fast float %809, %809
  %813 = fmul fast float %810, %810
  %814 = fmul fast float %811, %811
  %815 = fsub fast float %812, %694
  %816 = fsub fast float %813, %695
  %817 = fsub fast float %814, %696
  %818 = fmul fast float %815, %719
  %819 = fmul fast float %816, %719
  %820 = fmul fast float %817, %719
  %821 = fadd fast float %818, %694
  %822 = fadd fast float %819, %695
  %823 = fadd fast float %820, %696
  %824 = fadd fast float %741, %705
  %825 = fsub fast float %824, %758
  %826 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %827 = fsub fast float %826, %705
  %828 = fmul fast float %827, %719
  %829 = fadd fast float %828, %705
  br label %883

; <label>:830                                     ; preds = %718
  %831 = and i32 %721, 134217728
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %867, label %833

; <label>:833                                     ; preds = %830
  %834 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %835 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %836 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %837 = fadd fast float %834, -5.000000e-01
  %838 = fadd fast float %835, -5.000000e-01
  %839 = fadd fast float %836, -5.000000e-01
  %840 = fmul fast float %837, %719
  %841 = fmul fast float %838, %719
  %842 = fmul fast float %839, %719
  %843 = fadd fast float %840, 5.000000e-01
  %844 = fadd fast float %841, 5.000000e-01
  %845 = fadd fast float %842, 5.000000e-01
  %846 = call float @dx.op.unary.f32(i32 24, float %694)  ; Sqrt(value)
  %847 = call float @dx.op.unary.f32(i32 24, float %695)  ; Sqrt(value)
  %848 = call float @dx.op.unary.f32(i32 24, float %696)  ; Sqrt(value)
  %849 = fmul fast float %843, 2.000000e+00
  %850 = fsub fast float 1.000000e+00, %849
  %851 = fmul fast float %850, %846
  %852 = fadd fast float %851, %849
  %853 = fmul fast float %852, %846
  %854 = fmul fast float %844, 2.000000e+00
  %855 = fsub fast float 1.000000e+00, %854
  %856 = fmul fast float %855, %847
  %857 = fadd fast float %856, %854
  %858 = fmul fast float %857, %847
  %859 = fmul fast float %845, 2.000000e+00
  %860 = fsub fast float 1.000000e+00, %859
  %861 = fmul fast float %860, %848
  %862 = fadd fast float %861, %859
  %863 = fmul fast float %862, %848
  %864 = fmul fast float %853, %853
  %865 = fmul fast float %858, %858
  %866 = fmul fast float %863, %863
  br label %883

; <label>:867                                     ; preds = %830
  %868 = fmul fast float %286, %286
  %869 = fmul fast float %290, %290
  %870 = fmul fast float %294, %294
  %871 = fadd fast float %868, -1.000000e+00
  %872 = fadd fast float %869, -1.000000e+00
  %873 = fadd fast float %870, -1.000000e+00
  %874 = fmul fast float %719, %871
  %875 = fmul fast float %719, %872
  %876 = fmul fast float %719, %873
  %877 = fadd fast float %874, 1.000000e+00
  %878 = fadd fast float %875, 1.000000e+00
  %879 = fadd fast float %876, 1.000000e+00
  %880 = fmul fast float %877, %694
  %881 = fmul fast float %878, %695
  %882 = fmul fast float %879, %696
  br label %883

; <label>:883                                     ; preds = %867, %833, %724, %679
  %884 = phi float [ %829, %724 ], [ %705, %833 ], [ %705, %867 ], [ 0x3FA23C0BE0000000, %679 ]
  %885 = phi float [ %821, %724 ], [ %864, %833 ], [ %880, %867 ], [ 1.000000e+00, %679 ]
  %886 = phi float [ %822, %724 ], [ %865, %833 ], [ %881, %867 ], [ 1.000000e+00, %679 ]
  %887 = phi float [ %823, %724 ], [ %866, %833 ], [ %882, %867 ], [ 1.000000e+00, %679 ]
  %888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.i32 %888, 1
  %890 = and i32 %889, 1
  %891 = icmp ne i32 %890, 0
  %892 = add i32 %45, 356
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = and i32 %894, 32
  %896 = icmp ne i32 %895, 0
  %897 = and i1 %891, %896
  %898 = select i1 %897, float 1.000000e+00, float %885
  %899 = select i1 %897, float 0x3FD3333340000000, float %886
  %900 = select i1 %897, float 0x3FD3333340000000, float %887
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = and i32 %902, 32
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %977, label %905

; <label>:905                                     ; preds = %883
  %906 = add i32 %45, 92
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = add i32 %45, 392
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = add i32 %911, 0
  %913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %912, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %914 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %913, %dx.types.Handle %97, float %607, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  %916 = extractvalue %dx.types.ResRet.f32 %914, 1
  %917 = extractvalue %dx.types.ResRet.f32 %914, 2
  %918 = extractvalue %dx.types.ResRet.f32 %914, 3
  %919 = and i32 %908, 255
  %920 = uitofp i32 %919 to float
  %921 = lshr i32 %908, 8
  %922 = and i32 %921, 255
  %923 = uitofp i32 %922 to float
  %924 = lshr i32 %908, 16
  %925 = and i32 %924, 255
  %926 = uitofp i32 %925 to float
  %927 = fmul fast float %926, 0x3F70101000000000
  %928 = fmul fast float %915, %920
  %929 = fadd fast float %928, %923
  %930 = fmul fast float %929, 0x3F70101000000000
  %931 = fadd fast float %916, -5.000000e-01
  %932 = fadd fast float %918, -5.000000e-01
  %933 = fmul fast float %931, %927
  %934 = fmul fast float %932, %927
  %935 = fadd fast float %933, 5.000000e-01
  %936 = fadd fast float %934, 5.000000e-01
  %937 = fmul fast float %935, 2.000000e+00
  %938 = fadd fast float %937, -1.000000e+00
  %939 = fmul fast float %936, 2.000000e+00
  %940 = fadd fast float %939, -1.000000e+00
  %941 = fadd fast float %938, %940
  %942 = fmul fast float %941, 5.000000e-01
  %943 = fsub fast float %938, %940
  %944 = fmul fast float %943, 5.000000e-01
  %945 = call float @dx.op.unary.f32(i32 6, float %942)  ; FAbs(value)
  %946 = fsub fast float 1.000000e+00, %945
  %947 = call float @dx.op.unary.f32(i32 6, float %944)  ; FAbs(value)
  %948 = fsub fast float %946, %947
  %949 = call float @dx.op.dot3.f32(i32 55, float %942, float %944, float %948, float %942, float %944, float %948)  ; Dot3(ax,ay,az,bx,by,bz)
  %950 = call float @dx.op.unary.f32(i32 25, float %949)  ; Rsqrt(value)
  %951 = fmul fast float %942, %950
  %952 = fmul fast float %944, %950
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = and i32 %954, 67108864
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %973, label %957

; <label>:957                                     ; preds = %905
  %958 = add i32 %45, 280
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = and i32 %960, 65535
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = and i32 %964, 65535
  %966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %965)  ; LegacyF16ToF32(value)
  %967 = lshr i32 %960, 16
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = fsub fast float %930, %968
  %970 = fmul fast float %969, %962
  %971 = fadd fast float %970, %966
  %972 = call float @dx.op.unary.f32(i32 7, float %971)  ; Saturate(value)
  br label %973

; <label>:973                                     ; preds = %957, %905
  %974 = phi float [ %972, %957 ], [ %930, %905 ]
  %975 = call float @dx.op.dot2.f32(i32 54, float %951, float %952, float %511, float %512)  ; Dot2(ax,ay,bx,by)
  %976 = call float @dx.op.dot2.f32(i32 54, float %951, float %952, float %513, float %514)  ; Dot2(ax,ay,bx,by)
  br label %977

; <label>:977                                     ; preds = %973, %883
  %978 = phi float [ %974, %973 ], [ 0x3FD6666660000000, %883 ]
  %979 = phi float [ %975, %973 ], [ 0.000000e+00, %883 ]
  %980 = phi float [ %976, %973 ], [ 0.000000e+00, %883 ]
  %981 = phi float [ %917, %973 ], [ 1.000000e+00, %883 ]
  %982 = add i32 %45, 160
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = lshr i32 %984, 22
  %986 = shl nuw nsw i32 %985, 5
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = and i32 %989, 64
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %1025, label %992

; <label>:992                                     ; preds = %977
  %993 = add i32 %45, 408
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = add i32 %995, 0
  %997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = and i32 %999, 131072
  %1001 = icmp eq i32 %1000, 0
  %1002 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %997, %dx.types.Handle %97, float %607, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1003 = extractvalue %dx.types.ResRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.ResRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.ResRet.f32 %1002, 2
  %1006 = fmul fast float %1003, %274
  %1007 = fmul fast float %1004, %277
  %1008 = fmul fast float %1005, %280
  br i1 %1001, label %1015, label %1009

; <label>:1009                                    ; preds = %992
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 0
  %1012 = fmul fast float %1011, %1006
  %1013 = fmul fast float %1011, %1007
  %1014 = fmul fast float %1011, %1008
  br label %1015

; <label>:1015                                    ; preds = %1009, %992
  %1016 = phi float [ %1012, %1009 ], [ %1006, %992 ]
  %1017 = phi float [ %1013, %1009 ], [ %1007, %992 ]
  %1018 = phi float [ %1014, %1009 ], [ %1008, %992 ]
  %1019 = fmul fast float %1016, %987
  %1020 = select i1 %254, float %1019, float %1016
  %1021 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1017, float %1018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1022 = select i1 %254, float 0.000000e+00, float %1016
  %1023 = select i1 %254, float %1021, float %1017
  %1024 = select i1 %254, float 0.000000e+00, float %1018
  br label %1025

; <label>:1025                                    ; preds = %1015, %977
  %1026 = phi float [ %1022, %1015 ], [ 0.000000e+00, %977 ]
  %1027 = phi float [ %1023, %1015 ], [ 0.000000e+00, %977 ]
  %1028 = phi float [ %1024, %1015 ], [ 0.000000e+00, %977 ]
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = and i32 %1030, 1024
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1063, label %1033

; <label>:1033                                    ; preds = %1025
  %1034 = add i32 %45, 152
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = and i32 %1036, 255
  %1038 = uitofp i32 %1037 to float
  %1039 = fmul fast float %1038, 0x3F70101020000000
  %1040 = lshr i32 %1036, 8
  %1041 = and i32 %1040, 255
  %1042 = uitofp i32 %1041 to float
  %1043 = fmul fast float %1042, 0x3F70101020000000
  %1044 = lshr i32 %1036, 16
  %1045 = and i32 %1044, 255
  %1046 = uitofp i32 %1045 to float
  %1047 = fmul fast float %1046, 0x3F70101020000000
  %1048 = fmul fast float %1039, %1039
  %1049 = fmul fast float %1043, %1043
  %1050 = fmul fast float %1047, %1047
  %1051 = add i32 %45, 476
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = add i32 %1053, 0
  %1055 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1054, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1056 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1055, %dx.types.Handle %98, float %607, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.ResRet.f32 %1056, 1
  %1059 = extractvalue %dx.types.ResRet.f32 %1056, 2
  %1060 = fmul fast float %1048, %1057
  %1061 = fmul fast float %1049, %1058
  %1062 = fmul fast float %1050, %1059
  br label %1063

; <label>:1063                                    ; preds = %1033, %1025
  %1064 = phi float [ %1060, %1033 ], [ 0.000000e+00, %1025 ]
  %1065 = phi float [ %1061, %1033 ], [ 0.000000e+00, %1025 ]
  %1066 = phi float [ %1062, %1033 ], [ 0.000000e+00, %1025 ]
  %1067 = fcmp fast ogt float %1064, 0.000000e+00
  %1068 = fcmp fast ogt float %1065, 0.000000e+00
  %1069 = fcmp fast ogt float %1066, 0.000000e+00
  %1070 = call float @dx.op.unary.f32(i32 23, float %1064)  ; Log(value)
  %1071 = call float @dx.op.unary.f32(i32 23, float %1065)  ; Log(value)
  %1072 = call float @dx.op.unary.f32(i32 23, float %1066)  ; Log(value)
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = lshr i32 %1074, 7
  %1076 = and i32 %1075, 32752
  %1077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1076)  ; LegacyF16ToF32(value)
  %1078 = fmul fast float %1070, 0xBFE62E4300000000
  %1079 = fmul fast float %1078, %1077
  %1080 = fmul fast float %1071, 0xBFE62E4300000000
  %1081 = fmul fast float %1080, %1077
  %1082 = fmul fast float %1072, 0xBFE62E4300000000
  %1083 = fmul fast float %1082, %1077
  %1084 = select i1 %1067, float %1079, float 1.270000e+02
  %1085 = select i1 %1068, float %1081, float 1.270000e+02
  %1086 = select i1 %1069, float %1083, float 1.270000e+02
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = and i32 %1088, 10240
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1135, label %1091

; <label>:1091                                    ; preds = %1063
  %1092 = add i32 %45, 492
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = add i32 %1094, 0
  %1096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1097 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1096, %dx.types.Handle %98, float %607, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 1
  %1099 = extractvalue %dx.types.ResRet.f32 %1097, 3
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = and i32 %1101, 1048576
  %1103 = icmp ne i32 %1102, 0
  %1104 = and i32 %1101, 8192
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1121, label %1106

; <label>:1106                                    ; preds = %1091
  %1107 = extractvalue %dx.types.ResRet.f32 %1097, 2
  %1108 = select i1 %1103, float %1107, float %1098
  %1109 = extractvalue %dx.types.ResRet.f32 %1097, 0
  %1110 = select i1 %1103, float %1109, float %1098
  %1111 = add i32 %45, 96
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = lshr i32 %1113, 16
  %1115 = and i32 %1114, 255
  %1116 = uitofp i32 %1115 to float
  %1117 = fmul fast float %1116, 0x3F80101020000000
  %1118 = fmul fast float %1117, %1110
  %1119 = fmul fast float %1117, %1098
  %1120 = fmul fast float %1117, %1108
  br label %1121

; <label>:1121                                    ; preds = %1106, %1091
  %1122 = phi float [ %1118, %1106 ], [ 0.000000e+00, %1091 ]
  %1123 = phi float [ %1119, %1106 ], [ 0.000000e+00, %1091 ]
  %1124 = phi float [ %1120, %1106 ], [ 0.000000e+00, %1091 ]
  %1125 = and i32 %1101, 2048
  %1126 = icmp eq i32 %1125, 0
  br i1 %1126, label %1135, label %1127

; <label>:1127                                    ; preds = %1121
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = shl i32 %1129, 4
  %1131 = and i32 %1130, 32752
  %1132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1131)  ; LegacyF16ToF32(value)
  %1133 = fmul fast float %1132, %1099
  %1134 = call float @dx.op.binary.f32(i32 35, float %1133, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1135

; <label>:1135                                    ; preds = %1127, %1121, %1063
  %1136 = phi float [ %1122, %1127 ], [ %1122, %1121 ], [ 0.000000e+00, %1063 ]
  %1137 = phi float [ %1123, %1127 ], [ %1123, %1121 ], [ 0.000000e+00, %1063 ]
  %1138 = phi float [ %1124, %1127 ], [ %1124, %1121 ], [ 0.000000e+00, %1063 ]
  %1139 = phi float [ %1134, %1127 ], [ 0x3F70101020000000, %1121 ], [ 0x3F70101020000000, %1063 ]
  %1140 = add i32 %45, 96
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = and i32 %1142, 255
  %1144 = uitofp i32 %1143 to float
  %1145 = lshr i32 %1142, 8
  %1146 = and i32 %1145, 255
  %1147 = uitofp i32 %1146 to float
  %1148 = call float @dx.op.dot3.f32(i32 55, float %898, float %899, float %900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1149 = fmul fast float %1147, %1148
  %1150 = fadd fast float %1149, %1144
  %1151 = fmul fast float %1150, 0x3F70101020000000
  %1152 = call float @dx.op.unary.f32(i32 7, float %1151)  ; Saturate(value)
  br label %1153

; <label>:1153                                    ; preds = %1135, %493
  %1154 = phi float [ 0.000000e+00, %493 ], [ %979, %1135 ]
  %1155 = phi float [ 0.000000e+00, %493 ], [ %980, %1135 ]
  %1156 = phi float [ 0.000000e+00, %493 ], [ %898, %1135 ]
  %1157 = phi float [ 0.000000e+00, %493 ], [ %899, %1135 ]
  %1158 = phi float [ 0.000000e+00, %493 ], [ %900, %1135 ]
  %1159 = phi float [ 0.000000e+00, %493 ], [ %1026, %1135 ]
  %1160 = phi float [ 0.000000e+00, %493 ], [ %1027, %1135 ]
  %1161 = phi float [ 0.000000e+00, %493 ], [ %1028, %1135 ]
  %1162 = phi float [ 0.000000e+00, %493 ], [ %1136, %1135 ]
  %1163 = phi float [ 0.000000e+00, %493 ], [ %1137, %1135 ]
  %1164 = phi float [ 0.000000e+00, %493 ], [ %1138, %1135 ]
  %1165 = phi float [ 0.000000e+00, %493 ], [ %1084, %1135 ]
  %1166 = phi float [ 0.000000e+00, %493 ], [ %1085, %1135 ]
  %1167 = phi float [ 0.000000e+00, %493 ], [ %1086, %1135 ]
  %1168 = phi float [ 0.000000e+00, %493 ], [ %884, %1135 ]
  %1169 = phi float [ 0.000000e+00, %493 ], [ %680, %1135 ]
  %1170 = phi float [ 0.000000e+00, %493 ], [ %978, %1135 ]
  %1171 = phi float [ 0.000000e+00, %493 ], [ %981, %1135 ]
  %1172 = phi float [ 0.000000e+00, %493 ], [ %1139, %1135 ]
  %1173 = phi float [ 0.000000e+00, %493 ], [ %1152, %1135 ]
  br i1 %441, label %2096, label %1174

; <label>:1174                                    ; preds = %1153
  %1175 = icmp ult i32 %499, 2
  %1176 = add i32 %45, 40
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = add i32 %45, 44
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = or i32 %1181, %1178
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %2096, label %1184

; <label>:1184                                    ; preds = %1174
  %1185 = and i32 %1178, 262144
  %1186 = icmp ne i32 %1185, 0
  %1187 = select i1 %1186, float %51, float 1.000000e+00
  %1188 = select i1 %1186, float %52, float 0.000000e+00
  %1189 = select i1 %1186, float %53, float 0.000000e+00
  %1190 = select i1 %1186, float %54, float 1.000000e+00
  %1191 = select i1 %1186, float %55, float %83
  %1192 = select i1 %1186, float %56, float %84
  %1193 = add i32 %45, 300
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = lshr i32 %1195, 16
  %1197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1196)  ; LegacyF16ToF32(value)
  %1198 = fmul fast float %1197, 0x3F50624DE0000000
  %1199 = add i32 %45, 104
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = lshr i32 %1201, 16
  %1203 = and i32 %1202, 255
  %1204 = lshr i32 %1201, 24
  %1205 = add i32 %45, 308
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 65535
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = lshr i32 %1207, 16
  %1211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1210)  ; LegacyF16ToF32(value)
  %1212 = add i32 %45, 48
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = lshr i32 %1214, 22
  %1216 = shl nuw nsw i32 %1215, 5
  %1217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1216)  ; LegacyF16ToF32(value)
  %1218 = shl i32 %1214, 4
  %1219 = and i32 %1218, 32752
  %1220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1219)  ; LegacyF16ToF32(value)
  %1221 = lshr i32 %1214, 7
  %1222 = and i32 %1221, 32752
  %1223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1222)  ; LegacyF16ToF32(value)
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 3
  %1226 = fmul fast float %1225, 1.000000e+03
  %1227 = fmul fast float %351, %1226
  %1228 = call float @dx.op.unary.f32(i32 22, float %1227)  ; Frc(value)
  %1229 = fadd fast float %1228, %341
  %1230 = fmul fast float %352, %1226
  %1231 = call float @dx.op.unary.f32(i32 22, float %1230)  ; Frc(value)
  %1232 = fadd fast float %1231, %343
  %1233 = fmul fast float %1198, %1226
  %1234 = call float @dx.op.unary.f32(i32 22, float %1233)  ; Frc(value)
  %1235 = fmul fast float %1234, 0x401921FB60000000
  %1236 = fadd fast float %1235, %1217
  %1237 = call float @dx.op.unary.f32(i32 13, float %1236)  ; Sin(value)
  %1238 = call float @dx.op.unary.f32(i32 12, float %1236)  ; Cos(value)
  %1239 = fsub fast float -0.000000e+00, %1237
  %1240 = fadd fast float %1191, -5.000000e-01
  %1241 = fadd fast float %1192, -5.000000e-01
  %1242 = fmul fast float %1209, %1240
  %1243 = fmul fast float %1211, %1241
  %1244 = fadd fast float %1242, 5.000000e-01
  %1245 = fadd fast float %1243, 5.000000e-01
  %1246 = fmul fast float %1220, %1244
  %1247 = fmul fast float %1223, %1245
  %1248 = fmul fast float %1238, %1246
  %1249 = call float @dx.op.tertiary.f32(i32 46, float %1239, float %1247, float %1248)  ; FMad(a,b,c)
  %1250 = fmul fast float %1237, %1246
  %1251 = call float @dx.op.tertiary.f32(i32 46, float %1238, float %1247, float %1250)  ; FMad(a,b,c)
  %1252 = fadd fast float %1229, %1249
  %1253 = fadd fast float %1232, %1251
  %1254 = icmp ugt i32 %1203, 1
  %1255 = icmp ugt i32 %1201, 33554431
  %1256 = or i1 %1255, %1254
  br i1 %1256, label %1257, label %1282

; <label>:1257                                    ; preds = %1184
  %1258 = add i32 %45, 244
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = lshr i32 %1260, 16
  %1262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1261)  ; LegacyF16ToF32(value)
  %1263 = fmul fast float %1225, %1262
  %1264 = call float @dx.op.unary.f32(i32 22, float %1263)  ; Frc(value)
  %1265 = mul nuw nsw i32 %1203, %1204
  %1266 = uitofp i32 %1265 to float
  %1267 = fmul fast float %1264, %1266
  %1268 = call float @dx.op.unary.f32(i32 27, float %1267)  ; Round_ni(value)
  %1269 = fptoui float %1268 to i32
  %1270 = urem i32 %1269, %1203
  %1271 = udiv i32 %1269, %1204
  %1272 = call float @dx.op.unary.f32(i32 22, float %1252)  ; Frc(value)
  %1273 = call float @dx.op.unary.f32(i32 22, float %1253)  ; Frc(value)
  %1274 = uitofp i32 %1270 to float
  %1275 = uitofp i32 %1271 to float
  %1276 = fadd fast float %1272, %1274
  %1277 = fadd fast float %1273, %1275
  %1278 = uitofp i32 %1203 to float
  %1279 = uitofp i32 %1204 to float
  %1280 = fdiv fast float %1276, %1278
  %1281 = fdiv fast float %1277, %1279
  br label %1282

; <label>:1282                                    ; preds = %1257, %1184
  %1283 = phi float [ %1280, %1257 ], [ %1252, %1184 ]
  %1284 = phi float [ %1281, %1257 ], [ %1253, %1184 ]
  %1285 = and i32 %1178, 256
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %1333, label %1287

; <label>:1287                                    ; preds = %1282
  %1288 = add i32 %45, 444
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = add i32 %1290, 0
  %1292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1292, %dx.types.Handle %98, float %1283, float %1284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 0
  %1295 = add i32 %45, 116
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = shl i32 %1297, 4
  %1299 = and i32 %1298, 32752
  %1300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1299)  ; LegacyF16ToF32(value)
  %1301 = lshr i32 %1297, 7
  %1302 = and i32 %1301, 32752
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = fsub fast float 1.000000e+00, %496
  %1305 = call float @dx.op.binary.f32(i32 35, float %1304, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1306 = bitcast float %496 to i32
  %1307 = sitofp i32 %1306 to float
  %1308 = fadd fast float %1307, 0xC1CFBF8940000000
  %1309 = fmul fast float %1303, %1308
  %1310 = fadd fast float %1309, 0x41CFBF8940000000
  %1311 = fptosi float %1310 to i32
  %1312 = bitcast i32 %1311 to float
  %1313 = bitcast float %1305 to i32
  %1314 = sitofp i32 %1313 to float
  %1315 = fadd fast float %1314, 0xC1CFBF8940000000
  %1316 = fmul fast float %1315, %1303
  %1317 = fadd fast float %1316, 0x41CFBF8940000000
  %1318 = fptosi float %1317 to i32
  %1319 = bitcast i32 %1318 to float
  %1320 = fmul fast float %1312, %1300
  %1321 = fmul fast float %1319, %1300
  %1322 = fsub fast float %1305, %1320
  %1323 = fadd fast float %1321, %1305
  %1324 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1325 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1326 = fsub fast float %1294, %1324
  %1327 = fsub fast float %1325, %1324
  %1328 = bitcast float %1327 to i32
  %1329 = sub nsw i32 2129859010, %1328
  %1330 = bitcast i32 %1329 to float
  %1331 = fmul fast float %1330, %1326
  %1332 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  br label %1333

; <label>:1333                                    ; preds = %1287, %1282
  %1334 = phi float [ %1332, %1287 ], [ %496, %1282 ]
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = and i32 %1336, 128
  %1338 = icmp eq i32 %1337, 0
  br i1 %1338, label %1355, label %1339

; <label>:1339                                    ; preds = %1333
  %1340 = add i32 %45, 428
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = add i32 %1342, 0
  %1344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1343, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1345 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1344, %dx.types.Handle %98, float %1283, float %1284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1346 = extractvalue %dx.types.ResRet.f32 %1345, 0
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = and i32 %1348, 524288
  %1350 = icmp ne i32 %1349, 0
  %1351 = fcmp fast ogt float %1346, 0x3FE0101020000000
  %1352 = select i1 %1351, float 1.000000e+00, float 0.000000e+00
  %1353 = select i1 %1350, float %1352, float %1346
  %1354 = fmul fast float %1353, %1334
  br label %1355

; <label>:1355                                    ; preds = %1339, %1333
  %1356 = phi float [ %1354, %1339 ], [ %1334, %1333 ]
  %1357 = fcmp fast ult float %1356, 0x3F70101020000000
  br i1 %1357, label %2096, label %1358

; <label>:1358                                    ; preds = %1355
  %1359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.i32 %1359, 0
  %1361 = and i32 %1360, 16
  %1362 = icmp eq i32 %1361, 0
  br i1 %1362, label %1561, label %1363

; <label>:1363                                    ; preds = %1358
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = add i32 %45, 380
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = add i32 %1368, 0
  %1370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1369, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1371 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1370, %dx.types.Handle %97, float %1283, float %1284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = extractvalue %dx.types.ResRet.f32 %1371, 1
  %1374 = extractvalue %dx.types.ResRet.f32 %1371, 2
  %1375 = extractvalue %dx.types.ResRet.f32 %1371, 3
  %1376 = and i32 %1365, 255
  %1377 = uitofp i32 %1376 to float
  %1378 = lshr i32 %1365, 8
  %1379 = and i32 %1378, 255
  %1380 = uitofp i32 %1379 to float
  %1381 = fmul fast float %1375, %1377
  %1382 = fadd fast float %1381, %1380
  %1383 = fmul fast float %1382, 0x3F70101000000000
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = and i32 %1385, 512
  %1387 = icmp eq i32 %1386, 0
  br i1 %1387, label %1396, label %1388

; <label>:1388                                    ; preds = %1363
  %1389 = add i32 %45, 464
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1389, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = add i32 %1391, 0
  %1393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1392, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1394 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1393, %dx.types.Handle %98, float %1283, float %1284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1395 = extractvalue %dx.types.ResRet.f32 %1394, 0
  br label %1396

; <label>:1396                                    ; preds = %1388, %1363
  %1397 = phi float [ %1395, %1388 ], [ 1.000000e+00, %1363 ]
  %1398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.i32 %1398, 0
  %1400 = and i32 %1399, 33554432
  %1401 = icmp eq i32 %1400, 0
  br i1 %1401, label %1508, label %1402

; <label>:1402                                    ; preds = %1396
  %1403 = add i32 %45, 240
  %1404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1403, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.i32 %1404, 0
  %1406 = and i32 %1405, 65535
  %1407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1406)  ; LegacyF16ToF32(value)
  %1408 = lshr i32 %1405, 16
  %1409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1408)  ; LegacyF16ToF32(value)
  %1410 = add i32 %45, 244
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = and i32 %1412, 65535
  %1414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1413)  ; LegacyF16ToF32(value)
  %1415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.i32 %1415, 0
  %1417 = lshr i32 %1416, 24
  %1418 = uitofp i32 %1417 to float
  %1419 = fmul fast float %1418, 0x3F70101020000000
  %1420 = and i32 %1416, 255
  %1421 = uitofp i32 %1420 to float
  %1422 = fmul fast float %1421, 0x3F70101020000000
  %1423 = lshr i32 %1416, 8
  %1424 = and i32 %1423, 255
  %1425 = uitofp i32 %1424 to float
  %1426 = fmul fast float %1425, 0x3F70101020000000
  %1427 = lshr i32 %1416, 16
  %1428 = and i32 %1427, 255
  %1429 = uitofp i32 %1428 to float
  %1430 = fmul fast float %1429, 0x3F70101020000000
  %1431 = add i32 %45, 236
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1431, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = lshr i32 %1433, 24
  %1435 = uitofp i32 %1434 to float
  %1436 = fmul fast float %1435, 0x3F70101020000000
  %1437 = and i32 %1433, 255
  %1438 = uitofp i32 %1437 to float
  %1439 = fmul fast float %1438, 0x3F70101020000000
  %1440 = lshr i32 %1433, 8
  %1441 = and i32 %1440, 255
  %1442 = uitofp i32 %1441 to float
  %1443 = fmul fast float %1442, 0x3F70101020000000
  %1444 = lshr i32 %1433, 16
  %1445 = and i32 %1444, 255
  %1446 = uitofp i32 %1445 to float
  %1447 = fmul fast float %1446, 0x3F70101020000000
  %1448 = bitcast float %1372 to i32
  %1449 = ashr i32 %1448, 1
  %1450 = sub nsw i32 1597463174, %1449
  %1451 = bitcast i32 %1450 to float
  %1452 = fmul fast float %1372, 5.000000e-01
  %1453 = fmul fast float %1451, %1451
  %1454 = fmul fast float %1453, %1452
  %1455 = fsub fast float 1.500000e+00, %1454
  %1456 = fmul fast float %1451, %1372
  %1457 = fmul fast float %1456, %1455
  %1458 = bitcast float %1373 to i32
  %1459 = ashr i32 %1458, 1
  %1460 = sub nsw i32 1597463174, %1459
  %1461 = bitcast i32 %1460 to float
  %1462 = fmul fast float %1373, 5.000000e-01
  %1463 = fmul fast float %1461, %1461
  %1464 = fmul fast float %1463, %1462
  %1465 = fsub fast float 1.500000e+00, %1464
  %1466 = fmul fast float %1461, %1373
  %1467 = fmul fast float %1466, %1465
  %1468 = bitcast float %1374 to i32
  %1469 = ashr i32 %1468, 1
  %1470 = sub nsw i32 1597463174, %1469
  %1471 = bitcast i32 %1470 to float
  %1472 = fmul fast float %1374, 5.000000e-01
  %1473 = fmul fast float %1471, %1471
  %1474 = fmul fast float %1473, %1472
  %1475 = fsub fast float 1.500000e+00, %1474
  %1476 = fmul fast float %1471, %1374
  %1477 = fmul fast float %1476, %1475
  %1478 = fsub fast float %1457, %1439
  %1479 = fsub fast float %1467, %1443
  %1480 = fsub fast float %1477, %1447
  %1481 = fmul fast float %1478, %1407
  %1482 = fmul fast float %1479, %1409
  %1483 = fmul fast float %1480, %1414
  %1484 = fadd fast float %1481, %1422
  %1485 = fadd fast float %1482, %1426
  %1486 = fadd fast float %1483, %1430
  %1487 = call float @dx.op.unary.f32(i32 7, float %1484)  ; Saturate(value)
  %1488 = call float @dx.op.unary.f32(i32 7, float %1485)  ; Saturate(value)
  %1489 = call float @dx.op.unary.f32(i32 7, float %1486)  ; Saturate(value)
  %1490 = fmul fast float %1487, %1487
  %1491 = fmul fast float %1488, %1488
  %1492 = fmul fast float %1489, %1489
  %1493 = fsub fast float %1490, %1372
  %1494 = fsub fast float %1491, %1373
  %1495 = fsub fast float %1492, %1374
  %1496 = fmul fast float %1493, %1397
  %1497 = fmul fast float %1494, %1397
  %1498 = fmul fast float %1495, %1397
  %1499 = fadd fast float %1496, %1372
  %1500 = fadd fast float %1497, %1373
  %1501 = fadd fast float %1498, %1374
  %1502 = fadd fast float %1419, %1383
  %1503 = fsub fast float %1502, %1436
  %1504 = call float @dx.op.unary.f32(i32 7, float %1503)  ; Saturate(value)
  %1505 = fsub fast float %1504, %1383
  %1506 = fmul fast float %1505, %1397
  %1507 = fadd fast float %1506, %1383
  br label %1561

; <label>:1508                                    ; preds = %1396
  %1509 = and i32 %1399, 134217728
  %1510 = icmp eq i32 %1509, 0
  br i1 %1510, label %1545, label %1511

; <label>:1511                                    ; preds = %1508
  %1512 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %1513 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %1514 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %1515 = fadd fast float %1512, -5.000000e-01
  %1516 = fadd fast float %1513, -5.000000e-01
  %1517 = fadd fast float %1514, -5.000000e-01
  %1518 = fmul fast float %1515, %1397
  %1519 = fmul fast float %1516, %1397
  %1520 = fmul fast float %1517, %1397
  %1521 = fadd fast float %1518, 5.000000e-01
  %1522 = fadd fast float %1519, 5.000000e-01
  %1523 = fadd fast float %1520, 5.000000e-01
  %1524 = call float @dx.op.unary.f32(i32 24, float %1372)  ; Sqrt(value)
  %1525 = call float @dx.op.unary.f32(i32 24, float %1373)  ; Sqrt(value)
  %1526 = call float @dx.op.unary.f32(i32 24, float %1374)  ; Sqrt(value)
  %1527 = fmul fast float %1521, 2.000000e+00
  %1528 = fsub fast float 1.000000e+00, %1527
  %1529 = fmul fast float %1528, %1524
  %1530 = fadd fast float %1529, %1527
  %1531 = fmul fast float %1530, %1524
  %1532 = fmul fast float %1522, 2.000000e+00
  %1533 = fsub fast float 1.000000e+00, %1532
  %1534 = fmul fast float %1533, %1525
  %1535 = fadd fast float %1534, %1532
  %1536 = fmul fast float %1535, %1525
  %1537 = fmul fast float %1523, 2.000000e+00
  %1538 = fsub fast float 1.000000e+00, %1537
  %1539 = fmul fast float %1538, %1526
  %1540 = fadd fast float %1539, %1537
  %1541 = fmul fast float %1540, %1526
  %1542 = fmul fast float %1531, %1531
  %1543 = fmul fast float %1536, %1536
  %1544 = fmul fast float %1541, %1541
  br label %1561

; <label>:1545                                    ; preds = %1508
  %1546 = fmul fast float %328, %328
  %1547 = fmul fast float %332, %332
  %1548 = fmul fast float %336, %336
  %1549 = fadd fast float %1546, -1.000000e+00
  %1550 = fadd fast float %1547, -1.000000e+00
  %1551 = fadd fast float %1548, -1.000000e+00
  %1552 = fmul fast float %1397, %1549
  %1553 = fmul fast float %1397, %1550
  %1554 = fmul fast float %1397, %1551
  %1555 = fadd fast float %1552, 1.000000e+00
  %1556 = fadd fast float %1553, 1.000000e+00
  %1557 = fadd fast float %1554, 1.000000e+00
  %1558 = fmul fast float %1555, %1372
  %1559 = fmul fast float %1556, %1373
  %1560 = fmul fast float %1557, %1374
  br label %1561

; <label>:1561                                    ; preds = %1545, %1511, %1402, %1358
  %1562 = phi float [ %1507, %1402 ], [ %1383, %1511 ], [ %1383, %1545 ], [ 0x3FA23C0BE0000000, %1358 ]
  %1563 = phi float [ %1499, %1402 ], [ %1542, %1511 ], [ %1558, %1545 ], [ 1.000000e+00, %1358 ]
  %1564 = phi float [ %1500, %1402 ], [ %1543, %1511 ], [ %1559, %1545 ], [ 1.000000e+00, %1358 ]
  %1565 = phi float [ %1501, %1402 ], [ %1544, %1511 ], [ %1560, %1545 ], [ 1.000000e+00, %1358 ]
  %1566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1567 = extractvalue %dx.types.CBufRet.i32 %1566, 1
  %1568 = and i32 %1567, 1
  %1569 = icmp ne i32 %1568, 0
  %1570 = add i32 %45, 356
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1570, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = and i32 %1572, 32
  %1574 = icmp ne i32 %1573, 0
  %1575 = and i1 %1569, %1574
  %1576 = select i1 %1575, float 1.000000e+00, float %1563
  %1577 = select i1 %1575, float 0x3FD3333340000000, float %1564
  %1578 = select i1 %1575, float 0x3FD3333340000000, float %1565
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 32
  %1582 = icmp eq i32 %1581, 0
  br i1 %1582, label %1655, label %1583

; <label>:1583                                    ; preds = %1561
  %1584 = add i32 %45, 108
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1584, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = add i32 %45, 396
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1587, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = add i32 %1589, 0
  %1591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1590, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1592 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1591, %dx.types.Handle %97, float %1283, float %1284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1593 = extractvalue %dx.types.ResRet.f32 %1592, 0
  %1594 = extractvalue %dx.types.ResRet.f32 %1592, 1
  %1595 = extractvalue %dx.types.ResRet.f32 %1592, 2
  %1596 = extractvalue %dx.types.ResRet.f32 %1592, 3
  %1597 = and i32 %1586, 255
  %1598 = uitofp i32 %1597 to float
  %1599 = lshr i32 %1586, 8
  %1600 = and i32 %1599, 255
  %1601 = uitofp i32 %1600 to float
  %1602 = lshr i32 %1586, 16
  %1603 = and i32 %1602, 255
  %1604 = uitofp i32 %1603 to float
  %1605 = fmul fast float %1604, 0x3F70101000000000
  %1606 = fmul fast float %1593, %1598
  %1607 = fadd fast float %1606, %1601
  %1608 = fmul fast float %1607, 0x3F70101000000000
  %1609 = fadd fast float %1594, -5.000000e-01
  %1610 = fadd fast float %1596, -5.000000e-01
  %1611 = fmul fast float %1609, %1605
  %1612 = fmul fast float %1610, %1605
  %1613 = fadd fast float %1611, 5.000000e-01
  %1614 = fadd fast float %1612, 5.000000e-01
  %1615 = fmul fast float %1613, 2.000000e+00
  %1616 = fadd fast float %1615, -1.000000e+00
  %1617 = fmul fast float %1614, 2.000000e+00
  %1618 = fadd fast float %1617, -1.000000e+00
  %1619 = fadd fast float %1616, %1618
  %1620 = fmul fast float %1619, 5.000000e-01
  %1621 = fsub fast float %1616, %1618
  %1622 = fmul fast float %1621, 5.000000e-01
  %1623 = call float @dx.op.unary.f32(i32 6, float %1620)  ; FAbs(value)
  %1624 = fsub fast float 1.000000e+00, %1623
  %1625 = call float @dx.op.unary.f32(i32 6, float %1622)  ; FAbs(value)
  %1626 = fsub fast float %1624, %1625
  %1627 = call float @dx.op.dot3.f32(i32 55, float %1620, float %1622, float %1626, float %1620, float %1622, float %1626)  ; Dot3(ax,ay,az,bx,by,bz)
  %1628 = call float @dx.op.unary.f32(i32 25, float %1627)  ; Rsqrt(value)
  %1629 = fmul fast float %1620, %1628
  %1630 = fmul fast float %1622, %1628
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 0
  %1633 = and i32 %1632, 67108864
  %1634 = icmp eq i32 %1633, 0
  br i1 %1634, label %1651, label %1635

; <label>:1635                                    ; preds = %1583
  %1636 = add i32 %45, 296
  %1637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1636, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.i32 %1637, 0
  %1639 = and i32 %1638, 65535
  %1640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1639)  ; LegacyF16ToF32(value)
  %1641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1642 = extractvalue %dx.types.ResRet.i32 %1641, 0
  %1643 = and i32 %1642, 65535
  %1644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1643)  ; LegacyF16ToF32(value)
  %1645 = lshr i32 %1638, 16
  %1646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1645)  ; LegacyF16ToF32(value)
  %1647 = fsub fast float %1608, %1646
  %1648 = fmul fast float %1647, %1640
  %1649 = fadd fast float %1648, %1644
  %1650 = call float @dx.op.unary.f32(i32 7, float %1649)  ; Saturate(value)
  br label %1651

; <label>:1651                                    ; preds = %1635, %1583
  %1652 = phi float [ %1650, %1635 ], [ %1608, %1583 ]
  %1653 = call float @dx.op.dot2.f32(i32 54, float %1629, float %1630, float %1187, float %1188)  ; Dot2(ax,ay,bx,by)
  %1654 = call float @dx.op.dot2.f32(i32 54, float %1629, float %1630, float %1189, float %1190)  ; Dot2(ax,ay,bx,by)
  br label %1655

; <label>:1655                                    ; preds = %1651, %1561
  %1656 = phi float [ %1652, %1651 ], [ 0x3FD6666660000000, %1561 ]
  %1657 = phi float [ %1653, %1651 ], [ 0.000000e+00, %1561 ]
  %1658 = phi float [ %1654, %1651 ], [ 0.000000e+00, %1561 ]
  %1659 = phi float [ %1595, %1651 ], [ 1.000000e+00, %1561 ]
  %1660 = add i32 %45, 176
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = lshr i32 %1662, 22
  %1664 = shl nuw nsw i32 %1663, 5
  %1665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1664)  ; LegacyF16ToF32(value)
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = and i32 %1667, 64
  %1669 = icmp eq i32 %1668, 0
  br i1 %1669, label %1703, label %1670

; <label>:1670                                    ; preds = %1655
  %1671 = add i32 %45, 412
  %1672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1671, i32 undef)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.i32 %1672, 0
  %1674 = add i32 %1673, 0
  %1675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.i32 %1676, 0
  %1678 = and i32 %1677, 131072
  %1679 = icmp eq i32 %1678, 0
  %1680 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1675, %dx.types.Handle %97, float %1283, float %1284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1681 = extractvalue %dx.types.ResRet.f32 %1680, 0
  %1682 = extractvalue %dx.types.ResRet.f32 %1680, 1
  %1683 = extractvalue %dx.types.ResRet.f32 %1680, 2
  %1684 = fmul fast float %1681, %316
  %1685 = fmul fast float %1682, %319
  %1686 = fmul fast float %1683, %322
  br i1 %1679, label %1693, label %1687

; <label>:1687                                    ; preds = %1670
  %1688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1689 = extractvalue %dx.types.CBufRet.f32 %1688, 0
  %1690 = fmul fast float %1689, %1684
  %1691 = fmul fast float %1689, %1685
  %1692 = fmul fast float %1689, %1686
  br label %1693

; <label>:1693                                    ; preds = %1687, %1670
  %1694 = phi float [ %1690, %1687 ], [ %1684, %1670 ]
  %1695 = phi float [ %1691, %1687 ], [ %1685, %1670 ]
  %1696 = phi float [ %1692, %1687 ], [ %1686, %1670 ]
  %1697 = fmul fast float %1694, %1665
  %1698 = select i1 %254, float %1697, float %1694
  %1699 = call float @dx.op.dot3.f32(i32 55, float %1698, float %1695, float %1696, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1700 = select i1 %254, float 0.000000e+00, float %1694
  %1701 = select i1 %254, float %1699, float %1695
  %1702 = select i1 %254, float 0.000000e+00, float %1696
  br label %1703

; <label>:1703                                    ; preds = %1693, %1655
  %1704 = phi float [ %1700, %1693 ], [ 0.000000e+00, %1655 ]
  %1705 = phi float [ %1701, %1693 ], [ 0.000000e+00, %1655 ]
  %1706 = phi float [ %1702, %1693 ], [ 0.000000e+00, %1655 ]
  %1707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1708 = extractvalue %dx.types.ResRet.i32 %1707, 0
  %1709 = and i32 %1708, 1024
  %1710 = icmp eq i32 %1709, 0
  br i1 %1710, label %1741, label %1711

; <label>:1711                                    ; preds = %1703
  %1712 = add i32 %45, 168
  %1713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.i32 %1713, 0
  %1715 = and i32 %1714, 255
  %1716 = uitofp i32 %1715 to float
  %1717 = fmul fast float %1716, 0x3F70101020000000
  %1718 = lshr i32 %1714, 8
  %1719 = and i32 %1718, 255
  %1720 = uitofp i32 %1719 to float
  %1721 = fmul fast float %1720, 0x3F70101020000000
  %1722 = lshr i32 %1714, 16
  %1723 = and i32 %1722, 255
  %1724 = uitofp i32 %1723 to float
  %1725 = fmul fast float %1724, 0x3F70101020000000
  %1726 = fmul fast float %1717, %1717
  %1727 = fmul fast float %1721, %1721
  %1728 = fmul fast float %1725, %1725
  %1729 = add i32 %45, 480
  %1730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.i32 %1730, 0
  %1732 = add i32 %1731, 0
  %1733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1733, %dx.types.Handle %98, float %1283, float %1284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1735 = extractvalue %dx.types.ResRet.f32 %1734, 0
  %1736 = extractvalue %dx.types.ResRet.f32 %1734, 1
  %1737 = extractvalue %dx.types.ResRet.f32 %1734, 2
  %1738 = fmul fast float %1726, %1735
  %1739 = fmul fast float %1727, %1736
  %1740 = fmul fast float %1728, %1737
  br label %1741

; <label>:1741                                    ; preds = %1711, %1703
  %1742 = phi float [ %1738, %1711 ], [ 0.000000e+00, %1703 ]
  %1743 = phi float [ %1739, %1711 ], [ 0.000000e+00, %1703 ]
  %1744 = phi float [ %1740, %1711 ], [ 0.000000e+00, %1703 ]
  %1745 = fcmp fast ogt float %1742, 0.000000e+00
  %1746 = fcmp fast ogt float %1743, 0.000000e+00
  %1747 = fcmp fast ogt float %1744, 0.000000e+00
  %1748 = call float @dx.op.unary.f32(i32 23, float %1742)  ; Log(value)
  %1749 = call float @dx.op.unary.f32(i32 23, float %1743)  ; Log(value)
  %1750 = call float @dx.op.unary.f32(i32 23, float %1744)  ; Log(value)
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = lshr i32 %1752, 7
  %1754 = and i32 %1753, 32752
  %1755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1754)  ; LegacyF16ToF32(value)
  %1756 = fmul fast float %1748, 0xBFE62E4300000000
  %1757 = fmul fast float %1756, %1755
  %1758 = fmul fast float %1749, 0xBFE62E4300000000
  %1759 = fmul fast float %1758, %1755
  %1760 = fmul fast float %1750, 0xBFE62E4300000000
  %1761 = fmul fast float %1760, %1755
  %1762 = select i1 %1745, float %1757, float 1.270000e+02
  %1763 = select i1 %1746, float %1759, float 1.270000e+02
  %1764 = select i1 %1747, float %1761, float 1.270000e+02
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = and i32 %1766, 10240
  %1768 = icmp eq i32 %1767, 0
  br i1 %1768, label %1813, label %1769

; <label>:1769                                    ; preds = %1741
  %1770 = add i32 %45, 496
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = add i32 %1772, 0
  %1774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1773, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1775 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1774, %dx.types.Handle %98, float %1283, float %1284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1776 = extractvalue %dx.types.ResRet.f32 %1775, 1
  %1777 = extractvalue %dx.types.ResRet.f32 %1775, 3
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = and i32 %1779, 1048576
  %1781 = icmp ne i32 %1780, 0
  %1782 = and i32 %1779, 8192
  %1783 = icmp eq i32 %1782, 0
  br i1 %1783, label %1799, label %1784

; <label>:1784                                    ; preds = %1769
  %1785 = extractvalue %dx.types.ResRet.f32 %1775, 2
  %1786 = select i1 %1781, float %1785, float %1776
  %1787 = extractvalue %dx.types.ResRet.f32 %1775, 0
  %1788 = select i1 %1781, float %1787, float %1776
  %1789 = add i32 %45, 112
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = lshr i32 %1791, 16
  %1793 = and i32 %1792, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = fmul fast float %1794, 0x3F80101020000000
  %1796 = fmul fast float %1795, %1788
  %1797 = fmul fast float %1795, %1776
  %1798 = fmul fast float %1795, %1786
  br label %1799

; <label>:1799                                    ; preds = %1784, %1769
  %1800 = phi float [ %1796, %1784 ], [ 0.000000e+00, %1769 ]
  %1801 = phi float [ %1797, %1784 ], [ 0.000000e+00, %1769 ]
  %1802 = phi float [ %1798, %1784 ], [ 0.000000e+00, %1769 ]
  %1803 = and i32 %1779, 2048
  %1804 = icmp eq i32 %1803, 0
  br i1 %1804, label %1813, label %1805

; <label>:1805                                    ; preds = %1799
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = shl i32 %1807, 4
  %1809 = and i32 %1808, 32752
  %1810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1809)  ; LegacyF16ToF32(value)
  %1811 = fmul fast float %1810, %1777
  %1812 = call float @dx.op.binary.f32(i32 35, float %1811, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1813

; <label>:1813                                    ; preds = %1805, %1799, %1741
  %1814 = phi float [ %1800, %1805 ], [ %1800, %1799 ], [ 0.000000e+00, %1741 ]
  %1815 = phi float [ %1801, %1805 ], [ %1801, %1799 ], [ 0.000000e+00, %1741 ]
  %1816 = phi float [ %1802, %1805 ], [ %1802, %1799 ], [ 0.000000e+00, %1741 ]
  %1817 = phi float [ %1812, %1805 ], [ 0x3F70101020000000, %1799 ], [ 0x3F70101020000000, %1741 ]
  %1818 = add i32 %45, 112
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = and i32 %1820, 255
  %1822 = uitofp i32 %1821 to float
  %1823 = lshr i32 %1820, 8
  %1824 = and i32 %1823, 255
  %1825 = uitofp i32 %1824 to float
  %1826 = call float @dx.op.dot3.f32(i32 55, float %1576, float %1577, float %1578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1827 = fmul fast float %1825, %1826
  %1828 = fadd fast float %1827, %1822
  %1829 = fmul fast float %1828, 0x3F70101020000000
  %1830 = call float @dx.op.unary.f32(i32 7, float %1829)  ; Saturate(value)
  br i1 %1175, label %1831, label %1866

; <label>:1831                                    ; preds = %1813
  %1832 = fmul fast float %1817, 2.000000e+00
  %1833 = fcmp fast olt float %1762, 1.270000e+02
  %1834 = fcmp fast olt float %1763, 1.270000e+02
  %1835 = fcmp fast olt float %1764, 1.270000e+02
  %1836 = fmul fast float %1762, 0xBFF7154760000000
  %1837 = fmul fast float %1836, %1832
  %1838 = fmul fast float %1763, 0xBFF7154760000000
  %1839 = fmul fast float %1838, %1832
  %1840 = fmul fast float %1764, 0xBFF7154760000000
  %1841 = fmul fast float %1840, %1832
  %1842 = call float @dx.op.unary.f32(i32 21, float %1837)  ; Exp(value)
  %1843 = call float @dx.op.unary.f32(i32 21, float %1839)  ; Exp(value)
  %1844 = call float @dx.op.unary.f32(i32 21, float %1841)  ; Exp(value)
  %1845 = call float @dx.op.unary.f32(i32 7, float %1842)  ; Saturate(value)
  %1846 = call float @dx.op.unary.f32(i32 7, float %1843)  ; Saturate(value)
  %1847 = call float @dx.op.unary.f32(i32 7, float %1844)  ; Saturate(value)
  %1848 = fadd fast float %1845, -1.000000e+00
  %1849 = select i1 %1833, float %1848, float -1.000000e+00
  %1850 = fadd fast float %1846, -1.000000e+00
  %1851 = select i1 %1834, float %1850, float -1.000000e+00
  %1852 = fadd fast float %1847, -1.000000e+00
  %1853 = select i1 %1835, float %1852, float -1.000000e+00
  %1854 = fmul fast float %1849, %1356
  %1855 = fmul fast float %1851, %1356
  %1856 = fmul fast float %1853, %1356
  %1857 = fadd fast float %1854, 1.000000e+00
  %1858 = fadd fast float %1855, 1.000000e+00
  %1859 = fadd fast float %1856, 1.000000e+00
  %1860 = fmul fast float %1857, %1156
  %1861 = fmul fast float %1858, %1157
  %1862 = fmul fast float %1859, %1158
  %1863 = fmul fast float %1857, %1159
  %1864 = fmul fast float %1858, %1160
  %1865 = fmul fast float %1859, %1161
  br label %1866

; <label>:1866                                    ; preds = %1831, %1813
  %1867 = phi float [ %1860, %1831 ], [ %1156, %1813 ]
  %1868 = phi float [ %1861, %1831 ], [ %1157, %1813 ]
  %1869 = phi float [ %1862, %1831 ], [ %1158, %1813 ]
  %1870 = phi float [ %1863, %1831 ], [ %1159, %1813 ]
  %1871 = phi float [ %1864, %1831 ], [ %1160, %1813 ]
  %1872 = phi float [ %1865, %1831 ], [ %1161, %1813 ]
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = and i32 %1874, 3
  %1876 = icmp eq i32 %1875, 3
  br i1 %1876, label %1955, label %1877

; <label>:1877                                    ; preds = %1866
  %1878 = and i32 %1874, 16
  %1879 = icmp ne i32 %1878, 0
  %1880 = select i1 %1879, float %1356, float 0.000000e+00
  %1881 = icmp eq i32 %1875, 0
  br i1 %1881, label %1882, label %1910

; <label>:1882                                    ; preds = %1877
  %1883 = and i32 %1874, 64
  %1884 = icmp ne i32 %1883, 0
  %1885 = select i1 %1884, float %1356, float 0.000000e+00
  %1886 = fsub fast float %1576, %1867
  %1887 = fsub fast float %1577, %1868
  %1888 = fsub fast float %1578, %1869
  %1889 = fmul fast float %1880, %1886
  %1890 = fmul fast float %1880, %1887
  %1891 = fmul fast float %1880, %1888
  %1892 = fadd fast float %1889, %1867
  %1893 = fadd fast float %1890, %1868
  %1894 = fadd fast float %1891, %1869
  %1895 = fsub fast float %1562, %1168
  %1896 = fmul fast float %1880, %1895
  %1897 = fadd fast float %1896, %1168
  %1898 = fsub fast float %1704, %1870
  %1899 = fsub fast float %1705, %1871
  %1900 = fsub fast float %1706, %1872
  %1901 = fmul fast float %1885, %1898
  %1902 = fmul fast float %1885, %1899
  %1903 = fmul fast float %1885, %1900
  %1904 = fadd fast float %1901, %1870
  %1905 = fadd fast float %1902, %1871
  %1906 = fadd fast float %1903, %1872
  %1907 = fsub fast float %1830, %1173
  %1908 = fmul fast float %1880, %1907
  %1909 = fadd fast float %1908, %1173
  br label %1955

; <label>:1910                                    ; preds = %1877
  %1911 = icmp eq i32 %1875, 1
  br i1 %1911, label %1912, label %1925

; <label>:1912                                    ; preds = %1910
  %1913 = fadd fast float %1576, -1.000000e+00
  %1914 = fadd fast float %1577, -1.000000e+00
  %1915 = fadd fast float %1578, -1.000000e+00
  %1916 = fmul fast float %1880, %1913
  %1917 = fmul fast float %1880, %1914
  %1918 = fmul fast float %1880, %1915
  %1919 = fadd fast float %1916, 1.000000e+00
  %1920 = fadd fast float %1917, 1.000000e+00
  %1921 = fadd fast float %1918, 1.000000e+00
  %1922 = fmul fast float %1919, %1867
  %1923 = fmul fast float %1920, %1868
  %1924 = fmul fast float %1921, %1869
  br label %1955

; <label>:1925                                    ; preds = %1910
  %1926 = icmp eq i32 %1875, 2
  br i1 %1926, label %1927, label %1955

; <label>:1927                                    ; preds = %1925
  %1928 = call float @dx.op.unary.f32(i32 24, float %1576)  ; Sqrt(value)
  %1929 = call float @dx.op.unary.f32(i32 24, float %1577)  ; Sqrt(value)
  %1930 = call float @dx.op.unary.f32(i32 24, float %1578)  ; Sqrt(value)
  %1931 = fadd fast float %1928, -5.000000e-01
  %1932 = fadd fast float %1929, -5.000000e-01
  %1933 = fadd fast float %1930, -5.000000e-01
  %1934 = fmul fast float %1931, %1880
  %1935 = fmul fast float %1932, %1880
  %1936 = fmul fast float %1933, %1880
  %1937 = fadd fast float %1934, 5.000000e-01
  %1938 = fadd fast float %1935, 5.000000e-01
  %1939 = fadd fast float %1936, 5.000000e-01
  %1940 = fmul fast float %1937, 2.000000e+00
  %1941 = fsub fast float 1.000000e+00, %1940
  %1942 = fmul fast float %1941, %1867
  %1943 = fadd fast float %1942, %1940
  %1944 = fmul fast float %1943, %1867
  %1945 = fmul fast float %1938, 2.000000e+00
  %1946 = fsub fast float 1.000000e+00, %1945
  %1947 = fmul fast float %1946, %1868
  %1948 = fadd fast float %1947, %1945
  %1949 = fmul fast float %1948, %1868
  %1950 = fmul fast float %1939, 2.000000e+00
  %1951 = fsub fast float 1.000000e+00, %1950
  %1952 = fmul fast float %1951, %1869
  %1953 = fadd fast float %1952, %1950
  %1954 = fmul fast float %1953, %1869
  br label %1955

; <label>:1955                                    ; preds = %1927, %1925, %1912, %1882, %1866
  %1956 = phi float [ %1867, %1866 ], [ %1944, %1927 ], [ %1867, %1925 ], [ %1922, %1912 ], [ %1892, %1882 ]
  %1957 = phi float [ %1868, %1866 ], [ %1949, %1927 ], [ %1868, %1925 ], [ %1923, %1912 ], [ %1893, %1882 ]
  %1958 = phi float [ %1869, %1866 ], [ %1954, %1927 ], [ %1869, %1925 ], [ %1924, %1912 ], [ %1894, %1882 ]
  %1959 = phi float [ %1870, %1866 ], [ %1870, %1927 ], [ %1870, %1925 ], [ %1870, %1912 ], [ %1904, %1882 ]
  %1960 = phi float [ %1871, %1866 ], [ %1871, %1927 ], [ %1871, %1925 ], [ %1871, %1912 ], [ %1905, %1882 ]
  %1961 = phi float [ %1872, %1866 ], [ %1872, %1927 ], [ %1872, %1925 ], [ %1872, %1912 ], [ %1906, %1882 ]
  %1962 = phi float [ %1168, %1866 ], [ %1168, %1927 ], [ %1168, %1925 ], [ %1168, %1912 ], [ %1897, %1882 ]
  %1963 = phi float [ %1173, %1866 ], [ %1173, %1927 ], [ %1173, %1925 ], [ %1173, %1912 ], [ %1909, %1882 ]
  %1964 = and i32 %1874, 12
  %1965 = icmp eq i32 %1964, 12
  br i1 %1965, label %2096, label %1966

; <label>:1966                                    ; preds = %1955
  %1967 = and i32 %1874, 2097184
  %1968 = icmp eq i32 %1967, 2097184
  %1969 = select i1 %1968, float %1356, float 0.000000e+00
  %1970 = and i32 %1874, 4194336
  %1971 = icmp eq i32 %1970, 4194336
  %1972 = select i1 %1971, float %1356, float 0.000000e+00
  %1973 = and i32 %1874, 8388640
  %1974 = icmp eq i32 %1973, 8388640
  %1975 = select i1 %1974, float %1356, float 0.000000e+00
  %1976 = and i32 %1874, 1024
  %1977 = icmp ne i32 %1976, 0
  %1978 = select i1 %1977, float %1356, float 0.000000e+00
  %1979 = and i32 %1874, 2048
  %1980 = icmp ne i32 %1979, 0
  %1981 = select i1 %1980, float %1356, float 0.000000e+00
  %1982 = and i32 %1874, 8192
  %1983 = icmp ne i32 %1982, 0
  %1984 = select i1 %1983, float %1356, float 0.000000e+00
  %1985 = icmp eq i32 %1964, 0
  br i1 %1985, label %1986, label %2020

; <label>:1986                                    ; preds = %1966
  %1987 = fsub fast float %1657, %1154
  %1988 = fsub fast float %1658, %1155
  %1989 = fmul fast float %1969, %1987
  %1990 = fmul fast float %1969, %1988
  %1991 = fadd fast float %1989, %1154
  %1992 = fadd fast float %1990, %1155
  %1993 = fsub fast float %1659, %1171
  %1994 = fmul fast float %1972, %1993
  %1995 = fadd fast float %1994, %1171
  %1996 = fsub fast float %1656, %1170
  %1997 = fmul fast float %1975, %1996
  %1998 = fadd fast float %1997, %1170
  %1999 = fsub fast float %1762, %1165
  %2000 = fsub fast float %1763, %1166
  %2001 = fsub fast float %1764, %1167
  %2002 = fmul fast float %1978, %1999
  %2003 = fmul fast float %1978, %2000
  %2004 = fmul fast float %1978, %2001
  %2005 = fadd fast float %2002, %1165
  %2006 = fadd fast float %2003, %1166
  %2007 = fadd fast float %2004, %1167
  %2008 = fsub fast float %1817, %1172
  %2009 = fmul fast float %1981, %2008
  %2010 = fadd fast float %2009, %1172
  %2011 = fsub fast float %1814, %1162
  %2012 = fsub fast float %1815, %1163
  %2013 = fsub fast float %1816, %1164
  %2014 = fmul fast float %1984, %2011
  %2015 = fmul fast float %1984, %2012
  %2016 = fmul fast float %1984, %2013
  %2017 = fadd fast float %2014, %1162
  %2018 = fadd fast float %2015, %1163
  %2019 = fadd fast float %2016, %1164
  br label %2096

; <label>:2020                                    ; preds = %1966
  %2021 = icmp eq i32 %1964, 4
  br i1 %2021, label %2022, label %2068

; <label>:2022                                    ; preds = %2020
  %2023 = fmul fast float %1969, %1657
  %2024 = fmul fast float %1969, %1658
  %2025 = fadd fast float %2023, %1154
  %2026 = fadd fast float %2024, %1155
  %2027 = call float @dx.op.binary.f32(i32 36, float %1171, float %1659)  ; FMin(a,b)
  %2028 = fsub fast float %2027, %1171
  %2029 = fmul fast float %2028, %1972
  %2030 = fadd fast float %2029, %1171
  %2031 = fadd fast float %1656, %1170
  %2032 = fmul fast float %2031, 0x3FF337FAE0000000
  %2033 = fmul fast float %1170, %1170
  %2034 = fmul fast float %1656, %1656
  %2035 = fadd fast float %2034, %2033
  %2036 = fmul fast float %2035, 0x3FE5152B00000000
  %2037 = fmul fast float %1170, 0xBFCC1F85E0000000
  %2038 = fmul fast float %2037, %1656
  %2039 = fadd fast float %2038, 0xBFE1363700000000
  %2040 = fadd fast float %2039, %2032
  %2041 = fsub fast float %2040, %2036
  %2042 = fmul fast float %2031, 0x3FBA6F0D00000000
  %2043 = fmul fast float %2035, 0x3FD0432880000000
  %2044 = fmul fast float %1170, 0xBFEF110800000000
  %2045 = fmul fast float %2044, %1656
  %2046 = fadd fast float %2045, 1.000000e+00
  %2047 = fsub fast float %2046, %2042
  %2048 = fadd fast float %2047, %2043
  %2049 = fdiv fast float %2041, %2048
  %2050 = call float @dx.op.unary.f32(i32 7, float %2049)  ; Saturate(value)
  %2051 = fsub fast float %2050, %1170
  %2052 = fmul fast float %2051, %1975
  %2053 = fadd fast float %2052, %1170
  %2054 = fmul fast float %1978, %1762
  %2055 = fmul fast float %1978, %1763
  %2056 = fmul fast float %1978, %1764
  %2057 = fadd fast float %2054, %1165
  %2058 = fadd fast float %2055, %1166
  %2059 = fadd fast float %2056, %1167
  %2060 = fmul fast float %1981, %1817
  %2061 = fadd fast float %2060, %1172
  %2062 = fmul fast float %1984, %1814
  %2063 = fmul fast float %1984, %1815
  %2064 = fmul fast float %1984, %1816
  %2065 = fadd fast float %2062, %1162
  %2066 = fadd fast float %2063, %1163
  %2067 = fadd fast float %2064, %1164
  br label %2096

; <label>:2068                                    ; preds = %2020
  %2069 = icmp eq i32 %1964, 8
  br i1 %2069, label %2070, label %2096

; <label>:2070                                    ; preds = %2068
  %2071 = fmul fast float %1969, %1657
  %2072 = fmul fast float %1969, %1658
  %2073 = fadd fast float %2071, %1154
  %2074 = fadd fast float %2072, %1155
  %2075 = call float @dx.op.binary.f32(i32 36, float %1171, float %1659)  ; FMin(a,b)
  %2076 = fsub fast float %2075, %1171
  %2077 = fmul fast float %2076, %1972
  %2078 = fadd fast float %2077, %1171
  %2079 = fsub fast float %1656, %1170
  %2080 = fmul fast float %1975, %2079
  %2081 = fadd fast float %2080, %1170
  %2082 = fmul fast float %1978, %1762
  %2083 = fmul fast float %1978, %1763
  %2084 = fmul fast float %1978, %1764
  %2085 = fadd fast float %2082, %1165
  %2086 = fadd fast float %2083, %1166
  %2087 = fadd fast float %2084, %1167
  %2088 = fmul fast float %1981, %1817
  %2089 = fadd fast float %2088, %1172
  %2090 = fmul fast float %1984, %1814
  %2091 = fmul fast float %1984, %1815
  %2092 = fmul fast float %1984, %1816
  %2093 = fadd fast float %2090, %1162
  %2094 = fadd fast float %2091, %1163
  %2095 = fadd fast float %2092, %1164
  br label %2096

; <label>:2096                                    ; preds = %2070, %2068, %2022, %1986, %1955, %1355, %1174, %1153
  %2097 = phi float [ %1154, %1955 ], [ %1154, %1355 ], [ %1154, %1153 ], [ %2073, %2070 ], [ %1154, %2068 ], [ %2025, %2022 ], [ %1991, %1986 ], [ %1154, %1174 ]
  %2098 = phi float [ %1155, %1955 ], [ %1155, %1355 ], [ %1155, %1153 ], [ %2074, %2070 ], [ %1155, %2068 ], [ %2026, %2022 ], [ %1992, %1986 ], [ %1155, %1174 ]
  %2099 = phi float [ %1956, %1955 ], [ %1156, %1355 ], [ %1156, %1153 ], [ %1956, %2070 ], [ %1956, %2068 ], [ %1956, %2022 ], [ %1956, %1986 ], [ %1156, %1174 ]
  %2100 = phi float [ %1957, %1955 ], [ %1157, %1355 ], [ %1157, %1153 ], [ %1957, %2070 ], [ %1957, %2068 ], [ %1957, %2022 ], [ %1957, %1986 ], [ %1157, %1174 ]
  %2101 = phi float [ %1958, %1955 ], [ %1158, %1355 ], [ %1158, %1153 ], [ %1958, %2070 ], [ %1958, %2068 ], [ %1958, %2022 ], [ %1958, %1986 ], [ %1158, %1174 ]
  %2102 = phi float [ %1959, %1955 ], [ %1159, %1355 ], [ %1159, %1153 ], [ %1959, %2070 ], [ %1959, %2068 ], [ %1959, %2022 ], [ %1959, %1986 ], [ %1159, %1174 ]
  %2103 = phi float [ %1960, %1955 ], [ %1160, %1355 ], [ %1160, %1153 ], [ %1960, %2070 ], [ %1960, %2068 ], [ %1960, %2022 ], [ %1960, %1986 ], [ %1160, %1174 ]
  %2104 = phi float [ %1961, %1955 ], [ %1161, %1355 ], [ %1161, %1153 ], [ %1961, %2070 ], [ %1961, %2068 ], [ %1961, %2022 ], [ %1961, %1986 ], [ %1161, %1174 ]
  %2105 = phi float [ %1162, %1955 ], [ %1162, %1355 ], [ %1162, %1153 ], [ %2093, %2070 ], [ %1162, %2068 ], [ %2065, %2022 ], [ %2017, %1986 ], [ %1162, %1174 ]
  %2106 = phi float [ %1163, %1955 ], [ %1163, %1355 ], [ %1163, %1153 ], [ %2094, %2070 ], [ %1163, %2068 ], [ %2066, %2022 ], [ %2018, %1986 ], [ %1163, %1174 ]
  %2107 = phi float [ %1164, %1955 ], [ %1164, %1355 ], [ %1164, %1153 ], [ %2095, %2070 ], [ %1164, %2068 ], [ %2067, %2022 ], [ %2019, %1986 ], [ %1164, %1174 ]
  %2108 = phi float [ %1165, %1955 ], [ %1165, %1355 ], [ %1165, %1153 ], [ %2085, %2070 ], [ %1165, %2068 ], [ %2057, %2022 ], [ %2005, %1986 ], [ %1165, %1174 ]
  %2109 = phi float [ %1166, %1955 ], [ %1166, %1355 ], [ %1166, %1153 ], [ %2086, %2070 ], [ %1166, %2068 ], [ %2058, %2022 ], [ %2006, %1986 ], [ %1166, %1174 ]
  %2110 = phi float [ %1167, %1955 ], [ %1167, %1355 ], [ %1167, %1153 ], [ %2087, %2070 ], [ %1167, %2068 ], [ %2059, %2022 ], [ %2007, %1986 ], [ %1167, %1174 ]
  %2111 = phi float [ %1962, %1955 ], [ %1168, %1355 ], [ %1168, %1153 ], [ %1962, %2070 ], [ %1962, %2068 ], [ %1962, %2022 ], [ %1962, %1986 ], [ %1168, %1174 ]
  %2112 = phi float [ %1170, %1955 ], [ %1170, %1355 ], [ %1170, %1153 ], [ %2081, %2070 ], [ %1170, %2068 ], [ %2053, %2022 ], [ %1998, %1986 ], [ %1170, %1174 ]
  %2113 = phi float [ %1171, %1955 ], [ %1171, %1355 ], [ %1171, %1153 ], [ %2078, %2070 ], [ %1171, %2068 ], [ %2030, %2022 ], [ %1995, %1986 ], [ %1171, %1174 ]
  %2114 = phi float [ %1172, %1955 ], [ %1172, %1355 ], [ %1172, %1153 ], [ %2089, %2070 ], [ %1172, %2068 ], [ %2061, %2022 ], [ %2010, %1986 ], [ %1172, %1174 ]
  %2115 = phi float [ %1963, %1955 ], [ %1173, %1355 ], [ %1173, %1153 ], [ %1963, %2070 ], [ %1963, %2068 ], [ %1963, %2022 ], [ %1963, %1986 ], [ %1173, %1174 ]
  br i1 %443, label %3038, label %2116

; <label>:2116                                    ; preds = %2096
  %2117 = icmp ult i32 %499, 3
  %2118 = add i32 %45, 56
  %2119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2120 = extractvalue %dx.types.ResRet.i32 %2119, 0
  %2121 = add i32 %45, 60
  %2122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2121, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.i32 %2122, 0
  %2124 = or i32 %2123, %2120
  %2125 = icmp eq i32 %2124, 0
  br i1 %2125, label %3038, label %2126

; <label>:2126                                    ; preds = %2116
  %2127 = and i32 %2120, 262144
  %2128 = icmp ne i32 %2127, 0
  %2129 = select i1 %2128, float %51, float 1.000000e+00
  %2130 = select i1 %2128, float %52, float 0.000000e+00
  %2131 = select i1 %2128, float %53, float 0.000000e+00
  %2132 = select i1 %2128, float %54, float 1.000000e+00
  %2133 = select i1 %2128, float %55, float %83
  %2134 = select i1 %2128, float %56, float %84
  %2135 = add i32 %45, 316
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = lshr i32 %2137, 16
  %2139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2138)  ; LegacyF16ToF32(value)
  %2140 = fmul fast float %2139, 0x3F50624DE0000000
  %2141 = add i32 %45, 120
  %2142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2141, i32 undef)  ; BufferLoad(srv,index,wot)
  %2143 = extractvalue %dx.types.ResRet.i32 %2142, 0
  %2144 = lshr i32 %2143, 16
  %2145 = and i32 %2144, 255
  %2146 = lshr i32 %2143, 24
  %2147 = add i32 %45, 324
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = and i32 %2149, 65535
  %2151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2150)  ; LegacyF16ToF32(value)
  %2152 = lshr i32 %2149, 16
  %2153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2152)  ; LegacyF16ToF32(value)
  %2154 = add i32 %45, 64
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = lshr i32 %2156, 22
  %2158 = shl nuw nsw i32 %2157, 5
  %2159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2158)  ; LegacyF16ToF32(value)
  %2160 = shl i32 %2156, 4
  %2161 = and i32 %2160, 32752
  %2162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2161)  ; LegacyF16ToF32(value)
  %2163 = lshr i32 %2156, 7
  %2164 = and i32 %2163, 32752
  %2165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2164)  ; LegacyF16ToF32(value)
  %2166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2167 = extractvalue %dx.types.CBufRet.f32 %2166, 3
  %2168 = fmul fast float %2167, 1.000000e+03
  %2169 = fmul fast float %393, %2168
  %2170 = call float @dx.op.unary.f32(i32 22, float %2169)  ; Frc(value)
  %2171 = fadd fast float %2170, %383
  %2172 = fmul fast float %394, %2168
  %2173 = call float @dx.op.unary.f32(i32 22, float %2172)  ; Frc(value)
  %2174 = fadd fast float %2173, %385
  %2175 = fmul fast float %2140, %2168
  %2176 = call float @dx.op.unary.f32(i32 22, float %2175)  ; Frc(value)
  %2177 = fmul fast float %2176, 0x401921FB60000000
  %2178 = fadd fast float %2177, %2159
  %2179 = call float @dx.op.unary.f32(i32 13, float %2178)  ; Sin(value)
  %2180 = call float @dx.op.unary.f32(i32 12, float %2178)  ; Cos(value)
  %2181 = fsub fast float -0.000000e+00, %2179
  %2182 = fadd fast float %2133, -5.000000e-01
  %2183 = fadd fast float %2134, -5.000000e-01
  %2184 = fmul fast float %2151, %2182
  %2185 = fmul fast float %2153, %2183
  %2186 = fadd fast float %2184, 5.000000e-01
  %2187 = fadd fast float %2185, 5.000000e-01
  %2188 = fmul fast float %2162, %2186
  %2189 = fmul fast float %2165, %2187
  %2190 = fmul fast float %2180, %2188
  %2191 = call float @dx.op.tertiary.f32(i32 46, float %2181, float %2189, float %2190)  ; FMad(a,b,c)
  %2192 = fmul fast float %2179, %2188
  %2193 = call float @dx.op.tertiary.f32(i32 46, float %2180, float %2189, float %2192)  ; FMad(a,b,c)
  %2194 = fadd fast float %2171, %2191
  %2195 = fadd fast float %2174, %2193
  %2196 = icmp ugt i32 %2145, 1
  %2197 = icmp ugt i32 %2143, 33554431
  %2198 = or i1 %2197, %2196
  br i1 %2198, label %2199, label %2224

; <label>:2199                                    ; preds = %2126
  %2200 = add i32 %45, 260
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = lshr i32 %2202, 16
  %2204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2203)  ; LegacyF16ToF32(value)
  %2205 = fmul fast float %2167, %2204
  %2206 = call float @dx.op.unary.f32(i32 22, float %2205)  ; Frc(value)
  %2207 = mul nuw nsw i32 %2145, %2146
  %2208 = uitofp i32 %2207 to float
  %2209 = fmul fast float %2206, %2208
  %2210 = call float @dx.op.unary.f32(i32 27, float %2209)  ; Round_ni(value)
  %2211 = fptoui float %2210 to i32
  %2212 = urem i32 %2211, %2145
  %2213 = udiv i32 %2211, %2146
  %2214 = call float @dx.op.unary.f32(i32 22, float %2194)  ; Frc(value)
  %2215 = call float @dx.op.unary.f32(i32 22, float %2195)  ; Frc(value)
  %2216 = uitofp i32 %2212 to float
  %2217 = uitofp i32 %2213 to float
  %2218 = fadd fast float %2214, %2216
  %2219 = fadd fast float %2215, %2217
  %2220 = uitofp i32 %2145 to float
  %2221 = uitofp i32 %2146 to float
  %2222 = fdiv fast float %2218, %2220
  %2223 = fdiv fast float %2219, %2221
  br label %2224

; <label>:2224                                    ; preds = %2199, %2126
  %2225 = phi float [ %2222, %2199 ], [ %2194, %2126 ]
  %2226 = phi float [ %2223, %2199 ], [ %2195, %2126 ]
  %2227 = and i32 %2120, 256
  %2228 = icmp eq i32 %2227, 0
  br i1 %2228, label %2275, label %2229

; <label>:2229                                    ; preds = %2224
  %2230 = add i32 %45, 448
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = add i32 %2232, 0
  %2234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2234, %dx.types.Handle %98, float %2225, float %2226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2236 = extractvalue %dx.types.ResRet.f32 %2235, 0
  %2237 = add i32 %45, 132
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = shl i32 %2239, 4
  %2241 = and i32 %2240, 32752
  %2242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2241)  ; LegacyF16ToF32(value)
  %2243 = lshr i32 %2239, 7
  %2244 = and i32 %2243, 32752
  %2245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2244)  ; LegacyF16ToF32(value)
  %2246 = fsub fast float 1.000000e+00, %495
  %2247 = call float @dx.op.binary.f32(i32 35, float %2246, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2248 = bitcast float %495 to i32
  %2249 = sitofp i32 %2248 to float
  %2250 = fadd fast float %2249, 0xC1CFBF8940000000
  %2251 = fmul fast float %2245, %2250
  %2252 = fadd fast float %2251, 0x41CFBF8940000000
  %2253 = fptosi float %2252 to i32
  %2254 = bitcast i32 %2253 to float
  %2255 = bitcast float %2247 to i32
  %2256 = sitofp i32 %2255 to float
  %2257 = fadd fast float %2256, 0xC1CFBF8940000000
  %2258 = fmul fast float %2257, %2245
  %2259 = fadd fast float %2258, 0x41CFBF8940000000
  %2260 = fptosi float %2259 to i32
  %2261 = bitcast i32 %2260 to float
  %2262 = fmul fast float %2254, %2242
  %2263 = fmul fast float %2261, %2242
  %2264 = fsub fast float %2247, %2262
  %2265 = fadd fast float %2263, %2247
  %2266 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  %2267 = call float @dx.op.unary.f32(i32 7, float %2265)  ; Saturate(value)
  %2268 = fsub fast float %2236, %2266
  %2269 = fsub fast float %2267, %2266
  %2270 = bitcast float %2269 to i32
  %2271 = sub nsw i32 2129859010, %2270
  %2272 = bitcast i32 %2271 to float
  %2273 = fmul fast float %2272, %2268
  %2274 = call float @dx.op.unary.f32(i32 7, float %2273)  ; Saturate(value)
  br label %2275

; <label>:2275                                    ; preds = %2229, %2224
  %2276 = phi float [ %2274, %2229 ], [ %495, %2224 ]
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = and i32 %2278, 128
  %2280 = icmp eq i32 %2279, 0
  br i1 %2280, label %2297, label %2281

; <label>:2281                                    ; preds = %2275
  %2282 = add i32 %45, 432
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = add i32 %2284, 0
  %2286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2287 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2286, %dx.types.Handle %98, float %2225, float %2226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2288 = extractvalue %dx.types.ResRet.f32 %2287, 0
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = and i32 %2290, 524288
  %2292 = icmp ne i32 %2291, 0
  %2293 = fcmp fast ogt float %2288, 0x3FE0101020000000
  %2294 = select i1 %2293, float 1.000000e+00, float 0.000000e+00
  %2295 = select i1 %2292, float %2294, float %2288
  %2296 = fmul fast float %2295, %2276
  br label %2297

; <label>:2297                                    ; preds = %2281, %2275
  %2298 = phi float [ %2296, %2281 ], [ %2276, %2275 ]
  %2299 = fcmp fast ult float %2298, 0x3F70101020000000
  br i1 %2299, label %3038, label %2300

; <label>:2300                                    ; preds = %2297
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = and i32 %2302, 16
  %2304 = icmp eq i32 %2303, 0
  br i1 %2304, label %2503, label %2305

; <label>:2305                                    ; preds = %2300
  %2306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2141, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.i32 %2306, 0
  %2308 = add i32 %45, 384
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = add i32 %2310, 0
  %2312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2311, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2313 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2312, %dx.types.Handle %97, float %2225, float %2226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2314 = extractvalue %dx.types.ResRet.f32 %2313, 0
  %2315 = extractvalue %dx.types.ResRet.f32 %2313, 1
  %2316 = extractvalue %dx.types.ResRet.f32 %2313, 2
  %2317 = extractvalue %dx.types.ResRet.f32 %2313, 3
  %2318 = and i32 %2307, 255
  %2319 = uitofp i32 %2318 to float
  %2320 = lshr i32 %2307, 8
  %2321 = and i32 %2320, 255
  %2322 = uitofp i32 %2321 to float
  %2323 = fmul fast float %2317, %2319
  %2324 = fadd fast float %2323, %2322
  %2325 = fmul fast float %2324, 0x3F70101000000000
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = and i32 %2327, 512
  %2329 = icmp eq i32 %2328, 0
  br i1 %2329, label %2338, label %2330

; <label>:2330                                    ; preds = %2305
  %2331 = add i32 %45, 468
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = add i32 %2333, 0
  %2335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2334, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2336 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2335, %dx.types.Handle %98, float %2225, float %2226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2337 = extractvalue %dx.types.ResRet.f32 %2336, 0
  br label %2338

; <label>:2338                                    ; preds = %2330, %2305
  %2339 = phi float [ %2337, %2330 ], [ 1.000000e+00, %2305 ]
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 33554432
  %2343 = icmp eq i32 %2342, 0
  br i1 %2343, label %2450, label %2344

; <label>:2344                                    ; preds = %2338
  %2345 = add i32 %45, 256
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = and i32 %2347, 65535
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = lshr i32 %2347, 16
  %2351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2350)  ; LegacyF16ToF32(value)
  %2352 = add i32 %45, 260
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = and i32 %2354, 65535
  %2356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2355)  ; LegacyF16ToF32(value)
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = lshr i32 %2358, 24
  %2360 = uitofp i32 %2359 to float
  %2361 = fmul fast float %2360, 0x3F70101020000000
  %2362 = and i32 %2358, 255
  %2363 = uitofp i32 %2362 to float
  %2364 = fmul fast float %2363, 0x3F70101020000000
  %2365 = lshr i32 %2358, 8
  %2366 = and i32 %2365, 255
  %2367 = uitofp i32 %2366 to float
  %2368 = fmul fast float %2367, 0x3F70101020000000
  %2369 = lshr i32 %2358, 16
  %2370 = and i32 %2369, 255
  %2371 = uitofp i32 %2370 to float
  %2372 = fmul fast float %2371, 0x3F70101020000000
  %2373 = add i32 %45, 252
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = lshr i32 %2375, 24
  %2377 = uitofp i32 %2376 to float
  %2378 = fmul fast float %2377, 0x3F70101020000000
  %2379 = and i32 %2375, 255
  %2380 = uitofp i32 %2379 to float
  %2381 = fmul fast float %2380, 0x3F70101020000000
  %2382 = lshr i32 %2375, 8
  %2383 = and i32 %2382, 255
  %2384 = uitofp i32 %2383 to float
  %2385 = fmul fast float %2384, 0x3F70101020000000
  %2386 = lshr i32 %2375, 16
  %2387 = and i32 %2386, 255
  %2388 = uitofp i32 %2387 to float
  %2389 = fmul fast float %2388, 0x3F70101020000000
  %2390 = bitcast float %2314 to i32
  %2391 = ashr i32 %2390, 1
  %2392 = sub nsw i32 1597463174, %2391
  %2393 = bitcast i32 %2392 to float
  %2394 = fmul fast float %2314, 5.000000e-01
  %2395 = fmul fast float %2393, %2393
  %2396 = fmul fast float %2395, %2394
  %2397 = fsub fast float 1.500000e+00, %2396
  %2398 = fmul fast float %2393, %2314
  %2399 = fmul fast float %2398, %2397
  %2400 = bitcast float %2315 to i32
  %2401 = ashr i32 %2400, 1
  %2402 = sub nsw i32 1597463174, %2401
  %2403 = bitcast i32 %2402 to float
  %2404 = fmul fast float %2315, 5.000000e-01
  %2405 = fmul fast float %2403, %2403
  %2406 = fmul fast float %2405, %2404
  %2407 = fsub fast float 1.500000e+00, %2406
  %2408 = fmul fast float %2403, %2315
  %2409 = fmul fast float %2408, %2407
  %2410 = bitcast float %2316 to i32
  %2411 = ashr i32 %2410, 1
  %2412 = sub nsw i32 1597463174, %2411
  %2413 = bitcast i32 %2412 to float
  %2414 = fmul fast float %2316, 5.000000e-01
  %2415 = fmul fast float %2413, %2413
  %2416 = fmul fast float %2415, %2414
  %2417 = fsub fast float 1.500000e+00, %2416
  %2418 = fmul fast float %2413, %2316
  %2419 = fmul fast float %2418, %2417
  %2420 = fsub fast float %2399, %2381
  %2421 = fsub fast float %2409, %2385
  %2422 = fsub fast float %2419, %2389
  %2423 = fmul fast float %2420, %2349
  %2424 = fmul fast float %2421, %2351
  %2425 = fmul fast float %2422, %2356
  %2426 = fadd fast float %2423, %2364
  %2427 = fadd fast float %2424, %2368
  %2428 = fadd fast float %2425, %2372
  %2429 = call float @dx.op.unary.f32(i32 7, float %2426)  ; Saturate(value)
  %2430 = call float @dx.op.unary.f32(i32 7, float %2427)  ; Saturate(value)
  %2431 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2432 = fmul fast float %2429, %2429
  %2433 = fmul fast float %2430, %2430
  %2434 = fmul fast float %2431, %2431
  %2435 = fsub fast float %2432, %2314
  %2436 = fsub fast float %2433, %2315
  %2437 = fsub fast float %2434, %2316
  %2438 = fmul fast float %2435, %2339
  %2439 = fmul fast float %2436, %2339
  %2440 = fmul fast float %2437, %2339
  %2441 = fadd fast float %2438, %2314
  %2442 = fadd fast float %2439, %2315
  %2443 = fadd fast float %2440, %2316
  %2444 = fadd fast float %2361, %2325
  %2445 = fsub fast float %2444, %2378
  %2446 = call float @dx.op.unary.f32(i32 7, float %2445)  ; Saturate(value)
  %2447 = fsub fast float %2446, %2325
  %2448 = fmul fast float %2447, %2339
  %2449 = fadd fast float %2448, %2325
  br label %2503

; <label>:2450                                    ; preds = %2338
  %2451 = and i32 %2341, 134217728
  %2452 = icmp eq i32 %2451, 0
  br i1 %2452, label %2487, label %2453

; <label>:2453                                    ; preds = %2450
  %2454 = call float @dx.op.unary.f32(i32 24, float %370)  ; Sqrt(value)
  %2455 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %2456 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %2457 = fadd fast float %2454, -5.000000e-01
  %2458 = fadd fast float %2455, -5.000000e-01
  %2459 = fadd fast float %2456, -5.000000e-01
  %2460 = fmul fast float %2457, %2339
  %2461 = fmul fast float %2458, %2339
  %2462 = fmul fast float %2459, %2339
  %2463 = fadd fast float %2460, 5.000000e-01
  %2464 = fadd fast float %2461, 5.000000e-01
  %2465 = fadd fast float %2462, 5.000000e-01
  %2466 = call float @dx.op.unary.f32(i32 24, float %2314)  ; Sqrt(value)
  %2467 = call float @dx.op.unary.f32(i32 24, float %2315)  ; Sqrt(value)
  %2468 = call float @dx.op.unary.f32(i32 24, float %2316)  ; Sqrt(value)
  %2469 = fmul fast float %2463, 2.000000e+00
  %2470 = fsub fast float 1.000000e+00, %2469
  %2471 = fmul fast float %2470, %2466
  %2472 = fadd fast float %2471, %2469
  %2473 = fmul fast float %2472, %2466
  %2474 = fmul fast float %2464, 2.000000e+00
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = fmul fast float %2475, %2467
  %2477 = fadd fast float %2476, %2474
  %2478 = fmul fast float %2477, %2467
  %2479 = fmul fast float %2465, 2.000000e+00
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = fmul fast float %2480, %2468
  %2482 = fadd fast float %2481, %2479
  %2483 = fmul fast float %2482, %2468
  %2484 = fmul fast float %2473, %2473
  %2485 = fmul fast float %2478, %2478
  %2486 = fmul fast float %2483, %2483
  br label %2503

; <label>:2487                                    ; preds = %2450
  %2488 = fmul fast float %370, %370
  %2489 = fmul fast float %374, %374
  %2490 = fmul fast float %378, %378
  %2491 = fadd fast float %2488, -1.000000e+00
  %2492 = fadd fast float %2489, -1.000000e+00
  %2493 = fadd fast float %2490, -1.000000e+00
  %2494 = fmul fast float %2339, %2491
  %2495 = fmul fast float %2339, %2492
  %2496 = fmul fast float %2339, %2493
  %2497 = fadd fast float %2494, 1.000000e+00
  %2498 = fadd fast float %2495, 1.000000e+00
  %2499 = fadd fast float %2496, 1.000000e+00
  %2500 = fmul fast float %2497, %2314
  %2501 = fmul fast float %2498, %2315
  %2502 = fmul fast float %2499, %2316
  br label %2503

; <label>:2503                                    ; preds = %2487, %2453, %2344, %2300
  %2504 = phi float [ %2449, %2344 ], [ %2325, %2453 ], [ %2325, %2487 ], [ 0x3FA23C0BE0000000, %2300 ]
  %2505 = phi float [ %2441, %2344 ], [ %2484, %2453 ], [ %2500, %2487 ], [ 1.000000e+00, %2300 ]
  %2506 = phi float [ %2442, %2344 ], [ %2485, %2453 ], [ %2501, %2487 ], [ 1.000000e+00, %2300 ]
  %2507 = phi float [ %2443, %2344 ], [ %2486, %2453 ], [ %2502, %2487 ], [ 1.000000e+00, %2300 ]
  %2508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = extractvalue %dx.types.CBufRet.i32 %2508, 1
  %2510 = and i32 %2509, 1
  %2511 = icmp ne i32 %2510, 0
  %2512 = add i32 %45, 356
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 32
  %2516 = icmp ne i32 %2515, 0
  %2517 = and i1 %2511, %2516
  %2518 = select i1 %2517, float 1.000000e+00, float %2505
  %2519 = select i1 %2517, float 0x3FD3333340000000, float %2506
  %2520 = select i1 %2517, float 0x3FD3333340000000, float %2507
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = and i32 %2522, 32
  %2524 = icmp eq i32 %2523, 0
  br i1 %2524, label %2597, label %2525

; <label>:2525                                    ; preds = %2503
  %2526 = add i32 %45, 124
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2526, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = add i32 %45, 400
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = add i32 %2531, 0
  %2533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2533, %dx.types.Handle %97, float %2225, float %2226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2535 = extractvalue %dx.types.ResRet.f32 %2534, 0
  %2536 = extractvalue %dx.types.ResRet.f32 %2534, 1
  %2537 = extractvalue %dx.types.ResRet.f32 %2534, 2
  %2538 = extractvalue %dx.types.ResRet.f32 %2534, 3
  %2539 = and i32 %2528, 255
  %2540 = uitofp i32 %2539 to float
  %2541 = lshr i32 %2528, 8
  %2542 = and i32 %2541, 255
  %2543 = uitofp i32 %2542 to float
  %2544 = lshr i32 %2528, 16
  %2545 = and i32 %2544, 255
  %2546 = uitofp i32 %2545 to float
  %2547 = fmul fast float %2546, 0x3F70101000000000
  %2548 = fmul fast float %2535, %2540
  %2549 = fadd fast float %2548, %2543
  %2550 = fmul fast float %2549, 0x3F70101000000000
  %2551 = fadd fast float %2536, -5.000000e-01
  %2552 = fadd fast float %2538, -5.000000e-01
  %2553 = fmul fast float %2551, %2547
  %2554 = fmul fast float %2552, %2547
  %2555 = fadd fast float %2553, 5.000000e-01
  %2556 = fadd fast float %2554, 5.000000e-01
  %2557 = fmul fast float %2555, 2.000000e+00
  %2558 = fadd fast float %2557, -1.000000e+00
  %2559 = fmul fast float %2556, 2.000000e+00
  %2560 = fadd fast float %2559, -1.000000e+00
  %2561 = fadd fast float %2558, %2560
  %2562 = fmul fast float %2561, 5.000000e-01
  %2563 = fsub fast float %2558, %2560
  %2564 = fmul fast float %2563, 5.000000e-01
  %2565 = call float @dx.op.unary.f32(i32 6, float %2562)  ; FAbs(value)
  %2566 = fsub fast float 1.000000e+00, %2565
  %2567 = call float @dx.op.unary.f32(i32 6, float %2564)  ; FAbs(value)
  %2568 = fsub fast float %2566, %2567
  %2569 = call float @dx.op.dot3.f32(i32 55, float %2562, float %2564, float %2568, float %2562, float %2564, float %2568)  ; Dot3(ax,ay,az,bx,by,bz)
  %2570 = call float @dx.op.unary.f32(i32 25, float %2569)  ; Rsqrt(value)
  %2571 = fmul fast float %2562, %2570
  %2572 = fmul fast float %2564, %2570
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = and i32 %2574, 67108864
  %2576 = icmp eq i32 %2575, 0
  br i1 %2576, label %2593, label %2577

; <label>:2577                                    ; preds = %2525
  %2578 = add i32 %45, 312
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 65535
  %2582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2581)  ; LegacyF16ToF32(value)
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = and i32 %2584, 65535
  %2586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2585)  ; LegacyF16ToF32(value)
  %2587 = lshr i32 %2580, 16
  %2588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2587)  ; LegacyF16ToF32(value)
  %2589 = fsub fast float %2550, %2588
  %2590 = fmul fast float %2589, %2582
  %2591 = fadd fast float %2590, %2586
  %2592 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  br label %2593

; <label>:2593                                    ; preds = %2577, %2525
  %2594 = phi float [ %2592, %2577 ], [ %2550, %2525 ]
  %2595 = call float @dx.op.dot2.f32(i32 54, float %2571, float %2572, float %2129, float %2130)  ; Dot2(ax,ay,bx,by)
  %2596 = call float @dx.op.dot2.f32(i32 54, float %2571, float %2572, float %2131, float %2132)  ; Dot2(ax,ay,bx,by)
  br label %2597

; <label>:2597                                    ; preds = %2593, %2503
  %2598 = phi float [ %2594, %2593 ], [ 0x3FD6666660000000, %2503 ]
  %2599 = phi float [ %2595, %2593 ], [ 0.000000e+00, %2503 ]
  %2600 = phi float [ %2596, %2593 ], [ 0.000000e+00, %2503 ]
  %2601 = phi float [ %2537, %2593 ], [ 1.000000e+00, %2503 ]
  %2602 = add i32 %45, 192
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2602, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = lshr i32 %2604, 22
  %2606 = shl nuw nsw i32 %2605, 5
  %2607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2606)  ; LegacyF16ToF32(value)
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 64
  %2611 = icmp eq i32 %2610, 0
  br i1 %2611, label %2645, label %2612

; <label>:2612                                    ; preds = %2597
  %2613 = add i32 %45, 416
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = add i32 %2615, 0
  %2617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = and i32 %2619, 131072
  %2621 = icmp eq i32 %2620, 0
  %2622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2617, %dx.types.Handle %97, float %2225, float %2226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2623 = extractvalue %dx.types.ResRet.f32 %2622, 0
  %2624 = extractvalue %dx.types.ResRet.f32 %2622, 1
  %2625 = extractvalue %dx.types.ResRet.f32 %2622, 2
  %2626 = fmul fast float %2623, %358
  %2627 = fmul fast float %2624, %361
  %2628 = fmul fast float %2625, %364
  br i1 %2621, label %2635, label %2629

; <label>:2629                                    ; preds = %2612
  %2630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2631 = extractvalue %dx.types.CBufRet.f32 %2630, 0
  %2632 = fmul fast float %2631, %2626
  %2633 = fmul fast float %2631, %2627
  %2634 = fmul fast float %2631, %2628
  br label %2635

; <label>:2635                                    ; preds = %2629, %2612
  %2636 = phi float [ %2632, %2629 ], [ %2626, %2612 ]
  %2637 = phi float [ %2633, %2629 ], [ %2627, %2612 ]
  %2638 = phi float [ %2634, %2629 ], [ %2628, %2612 ]
  %2639 = fmul fast float %2636, %2607
  %2640 = select i1 %254, float %2639, float %2636
  %2641 = call float @dx.op.dot3.f32(i32 55, float %2640, float %2637, float %2638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2642 = select i1 %254, float 0.000000e+00, float %2636
  %2643 = select i1 %254, float %2641, float %2637
  %2644 = select i1 %254, float 0.000000e+00, float %2638
  br label %2645

; <label>:2645                                    ; preds = %2635, %2597
  %2646 = phi float [ %2642, %2635 ], [ 0.000000e+00, %2597 ]
  %2647 = phi float [ %2643, %2635 ], [ 0.000000e+00, %2597 ]
  %2648 = phi float [ %2644, %2635 ], [ 0.000000e+00, %2597 ]
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = and i32 %2650, 1024
  %2652 = icmp eq i32 %2651, 0
  br i1 %2652, label %2683, label %2653

; <label>:2653                                    ; preds = %2645
  %2654 = add i32 %45, 184
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = and i32 %2656, 255
  %2658 = uitofp i32 %2657 to float
  %2659 = fmul fast float %2658, 0x3F70101020000000
  %2660 = lshr i32 %2656, 8
  %2661 = and i32 %2660, 255
  %2662 = uitofp i32 %2661 to float
  %2663 = fmul fast float %2662, 0x3F70101020000000
  %2664 = lshr i32 %2656, 16
  %2665 = and i32 %2664, 255
  %2666 = uitofp i32 %2665 to float
  %2667 = fmul fast float %2666, 0x3F70101020000000
  %2668 = fmul fast float %2659, %2659
  %2669 = fmul fast float %2663, %2663
  %2670 = fmul fast float %2667, %2667
  %2671 = add i32 %45, 484
  %2672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2671, i32 undef)  ; BufferLoad(srv,index,wot)
  %2673 = extractvalue %dx.types.ResRet.i32 %2672, 0
  %2674 = add i32 %2673, 0
  %2675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2676 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2675, %dx.types.Handle %98, float %2225, float %2226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2677 = extractvalue %dx.types.ResRet.f32 %2676, 0
  %2678 = extractvalue %dx.types.ResRet.f32 %2676, 1
  %2679 = extractvalue %dx.types.ResRet.f32 %2676, 2
  %2680 = fmul fast float %2668, %2677
  %2681 = fmul fast float %2669, %2678
  %2682 = fmul fast float %2670, %2679
  br label %2683

; <label>:2683                                    ; preds = %2653, %2645
  %2684 = phi float [ %2680, %2653 ], [ 0.000000e+00, %2645 ]
  %2685 = phi float [ %2681, %2653 ], [ 0.000000e+00, %2645 ]
  %2686 = phi float [ %2682, %2653 ], [ 0.000000e+00, %2645 ]
  %2687 = fcmp fast ogt float %2684, 0.000000e+00
  %2688 = fcmp fast ogt float %2685, 0.000000e+00
  %2689 = fcmp fast ogt float %2686, 0.000000e+00
  %2690 = call float @dx.op.unary.f32(i32 23, float %2684)  ; Log(value)
  %2691 = call float @dx.op.unary.f32(i32 23, float %2685)  ; Log(value)
  %2692 = call float @dx.op.unary.f32(i32 23, float %2686)  ; Log(value)
  %2693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2602, i32 undef)  ; BufferLoad(srv,index,wot)
  %2694 = extractvalue %dx.types.ResRet.i32 %2693, 0
  %2695 = lshr i32 %2694, 7
  %2696 = and i32 %2695, 32752
  %2697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2696)  ; LegacyF16ToF32(value)
  %2698 = fmul fast float %2690, 0xBFE62E4300000000
  %2699 = fmul fast float %2698, %2697
  %2700 = fmul fast float %2691, 0xBFE62E4300000000
  %2701 = fmul fast float %2700, %2697
  %2702 = fmul fast float %2692, 0xBFE62E4300000000
  %2703 = fmul fast float %2702, %2697
  %2704 = select i1 %2687, float %2699, float 1.270000e+02
  %2705 = select i1 %2688, float %2701, float 1.270000e+02
  %2706 = select i1 %2689, float %2703, float 1.270000e+02
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = and i32 %2708, 10240
  %2710 = icmp eq i32 %2709, 0
  br i1 %2710, label %2755, label %2711

; <label>:2711                                    ; preds = %2683
  %2712 = add i32 %45, 500
  %2713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.i32 %2713, 0
  %2715 = add i32 %2714, 0
  %2716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2715, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2717 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2716, %dx.types.Handle %98, float %2225, float %2226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2718 = extractvalue %dx.types.ResRet.f32 %2717, 1
  %2719 = extractvalue %dx.types.ResRet.f32 %2717, 3
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = and i32 %2721, 1048576
  %2723 = icmp ne i32 %2722, 0
  %2724 = and i32 %2721, 8192
  %2725 = icmp eq i32 %2724, 0
  br i1 %2725, label %2741, label %2726

; <label>:2726                                    ; preds = %2711
  %2727 = extractvalue %dx.types.ResRet.f32 %2717, 2
  %2728 = select i1 %2723, float %2727, float %2718
  %2729 = extractvalue %dx.types.ResRet.f32 %2717, 0
  %2730 = select i1 %2723, float %2729, float %2718
  %2731 = add i32 %45, 128
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2731, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = lshr i32 %2733, 16
  %2735 = and i32 %2734, 255
  %2736 = uitofp i32 %2735 to float
  %2737 = fmul fast float %2736, 0x3F80101020000000
  %2738 = fmul fast float %2737, %2730
  %2739 = fmul fast float %2737, %2718
  %2740 = fmul fast float %2737, %2728
  br label %2741

; <label>:2741                                    ; preds = %2726, %2711
  %2742 = phi float [ %2738, %2726 ], [ 0.000000e+00, %2711 ]
  %2743 = phi float [ %2739, %2726 ], [ 0.000000e+00, %2711 ]
  %2744 = phi float [ %2740, %2726 ], [ 0.000000e+00, %2711 ]
  %2745 = and i32 %2721, 2048
  %2746 = icmp eq i32 %2745, 0
  br i1 %2746, label %2755, label %2747

; <label>:2747                                    ; preds = %2741
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2602, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = shl i32 %2749, 4
  %2751 = and i32 %2750, 32752
  %2752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2751)  ; LegacyF16ToF32(value)
  %2753 = fmul fast float %2752, %2719
  %2754 = call float @dx.op.binary.f32(i32 35, float %2753, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2755

; <label>:2755                                    ; preds = %2747, %2741, %2683
  %2756 = phi float [ %2742, %2747 ], [ %2742, %2741 ], [ 0.000000e+00, %2683 ]
  %2757 = phi float [ %2743, %2747 ], [ %2743, %2741 ], [ 0.000000e+00, %2683 ]
  %2758 = phi float [ %2744, %2747 ], [ %2744, %2741 ], [ 0.000000e+00, %2683 ]
  %2759 = phi float [ %2754, %2747 ], [ 0x3F70101020000000, %2741 ], [ 0x3F70101020000000, %2683 ]
  %2760 = add i32 %45, 128
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = and i32 %2762, 255
  %2764 = uitofp i32 %2763 to float
  %2765 = lshr i32 %2762, 8
  %2766 = and i32 %2765, 255
  %2767 = uitofp i32 %2766 to float
  %2768 = call float @dx.op.dot3.f32(i32 55, float %2518, float %2519, float %2520, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2769 = fmul fast float %2767, %2768
  %2770 = fadd fast float %2769, %2764
  %2771 = fmul fast float %2770, 0x3F70101020000000
  %2772 = call float @dx.op.unary.f32(i32 7, float %2771)  ; Saturate(value)
  br i1 %2117, label %2773, label %2808

; <label>:2773                                    ; preds = %2755
  %2774 = fmul fast float %2759, 2.000000e+00
  %2775 = fcmp fast olt float %2704, 1.270000e+02
  %2776 = fcmp fast olt float %2705, 1.270000e+02
  %2777 = fcmp fast olt float %2706, 1.270000e+02
  %2778 = fmul fast float %2704, 0xBFF7154760000000
  %2779 = fmul fast float %2778, %2774
  %2780 = fmul fast float %2705, 0xBFF7154760000000
  %2781 = fmul fast float %2780, %2774
  %2782 = fmul fast float %2706, 0xBFF7154760000000
  %2783 = fmul fast float %2782, %2774
  %2784 = call float @dx.op.unary.f32(i32 21, float %2779)  ; Exp(value)
  %2785 = call float @dx.op.unary.f32(i32 21, float %2781)  ; Exp(value)
  %2786 = call float @dx.op.unary.f32(i32 21, float %2783)  ; Exp(value)
  %2787 = call float @dx.op.unary.f32(i32 7, float %2784)  ; Saturate(value)
  %2788 = call float @dx.op.unary.f32(i32 7, float %2785)  ; Saturate(value)
  %2789 = call float @dx.op.unary.f32(i32 7, float %2786)  ; Saturate(value)
  %2790 = fadd fast float %2787, -1.000000e+00
  %2791 = select i1 %2775, float %2790, float -1.000000e+00
  %2792 = fadd fast float %2788, -1.000000e+00
  %2793 = select i1 %2776, float %2792, float -1.000000e+00
  %2794 = fadd fast float %2789, -1.000000e+00
  %2795 = select i1 %2777, float %2794, float -1.000000e+00
  %2796 = fmul fast float %2791, %2298
  %2797 = fmul fast float %2793, %2298
  %2798 = fmul fast float %2795, %2298
  %2799 = fadd fast float %2796, 1.000000e+00
  %2800 = fadd fast float %2797, 1.000000e+00
  %2801 = fadd fast float %2798, 1.000000e+00
  %2802 = fmul fast float %2799, %2099
  %2803 = fmul fast float %2800, %2100
  %2804 = fmul fast float %2801, %2101
  %2805 = fmul fast float %2799, %2102
  %2806 = fmul fast float %2800, %2103
  %2807 = fmul fast float %2801, %2104
  br label %2808

; <label>:2808                                    ; preds = %2773, %2755
  %2809 = phi float [ %2802, %2773 ], [ %2099, %2755 ]
  %2810 = phi float [ %2803, %2773 ], [ %2100, %2755 ]
  %2811 = phi float [ %2804, %2773 ], [ %2101, %2755 ]
  %2812 = phi float [ %2805, %2773 ], [ %2102, %2755 ]
  %2813 = phi float [ %2806, %2773 ], [ %2103, %2755 ]
  %2814 = phi float [ %2807, %2773 ], [ %2104, %2755 ]
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = and i32 %2816, 3
  %2818 = icmp eq i32 %2817, 3
  br i1 %2818, label %2897, label %2819

; <label>:2819                                    ; preds = %2808
  %2820 = and i32 %2816, 16
  %2821 = icmp ne i32 %2820, 0
  %2822 = select i1 %2821, float %2298, float 0.000000e+00
  %2823 = icmp eq i32 %2817, 0
  br i1 %2823, label %2824, label %2852

; <label>:2824                                    ; preds = %2819
  %2825 = and i32 %2816, 64
  %2826 = icmp ne i32 %2825, 0
  %2827 = select i1 %2826, float %2298, float 0.000000e+00
  %2828 = fsub fast float %2518, %2809
  %2829 = fsub fast float %2519, %2810
  %2830 = fsub fast float %2520, %2811
  %2831 = fmul fast float %2822, %2828
  %2832 = fmul fast float %2822, %2829
  %2833 = fmul fast float %2822, %2830
  %2834 = fadd fast float %2831, %2809
  %2835 = fadd fast float %2832, %2810
  %2836 = fadd fast float %2833, %2811
  %2837 = fsub fast float %2504, %2111
  %2838 = fmul fast float %2822, %2837
  %2839 = fadd fast float %2838, %2111
  %2840 = fsub fast float %2646, %2812
  %2841 = fsub fast float %2647, %2813
  %2842 = fsub fast float %2648, %2814
  %2843 = fmul fast float %2827, %2840
  %2844 = fmul fast float %2827, %2841
  %2845 = fmul fast float %2827, %2842
  %2846 = fadd fast float %2843, %2812
  %2847 = fadd fast float %2844, %2813
  %2848 = fadd fast float %2845, %2814
  %2849 = fsub fast float %2772, %2115
  %2850 = fmul fast float %2822, %2849
  %2851 = fadd fast float %2850, %2115
  br label %2897

; <label>:2852                                    ; preds = %2819
  %2853 = icmp eq i32 %2817, 1
  br i1 %2853, label %2854, label %2867

; <label>:2854                                    ; preds = %2852
  %2855 = fadd fast float %2518, -1.000000e+00
  %2856 = fadd fast float %2519, -1.000000e+00
  %2857 = fadd fast float %2520, -1.000000e+00
  %2858 = fmul fast float %2822, %2855
  %2859 = fmul fast float %2822, %2856
  %2860 = fmul fast float %2822, %2857
  %2861 = fadd fast float %2858, 1.000000e+00
  %2862 = fadd fast float %2859, 1.000000e+00
  %2863 = fadd fast float %2860, 1.000000e+00
  %2864 = fmul fast float %2861, %2809
  %2865 = fmul fast float %2862, %2810
  %2866 = fmul fast float %2863, %2811
  br label %2897

; <label>:2867                                    ; preds = %2852
  %2868 = icmp eq i32 %2817, 2
  br i1 %2868, label %2869, label %2897

; <label>:2869                                    ; preds = %2867
  %2870 = call float @dx.op.unary.f32(i32 24, float %2518)  ; Sqrt(value)
  %2871 = call float @dx.op.unary.f32(i32 24, float %2519)  ; Sqrt(value)
  %2872 = call float @dx.op.unary.f32(i32 24, float %2520)  ; Sqrt(value)
  %2873 = fadd fast float %2870, -5.000000e-01
  %2874 = fadd fast float %2871, -5.000000e-01
  %2875 = fadd fast float %2872, -5.000000e-01
  %2876 = fmul fast float %2873, %2822
  %2877 = fmul fast float %2874, %2822
  %2878 = fmul fast float %2875, %2822
  %2879 = fadd fast float %2876, 5.000000e-01
  %2880 = fadd fast float %2877, 5.000000e-01
  %2881 = fadd fast float %2878, 5.000000e-01
  %2882 = fmul fast float %2879, 2.000000e+00
  %2883 = fsub fast float 1.000000e+00, %2882
  %2884 = fmul fast float %2883, %2809
  %2885 = fadd fast float %2884, %2882
  %2886 = fmul fast float %2885, %2809
  %2887 = fmul fast float %2880, 2.000000e+00
  %2888 = fsub fast float 1.000000e+00, %2887
  %2889 = fmul fast float %2888, %2810
  %2890 = fadd fast float %2889, %2887
  %2891 = fmul fast float %2890, %2810
  %2892 = fmul fast float %2881, 2.000000e+00
  %2893 = fsub fast float 1.000000e+00, %2892
  %2894 = fmul fast float %2893, %2811
  %2895 = fadd fast float %2894, %2892
  %2896 = fmul fast float %2895, %2811
  br label %2897

; <label>:2897                                    ; preds = %2869, %2867, %2854, %2824, %2808
  %2898 = phi float [ %2809, %2808 ], [ %2886, %2869 ], [ %2809, %2867 ], [ %2864, %2854 ], [ %2834, %2824 ]
  %2899 = phi float [ %2810, %2808 ], [ %2891, %2869 ], [ %2810, %2867 ], [ %2865, %2854 ], [ %2835, %2824 ]
  %2900 = phi float [ %2811, %2808 ], [ %2896, %2869 ], [ %2811, %2867 ], [ %2866, %2854 ], [ %2836, %2824 ]
  %2901 = phi float [ %2812, %2808 ], [ %2812, %2869 ], [ %2812, %2867 ], [ %2812, %2854 ], [ %2846, %2824 ]
  %2902 = phi float [ %2813, %2808 ], [ %2813, %2869 ], [ %2813, %2867 ], [ %2813, %2854 ], [ %2847, %2824 ]
  %2903 = phi float [ %2814, %2808 ], [ %2814, %2869 ], [ %2814, %2867 ], [ %2814, %2854 ], [ %2848, %2824 ]
  %2904 = phi float [ %2111, %2808 ], [ %2111, %2869 ], [ %2111, %2867 ], [ %2111, %2854 ], [ %2839, %2824 ]
  %2905 = phi float [ %2115, %2808 ], [ %2115, %2869 ], [ %2115, %2867 ], [ %2115, %2854 ], [ %2851, %2824 ]
  %2906 = and i32 %2816, 12
  %2907 = icmp eq i32 %2906, 12
  br i1 %2907, label %3038, label %2908

; <label>:2908                                    ; preds = %2897
  %2909 = and i32 %2816, 2097184
  %2910 = icmp eq i32 %2909, 2097184
  %2911 = select i1 %2910, float %2298, float 0.000000e+00
  %2912 = and i32 %2816, 4194336
  %2913 = icmp eq i32 %2912, 4194336
  %2914 = select i1 %2913, float %2298, float 0.000000e+00
  %2915 = and i32 %2816, 8388640
  %2916 = icmp eq i32 %2915, 8388640
  %2917 = select i1 %2916, float %2298, float 0.000000e+00
  %2918 = and i32 %2816, 1024
  %2919 = icmp ne i32 %2918, 0
  %2920 = select i1 %2919, float %2298, float 0.000000e+00
  %2921 = and i32 %2816, 2048
  %2922 = icmp ne i32 %2921, 0
  %2923 = select i1 %2922, float %2298, float 0.000000e+00
  %2924 = and i32 %2816, 8192
  %2925 = icmp ne i32 %2924, 0
  %2926 = select i1 %2925, float %2298, float 0.000000e+00
  %2927 = icmp eq i32 %2906, 0
  br i1 %2927, label %2928, label %2962

; <label>:2928                                    ; preds = %2908
  %2929 = fsub fast float %2599, %2097
  %2930 = fsub fast float %2600, %2098
  %2931 = fmul fast float %2911, %2929
  %2932 = fmul fast float %2911, %2930
  %2933 = fadd fast float %2931, %2097
  %2934 = fadd fast float %2932, %2098
  %2935 = fsub fast float %2601, %2113
  %2936 = fmul fast float %2914, %2935
  %2937 = fadd fast float %2936, %2113
  %2938 = fsub fast float %2598, %2112
  %2939 = fmul fast float %2917, %2938
  %2940 = fadd fast float %2939, %2112
  %2941 = fsub fast float %2704, %2108
  %2942 = fsub fast float %2705, %2109
  %2943 = fsub fast float %2706, %2110
  %2944 = fmul fast float %2920, %2941
  %2945 = fmul fast float %2920, %2942
  %2946 = fmul fast float %2920, %2943
  %2947 = fadd fast float %2944, %2108
  %2948 = fadd fast float %2945, %2109
  %2949 = fadd fast float %2946, %2110
  %2950 = fsub fast float %2759, %2114
  %2951 = fmul fast float %2923, %2950
  %2952 = fadd fast float %2951, %2114
  %2953 = fsub fast float %2756, %2105
  %2954 = fsub fast float %2757, %2106
  %2955 = fsub fast float %2758, %2107
  %2956 = fmul fast float %2926, %2953
  %2957 = fmul fast float %2926, %2954
  %2958 = fmul fast float %2926, %2955
  %2959 = fadd fast float %2956, %2105
  %2960 = fadd fast float %2957, %2106
  %2961 = fadd fast float %2958, %2107
  br label %3038

; <label>:2962                                    ; preds = %2908
  %2963 = icmp eq i32 %2906, 4
  br i1 %2963, label %2964, label %3010

; <label>:2964                                    ; preds = %2962
  %2965 = fmul fast float %2911, %2599
  %2966 = fmul fast float %2911, %2600
  %2967 = fadd fast float %2965, %2097
  %2968 = fadd fast float %2966, %2098
  %2969 = call float @dx.op.binary.f32(i32 36, float %2113, float %2601)  ; FMin(a,b)
  %2970 = fsub fast float %2969, %2113
  %2971 = fmul fast float %2970, %2914
  %2972 = fadd fast float %2971, %2113
  %2973 = fadd fast float %2598, %2112
  %2974 = fmul fast float %2973, 0x3FF337FAE0000000
  %2975 = fmul fast float %2112, %2112
  %2976 = fmul fast float %2598, %2598
  %2977 = fadd fast float %2976, %2975
  %2978 = fmul fast float %2977, 0x3FE5152B00000000
  %2979 = fmul fast float %2112, 0xBFCC1F85E0000000
  %2980 = fmul fast float %2979, %2598
  %2981 = fadd fast float %2980, 0xBFE1363700000000
  %2982 = fadd fast float %2981, %2974
  %2983 = fsub fast float %2982, %2978
  %2984 = fmul fast float %2973, 0x3FBA6F0D00000000
  %2985 = fmul fast float %2977, 0x3FD0432880000000
  %2986 = fmul fast float %2112, 0xBFEF110800000000
  %2987 = fmul fast float %2986, %2598
  %2988 = fadd fast float %2987, 1.000000e+00
  %2989 = fsub fast float %2988, %2984
  %2990 = fadd fast float %2989, %2985
  %2991 = fdiv fast float %2983, %2990
  %2992 = call float @dx.op.unary.f32(i32 7, float %2991)  ; Saturate(value)
  %2993 = fsub fast float %2992, %2112
  %2994 = fmul fast float %2993, %2917
  %2995 = fadd fast float %2994, %2112
  %2996 = fmul fast float %2920, %2704
  %2997 = fmul fast float %2920, %2705
  %2998 = fmul fast float %2920, %2706
  %2999 = fadd fast float %2996, %2108
  %3000 = fadd fast float %2997, %2109
  %3001 = fadd fast float %2998, %2110
  %3002 = fmul fast float %2923, %2759
  %3003 = fadd fast float %3002, %2114
  %3004 = fmul fast float %2926, %2756
  %3005 = fmul fast float %2926, %2757
  %3006 = fmul fast float %2926, %2758
  %3007 = fadd fast float %3004, %2105
  %3008 = fadd fast float %3005, %2106
  %3009 = fadd fast float %3006, %2107
  br label %3038

; <label>:3010                                    ; preds = %2962
  %3011 = icmp eq i32 %2906, 8
  br i1 %3011, label %3012, label %3038

; <label>:3012                                    ; preds = %3010
  %3013 = fmul fast float %2911, %2599
  %3014 = fmul fast float %2911, %2600
  %3015 = fadd fast float %3013, %2097
  %3016 = fadd fast float %3014, %2098
  %3017 = call float @dx.op.binary.f32(i32 36, float %2113, float %2601)  ; FMin(a,b)
  %3018 = fsub fast float %3017, %2113
  %3019 = fmul fast float %3018, %2914
  %3020 = fadd fast float %3019, %2113
  %3021 = fsub fast float %2598, %2112
  %3022 = fmul fast float %2917, %3021
  %3023 = fadd fast float %3022, %2112
  %3024 = fmul fast float %2920, %2704
  %3025 = fmul fast float %2920, %2705
  %3026 = fmul fast float %2920, %2706
  %3027 = fadd fast float %3024, %2108
  %3028 = fadd fast float %3025, %2109
  %3029 = fadd fast float %3026, %2110
  %3030 = fmul fast float %2923, %2759
  %3031 = fadd fast float %3030, %2114
  %3032 = fmul fast float %2926, %2756
  %3033 = fmul fast float %2926, %2757
  %3034 = fmul fast float %2926, %2758
  %3035 = fadd fast float %3032, %2105
  %3036 = fadd fast float %3033, %2106
  %3037 = fadd fast float %3034, %2107
  br label %3038

; <label>:3038                                    ; preds = %3012, %3010, %2964, %2928, %2897, %2297, %2116, %2096
  %3039 = phi float [ %2097, %2897 ], [ %2097, %2297 ], [ %2097, %2096 ], [ %3015, %3012 ], [ %2097, %3010 ], [ %2967, %2964 ], [ %2933, %2928 ], [ %2097, %2116 ]
  %3040 = phi float [ %2098, %2897 ], [ %2098, %2297 ], [ %2098, %2096 ], [ %3016, %3012 ], [ %2098, %3010 ], [ %2968, %2964 ], [ %2934, %2928 ], [ %2098, %2116 ]
  %3041 = phi float [ %2898, %2897 ], [ %2099, %2297 ], [ %2099, %2096 ], [ %2898, %3012 ], [ %2898, %3010 ], [ %2898, %2964 ], [ %2898, %2928 ], [ %2099, %2116 ]
  %3042 = phi float [ %2899, %2897 ], [ %2100, %2297 ], [ %2100, %2096 ], [ %2899, %3012 ], [ %2899, %3010 ], [ %2899, %2964 ], [ %2899, %2928 ], [ %2100, %2116 ]
  %3043 = phi float [ %2900, %2897 ], [ %2101, %2297 ], [ %2101, %2096 ], [ %2900, %3012 ], [ %2900, %3010 ], [ %2900, %2964 ], [ %2900, %2928 ], [ %2101, %2116 ]
  %3044 = phi float [ %2901, %2897 ], [ %2102, %2297 ], [ %2102, %2096 ], [ %2901, %3012 ], [ %2901, %3010 ], [ %2901, %2964 ], [ %2901, %2928 ], [ %2102, %2116 ]
  %3045 = phi float [ %2902, %2897 ], [ %2103, %2297 ], [ %2103, %2096 ], [ %2902, %3012 ], [ %2902, %3010 ], [ %2902, %2964 ], [ %2902, %2928 ], [ %2103, %2116 ]
  %3046 = phi float [ %2903, %2897 ], [ %2104, %2297 ], [ %2104, %2096 ], [ %2903, %3012 ], [ %2903, %3010 ], [ %2903, %2964 ], [ %2903, %2928 ], [ %2104, %2116 ]
  %3047 = phi float [ %2105, %2897 ], [ %2105, %2297 ], [ %2105, %2096 ], [ %3035, %3012 ], [ %2105, %3010 ], [ %3007, %2964 ], [ %2959, %2928 ], [ %2105, %2116 ]
  %3048 = phi float [ %2106, %2897 ], [ %2106, %2297 ], [ %2106, %2096 ], [ %3036, %3012 ], [ %2106, %3010 ], [ %3008, %2964 ], [ %2960, %2928 ], [ %2106, %2116 ]
  %3049 = phi float [ %2107, %2897 ], [ %2107, %2297 ], [ %2107, %2096 ], [ %3037, %3012 ], [ %2107, %3010 ], [ %3009, %2964 ], [ %2961, %2928 ], [ %2107, %2116 ]
  %3050 = phi float [ %2108, %2897 ], [ %2108, %2297 ], [ %2108, %2096 ], [ %3027, %3012 ], [ %2108, %3010 ], [ %2999, %2964 ], [ %2947, %2928 ], [ %2108, %2116 ]
  %3051 = phi float [ %2109, %2897 ], [ %2109, %2297 ], [ %2109, %2096 ], [ %3028, %3012 ], [ %2109, %3010 ], [ %3000, %2964 ], [ %2948, %2928 ], [ %2109, %2116 ]
  %3052 = phi float [ %2110, %2897 ], [ %2110, %2297 ], [ %2110, %2096 ], [ %3029, %3012 ], [ %2110, %3010 ], [ %3001, %2964 ], [ %2949, %2928 ], [ %2110, %2116 ]
  %3053 = phi float [ %2904, %2897 ], [ %2111, %2297 ], [ %2111, %2096 ], [ %2904, %3012 ], [ %2904, %3010 ], [ %2904, %2964 ], [ %2904, %2928 ], [ %2111, %2116 ]
  %3054 = phi float [ %2112, %2897 ], [ %2112, %2297 ], [ %2112, %2096 ], [ %3023, %3012 ], [ %2112, %3010 ], [ %2995, %2964 ], [ %2940, %2928 ], [ %2112, %2116 ]
  %3055 = phi float [ %2113, %2897 ], [ %2113, %2297 ], [ %2113, %2096 ], [ %3020, %3012 ], [ %2113, %3010 ], [ %2972, %2964 ], [ %2937, %2928 ], [ %2113, %2116 ]
  %3056 = phi float [ %2114, %2897 ], [ %2114, %2297 ], [ %2114, %2096 ], [ %3031, %3012 ], [ %2114, %3010 ], [ %3003, %2964 ], [ %2952, %2928 ], [ %2114, %2116 ]
  %3057 = phi float [ %2905, %2897 ], [ %2115, %2297 ], [ %2115, %2096 ], [ %2905, %3012 ], [ %2905, %3010 ], [ %2905, %2964 ], [ %2905, %2928 ], [ %2115, %2116 ]
  br i1 %445, label %3980, label %3058

; <label>:3058                                    ; preds = %3038
  %3059 = icmp ult i32 %499, 4
  %3060 = add i32 %45, 72
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = add i32 %45, 76
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = or i32 %3065, %3062
  %3067 = icmp eq i32 %3066, 0
  br i1 %3067, label %3980, label %3068

; <label>:3068                                    ; preds = %3058
  %3069 = and i32 %3062, 262144
  %3070 = icmp ne i32 %3069, 0
  %3071 = select i1 %3070, float %51, float 1.000000e+00
  %3072 = select i1 %3070, float %52, float 0.000000e+00
  %3073 = select i1 %3070, float %53, float 0.000000e+00
  %3074 = select i1 %3070, float %54, float 1.000000e+00
  %3075 = select i1 %3070, float %55, float %83
  %3076 = select i1 %3070, float %56, float %84
  %3077 = add i32 %45, 332
  %3078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3077, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.i32 %3078, 0
  %3080 = lshr i32 %3079, 16
  %3081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3080)  ; LegacyF16ToF32(value)
  %3082 = fmul fast float %3081, 0x3F50624DE0000000
  %3083 = add i32 %45, 136
  %3084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3083, i32 undef)  ; BufferLoad(srv,index,wot)
  %3085 = extractvalue %dx.types.ResRet.i32 %3084, 0
  %3086 = lshr i32 %3085, 16
  %3087 = and i32 %3086, 255
  %3088 = lshr i32 %3085, 24
  %3089 = add i32 %45, 340
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = and i32 %3091, 65535
  %3093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3092)  ; LegacyF16ToF32(value)
  %3094 = lshr i32 %3091, 16
  %3095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3094)  ; LegacyF16ToF32(value)
  %3096 = add i32 %45, 80
  %3097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3096, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.i32 %3097, 0
  %3099 = lshr i32 %3098, 22
  %3100 = shl nuw nsw i32 %3099, 5
  %3101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3100)  ; LegacyF16ToF32(value)
  %3102 = shl i32 %3098, 4
  %3103 = and i32 %3102, 32752
  %3104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3103)  ; LegacyF16ToF32(value)
  %3105 = lshr i32 %3098, 7
  %3106 = and i32 %3105, 32752
  %3107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3106)  ; LegacyF16ToF32(value)
  %3108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3109 = extractvalue %dx.types.CBufRet.f32 %3108, 3
  %3110 = fmul fast float %3109, 1.000000e+03
  %3111 = fmul fast float %435, %3110
  %3112 = call float @dx.op.unary.f32(i32 22, float %3111)  ; Frc(value)
  %3113 = fadd fast float %3112, %425
  %3114 = fmul fast float %436, %3110
  %3115 = call float @dx.op.unary.f32(i32 22, float %3114)  ; Frc(value)
  %3116 = fadd fast float %3115, %427
  %3117 = fmul fast float %3082, %3110
  %3118 = call float @dx.op.unary.f32(i32 22, float %3117)  ; Frc(value)
  %3119 = fmul fast float %3118, 0x401921FB60000000
  %3120 = fadd fast float %3119, %3101
  %3121 = call float @dx.op.unary.f32(i32 13, float %3120)  ; Sin(value)
  %3122 = call float @dx.op.unary.f32(i32 12, float %3120)  ; Cos(value)
  %3123 = fsub fast float -0.000000e+00, %3121
  %3124 = fadd fast float %3075, -5.000000e-01
  %3125 = fadd fast float %3076, -5.000000e-01
  %3126 = fmul fast float %3093, %3124
  %3127 = fmul fast float %3095, %3125
  %3128 = fadd fast float %3126, 5.000000e-01
  %3129 = fadd fast float %3127, 5.000000e-01
  %3130 = fmul fast float %3104, %3128
  %3131 = fmul fast float %3107, %3129
  %3132 = fmul fast float %3122, %3130
  %3133 = call float @dx.op.tertiary.f32(i32 46, float %3123, float %3131, float %3132)  ; FMad(a,b,c)
  %3134 = fmul fast float %3121, %3130
  %3135 = call float @dx.op.tertiary.f32(i32 46, float %3122, float %3131, float %3134)  ; FMad(a,b,c)
  %3136 = fadd fast float %3113, %3133
  %3137 = fadd fast float %3116, %3135
  %3138 = icmp ugt i32 %3087, 1
  %3139 = icmp ugt i32 %3085, 33554431
  %3140 = or i1 %3139, %3138
  br i1 %3140, label %3141, label %3166

; <label>:3141                                    ; preds = %3068
  %3142 = add i32 %45, 276
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = lshr i32 %3144, 16
  %3146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3145)  ; LegacyF16ToF32(value)
  %3147 = fmul fast float %3109, %3146
  %3148 = call float @dx.op.unary.f32(i32 22, float %3147)  ; Frc(value)
  %3149 = mul nuw nsw i32 %3087, %3088
  %3150 = uitofp i32 %3149 to float
  %3151 = fmul fast float %3148, %3150
  %3152 = call float @dx.op.unary.f32(i32 27, float %3151)  ; Round_ni(value)
  %3153 = fptoui float %3152 to i32
  %3154 = urem i32 %3153, %3087
  %3155 = udiv i32 %3153, %3088
  %3156 = call float @dx.op.unary.f32(i32 22, float %3136)  ; Frc(value)
  %3157 = call float @dx.op.unary.f32(i32 22, float %3137)  ; Frc(value)
  %3158 = uitofp i32 %3154 to float
  %3159 = uitofp i32 %3155 to float
  %3160 = fadd fast float %3156, %3158
  %3161 = fadd fast float %3157, %3159
  %3162 = uitofp i32 %3087 to float
  %3163 = uitofp i32 %3088 to float
  %3164 = fdiv fast float %3160, %3162
  %3165 = fdiv fast float %3161, %3163
  br label %3166

; <label>:3166                                    ; preds = %3141, %3068
  %3167 = phi float [ %3164, %3141 ], [ %3136, %3068 ]
  %3168 = phi float [ %3165, %3141 ], [ %3137, %3068 ]
  %3169 = and i32 %3062, 256
  %3170 = icmp eq i32 %3169, 0
  br i1 %3170, label %3217, label %3171

; <label>:3171                                    ; preds = %3166
  %3172 = add i32 %45, 452
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3172, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = add i32 %3174, 0
  %3176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3176, %dx.types.Handle %98, float %3167, float %3168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3178 = extractvalue %dx.types.ResRet.f32 %3177, 0
  %3179 = add i32 %45, 148
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3179, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = shl i32 %3181, 4
  %3183 = and i32 %3182, 32752
  %3184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3183)  ; LegacyF16ToF32(value)
  %3185 = lshr i32 %3181, 7
  %3186 = and i32 %3185, 32752
  %3187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3186)  ; LegacyF16ToF32(value)
  %3188 = fsub fast float 1.000000e+00, %494
  %3189 = call float @dx.op.binary.f32(i32 35, float %3188, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3190 = bitcast float %494 to i32
  %3191 = sitofp i32 %3190 to float
  %3192 = fadd fast float %3191, 0xC1CFBF8940000000
  %3193 = fmul fast float %3187, %3192
  %3194 = fadd fast float %3193, 0x41CFBF8940000000
  %3195 = fptosi float %3194 to i32
  %3196 = bitcast i32 %3195 to float
  %3197 = bitcast float %3189 to i32
  %3198 = sitofp i32 %3197 to float
  %3199 = fadd fast float %3198, 0xC1CFBF8940000000
  %3200 = fmul fast float %3199, %3187
  %3201 = fadd fast float %3200, 0x41CFBF8940000000
  %3202 = fptosi float %3201 to i32
  %3203 = bitcast i32 %3202 to float
  %3204 = fmul fast float %3196, %3184
  %3205 = fmul fast float %3203, %3184
  %3206 = fsub fast float %3189, %3204
  %3207 = fadd fast float %3205, %3189
  %3208 = call float @dx.op.unary.f32(i32 7, float %3206)  ; Saturate(value)
  %3209 = call float @dx.op.unary.f32(i32 7, float %3207)  ; Saturate(value)
  %3210 = fsub fast float %3178, %3208
  %3211 = fsub fast float %3209, %3208
  %3212 = bitcast float %3211 to i32
  %3213 = sub nsw i32 2129859010, %3212
  %3214 = bitcast i32 %3213 to float
  %3215 = fmul fast float %3214, %3210
  %3216 = call float @dx.op.unary.f32(i32 7, float %3215)  ; Saturate(value)
  br label %3217

; <label>:3217                                    ; preds = %3171, %3166
  %3218 = phi float [ %3216, %3171 ], [ %494, %3166 ]
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = and i32 %3220, 128
  %3222 = icmp eq i32 %3221, 0
  br i1 %3222, label %3239, label %3223

; <label>:3223                                    ; preds = %3217
  %3224 = add i32 %45, 436
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3224, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = add i32 %3226, 0
  %3228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3229 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3228, %dx.types.Handle %98, float %3167, float %3168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3230 = extractvalue %dx.types.ResRet.f32 %3229, 0
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = and i32 %3232, 524288
  %3234 = icmp ne i32 %3233, 0
  %3235 = fcmp fast ogt float %3230, 0x3FE0101020000000
  %3236 = select i1 %3235, float 1.000000e+00, float 0.000000e+00
  %3237 = select i1 %3234, float %3236, float %3230
  %3238 = fmul fast float %3237, %3218
  br label %3239

; <label>:3239                                    ; preds = %3223, %3217
  %3240 = phi float [ %3238, %3223 ], [ %3218, %3217 ]
  %3241 = fcmp fast ult float %3240, 0x3F70101020000000
  br i1 %3241, label %3980, label %3242

; <label>:3242                                    ; preds = %3239
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = and i32 %3244, 16
  %3246 = icmp eq i32 %3245, 0
  br i1 %3246, label %3445, label %3247

; <label>:3247                                    ; preds = %3242
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3083, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = add i32 %45, 388
  %3251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3250, i32 undef)  ; BufferLoad(srv,index,wot)
  %3252 = extractvalue %dx.types.ResRet.i32 %3251, 0
  %3253 = add i32 %3252, 0
  %3254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3253, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3255 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3254, %dx.types.Handle %97, float %3167, float %3168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3256 = extractvalue %dx.types.ResRet.f32 %3255, 0
  %3257 = extractvalue %dx.types.ResRet.f32 %3255, 1
  %3258 = extractvalue %dx.types.ResRet.f32 %3255, 2
  %3259 = extractvalue %dx.types.ResRet.f32 %3255, 3
  %3260 = and i32 %3249, 255
  %3261 = uitofp i32 %3260 to float
  %3262 = lshr i32 %3249, 8
  %3263 = and i32 %3262, 255
  %3264 = uitofp i32 %3263 to float
  %3265 = fmul fast float %3259, %3261
  %3266 = fadd fast float %3265, %3264
  %3267 = fmul fast float %3266, 0x3F70101000000000
  %3268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.i32 %3268, 0
  %3270 = and i32 %3269, 512
  %3271 = icmp eq i32 %3270, 0
  br i1 %3271, label %3280, label %3272

; <label>:3272                                    ; preds = %3247
  %3273 = add i32 %45, 472
  %3274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3273, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.i32 %3274, 0
  %3276 = add i32 %3275, 0
  %3277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3276, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3278 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3277, %dx.types.Handle %98, float %3167, float %3168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3279 = extractvalue %dx.types.ResRet.f32 %3278, 0
  br label %3280

; <label>:3280                                    ; preds = %3272, %3247
  %3281 = phi float [ %3279, %3272 ], [ 1.000000e+00, %3247 ]
  %3282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.i32 %3282, 0
  %3284 = and i32 %3283, 33554432
  %3285 = icmp eq i32 %3284, 0
  br i1 %3285, label %3392, label %3286

; <label>:3286                                    ; preds = %3280
  %3287 = add i32 %45, 272
  %3288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.i32 %3288, 0
  %3290 = and i32 %3289, 65535
  %3291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3290)  ; LegacyF16ToF32(value)
  %3292 = lshr i32 %3289, 16
  %3293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3292)  ; LegacyF16ToF32(value)
  %3294 = add i32 %45, 276
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = and i32 %3296, 65535
  %3298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3297)  ; LegacyF16ToF32(value)
  %3299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3300 = extractvalue %dx.types.ResRet.i32 %3299, 0
  %3301 = lshr i32 %3300, 24
  %3302 = uitofp i32 %3301 to float
  %3303 = fmul fast float %3302, 0x3F70101020000000
  %3304 = and i32 %3300, 255
  %3305 = uitofp i32 %3304 to float
  %3306 = fmul fast float %3305, 0x3F70101020000000
  %3307 = lshr i32 %3300, 8
  %3308 = and i32 %3307, 255
  %3309 = uitofp i32 %3308 to float
  %3310 = fmul fast float %3309, 0x3F70101020000000
  %3311 = lshr i32 %3300, 16
  %3312 = and i32 %3311, 255
  %3313 = uitofp i32 %3312 to float
  %3314 = fmul fast float %3313, 0x3F70101020000000
  %3315 = add i32 %45, 268
  %3316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.i32 %3316, 0
  %3318 = lshr i32 %3317, 24
  %3319 = uitofp i32 %3318 to float
  %3320 = fmul fast float %3319, 0x3F70101020000000
  %3321 = and i32 %3317, 255
  %3322 = uitofp i32 %3321 to float
  %3323 = fmul fast float %3322, 0x3F70101020000000
  %3324 = lshr i32 %3317, 8
  %3325 = and i32 %3324, 255
  %3326 = uitofp i32 %3325 to float
  %3327 = fmul fast float %3326, 0x3F70101020000000
  %3328 = lshr i32 %3317, 16
  %3329 = and i32 %3328, 255
  %3330 = uitofp i32 %3329 to float
  %3331 = fmul fast float %3330, 0x3F70101020000000
  %3332 = bitcast float %3256 to i32
  %3333 = ashr i32 %3332, 1
  %3334 = sub nsw i32 1597463174, %3333
  %3335 = bitcast i32 %3334 to float
  %3336 = fmul fast float %3256, 5.000000e-01
  %3337 = fmul fast float %3335, %3335
  %3338 = fmul fast float %3337, %3336
  %3339 = fsub fast float 1.500000e+00, %3338
  %3340 = fmul fast float %3335, %3256
  %3341 = fmul fast float %3340, %3339
  %3342 = bitcast float %3257 to i32
  %3343 = ashr i32 %3342, 1
  %3344 = sub nsw i32 1597463174, %3343
  %3345 = bitcast i32 %3344 to float
  %3346 = fmul fast float %3257, 5.000000e-01
  %3347 = fmul fast float %3345, %3345
  %3348 = fmul fast float %3347, %3346
  %3349 = fsub fast float 1.500000e+00, %3348
  %3350 = fmul fast float %3345, %3257
  %3351 = fmul fast float %3350, %3349
  %3352 = bitcast float %3258 to i32
  %3353 = ashr i32 %3352, 1
  %3354 = sub nsw i32 1597463174, %3353
  %3355 = bitcast i32 %3354 to float
  %3356 = fmul fast float %3258, 5.000000e-01
  %3357 = fmul fast float %3355, %3355
  %3358 = fmul fast float %3357, %3356
  %3359 = fsub fast float 1.500000e+00, %3358
  %3360 = fmul fast float %3355, %3258
  %3361 = fmul fast float %3360, %3359
  %3362 = fsub fast float %3341, %3323
  %3363 = fsub fast float %3351, %3327
  %3364 = fsub fast float %3361, %3331
  %3365 = fmul fast float %3362, %3291
  %3366 = fmul fast float %3363, %3293
  %3367 = fmul fast float %3364, %3298
  %3368 = fadd fast float %3365, %3306
  %3369 = fadd fast float %3366, %3310
  %3370 = fadd fast float %3367, %3314
  %3371 = call float @dx.op.unary.f32(i32 7, float %3368)  ; Saturate(value)
  %3372 = call float @dx.op.unary.f32(i32 7, float %3369)  ; Saturate(value)
  %3373 = call float @dx.op.unary.f32(i32 7, float %3370)  ; Saturate(value)
  %3374 = fmul fast float %3371, %3371
  %3375 = fmul fast float %3372, %3372
  %3376 = fmul fast float %3373, %3373
  %3377 = fsub fast float %3374, %3256
  %3378 = fsub fast float %3375, %3257
  %3379 = fsub fast float %3376, %3258
  %3380 = fmul fast float %3377, %3281
  %3381 = fmul fast float %3378, %3281
  %3382 = fmul fast float %3379, %3281
  %3383 = fadd fast float %3380, %3256
  %3384 = fadd fast float %3381, %3257
  %3385 = fadd fast float %3382, %3258
  %3386 = fadd fast float %3303, %3267
  %3387 = fsub fast float %3386, %3320
  %3388 = call float @dx.op.unary.f32(i32 7, float %3387)  ; Saturate(value)
  %3389 = fsub fast float %3388, %3267
  %3390 = fmul fast float %3389, %3281
  %3391 = fadd fast float %3390, %3267
  br label %3445

; <label>:3392                                    ; preds = %3280
  %3393 = and i32 %3283, 134217728
  %3394 = icmp eq i32 %3393, 0
  br i1 %3394, label %3429, label %3395

; <label>:3395                                    ; preds = %3392
  %3396 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %3397 = call float @dx.op.unary.f32(i32 24, float %416)  ; Sqrt(value)
  %3398 = call float @dx.op.unary.f32(i32 24, float %420)  ; Sqrt(value)
  %3399 = fadd fast float %3396, -5.000000e-01
  %3400 = fadd fast float %3397, -5.000000e-01
  %3401 = fadd fast float %3398, -5.000000e-01
  %3402 = fmul fast float %3399, %3281
  %3403 = fmul fast float %3400, %3281
  %3404 = fmul fast float %3401, %3281
  %3405 = fadd fast float %3402, 5.000000e-01
  %3406 = fadd fast float %3403, 5.000000e-01
  %3407 = fadd fast float %3404, 5.000000e-01
  %3408 = call float @dx.op.unary.f32(i32 24, float %3256)  ; Sqrt(value)
  %3409 = call float @dx.op.unary.f32(i32 24, float %3257)  ; Sqrt(value)
  %3410 = call float @dx.op.unary.f32(i32 24, float %3258)  ; Sqrt(value)
  %3411 = fmul fast float %3405, 2.000000e+00
  %3412 = fsub fast float 1.000000e+00, %3411
  %3413 = fmul fast float %3412, %3408
  %3414 = fadd fast float %3413, %3411
  %3415 = fmul fast float %3414, %3408
  %3416 = fmul fast float %3406, 2.000000e+00
  %3417 = fsub fast float 1.000000e+00, %3416
  %3418 = fmul fast float %3417, %3409
  %3419 = fadd fast float %3418, %3416
  %3420 = fmul fast float %3419, %3409
  %3421 = fmul fast float %3407, 2.000000e+00
  %3422 = fsub fast float 1.000000e+00, %3421
  %3423 = fmul fast float %3422, %3410
  %3424 = fadd fast float %3423, %3421
  %3425 = fmul fast float %3424, %3410
  %3426 = fmul fast float %3415, %3415
  %3427 = fmul fast float %3420, %3420
  %3428 = fmul fast float %3425, %3425
  br label %3445

; <label>:3429                                    ; preds = %3392
  %3430 = fmul fast float %412, %412
  %3431 = fmul fast float %416, %416
  %3432 = fmul fast float %420, %420
  %3433 = fadd fast float %3430, -1.000000e+00
  %3434 = fadd fast float %3431, -1.000000e+00
  %3435 = fadd fast float %3432, -1.000000e+00
  %3436 = fmul fast float %3281, %3433
  %3437 = fmul fast float %3281, %3434
  %3438 = fmul fast float %3281, %3435
  %3439 = fadd fast float %3436, 1.000000e+00
  %3440 = fadd fast float %3437, 1.000000e+00
  %3441 = fadd fast float %3438, 1.000000e+00
  %3442 = fmul fast float %3439, %3256
  %3443 = fmul fast float %3440, %3257
  %3444 = fmul fast float %3441, %3258
  br label %3445

; <label>:3445                                    ; preds = %3429, %3395, %3286, %3242
  %3446 = phi float [ %3391, %3286 ], [ %3267, %3395 ], [ %3267, %3429 ], [ 0x3FA23C0BE0000000, %3242 ]
  %3447 = phi float [ %3383, %3286 ], [ %3426, %3395 ], [ %3442, %3429 ], [ 1.000000e+00, %3242 ]
  %3448 = phi float [ %3384, %3286 ], [ %3427, %3395 ], [ %3443, %3429 ], [ 1.000000e+00, %3242 ]
  %3449 = phi float [ %3385, %3286 ], [ %3428, %3395 ], [ %3444, %3429 ], [ 1.000000e+00, %3242 ]
  %3450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3451 = extractvalue %dx.types.CBufRet.i32 %3450, 1
  %3452 = and i32 %3451, 1
  %3453 = icmp ne i32 %3452, 0
  %3454 = add i32 %45, 356
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = and i32 %3456, 32
  %3458 = icmp ne i32 %3457, 0
  %3459 = and i1 %3453, %3458
  %3460 = select i1 %3459, float 1.000000e+00, float %3447
  %3461 = select i1 %3459, float 0x3FD3333340000000, float %3448
  %3462 = select i1 %3459, float 0x3FD3333340000000, float %3449
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = and i32 %3464, 32
  %3466 = icmp eq i32 %3465, 0
  br i1 %3466, label %3539, label %3467

; <label>:3467                                    ; preds = %3445
  %3468 = add i32 %45, 140
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = add i32 %45, 404
  %3472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3471, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.i32 %3472, 0
  %3474 = add i32 %3473, 0
  %3475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3474, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3476 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3475, %dx.types.Handle %97, float %3167, float %3168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3480 = extractvalue %dx.types.ResRet.f32 %3476, 3
  %3481 = and i32 %3470, 255
  %3482 = uitofp i32 %3481 to float
  %3483 = lshr i32 %3470, 8
  %3484 = and i32 %3483, 255
  %3485 = uitofp i32 %3484 to float
  %3486 = lshr i32 %3470, 16
  %3487 = and i32 %3486, 255
  %3488 = uitofp i32 %3487 to float
  %3489 = fmul fast float %3488, 0x3F70101000000000
  %3490 = fmul fast float %3477, %3482
  %3491 = fadd fast float %3490, %3485
  %3492 = fmul fast float %3491, 0x3F70101000000000
  %3493 = fadd fast float %3478, -5.000000e-01
  %3494 = fadd fast float %3480, -5.000000e-01
  %3495 = fmul fast float %3493, %3489
  %3496 = fmul fast float %3494, %3489
  %3497 = fadd fast float %3495, 5.000000e-01
  %3498 = fadd fast float %3496, 5.000000e-01
  %3499 = fmul fast float %3497, 2.000000e+00
  %3500 = fadd fast float %3499, -1.000000e+00
  %3501 = fmul fast float %3498, 2.000000e+00
  %3502 = fadd fast float %3501, -1.000000e+00
  %3503 = fadd fast float %3500, %3502
  %3504 = fmul fast float %3503, 5.000000e-01
  %3505 = fsub fast float %3500, %3502
  %3506 = fmul fast float %3505, 5.000000e-01
  %3507 = call float @dx.op.unary.f32(i32 6, float %3504)  ; FAbs(value)
  %3508 = fsub fast float 1.000000e+00, %3507
  %3509 = call float @dx.op.unary.f32(i32 6, float %3506)  ; FAbs(value)
  %3510 = fsub fast float %3508, %3509
  %3511 = call float @dx.op.dot3.f32(i32 55, float %3504, float %3506, float %3510, float %3504, float %3506, float %3510)  ; Dot3(ax,ay,az,bx,by,bz)
  %3512 = call float @dx.op.unary.f32(i32 25, float %3511)  ; Rsqrt(value)
  %3513 = fmul fast float %3504, %3512
  %3514 = fmul fast float %3506, %3512
  %3515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.i32 %3515, 0
  %3517 = and i32 %3516, 67108864
  %3518 = icmp eq i32 %3517, 0
  br i1 %3518, label %3535, label %3519

; <label>:3519                                    ; preds = %3467
  %3520 = add i32 %45, 328
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = and i32 %3522, 65535
  %3524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3523)  ; LegacyF16ToF32(value)
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3077, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = and i32 %3526, 65535
  %3528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3527)  ; LegacyF16ToF32(value)
  %3529 = lshr i32 %3522, 16
  %3530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3529)  ; LegacyF16ToF32(value)
  %3531 = fsub fast float %3492, %3530
  %3532 = fmul fast float %3531, %3524
  %3533 = fadd fast float %3532, %3528
  %3534 = call float @dx.op.unary.f32(i32 7, float %3533)  ; Saturate(value)
  br label %3535

; <label>:3535                                    ; preds = %3519, %3467
  %3536 = phi float [ %3534, %3519 ], [ %3492, %3467 ]
  %3537 = call float @dx.op.dot2.f32(i32 54, float %3513, float %3514, float %3071, float %3072)  ; Dot2(ax,ay,bx,by)
  %3538 = call float @dx.op.dot2.f32(i32 54, float %3513, float %3514, float %3073, float %3074)  ; Dot2(ax,ay,bx,by)
  br label %3539

; <label>:3539                                    ; preds = %3535, %3445
  %3540 = phi float [ %3536, %3535 ], [ 0x3FD6666660000000, %3445 ]
  %3541 = phi float [ %3537, %3535 ], [ 0.000000e+00, %3445 ]
  %3542 = phi float [ %3538, %3535 ], [ 0.000000e+00, %3445 ]
  %3543 = phi float [ %3479, %3535 ], [ 1.000000e+00, %3445 ]
  %3544 = add i32 %45, 208
  %3545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.i32 %3545, 0
  %3547 = lshr i32 %3546, 22
  %3548 = shl nuw nsw i32 %3547, 5
  %3549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3548)  ; LegacyF16ToF32(value)
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = and i32 %3551, 64
  %3553 = icmp eq i32 %3552, 0
  br i1 %3553, label %3587, label %3554

; <label>:3554                                    ; preds = %3539
  %3555 = add i32 %45, 420
  %3556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.i32 %3556, 0
  %3558 = add i32 %3557, 0
  %3559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3558, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.i32 %3560, 0
  %3562 = and i32 %3561, 131072
  %3563 = icmp eq i32 %3562, 0
  %3564 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3559, %dx.types.Handle %97, float %3167, float %3168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3565 = extractvalue %dx.types.ResRet.f32 %3564, 0
  %3566 = extractvalue %dx.types.ResRet.f32 %3564, 1
  %3567 = extractvalue %dx.types.ResRet.f32 %3564, 2
  %3568 = fmul fast float %3565, %400
  %3569 = fmul fast float %3566, %403
  %3570 = fmul fast float %3567, %406
  br i1 %3563, label %3577, label %3571

; <label>:3571                                    ; preds = %3554
  %3572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3573 = extractvalue %dx.types.CBufRet.f32 %3572, 0
  %3574 = fmul fast float %3573, %3568
  %3575 = fmul fast float %3573, %3569
  %3576 = fmul fast float %3573, %3570
  br label %3577

; <label>:3577                                    ; preds = %3571, %3554
  %3578 = phi float [ %3574, %3571 ], [ %3568, %3554 ]
  %3579 = phi float [ %3575, %3571 ], [ %3569, %3554 ]
  %3580 = phi float [ %3576, %3571 ], [ %3570, %3554 ]
  %3581 = fmul fast float %3578, %3549
  %3582 = select i1 %254, float %3581, float %3578
  %3583 = call float @dx.op.dot3.f32(i32 55, float %3582, float %3579, float %3580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3584 = select i1 %254, float 0.000000e+00, float %3578
  %3585 = select i1 %254, float %3583, float %3579
  %3586 = select i1 %254, float 0.000000e+00, float %3580
  br label %3587

; <label>:3587                                    ; preds = %3577, %3539
  %3588 = phi float [ %3584, %3577 ], [ 0.000000e+00, %3539 ]
  %3589 = phi float [ %3585, %3577 ], [ 0.000000e+00, %3539 ]
  %3590 = phi float [ %3586, %3577 ], [ 0.000000e+00, %3539 ]
  %3591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.i32 %3591, 0
  %3593 = and i32 %3592, 1024
  %3594 = icmp eq i32 %3593, 0
  br i1 %3594, label %3625, label %3595

; <label>:3595                                    ; preds = %3587
  %3596 = add i32 %45, 200
  %3597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.i32 %3597, 0
  %3599 = and i32 %3598, 255
  %3600 = uitofp i32 %3599 to float
  %3601 = fmul fast float %3600, 0x3F70101020000000
  %3602 = lshr i32 %3598, 8
  %3603 = and i32 %3602, 255
  %3604 = uitofp i32 %3603 to float
  %3605 = fmul fast float %3604, 0x3F70101020000000
  %3606 = lshr i32 %3598, 16
  %3607 = and i32 %3606, 255
  %3608 = uitofp i32 %3607 to float
  %3609 = fmul fast float %3608, 0x3F70101020000000
  %3610 = fmul fast float %3601, %3601
  %3611 = fmul fast float %3605, %3605
  %3612 = fmul fast float %3609, %3609
  %3613 = add i32 %45, 488
  %3614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.i32 %3614, 0
  %3616 = add i32 %3615, 0
  %3617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3618 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3617, %dx.types.Handle %98, float %3167, float %3168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = fmul fast float %3610, %3619
  %3623 = fmul fast float %3611, %3620
  %3624 = fmul fast float %3612, %3621
  br label %3625

; <label>:3625                                    ; preds = %3595, %3587
  %3626 = phi float [ %3622, %3595 ], [ 0.000000e+00, %3587 ]
  %3627 = phi float [ %3623, %3595 ], [ 0.000000e+00, %3587 ]
  %3628 = phi float [ %3624, %3595 ], [ 0.000000e+00, %3587 ]
  %3629 = fcmp fast ogt float %3626, 0.000000e+00
  %3630 = fcmp fast ogt float %3627, 0.000000e+00
  %3631 = fcmp fast ogt float %3628, 0.000000e+00
  %3632 = call float @dx.op.unary.f32(i32 23, float %3626)  ; Log(value)
  %3633 = call float @dx.op.unary.f32(i32 23, float %3627)  ; Log(value)
  %3634 = call float @dx.op.unary.f32(i32 23, float %3628)  ; Log(value)
  %3635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.i32 %3635, 0
  %3637 = lshr i32 %3636, 7
  %3638 = and i32 %3637, 32752
  %3639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3638)  ; LegacyF16ToF32(value)
  %3640 = fmul fast float %3632, 0xBFE62E4300000000
  %3641 = fmul fast float %3640, %3639
  %3642 = fmul fast float %3633, 0xBFE62E4300000000
  %3643 = fmul fast float %3642, %3639
  %3644 = fmul fast float %3634, 0xBFE62E4300000000
  %3645 = fmul fast float %3644, %3639
  %3646 = select i1 %3629, float %3641, float 1.270000e+02
  %3647 = select i1 %3630, float %3643, float 1.270000e+02
  %3648 = select i1 %3631, float %3645, float 1.270000e+02
  %3649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.i32 %3649, 0
  %3651 = and i32 %3650, 10240
  %3652 = icmp eq i32 %3651, 0
  br i1 %3652, label %3697, label %3653

; <label>:3653                                    ; preds = %3625
  %3654 = add i32 %45, 504
  %3655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3654, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.i32 %3655, 0
  %3657 = add i32 %3656, 0
  %3658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3658, %dx.types.Handle %98, float %3167, float %3168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3660 = extractvalue %dx.types.ResRet.f32 %3659, 1
  %3661 = extractvalue %dx.types.ResRet.f32 %3659, 3
  %3662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3663 = extractvalue %dx.types.ResRet.i32 %3662, 0
  %3664 = and i32 %3663, 1048576
  %3665 = icmp ne i32 %3664, 0
  %3666 = and i32 %3663, 8192
  %3667 = icmp eq i32 %3666, 0
  br i1 %3667, label %3683, label %3668

; <label>:3668                                    ; preds = %3653
  %3669 = extractvalue %dx.types.ResRet.f32 %3659, 2
  %3670 = select i1 %3665, float %3669, float %3660
  %3671 = extractvalue %dx.types.ResRet.f32 %3659, 0
  %3672 = select i1 %3665, float %3671, float %3660
  %3673 = add i32 %45, 144
  %3674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3673, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.i32 %3674, 0
  %3676 = lshr i32 %3675, 16
  %3677 = and i32 %3676, 255
  %3678 = uitofp i32 %3677 to float
  %3679 = fmul fast float %3678, 0x3F80101020000000
  %3680 = fmul fast float %3679, %3672
  %3681 = fmul fast float %3679, %3660
  %3682 = fmul fast float %3679, %3670
  br label %3683

; <label>:3683                                    ; preds = %3668, %3653
  %3684 = phi float [ %3680, %3668 ], [ 0.000000e+00, %3653 ]
  %3685 = phi float [ %3681, %3668 ], [ 0.000000e+00, %3653 ]
  %3686 = phi float [ %3682, %3668 ], [ 0.000000e+00, %3653 ]
  %3687 = and i32 %3663, 2048
  %3688 = icmp eq i32 %3687, 0
  br i1 %3688, label %3697, label %3689

; <label>:3689                                    ; preds = %3683
  %3690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3691 = extractvalue %dx.types.ResRet.i32 %3690, 0
  %3692 = shl i32 %3691, 4
  %3693 = and i32 %3692, 32752
  %3694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3693)  ; LegacyF16ToF32(value)
  %3695 = fmul fast float %3694, %3661
  %3696 = call float @dx.op.binary.f32(i32 35, float %3695, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3697

; <label>:3697                                    ; preds = %3689, %3683, %3625
  %3698 = phi float [ %3684, %3689 ], [ %3684, %3683 ], [ 0.000000e+00, %3625 ]
  %3699 = phi float [ %3685, %3689 ], [ %3685, %3683 ], [ 0.000000e+00, %3625 ]
  %3700 = phi float [ %3686, %3689 ], [ %3686, %3683 ], [ 0.000000e+00, %3625 ]
  %3701 = phi float [ %3696, %3689 ], [ 0x3F70101020000000, %3683 ], [ 0x3F70101020000000, %3625 ]
  %3702 = add i32 %45, 144
  %3703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3704 = extractvalue %dx.types.ResRet.i32 %3703, 0
  %3705 = and i32 %3704, 255
  %3706 = uitofp i32 %3705 to float
  %3707 = lshr i32 %3704, 8
  %3708 = and i32 %3707, 255
  %3709 = uitofp i32 %3708 to float
  %3710 = call float @dx.op.dot3.f32(i32 55, float %3460, float %3461, float %3462, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3711 = fmul fast float %3709, %3710
  %3712 = fadd fast float %3711, %3706
  %3713 = fmul fast float %3712, 0x3F70101020000000
  %3714 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  br i1 %3059, label %3715, label %3750

; <label>:3715                                    ; preds = %3697
  %3716 = fmul fast float %3701, 2.000000e+00
  %3717 = fcmp fast olt float %3646, 1.270000e+02
  %3718 = fcmp fast olt float %3647, 1.270000e+02
  %3719 = fcmp fast olt float %3648, 1.270000e+02
  %3720 = fmul fast float %3646, 0xBFF7154760000000
  %3721 = fmul fast float %3720, %3716
  %3722 = fmul fast float %3647, 0xBFF7154760000000
  %3723 = fmul fast float %3722, %3716
  %3724 = fmul fast float %3648, 0xBFF7154760000000
  %3725 = fmul fast float %3724, %3716
  %3726 = call float @dx.op.unary.f32(i32 21, float %3721)  ; Exp(value)
  %3727 = call float @dx.op.unary.f32(i32 21, float %3723)  ; Exp(value)
  %3728 = call float @dx.op.unary.f32(i32 21, float %3725)  ; Exp(value)
  %3729 = call float @dx.op.unary.f32(i32 7, float %3726)  ; Saturate(value)
  %3730 = call float @dx.op.unary.f32(i32 7, float %3727)  ; Saturate(value)
  %3731 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3732 = fadd fast float %3729, -1.000000e+00
  %3733 = select i1 %3717, float %3732, float -1.000000e+00
  %3734 = fadd fast float %3730, -1.000000e+00
  %3735 = select i1 %3718, float %3734, float -1.000000e+00
  %3736 = fadd fast float %3731, -1.000000e+00
  %3737 = select i1 %3719, float %3736, float -1.000000e+00
  %3738 = fmul fast float %3733, %3240
  %3739 = fmul fast float %3735, %3240
  %3740 = fmul fast float %3737, %3240
  %3741 = fadd fast float %3738, 1.000000e+00
  %3742 = fadd fast float %3739, 1.000000e+00
  %3743 = fadd fast float %3740, 1.000000e+00
  %3744 = fmul fast float %3741, %3041
  %3745 = fmul fast float %3742, %3042
  %3746 = fmul fast float %3743, %3043
  %3747 = fmul fast float %3741, %3044
  %3748 = fmul fast float %3742, %3045
  %3749 = fmul fast float %3743, %3046
  br label %3750

; <label>:3750                                    ; preds = %3715, %3697
  %3751 = phi float [ %3744, %3715 ], [ %3041, %3697 ]
  %3752 = phi float [ %3745, %3715 ], [ %3042, %3697 ]
  %3753 = phi float [ %3746, %3715 ], [ %3043, %3697 ]
  %3754 = phi float [ %3747, %3715 ], [ %3044, %3697 ]
  %3755 = phi float [ %3748, %3715 ], [ %3045, %3697 ]
  %3756 = phi float [ %3749, %3715 ], [ %3046, %3697 ]
  %3757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3758 = extractvalue %dx.types.ResRet.i32 %3757, 0
  %3759 = and i32 %3758, 3
  %3760 = icmp eq i32 %3759, 3
  br i1 %3760, label %3839, label %3761

; <label>:3761                                    ; preds = %3750
  %3762 = and i32 %3758, 16
  %3763 = icmp ne i32 %3762, 0
  %3764 = select i1 %3763, float %3240, float 0.000000e+00
  %3765 = icmp eq i32 %3759, 0
  br i1 %3765, label %3766, label %3794

; <label>:3766                                    ; preds = %3761
  %3767 = and i32 %3758, 64
  %3768 = icmp ne i32 %3767, 0
  %3769 = select i1 %3768, float %3240, float 0.000000e+00
  %3770 = fsub fast float %3460, %3751
  %3771 = fsub fast float %3461, %3752
  %3772 = fsub fast float %3462, %3753
  %3773 = fmul fast float %3764, %3770
  %3774 = fmul fast float %3764, %3771
  %3775 = fmul fast float %3764, %3772
  %3776 = fadd fast float %3773, %3751
  %3777 = fadd fast float %3774, %3752
  %3778 = fadd fast float %3775, %3753
  %3779 = fsub fast float %3446, %3053
  %3780 = fmul fast float %3764, %3779
  %3781 = fadd fast float %3780, %3053
  %3782 = fsub fast float %3588, %3754
  %3783 = fsub fast float %3589, %3755
  %3784 = fsub fast float %3590, %3756
  %3785 = fmul fast float %3769, %3782
  %3786 = fmul fast float %3769, %3783
  %3787 = fmul fast float %3769, %3784
  %3788 = fadd fast float %3785, %3754
  %3789 = fadd fast float %3786, %3755
  %3790 = fadd fast float %3787, %3756
  %3791 = fsub fast float %3714, %3057
  %3792 = fmul fast float %3764, %3791
  %3793 = fadd fast float %3792, %3057
  br label %3839

; <label>:3794                                    ; preds = %3761
  %3795 = icmp eq i32 %3759, 1
  br i1 %3795, label %3796, label %3809

; <label>:3796                                    ; preds = %3794
  %3797 = fadd fast float %3460, -1.000000e+00
  %3798 = fadd fast float %3461, -1.000000e+00
  %3799 = fadd fast float %3462, -1.000000e+00
  %3800 = fmul fast float %3764, %3797
  %3801 = fmul fast float %3764, %3798
  %3802 = fmul fast float %3764, %3799
  %3803 = fadd fast float %3800, 1.000000e+00
  %3804 = fadd fast float %3801, 1.000000e+00
  %3805 = fadd fast float %3802, 1.000000e+00
  %3806 = fmul fast float %3803, %3751
  %3807 = fmul fast float %3804, %3752
  %3808 = fmul fast float %3805, %3753
  br label %3839

; <label>:3809                                    ; preds = %3794
  %3810 = icmp eq i32 %3759, 2
  br i1 %3810, label %3811, label %3839

; <label>:3811                                    ; preds = %3809
  %3812 = call float @dx.op.unary.f32(i32 24, float %3460)  ; Sqrt(value)
  %3813 = call float @dx.op.unary.f32(i32 24, float %3461)  ; Sqrt(value)
  %3814 = call float @dx.op.unary.f32(i32 24, float %3462)  ; Sqrt(value)
  %3815 = fadd fast float %3812, -5.000000e-01
  %3816 = fadd fast float %3813, -5.000000e-01
  %3817 = fadd fast float %3814, -5.000000e-01
  %3818 = fmul fast float %3815, %3764
  %3819 = fmul fast float %3816, %3764
  %3820 = fmul fast float %3817, %3764
  %3821 = fadd fast float %3818, 5.000000e-01
  %3822 = fadd fast float %3819, 5.000000e-01
  %3823 = fadd fast float %3820, 5.000000e-01
  %3824 = fmul fast float %3821, 2.000000e+00
  %3825 = fsub fast float 1.000000e+00, %3824
  %3826 = fmul fast float %3825, %3751
  %3827 = fadd fast float %3826, %3824
  %3828 = fmul fast float %3827, %3751
  %3829 = fmul fast float %3822, 2.000000e+00
  %3830 = fsub fast float 1.000000e+00, %3829
  %3831 = fmul fast float %3830, %3752
  %3832 = fadd fast float %3831, %3829
  %3833 = fmul fast float %3832, %3752
  %3834 = fmul fast float %3823, 2.000000e+00
  %3835 = fsub fast float 1.000000e+00, %3834
  %3836 = fmul fast float %3835, %3753
  %3837 = fadd fast float %3836, %3834
  %3838 = fmul fast float %3837, %3753
  br label %3839

; <label>:3839                                    ; preds = %3811, %3809, %3796, %3766, %3750
  %3840 = phi float [ %3751, %3750 ], [ %3828, %3811 ], [ %3751, %3809 ], [ %3806, %3796 ], [ %3776, %3766 ]
  %3841 = phi float [ %3752, %3750 ], [ %3833, %3811 ], [ %3752, %3809 ], [ %3807, %3796 ], [ %3777, %3766 ]
  %3842 = phi float [ %3753, %3750 ], [ %3838, %3811 ], [ %3753, %3809 ], [ %3808, %3796 ], [ %3778, %3766 ]
  %3843 = phi float [ %3754, %3750 ], [ %3754, %3811 ], [ %3754, %3809 ], [ %3754, %3796 ], [ %3788, %3766 ]
  %3844 = phi float [ %3755, %3750 ], [ %3755, %3811 ], [ %3755, %3809 ], [ %3755, %3796 ], [ %3789, %3766 ]
  %3845 = phi float [ %3756, %3750 ], [ %3756, %3811 ], [ %3756, %3809 ], [ %3756, %3796 ], [ %3790, %3766 ]
  %3846 = phi float [ %3053, %3750 ], [ %3053, %3811 ], [ %3053, %3809 ], [ %3053, %3796 ], [ %3781, %3766 ]
  %3847 = phi float [ %3057, %3750 ], [ %3057, %3811 ], [ %3057, %3809 ], [ %3057, %3796 ], [ %3793, %3766 ]
  %3848 = and i32 %3758, 12
  %3849 = icmp eq i32 %3848, 12
  br i1 %3849, label %3980, label %3850

; <label>:3850                                    ; preds = %3839
  %3851 = and i32 %3758, 2097184
  %3852 = icmp eq i32 %3851, 2097184
  %3853 = select i1 %3852, float %3240, float 0.000000e+00
  %3854 = and i32 %3758, 4194336
  %3855 = icmp eq i32 %3854, 4194336
  %3856 = select i1 %3855, float %3240, float 0.000000e+00
  %3857 = and i32 %3758, 8388640
  %3858 = icmp eq i32 %3857, 8388640
  %3859 = select i1 %3858, float %3240, float 0.000000e+00
  %3860 = and i32 %3758, 1024
  %3861 = icmp ne i32 %3860, 0
  %3862 = select i1 %3861, float %3240, float 0.000000e+00
  %3863 = and i32 %3758, 2048
  %3864 = icmp ne i32 %3863, 0
  %3865 = select i1 %3864, float %3240, float 0.000000e+00
  %3866 = and i32 %3758, 8192
  %3867 = icmp ne i32 %3866, 0
  %3868 = select i1 %3867, float %3240, float 0.000000e+00
  %3869 = icmp eq i32 %3848, 0
  br i1 %3869, label %3870, label %3904

; <label>:3870                                    ; preds = %3850
  %3871 = fsub fast float %3541, %3039
  %3872 = fsub fast float %3542, %3040
  %3873 = fmul fast float %3853, %3871
  %3874 = fmul fast float %3853, %3872
  %3875 = fadd fast float %3873, %3039
  %3876 = fadd fast float %3874, %3040
  %3877 = fsub fast float %3543, %3055
  %3878 = fmul fast float %3856, %3877
  %3879 = fadd fast float %3878, %3055
  %3880 = fsub fast float %3540, %3054
  %3881 = fmul fast float %3859, %3880
  %3882 = fadd fast float %3881, %3054
  %3883 = fsub fast float %3646, %3050
  %3884 = fsub fast float %3647, %3051
  %3885 = fsub fast float %3648, %3052
  %3886 = fmul fast float %3862, %3883
  %3887 = fmul fast float %3862, %3884
  %3888 = fmul fast float %3862, %3885
  %3889 = fadd fast float %3886, %3050
  %3890 = fadd fast float %3887, %3051
  %3891 = fadd fast float %3888, %3052
  %3892 = fsub fast float %3701, %3056
  %3893 = fmul fast float %3865, %3892
  %3894 = fadd fast float %3893, %3056
  %3895 = fsub fast float %3698, %3047
  %3896 = fsub fast float %3699, %3048
  %3897 = fsub fast float %3700, %3049
  %3898 = fmul fast float %3868, %3895
  %3899 = fmul fast float %3868, %3896
  %3900 = fmul fast float %3868, %3897
  %3901 = fadd fast float %3898, %3047
  %3902 = fadd fast float %3899, %3048
  %3903 = fadd fast float %3900, %3049
  br label %3980

; <label>:3904                                    ; preds = %3850
  %3905 = icmp eq i32 %3848, 4
  br i1 %3905, label %3906, label %3952

; <label>:3906                                    ; preds = %3904
  %3907 = fmul fast float %3853, %3541
  %3908 = fmul fast float %3853, %3542
  %3909 = fadd fast float %3907, %3039
  %3910 = fadd fast float %3908, %3040
  %3911 = call float @dx.op.binary.f32(i32 36, float %3055, float %3543)  ; FMin(a,b)
  %3912 = fsub fast float %3911, %3055
  %3913 = fmul fast float %3912, %3856
  %3914 = fadd fast float %3913, %3055
  %3915 = fadd fast float %3540, %3054
  %3916 = fmul fast float %3915, 0x3FF337FAE0000000
  %3917 = fmul fast float %3054, %3054
  %3918 = fmul fast float %3540, %3540
  %3919 = fadd fast float %3918, %3917
  %3920 = fmul fast float %3919, 0x3FE5152B00000000
  %3921 = fmul fast float %3054, 0xBFCC1F85E0000000
  %3922 = fmul fast float %3921, %3540
  %3923 = fadd fast float %3922, 0xBFE1363700000000
  %3924 = fadd fast float %3923, %3916
  %3925 = fsub fast float %3924, %3920
  %3926 = fmul fast float %3915, 0x3FBA6F0D00000000
  %3927 = fmul fast float %3919, 0x3FD0432880000000
  %3928 = fmul fast float %3054, 0xBFEF110800000000
  %3929 = fmul fast float %3928, %3540
  %3930 = fadd fast float %3929, 1.000000e+00
  %3931 = fsub fast float %3930, %3926
  %3932 = fadd fast float %3931, %3927
  %3933 = fdiv fast float %3925, %3932
  %3934 = call float @dx.op.unary.f32(i32 7, float %3933)  ; Saturate(value)
  %3935 = fsub fast float %3934, %3054
  %3936 = fmul fast float %3935, %3859
  %3937 = fadd fast float %3936, %3054
  %3938 = fmul fast float %3862, %3646
  %3939 = fmul fast float %3862, %3647
  %3940 = fmul fast float %3862, %3648
  %3941 = fadd fast float %3938, %3050
  %3942 = fadd fast float %3939, %3051
  %3943 = fadd fast float %3940, %3052
  %3944 = fmul fast float %3865, %3701
  %3945 = fadd fast float %3944, %3056
  %3946 = fmul fast float %3868, %3698
  %3947 = fmul fast float %3868, %3699
  %3948 = fmul fast float %3868, %3700
  %3949 = fadd fast float %3946, %3047
  %3950 = fadd fast float %3947, %3048
  %3951 = fadd fast float %3948, %3049
  br label %3980

; <label>:3952                                    ; preds = %3904
  %3953 = icmp eq i32 %3848, 8
  br i1 %3953, label %3954, label %3980

; <label>:3954                                    ; preds = %3952
  %3955 = fmul fast float %3853, %3541
  %3956 = fmul fast float %3853, %3542
  %3957 = fadd fast float %3955, %3039
  %3958 = fadd fast float %3956, %3040
  %3959 = call float @dx.op.binary.f32(i32 36, float %3055, float %3543)  ; FMin(a,b)
  %3960 = fsub fast float %3959, %3055
  %3961 = fmul fast float %3960, %3856
  %3962 = fadd fast float %3961, %3055
  %3963 = fsub fast float %3540, %3054
  %3964 = fmul fast float %3859, %3963
  %3965 = fadd fast float %3964, %3054
  %3966 = fmul fast float %3862, %3646
  %3967 = fmul fast float %3862, %3647
  %3968 = fmul fast float %3862, %3648
  %3969 = fadd fast float %3966, %3050
  %3970 = fadd fast float %3967, %3051
  %3971 = fadd fast float %3968, %3052
  %3972 = fmul fast float %3865, %3701
  %3973 = fadd fast float %3972, %3056
  %3974 = fmul fast float %3868, %3698
  %3975 = fmul fast float %3868, %3699
  %3976 = fmul fast float %3868, %3700
  %3977 = fadd fast float %3974, %3047
  %3978 = fadd fast float %3975, %3048
  %3979 = fadd fast float %3976, %3049
  br label %3980

; <label>:3980                                    ; preds = %3954, %3952, %3906, %3870, %3839, %3239, %3058, %3038
  %3981 = phi float [ %3039, %3839 ], [ %3039, %3239 ], [ %3039, %3038 ], [ %3039, %3058 ], [ %3875, %3870 ], [ %3909, %3906 ], [ %3039, %3952 ], [ %3957, %3954 ]
  %3982 = phi float [ %3040, %3839 ], [ %3040, %3239 ], [ %3040, %3038 ], [ %3040, %3058 ], [ %3876, %3870 ], [ %3910, %3906 ], [ %3040, %3952 ], [ %3958, %3954 ]
  %3983 = phi float [ %3840, %3839 ], [ %3041, %3239 ], [ %3041, %3038 ], [ %3041, %3058 ], [ %3840, %3870 ], [ %3840, %3906 ], [ %3840, %3952 ], [ %3840, %3954 ]
  %3984 = phi float [ %3841, %3839 ], [ %3042, %3239 ], [ %3042, %3038 ], [ %3042, %3058 ], [ %3841, %3870 ], [ %3841, %3906 ], [ %3841, %3952 ], [ %3841, %3954 ]
  %3985 = phi float [ %3842, %3839 ], [ %3043, %3239 ], [ %3043, %3038 ], [ %3043, %3058 ], [ %3842, %3870 ], [ %3842, %3906 ], [ %3842, %3952 ], [ %3842, %3954 ]
  %3986 = phi float [ %3843, %3839 ], [ %3044, %3239 ], [ %3044, %3038 ], [ %3044, %3058 ], [ %3843, %3870 ], [ %3843, %3906 ], [ %3843, %3952 ], [ %3843, %3954 ]
  %3987 = phi float [ %3844, %3839 ], [ %3045, %3239 ], [ %3045, %3038 ], [ %3045, %3058 ], [ %3844, %3870 ], [ %3844, %3906 ], [ %3844, %3952 ], [ %3844, %3954 ]
  %3988 = phi float [ %3845, %3839 ], [ %3046, %3239 ], [ %3046, %3038 ], [ %3046, %3058 ], [ %3845, %3870 ], [ %3845, %3906 ], [ %3845, %3952 ], [ %3845, %3954 ]
  %3989 = phi float [ %3047, %3839 ], [ %3047, %3239 ], [ %3047, %3038 ], [ %3047, %3058 ], [ %3901, %3870 ], [ %3949, %3906 ], [ %3047, %3952 ], [ %3977, %3954 ]
  %3990 = phi float [ %3048, %3839 ], [ %3048, %3239 ], [ %3048, %3038 ], [ %3048, %3058 ], [ %3902, %3870 ], [ %3950, %3906 ], [ %3048, %3952 ], [ %3978, %3954 ]
  %3991 = phi float [ %3049, %3839 ], [ %3049, %3239 ], [ %3049, %3038 ], [ %3049, %3058 ], [ %3903, %3870 ], [ %3951, %3906 ], [ %3049, %3952 ], [ %3979, %3954 ]
  %3992 = phi float [ %3050, %3839 ], [ %3050, %3239 ], [ %3050, %3038 ], [ %3050, %3058 ], [ %3889, %3870 ], [ %3941, %3906 ], [ %3050, %3952 ], [ %3969, %3954 ]
  %3993 = phi float [ %3051, %3839 ], [ %3051, %3239 ], [ %3051, %3038 ], [ %3051, %3058 ], [ %3890, %3870 ], [ %3942, %3906 ], [ %3051, %3952 ], [ %3970, %3954 ]
  %3994 = phi float [ %3052, %3839 ], [ %3052, %3239 ], [ %3052, %3038 ], [ %3052, %3058 ], [ %3891, %3870 ], [ %3943, %3906 ], [ %3052, %3952 ], [ %3971, %3954 ]
  %3995 = phi float [ %3846, %3839 ], [ %3053, %3239 ], [ %3053, %3038 ], [ %3053, %3058 ], [ %3846, %3870 ], [ %3846, %3906 ], [ %3846, %3952 ], [ %3846, %3954 ]
  %3996 = phi float [ %3054, %3839 ], [ %3054, %3239 ], [ %3054, %3038 ], [ %3054, %3058 ], [ %3882, %3870 ], [ %3937, %3906 ], [ %3054, %3952 ], [ %3965, %3954 ]
  %3997 = phi float [ %3055, %3839 ], [ %3055, %3239 ], [ %3055, %3038 ], [ %3055, %3058 ], [ %3879, %3870 ], [ %3914, %3906 ], [ %3055, %3952 ], [ %3962, %3954 ]
  %3998 = phi float [ %3056, %3839 ], [ %3056, %3239 ], [ %3056, %3038 ], [ %3056, %3058 ], [ %3894, %3870 ], [ %3945, %3906 ], [ %3056, %3952 ], [ %3973, %3954 ]
  %3999 = phi float [ %3847, %3839 ], [ %3057, %3239 ], [ %3057, %3038 ], [ %3057, %3058 ], [ %3847, %3870 ], [ %3847, %3906 ], [ %3847, %3952 ], [ %3847, %3954 ]
  %4000 = add i32 %45, 360
  %4001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %4000, i32 undef)  ; BufferLoad(srv,index,wot)
  %4002 = extractvalue %dx.types.ResRet.i32 %4001, 0
  %4003 = extractvalue %dx.types.ResRet.i32 %4001, 1
  %4004 = bitcast i32 %4002 to float
  %4005 = bitcast i32 %4003 to float
  %4006 = fcmp fast oge float %4004, 0.000000e+00
  %4007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.f32 %4007, 0
  %4009 = select i1 %4006, float %4004, float %4008
  %4010 = fadd fast float %4009, %194
  %4011 = fmul fast float %4005, %195
  %4012 = add i32 %45, 456
  %4013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %4012, i32 undef)  ; BufferLoad(srv,index,wot)
  %4014 = extractvalue %dx.types.ResRet.i32 %4013, 0
  %4015 = add i32 %4014, 0
  %4016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4017 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4016, %dx.types.Handle %98, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4018 = extractvalue %dx.types.ResRet.f32 %4017, 0
  %4019 = fmul fast float %4011, %4018
  %4020 = fadd fast float %4010, %4019
  %4021 = and i32 %186, 65535
  %4022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4021)  ; LegacyF16ToF32(value)
  %4023 = lshr i32 %186, 16
  %4024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4023)  ; LegacyF16ToF32(value)
  %4025 = and i32 %187, 65535
  %4026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4025)  ; LegacyF16ToF32(value)
  %4027 = fmul fast float %4022, %3983
  %4028 = fmul fast float %4024, %3984
  %4029 = fmul fast float %4026, %3985
  %4030 = shl i32 %188, 4
  %4031 = and i32 %4030, 32752
  %4032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4031)  ; LegacyF16ToF32(value)
  %4033 = lshr i32 %188, 7
  %4034 = and i32 %4033, 32752
  %4035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4034)  ; LegacyF16ToF32(value)
  %4036 = lshr i32 %188, 22
  %4037 = shl nuw nsw i32 %4036, 5
  %4038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4037)  ; LegacyF16ToF32(value)
  %4039 = and i32 %189, 65535
  %4040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4039)  ; LegacyF16ToF32(value)
  %4041 = fmul fast float %4032, %3986
  %4042 = fmul fast float %4041, %4040
  %4043 = fmul fast float %4035, %3987
  %4044 = fmul fast float %4043, %4040
  %4045 = fmul fast float %4038, %3988
  %4046 = fmul fast float %4045, %4040
  %4047 = call float @dx.op.dot2.f32(i32 54, float %3981, float %3982, float %3981, float %3982)  ; Dot2(ax,ay,bx,by)
  %4048 = fmul fast float %4047, 0x3FE3333340000000
  %4049 = fsub fast float 1.000000e+00, %4048
  %4050 = call float @dx.op.dot3.f32(i32 55, float %3981, float %3982, float %4049, float %3981, float %3982, float %4049)  ; Dot3(ax,ay,az,bx,by,bz)
  %4051 = call float @dx.op.unary.f32(i32 25, float %4050)  ; Rsqrt(value)
  %4052 = fmul fast float %4051, %3981
  %4053 = fmul fast float %4051, %3982
  %4054 = fmul fast float %4049, %4051
  %4055 = fmul fast float %4054, %108
  %4056 = fmul fast float %4054, %109
  %4057 = fmul fast float %4054, %110
  %4058 = fmul fast float %4052, %76
  %4059 = fmul fast float %4052, %77
  %4060 = fmul fast float %4052, %78
  %4061 = fadd fast float %4055, %4058
  %4062 = fadd fast float %4056, %4059
  %4063 = fadd fast float %4057, %4060
  %4064 = fmul fast float %120, %4053
  %4065 = fmul fast float %121, %4053
  %4066 = fmul fast float %122, %4053
  %4067 = fadd fast float %4061, %4064
  %4068 = fadd fast float %4062, %4065
  %4069 = fadd fast float %4063, %4066
  %4070 = call float @dx.op.dot3.f32(i32 55, float %4067, float %4068, float %4069, float %4067, float %4068, float %4069)  ; Dot3(ax,ay,az,bx,by,bz)
  %4071 = call float @dx.op.unary.f32(i32 25, float %4070)  ; Rsqrt(value)
  %4072 = fmul fast float %4067, %4071
  %4073 = fmul fast float %4068, %4071
  %4074 = fmul fast float %4069, %4071
  %4075 = icmp eq i32 %47, 65535
  br i1 %4075, label %4674, label %4076

; <label>:4076                                    ; preds = %3980
  %4077 = call float @dx.op.unary.f32(i32 83, float %48)  ; DerivCoarseX(value)
  %4078 = call float @dx.op.unary.f32(i32 83, float %49)  ; DerivCoarseX(value)
  %4079 = call float @dx.op.unary.f32(i32 83, float %50)  ; DerivCoarseX(value)
  %4080 = call float @dx.op.unary.f32(i32 84, float %48)  ; DerivCoarseY(value)
  %4081 = call float @dx.op.unary.f32(i32 84, float %49)  ; DerivCoarseY(value)
  %4082 = call float @dx.op.unary.f32(i32 84, float %50)  ; DerivCoarseY(value)
  %4083 = fadd fast float %4077, %48
  %4084 = fadd fast float %4078, %49
  %4085 = fadd fast float %4079, %50
  %4086 = fadd fast float %4080, %48
  %4087 = fadd fast float %4081, %49
  %4088 = fadd fast float %4082, %50
  %4089 = mul i32 %47, 48
  %4090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.f32 %4090, 0
  %4092 = extractvalue %dx.types.ResRet.f32 %4090, 1
  %4093 = extractvalue %dx.types.ResRet.f32 %4090, 2
  %4094 = add i32 %4089, 16
  %4095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = extractvalue %dx.types.ResRet.f32 %4095, 1
  %4098 = extractvalue %dx.types.ResRet.f32 %4095, 2
  %4099 = add i32 %4089, 32
  %4100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = extractvalue %dx.types.ResRet.f32 %4100, 1
  %4103 = extractvalue %dx.types.ResRet.f32 %4100, 2
  %4104 = extractvalue %dx.types.ResRet.f32 %4100, 3
  %4105 = bitcast float %4104 to i32
  %4106 = fmul fast float %4091, %48
  %4107 = fmul fast float %4092, %49
  %4108 = fmul fast float %4093, %50
  %4109 = fsub fast float %4106, %4096
  %4110 = fsub fast float %4107, %4097
  %4111 = fsub fast float %4108, %4098
  %4112 = call float @dx.op.unary.f32(i32 7, float %4109)  ; Saturate(value)
  %4113 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4114 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4115 = fmul fast float %4112, %4101
  %4116 = fmul fast float %4113, %4102
  %4117 = fmul fast float %4114, %4103
  %4118 = fadd fast float %4101, -1.000000e+00
  %4119 = fadd fast float %4102, -1.000000e+00
  %4120 = fadd fast float %4103, -1.000000e+00
  %4121 = call float @dx.op.unary.f32(i32 27, float %4115)  ; Round_ni(value)
  %4122 = call float @dx.op.unary.f32(i32 27, float %4116)  ; Round_ni(value)
  %4123 = call float @dx.op.unary.f32(i32 27, float %4117)  ; Round_ni(value)
  %4124 = call float @dx.op.binary.f32(i32 36, float %4121, float %4118)  ; FMin(a,b)
  %4125 = call float @dx.op.binary.f32(i32 36, float %4122, float %4119)  ; FMin(a,b)
  %4126 = call float @dx.op.binary.f32(i32 36, float %4123, float %4120)  ; FMin(a,b)
  %4127 = fmul fast float %4126, %4102
  %4128 = fadd fast float %4127, %4125
  %4129 = fmul fast float %4128, %4101
  %4130 = fadd fast float %4129, %4124
  %4131 = fptosi float %4130 to i32
  %4132 = add nsw i32 %4131, %4105
  %4133 = shl nsw i32 %4132, 2
  %4134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.i32 %4134, 0
  %4136 = lshr i32 %4135, 16
  %4137 = icmp eq i32 %4136, 0
  br i1 %4137, label %4637, label %4138

; <label>:4138                                    ; preds = %4076
  br label %4139

; <label>:4139                                    ; preds = %4266, %4138
  %4140 = phi i32 [ %4168, %4266 ], [ %4136, %4138 ]
  %4141 = phi float [ %4267, %4266 ], [ 0.000000e+00, %4138 ]
  %4142 = phi float [ %4268, %4266 ], [ %4020, %4138 ]
  %4143 = phi float [ %4269, %4266 ], [ %3999, %4138 ]
  %4144 = phi float [ %4270, %4266 ], [ %3992, %4138 ]
  %4145 = phi float [ %4271, %4266 ], [ %3993, %4138 ]
  %4146 = phi float [ %4272, %4266 ], [ %3994, %4138 ]
  %4147 = phi float [ %4273, %4266 ], [ 0.000000e+00, %4138 ]
  %4148 = phi float [ %4274, %4266 ], [ 0.000000e+00, %4138 ]
  %4149 = phi float [ %4275, %4266 ], [ %3989, %4138 ]
  %4150 = phi float [ %4276, %4266 ], [ %3990, %4138 ]
  %4151 = phi float [ %4277, %4266 ], [ %3991, %4138 ]
  %4152 = phi float [ %4278, %4266 ], [ %4042, %4138 ]
  %4153 = phi float [ %4279, %4266 ], [ %4044, %4138 ]
  %4154 = phi float [ %4280, %4266 ], [ %4046, %4138 ]
  %4155 = phi float [ %4281, %4266 ], [ %4072, %4138 ]
  %4156 = phi float [ %4282, %4266 ], [ %4073, %4138 ]
  %4157 = phi float [ %4283, %4266 ], [ %4074, %4138 ]
  %4158 = phi float [ %4284, %4266 ], [ %3997, %4138 ]
  %4159 = phi float [ %4285, %4266 ], [ %3996, %4138 ]
  %4160 = phi float [ %4286, %4266 ], [ 0.000000e+00, %4138 ]
  %4161 = phi float [ %4287, %4266 ], [ %3995, %4138 ]
  %4162 = phi float [ %4288, %4266 ], [ %4027, %4138 ]
  %4163 = phi float [ %4289, %4266 ], [ %4028, %4138 ]
  %4164 = phi float [ %4290, %4266 ], [ %4029, %4138 ]
  %4165 = shl nuw nsw i32 %4140, 2
  %4166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4165, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.i32 %4166, 0
  %4168 = lshr i32 %4167, 16
  %4169 = shl i32 %4167, 8
  %4170 = and i32 %4169, 16776960
  %4171 = or i32 %4170, 48
  %4172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4171, i32 undef)  ; BufferLoad(srv,index,wot)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.ResRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.ResRet.f32 %4172, 2
  %4176 = or i32 %4170, 64
  %4177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4176, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.i32 %4177, 0
  %4179 = extractvalue %dx.types.ResRet.i32 %4177, 1
  %4180 = or i32 %4170, 80
  %4181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 2
  %4183 = extractvalue %dx.types.ResRet.f32 %4181, 3
  %4184 = or i32 %4170, 96
  %4185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4184, i32 undef)  ; BufferLoad(srv,index,wot)
  %4186 = extractvalue %dx.types.ResRet.f32 %4185, 0
  %4187 = extractvalue %dx.types.ResRet.f32 %4185, 1
  %4188 = extractvalue %dx.types.ResRet.f32 %4185, 2
  %4189 = extractvalue %dx.types.ResRet.f32 %4185, 3
  %4190 = or i32 %4170, 112
  %4191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 2
  %4193 = or i32 %4170, 128
  %4194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.f32 %4194, 0
  %4196 = extractvalue %dx.types.ResRet.f32 %4194, 1
  %4197 = extractvalue %dx.types.ResRet.f32 %4194, 2
  %4198 = extractvalue %dx.types.ResRet.f32 %4194, 3
  %4199 = or i32 %4170, 144
  %4200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4199, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  %4204 = extractvalue %dx.types.ResRet.f32 %4200, 3
  %4205 = or i32 %4170, 160
  %4206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4205, i32 undef)  ; BufferLoad(srv,index,wot)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.ResRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.ResRet.f32 %4206, 2
  %4210 = extractvalue %dx.types.ResRet.f32 %4206, 3
  %4211 = or i32 %4170, 192
  %4212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.i32 %4212, 0
  %4214 = or i32 %4170, 208
  %4215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4214, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = or i32 %4170, 248
  %4218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4217, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = extractvalue %dx.types.ResRet.f32 %4218, 1
  %4221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4170, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.ResRet.f32 %4221, 1
  %4224 = extractvalue %dx.types.ResRet.f32 %4221, 2
  %4225 = extractvalue %dx.types.ResRet.f32 %4221, 3
  %4226 = call float @dx.op.dot4.f32(i32 56, float %4222, float %4223, float %4224, float %4225, float %48, float %49, float %50, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4227 = or i32 %4170, 16
  %4228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4227, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4230 = extractvalue %dx.types.ResRet.f32 %4228, 1
  %4231 = extractvalue %dx.types.ResRet.f32 %4228, 2
  %4232 = extractvalue %dx.types.ResRet.f32 %4228, 3
  %4233 = call float @dx.op.dot4.f32(i32 56, float %4229, float %4230, float %4231, float %4232, float %48, float %49, float %50, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4234 = or i32 %4170, 32
  %4235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4234, i32 undef)  ; BufferLoad(srv,index,wot)
  %4236 = extractvalue %dx.types.ResRet.f32 %4235, 0
  %4237 = extractvalue %dx.types.ResRet.f32 %4235, 1
  %4238 = extractvalue %dx.types.ResRet.f32 %4235, 2
  %4239 = extractvalue %dx.types.ResRet.f32 %4235, 3
  %4240 = call float @dx.op.dot4.f32(i32 56, float %4236, float %4237, float %4238, float %4239, float %48, float %49, float %50, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4241 = call float @dx.op.unary.f32(i32 27, float %4226)  ; Round_ni(value)
  %4242 = call float @dx.op.unary.f32(i32 6, float %4241)  ; FAbs(value)
  %4243 = call float @dx.op.unary.f32(i32 27, float %4233)  ; Round_ni(value)
  %4244 = call float @dx.op.unary.f32(i32 6, float %4243)  ; FAbs(value)
  %4245 = call float @dx.op.unary.f32(i32 6, float %4240)  ; FAbs(value)
  %4246 = call float @dx.op.unary.f32(i32 27, float %4245)  ; Round_ni(value)
  %4247 = fadd fast float %4244, %4242
  %4248 = fadd fast float %4247, %4246
  %4249 = fcmp fast oeq float %4248, 0.000000e+00
  %4250 = call float @dx.op.dot4.f32(i32 56, float %4222, float %4223, float %4224, float %4225, float %4083, float %4084, float %4085, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4251 = call float @dx.op.dot4.f32(i32 56, float %4229, float %4230, float %4231, float %4232, float %4083, float %4084, float %4085, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4252 = call float @dx.op.dot4.f32(i32 56, float %4222, float %4223, float %4224, float %4225, float %4086, float %4087, float %4088, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4253 = call float @dx.op.dot4.f32(i32 56, float %4229, float %4230, float %4231, float %4232, float %4086, float %4087, float %4088, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4254 = fsub fast float %4250, %4226
  %4255 = fsub fast float %4252, %4226
  %4256 = fsub fast float %4251, %4233
  %4257 = fsub fast float %4253, %4233
  %4258 = call float @dx.op.dot3.f32(i32 55, float %4173, float %4174, float %4175, float %108, float %109, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4259, 2
  %4261 = fadd fast float %4260, %4258
  %4262 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4263 = extractvalue %dx.types.CBufRet.f32 %4259, 0
  %4264 = fcmp fast ogt float %4262, %4263
  %4265 = and i1 %4249, %4264
  br i1 %4265, label %4292, label %4266

; <label>:4266                                    ; preds = %4623, %4375, %4292, %4139
  %4267 = phi float [ %4141, %4292 ], [ %4378, %4375 ], [ %4378, %4623 ], [ %4141, %4139 ]
  %4268 = phi float [ %4142, %4292 ], [ %4142, %4375 ], [ %4599, %4623 ], [ %4142, %4139 ]
  %4269 = phi float [ %4143, %4292 ], [ %4143, %4375 ], [ %4597, %4623 ], [ %4143, %4139 ]
  %4270 = phi float [ %4144, %4292 ], [ %4144, %4375 ], [ %4575, %4623 ], [ %4144, %4139 ]
  %4271 = phi float [ %4145, %4292 ], [ %4145, %4375 ], [ %4576, %4623 ], [ %4145, %4139 ]
  %4272 = phi float [ %4146, %4292 ], [ %4146, %4375 ], [ %4577, %4623 ], [ %4146, %4139 ]
  %4273 = phi float [ %4147, %4292 ], [ %4147, %4375 ], [ %4502, %4623 ], [ %4147, %4139 ]
  %4274 = phi float [ %4148, %4292 ], [ %4148, %4375 ], [ %4500, %4623 ], [ %4148, %4139 ]
  %4275 = phi float [ %4149, %4292 ], [ %4149, %4375 ], [ %4545, %4623 ], [ %4149, %4139 ]
  %4276 = phi float [ %4150, %4292 ], [ %4150, %4375 ], [ %4546, %4623 ], [ %4150, %4139 ]
  %4277 = phi float [ %4151, %4292 ], [ %4151, %4375 ], [ %4547, %4623 ], [ %4151, %4139 ]
  %4278 = phi float [ %4152, %4292 ], [ %4152, %4375 ], [ %4633, %4623 ], [ %4152, %4139 ]
  %4279 = phi float [ %4153, %4292 ], [ %4153, %4375 ], [ %4634, %4623 ], [ %4153, %4139 ]
  %4280 = phi float [ %4154, %4292 ], [ %4154, %4375 ], [ %4635, %4623 ], [ %4154, %4139 ]
  %4281 = phi float [ %4155, %4292 ], [ %4155, %4375 ], [ %4481, %4623 ], [ %4155, %4139 ]
  %4282 = phi float [ %4156, %4292 ], [ %4156, %4375 ], [ %4482, %4623 ], [ %4156, %4139 ]
  %4283 = phi float [ %4157, %4292 ], [ %4157, %4375 ], [ %4483, %4623 ], [ %4157, %4139 ]
  %4284 = phi float [ %4158, %4292 ], [ %4158, %4375 ], [ %4555, %4623 ], [ %4158, %4139 ]
  %4285 = phi float [ %4159, %4292 ], [ %4159, %4375 ], [ %4552, %4623 ], [ %4159, %4139 ]
  %4286 = phi float [ %4160, %4292 ], [ %4160, %4375 ], [ %4549, %4623 ], [ %4160, %4139 ]
  %4287 = phi float [ %4161, %4292 ], [ %4161, %4375 ], [ %4498, %4623 ], [ %4161, %4139 ]
  %4288 = phi float [ %4162, %4292 ], [ %4162, %4375 ], [ %4493, %4623 ], [ %4162, %4139 ]
  %4289 = phi float [ %4163, %4292 ], [ %4163, %4375 ], [ %4494, %4623 ], [ %4163, %4139 ]
  %4290 = phi float [ %4164, %4292 ], [ %4164, %4375 ], [ %4495, %4623 ], [ %4164, %4139 ]
  %4291 = icmp eq i32 %4168, 0
  br i1 %4291, label %4636, label %4139

; <label>:4292                                    ; preds = %4139
  %4293 = extractvalue %dx.types.ResRet.f32 %4172, 3
  %4294 = extractvalue %dx.types.ResRet.f32 %4191, 3
  %4295 = extractvalue %dx.types.ResRet.f32 %4191, 1
  %4296 = extractvalue %dx.types.ResRet.f32 %4191, 0
  %4297 = extractvalue %dx.types.ResRet.f32 %4181, 1
  %4298 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4299 = extractvalue %dx.types.ResRet.i32 %4177, 3
  %4300 = extractvalue %dx.types.ResRet.i32 %4177, 2
  %4301 = bitcast float %4293 to i32
  %4302 = add i32 %4299, 0
  %4303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4302, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4305 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4303, %dx.types.Handle %4304, float %4226, float %4233, float undef, float undef, i32 0, i32 0, i32 undef, float %4254, float %4256, float undef, float %4255, float %4257, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4306 = extractvalue %dx.types.ResRet.f32 %4305, 0
  %4307 = fmul fast float %4306, %4298
  %4308 = fadd fast float %4307, %4297
  %4309 = call float @dx.op.unary.f32(i32 7, float %4308)  ; Saturate(value)
  %4310 = fmul fast float %4226, %4186
  %4311 = call float @dx.op.tertiary.f32(i32 46, float %4187, float %4233, float %4310)  ; FMad(a,b,c)
  %4312 = fadd fast float %4311, %4296
  %4313 = fmul fast float %4226, %4188
  %4314 = call float @dx.op.tertiary.f32(i32 46, float %4189, float %4233, float %4313)  ; FMad(a,b,c)
  %4315 = fadd fast float %4314, %4295
  %4316 = fmul fast float %4254, %4186
  %4317 = call float @dx.op.tertiary.f32(i32 46, float %4187, float %4256, float %4316)  ; FMad(a,b,c)
  %4318 = fmul fast float %4254, %4188
  %4319 = call float @dx.op.tertiary.f32(i32 46, float %4189, float %4256, float %4318)  ; FMad(a,b,c)
  %4320 = fmul fast float %4255, %4186
  %4321 = call float @dx.op.tertiary.f32(i32 46, float %4187, float %4257, float %4320)  ; FMad(a,b,c)
  %4322 = fmul fast float %4255, %4188
  %4323 = call float @dx.op.tertiary.f32(i32 46, float %4189, float %4257, float %4322)  ; FMad(a,b,c)
  %4324 = add i32 %4300, 0
  %4325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4324, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4326 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4325, %dx.types.Handle %4304, float %4312, float %4315, float undef, float undef, i32 0, i32 0, i32 undef, float %4317, float %4319, float undef, float %4321, float %4323, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4327 = extractvalue %dx.types.ResRet.f32 %4326, 0
  %4328 = and i32 %4301, 1024
  %4329 = icmp ne i32 %4328, 0
  %4330 = fcmp fast ogt float %4327, 0x3FE0101020000000
  %4331 = uitofp i1 %4330 to float
  %4332 = select i1 %4329, float %4331, float %4327
  %4333 = and i32 %4301, 8192
  %4334 = icmp ne i32 %4333, 0
  %4335 = select i1 %4334, float %4294, float 1.000000e+00
  %4336 = fmul fast float %4226, 2.000000e+00
  %4337 = fadd fast float %4336, -1.000000e+00
  %4338 = call float @dx.op.unary.f32(i32 6, float %4337)  ; FAbs(value)
  %4339 = fmul fast float %4338, %4219
  %4340 = fsub fast float %4339, %4219
  %4341 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4342 = fmul fast float %4233, 2.000000e+00
  %4343 = fadd fast float %4342, -1.000000e+00
  %4344 = call float @dx.op.unary.f32(i32 6, float %4343)  ; FAbs(value)
  %4345 = fmul fast float %4344, %4220
  %4346 = fsub fast float %4345, %4220
  %4347 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4348 = fmul fast float %4245, %4182
  %4349 = fsub fast float %4348, %4182
  %4350 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4351 = fmul fast float %4309, %4335
  %4352 = fmul fast float %4351, %4306
  %4353 = fmul fast float %4352, %4341
  %4354 = fmul fast float %4353, %4332
  %4355 = fmul fast float %4354, %4347
  %4356 = fmul fast float %4355, %4350
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 1
  %4359 = extractvalue %dx.types.CBufRet.f32 %4357, 0
  %4360 = fsub fast float %4262, %4359
  %4361 = fmul fast float %4360, %4358
  %4362 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4363 = fmul fast float %4356, %4183
  %4364 = fadd fast float %4356, %4183
  %4365 = fmul fast float %4364, %4192
  %4366 = fsub fast float %4365, %4192
  %4367 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4368 = and i32 %4301, 128
  %4369 = icmp ne i32 %4368, 0
  %4370 = select i1 %4369, float %4367, float %4363
  %4371 = fmul fast float %4370, %4362
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4372, 0
  %4374 = fcmp fast ugt float %4371, %4373
  br i1 %4374, label %4375, label %4266

; <label>:4375                                    ; preds = %4292
  %4376 = select i1 %4334, float %4371, float 0.000000e+00
  %4377 = fadd fast float %4376, %4141
  %4378 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  br i1 %4334, label %4266, label %4379

; <label>:4379                                    ; preds = %4375
  %4380 = and i32 %4301, 4
  %4381 = and i32 %4301, 8
  %4382 = add i32 %4178, 0
  %4383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4382, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4385 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4383, %dx.types.Handle %4384, float %4312, float %4315, float undef, float undef, i32 0, i32 0, i32 undef, float %4317, float %4319, float undef, float %4321, float %4323, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4386 = extractvalue %dx.types.ResRet.f32 %4385, 0
  %4387 = extractvalue %dx.types.ResRet.f32 %4385, 1
  %4388 = extractvalue %dx.types.ResRet.f32 %4385, 2
  %4389 = extractvalue %dx.types.ResRet.f32 %4385, 3
  %4390 = bitcast float %4204 to i32
  %4391 = and i32 %4390, 255
  %4392 = uitofp i32 %4391 to float
  %4393 = lshr i32 %4390, 8
  %4394 = and i32 %4393, 255
  %4395 = uitofp i32 %4394 to float
  %4396 = fmul fast float %4389, %4392
  %4397 = fadd fast float %4396, %4395
  %4398 = fmul fast float %4397, 0x3F70101000000000
  %4399 = add i32 %4179, 0
  %4400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4399, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4401 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4400, %dx.types.Handle %4384, float %4312, float %4315, float undef, float undef, i32 0, i32 0, i32 undef, float %4317, float %4319, float undef, float %4321, float %4323, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4402 = extractvalue %dx.types.ResRet.f32 %4401, 0
  %4403 = extractvalue %dx.types.ResRet.f32 %4401, 1
  %4404 = extractvalue %dx.types.ResRet.f32 %4401, 2
  %4405 = extractvalue %dx.types.ResRet.f32 %4401, 3
  %4406 = bitcast float %4198 to i32
  %4407 = and i32 %4406, 255
  %4408 = uitofp i32 %4407 to float
  %4409 = lshr i32 %4406, 8
  %4410 = and i32 %4409, 255
  %4411 = uitofp i32 %4410 to float
  %4412 = lshr i32 %4406, 16
  %4413 = and i32 %4412, 255
  %4414 = uitofp i32 %4413 to float
  %4415 = fmul fast float %4414, 0x3F70101000000000
  %4416 = fmul fast float %4402, %4408
  %4417 = fadd fast float %4416, %4411
  %4418 = fmul fast float %4417, 0x3F70101000000000
  %4419 = fadd fast float %4403, -5.000000e-01
  %4420 = fadd fast float %4405, -5.000000e-01
  %4421 = fmul fast float %4419, %4415
  %4422 = fmul fast float %4420, %4415
  %4423 = fadd fast float %4421, 5.000000e-01
  %4424 = fadd fast float %4422, 5.000000e-01
  %4425 = fmul fast float %4386, %4207
  %4426 = fmul fast float %4387, %4208
  %4427 = fmul fast float %4388, %4209
  %4428 = fmul fast float %4423, 2.000000e+00
  %4429 = fadd fast float %4428, -1.000000e+00
  %4430 = fmul fast float %4424, 2.000000e+00
  %4431 = fadd fast float %4430, -1.000000e+00
  %4432 = fadd fast float %4429, %4431
  %4433 = fmul fast float %4432, 5.000000e-01
  %4434 = fsub fast float %4429, %4431
  %4435 = fmul fast float %4434, 5.000000e-01
  %4436 = call float @dx.op.unary.f32(i32 6, float %4433)  ; FAbs(value)
  %4437 = fsub fast float 1.000000e+00, %4436
  %4438 = call float @dx.op.unary.f32(i32 6, float %4435)  ; FAbs(value)
  %4439 = fsub fast float %4437, %4438
  %4440 = call float @dx.op.dot3.f32(i32 55, float %4433, float %4435, float %4439, float %4433, float %4435, float %4439)  ; Dot3(ax,ay,az,bx,by,bz)
  %4441 = call float @dx.op.unary.f32(i32 25, float %4440)  ; Rsqrt(value)
  %4442 = fmul fast float %4433, %4441
  %4443 = fmul fast float %4435, %4441
  %4444 = fmul fast float %4441, %4439
  %4445 = fmul fast float %4444, %4173
  %4446 = fmul fast float %4444, %4174
  %4447 = fmul fast float %4444, %4175
  %4448 = fmul fast float %4442, %4195
  %4449 = fmul fast float %4442, %4196
  %4450 = fmul fast float %4442, %4197
  %4451 = fadd fast float %4448, %4445
  %4452 = fadd fast float %4449, %4446
  %4453 = fadd fast float %4450, %4447
  %4454 = fmul fast float %4443, %4201
  %4455 = fmul fast float %4443, %4202
  %4456 = fmul fast float %4443, %4203
  %4457 = fadd fast float %4451, %4454
  %4458 = fadd fast float %4452, %4455
  %4459 = fadd fast float %4453, %4456
  %4460 = call float @dx.op.dot3.f32(i32 55, float %4457, float %4458, float %4459, float %4457, float %4458, float %4459)  ; Dot3(ax,ay,az,bx,by,bz)
  %4461 = call float @dx.op.unary.f32(i32 25, float %4460)  ; Rsqrt(value)
  %4462 = fmul fast float %4457, %4461
  %4463 = fmul fast float %4458, %4461
  %4464 = fmul fast float %4459, %4461
  %4465 = icmp ne i32 %4381, 0
  %4466 = select i1 %4465, float 1.000000e+00, float 0.000000e+00
  %4467 = fmul fast float %4371, %4466
  %4468 = and i32 %4301, 1
  %4469 = icmp eq i32 %4468, 0
  br i1 %4469, label %4470, label %4474

; <label>:4470                                    ; preds = %4379
  %4471 = fsub fast float %4462, %4155
  %4472 = fsub fast float %4463, %4156
  %4473 = fsub fast float %4464, %4157
  br label %4474

; <label>:4474                                    ; preds = %4470, %4379
  %4475 = phi float [ %4471, %4470 ], [ %4462, %4379 ]
  %4476 = phi float [ %4472, %4470 ], [ %4463, %4379 ]
  %4477 = phi float [ %4473, %4470 ], [ %4464, %4379 ]
  %4478 = fmul float %4477, %4467
  %4479 = fmul float %4476, %4467
  %4480 = fmul float %4475, %4467
  %4481 = fadd fast float %4480, %4155
  %4482 = fadd fast float %4479, %4156
  %4483 = fadd fast float %4478, %4157
  %4484 = icmp ne i32 %4380, 0
  %4485 = select i1 %4484, float 1.000000e+00, float 0.000000e+00
  %4486 = fmul fast float %4371, %4485
  %4487 = fsub fast float %4425, %4162
  %4488 = fsub fast float %4426, %4163
  %4489 = fsub fast float %4427, %4164
  %4490 = fmul fast float %4487, %4486
  %4491 = fmul fast float %4488, %4486
  %4492 = fmul fast float %4489, %4486
  %4493 = fadd fast float %4490, %4162
  %4494 = fadd fast float %4491, %4163
  %4495 = fadd fast float %4492, %4164
  %4496 = fsub fast float %4398, %4161
  %4497 = fmul fast float %4496, %4486
  %4498 = fadd fast float %4497, %4161
  %4499 = fmul fast float %4486, %4148
  %4500 = fsub fast float %4148, %4499
  %4501 = fmul fast float %4486, %4147
  %4502 = fsub fast float %4147, %4501
  %4503 = bitcast float %4216 to i32
  %4504 = lshr i32 %4503, 16
  %4505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4504)  ; LegacyF16ToF32(value)
  %4506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %4507 = extractvalue %dx.types.ResRet.i32 %4506, 0
  %4508 = and i32 %4507, 1
  %4509 = icmp eq i32 %4508, 0
  br i1 %4509, label %4510, label %4535

; <label>:4510                                    ; preds = %4474
  %4511 = fadd fast float %4398, 0xBFB99999A0000000
  %4512 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4513 = fmul fast float %4512, 0x3FF1C71C80000000
  %4514 = fsub fast float 1.000000e+00, %4513
  %4515 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4516 = fmul fast float %4515, %4425
  %4517 = fmul fast float %4515, %4426
  %4518 = fmul fast float %4515, %4427
  %4519 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4520 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4521 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4522 = call float @dx.op.binary.f32(i32 35, float %4520, float %4521)  ; FMax(a,b)
  %4523 = call float @dx.op.binary.f32(i32 35, float %4519, float %4522)  ; FMax(a,b)
  %4524 = fcmp fast ogt float %4523, 0.000000e+00
  %4525 = bitcast float %4523 to i32
  %4526 = sub nsw i32 2129859010, %4525
  %4527 = bitcast i32 %4526 to float
  %4528 = select i1 %4524, float %4527, float 0.000000e+00
  %4529 = fmul fast float %4519, %4505
  %4530 = fmul fast float %4520, %4505
  %4531 = fmul fast float %4521, %4505
  %4532 = fmul fast float %4529, %4528
  %4533 = fmul fast float %4530, %4528
  %4534 = fmul fast float %4531, %4528
  br label %4535

; <label>:4535                                    ; preds = %4510, %4474
  %4536 = phi float [ %4505, %4474 ], [ %4532, %4510 ]
  %4537 = phi float [ %4505, %4474 ], [ %4533, %4510 ]
  %4538 = phi float [ %4505, %4474 ], [ %4534, %4510 ]
  %4539 = fsub fast float %4536, %4149
  %4540 = fsub fast float %4537, %4150
  %4541 = fsub fast float %4538, %4151
  %4542 = fmul fast float %4539, %4486
  %4543 = fmul fast float %4540, %4486
  %4544 = fmul fast float %4541, %4486
  %4545 = fadd fast float %4542, %4149
  %4546 = fadd fast float %4543, %4150
  %4547 = fadd fast float %4544, %4151
  %4548 = fadd fast float %4371, %4160
  %4549 = call float @dx.op.unary.f32(i32 7, float %4548)  ; Saturate(value)
  %4550 = fsub fast float %4418, %4159
  %4551 = fmul fast float %4550, %4467
  %4552 = fadd fast float %4551, %4159
  %4553 = fsub fast float %4404, %4158
  %4554 = fmul fast float %4553, %4467
  %4555 = fadd fast float %4554, %4158
  br i1 %4469, label %4564, label %4556

; <label>:4556                                    ; preds = %4535
  %4557 = and i32 %4301, 32768
  %4558 = icmp eq i32 %4557, 0
  br i1 %4558, label %4574, label %4559

; <label>:4559                                    ; preds = %4556
  %4560 = fmul fast float %4467, 1.270000e+02
  %4561 = fadd fast float %4560, %4144
  %4562 = fadd fast float %4560, %4145
  %4563 = fadd fast float %4560, %4146
  br label %4574

; <label>:4564                                    ; preds = %4535
  %4565 = fsub fast float 1.270000e+02, %4144
  %4566 = fsub fast float 1.270000e+02, %4145
  %4567 = fsub fast float 1.270000e+02, %4146
  %4568 = fmul fast float %4467, %4565
  %4569 = fmul fast float %4467, %4566
  %4570 = fmul fast float %4467, %4567
  %4571 = fadd fast float %4568, %4144
  %4572 = fadd fast float %4569, %4145
  %4573 = fadd fast float %4570, %4146
  br label %4574

; <label>:4574                                    ; preds = %4564, %4559, %4556
  %4575 = phi float [ %4561, %4559 ], [ %4144, %4556 ], [ %4571, %4564 ]
  %4576 = phi float [ %4562, %4559 ], [ %4145, %4556 ], [ %4572, %4564 ]
  %4577 = phi float [ %4563, %4559 ], [ %4146, %4556 ], [ %4573, %4564 ]
  %4578 = call float @dx.op.dot3.f32(i32 55, float %4425, float %4426, float %4427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.CBufRet.f32 %4579, 1
  %4582 = fmul fast float %4581, %4578
  %4583 = fadd fast float %4582, %4580
  %4584 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  %4585 = bitcast float %4210 to i32
  %4586 = and i32 %4585, 65535
  %4587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4586)  ; LegacyF16ToF32(value)
  %4588 = lshr i32 %4585, 16
  %4589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4588)  ; LegacyF16ToF32(value)
  %4590 = fcmp fast oge float %4587, 0.000000e+00
  %4591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.f32 %4591, 0
  %4593 = select i1 %4590, float %4587, float %4592
  %4594 = fadd fast float %4593, %4589
  %4595 = fsub fast float %4584, %4143
  %4596 = fmul fast float %4595, %4371
  %4597 = fadd fast float %4596, %4143
  %4598 = fmul fast float %4594, %4371
  %4599 = call float @dx.op.binary.f32(i32 35, float %4142, float %4598)  ; FMax(a,b)
  %4600 = and i32 %4301, 16
  %4601 = icmp eq i32 %4600, 0
  br i1 %4601, label %4623, label %4602

; <label>:4602                                    ; preds = %4574
  %4603 = add i32 %4213, 0
  %4604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4603, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4605 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4604, %dx.types.Handle %4384, float %4312, float %4315, float undef, float undef, i32 0, i32 0, i32 undef, float %4317, float %4319, float undef, float %4321, float %4323, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.ResRet.f32 %4605, 1
  %4608 = extractvalue %dx.types.ResRet.f32 %4605, 2
  %4609 = and i32 %4503, 65535
  %4610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4609)  ; LegacyF16ToF32(value)
  %4611 = fmul fast float %4606, %4207
  %4612 = fmul fast float %4607, %4208
  %4613 = fmul fast float %4608, %4209
  %4614 = and i32 %4301, 16384
  %4615 = icmp ne i32 %4614, 0
  %4616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4617 = extractvalue %dx.types.CBufRet.f32 %4616, 0
  %4618 = select i1 %4615, float %4617, float 1.000000e+00
  %4619 = fmul fast float %4618, %4610
  %4620 = fmul fast float %4611, %4619
  %4621 = fmul fast float %4612, %4619
  %4622 = fmul fast float %4613, %4619
  br label %4623

; <label>:4623                                    ; preds = %4602, %4574
  %4624 = phi float [ %4620, %4602 ], [ 0.000000e+00, %4574 ]
  %4625 = phi float [ %4621, %4602 ], [ 0.000000e+00, %4574 ]
  %4626 = phi float [ %4622, %4602 ], [ 0.000000e+00, %4574 ]
  %4627 = fsub fast float %4624, %4152
  %4628 = fsub fast float %4625, %4153
  %4629 = fsub fast float %4626, %4154
  %4630 = fmul fast float %4627, %4371
  %4631 = fmul fast float %4628, %4371
  %4632 = fmul fast float %4629, %4371
  %4633 = fadd fast float %4630, %4152
  %4634 = fadd fast float %4631, %4153
  %4635 = fadd fast float %4632, %4154
  br label %4266

; <label>:4636                                    ; preds = %4266
  br label %4637

; <label>:4637                                    ; preds = %4636, %4076
  %4638 = phi float [ 0.000000e+00, %4076 ], [ %4267, %4636 ]
  %4639 = phi float [ %4020, %4076 ], [ %4268, %4636 ]
  %4640 = phi float [ %3999, %4076 ], [ %4269, %4636 ]
  %4641 = phi float [ %3992, %4076 ], [ %4270, %4636 ]
  %4642 = phi float [ %3993, %4076 ], [ %4271, %4636 ]
  %4643 = phi float [ %3994, %4076 ], [ %4272, %4636 ]
  %4644 = phi float [ 0.000000e+00, %4076 ], [ %4273, %4636 ]
  %4645 = phi float [ 0.000000e+00, %4076 ], [ %4274, %4636 ]
  %4646 = phi float [ %3989, %4076 ], [ %4275, %4636 ]
  %4647 = phi float [ %3990, %4076 ], [ %4276, %4636 ]
  %4648 = phi float [ %3991, %4076 ], [ %4277, %4636 ]
  %4649 = phi float [ %4042, %4076 ], [ %4278, %4636 ]
  %4650 = phi float [ %4044, %4076 ], [ %4279, %4636 ]
  %4651 = phi float [ %4046, %4076 ], [ %4280, %4636 ]
  %4652 = phi float [ %4072, %4076 ], [ %4281, %4636 ]
  %4653 = phi float [ %4073, %4076 ], [ %4282, %4636 ]
  %4654 = phi float [ %4074, %4076 ], [ %4283, %4636 ]
  %4655 = phi float [ %3997, %4076 ], [ %4284, %4636 ]
  %4656 = phi float [ %3996, %4076 ], [ %4285, %4636 ]
  %4657 = phi float [ 0.000000e+00, %4076 ], [ %4286, %4636 ]
  %4658 = phi float [ %3995, %4076 ], [ %4287, %4636 ]
  %4659 = phi float [ %4027, %4076 ], [ %4288, %4636 ]
  %4660 = phi float [ %4028, %4076 ], [ %4289, %4636 ]
  %4661 = phi float [ %4029, %4076 ], [ %4290, %4636 ]
  %4662 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float %4652, float %4653, float %4654)  ; Dot3(ax,ay,az,bx,by,bz)
  %4663 = call float @dx.op.unary.f32(i32 25, float %4662)  ; Rsqrt(value)
  %4664 = fmul fast float %4663, %4652
  %4665 = fmul fast float %4663, %4653
  %4666 = fmul fast float %4663, %4654
  %4667 = fadd fast float %4657, %1169
  %4668 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4669 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4665, float %4666, float %4664, float %4665, float %4666)  ; Dot3(ax,ay,az,bx,by,bz)
  %4670 = call float @dx.op.unary.f32(i32 25, float %4669)  ; Rsqrt(value)
  %4671 = fmul fast float %4670, %4664
  %4672 = fmul fast float %4670, %4665
  %4673 = fmul fast float %4670, %4666
  br label %4674

; <label>:4674                                    ; preds = %4637, %3980
  %4675 = phi float [ %4671, %4637 ], [ %4072, %3980 ]
  %4676 = phi float [ %4672, %4637 ], [ %4073, %3980 ]
  %4677 = phi float [ %4673, %4637 ], [ %4074, %3980 ]
  %4678 = phi float [ %4659, %4637 ], [ %4027, %3980 ]
  %4679 = phi float [ %4660, %4637 ], [ %4028, %3980 ]
  %4680 = phi float [ %4661, %4637 ], [ %4029, %3980 ]
  %4681 = phi float [ %4649, %4637 ], [ %4042, %3980 ]
  %4682 = phi float [ %4650, %4637 ], [ %4044, %3980 ]
  %4683 = phi float [ %4651, %4637 ], [ %4046, %3980 ]
  %4684 = phi float [ %4646, %4637 ], [ %3989, %3980 ]
  %4685 = phi float [ %4647, %4637 ], [ %3990, %3980 ]
  %4686 = phi float [ %4648, %4637 ], [ %3991, %3980 ]
  %4687 = phi float [ %4641, %4637 ], [ %3992, %3980 ]
  %4688 = phi float [ %4642, %4637 ], [ %3993, %3980 ]
  %4689 = phi float [ %4643, %4637 ], [ %3994, %3980 ]
  %4690 = phi float [ %4658, %4637 ], [ %3995, %3980 ]
  %4691 = phi float [ %4668, %4637 ], [ %1169, %3980 ]
  %4692 = phi float [ %4656, %4637 ], [ %3996, %3980 ]
  %4693 = phi float [ %4655, %4637 ], [ %3997, %3980 ]
  %4694 = phi float [ %4645, %4637 ], [ 0.000000e+00, %3980 ]
  %4695 = phi float [ %4644, %4637 ], [ 0.000000e+00, %3980 ]
  %4696 = phi float [ %4638, %4637 ], [ 0.000000e+00, %3980 ]
  %4697 = phi float [ %4639, %4637 ], [ %4020, %3980 ]
  %4698 = phi float [ %4640, %4637 ], [ %3999, %3980 ]
  %4699 = fadd fast float %4690, 0xBFB99999A0000000
  %4700 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4701 = fmul fast float %4700, 0x3FF1C71C80000000
  %4702 = call float @dx.op.binary.f32(i32 36, float %4690, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4703 = fsub fast float 1.000000e+00, %4701
  %4704 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4705 = fmul fast float %4704, %4678
  %4706 = fmul fast float %4704, %4679
  %4707 = fmul fast float %4704, %4680
  %4708 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4709 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4710 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4711 = fmul fast float %4701, %4678
  %4712 = fmul fast float %4701, %4679
  %4713 = fmul fast float %4701, %4680
  %4714 = fadd fast float %4711, %4702
  %4715 = fadd fast float %4712, %4702
  %4716 = fadd fast float %4713, %4702
  %4717 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4718 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4719 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4720 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %4722 = extractvalue %dx.types.ResRet.i32 %4721, 0
  %4723 = and i32 %4722, 1
  %4724 = icmp eq i32 %4723, 0
  br i1 %4724, label %4739, label %4725

; <label>:4725                                    ; preds = %4674
  %4726 = call float @dx.op.binary.f32(i32 35, float %4709, float %4710)  ; FMax(a,b)
  %4727 = call float @dx.op.binary.f32(i32 35, float %4708, float %4726)  ; FMax(a,b)
  %4728 = fcmp fast ogt float %4727, 0.000000e+00
  %4729 = bitcast float %4727 to i32
  %4730 = sub nsw i32 2129859010, %4729
  %4731 = bitcast i32 %4730 to float
  %4732 = select i1 %4728, float %4731, float 0.000000e+00
  %4733 = fmul fast float %4708, %4684
  %4734 = fmul fast float %4709, %4685
  %4735 = fmul fast float %4710, %4686
  %4736 = fmul fast float %4733, %4732
  %4737 = fmul fast float %4734, %4732
  %4738 = fmul fast float %4735, %4732
  br label %4739

; <label>:4739                                    ; preds = %4725, %4674
  %4740 = phi float [ %4736, %4725 ], [ %4684, %4674 ]
  %4741 = phi float [ %4737, %4725 ], [ %4685, %4674 ]
  %4742 = phi float [ %4738, %4725 ], [ %4686, %4674 ]
  %4743 = call float @dx.op.binary.f32(i32 36, float %4687, float 1.270000e+02)  ; FMin(a,b)
  %4744 = call float @dx.op.binary.f32(i32 36, float %4688, float 1.270000e+02)  ; FMin(a,b)
  %4745 = call float @dx.op.binary.f32(i32 36, float %4689, float 1.270000e+02)  ; FMin(a,b)
  %4746 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.i32 %4746, 3
  %4748 = and i32 %4747, 8
  %4749 = icmp ne i32 %4748, 0
  %4750 = call float @dx.op.binary.f32(i32 35, float %4708, float %4678)  ; FMax(a,b)
  %4751 = call float @dx.op.binary.f32(i32 35, float %4709, float %4678)  ; FMax(a,b)
  %4752 = call float @dx.op.binary.f32(i32 35, float %4710, float %4678)  ; FMax(a,b)
  %4753 = call float @dx.op.dot3.f32(i32 55, float %4708, float %4709, float %4710, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4754 = select i1 %254, float %4678, float %4708
  %4755 = select i1 %254, float %4753, float %4709
  %4756 = select i1 %254, float 1.000000e+00, float %4710
  %4757 = select i1 %4749, float %4750, float %4754
  %4758 = select i1 %4749, float %4751, float %4755
  %4759 = select i1 %4749, float %4752, float %4756
  %4760 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4741, float %4742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4761 = select i1 %254, float %4760, float %4740
  %4762 = select i1 %254, float %4760, float %4741
  %4763 = select i1 %254, float %4760, float %4742
  %4764 = and i32 %230, 3
  %4765 = select i1 %224, i32 %4764, i32 0
  %4766 = icmp eq i32 %4765, 1
  br i1 %4766, label %4767, label %4843

; <label>:4767                                    ; preds = %4739
  %4768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4769 = extractvalue %dx.types.CBufRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.CBufRet.f32 %4768, 1
  %4771 = fadd fast float %4769, %180
  %4772 = fadd fast float %4770, %181
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 0
  %4775 = extractvalue %dx.types.CBufRet.f32 %4773, 1
  %4776 = fsub fast float %4771, %4774
  %4777 = fsub fast float %4772, %4775
  %4778 = fmul fast float %4776, %4776
  %4779 = fmul fast float %4777, %4777
  %4780 = fadd fast float %4778, %4779
  %4781 = call float @dx.op.unary.f32(i32 24, float %4780)  ; Sqrt(value)
  %4782 = extractvalue %dx.types.CBufRet.f32 %4773, 2
  %4783 = fcmp fast olt float %4781, %4782
  br i1 %4783, label %4784, label %4837

; <label>:4784                                    ; preds = %4767
  %4785 = extractvalue %dx.types.CBufRet.f32 %4768, 2
  %4786 = fadd fast float %4785, %182
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4787, 0
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 0
  %4791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.f32 %4791, 0
  %4793 = extractvalue %dx.types.CBufRet.f32 %4787, 1
  %4794 = extractvalue %dx.types.CBufRet.f32 %4789, 1
  %4795 = extractvalue %dx.types.CBufRet.f32 %4791, 1
  %4796 = extractvalue %dx.types.CBufRet.f32 %4787, 3
  %4797 = extractvalue %dx.types.CBufRet.f32 %4789, 3
  %4798 = extractvalue %dx.types.CBufRet.f32 %4791, 3
  %4799 = fadd fast float %4796, %4771
  %4800 = fadd fast float %4797, %4772
  %4801 = fadd fast float %4786, %4798
  %4802 = fmul fast float %4799, %4788
  %4803 = call float @dx.op.tertiary.f32(i32 46, float %4800, float %4790, float %4802)  ; FMad(a,b,c)
  %4804 = call float @dx.op.tertiary.f32(i32 46, float %4801, float %4792, float %4803)  ; FMad(a,b,c)
  %4805 = fmul fast float %4799, %4793
  %4806 = call float @dx.op.tertiary.f32(i32 46, float %4800, float %4794, float %4805)  ; FMad(a,b,c)
  %4807 = call float @dx.op.tertiary.f32(i32 46, float %4801, float %4795, float %4806)  ; FMad(a,b,c)
  %4808 = fsub fast float %4804, %4796
  %4809 = fsub fast float %4807, %4797
  %4810 = fsub fast float %4808, %4774
  %4811 = fadd fast float %4810, %4782
  %4812 = fsub fast float %4809, %4775
  %4813 = fadd fast float %4812, %4782
  %4814 = extractvalue %dx.types.CBufRet.f32 %4773, 3
  %4815 = fmul fast float %4811, %4814
  %4816 = fmul fast float %4813, %4814
  %4817 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4818 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4819 = fsub fast float 1.000000e+00, %4817
  %4820 = fsub fast float 1.000000e+00, %4818
  %4821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %39, float %4819, float %4820, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4822 = extractvalue %dx.types.ResRet.f32 %4821, 0
  %4823 = fcmp fast ugt float %4822, 0.000000e+00
  br i1 %4823, label %4824, label %4837

; <label>:4824                                    ; preds = %4784
  %4825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4826 = extractvalue %dx.types.CBufRet.f32 %4825, 2
  %4827 = fmul fast float %4826, %4822
  %4828 = extractvalue %dx.types.CBufRet.f32 %4825, 3
  %4829 = fadd fast float %4828, %4827
  %4830 = extractvalue %dx.types.CBufRet.f32 %4791, 2
  %4831 = fadd fast float %4829, %4798
  %4832 = fmul fast float %4804, %4792
  %4833 = call float @dx.op.tertiary.f32(i32 46, float %4807, float %4795, float %4832)  ; FMad(a,b,c)
  %4834 = call float @dx.op.tertiary.f32(i32 46, float %4831, float %4830, float %4833)  ; FMad(a,b,c)
  %4835 = fsub fast float %4834, %4798
  %4836 = fsub fast float %4835, %4785
  br label %4837

; <label>:4837                                    ; preds = %4824, %4784, %4767
  %4838 = phi i1 [ true, %4824 ], [ false, %4784 ], [ false, %4767 ]
  %4839 = phi float [ %4836, %4824 ], [ -1.310720e+05, %4784 ], [ -1.310720e+05, %4767 ]
  %4840 = fsub fast float %4839, %182
  %4841 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4842 = select i1 %4838, float %4841, float 1.000000e+00
  br label %4843

; <label>:4843                                    ; preds = %4837, %4739
  %4844 = phi float [ %4842, %4837 ], [ 0.000000e+00, %4739 ]
  %4845 = icmp eq i32 %4765, 3
  %4846 = select i1 %4845, float 1.000000e+00, float %4844
  %4847 = call float @dx.op.binary.f32(i32 35, float %4696, float %4846)  ; FMax(a,b)
  %4848 = fcmp fast olt float %4846, 1.000000e+00
  %4849 = fcmp uge float %61, 0.000000e+00
  %4850 = and i1 %4849, %4848
  br i1 %4850, label %4851, label %4861

; <label>:4851                                    ; preds = %4843
  %4852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %37, float %61, float %62, float %63, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4853 = extractvalue %dx.types.ResRet.f32 %4852, 0
  %4854 = extractvalue %dx.types.ResRet.f32 %4852, 1
  %4855 = extractvalue %dx.types.ResRet.f32 %4852, 2
  %4856 = fadd fast float %4853, %4847
  %4857 = fcmp ule float %60, 0.000000e+00
  %4858 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4859 = select i1 %4857, float %4858, float 1.000000e+00
  %4860 = fmul fast float %4859, %4855
  br label %4861

; <label>:4861                                    ; preds = %4851, %4843
  %4862 = phi float [ %4856, %4851 ], [ %4847, %4843 ]
  %4863 = phi float [ %4854, %4851 ], [ 0.000000e+00, %4843 ]
  %4864 = phi float [ %4860, %4851 ], [ 0.000000e+00, %4843 ]
  %4865 = call float @dx.op.unary.f32(i32 7, float %4862)  ; Saturate(value)
  %4866 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4867 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4868 = fcmp fast une float %4866, 0.000000e+00
  %4869 = fcmp fast une float %4867, 0.000000e+00
  %4870 = or i1 %4868, %4869
  br i1 %4870, label %4871, label %5446

; <label>:4871                                    ; preds = %4861
  br i1 %4868, label %4872, label %5145

; <label>:4872                                    ; preds = %4871
  %4873 = call float @dx.op.unary.f32(i32 23, float %4693)  ; Log(value)
  %4874 = fmul fast float %4873, 4.000000e+00
  %4875 = call float @dx.op.unary.f32(i32 21, float %4874)  ; Exp(value)
  %4876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4877 = extractvalue %dx.types.CBufRet.f32 %4876, 0
  %4878 = fmul fast float %4877, %48
  %4879 = fmul fast float %4877, %49
  %4880 = fmul fast float %4877, %50
  %4881 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %4882 = call float @dx.op.unary.f32(i32 6, float %58)  ; FAbs(value)
  %4883 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %4884 = call float @dx.op.unary.f32(i32 23, float %4881)  ; Log(value)
  %4885 = call float @dx.op.unary.f32(i32 23, float %4882)  ; Log(value)
  %4886 = call float @dx.op.unary.f32(i32 23, float %4883)  ; Log(value)
  %4887 = fmul fast float %4884, 4.000000e+00
  %4888 = fmul fast float %4885, 4.000000e+00
  %4889 = fmul fast float %4886, 4.000000e+00
  %4890 = call float @dx.op.unary.f32(i32 21, float %4887)  ; Exp(value)
  %4891 = call float @dx.op.unary.f32(i32 21, float %4888)  ; Exp(value)
  %4892 = call float @dx.op.unary.f32(i32 21, float %4889)  ; Exp(value)
  %4893 = fadd fast float %4891, %4890
  %4894 = fadd fast float %4893, %4892
  %4895 = fdiv fast float 1.000000e+00, %4894
  %4896 = fmul fast float %4895, %4890
  %4897 = fcmp fast ogt float %57, 0.000000e+00
  %4898 = fcmp fast ogt float %58, 0.000000e+00
  %4899 = fcmp fast ogt float %59, 0.000000e+00
  %4900 = fcmp fast olt float %57, 0.000000e+00
  %4901 = fcmp fast olt float %58, 0.000000e+00
  %4902 = fcmp fast olt float %59, 0.000000e+00
  %4903 = zext i1 %4897 to i32
  %4904 = zext i1 %4898 to i32
  %4905 = zext i1 %4899 to i32
  %4906 = zext i1 %4900 to i32
  %4907 = zext i1 %4901 to i32
  %4908 = zext i1 %4902 to i32
  %4909 = sub nsw i32 %4903, %4906
  %4910 = sub nsw i32 %4904, %4907
  %4911 = sub nsw i32 %4905, %4908
  %4912 = call float @dx.op.unary.f32(i32 83, float %4878)  ; DerivCoarseX(value)
  %4913 = call float @dx.op.unary.f32(i32 83, float %4879)  ; DerivCoarseX(value)
  %4914 = call float @dx.op.unary.f32(i32 83, float %4880)  ; DerivCoarseX(value)
  %4915 = call float @dx.op.unary.f32(i32 84, float %4878)  ; DerivCoarseY(value)
  %4916 = call float @dx.op.unary.f32(i32 84, float %4879)  ; DerivCoarseY(value)
  %4917 = call float @dx.op.unary.f32(i32 84, float %4880)  ; DerivCoarseY(value)
  %4918 = fcmp fast ole float %267, %4896
  %4919 = fmul fast float %4895, %4893
  %4920 = fcmp fast ole float %267, %4919
  %4921 = select i1 %4920, float %4880, float %4878
  %4922 = select i1 %4920, float %4878, float %4879
  %4923 = select i1 %4918, float %4879, float %4921
  %4924 = select i1 %4918, float %4880, float %4922
  %4925 = select i1 %4920, float %4914, float %4912
  %4926 = select i1 %4920, float %4912, float %4913
  %4927 = select i1 %4918, float %4913, float %4925
  %4928 = select i1 %4918, float %4914, float %4926
  %4929 = select i1 %4920, float %4917, float %4915
  %4930 = select i1 %4920, float %4915, float %4916
  %4931 = select i1 %4918, float %4916, float %4929
  %4932 = select i1 %4918, float %4917, float %4930
  %4933 = call float @dx.op.unary.f32(i32 27, float %4923)  ; Round_ni(value)
  %4934 = call float @dx.op.unary.f32(i32 27, float %4924)  ; Round_ni(value)
  %4935 = fptosi float %4933 to i32
  %4936 = fptosi float %4934 to i32
  %4937 = xor i32 %4936, %4935
  %4938 = sitofp i32 %4937 to float
  %4939 = fptosi float %4938 to i32
  %4940 = sitofp i32 %4939 to float
  %4941 = fmul fast float %4940, 0x3FE3C6EF40000000
  %4942 = frem fast float %4933, 2.560000e+02
  %4943 = frem fast float %4934, 2.560000e+02
  %4944 = fptoui float %4942 to i32
  %4945 = fptoui float %4943 to i32
  %4946 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %4944, i32 %4945, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4947 = extractvalue %dx.types.ResRet.f32 %4946, 0
  %4948 = extractvalue %dx.types.ResRet.f32 %4946, 1
  %4949 = extractvalue %dx.types.ResRet.f32 %4946, 2
  %4950 = fadd fast float %4947, %4941
  %4951 = fadd fast float %4948, %4941
  %4952 = fadd fast float %4949, %4941
  %4953 = call float @dx.op.unary.f32(i32 22, float %4950)  ; Frc(value)
  %4954 = call float @dx.op.unary.f32(i32 22, float %4951)  ; Frc(value)
  %4955 = call float @dx.op.unary.f32(i32 22, float %4952)  ; Frc(value)
  %4956 = fmul fast float %4955, 0x401921FB60000000
  %4957 = call float @dx.op.unary.f32(i32 13, float %4956)  ; Sin(value)
  %4958 = call float @dx.op.unary.f32(i32 12, float %4956)  ; Cos(value)
  %4959 = fsub fast float -0.000000e+00, %4958
  %4960 = fmul fast float %4958, %4923
  %4961 = call float @dx.op.tertiary.f32(i32 46, float %4957, float %4924, float %4960)  ; FMad(a,b,c)
  %4962 = fmul fast float %4957, %4923
  %4963 = call float @dx.op.tertiary.f32(i32 46, float %4959, float %4924, float %4962)  ; FMad(a,b,c)
  %4964 = fadd fast float %4961, %4953
  %4965 = fadd fast float %4963, %4954
  %4966 = extractvalue %dx.types.CBufRet.f32 %4876, 3
  %4967 = bitcast float %4966 to i32
  %4968 = icmp eq i32 %4967, 0
  br i1 %4968, label %5007, label %4969

; <label>:4969                                    ; preds = %4872
  %4970 = add i32 %4967, 0
  %4971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4970, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4972 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4971, %dx.types.Handle %98, float %4964, float %4965, float undef, float undef, i32 0, i32 0, i32 undef, float %4927, float %4928, float undef, float %4931, float %4932, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4973 = extractvalue %dx.types.ResRet.f32 %4972, 0
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 1
  %4976 = extractvalue %dx.types.CBufRet.f32 %4974, 2
  %4977 = fsub fast float 1.000000e+00, %4866
  %4978 = call float @dx.op.binary.f32(i32 35, float %4977, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4979 = bitcast float %4866 to i32
  %4980 = sitofp i32 %4979 to float
  %4981 = fadd fast float %4980, 0xC1CFBF8940000000
  %4982 = fmul fast float %4976, %4981
  %4983 = fadd fast float %4982, 0x41CFBF8940000000
  %4984 = fptosi float %4983 to i32
  %4985 = bitcast i32 %4984 to float
  %4986 = bitcast float %4978 to i32
  %4987 = sitofp i32 %4986 to float
  %4988 = fadd fast float %4987, 0xC1CFBF8940000000
  %4989 = fmul fast float %4988, %4976
  %4990 = fadd fast float %4989, 0x41CFBF8940000000
  %4991 = fptosi float %4990 to i32
  %4992 = bitcast i32 %4991 to float
  %4993 = fmul fast float %4985, %4975
  %4994 = fmul fast float %4992, %4975
  %4995 = fsub fast float %4978, %4993
  %4996 = fadd fast float %4994, %4978
  %4997 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4998 = call float @dx.op.unary.f32(i32 7, float %4996)  ; Saturate(value)
  %4999 = fsub fast float %4973, %4997
  %5000 = fsub fast float %4998, %4997
  %5001 = bitcast float %5000 to i32
  %5002 = sub nsw i32 2129859010, %5001
  %5003 = bitcast i32 %5002 to float
  %5004 = fmul fast float %5003, %4999
  %5005 = call float @dx.op.unary.f32(i32 7, float %5004)  ; Saturate(value)
  %5006 = fcmp fast olt float %5005, 0x3F70101020000000
  br i1 %5006, label %5145, label %5007

; <label>:5007                                    ; preds = %4969, %4872
  %5008 = phi float [ %5005, %4969 ], [ %4866, %4872 ]
  %5009 = fmul fast float %5008, %4875
  %5010 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.i32 %5010, 1
  %5012 = extractvalue %dx.types.CBufRet.i32 %5010, 0
  %5013 = add i32 %5012, 0
  %5014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5013, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5015 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5014, %dx.types.Handle %97, float %4964, float %4965, float undef, float undef, i32 0, i32 0, i32 undef, float %4927, float %4928, float undef, float %4931, float %4932, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5016 = extractvalue %dx.types.ResRet.f32 %5015, 0
  %5017 = extractvalue %dx.types.ResRet.f32 %5015, 1
  %5018 = extractvalue %dx.types.ResRet.f32 %5015, 2
  %5019 = extractvalue %dx.types.ResRet.f32 %5015, 3
  %5020 = and i32 %5011, 255
  %5021 = uitofp i32 %5020 to float
  %5022 = lshr i32 %5011, 8
  %5023 = and i32 %5022, 255
  %5024 = uitofp i32 %5023 to float
  %5025 = fmul fast float %5019, %5021
  %5026 = fadd fast float %5025, %5024
  %5027 = fmul fast float %5026, 0x3F70101000000000
  %5028 = fadd fast float %5027, 0xBFB99999A0000000
  %5029 = call float @dx.op.unary.f32(i32 7, float %5028)  ; Saturate(value)
  %5030 = fmul fast float %5029, 0x3FF1C71C80000000
  %5031 = call float @dx.op.binary.f32(i32 36, float %5027, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5032 = fsub fast float 1.000000e+00, %5030
  %5033 = call float @dx.op.unary.f32(i32 7, float %5032)  ; Saturate(value)
  %5034 = fmul fast float %5033, %5016
  %5035 = fmul fast float %5033, %5017
  %5036 = fmul fast float %5033, %5018
  %5037 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5038 = call float @dx.op.unary.f32(i32 7, float %5035)  ; Saturate(value)
  %5039 = call float @dx.op.unary.f32(i32 7, float %5036)  ; Saturate(value)
  %5040 = fmul fast float %5030, %5016
  %5041 = fmul fast float %5030, %5017
  %5042 = fmul fast float %5030, %5018
  %5043 = fadd fast float %5040, %5031
  %5044 = fadd fast float %5041, %5031
  %5045 = fadd fast float %5042, %5031
  %5046 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5047 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5048 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5049 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5050 = extractvalue %dx.types.CBufRet.i32 %5049, 3
  %5051 = extractvalue %dx.types.CBufRet.i32 %5049, 2
  %5052 = add i32 %5051, 0
  %5053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5054 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5053, %dx.types.Handle %97, float %4964, float %4965, float undef, float undef, i32 0, i32 0, i32 undef, float %4927, float %4928, float undef, float %4931, float %4932, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5055 = extractvalue %dx.types.ResRet.f32 %5054, 0
  %5056 = extractvalue %dx.types.ResRet.f32 %5054, 1
  %5057 = extractvalue %dx.types.ResRet.f32 %5054, 2
  %5058 = extractvalue %dx.types.ResRet.f32 %5054, 3
  %5059 = and i32 %5050, 255
  %5060 = uitofp i32 %5059 to float
  %5061 = lshr i32 %5050, 8
  %5062 = and i32 %5061, 255
  %5063 = uitofp i32 %5062 to float
  %5064 = lshr i32 %5050, 16
  %5065 = and i32 %5064, 255
  %5066 = uitofp i32 %5065 to float
  %5067 = fmul fast float %5066, 0x3F70101000000000
  %5068 = fmul fast float %5055, %5060
  %5069 = fadd fast float %5068, %5063
  %5070 = fmul fast float %5069, 0x3F70101000000000
  %5071 = fadd fast float %5056, -5.000000e-01
  %5072 = fadd fast float %5058, -5.000000e-01
  %5073 = fmul fast float %5071, %5067
  %5074 = fmul fast float %5072, %5067
  %5075 = fadd fast float %5073, 5.000000e-01
  %5076 = fadd fast float %5074, 5.000000e-01
  %5077 = fmul fast float %5075, 2.000000e+00
  %5078 = fadd fast float %5077, -1.000000e+00
  %5079 = fmul fast float %5076, 2.000000e+00
  %5080 = fadd fast float %5079, -1.000000e+00
  %5081 = fadd fast float %5078, %5080
  %5082 = fmul fast float %5081, 5.000000e-01
  %5083 = fsub fast float %5078, %5080
  %5084 = fmul fast float %5083, 5.000000e-01
  %5085 = call float @dx.op.unary.f32(i32 6, float %5082)  ; FAbs(value)
  %5086 = fsub fast float 1.000000e+00, %5085
  %5087 = call float @dx.op.unary.f32(i32 6, float %5084)  ; FAbs(value)
  %5088 = fsub fast float %5086, %5087
  %5089 = call float @dx.op.dot3.f32(i32 55, float %5082, float %5084, float %5088, float %5082, float %5084, float %5088)  ; Dot3(ax,ay,az,bx,by,bz)
  %5090 = call float @dx.op.unary.f32(i32 25, float %5089)  ; Rsqrt(value)
  %5091 = fmul fast float %5082, %5090
  %5092 = fmul fast float %5084, %5090
  %5093 = select i1 %4920, i32 %4910, i32 %4911
  %5094 = select i1 %4918, i32 %4909, i32 %5093
  %5095 = sitofp i32 %5094 to float
  %5096 = fmul fast float %5088, %5095
  %5097 = fmul fast float %5096, %5090
  %5098 = select i1 %4920, float %5097, float %5092
  %5099 = select i1 %4920, float %5092, float %5097
  %5100 = select i1 %4918, float %5097, float %5091
  %5101 = select i1 %4918, float %5092, float %5098
  %5102 = select i1 %4918, float %5091, float %5099
  %5103 = fsub fast float %5037, %4757
  %5104 = fsub fast float %5038, %4758
  %5105 = fsub fast float %5039, %4759
  %5106 = fmul fast float %5103, %5009
  %5107 = fmul fast float %5104, %5009
  %5108 = fmul fast float %5105, %5009
  %5109 = fadd fast float %5106, %4757
  %5110 = fadd fast float %5107, %4758
  %5111 = fadd fast float %5108, %4759
  %5112 = fsub fast float %5046, %4717
  %5113 = fsub fast float %5047, %4718
  %5114 = fsub fast float %5048, %4719
  %5115 = fmul fast float %5112, %5009
  %5116 = fmul fast float %5113, %5009
  %5117 = fmul fast float %5114, %5009
  %5118 = fadd fast float %5115, %4717
  %5119 = fadd fast float %5116, %4718
  %5120 = fadd fast float %5117, %4719
  %5121 = fadd fast float %5100, %4675
  %5122 = fadd fast float %5101, %4676
  %5123 = fadd fast float %5102, %4677
  %5124 = call float @dx.op.dot3.f32(i32 55, float %5121, float %5122, float %5123, float %5121, float %5122, float %5123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5125 = call float @dx.op.unary.f32(i32 25, float %5124)  ; Rsqrt(value)
  %5126 = fmul fast float %5121, %5125
  %5127 = fmul fast float %5122, %5125
  %5128 = fmul fast float %5123, %5125
  %5129 = fsub fast float %5126, %4675
  %5130 = fsub fast float %5127, %4676
  %5131 = fsub fast float %5128, %4677
  %5132 = fmul fast float %5129, %5009
  %5133 = fmul fast float %5130, %5009
  %5134 = fmul fast float %5131, %5009
  %5135 = fadd fast float %5132, %4675
  %5136 = fadd fast float %5133, %4676
  %5137 = fadd fast float %5134, %4677
  %5138 = call float @dx.op.binary.f32(i32 36, float %4693, float %5057)  ; FMin(a,b)
  %5139 = fsub fast float %5138, %4693
  %5140 = fmul fast float %5139, %5009
  %5141 = fadd fast float %5140, %4693
  %5142 = fsub fast float %5070, %4720
  %5143 = fmul fast float %5142, %5009
  %5144 = fadd fast float %5143, %4720
  br label %5145

; <label>:5145                                    ; preds = %5007, %4969, %4871
  %5146 = phi float [ %5135, %5007 ], [ %4675, %4969 ], [ %4675, %4871 ]
  %5147 = phi float [ %5136, %5007 ], [ %4676, %4969 ], [ %4676, %4871 ]
  %5148 = phi float [ %5137, %5007 ], [ %4677, %4969 ], [ %4677, %4871 ]
  %5149 = phi float [ %5118, %5007 ], [ %4717, %4969 ], [ %4717, %4871 ]
  %5150 = phi float [ %5119, %5007 ], [ %4718, %4969 ], [ %4718, %4871 ]
  %5151 = phi float [ %5120, %5007 ], [ %4719, %4969 ], [ %4719, %4871 ]
  %5152 = phi float [ %5109, %5007 ], [ %4757, %4969 ], [ %4757, %4871 ]
  %5153 = phi float [ %5110, %5007 ], [ %4758, %4969 ], [ %4758, %4871 ]
  %5154 = phi float [ %5111, %5007 ], [ %4759, %4969 ], [ %4759, %4871 ]
  %5155 = phi float [ %5144, %5007 ], [ %4720, %4969 ], [ %4720, %4871 ]
  %5156 = phi float [ %5141, %5007 ], [ %4693, %4969 ], [ %4693, %4871 ]
  br i1 %4869, label %5157, label %5446

; <label>:5157                                    ; preds = %5145
  %5158 = call float @dx.op.unary.f32(i32 23, float %5156)  ; Log(value)
  %5159 = fmul fast float %5158, 4.000000e+00
  %5160 = call float @dx.op.unary.f32(i32 21, float %5159)  ; Exp(value)
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5163 = fmul fast float %5162, %48
  %5164 = fmul fast float %5162, %49
  %5165 = fmul fast float %5162, %50
  %5166 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %5167 = call float @dx.op.unary.f32(i32 6, float %58)  ; FAbs(value)
  %5168 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %5169 = call float @dx.op.unary.f32(i32 23, float %5166)  ; Log(value)
  %5170 = call float @dx.op.unary.f32(i32 23, float %5167)  ; Log(value)
  %5171 = call float @dx.op.unary.f32(i32 23, float %5168)  ; Log(value)
  %5172 = fmul fast float %5169, 4.000000e+00
  %5173 = fmul fast float %5170, 4.000000e+00
  %5174 = fmul fast float %5171, 4.000000e+00
  %5175 = call float @dx.op.unary.f32(i32 21, float %5172)  ; Exp(value)
  %5176 = call float @dx.op.unary.f32(i32 21, float %5173)  ; Exp(value)
  %5177 = call float @dx.op.unary.f32(i32 21, float %5174)  ; Exp(value)
  %5178 = fadd fast float %5176, %5175
  %5179 = fadd fast float %5178, %5177
  %5180 = fdiv fast float 1.000000e+00, %5179
  %5181 = fmul fast float %5180, %5175
  %5182 = fcmp fast ogt float %57, 0.000000e+00
  %5183 = fcmp fast ogt float %58, 0.000000e+00
  %5184 = fcmp fast ogt float %59, 0.000000e+00
  %5185 = fcmp fast olt float %57, 0.000000e+00
  %5186 = fcmp fast olt float %58, 0.000000e+00
  %5187 = fcmp fast olt float %59, 0.000000e+00
  %5188 = zext i1 %5182 to i32
  %5189 = zext i1 %5183 to i32
  %5190 = zext i1 %5184 to i32
  %5191 = zext i1 %5185 to i32
  %5192 = zext i1 %5186 to i32
  %5193 = zext i1 %5187 to i32
  %5194 = sub nsw i32 %5188, %5191
  %5195 = sub nsw i32 %5189, %5192
  %5196 = sub nsw i32 %5190, %5193
  %5197 = call float @dx.op.unary.f32(i32 83, float %5163)  ; DerivCoarseX(value)
  %5198 = call float @dx.op.unary.f32(i32 83, float %5164)  ; DerivCoarseX(value)
  %5199 = call float @dx.op.unary.f32(i32 83, float %5165)  ; DerivCoarseX(value)
  %5200 = call float @dx.op.unary.f32(i32 84, float %5163)  ; DerivCoarseY(value)
  %5201 = call float @dx.op.unary.f32(i32 84, float %5164)  ; DerivCoarseY(value)
  %5202 = call float @dx.op.unary.f32(i32 84, float %5165)  ; DerivCoarseY(value)
  %5203 = fcmp fast ole float %267, %5181
  %5204 = fmul fast float %5180, %5178
  %5205 = fcmp fast ole float %267, %5204
  %5206 = select i1 %5205, float %5165, float %5163
  %5207 = select i1 %5205, float %5163, float %5164
  %5208 = select i1 %5203, float %5164, float %5206
  %5209 = select i1 %5203, float %5165, float %5207
  %5210 = select i1 %5205, float %5199, float %5197
  %5211 = select i1 %5205, float %5197, float %5198
  %5212 = select i1 %5203, float %5198, float %5210
  %5213 = select i1 %5203, float %5199, float %5211
  %5214 = select i1 %5205, float %5202, float %5200
  %5215 = select i1 %5205, float %5200, float %5201
  %5216 = select i1 %5203, float %5201, float %5214
  %5217 = select i1 %5203, float %5202, float %5215
  %5218 = call float @dx.op.unary.f32(i32 27, float %5208)  ; Round_ni(value)
  %5219 = call float @dx.op.unary.f32(i32 27, float %5209)  ; Round_ni(value)
  %5220 = fptosi float %5218 to i32
  %5221 = fptosi float %5219 to i32
  %5222 = xor i32 %5221, %5220
  %5223 = sitofp i32 %5222 to float
  %5224 = fptosi float %5223 to i32
  %5225 = sitofp i32 %5224 to float
  %5226 = fmul fast float %5225, 0x3FE3C6EF40000000
  %5227 = frem fast float %5218, 2.560000e+02
  %5228 = frem fast float %5219, 2.560000e+02
  %5229 = fptoui float %5227 to i32
  %5230 = fptoui float %5228 to i32
  %5231 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %5229, i32 %5230, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 0
  %5233 = extractvalue %dx.types.ResRet.f32 %5231, 1
  %5234 = extractvalue %dx.types.ResRet.f32 %5231, 2
  %5235 = fadd fast float %5232, %5226
  %5236 = fadd fast float %5233, %5226
  %5237 = fadd fast float %5234, %5226
  %5238 = call float @dx.op.unary.f32(i32 22, float %5235)  ; Frc(value)
  %5239 = call float @dx.op.unary.f32(i32 22, float %5236)  ; Frc(value)
  %5240 = call float @dx.op.unary.f32(i32 22, float %5237)  ; Frc(value)
  %5241 = fmul fast float %5240, 0x401921FB60000000
  %5242 = call float @dx.op.unary.f32(i32 13, float %5241)  ; Sin(value)
  %5243 = call float @dx.op.unary.f32(i32 12, float %5241)  ; Cos(value)
  %5244 = fsub fast float -0.000000e+00, %5243
  %5245 = fmul fast float %5243, %5208
  %5246 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5209, float %5245)  ; FMad(a,b,c)
  %5247 = fmul fast float %5242, %5208
  %5248 = call float @dx.op.tertiary.f32(i32 46, float %5244, float %5209, float %5247)  ; FMad(a,b,c)
  %5249 = fadd fast float %5246, %5238
  %5250 = fadd fast float %5248, %5239
  %5251 = extractvalue %dx.types.CBufRet.f32 %5161, 3
  %5252 = bitcast float %5251 to i32
  %5253 = icmp eq i32 %5252, 0
  br i1 %5253, label %5292, label %5254

; <label>:5254                                    ; preds = %5157
  %5255 = add i32 %5252, 0
  %5256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5255, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5257 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5256, %dx.types.Handle %98, float %5249, float %5250, float undef, float undef, i32 0, i32 0, i32 undef, float %5212, float %5213, float undef, float %5216, float %5217, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5258 = extractvalue %dx.types.ResRet.f32 %5257, 0
  %5259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5260 = extractvalue %dx.types.CBufRet.f32 %5259, 1
  %5261 = extractvalue %dx.types.CBufRet.f32 %5259, 2
  %5262 = fsub fast float 1.000000e+00, %4867
  %5263 = call float @dx.op.binary.f32(i32 35, float %5262, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5264 = bitcast float %4867 to i32
  %5265 = sitofp i32 %5264 to float
  %5266 = fadd fast float %5265, 0xC1CFBF8940000000
  %5267 = fmul fast float %5261, %5266
  %5268 = fadd fast float %5267, 0x41CFBF8940000000
  %5269 = fptosi float %5268 to i32
  %5270 = bitcast i32 %5269 to float
  %5271 = bitcast float %5263 to i32
  %5272 = sitofp i32 %5271 to float
  %5273 = fadd fast float %5272, 0xC1CFBF8940000000
  %5274 = fmul fast float %5273, %5261
  %5275 = fadd fast float %5274, 0x41CFBF8940000000
  %5276 = fptosi float %5275 to i32
  %5277 = bitcast i32 %5276 to float
  %5278 = fmul fast float %5270, %5260
  %5279 = fmul fast float %5277, %5260
  %5280 = fsub fast float %5263, %5278
  %5281 = fadd fast float %5279, %5263
  %5282 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5283 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5284 = fsub fast float %5258, %5282
  %5285 = fsub fast float %5283, %5282
  %5286 = bitcast float %5285 to i32
  %5287 = sub nsw i32 2129859010, %5286
  %5288 = bitcast i32 %5287 to float
  %5289 = fmul fast float %5288, %5284
  %5290 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5291 = fcmp fast olt float %5290, 0x3F70101020000000
  br i1 %5291, label %5446, label %5292

; <label>:5292                                    ; preds = %5254, %5157
  %5293 = phi float [ %5290, %5254 ], [ %4867, %5157 ]
  %5294 = fmul fast float %5293, %5160
  %5295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.i32 %5295, 1
  %5297 = extractvalue %dx.types.CBufRet.i32 %5295, 0
  %5298 = add i32 %5297, 0
  %5299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5300 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5299, %dx.types.Handle %97, float %5249, float %5250, float undef, float undef, i32 0, i32 0, i32 undef, float %5212, float %5213, float undef, float %5216, float %5217, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5301 = extractvalue %dx.types.ResRet.f32 %5300, 0
  %5302 = extractvalue %dx.types.ResRet.f32 %5300, 1
  %5303 = extractvalue %dx.types.ResRet.f32 %5300, 2
  %5304 = extractvalue %dx.types.ResRet.f32 %5300, 3
  %5305 = and i32 %5296, 255
  %5306 = uitofp i32 %5305 to float
  %5307 = lshr i32 %5296, 8
  %5308 = and i32 %5307, 255
  %5309 = uitofp i32 %5308 to float
  %5310 = fmul fast float %5304, %5306
  %5311 = fadd fast float %5310, %5309
  %5312 = fmul fast float %5311, 0x3F70101000000000
  %5313 = fadd fast float %5312, 0xBFB99999A0000000
  %5314 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5315 = fmul fast float %5314, 0x3FF1C71C80000000
  %5316 = call float @dx.op.binary.f32(i32 36, float %5312, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5317 = fsub fast float 1.000000e+00, %5315
  %5318 = call float @dx.op.unary.f32(i32 7, float %5317)  ; Saturate(value)
  %5319 = fmul fast float %5318, %5301
  %5320 = fmul fast float %5318, %5302
  %5321 = fmul fast float %5318, %5303
  %5322 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5323 = call float @dx.op.unary.f32(i32 7, float %5320)  ; Saturate(value)
  %5324 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5325 = fmul fast float %5315, %5301
  %5326 = fmul fast float %5315, %5302
  %5327 = fmul fast float %5315, %5303
  %5328 = fadd fast float %5325, %5316
  %5329 = fadd fast float %5326, %5316
  %5330 = fadd fast float %5327, %5316
  %5331 = call float @dx.op.unary.f32(i32 7, float %5328)  ; Saturate(value)
  %5332 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5333 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.i32 %5334, 3
  %5336 = extractvalue %dx.types.CBufRet.i32 %5334, 2
  %5337 = add i32 %5336, 0
  %5338 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5337, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5339 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5338, %dx.types.Handle %97, float %5249, float %5250, float undef, float undef, i32 0, i32 0, i32 undef, float %5212, float %5213, float undef, float %5216, float %5217, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5340 = extractvalue %dx.types.ResRet.f32 %5339, 0
  %5341 = extractvalue %dx.types.ResRet.f32 %5339, 1
  %5342 = extractvalue %dx.types.ResRet.f32 %5339, 2
  %5343 = extractvalue %dx.types.ResRet.f32 %5339, 3
  %5344 = and i32 %5335, 255
  %5345 = uitofp i32 %5344 to float
  %5346 = lshr i32 %5335, 8
  %5347 = and i32 %5346, 255
  %5348 = uitofp i32 %5347 to float
  %5349 = lshr i32 %5335, 16
  %5350 = and i32 %5349, 255
  %5351 = uitofp i32 %5350 to float
  %5352 = fmul fast float %5351, 0x3F70101000000000
  %5353 = fmul fast float %5340, %5345
  %5354 = fadd fast float %5353, %5348
  %5355 = fmul fast float %5354, 0x3F70101000000000
  %5356 = fadd fast float %5341, -5.000000e-01
  %5357 = fadd fast float %5343, -5.000000e-01
  %5358 = fmul fast float %5356, %5352
  %5359 = fmul fast float %5357, %5352
  %5360 = fadd fast float %5358, 5.000000e-01
  %5361 = fadd fast float %5359, 5.000000e-01
  %5362 = fmul fast float %5360, 2.000000e+00
  %5363 = fadd fast float %5362, -1.000000e+00
  %5364 = fmul fast float %5361, 2.000000e+00
  %5365 = fadd fast float %5364, -1.000000e+00
  %5366 = fadd fast float %5363, %5365
  %5367 = fmul fast float %5366, 5.000000e-01
  %5368 = fsub fast float %5363, %5365
  %5369 = fmul fast float %5368, 5.000000e-01
  %5370 = call float @dx.op.unary.f32(i32 6, float %5367)  ; FAbs(value)
  %5371 = fsub fast float 1.000000e+00, %5370
  %5372 = call float @dx.op.unary.f32(i32 6, float %5369)  ; FAbs(value)
  %5373 = fsub fast float %5371, %5372
  %5374 = call float @dx.op.dot3.f32(i32 55, float %5367, float %5369, float %5373, float %5367, float %5369, float %5373)  ; Dot3(ax,ay,az,bx,by,bz)
  %5375 = call float @dx.op.unary.f32(i32 25, float %5374)  ; Rsqrt(value)
  %5376 = fmul fast float %5367, %5375
  %5377 = fmul fast float %5369, %5375
  %5378 = select i1 %5205, i32 %5195, i32 %5196
  %5379 = select i1 %5203, i32 %5194, i32 %5378
  %5380 = sitofp i32 %5379 to float
  %5381 = fmul fast float %5373, %5380
  %5382 = fmul fast float %5381, %5375
  %5383 = select i1 %5205, float %5382, float %5377
  %5384 = select i1 %5205, float %5377, float %5382
  %5385 = select i1 %5203, float %5382, float %5376
  %5386 = select i1 %5203, float %5377, float %5383
  %5387 = select i1 %5203, float %5376, float %5384
  %5388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5389 = extractvalue %dx.types.CBufRet.f32 %5388, 0
  %5390 = fptoui float %5389 to i32
  %5391 = add i32 %5390, 0
  %5392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5393 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5392, %dx.types.Handle %97, float %5249, float %5250, float undef, float undef, i32 0, i32 0, i32 undef, float %5212, float %5213, float undef, float %5216, float %5217, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5394 = extractvalue %dx.types.ResRet.f32 %5393, 0
  %5395 = fsub fast float %5322, %5152
  %5396 = fsub fast float %5323, %5153
  %5397 = fsub fast float %5324, %5154
  %5398 = fmul fast float %5395, %5294
  %5399 = fmul fast float %5396, %5294
  %5400 = fmul fast float %5397, %5294
  %5401 = fadd fast float %5398, %5152
  %5402 = fadd fast float %5399, %5153
  %5403 = fadd fast float %5400, %5154
  %5404 = fsub fast float %5331, %5149
  %5405 = fsub fast float %5332, %5150
  %5406 = fsub fast float %5333, %5151
  %5407 = fmul fast float %5404, %5294
  %5408 = fmul fast float %5405, %5294
  %5409 = fmul fast float %5406, %5294
  %5410 = fadd fast float %5407, %5149
  %5411 = fadd fast float %5408, %5150
  %5412 = fadd fast float %5409, %5151
  %5413 = fadd fast float %5385, %5146
  %5414 = fadd fast float %5386, %5147
  %5415 = fadd fast float %5387, %5148
  %5416 = call float @dx.op.dot3.f32(i32 55, float %5413, float %5414, float %5415, float %5413, float %5414, float %5415)  ; Dot3(ax,ay,az,bx,by,bz)
  %5417 = call float @dx.op.unary.f32(i32 25, float %5416)  ; Rsqrt(value)
  %5418 = fmul fast float %5417, %5413
  %5419 = fmul fast float %5417, %5414
  %5420 = fmul fast float %5417, %5415
  %5421 = fsub fast float %5418, %5146
  %5422 = fsub fast float %5419, %5147
  %5423 = fsub fast float %5420, %5148
  %5424 = fmul fast float %5421, %5294
  %5425 = fmul fast float %5422, %5294
  %5426 = fmul fast float %5423, %5294
  %5427 = fadd fast float %5424, %5146
  %5428 = fadd fast float %5425, %5147
  %5429 = fadd fast float %5426, %5148
  %5430 = call float @dx.op.binary.f32(i32 36, float %5156, float %5342)  ; FMin(a,b)
  %5431 = fsub fast float %5430, %5156
  %5432 = fmul fast float %5431, %5294
  %5433 = fadd fast float %5432, %5156
  %5434 = fsub fast float %5355, %5155
  %5435 = fmul fast float %5434, %5294
  %5436 = fadd fast float %5435, %5155
  %5437 = fsub fast float %5394, %4761
  %5438 = fsub fast float %5394, %4762
  %5439 = fsub fast float %5394, %4763
  %5440 = fmul fast float %5437, %5294
  %5441 = fmul fast float %5438, %5294
  %5442 = fmul fast float %5439, %5294
  %5443 = fadd fast float %5440, %4761
  %5444 = fadd fast float %5441, %4762
  %5445 = fadd fast float %5442, %4763
  br label %5446

; <label>:5446                                    ; preds = %5292, %5254, %5145, %4861
  %5447 = phi float [ %5427, %5292 ], [ %5146, %5254 ], [ %5146, %5145 ], [ %4675, %4861 ]
  %5448 = phi float [ %5428, %5292 ], [ %5147, %5254 ], [ %5147, %5145 ], [ %4676, %4861 ]
  %5449 = phi float [ %5429, %5292 ], [ %5148, %5254 ], [ %5148, %5145 ], [ %4677, %4861 ]
  %5450 = phi float [ %5410, %5292 ], [ %5149, %5254 ], [ %5149, %5145 ], [ %4717, %4861 ]
  %5451 = phi float [ %5411, %5292 ], [ %5150, %5254 ], [ %5150, %5145 ], [ %4718, %4861 ]
  %5452 = phi float [ %5412, %5292 ], [ %5151, %5254 ], [ %5151, %5145 ], [ %4719, %4861 ]
  %5453 = phi float [ %5443, %5292 ], [ %4761, %5254 ], [ %4761, %5145 ], [ %4761, %4861 ]
  %5454 = phi float [ %5444, %5292 ], [ %4762, %5254 ], [ %4762, %5145 ], [ %4762, %4861 ]
  %5455 = phi float [ %5445, %5292 ], [ %4763, %5254 ], [ %4763, %5145 ], [ %4763, %4861 ]
  %5456 = phi float [ %5401, %5292 ], [ %5152, %5254 ], [ %5152, %5145 ], [ %4757, %4861 ]
  %5457 = phi float [ %5402, %5292 ], [ %5153, %5254 ], [ %5153, %5145 ], [ %4758, %4861 ]
  %5458 = phi float [ %5403, %5292 ], [ %5154, %5254 ], [ %5154, %5145 ], [ %4759, %4861 ]
  %5459 = phi float [ %5436, %5292 ], [ %5155, %5254 ], [ %5155, %5145 ], [ %4720, %4861 ]
  %5460 = phi float [ %5433, %5292 ], [ %5156, %5254 ], [ %5156, %5145 ], [ %4693, %4861 ]
  %5461 = fcmp fast une float %4865, 0.000000e+00
  %5462 = call float @dx.op.dot3.f32(i32 55, float %180, float %181, float %182, float %180, float %181, float %182)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = call float @dx.op.unary.f32(i32 25, float %5462)  ; Rsqrt(value)
  br i1 %5461, label %5471, label %5464

; <label>:5464                                    ; preds = %5446
  %5465 = fmul fast float %5463, %180
  %5466 = fmul fast float %5463, %181
  %5467 = fmul fast float %5463, %182
  %5468 = fsub fast float -0.000000e+00, %5465
  %5469 = fsub fast float -0.000000e+00, %5466
  %5470 = fsub fast float -0.000000e+00, %5467
  br label %5638

; <label>:5471                                    ; preds = %5446
  %5472 = fmul fast float %180, %5463
  %5473 = fsub fast float -0.000000e+00, %5472
  %5474 = fmul fast float %181, %5463
  %5475 = fsub fast float -0.000000e+00, %5474
  %5476 = fmul fast float %182, %5463
  %5477 = fsub fast float -0.000000e+00, %5476
  %5478 = call float @dx.op.dot3.f32(i32 55, float %5473, float %5475, float %5477, float %108, float %109, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = fmul fast float %4865, 2.500000e+00
  %5480 = call float @dx.op.unary.f32(i32 7, float %5479)  ; Saturate(value)
  %5481 = fmul fast float %4865, 0x4013FFFFE0000000
  %5482 = fadd fast float %5481, 0xBFFFFFFFE0000000
  %5483 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5484 = fmul fast float %4865, 0x4004000020000000
  %5485 = fadd fast float %5484, 0xBFF8000040000000
  %5486 = call float @dx.op.unary.f32(i32 7, float %5485)  ; Saturate(value)
  %5487 = fmul fast float %4699, 1.000000e+01
  %5488 = call float @dx.op.unary.f32(i32 7, float %5487)  ; Saturate(value)
  %5489 = fmul fast float %5488, 2.000000e+00
  %5490 = fsub fast float 3.000000e+00, %5489
  %5491 = fmul fast float %5488, %5488
  %5492 = fmul fast float %5491, %5490
  %5493 = fsub fast float 1.000000e+00, %5492
  %5494 = fsub fast float 0x3FE3333340000000, %5459
  %5495 = fmul fast float %5494, 0x400AAAAAA0000000
  %5496 = call float @dx.op.unary.f32(i32 7, float %5495)  ; Saturate(value)
  %5497 = fmul fast float %5493, %5496
  %5498 = fmul fast float %5456, 0x3FEA2B8620000000
  %5499 = fmul fast float %5457, 0x3FEA2B8620000000
  %5500 = fmul fast float %5458, 0x3FEA2B8620000000
  %5501 = fadd fast float %5498, 0x3FC81DFBA0000000
  %5502 = fmul fast float %5501, %5456
  %5503 = fadd fast float %5502, 0x3F910E6020000000
  %5504 = fadd fast float %5499, 0x3FC81DFBA0000000
  %5505 = fmul fast float %5504, %5457
  %5506 = fadd fast float %5505, 0x3F910E6020000000
  %5507 = fadd fast float %5500, 0x3FC81DFBA0000000
  %5508 = fmul fast float %5507, %5458
  %5509 = fadd fast float %5508, 0x3F910E6020000000
  %5510 = call float @dx.op.unary.f32(i32 7, float %5503)  ; Saturate(value)
  %5511 = call float @dx.op.unary.f32(i32 7, float %5506)  ; Saturate(value)
  %5512 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5513 = fsub fast float %5510, %5456
  %5514 = fsub fast float %5511, %5457
  %5515 = fsub fast float %5512, %5458
  %5516 = fmul fast float %5513, %5480
  %5517 = fmul fast float %5516, %5497
  %5518 = fmul fast float %5514, %5480
  %5519 = fmul fast float %5518, %5497
  %5520 = fmul fast float %5515, %5480
  %5521 = fmul fast float %5520, %5497
  %5522 = fadd fast float %5517, %5456
  %5523 = fadd fast float %5519, %5457
  %5524 = fadd fast float %5521, %5458
  %5525 = fmul fast float %5460, %5460
  %5526 = fmul fast float %5525, %5525
  %5527 = fadd fast float %5483, 1.000000e+00
  %5528 = fsub fast float %5527, %5497
  %5529 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5530 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = call float @dx.op.unary.f32(i32 7, float %5530)  ; Saturate(value)
  %5532 = fsub fast float 1.000000e+00, %5526
  %5533 = call float @dx.op.binary.f32(i32 36, float %5529, float %5532)  ; FMin(a,b)
  %5534 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  %5535 = call float @dx.op.binary.f32(i32 35, float %5533, float %5534)  ; FMax(a,b)
  %5536 = fadd fast float %5531, 0xBFE4CCCCC0000000
  %5537 = fmul fast float %5536, 0x4006DB6DA0000000
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5539 = fmul fast float %5538, 2.000000e+00
  %5540 = fsub fast float 3.000000e+00, %5539
  %5541 = bitcast float %5450 to i32
  %5542 = ashr i32 %5541, 1
  %5543 = add nsw i32 %5542, 532487669
  %5544 = bitcast i32 %5543 to float
  %5545 = fsub fast float 1.000000e+00, %5544
  %5546 = bitcast float %5545 to i32
  %5547 = sub nsw i32 2129859010, %5546
  %5548 = bitcast i32 %5547 to float
  %5549 = fmul fast float %5548, 2.000000e+00
  %5550 = bitcast float %5451 to i32
  %5551 = ashr i32 %5550, 1
  %5552 = add nsw i32 %5551, 532487669
  %5553 = bitcast i32 %5552 to float
  %5554 = fsub fast float 1.000000e+00, %5553
  %5555 = bitcast float %5554 to i32
  %5556 = sub nsw i32 2129859010, %5555
  %5557 = bitcast i32 %5556 to float
  %5558 = fmul fast float %5557, 2.000000e+00
  %5559 = bitcast float %5452 to i32
  %5560 = ashr i32 %5559, 1
  %5561 = add nsw i32 %5560, 532487669
  %5562 = bitcast i32 %5561 to float
  %5563 = fsub fast float 1.000000e+00, %5562
  %5564 = bitcast float %5563 to i32
  %5565 = sub nsw i32 2129859010, %5564
  %5566 = bitcast i32 %5565 to float
  %5567 = fmul fast float %5566, 2.000000e+00
  %5568 = fsub fast float 0x4002A9FBE0000000, %5549
  %5569 = fadd fast float %5549, 0x3FD54FDF00000000
  %5570 = bitcast float %5569 to i32
  %5571 = sub nsw i32 2129859010, %5570
  %5572 = bitcast i32 %5571 to float
  %5573 = fmul fast float %5572, %5568
  %5574 = fmul fast float %5573, %5573
  %5575 = fsub fast float 0x4002A9FBE0000000, %5558
  %5576 = fadd fast float %5558, 0x3FD54FDF00000000
  %5577 = bitcast float %5576 to i32
  %5578 = sub nsw i32 2129859010, %5577
  %5579 = bitcast i32 %5578 to float
  %5580 = fmul fast float %5579, %5575
  %5581 = fmul fast float %5580, %5580
  %5582 = fsub fast float 0x4002A9FBE0000000, %5567
  %5583 = fadd fast float %5567, 0x3FD54FDF00000000
  %5584 = bitcast float %5583 to i32
  %5585 = sub nsw i32 2129859010, %5584
  %5586 = bitcast i32 %5585 to float
  %5587 = fmul fast float %5586, %5582
  %5588 = fmul fast float %5587, %5587
  %5589 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5574)  ; FMax(a,b)
  %5590 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5581)  ; FMax(a,b)
  %5591 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5588)  ; FMax(a,b)
  %5592 = fsub fast float 1.000000e+00, %5478
  %5593 = fadd fast float %5592, %5493
  %5594 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5595 = fsub fast float 1.000000e+00, %4846
  %5596 = fmul fast float %5535, %5595
  %5597 = fmul fast float %5538, %5538
  %5598 = fmul fast float %5597, %5596
  %5599 = fmul fast float %5598, %5540
  %5600 = fmul fast float %5595, 0xBFE99999A0000000
  %5601 = fmul fast float %5600, %5480
  %5602 = fmul fast float %5601, %5497
  %5603 = fadd fast float %5602, 1.000000e+00
  %5604 = fadd fast float %5459, -1.000000e+00
  %5605 = fmul fast float %5603, %5604
  %5606 = fadd fast float %5605, 1.000000e+00
  %5607 = fsub fast float %5589, %5450
  %5608 = fsub fast float %5590, %5451
  %5609 = fsub fast float %5591, %5452
  %5610 = fmul fast float %5599, %5607
  %5611 = fmul fast float %5599, %5608
  %5612 = fmul fast float %5599, %5609
  %5613 = fadd fast float %5610, %5450
  %5614 = fadd fast float %5611, %5451
  %5615 = fadd fast float %5612, %5452
  %5616 = fsub fast float %108, %5447
  %5617 = fsub fast float %109, %5448
  %5618 = fsub fast float %110, %5449
  %5619 = fmul fast float %5599, %5616
  %5620 = fmul fast float %5599, %5617
  %5621 = fmul fast float %5599, %5618
  %5622 = fadd fast float %5619, %5447
  %5623 = fadd fast float %5620, %5448
  %5624 = fadd fast float %5621, %5449
  %5625 = fmul fast float %5599, %5594
  %5626 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  %5627 = fsub fast float 1.000000e+00, %5626
  %5628 = fmul fast float %5625, %5627
  %5629 = fadd fast float %5628, %5626
  %5630 = fsub fast float 1.000000e+00, %5460
  %5631 = fmul fast float %5599, %5630
  %5632 = fadd fast float %5631, %5460
  %5633 = call float @dx.op.dot3.f32(i32 55, float %5622, float %5623, float %5624, float %5622, float %5623, float %5624)  ; Dot3(ax,ay,az,bx,by,bz)
  %5634 = call float @dx.op.unary.f32(i32 25, float %5633)  ; Rsqrt(value)
  %5635 = fmul fast float %5622, %5634
  %5636 = fmul fast float %5623, %5634
  %5637 = fmul fast float %5624, %5634
  br label %5638

; <label>:5638                                    ; preds = %5471, %5464
  %5639 = phi float [ %5470, %5464 ], [ %5477, %5471 ]
  %5640 = phi float [ %5469, %5464 ], [ %5475, %5471 ]
  %5641 = phi float [ %5468, %5464 ], [ %5473, %5471 ]
  %5642 = phi float [ %5467, %5464 ], [ %5476, %5471 ]
  %5643 = phi float [ %5466, %5464 ], [ %5474, %5471 ]
  %5644 = phi float [ %5465, %5464 ], [ %5472, %5471 ]
  %5645 = phi float [ %5447, %5464 ], [ %5635, %5471 ]
  %5646 = phi float [ %5448, %5464 ], [ %5636, %5471 ]
  %5647 = phi float [ %5449, %5464 ], [ %5637, %5471 ]
  %5648 = phi float [ %5450, %5464 ], [ %5613, %5471 ]
  %5649 = phi float [ %5451, %5464 ], [ %5614, %5471 ]
  %5650 = phi float [ %5452, %5464 ], [ %5615, %5471 ]
  %5651 = phi float [ %5456, %5464 ], [ %5522, %5471 ]
  %5652 = phi float [ %5457, %5464 ], [ %5523, %5471 ]
  %5653 = phi float [ %5458, %5464 ], [ %5524, %5471 ]
  %5654 = phi float [ %5459, %5464 ], [ %5629, %5471 ]
  %5655 = phi float [ %5460, %5464 ], [ %5632, %5471 ]
  %5656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5657 = extractvalue %dx.types.CBufRet.f32 %5656, 2
  %5658 = extractvalue %dx.types.CBufRet.f32 %5656, 3
  %5659 = fmul fast float %129, %5657
  %5660 = fmul fast float %131, %5658
  %5661 = fsub fast float 1.000000e+00, %5659
  %5662 = fsub fast float 1.000000e+00, %5660
  %5663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5663, 0
  %5665 = extractvalue %dx.types.CBufRet.f32 %5663, 1
  %5666 = extractvalue %dx.types.CBufRet.f32 %5663, 2
  %5667 = fmul fast float %5661, %5664
  %5668 = fmul fast float %5661, %5665
  %5669 = fmul fast float %5661, %5666
  %5670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5671 = extractvalue %dx.types.CBufRet.f32 %5670, 0
  %5672 = extractvalue %dx.types.CBufRet.f32 %5670, 1
  %5673 = extractvalue %dx.types.CBufRet.f32 %5670, 2
  %5674 = fmul fast float %5662, %5671
  %5675 = fmul fast float %5662, %5672
  %5676 = fmul fast float %5662, %5673
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 0
  %5679 = extractvalue %dx.types.CBufRet.f32 %5677, 1
  %5680 = extractvalue %dx.types.CBufRet.f32 %5677, 2
  %5681 = fadd fast float %5674, %5678
  %5682 = fadd fast float %5681, %5667
  %5683 = fadd fast float %5675, %5679
  %5684 = fadd fast float %5683, %5668
  %5685 = fadd fast float %5676, %5680
  %5686 = fadd fast float %5685, %5669
  %5687 = fmul fast float %5682, %92
  %5688 = fmul fast float %5684, %92
  %5689 = fmul fast float %5686, %92
  %5690 = select i1 %254, float 0.000000e+00, float %5650
  %5691 = call float @dx.op.dot3.f32(i32 55, float %5645, float %5646, float %5647, float %5641, float %5640, float %5639)  ; Dot3(ax,ay,az,bx,by,bz)
  %5692 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5693 = call float @dx.op.dot3.f32(i32 55, float %5644, float %5643, float %5642, float %5645, float %5646, float %5647)  ; Dot3(ax,ay,az,bx,by,bz)
  %5694 = fmul fast float %5693, 2.000000e+00
  %5695 = fmul fast float %5694, %5645
  %5696 = fmul fast float %5694, %5646
  %5697 = fmul fast float %5694, %5647
  %5698 = fsub fast float %5644, %5695
  %5699 = fsub fast float %5643, %5696
  %5700 = fsub fast float %5642, %5697
  %5701 = call float @dx.op.binary.f32(i32 36, float %5655, float 1.000000e+00)  ; FMin(a,b)
  %5702 = fsub fast float 1.000000e+00, %5655
  %5703 = bitcast float %5702 to i32
  %5704 = sub nsw i32 2129859010, %5703
  %5705 = bitcast i32 %5704 to float
  %5706 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5707 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5708 = fcmp fast oeq float %5707, 0.000000e+00
  %5709 = fcmp fast oeq float %5706, 0.000000e+00
  %5710 = or i1 %5709, %5708
  br i1 %5710, label %5740, label %5711

; <label>:5711                                    ; preds = %5638
  %5712 = fsub fast float -0.000000e+00, %75
  %5713 = fsub fast float -0.000000e+00, %73
  %5714 = call float @dx.op.unary.f32(i32 24, float %5707)  ; Sqrt(value)
  %5715 = fdiv fast float %5714, %5706
  %5716 = fcmp fast ogt float %5715, 0x3FFB6F8900000000
  %5717 = select i1 %5716, float 0x3FFB6F8900000000, float %5715
  %5718 = fmul fast float %5717, 0x3FE8A23460000000
  %5719 = call float @dx.op.unary.f32(i32 7, float %5718)  ; Saturate(value)
  %5720 = call float @dx.op.binary.f32(i32 35, float %5717, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5721 = fmul fast float %5719, %5706
  %5722 = fmul fast float %5720, 0x3FF279A740000000
  %5723 = fadd fast float %5722, -1.000000e+00
  %5724 = call float @dx.op.dot3.f32(i32 55, float %5712, float %5713, float %74, float %5712, float %5713, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5725 = call float @dx.op.unary.f32(i32 25, float %5724)  ; Rsqrt(value)
  %5726 = fmul fast float %5725, %5712
  %5727 = fmul fast float %5725, %5713
  %5728 = fmul fast float %5725, %74
  %5729 = fmul fast float %5723, %5723
  %5730 = fsub fast float 1.000000e+00, %5729
  %5731 = fmul fast float %5720, 0x40005F8BE0000000
  %5732 = fsub fast float 0x400C5BF8A0000000, %5731
  %5733 = fdiv fast float %5721, %5732
  %5734 = fmul fast float %5733, 0x3FEE31C3C0000000
  %5735 = fmul fast float %5734, %5730
  %5736 = fmul fast float %5720, 0x3FDACB7480000000
  %5737 = fadd fast float %5736, 0xBFD7347680000000
  %5738 = fmul fast float %5737, %5733
  %5739 = fmul fast float %5738, %5730
  br label %5740

; <label>:5740                                    ; preds = %5711, %5638
  %5741 = phi float [ %5726, %5711 ], [ 0.000000e+00, %5638 ]
  %5742 = phi float [ %5727, %5711 ], [ 0.000000e+00, %5638 ]
  %5743 = phi float [ %5728, %5711 ], [ 0.000000e+00, %5638 ]
  %5744 = phi float [ %5735, %5711 ], [ 0.000000e+00, %5638 ]
  %5745 = phi float [ %5739, %5711 ], [ 0.000000e+00, %5638 ]
  %5746 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %5743, float %5645, float %5646, float %5647)  ; Dot3(ax,ay,az,bx,by,bz)
  %5747 = fmul fast float %5746, %5746
  %5748 = fmul fast float %5747, 0x3FEE471020000000
  %5749 = fadd fast float %5748, 0xBFD42F6020000000
  %5750 = fmul fast float %5706, 0x3FD20DD760000000
  %5751 = fmul fast float %5749, %5745
  %5752 = fmul fast float %5744, 0x3FDF454380000000
  %5753 = fmul fast float %5752, %5746
  %5754 = fadd fast float %5753, %5750
  %5755 = fadd fast float %5754, %5751
  %5756 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %5743, float %5698, float %5699, float %5700)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = fmul fast float %5756, 0x3FDF454380000000
  %5758 = fmul fast float %5756, %5756
  %5759 = fmul fast float %5758, 0x3FEE471020000000
  %5760 = fadd fast float %5759, 0xBFD42F6020000000
  %5761 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5744, float %5745, float 0x3FD20DD760000000, float %5757, float %5760)  ; Dot3(ax,ay,az,bx,by,bz)
  %5762 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5763 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5764 = fcmp fast oeq float %5763, 0.000000e+00
  %5765 = fcmp fast oeq float %5762, 0.000000e+00
  %5766 = or i1 %5765, %5764
  br i1 %5766, label %5796, label %5767

; <label>:5767                                    ; preds = %5740
  %5768 = fsub fast float -0.000000e+00, %71
  %5769 = fsub fast float -0.000000e+00, %69
  %5770 = call float @dx.op.unary.f32(i32 24, float %5763)  ; Sqrt(value)
  %5771 = fdiv fast float %5770, %5762
  %5772 = fcmp fast ogt float %5771, 0x3FFB6F8900000000
  %5773 = select i1 %5772, float 0x3FFB6F8900000000, float %5771
  %5774 = fmul fast float %5773, 0x3FE8A23460000000
  %5775 = call float @dx.op.unary.f32(i32 7, float %5774)  ; Saturate(value)
  %5776 = call float @dx.op.binary.f32(i32 35, float %5773, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5777 = fmul fast float %5775, %5762
  %5778 = fmul fast float %5776, 0x3FF279A740000000
  %5779 = fadd fast float %5778, -1.000000e+00
  %5780 = call float @dx.op.dot3.f32(i32 55, float %5768, float %5769, float %70, float %5768, float %5769, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = call float @dx.op.unary.f32(i32 25, float %5780)  ; Rsqrt(value)
  %5782 = fmul fast float %5781, %5768
  %5783 = fmul fast float %5781, %5769
  %5784 = fmul fast float %5781, %70
  %5785 = fmul fast float %5779, %5779
  %5786 = fsub fast float 1.000000e+00, %5785
  %5787 = fmul fast float %5776, 0x40005F8BE0000000
  %5788 = fsub fast float 0x400C5BF8A0000000, %5787
  %5789 = fdiv fast float %5777, %5788
  %5790 = fmul fast float %5789, 0x3FEE31C3C0000000
  %5791 = fmul fast float %5790, %5786
  %5792 = fmul fast float %5776, 0x3FDACB7480000000
  %5793 = fadd fast float %5792, 0xBFD7347680000000
  %5794 = fmul fast float %5793, %5789
  %5795 = fmul fast float %5794, %5786
  br label %5796

; <label>:5796                                    ; preds = %5767, %5740
  %5797 = phi float [ %5782, %5767 ], [ 0.000000e+00, %5740 ]
  %5798 = phi float [ %5783, %5767 ], [ 0.000000e+00, %5740 ]
  %5799 = phi float [ %5784, %5767 ], [ 0.000000e+00, %5740 ]
  %5800 = phi float [ %5791, %5767 ], [ 0.000000e+00, %5740 ]
  %5801 = phi float [ %5795, %5767 ], [ 0.000000e+00, %5740 ]
  %5802 = call float @dx.op.dot3.f32(i32 55, float %5797, float %5798, float %5799, float %5645, float %5646, float %5647)  ; Dot3(ax,ay,az,bx,by,bz)
  %5803 = fmul fast float %5802, %5802
  %5804 = fmul fast float %5803, 0x3FEE471020000000
  %5805 = fadd fast float %5804, 0xBFD42F6020000000
  %5806 = fmul fast float %5762, 0x3FD20DD760000000
  %5807 = fmul fast float %5805, %5801
  %5808 = fmul fast float %5800, 0x3FDF454380000000
  %5809 = fmul fast float %5808, %5802
  %5810 = fadd fast float %5809, %5806
  %5811 = fadd fast float %5810, %5807
  %5812 = call float @dx.op.dot3.f32(i32 55, float %5797, float %5798, float %5799, float %5698, float %5699, float %5700)  ; Dot3(ax,ay,az,bx,by,bz)
  %5813 = fmul fast float %5812, 0x3FDF454380000000
  %5814 = fmul fast float %5812, %5812
  %5815 = fmul fast float %5814, 0x3FEE471020000000
  %5816 = fadd fast float %5815, 0xBFD42F6020000000
  %5817 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5800, float %5801, float 0x3FD20DD760000000, float %5813, float %5816)  ; Dot3(ax,ay,az,bx,by,bz)
  %5818 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %64)  ; FMax(a,b)
  %5819 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5820 = fcmp fast oeq float %5819, 0.000000e+00
  %5821 = fcmp fast oeq float %5818, 0.000000e+00
  %5822 = or i1 %5821, %5820
  br i1 %5822, label %5852, label %5823

; <label>:5823                                    ; preds = %5796
  %5824 = fsub fast float -0.000000e+00, %67
  %5825 = fsub fast float -0.000000e+00, %65
  %5826 = call float @dx.op.unary.f32(i32 24, float %5819)  ; Sqrt(value)
  %5827 = fdiv fast float %5826, %5818
  %5828 = fcmp fast ogt float %5827, 0x3FFB6F8900000000
  %5829 = select i1 %5828, float 0x3FFB6F8900000000, float %5827
  %5830 = fmul fast float %5829, 0x3FE8A23460000000
  %5831 = call float @dx.op.unary.f32(i32 7, float %5830)  ; Saturate(value)
  %5832 = call float @dx.op.binary.f32(i32 35, float %5829, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5833 = fmul fast float %5831, %5818
  %5834 = fmul fast float %5832, 0x3FF279A740000000
  %5835 = fadd fast float %5834, -1.000000e+00
  %5836 = call float @dx.op.dot3.f32(i32 55, float %5824, float %5825, float %66, float %5824, float %5825, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5837 = call float @dx.op.unary.f32(i32 25, float %5836)  ; Rsqrt(value)
  %5838 = fmul fast float %5837, %5824
  %5839 = fmul fast float %5837, %5825
  %5840 = fmul fast float %5837, %66
  %5841 = fmul fast float %5835, %5835
  %5842 = fsub fast float 1.000000e+00, %5841
  %5843 = fmul fast float %5832, 0x40005F8BE0000000
  %5844 = fsub fast float 0x400C5BF8A0000000, %5843
  %5845 = fdiv fast float %5833, %5844
  %5846 = fmul fast float %5845, 0x3FEE31C3C0000000
  %5847 = fmul fast float %5846, %5842
  %5848 = fmul fast float %5832, 0x3FDACB7480000000
  %5849 = fadd fast float %5848, 0xBFD7347680000000
  %5850 = fmul fast float %5849, %5845
  %5851 = fmul fast float %5850, %5842
  br label %5852

; <label>:5852                                    ; preds = %5823, %5796
  %5853 = phi float [ %5838, %5823 ], [ 0.000000e+00, %5796 ]
  %5854 = phi float [ %5839, %5823 ], [ 0.000000e+00, %5796 ]
  %5855 = phi float [ %5840, %5823 ], [ 0.000000e+00, %5796 ]
  %5856 = phi float [ %5847, %5823 ], [ 0.000000e+00, %5796 ]
  %5857 = phi float [ %5851, %5823 ], [ 0.000000e+00, %5796 ]
  %5858 = call float @dx.op.dot3.f32(i32 55, float %5853, float %5854, float %5855, float %5645, float %5646, float %5647)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = fmul fast float %5858, %5858
  %5860 = fmul fast float %5859, 0x3FEE471020000000
  %5861 = fadd fast float %5860, 0xBFD42F6020000000
  %5862 = fmul fast float %5818, 0x3FD20DD760000000
  %5863 = fmul fast float %5861, %5857
  %5864 = fmul fast float %5856, 0x3FDF454380000000
  %5865 = fmul fast float %5864, %5858
  %5866 = fadd fast float %5865, %5862
  %5867 = fadd fast float %5866, %5863
  %5868 = call float @dx.op.dot3.f32(i32 55, float %5853, float %5854, float %5855, float %5698, float %5699, float %5700)  ; Dot3(ax,ay,az,bx,by,bz)
  %5869 = fmul fast float %5868, 0x3FDF454380000000
  %5870 = fmul fast float %5868, %5868
  %5871 = fmul fast float %5870, 0x3FEE471020000000
  %5872 = fadd fast float %5871, 0xBFD42F6020000000
  %5873 = call float @dx.op.dot3.f32(i32 55, float %5818, float %5856, float %5857, float 0x3FD20DD760000000, float %5869, float %5872)  ; Dot3(ax,ay,az,bx,by,bz)
  %5874 = call float @dx.op.binary.f32(i32 35, float %5755, float 0.000000e+00)  ; FMax(a,b)
  %5875 = call float @dx.op.binary.f32(i32 35, float %5811, float 0.000000e+00)  ; FMax(a,b)
  %5876 = call float @dx.op.binary.f32(i32 35, float %5867, float 0.000000e+00)  ; FMax(a,b)
  %5877 = call float @dx.op.binary.f32(i32 35, float %5761, float 0.000000e+00)  ; FMax(a,b)
  %5878 = call float @dx.op.binary.f32(i32 35, float %5817, float 0.000000e+00)  ; FMax(a,b)
  %5879 = call float @dx.op.binary.f32(i32 35, float %5873, float 0.000000e+00)  ; FMax(a,b)
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = call float @dx.op.binary.f32(i32 36, float %5651, float %5881)  ; FMin(a,b)
  %5883 = fsub fast float 1.000000e+00, %5701
  %5884 = fmul fast float %5882, %5883
  %5885 = fsub fast float 1.000000e+00, %5884
  %5886 = bitcast float %5885 to i32
  %5887 = sub nsw i32 2129859010, %5886
  %5888 = bitcast i32 %5887 to float
  %5889 = call float @dx.op.binary.f32(i32 36, float %5652, float %5881)  ; FMin(a,b)
  %5890 = fmul fast float %5889, %5883
  %5891 = fsub fast float 1.000000e+00, %5890
  %5892 = bitcast float %5891 to i32
  %5893 = sub nsw i32 2129859010, %5892
  %5894 = bitcast i32 %5893 to float
  %5895 = call float @dx.op.binary.f32(i32 36, float %5653, float %5881)  ; FMin(a,b)
  %5896 = fmul fast float %5895, %5883
  %5897 = fsub fast float 1.000000e+00, %5896
  %5898 = bitcast float %5897 to i32
  %5899 = sub nsw i32 2129859010, %5898
  %5900 = bitcast i32 %5899 to float
  %5901 = fmul fast float %5874, %5701
  %5902 = fmul fast float %5901, %5888
  %5903 = fmul fast float %5875, %5701
  %5904 = fmul fast float %5903, %5894
  %5905 = fmul fast float %5876, %5701
  %5906 = fmul fast float %5905, %5900
  %5907 = call float @dx.op.binary.f32(i32 36, float %5648, float %5881)  ; FMin(a,b)
  %5908 = fmul fast float %5907, %5883
  %5909 = fsub fast float 1.000000e+00, %5908
  %5910 = bitcast float %5909 to i32
  %5911 = sub nsw i32 2129859010, %5910
  %5912 = bitcast i32 %5911 to float
  %5913 = call float @dx.op.binary.f32(i32 36, float %5649, float %5881)  ; FMin(a,b)
  %5914 = fmul fast float %5913, %5883
  %5915 = fsub fast float 1.000000e+00, %5914
  %5916 = bitcast float %5915 to i32
  %5917 = sub nsw i32 2129859010, %5916
  %5918 = bitcast i32 %5917 to float
  %5919 = call float @dx.op.binary.f32(i32 36, float %5690, float %5881)  ; FMin(a,b)
  %5920 = fmul fast float %5919, %5883
  %5921 = fsub fast float 1.000000e+00, %5920
  %5922 = bitcast float %5921 to i32
  %5923 = sub nsw i32 2129859010, %5922
  %5924 = bitcast i32 %5923 to float
  %5925 = fmul fast float %5877, %5701
  %5926 = fmul fast float %5925, %5912
  %5927 = fmul fast float %5878, %5701
  %5928 = fmul fast float %5927, %5918
  %5929 = fmul fast float %5879, %5701
  %5930 = fmul fast float %5929, %5924
  %5931 = call float @dx.op.dot3.f32(i32 55, float %5902, float %5904, float %5906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5932 = select i1 %254, float 0.000000e+00, float %5902
  %5933 = select i1 %254, float %5931, float %5904
  %5934 = select i1 %254, float 0.000000e+00, float %5906
  %5935 = call float @dx.op.dot3.f32(i32 55, float %5926, float %5928, float %5930, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5936 = select i1 %254, float 0.000000e+00, float %5926
  %5937 = select i1 %254, float %5935, float %5928
  %5938 = select i1 %254, float 0.000000e+00, float %5930
  %5939 = fmul fast float %3998, %3998
  %5940 = call float @dx.op.unary.f32(i32 7, float %5939)  ; Saturate(value)
  %5941 = fmul fast float %5692, 9.843750e-01
  %5942 = fmul fast float %5654, 9.843750e-01
  %5943 = fadd fast float %5941, 7.812500e-03
  %5944 = fadd fast float %5942, 7.812500e-03
  %5945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %5943, float %5944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5946 = extractvalue %dx.types.ResRet.f32 %5945, 0
  %5947 = extractvalue %dx.types.ResRet.f32 %5945, 1
  %5948 = extractvalue %dx.types.ResRet.f32 %5945, 2
  %5949 = extractvalue %dx.types.ResRet.f32 %5945, 3
  %5950 = fsub fast float 1.000000e+00, %5940
  %5951 = fsub fast float %5948, %5946
  %5952 = fsub fast float %5949, %5947
  %5953 = fmul fast float %5951, %5950
  %5954 = fmul fast float %5952, %5950
  %5955 = fadd fast float %5953, %5946
  %5956 = fadd fast float %5954, %5947
  %5957 = fmul fast float %5955, %5648
  %5958 = fmul fast float %5955, %5649
  %5959 = fmul fast float %5955, %5690
  %5960 = fadd fast float %5957, %5956
  %5961 = fadd fast float %5958, %5956
  %5962 = fadd fast float %5959, %5956
  %5963 = fcmp fast ogt float %4694, 0.000000e+00
  br i1 %5963, label %5964, label %5990

; <label>:5964                                    ; preds = %5852
  %5965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4694, float %5692, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5966 = extractvalue %dx.types.ResRet.f32 %5965, 0
  %5967 = extractvalue %dx.types.ResRet.f32 %5965, 1
  %5968 = extractvalue %dx.types.ResRet.f32 %5965, 2
  %5969 = fadd fast float %5966, -5.000000e-01
  %5970 = fadd fast float %5967, -5.000000e-01
  %5971 = fadd fast float %5968, -5.000000e-01
  %5972 = fsub fast float 1.000000e+00, %5648
  %5973 = fsub fast float 1.000000e+00, %5649
  %5974 = fsub fast float 1.000000e+00, %5690
  %5975 = fmul fast float %5648, 4.000000e+00
  %5976 = fmul fast float %5975, %5972
  %5977 = fmul fast float %5976, %5969
  %5978 = fmul fast float %5649, 4.000000e+00
  %5979 = fmul fast float %5978, %5973
  %5980 = fmul fast float %5979, %5970
  %5981 = fmul fast float %5690, 4.000000e+00
  %5982 = fmul fast float %5981, %5974
  %5983 = fmul fast float %5982, %5971
  %5984 = fadd fast float %5977, %5960
  %5985 = fadd fast float %5980, %5961
  %5986 = fadd fast float %5983, %5962
  %5987 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  %5988 = call float @dx.op.unary.f32(i32 7, float %5985)  ; Saturate(value)
  %5989 = call float @dx.op.unary.f32(i32 7, float %5986)  ; Saturate(value)
  br label %5990

; <label>:5990                                    ; preds = %5964, %5852
  %5991 = phi float [ %5987, %5964 ], [ %5960, %5852 ]
  %5992 = phi float [ %5988, %5964 ], [ %5961, %5852 ]
  %5993 = phi float [ %5989, %5964 ], [ %5962, %5852 ]
  %5994 = call float @dx.op.binary.f32(i32 35, float %5992, float %5993)  ; FMax(a,b)
  %5995 = call float @dx.op.binary.f32(i32 35, float %5991, float %5994)  ; FMax(a,b)
  %5996 = fsub fast float 1.000000e+00, %5995
  %5997 = fmul fast float %5996, %5932
  %5998 = fmul fast float %5996, %5933
  %5999 = fmul fast float %5996, %5934
  %6000 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5652, float %5653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6001 = fcmp fast ogt float %6000, 0x3E7FF19E20000000
  %6002 = fdiv fast float 1.000000e+00, %6000
  %6003 = select i1 %6001, float %6002, float 0.000000e+00
  %6004 = fmul fast float %6003, %5651
  %6005 = fmul fast float %6003, %5652
  %6006 = fmul fast float %6003, %5653
  %6007 = fadd fast float %6004, -1.000000e+00
  %6008 = fadd fast float %6005, -1.000000e+00
  %6009 = fadd fast float %6006, -1.000000e+00
  %6010 = fmul fast float %6007, 5.000000e-01
  %6011 = fmul fast float %6008, 5.000000e-01
  %6012 = fmul fast float %6009, 5.000000e-01
  %6013 = fadd fast float %6010, 1.000000e+00
  %6014 = fadd fast float %6011, 1.000000e+00
  %6015 = fadd fast float %6012, 1.000000e+00
  %6016 = call float @dx.op.binary.f32(i32 35, float %5692, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6017 = fdiv fast float %3998, %6016
  %6018 = fcmp fast olt float %4743, 1.270000e+02
  %6019 = fcmp fast olt float %4744, 1.270000e+02
  %6020 = fcmp fast olt float %4745, 1.270000e+02
  %6021 = fmul fast float %4743, 0xBFF7154760000000
  %6022 = fmul fast float %6021, %6017
  %6023 = fmul fast float %4744, 0xBFF7154760000000
  %6024 = fmul fast float %6023, %6017
  %6025 = fmul fast float %4745, 0xBFF7154760000000
  %6026 = fmul fast float %6025, %6017
  %6027 = call float @dx.op.unary.f32(i32 21, float %6022)  ; Exp(value)
  %6028 = call float @dx.op.unary.f32(i32 21, float %6024)  ; Exp(value)
  %6029 = call float @dx.op.unary.f32(i32 21, float %6026)  ; Exp(value)
  %6030 = call float @dx.op.unary.f32(i32 7, float %6027)  ; Saturate(value)
  %6031 = call float @dx.op.unary.f32(i32 7, float %6028)  ; Saturate(value)
  %6032 = call float @dx.op.unary.f32(i32 7, float %6029)  ; Saturate(value)
  %6033 = select i1 %6018, float %6030, float 0.000000e+00
  %6034 = select i1 %6019, float %6031, float 0.000000e+00
  %6035 = select i1 %6020, float %6032, float 0.000000e+00
  %6036 = fmul fast float %6033, %5996
  %6037 = fmul fast float %6034, %5996
  %6038 = fmul fast float %6035, %5996
  %6039 = fadd fast float %6036, -1.000000e+00
  %6040 = fadd fast float %6037, -1.000000e+00
  %6041 = fadd fast float %6038, -1.000000e+00
  %6042 = fmul fast float %6039, %4691
  %6043 = fmul fast float %6040, %4691
  %6044 = fmul fast float %6041, %4691
  %6045 = fadd fast float %6042, 1.000000e+00
  %6046 = fadd fast float %6043, 1.000000e+00
  %6047 = fadd fast float %6044, 1.000000e+00
  %6048 = fmul fast float %5649, 0x401CF23780000000
  %6049 = fadd fast float %6048, 0x3FF32641C0000000
  %6050 = fdiv fast float 1.000000e+00, %6049
  %6051 = call float @dx.op.dot3.f32(i32 55, float %5641, float %5640, float %5639, float %5645, float %5646, float %5647)  ; Dot3(ax,ay,az,bx,by,bz)
  %6052 = fmul fast float %6050, %6050
  %6053 = fmul fast float %6051, %6051
  %6054 = fsub fast float 1.000000e+00, %6053
  %6055 = fmul fast float %6052, %6054
  %6056 = fsub fast float 1.000000e+00, %6055
  %6057 = fcmp fast oge float %6056, 0.000000e+00
  %6058 = fmul fast float %6050, %5641
  %6059 = fmul fast float %6050, %5640
  %6060 = fmul fast float %6050, %5639
  %6061 = call float @dx.op.unary.f32(i32 24, float %6056)  ; Sqrt(value)
  %6062 = fmul fast float %6051, %6050
  %6063 = fadd fast float %6062, %6061
  %6064 = fmul fast float %6063, %5645
  %6065 = fmul fast float %6063, %5646
  %6066 = fmul fast float %6063, %5647
  %6067 = fsub fast float %6058, %6064
  %6068 = fsub fast float %6059, %6065
  %6069 = fsub fast float %6060, %6066
  %6070 = select i1 %6057, float %6067, float 0.000000e+00
  %6071 = select i1 %6057, float %6068, float 0.000000e+00
  %6072 = select i1 %6057, float %6069, float 0.000000e+00
  %6073 = fmul fast float %6070, %3998
  %6074 = fmul fast float %6071, %3998
  %6075 = fmul fast float %6072, %3998
  %6076 = fadd fast float %6073, %5687
  %6077 = fadd fast float %6074, %5688
  %6078 = fadd fast float %6075, %5689
  %6079 = call float @dx.op.dot3.f32(i32 55, float %5453, float %5454, float %5455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6080 = fsub fast float 1.000000e+00, %5654
  %6081 = fmul fast float %6080, %4691
  %6082 = fsub fast float 1.000000e+00, %6081
  %6083 = call float @dx.op.unary.f32(i32 7, float %6082)  ; Saturate(value)
  %6084 = fsub fast float 1.000000e+00, %6083
  %6085 = fmul fast float %5649, 0x4012D0A400000000
  %6086 = fadd fast float %6085, 0x3FDB6377A0000000
  %6087 = fmul fast float %6084, %6086
  %6088 = fadd fast float %6087, %6079
  %6089 = call float @dx.op.unary.f32(i32 7, float %6088)  ; Saturate(value)
  %6090 = fmul fast float %5991, %5936
  %6091 = fmul fast float %5992, %5937
  %6092 = fmul fast float %5993, %5938
  %6093 = fsub fast float 1.000000e+00, %5692
  %6094 = bitcast float %6093 to i32
  %6095 = sitofp i32 %6094 to float
  %6096 = fmul fast float %6095, 5.000000e+00
  %6097 = fadd fast float %6096, 0xC1EFBF8940000000
  %6098 = fptosi float %6097 to i32
  %6099 = bitcast i32 %6098 to float
  %6100 = fmul fast float %6099, %4695
  %6101 = fmul fast float %5932, %6100
  %6102 = fmul fast float %6101, %5996
  %6103 = fmul fast float %6102, %6013
  %6104 = fmul fast float %5933, %6100
  %6105 = fmul fast float %6104, %5996
  %6106 = fmul fast float %6105, %6014
  %6107 = fmul fast float %5934, %6100
  %6108 = fmul fast float %6107, %5996
  %6109 = fmul fast float %6108, %6015
  %6110 = fmul fast float %5997, %4691
  %6111 = fmul fast float %5998, %4691
  %6112 = fmul fast float %5999, %4691
  %6113 = fsub fast float 1.000000e+00, %6089
  %6114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6115 = extractvalue %dx.types.CBufRet.f32 %6114, 0
  %6116 = extractvalue %dx.types.CBufRet.f32 %6114, 1
  %6117 = extractvalue %dx.types.CBufRet.f32 %6114, 2
  %6118 = extractvalue %dx.types.CBufRet.f32 %6114, 3
  %6119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6120 = extractvalue %dx.types.CBufRet.f32 %6119, 0
  %6121 = extractvalue %dx.types.CBufRet.f32 %6119, 1
  %6122 = extractvalue %dx.types.CBufRet.f32 %6119, 2
  %6123 = extractvalue %dx.types.CBufRet.f32 %6119, 3
  %6124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6125 = extractvalue %dx.types.CBufRet.f32 %6124, 0
  %6126 = extractvalue %dx.types.CBufRet.f32 %6124, 1
  %6127 = extractvalue %dx.types.CBufRet.f32 %6124, 2
  %6128 = extractvalue %dx.types.CBufRet.f32 %6124, 3
  %6129 = fmul fast float %6076, %6115
  %6130 = call float @dx.op.tertiary.f32(i32 46, float %6077, float %6116, float %6129)  ; FMad(a,b,c)
  %6131 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6117, float %6130)  ; FMad(a,b,c)
  %6132 = fadd fast float %6131, %6118
  %6133 = fmul fast float %6076, %6120
  %6134 = call float @dx.op.tertiary.f32(i32 46, float %6077, float %6121, float %6133)  ; FMad(a,b,c)
  %6135 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6122, float %6134)  ; FMad(a,b,c)
  %6136 = fadd fast float %6135, %6123
  %6137 = fmul fast float %6076, %6125
  %6138 = call float @dx.op.tertiary.f32(i32 46, float %6077, float %6126, float %6137)  ; FMad(a,b,c)
  %6139 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6127, float %6138)  ; FMad(a,b,c)
  %6140 = fadd fast float %6139, %6128
  %6141 = fdiv fast float %6132, %6140
  %6142 = fdiv fast float %6136, %6140
  %6143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.f32 %6143, 0
  %6145 = extractvalue %dx.types.CBufRet.f32 %6143, 1
  %6146 = fmul fast float %6144, %6141
  %6147 = fmul fast float %6145, %6142
  %6148 = extractvalue %dx.types.CBufRet.f32 %6143, 2
  %6149 = extractvalue %dx.types.CBufRet.f32 %6143, 3
  %6150 = fadd fast float %6146, %6148
  %6151 = fadd fast float %6147, %6149
  %6152 = call float @dx.op.unary.f32(i32 7, float %6150)  ; Saturate(value)
  %6153 = call float @dx.op.unary.f32(i32 7, float %6151)  ; Saturate(value)
  %6154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6155 = extractvalue %dx.types.CBufRet.f32 %6154, 0
  %6156 = extractvalue %dx.types.CBufRet.f32 %6154, 1
  %6157 = fmul fast float %6155, %6152
  %6158 = fmul fast float %6156, %6153
  %6159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6160 = extractvalue %dx.types.CBufRet.f32 %6159, 1
  %6161 = extractvalue %dx.types.CBufRet.f32 %6159, 2
  %6162 = fsub fast float %6160, %6161
  %6163 = fmul fast float %6162, %6113
  %6164 = fadd fast float %6163, %6161
  %6165 = fmul fast float %267, 2.000000e+00
  %6166 = fmul fast float %268, 2.000000e+00
  %6167 = fadd fast float %6165, -1.000000e+00
  %6168 = fadd fast float %6166, -1.000000e+00
  %6169 = fmul fast float %6164, %6167
  %6170 = fmul fast float %6164, %6168
  %6171 = fadd fast float %6169, %6157
  %6172 = fadd fast float %6170, %6158
  %6173 = extractvalue %dx.types.CBufRet.f32 %6154, 2
  %6174 = extractvalue %dx.types.CBufRet.f32 %6154, 3
  %6175 = fmul fast float %6171, %6173
  %6176 = fmul fast float %6172, %6174
  %6177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %6175, float %6176, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6178 = extractvalue %dx.types.ResRet.f32 %6177, 0
  %6179 = fcmp fast ogt float %6178, -1.000000e+00
  %6180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6181 = extractvalue %dx.types.CBufRet.f32 %6180, 1
  %6182 = select i1 %6179, float %6181, float 1.000000e+00
  %6183 = fadd fast float %6178, 1.000000e+00
  %6184 = fmul fast float %6182, %6183
  %6185 = call float @dx.op.unary.f32(i32 6, float %6184)  ; FAbs(value)
  %6186 = fsub fast float %6185, %6140
  %6187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6187, 2
  %6189 = fmul fast float %6188, %6185
  %6190 = fdiv fast float 1.600000e+02, %6189
  %6191 = fmul fast float %6089, %6089
  %6192 = fmul fast float %6191, 0xBFB5B17960000000
  %6193 = fmul fast float %6192, %6186
  %6194 = fmul fast float %6193, %6190
  %6195 = call float @dx.op.unary.f32(i32 21, float %6194)  ; Exp(value)
  %6196 = fmul fast float %6195, 0x3FF04B2960000000
  %6197 = fsub fast float 0x3FF04B2960000000, %6196
  %6198 = call float @dx.op.unary.f32(i32 7, float %6197)  ; Saturate(value)
  %6199 = fmul fast float %6198, 4.000000e+00
  %6200 = fadd fast float %267, -5.000000e-01
  %6201 = fadd fast float %268, -5.000000e-01
  %6202 = fmul fast float %6198, 0x3FBEB851E0000000
  %6203 = call float @dx.op.unary.f32(i32 7, float %6202)  ; Saturate(value)
  %6204 = fmul fast float %6203, %6200
  %6205 = fmul fast float %6203, %6201
  %6206 = fadd fast float %6204, %6150
  %6207 = fadd fast float %6205, %6151
  %6208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.i32 %6208, 0
  %6210 = icmp eq i32 %6209, 0
  br i1 %6210, label %6216, label %6211, !dx.controlflow.hints !88

; <label>:6211                                    ; preds = %5990
  %6212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %6206, float %6207, float undef, float undef, i32 0, i32 0, i32 undef, float %6199)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6213 = extractvalue %dx.types.ResRet.f32 %6212, 0
  %6214 = extractvalue %dx.types.ResRet.f32 %6212, 1
  %6215 = extractvalue %dx.types.ResRet.f32 %6212, 2
  br label %6221

; <label>:6216                                    ; preds = %5990
  %6217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %37, float %6206, float %6207, float undef, float undef, i32 0, i32 0, i32 undef, float %6199)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6218 = extractvalue %dx.types.ResRet.f32 %6217, 0
  %6219 = extractvalue %dx.types.ResRet.f32 %6217, 1
  %6220 = extractvalue %dx.types.ResRet.f32 %6217, 2
  br label %6221

; <label>:6221                                    ; preds = %6216, %6211
  %6222 = phi float [ %6213, %6211 ], [ %6218, %6216 ]
  %6223 = phi float [ %6214, %6211 ], [ %6219, %6216 ]
  %6224 = phi float [ %6215, %6211 ], [ %6220, %6216 ]
  %6225 = select i1 %254, float 0.000000e+00, float %6223
  %6226 = select i1 %254, float 0.000000e+00, float %6224
  %6227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6228 = extractvalue %dx.types.CBufRet.f32 %6227, 1
  %6229 = fmul fast float %6222, %6045
  %6230 = fmul fast float %6229, %6228
  %6231 = fmul fast float %6225, %6046
  %6232 = fmul fast float %6231, %6228
  %6233 = fmul fast float %6226, %6047
  %6234 = fmul fast float %6233, %6228
  %6235 = fadd fast float %6090, %4681
  %6236 = fadd fast float %6235, %6103
  %6237 = fadd fast float %6236, %6230
  %6238 = fmul fast float %6237, %4691
  %6239 = fadd fast float %6091, %4682
  %6240 = fadd fast float %6239, %6106
  %6241 = fadd fast float %6240, %6232
  %6242 = fmul fast float %6241, %4691
  %6243 = fadd fast float %6092, %4683
  %6244 = fadd fast float %6243, %6109
  %6245 = fadd fast float %6244, %6234
  %6246 = fmul fast float %6245, %4691
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 3
  %6249 = fcmp fast oeq float %6248, 0.000000e+00
  br i1 %6249, label %7394, label %6250

; <label>:6250                                    ; preds = %6221
  %6251 = extractvalue %dx.types.CBufRet.f32 %6247, 0
  %6252 = extractvalue %dx.types.CBufRet.f32 %6247, 1
  %6253 = extractvalue %dx.types.CBufRet.f32 %6247, 2
  %6254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6255 = extractvalue %dx.types.CBufRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.CBufRet.f32 %6254, 1
  %6257 = extractvalue %dx.types.CBufRet.f32 %6254, 2
  %6258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6259 = extractvalue %dx.types.CBufRet.f32 %6258, 0
  %6260 = extractvalue %dx.types.CBufRet.f32 %6258, 1
  %6261 = call float @dx.op.dot3.f32(i32 55, float %6255, float %6256, float %6257, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6262 = select i1 %254, float %6259, float %6255
  %6263 = select i1 %254, float %6261, float %6256
  %6264 = select i1 %254, float %6260, float %6257
  %6265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6266 = extractvalue %dx.types.CBufRet.f32 %6265, 2
  %6267 = fmul fast float %6266, %108
  %6268 = fmul fast float %6266, %109
  %6269 = fmul fast float %6266, %110
  %6270 = fadd fast float %6267, %180
  %6271 = fadd fast float %6268, %181
  %6272 = fadd fast float %6269, %182
  %6273 = fcmp fast olt float %6248, 0.000000e+00
  br i1 %6273, label %6913, label %6274

; <label>:6274                                    ; preds = %6250
  %6275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6276 = extractvalue %dx.types.CBufRet.f32 %6275, 0
  %6277 = extractvalue %dx.types.CBufRet.f32 %6275, 1
  %6278 = extractvalue %dx.types.CBufRet.f32 %6275, 2
  %6279 = extractvalue %dx.types.CBufRet.f32 %6275, 3
  %6280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6281 = extractvalue %dx.types.CBufRet.f32 %6280, 0
  %6282 = extractvalue %dx.types.CBufRet.f32 %6280, 1
  %6283 = extractvalue %dx.types.CBufRet.f32 %6280, 2
  %6284 = extractvalue %dx.types.CBufRet.f32 %6280, 3
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 0
  %6287 = extractvalue %dx.types.CBufRet.f32 %6285, 1
  %6288 = extractvalue %dx.types.CBufRet.f32 %6285, 2
  %6289 = extractvalue %dx.types.CBufRet.f32 %6285, 3
  %6290 = fmul fast float %6276, %6270
  %6291 = call float @dx.op.tertiary.f32(i32 46, float %6271, float %6277, float %6290)  ; FMad(a,b,c)
  %6292 = call float @dx.op.tertiary.f32(i32 46, float %6272, float %6278, float %6291)  ; FMad(a,b,c)
  %6293 = fadd fast float %6292, %6279
  %6294 = fmul fast float %6281, %6270
  %6295 = call float @dx.op.tertiary.f32(i32 46, float %6271, float %6282, float %6294)  ; FMad(a,b,c)
  %6296 = call float @dx.op.tertiary.f32(i32 46, float %6272, float %6283, float %6295)  ; FMad(a,b,c)
  %6297 = fadd fast float %6296, %6284
  %6298 = fmul fast float %6286, %6270
  %6299 = call float @dx.op.tertiary.f32(i32 46, float %6271, float %6287, float %6298)  ; FMad(a,b,c)
  %6300 = call float @dx.op.tertiary.f32(i32 46, float %6272, float %6288, float %6299)  ; FMad(a,b,c)
  %6301 = fadd fast float %6300, %6289
  %6302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6303 = extractvalue %dx.types.CBufRet.f32 %6302, 0
  %6304 = fcmp fast une float %6303, 0.000000e+00
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 0
  %6307 = extractvalue %dx.types.CBufRet.f32 %6305, 1
  %6308 = extractvalue %dx.types.CBufRet.f32 %6305, 3
  %6309 = fmul fast float %6308, %6293
  %6310 = fmul fast float %6308, %6297
  %6311 = fadd fast float %6309, %6306
  %6312 = fadd fast float %6310, %6307
  %6313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6314 = extractvalue %dx.types.CBufRet.f32 %6313, 0
  %6315 = extractvalue %dx.types.CBufRet.f32 %6313, 1
  %6316 = extractvalue %dx.types.CBufRet.f32 %6313, 3
  %6317 = fmul fast float %6316, %6293
  %6318 = fmul fast float %6316, %6297
  %6319 = fadd fast float %6317, %6314
  %6320 = fadd fast float %6318, %6315
  %6321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6322 = extractvalue %dx.types.CBufRet.f32 %6321, 1
  %6323 = fsub fast float %6322, %6301
  %6324 = extractvalue %dx.types.CBufRet.f32 %6321, 2
  %6325 = fmul fast float %6323, %6324
  %6326 = fsub fast float 1.000000e+00, %6325
  %6327 = call float @dx.op.unary.f32(i32 7, float %6326)  ; Saturate(value)
  br i1 %6304, label %6388, label %6328

; <label>:6328                                    ; preds = %6274
  %6329 = extractvalue %dx.types.CBufRet.f32 %6313, 2
  %6330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6331 = extractvalue %dx.types.CBufRet.f32 %6330, 2
  %6332 = fadd fast float %6331, %6329
  %6333 = fcmp fast ogt float %6332, 0.000000e+00
  br i1 %6333, label %6334, label %6358

; <label>:6334                                    ; preds = %6328
  %6335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6336 = extractvalue %dx.types.CBufRet.f32 %6335, 0
  %6337 = extractvalue %dx.types.CBufRet.f32 %6335, 1
  %6338 = fsub fast float %6319, %6336
  %6339 = fsub fast float %6320, %6337
  %6340 = fcmp fast olt float %6338, 0.000000e+00
  %6341 = fcmp fast olt float %6339, 0.000000e+00
  %6342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6343 = extractvalue %dx.types.CBufRet.f32 %6342, 0
  %6344 = extractvalue %dx.types.CBufRet.f32 %6342, 1
  %6345 = extractvalue %dx.types.CBufRet.f32 %6342, 2
  %6346 = extractvalue %dx.types.CBufRet.f32 %6342, 3
  %6347 = select i1 %6340, float %6343, float %6345
  %6348 = select i1 %6341, float %6344, float %6346
  %6349 = fmul fast float %6347, %6338
  %6350 = fmul fast float %6348, %6339
  %6351 = call float @dx.op.unary.f32(i32 6, float %6349)  ; FAbs(value)
  %6352 = call float @dx.op.unary.f32(i32 6, float %6350)  ; FAbs(value)
  %6353 = extractvalue %dx.types.CBufRet.f32 %6265, 0
  %6354 = call float @dx.op.binary.f32(i32 35, float %6351, float %6352)  ; FMax(a,b)
  %6355 = fsub fast float %6353, %6354
  %6356 = call float @dx.op.unary.f32(i32 7, float %6355)  ; Saturate(value)
  %6357 = fmul fast float %6356, %6327
  br label %6358

; <label>:6358                                    ; preds = %6334, %6328
  %6359 = phi float [ %6357, %6334 ], [ 0.000000e+00, %6328 ]
  %6360 = extractvalue %dx.types.CBufRet.f32 %6305, 2
  %6361 = extractvalue %dx.types.CBufRet.f32 %6330, 1
  %6362 = fadd fast float %6361, %6360
  %6363 = fcmp fast ogt float %6362, 0.000000e+00
  br i1 %6363, label %6364, label %6388

; <label>:6364                                    ; preds = %6358
  %6365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6366 = extractvalue %dx.types.CBufRet.f32 %6365, 0
  %6367 = extractvalue %dx.types.CBufRet.f32 %6365, 1
  %6368 = fsub fast float %6311, %6366
  %6369 = fsub fast float %6312, %6367
  %6370 = fcmp fast olt float %6368, 0.000000e+00
  %6371 = fcmp fast olt float %6369, 0.000000e+00
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 0
  %6374 = extractvalue %dx.types.CBufRet.f32 %6372, 1
  %6375 = extractvalue %dx.types.CBufRet.f32 %6372, 2
  %6376 = extractvalue %dx.types.CBufRet.f32 %6372, 3
  %6377 = select i1 %6370, float %6373, float %6375
  %6378 = select i1 %6371, float %6374, float %6376
  %6379 = fmul fast float %6377, %6368
  %6380 = fmul fast float %6378, %6369
  %6381 = call float @dx.op.unary.f32(i32 6, float %6379)  ; FAbs(value)
  %6382 = call float @dx.op.unary.f32(i32 6, float %6380)  ; FAbs(value)
  %6383 = extractvalue %dx.types.CBufRet.f32 %6265, 0
  %6384 = call float @dx.op.binary.f32(i32 35, float %6381, float %6382)  ; FMax(a,b)
  %6385 = fsub fast float %6383, %6384
  %6386 = call float @dx.op.unary.f32(i32 7, float %6385)  ; Saturate(value)
  %6387 = fmul fast float %6386, %6327
  br label %6388

; <label>:6388                                    ; preds = %6364, %6358, %6274
  %6389 = phi float [ 0.000000e+00, %6274 ], [ %6387, %6364 ], [ 0.000000e+00, %6358 ]
  %6390 = phi float [ 0.000000e+00, %6274 ], [ %6359, %6364 ], [ %6359, %6358 ]
  %6391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6392 = extractvalue %dx.types.CBufRet.f32 %6391, 1
  %6393 = call float @dx.op.unary.f32(i32 7, float %6392)  ; Saturate(value)
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6396 = extractvalue %dx.types.CBufRet.f32 %6394, 1
  %6397 = fsub fast float %6293, %6395
  %6398 = fsub fast float %6297, %6396
  %6399 = fcmp fast olt float %6397, 0.000000e+00
  %6400 = fcmp fast olt float %6398, 0.000000e+00
  %6401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6402 = extractvalue %dx.types.CBufRet.f32 %6401, 0
  %6403 = extractvalue %dx.types.CBufRet.f32 %6401, 1
  %6404 = extractvalue %dx.types.CBufRet.f32 %6401, 2
  %6405 = extractvalue %dx.types.CBufRet.f32 %6401, 3
  %6406 = select i1 %6399, float %6402, float %6404
  %6407 = select i1 %6400, float %6403, float %6405
  %6408 = fmul fast float %6406, %6397
  %6409 = fmul fast float %6407, %6398
  %6410 = call float @dx.op.unary.f32(i32 6, float %6408)  ; FAbs(value)
  %6411 = call float @dx.op.unary.f32(i32 6, float %6409)  ; FAbs(value)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6265, 0
  %6413 = call float @dx.op.binary.f32(i32 35, float %6410, float %6411)  ; FMax(a,b)
  %6414 = fsub fast float %6412, %6413
  %6415 = call float @dx.op.unary.f32(i32 7, float %6414)  ; Saturate(value)
  %6416 = call float @dx.op.binary.f32(i32 36, float %6415, float %6393)  ; FMin(a,b)
  %6417 = fmul fast float %6416, %6327
  %6418 = fsub fast float %6389, %6417
  %6419 = fsub fast float %6390, %6389
  %6420 = fsub fast float %6419, %6417
  %6421 = call float @dx.op.binary.f32(i32 35, float %6389, float %6390)  ; FMax(a,b)
  %6422 = call float @dx.op.binary.f32(i32 35, float %6417, float %6421)  ; FMax(a,b)
  %6423 = fcmp fast olt float %6422, 1.000000e+00
  br i1 %6423, label %6424, label %6822, !dx.controlflow.hints !89

; <label>:6424                                    ; preds = %6388
  %6425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6425, 0
  %6427 = fcmp fast une float %6426, 0.000000e+00
  br i1 %6427, label %6428, label %6822, !dx.controlflow.hints !90

; <label>:6428                                    ; preds = %6424
  %6429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6429, 0
  %6431 = extractvalue %dx.types.CBufRet.f32 %6429, 1
  %6432 = extractvalue %dx.types.CBufRet.f32 %6429, 2
  %6433 = extractvalue %dx.types.CBufRet.f32 %6429, 3
  %6434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.f32 %6434, 0
  %6436 = extractvalue %dx.types.CBufRet.f32 %6434, 1
  %6437 = extractvalue %dx.types.CBufRet.f32 %6434, 2
  %6438 = extractvalue %dx.types.CBufRet.f32 %6434, 3
  %6439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6440 = extractvalue %dx.types.CBufRet.f32 %6439, 0
  %6441 = extractvalue %dx.types.CBufRet.f32 %6439, 1
  %6442 = extractvalue %dx.types.CBufRet.f32 %6439, 2
  %6443 = extractvalue %dx.types.CBufRet.f32 %6439, 3
  %6444 = fmul fast float %6430, %6270
  %6445 = call float @dx.op.tertiary.f32(i32 46, float %6271, float %6431, float %6444)  ; FMad(a,b,c)
  %6446 = call float @dx.op.tertiary.f32(i32 46, float %6272, float %6432, float %6445)  ; FMad(a,b,c)
  %6447 = fadd fast float %6446, %6433
  %6448 = fmul fast float %6435, %6270
  %6449 = call float @dx.op.tertiary.f32(i32 46, float %6271, float %6436, float %6448)  ; FMad(a,b,c)
  %6450 = call float @dx.op.tertiary.f32(i32 46, float %6272, float %6437, float %6449)  ; FMad(a,b,c)
  %6451 = fadd fast float %6450, %6438
  %6452 = fmul fast float %6440, %6270
  %6453 = call float @dx.op.tertiary.f32(i32 46, float %6271, float %6441, float %6452)  ; FMad(a,b,c)
  %6454 = call float @dx.op.tertiary.f32(i32 46, float %6272, float %6442, float %6453)  ; FMad(a,b,c)
  %6455 = fadd fast float %6454, %6443
  %6456 = fcmp fast oge float %6447, 1.000000e+00
  %6457 = fcmp fast oge float %6451, 1.000000e+00
  %6458 = or i1 %6456, %6457
  %6459 = fcmp fast olt float %6447, 0.000000e+00
  %6460 = fcmp fast olt float %6451, 0.000000e+00
  %6461 = or i1 %6459, %6460
  %6462 = or i1 %6458, %6461
  br i1 %6462, label %6822, label %6463, !dx.controlflow.hints !91

; <label>:6463                                    ; preds = %6428
  %6464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6465 = extractvalue %dx.types.CBufRet.f32 %6464, 0
  %6466 = extractvalue %dx.types.CBufRet.f32 %6464, 1
  %6467 = extractvalue %dx.types.CBufRet.f32 %6464, 2
  %6468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6469 = extractvalue %dx.types.CBufRet.i32 %6468, 2
  %6470 = uitofp i32 %6469 to float
  %6471 = extractvalue %dx.types.CBufRet.i32 %6468, 3
  %6472 = uitofp i32 %6471 to float
  %6473 = extractvalue %dx.types.CBufRet.f32 %6464, 3
  %6474 = fmul fast float %6473, 2.000000e+00
  %6475 = fsub fast float %6447, %6465
  %6476 = fsub fast float %6451, %6466
  %6477 = fmul fast float %6474, %6475
  %6478 = fmul fast float %6474, %6476
  %6479 = fdiv fast float 1.000000e+00, %6253
  %6480 = fmul fast float %6478, %6479
  %6481 = call float @dx.op.unary.f32(i32 6, float %6480)  ; FAbs(value)
  %6482 = fmul fast float %6467, %6272
  %6483 = fmul fast float %6482, %6474
  %6484 = call float @dx.op.unary.f32(i32 6, float %6483)  ; FAbs(value)
  %6485 = call float @dx.op.unary.f32(i32 6, float %6477)  ; FAbs(value)
  %6486 = call float @dx.op.binary.f32(i32 35, float %6484, float %6481)  ; FMax(a,b)
  %6487 = call float @dx.op.binary.f32(i32 35, float %6485, float %6486)  ; FMax(a,b)
  %6488 = fmul fast float %6487, 2.000000e+00
  %6489 = call float @dx.op.unary.f32(i32 23, float %6488)  ; Log(value)
  %6490 = call float @dx.op.binary.f32(i32 35, float %6489, float %6470)  ; FMax(a,b)
  %6491 = call float @dx.op.unary.f32(i32 22, float %6490)  ; Frc(value)
  %6492 = fadd fast float %6491, 0xBFEA666660000000
  %6493 = fmul fast float %6492, 8.000000e+00
  %6494 = call float @dx.op.unary.f32(i32 7, float %6493)  ; Saturate(value)
  %6495 = call float @dx.op.unary.f32(i32 27, float %6490)  ; Round_ni(value)
  %6496 = fadd fast float %6495, %6494
  %6497 = call float @dx.op.binary.f32(i32 36, float %6496, float %6472)  ; FMin(a,b)
  %6498 = call float @dx.op.unary.f32(i32 27, float %6497)  ; Round_ni(value)
  %6499 = fsub fast float -0.000000e+00, %6498
  %6500 = call float @dx.op.unary.f32(i32 21, float %6499)  ; Exp(value)
  %6501 = fmul fast float %6500, %6474
  %6502 = fmul fast float %6501, %6447
  %6503 = fmul fast float %6501, %6451
  %6504 = fmul fast float %6502, 2.500000e-01
  %6505 = fmul fast float %6503, 2.500000e-01
  %6506 = fadd fast float %6504, 5.000000e-01
  %6507 = fadd fast float %6505, 5.000000e-01
  %6508 = fsub fast float %6472, %6470
  %6509 = fptoui float %6508 to i32
  %6510 = add i32 %6509, 320
  %6511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 %6510)  ; CBufferLoadLegacy(handle,regIndex)
  %6512 = extractvalue %dx.types.CBufRet.f32 %6511, 0
  %6513 = extractvalue %dx.types.CBufRet.f32 %6511, 1
  %6514 = fcmp fast une float %6497, %6472
  %6515 = fsub fast float %6447, %6512
  %6516 = fsub fast float %6451, %6513
  %6517 = call float @dx.op.unary.f32(i32 6, float %6515)  ; FAbs(value)
  %6518 = call float @dx.op.unary.f32(i32 6, float %6516)  ; FAbs(value)
  %6519 = fmul fast float %6517, %6501
  %6520 = fmul fast float %6518, %6501
  %6521 = fcmp fast olt float %6519, 1.000000e+00
  %6522 = fcmp fast olt float %6520, 1.000000e+00
  %6523 = and i1 %6521, %6522
  %6524 = or i1 %6514, %6523
  br i1 %6524, label %6525, label %6822, !dx.controlflow.hints !92

; <label>:6525                                    ; preds = %6463
  %6526 = fmul fast float %6503, 5.000000e-01
  %6527 = fmul fast float %6502, 5.000000e-01
  %6528 = fadd fast float %6526, 5.000000e-01
  %6529 = fadd fast float %6527, 5.000000e-01
  %6530 = sitofp i32 %6469 to float
  %6531 = fsub fast float %6497, %6530
  %6532 = call float @dx.op.unary.f32(i32 27, float %6531)  ; Round_ni(value)
  %6533 = call float @dx.op.unary.f32(i32 22, float %6497)  ; Frc(value)
  %6534 = call float @dx.op.unary.f32(i32 22, float %6529)  ; Frc(value)
  %6535 = call float @dx.op.unary.f32(i32 22, float %6528)  ; Frc(value)
  %6536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %38, float %6534, float %6535, float %6532, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6537 = extractvalue %dx.types.ResRet.f32 %6536, 0
  %6538 = extractvalue %dx.types.ResRet.f32 %6536, 1
  %6539 = extractvalue %dx.types.ResRet.f32 %6536, 2
  %6540 = extractvalue %dx.types.ResRet.f32 %6536, 3
  %6541 = fcmp fast ogt float %6533, 0.000000e+00
  br i1 %6541, label %6542, label %6563, !dx.controlflow.hints !93

; <label>:6542                                    ; preds = %6525
  %6543 = fadd fast float %6532, 1.000000e+00
  %6544 = call float @dx.op.unary.f32(i32 22, float %6506)  ; Frc(value)
  %6545 = call float @dx.op.unary.f32(i32 22, float %6507)  ; Frc(value)
  %6546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %38, float %6544, float %6545, float %6543, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6547 = extractvalue %dx.types.ResRet.f32 %6546, 0
  %6548 = extractvalue %dx.types.ResRet.f32 %6546, 1
  %6549 = extractvalue %dx.types.ResRet.f32 %6546, 2
  %6550 = extractvalue %dx.types.ResRet.f32 %6546, 3
  %6551 = fsub fast float %6547, %6537
  %6552 = fsub fast float %6548, %6538
  %6553 = fsub fast float %6549, %6539
  %6554 = fsub fast float %6550, %6540
  %6555 = fmul fast float %6551, %6533
  %6556 = fmul fast float %6552, %6533
  %6557 = fmul fast float %6553, %6533
  %6558 = fmul fast float %6554, %6533
  %6559 = fadd fast float %6555, %6537
  %6560 = fadd fast float %6556, %6538
  %6561 = fadd fast float %6557, %6539
  %6562 = fadd fast float %6558, %6540
  br label %6563

; <label>:6563                                    ; preds = %6542, %6525
  %6564 = phi float [ %6559, %6542 ], [ %6537, %6525 ]
  %6565 = phi float [ %6560, %6542 ], [ %6538, %6525 ]
  %6566 = phi float [ %6561, %6542 ], [ %6539, %6525 ]
  %6567 = phi float [ %6562, %6542 ], [ %6540, %6525 ]
  %6568 = fadd fast float %6564, -5.000000e-01
  %6569 = fadd fast float %6566, -5.000000e-01
  %6570 = fmul fast float %6568, 0xBFD5555560000000
  %6571 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6569, float %6570)  ; FMad(a,b,c)
  %6572 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6565, float 0.000000e+00)  ; FMad(a,b,c)
  %6573 = fadd fast float %6572, %6567
  %6574 = fmul fast float %6568, -7.500000e-01
  %6575 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6569, float %6574)  ; FMad(a,b,c)
  %6576 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6565, float 0.000000e+00)  ; FMad(a,b,c)
  %6577 = fadd fast float %6576, %6567
  %6578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6579 = extractvalue %dx.types.CBufRet.f32 %6578, 0
  %6580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6581 = extractvalue %dx.types.CBufRet.f32 %6580, 0
  %6582 = extractvalue %dx.types.CBufRet.f32 %6580, 1
  %6583 = extractvalue %dx.types.CBufRet.f32 %6580, 2
  %6584 = extractvalue %dx.types.CBufRet.f32 %6580, 3
  %6585 = fsub fast float %6581, %6571
  %6586 = fsub fast float %6582, %6573
  %6587 = fsub fast float %6583, %6575
  %6588 = fsub fast float %6584, %6577
  %6589 = fmul fast float %6585, %6579
  %6590 = fmul fast float %6586, %6579
  %6591 = fmul fast float %6587, %6579
  %6592 = fmul fast float %6588, %6579
  %6593 = fadd fast float %6589, %6571
  %6594 = fadd fast float %6590, %6573
  %6595 = fadd fast float %6591, %6575
  %6596 = fadd fast float %6592, %6577
  %6597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6598 = extractvalue %dx.types.ResRet.i32 %6597, 0
  %6599 = and i32 %6598, 536870911
  %6600 = uitofp i32 %6599 to float
  %6601 = fmul fast float %6600, %6447
  %6602 = fmul fast float %6600, %6451
  %6603 = fptoui float %6601 to i32
  %6604 = fptoui float %6602 to i32
  %6605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6606 = extractvalue %dx.types.ResRet.i32 %6605, 0
  %6607 = and i32 %6606, 31
  %6608 = lshr i32 %6603, %6607
  %6609 = lshr i32 %6604, %6607
  %6610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6611 = extractvalue %dx.types.ResRet.i32 %6610, 0
  %6612 = and i32 %6611, 31
  %6613 = shl i32 1, %6612
  %6614 = call i32 @dx.op.binary.i32(i32 40, i32 %6613, i32 4)  ; UMin(a,b)
  %6615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6616 = extractvalue %dx.types.ResRet.i32 %6615, 0
  %6617 = extractvalue %dx.types.ResRet.i32 %6615, 1
  %6618 = icmp eq i32 %6614, 0
  br i1 %6618, label %6660, label %6619

; <label>:6619                                    ; preds = %6563
  br label %6620

; <label>:6620                                    ; preds = %6648, %6619
  %6621 = phi i32 [ %6651, %6648 ], [ 0, %6619 ]
  %6622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6623 = extractvalue %dx.types.ResRet.i32 %6622, 0
  %6624 = lshr i32 %6623, 16
  %6625 = and i32 %6624, 31
  %6626 = shl i32 %6609, %6625
  %6627 = add i32 %6626, %6608
  %6628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6629 = extractvalue %dx.types.ResRet.i32 %6628, 0
  %6630 = and i32 %6629, 31
  %6631 = shl i32 %6627, %6630
  %6632 = add i32 %6631, %6621
  %6633 = shl i32 %6632, 2
  %6634 = add i32 %6633, 32
  %6635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6634, i32 undef)  ; BufferLoad(srv,index,wot)
  %6636 = extractvalue %dx.types.ResRet.i32 %6635, 0
  %6637 = icmp slt i32 %6636, 0
  %6638 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6621
  %6639 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6621
  %6640 = bitcast float* %6638 to i32*
  %6641 = bitcast float* %6639 to i32*
  br i1 %6637, label %6642, label %6648

; <label>:6642                                    ; preds = %6620
  %6643 = and i32 %6636, 1073741823
  %6644 = add nuw nsw i32 %6643, 20
  %6645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6644, i32 undef)  ; BufferLoad(srv,index,wot)
  %6646 = extractvalue %dx.types.ResRet.i32 %6645, 0
  %6647 = extractvalue %dx.types.ResRet.i32 %6645, 1
  br label %6648

; <label>:6648                                    ; preds = %6642, %6620
  %6649 = phi i32 [ %6646, %6642 ], [ %6616, %6620 ]
  %6650 = phi i32 [ %6647, %6642 ], [ %6617, %6620 ]
  store i32 %6649, i32* %6640, align 4
  store i32 %6650, i32* %6641, align 4
  %6651 = add nuw i32 %6621, 1
  %6652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6653 = extractvalue %dx.types.CBufRet.i32 %6652, 2
  %6654 = icmp eq i32 %6653, 0
  %6655 = icmp ugt i32 %6636, -1073741825
  %6656 = and i1 %6655, %6654
  %6657 = icmp ult i32 %6651, %6614
  %6658 = and i1 %6656, %6657
  br i1 %6658, label %6620, label %6659

; <label>:6659                                    ; preds = %6648
  br label %6660

; <label>:6660                                    ; preds = %6659, %6563
  %6661 = phi i32 [ 0, %6563 ], [ %6651, %6659 ]
  %6662 = extractvalue %dx.types.CBufRet.f32 %6425, 2
  %6663 = fptoui float %6662 to i32
  %6664 = icmp eq i32 %6663, 0
  br i1 %6664, label %6716, label %6665

; <label>:6665                                    ; preds = %6660
  br label %6666

; <label>:6666                                    ; preds = %6711, %6665
  %6667 = phi i32 [ %6712, %6711 ], [ %6661, %6665 ]
  %6668 = phi i32 [ %6713, %6711 ], [ 0, %6665 ]
  %6669 = lshr i32 %6668, 2
  %6670 = and i32 %6668, 3
  %6671 = add nuw nsw i32 %6669, 83
  %6672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 %6671)  ; CBufferLoadLegacy(handle,regIndex)
  %6673 = extractvalue %dx.types.CBufRet.i32 %6672, 0
  %6674 = extractvalue %dx.types.CBufRet.i32 %6672, 1
  %6675 = extractvalue %dx.types.CBufRet.i32 %6672, 2
  %6676 = extractvalue %dx.types.CBufRet.i32 %6672, 3
  %6677 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 0
  store i32 %6673, i32* %6677, align 4
  %6678 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 1
  store i32 %6674, i32* %6678, align 4
  %6679 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 2
  store i32 %6675, i32* %6679, align 4
  %6680 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 3
  store i32 %6676, i32* %6680, align 4
  %6681 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 %6670
  %6682 = load i32, i32* %6681, align 4, !tbaa !94, !noalias !98
  %6683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6684 = extractvalue %dx.types.ResRet.i32 %6683, 0
  %6685 = lshr i32 %6684, 16
  %6686 = and i32 %6685, 31
  %6687 = shl i32 %6609, %6686
  %6688 = add i32 %6687, %6608
  %6689 = shl i32 %6688, 2
  %6690 = add i32 %6689, %6682
  %6691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6690, i32 undef)  ; BufferLoad(srv,index,wot)
  %6692 = extractvalue %dx.types.ResRet.i32 %6691, 0
  %6693 = icmp eq i32 %6692, 0
  br i1 %6693, label %6711, label %6694

; <label>:6694                                    ; preds = %6666
  %6695 = icmp slt i32 %6692, 0
  %6696 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6667
  %6697 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6667
  %6698 = bitcast float* %6696 to i32*
  %6699 = bitcast float* %6697 to i32*
  br i1 %6695, label %6700, label %6707

; <label>:6700                                    ; preds = %6694
  %6701 = and i32 %6692, 1073741823
  %6702 = add i32 %6682, 20
  %6703 = add i32 %6702, %6701
  %6704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6703, i32 undef)  ; BufferLoad(srv,index,wot)
  %6705 = extractvalue %dx.types.ResRet.i32 %6704, 0
  %6706 = extractvalue %dx.types.ResRet.i32 %6704, 1
  br label %6707

; <label>:6707                                    ; preds = %6700, %6694
  %6708 = phi i32 [ %6705, %6700 ], [ %6616, %6694 ]
  %6709 = phi i32 [ %6706, %6700 ], [ %6617, %6694 ]
  store i32 %6708, i32* %6698, align 4
  store i32 %6709, i32* %6699, align 4
  %6710 = add i32 %6667, 1
  br label %6711

; <label>:6711                                    ; preds = %6707, %6666
  %6712 = phi i32 [ %6667, %6666 ], [ %6710, %6707 ]
  %6713 = add nuw i32 %6668, 1
  %6714 = icmp eq i32 %6713, %6663
  br i1 %6714, label %6715, label %6666

; <label>:6715                                    ; preds = %6711
  br label %6716

; <label>:6716                                    ; preds = %6715, %6660
  %6717 = phi i32 [ %6661, %6660 ], [ %6712, %6715 ]
  %6718 = icmp eq i32 %6717, 1
  %6719 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %6720 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %6718, label %6721, label %6724

; <label>:6721                                    ; preds = %6716
  %6722 = load float, float* %6719, align 4
  %6723 = load float, float* %6720, align 4
  br label %6751

; <label>:6724                                    ; preds = %6716
  %6725 = load float, float* %6719, align 4
  %6726 = load float, float* %6720, align 4
  %6727 = fdiv fast float 1.000000e+00, %6726
  %6728 = fsub fast float %6725, %6727
  %6729 = icmp ugt i32 %6717, 1
  br i1 %6729, label %6730, label %6746

; <label>:6730                                    ; preds = %6724
  br label %6731

; <label>:6731                                    ; preds = %6731, %6730
  %6732 = phi float [ %6741, %6731 ], [ %6728, %6730 ]
  %6733 = phi float [ %6742, %6731 ], [ %6725, %6730 ]
  %6734 = phi i32 [ %6743, %6731 ], [ 1, %6730 ]
  %6735 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6734
  %6736 = load float, float* %6735, align 4
  %6737 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6734
  %6738 = load float, float* %6737, align 4
  %6739 = fdiv fast float 1.000000e+00, %6738
  %6740 = fsub fast float %6736, %6739
  %6741 = call float @dx.op.binary.f32(i32 36, float %6732, float %6740)  ; FMin(a,b)
  %6742 = call float @dx.op.binary.f32(i32 35, float %6733, float %6736)  ; FMax(a,b)
  %6743 = add nuw i32 %6734, 1
  %6744 = icmp eq i32 %6743, %6717
  br i1 %6744, label %6745, label %6731

; <label>:6745                                    ; preds = %6731
  br label %6746

; <label>:6746                                    ; preds = %6745, %6724
  %6747 = phi float [ %6728, %6724 ], [ %6741, %6745 ]
  %6748 = phi float [ %6725, %6724 ], [ %6742, %6745 ]
  %6749 = fsub fast float %6748, %6747
  %6750 = fdiv fast float 1.000000e+00, %6749
  br label %6751

; <label>:6751                                    ; preds = %6746, %6721
  %6752 = phi float [ %6722, %6721 ], [ %6748, %6746 ]
  %6753 = phi float [ %6723, %6721 ], [ %6750, %6746 ]
  %6754 = fadd fast float %6455, %6752
  %6755 = fmul fast float %6754, %6753
  %6756 = call float @dx.op.unary.f32(i32 7, float %6755)  ; Saturate(value)
  %6757 = fmul fast float %6756, 2.000000e+00
  %6758 = fsub fast float 1.000000e+00, %6757
  %6759 = fmul fast float %6593, %6593
  %6760 = fsub fast float %6594, %6759
  %6761 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6760)  ; FMax(a,b)
  %6762 = fdiv fast float 1.000000e+00, %6761
  %6763 = fmul fast float %6594, %6593
  %6764 = fsub fast float %6595, %6763
  %6765 = fsub fast float %6758, %6593
  %6766 = fmul fast float %6758, %6758
  %6767 = fsub fast float %6766, %6594
  %6768 = fmul fast float %6762, %6764
  %6769 = fmul fast float %6768, %6765
  %6770 = fsub fast float %6767, %6769
  %6771 = fmul fast float %6594, %6594
  %6772 = fsub fast float %6596, %6771
  %6773 = fmul fast float %6764, %6764
  %6774 = fmul fast float %6773, %6762
  %6775 = fsub fast float %6772, %6774
  %6776 = fdiv fast float %6770, %6775
  %6777 = fmul fast float %6776, %6764
  %6778 = fsub fast float %6765, %6777
  %6779 = fmul fast float %6778, %6762
  %6780 = fmul fast float %6779, %6593
  %6781 = fsub fast float 1.000000e+00, %6780
  %6782 = fmul fast float %6776, %6594
  %6783 = fsub fast float %6781, %6782
  %6784 = fmul fast float %6779, %6779
  %6785 = fmul fast float %6776, 4.000000e+00
  %6786 = fmul fast float %6785, %6783
  %6787 = fsub fast float %6784, %6786
  %6788 = call float @dx.op.unary.f32(i32 24, float %6787)  ; Sqrt(value)
  %6789 = fcmp fast oge float %6779, 0.000000e+00
  %6790 = fsub fast float -0.000000e+00, %6788
  %6791 = select i1 %6789, float %6790, float %6788
  %6792 = fsub fast float %6791, %6779
  %6793 = fdiv fast float %6792, %6776
  %6794 = fdiv fast float %6783, %6792
  %6795 = fmul fast float %6793, 5.000000e-01
  %6796 = fmul fast float %6794, 2.000000e+00
  %6797 = select i1 %6789, float %6795, float %6796
  %6798 = select i1 %6789, float %6796, float %6795
  %6799 = call float @dx.op.binary.f32(i32 35, float %6797, float %6798)  ; FMax(a,b)
  %6800 = call float @dx.op.binary.f32(i32 36, float %6797, float %6798)  ; FMin(a,b)
  %6801 = fcmp fast ogt float %6758, %6799
  %6802 = fsub fast float %6758, %6800
  %6803 = fsub fast float %6758, %6799
  %6804 = fsub fast float %6799, %6800
  %6805 = select i1 %6801, float %6803, float %6804
  %6806 = fmul float %6802, %6805
  %6807 = select i1 %6801, float %6800, float %6758
  %6808 = fcmp fast ogt float %6758, %6800
  %6809 = fmul fast float %6807, %6799
  %6810 = fadd fast float %6807, %6799
  %6811 = fmul fast float %6810, %6593
  %6812 = fadd fast float %6809, %6594
  %6813 = fsub fast float %6812, %6811
  %6814 = fdiv fast float %6813, %6806
  %6815 = select i1 %6808, float %6814, float 0.000000e+00
  %6816 = fsub fast float 1.000000e+00, %6815
  %6817 = select i1 %6801, float %6816, float %6815
  %6818 = call float @dx.op.unary.f32(i32 7, float %6817)  ; Saturate(value)
  %6819 = extractvalue %dx.types.CBufRet.f32 %6578, 3
  %6820 = fmul fast float %6819, %6818
  %6821 = fsub fast float 1.000000e+00, %6820
  br label %6822

; <label>:6822                                    ; preds = %6751, %6463, %6428, %6424, %6388
  %6823 = phi float [ 1.000000e+00, %6388 ], [ %6821, %6751 ], [ 1.000000e+00, %6428 ], [ 1.000000e+00, %6463 ], [ 1.000000e+00, %6424 ]
  %6824 = fcmp fast ogt float %6420, 0.000000e+00
  br i1 %6824, label %6825, label %6833, !dx.controlflow.hints !107

; <label>:6825                                    ; preds = %6822
  %6826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.f32 %6826, 2
  %6828 = fadd fast float %6827, %6301
  %6829 = call float @dx.op.binary.f32(i32 35, float %6828, float 0.000000e+00)  ; FMax(a,b)
  %6830 = fadd fast float %6829, 0x3F10000000000000
  %6831 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %41, float %6319, float %6320, float undef, float undef, i32 0, i32 0, i32 undef, float %6830)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6832 = extractvalue %dx.types.ResRet.f32 %6831, 0
  br label %6833

; <label>:6833                                    ; preds = %6825, %6822
  %6834 = phi float [ %6832, %6825 ], [ 1.000000e+00, %6822 ]
  %6835 = fcmp fast ogt float %6418, 0.000000e+00
  br i1 %6835, label %6836, label %6844, !dx.controlflow.hints !108

; <label>:6836                                    ; preds = %6833
  %6837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6837, 1
  %6839 = fadd fast float %6838, %6301
  %6840 = call float @dx.op.binary.f32(i32 35, float %6839, float 0.000000e+00)  ; FMax(a,b)
  %6841 = fadd fast float %6840, 0x3F10000000000000
  %6842 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %41, float %6311, float %6312, float undef, float undef, i32 0, i32 0, i32 undef, float %6841)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6843 = extractvalue %dx.types.ResRet.f32 %6842, 0
  br label %6844

; <label>:6844                                    ; preds = %6836, %6833
  %6845 = phi float [ %6843, %6836 ], [ 1.000000e+00, %6833 ]
  %6846 = fcmp fast ogt float %6417, 0.000000e+00
  br i1 %6846, label %6847, label %6859, !dx.controlflow.hints !109

; <label>:6847                                    ; preds = %6844
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 0
  %6850 = fadd fast float %6849, %6301
  %6851 = call float @dx.op.binary.f32(i32 35, float %6850, float 0.000000e+00)  ; FMax(a,b)
  %6852 = fadd fast float %6851, 0x3F10000000000000
  br i1 %6304, label %6853, label %6856, !dx.controlflow.hints !110

; <label>:6853                                    ; preds = %6847
  %6854 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %41, float %6293, float %6297, float undef, float undef, i32 0, i32 0, i32 undef, float %6852)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6855 = extractvalue %dx.types.ResRet.f32 %6854, 0
  br label %6859

; <label>:6856                                    ; preds = %6847
  %6857 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %41, float %6293, float %6297, float undef, float undef, i32 0, i32 0, i32 undef, float %6852)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6858 = extractvalue %dx.types.ResRet.f32 %6857, 0
  br label %6859

; <label>:6859                                    ; preds = %6856, %6853, %6844
  %6860 = phi float [ %6855, %6853 ], [ %6858, %6856 ], [ 1.000000e+00, %6844 ]
  %6861 = fsub fast float %6834, %6823
  %6862 = fmul fast float %6861, %6390
  %6863 = fadd fast float %6862, %6823
  %6864 = fsub fast float %6845, %6863
  %6865 = fmul fast float %6864, %6389
  %6866 = fadd fast float %6865, %6863
  %6867 = fsub fast float %6860, %6866
  %6868 = fmul fast float %6867, %6417
  %6869 = fadd fast float %6868, %6866
  %6870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.f32 %6870, 2
  %6872 = fcmp fast ogt float %6871, 0.000000e+00
  br i1 %6872, label %6873, label %6913, !dx.controlflow.hints !111

; <label>:6873                                    ; preds = %6859
  %6874 = fcmp fast ugt float %6871, 0.000000e+00
  br i1 %6874, label %6875, label %6910

; <label>:6875                                    ; preds = %6873
  %6876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6877 = extractvalue %dx.types.CBufRet.f32 %6876, 0
  %6878 = extractvalue %dx.types.CBufRet.f32 %6876, 1
  %6879 = extractvalue %dx.types.CBufRet.f32 %6876, 2
  %6880 = extractvalue %dx.types.CBufRet.f32 %6876, 3
  %6881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6882 = extractvalue %dx.types.CBufRet.f32 %6881, 0
  %6883 = extractvalue %dx.types.CBufRet.f32 %6881, 1
  %6884 = extractvalue %dx.types.CBufRet.f32 %6881, 2
  %6885 = extractvalue %dx.types.CBufRet.f32 %6881, 3
  %6886 = extractvalue %dx.types.CBufRet.f32 %6870, 0
  %6887 = extractvalue %dx.types.CBufRet.f32 %6870, 1
  %6888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6889 = extractvalue %dx.types.CBufRet.f32 %6888, 0
  %6890 = extractvalue %dx.types.CBufRet.f32 %6888, 1
  %6891 = extractvalue %dx.types.CBufRet.f32 %6888, 2
  %6892 = fadd fast float %6889, %6270
  %6893 = fadd fast float %6890, %6271
  %6894 = fadd fast float %6891, %6272
  %6895 = fmul fast float %6892, %6877
  %6896 = call float @dx.op.tertiary.f32(i32 46, float %6878, float %6893, float %6895)  ; FMad(a,b,c)
  %6897 = call float @dx.op.tertiary.f32(i32 46, float %6879, float %6894, float %6896)  ; FMad(a,b,c)
  %6898 = fadd fast float %6897, %6880
  %6899 = fmul fast float %6892, %6882
  %6900 = call float @dx.op.tertiary.f32(i32 46, float %6883, float %6893, float %6899)  ; FMad(a,b,c)
  %6901 = call float @dx.op.tertiary.f32(i32 46, float %6884, float %6894, float %6900)  ; FMad(a,b,c)
  %6902 = fadd fast float %6901, %6885
  %6903 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %36, float %6898, float %6902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6904 = extractvalue %dx.types.ResRet.f32 %6903, 0
  %6905 = fmul fast float %6904, %6887
  %6906 = fadd fast float %6905, %6886
  %6907 = call float @dx.op.unary.f32(i32 7, float %6906)  ; Saturate(value)
  %6908 = fmul fast float %6907, %6871
  %6909 = fsub fast float 1.000000e+00, %6908
  br label %6910

; <label>:6910                                    ; preds = %6875, %6873
  %6911 = phi float [ %6909, %6875 ], [ 1.000000e+00, %6873 ]
  %6912 = fmul fast float %6911, %6869
  br label %6913

; <label>:6913                                    ; preds = %6910, %6859, %6250
  %6914 = phi float [ 1.000000e+00, %6250 ], [ %6912, %6910 ], [ %6869, %6859 ]
  %6915 = call float @dx.op.binary.f32(i32 36, float %6914, float %6914)  ; FMin(a,b)
  %6916 = call float @dx.op.binary.f32(i32 36, float %6914, float %6915)  ; FMin(a,b)
  %6917 = fcmp fast ogt float %6916, 0.000000e+00
  br i1 %6917, label %6918, label %7079, !dx.controlflow.hints !112

; <label>:6918                                    ; preds = %6913
  %6919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6920 = extractvalue %dx.types.CBufRet.f32 %6919, 0
  %6921 = extractvalue %dx.types.CBufRet.f32 %6919, 1
  %6922 = extractvalue %dx.types.CBufRet.f32 %6919, 2
  %6923 = extractvalue %dx.types.CBufRet.f32 %6919, 3
  %6924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6925 = extractvalue %dx.types.CBufRet.f32 %6924, 0
  %6926 = extractvalue %dx.types.CBufRet.f32 %6924, 1
  %6927 = extractvalue %dx.types.CBufRet.f32 %6924, 2
  %6928 = extractvalue %dx.types.CBufRet.f32 %6924, 3
  %6929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6930 = extractvalue %dx.types.CBufRet.f32 %6929, 0
  %6931 = extractvalue %dx.types.CBufRet.f32 %6929, 1
  %6932 = extractvalue %dx.types.CBufRet.f32 %6929, 2
  %6933 = extractvalue %dx.types.CBufRet.f32 %6929, 3
  %6934 = fmul fast float %6920, %6270
  %6935 = call float @dx.op.tertiary.f32(i32 46, float %6271, float %6921, float %6934)  ; FMad(a,b,c)
  %6936 = call float @dx.op.tertiary.f32(i32 46, float %6272, float %6922, float %6935)  ; FMad(a,b,c)
  %6937 = fadd fast float %6936, %6923
  %6938 = fmul fast float %6925, %6270
  %6939 = call float @dx.op.tertiary.f32(i32 46, float %6271, float %6926, float %6938)  ; FMad(a,b,c)
  %6940 = call float @dx.op.tertiary.f32(i32 46, float %6272, float %6927, float %6939)  ; FMad(a,b,c)
  %6941 = fadd fast float %6940, %6928
  %6942 = fmul fast float %6930, %6270
  %6943 = call float @dx.op.tertiary.f32(i32 46, float %6271, float %6931, float %6942)  ; FMad(a,b,c)
  %6944 = call float @dx.op.tertiary.f32(i32 46, float %6272, float %6932, float %6943)  ; FMad(a,b,c)
  %6945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6946 = extractvalue %dx.types.CBufRet.f32 %6945, 0
  %6947 = extractvalue %dx.types.CBufRet.f32 %6945, 1
  %6948 = extractvalue %dx.types.CBufRet.f32 %6945, 3
  %6949 = fmul fast float %6948, %6937
  %6950 = fmul fast float %6948, %6941
  %6951 = fadd fast float %6949, %6946
  %6952 = fadd fast float %6950, %6947
  %6953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6954 = extractvalue %dx.types.CBufRet.f32 %6953, 0
  %6955 = extractvalue %dx.types.CBufRet.f32 %6953, 1
  %6956 = fsub fast float %6951, %6954
  %6957 = fsub fast float %6952, %6955
  %6958 = fcmp fast olt float %6956, 0.000000e+00
  %6959 = fcmp fast olt float %6957, 0.000000e+00
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 0
  %6962 = extractvalue %dx.types.CBufRet.f32 %6960, 1
  %6963 = extractvalue %dx.types.CBufRet.f32 %6960, 2
  %6964 = extractvalue %dx.types.CBufRet.f32 %6960, 3
  %6965 = select i1 %6958, float %6961, float %6963
  %6966 = select i1 %6959, float %6962, float %6964
  %6967 = fmul fast float %6965, %6956
  %6968 = fmul fast float %6966, %6957
  %6969 = call float @dx.op.unary.f32(i32 6, float %6967)  ; FAbs(value)
  %6970 = call float @dx.op.unary.f32(i32 6, float %6968)  ; FAbs(value)
  %6971 = extractvalue %dx.types.CBufRet.f32 %6265, 0
  %6972 = call float @dx.op.binary.f32(i32 35, float %6969, float %6970)  ; FMax(a,b)
  %6973 = fsub fast float %6971, %6972
  %6974 = call float @dx.op.unary.f32(i32 7, float %6973)  ; Saturate(value)
  %6975 = fcmp fast ogt float %6974, 0.000000e+00
  br i1 %6975, label %6976, label %7017, !dx.controlflow.hints !113

; <label>:6976                                    ; preds = %6918
  %6977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %39, float %6951, float %6952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6978 = extractvalue %dx.types.ResRet.f32 %6977, 1
  %6979 = fcmp fast ogt float %6978, 0.000000e+00
  br i1 %6979, label %6980, label %7012

; <label>:6980                                    ; preds = %6976
  %6981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %39, float %6951, float %6952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6982 = extractvalue %dx.types.ResRet.f32 %6981, 0
  %6983 = extractvalue %dx.types.ResRet.f32 %6981, 1
  %6984 = extractvalue %dx.types.ResRet.f32 %6981, 2
  %6985 = extractvalue %dx.types.ResRet.f32 %6981, 3
  %6986 = fsub fast float 1.000000e+00, %6933
  %6987 = fsub fast float %6986, %6944
  %6988 = fmul fast float %6987, 0x400921FB60000000
  %6989 = fadd fast float %6988, 0x3FF921FB60000000
  %6990 = call float @dx.op.unary.f32(i32 13, float %6989)  ; Sin(value)
  %6991 = fadd fast float %6990, -1.000000e+00
  %6992 = fmul fast float %6991, 0x3FD45F3060000000
  %6993 = fmul fast float %6987, 0x401921FB60000000
  %6994 = fadd fast float %6993, 0x400921FB60000000
  %6995 = call float @dx.op.unary.f32(i32 13, float %6994)  ; Sin(value)
  %6996 = fadd fast float %6995, 0x3E7777A5C0000000
  %6997 = fmul fast float %6996, 0x3FC45F3060000000
  %6998 = fmul fast float %6987, 0x4022D97C80000000
  %6999 = fadd fast float %6998, 0x4012D97C80000000
  %7000 = call float @dx.op.unary.f32(i32 13, float %6999)  ; Sin(value)
  %7001 = fadd fast float %7000, 1.000000e+00
  %7002 = fmul fast float %7001, 0x3FBB2995E0000000
  %7003 = fmul fast float %6987, 0x402921FB60000000
  %7004 = fadd fast float %7003, 0x401921FB60000000
  %7005 = call float @dx.op.unary.f32(i32 13, float %7004)  ; Sin(value)
  %7006 = fadd fast float %7005, 0xBE8777A5C0000000
  %7007 = fmul fast float %7006, 0x3FB45F3060000000
  %7008 = call float @dx.op.dot4.f32(i32 56, float %6982, float %6983, float %6984, float %6985, float %6992, float %6997, float %7002, float %7007)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7009 = fmul fast float %7008, 0xBFF7154760000000
  %7010 = call float @dx.op.unary.f32(i32 21, float %7009)  ; Exp(value)
  %7011 = call float @dx.op.unary.f32(i32 7, float %7010)  ; Saturate(value)
  br label %7012

; <label>:7012                                    ; preds = %6980, %6976
  %7013 = phi float [ %7011, %6980 ], [ 1.000000e+00, %6976 ]
  %7014 = fadd fast float %7013, -1.000000e+00
  %7015 = fmul fast float %7014, %6974
  %7016 = fadd fast float %7015, 1.000000e+00
  br label %7017

; <label>:7017                                    ; preds = %7012, %6918
  %7018 = phi float [ %7016, %7012 ], [ 1.000000e+00, %6918 ]
  %7019 = fmul fast float %7018, %6914
  %7020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7021 = extractvalue %dx.types.CBufRet.f32 %7020, 0
  %7022 = extractvalue %dx.types.CBufRet.f32 %7020, 1
  %7023 = extractvalue %dx.types.CBufRet.f32 %7020, 2
  %7024 = fadd fast float %7021, %180
  %7025 = fadd fast float %7022, %181
  %7026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7026, 1
  %7028 = fsub fast float -0.000000e+00, %7024
  %7029 = fsub fast float -0.000000e+00, %7025
  %7030 = fsub fast float -0.000000e+00, %182
  %7031 = fsub fast float %7030, %7023
  %7032 = fadd fast float %7031, %7027
  %7033 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7028, float %7029, float %7032)  ; Dot3(ax,ay,az,bx,by,bz)
  %7034 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6251, float %6252, float %6253)  ; Dot3(ax,ay,az,bx,by,bz)
  %7035 = fdiv fast float 1.000000e+00, %7034
  %7036 = fmul fast float %7035, %7033
  %7037 = fmul fast float %6251, %7036
  %7038 = fmul fast float %6252, %7036
  %7039 = fadd fast float %7037, %7024
  %7040 = fadd fast float %7038, %7025
  %7041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7042 = extractvalue %dx.types.CBufRet.f32 %7041, 0
  %7043 = extractvalue %dx.types.CBufRet.f32 %7041, 1
  %7044 = fsub fast float %7039, %7042
  %7045 = fsub fast float %7040, %7043
  %7046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7047 = extractvalue %dx.types.CBufRet.f32 %7046, 2
  %7048 = extractvalue %dx.types.CBufRet.f32 %7046, 3
  %7049 = fmul fast float %7044, %7047
  %7050 = fmul fast float %7045, %7048
  %7051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7052 = extractvalue %dx.types.CBufRet.i32 %7051, 3
  %7053 = icmp eq i32 %7052, 0
  br i1 %7053, label %7059, label %7054

; <label>:7054                                    ; preds = %7017
  %7055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %7049, float %7050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7056 = extractvalue %dx.types.ResRet.f32 %7055, 0
  %7057 = extractvalue %dx.types.ResRet.f32 %7055, 1
  %7058 = extractvalue %dx.types.ResRet.f32 %7055, 2
  br label %7064

; <label>:7059                                    ; preds = %7017
  %7060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %7049, float %7050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7061 = extractvalue %dx.types.ResRet.f32 %7060, 0
  %7062 = extractvalue %dx.types.ResRet.f32 %7060, 1
  %7063 = extractvalue %dx.types.ResRet.f32 %7060, 2
  br label %7064

; <label>:7064                                    ; preds = %7059, %7054
  %7065 = phi float [ %7056, %7054 ], [ %7061, %7059 ]
  %7066 = phi float [ %7057, %7054 ], [ %7062, %7059 ]
  %7067 = phi float [ %7058, %7054 ], [ %7063, %7059 ]
  %7068 = extractvalue %dx.types.CBufRet.f32 %7026, 2
  %7069 = fmul fast float %7068, %7065
  %7070 = extractvalue %dx.types.CBufRet.f32 %7026, 0
  %7071 = fsub fast float %7036, %7070
  %7072 = fsub fast float %7071, %7069
  %7073 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7072)  ; FMax(a,b)
  %7074 = fmul fast float %7073, %7066
  %7075 = call float @dx.op.binary.f32(i32 36, float %7067, float %7074)  ; FMin(a,b)
  %7076 = fmul fast float %7075, 0xBFF7154760000000
  %7077 = call float @dx.op.unary.f32(i32 21, float %7076)  ; Exp(value)
  %7078 = fmul fast float %7019, %7077
  br label %7079

; <label>:7079                                    ; preds = %7064, %6913
  %7080 = phi float [ %7078, %7064 ], [ %6914, %6913 ]
  %7081 = call float @dx.op.binary.f32(i32 36, float %7080, float %7080)  ; FMin(a,b)
  %7082 = call float @dx.op.binary.f32(i32 36, float %7080, float %7081)  ; FMin(a,b)
  %7083 = fcmp fast ogt float %7082, 0.000000e+00
  br i1 %7083, label %7084, label %7394, !dx.controlflow.hints !114

; <label>:7084                                    ; preds = %7079
  %7085 = fmul fast float %7080, %6262
  %7086 = fmul fast float %7080, %6263
  %7087 = fmul fast float %7080, %6264
  %7088 = fsub fast float %6251, %5644
  %7089 = fsub fast float %6252, %5643
  %7090 = fsub fast float %6253, %5642
  %7091 = call float @dx.op.dot3.f32(i32 55, float %7088, float %7089, float %7090, float %7088, float %7089, float %7090)  ; Dot3(ax,ay,az,bx,by,bz)
  %7092 = call float @dx.op.unary.f32(i32 25, float %7091)  ; Rsqrt(value)
  %7093 = fmul fast float %7092, %7088
  %7094 = fmul fast float %7092, %7089
  %7095 = fmul fast float %7092, %7090
  %7096 = call float @dx.op.dot3.f32(i32 55, float %6251, float %6252, float %6253, float %5645, float %5646, float %5647)  ; Dot3(ax,ay,az,bx,by,bz)
  %7097 = call float @dx.op.dot3.f32(i32 55, float %5641, float %5640, float %5639, float %7093, float %7094, float %7095)  ; Dot3(ax,ay,az,bx,by,bz)
  %7098 = call float @dx.op.unary.f32(i32 7, float %7096)  ; Saturate(value)
  %7099 = fmul fast float %7098, %7098
  %7100 = fmul fast float %7099, %5705
  %7101 = call float @dx.op.unary.f32(i32 7, float %7100)  ; Saturate(value)
  %7102 = fmul fast float %7101, %7098
  %7103 = call float @dx.op.dot3.f32(i32 55, float %5645, float %5646, float %5647, float %7093, float %7094, float %7095)  ; Dot3(ax,ay,az,bx,by,bz)
  %7104 = fmul fast float %7103, %7103
  %7105 = call float @dx.op.unary.f32(i32 6, float %7096)  ; FAbs(value)
  %7106 = call float @dx.op.binary.f32(i32 35, float %6080, float 0x3F847AE140000000)  ; FMax(a,b)
  %7107 = fmul fast float %7106, %7106
  %7108 = fmul fast float %7107, %7107
  %7109 = fsub fast float 1.000000e+00, %7108
  %7110 = fmul fast float %5692, %5692
  %7111 = fmul fast float %7110, %7109
  %7112 = fadd fast float %7111, %7108
  %7113 = bitcast float %7112 to i32
  %7114 = ashr i32 %7113, 1
  %7115 = add nsw i32 %7114, 532487669
  %7116 = bitcast i32 %7115 to float
  %7117 = fadd fast float %7116, %5692
  %7118 = fmul fast float %7108, %7104
  %7119 = fsub fast float 1.000000e+00, %7104
  %7120 = fadd fast float %7119, %7118
  %7121 = fmul fast float %7105, %7105
  %7122 = fmul fast float %7121, %7109
  %7123 = fadd fast float %7122, %7108
  %7124 = bitcast float %7123 to i32
  %7125 = ashr i32 %7124, 1
  %7126 = add nsw i32 %7125, 532487669
  %7127 = bitcast i32 %7126 to float
  %7128 = fadd fast float %7127, %7105
  %7129 = fmul fast float %7120, %7120
  %7130 = fmul fast float %7129, %7117
  %7131 = fmul fast float %7130, %7128
  %7132 = fdiv fast float 0x3FF0A00000000000, %7131
  %7133 = fmul fast float %7132, %7108
  %7134 = fmul fast float %5940, 0x3FF9999980000000
  %7135 = fsub fast float 5.000000e+00, %7134
  %7136 = call float @dx.op.unary.f32(i32 6, float %7097)  ; FAbs(value)
  %7137 = fsub fast float 1.000000e+00, %7136
  %7138 = fmul fast float %5940, 0x41D9660740000000
  %7139 = fadd fast float %7138, 0xC1EFBF8940000000
  %7140 = bitcast float %7137 to i32
  %7141 = sitofp i32 %7140 to float
  %7142 = fmul fast float %7141, %7135
  %7143 = fadd fast float %7139, %7142
  %7144 = fptosi float %7143 to i32
  %7145 = bitcast i32 %7144 to float
  %7146 = fsub fast float 1.000000e+00, %5648
  %7147 = fsub fast float 1.000000e+00, %5649
  %7148 = fsub fast float 1.000000e+00, %5690
  %7149 = fmul fast float %7145, %7146
  %7150 = fmul fast float %7145, %7147
  %7151 = fmul fast float %7145, %7148
  %7152 = fadd fast float %7149, %5648
  %7153 = fadd fast float %7150, %5649
  %7154 = fadd fast float %7151, %5690
  br i1 %5963, label %7155, label %7178

; <label>:7155                                    ; preds = %7084
  %7156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4694, float %7136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7157 = extractvalue %dx.types.ResRet.f32 %7156, 0
  %7158 = extractvalue %dx.types.ResRet.f32 %7156, 1
  %7159 = extractvalue %dx.types.ResRet.f32 %7156, 2
  %7160 = fadd fast float %7157, -5.000000e-01
  %7161 = fadd fast float %7158, -5.000000e-01
  %7162 = fadd fast float %7159, -5.000000e-01
  %7163 = fmul fast float %5648, 4.000000e+00
  %7164 = fmul fast float %7163, %7146
  %7165 = fmul fast float %7164, %7160
  %7166 = fmul fast float %5649, 4.000000e+00
  %7167 = fmul fast float %7166, %7147
  %7168 = fmul fast float %7167, %7161
  %7169 = fmul fast float %5690, 4.000000e+00
  %7170 = fmul fast float %7169, %7148
  %7171 = fmul fast float %7170, %7162
  %7172 = fadd fast float %7165, %7152
  %7173 = fadd fast float %7168, %7153
  %7174 = fadd fast float %7171, %7154
  %7175 = call float @dx.op.unary.f32(i32 7, float %7172)  ; Saturate(value)
  %7176 = call float @dx.op.unary.f32(i32 7, float %7173)  ; Saturate(value)
  %7177 = call float @dx.op.unary.f32(i32 7, float %7174)  ; Saturate(value)
  br label %7178

; <label>:7178                                    ; preds = %7155, %7084
  %7179 = phi float [ %7175, %7155 ], [ %7152, %7084 ]
  %7180 = phi float [ %7176, %7155 ], [ %7153, %7084 ]
  %7181 = phi float [ %7177, %7155 ], [ %7154, %7084 ]
  %7182 = fmul fast float %7096, 9.843750e-01
  %7183 = fadd fast float %7182, 7.812500e-03
  %7184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %7183, float %5944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7185 = extractvalue %dx.types.ResRet.f32 %7184, 0
  %7186 = extractvalue %dx.types.ResRet.f32 %7184, 1
  %7187 = extractvalue %dx.types.ResRet.f32 %7184, 2
  %7188 = extractvalue %dx.types.ResRet.f32 %7184, 3
  %7189 = fsub fast float %7187, %7185
  %7190 = fsub fast float %7188, %7186
  %7191 = fmul fast float %7189, %5950
  %7192 = fmul fast float %7190, %5950
  %7193 = fadd fast float %7191, %7185
  %7194 = fadd fast float %7192, %7186
  %7195 = fmul fast float %7193, %5648
  %7196 = fmul fast float %7193, %5649
  %7197 = fmul fast float %7193, %5690
  %7198 = fadd fast float %7195, %7194
  %7199 = fadd fast float %7196, %7194
  %7200 = fadd fast float %7197, %7194
  br i1 %5963, label %7201, label %7224

; <label>:7201                                    ; preds = %7178
  %7202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4694, float %7096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7203 = extractvalue %dx.types.ResRet.f32 %7202, 0
  %7204 = extractvalue %dx.types.ResRet.f32 %7202, 1
  %7205 = extractvalue %dx.types.ResRet.f32 %7202, 2
  %7206 = fadd fast float %7203, -5.000000e-01
  %7207 = fadd fast float %7204, -5.000000e-01
  %7208 = fadd fast float %7205, -5.000000e-01
  %7209 = fmul fast float %5648, 4.000000e+00
  %7210 = fmul fast float %7209, %7146
  %7211 = fmul fast float %7210, %7206
  %7212 = fmul fast float %5649, 4.000000e+00
  %7213 = fmul fast float %7212, %7147
  %7214 = fmul fast float %7213, %7207
  %7215 = fmul fast float %5690, 4.000000e+00
  %7216 = fmul fast float %7215, %7148
  %7217 = fmul fast float %7216, %7208
  %7218 = fadd fast float %7211, %7198
  %7219 = fadd fast float %7214, %7199
  %7220 = fadd fast float %7217, %7200
  %7221 = call float @dx.op.unary.f32(i32 7, float %7218)  ; Saturate(value)
  %7222 = call float @dx.op.unary.f32(i32 7, float %7219)  ; Saturate(value)
  %7223 = call float @dx.op.unary.f32(i32 7, float %7220)  ; Saturate(value)
  br label %7224

; <label>:7224                                    ; preds = %7201, %7178
  %7225 = phi float [ %7221, %7201 ], [ %7198, %7178 ]
  %7226 = phi float [ %7222, %7201 ], [ %7199, %7178 ]
  %7227 = phi float [ %7223, %7201 ], [ %7200, %7178 ]
  %7228 = call float @dx.op.binary.f32(i32 35, float %7226, float %7227)  ; FMax(a,b)
  %7229 = call float @dx.op.binary.f32(i32 35, float %7225, float %7228)  ; FMax(a,b)
  %7230 = fsub fast float 1.000000e+00, %7229
  %7231 = call float @dx.op.binary.f32(i32 35, float %7105, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7232 = fdiv fast float %3998, %7231
  %7233 = fmul fast float %6021, %7232
  %7234 = fmul fast float %6023, %7232
  %7235 = fmul fast float %6025, %7232
  %7236 = call float @dx.op.unary.f32(i32 21, float %7233)  ; Exp(value)
  %7237 = call float @dx.op.unary.f32(i32 21, float %7234)  ; Exp(value)
  %7238 = call float @dx.op.unary.f32(i32 21, float %7235)  ; Exp(value)
  %7239 = call float @dx.op.unary.f32(i32 7, float %7236)  ; Saturate(value)
  %7240 = call float @dx.op.unary.f32(i32 7, float %7237)  ; Saturate(value)
  %7241 = call float @dx.op.unary.f32(i32 7, float %7238)  ; Saturate(value)
  %7242 = select i1 %6018, float %7239, float 0.000000e+00
  %7243 = select i1 %6019, float %7240, float 0.000000e+00
  %7244 = select i1 %6020, float %7241, float 0.000000e+00
  %7245 = fsub fast float -0.000000e+00, %5645
  %7246 = fsub fast float -0.000000e+00, %5646
  %7247 = fsub fast float -0.000000e+00, %5647
  %7248 = call float @dx.op.dot3.f32(i32 55, float %6251, float %6252, float %6253, float %7245, float %7246, float %7247)  ; Dot3(ax,ay,az,bx,by,bz)
  %7249 = call float @dx.op.unary.f32(i32 7, float %7248)  ; Saturate(value)
  %7250 = fmul fast float %7249, 9.843750e-01
  %7251 = fadd fast float %7250, 7.812500e-03
  %7252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %7251, float %5944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7253 = extractvalue %dx.types.ResRet.f32 %7252, 0
  %7254 = extractvalue %dx.types.ResRet.f32 %7252, 1
  %7255 = extractvalue %dx.types.ResRet.f32 %7252, 2
  %7256 = extractvalue %dx.types.ResRet.f32 %7252, 3
  %7257 = fsub fast float %7255, %7253
  %7258 = fsub fast float %7256, %7254
  %7259 = fmul fast float %7257, %5950
  %7260 = fmul fast float %7258, %5950
  %7261 = fadd fast float %7259, %7253
  %7262 = fadd fast float %7260, %7254
  %7263 = fmul fast float %7261, %5648
  %7264 = fmul fast float %7261, %5649
  %7265 = fmul fast float %7261, %5690
  %7266 = fadd fast float %7263, %7262
  %7267 = fadd fast float %7264, %7262
  %7268 = fadd fast float %7265, %7262
  br i1 %5963, label %7269, label %7292

; <label>:7269                                    ; preds = %7224
  %7270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4694, float %7249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7271 = extractvalue %dx.types.ResRet.f32 %7270, 0
  %7272 = extractvalue %dx.types.ResRet.f32 %7270, 1
  %7273 = extractvalue %dx.types.ResRet.f32 %7270, 2
  %7274 = fadd fast float %7271, -5.000000e-01
  %7275 = fadd fast float %7272, -5.000000e-01
  %7276 = fadd fast float %7273, -5.000000e-01
  %7277 = fmul fast float %5648, 4.000000e+00
  %7278 = fmul fast float %7277, %7146
  %7279 = fmul fast float %7278, %7274
  %7280 = fmul fast float %5649, 4.000000e+00
  %7281 = fmul fast float %7280, %7147
  %7282 = fmul fast float %7281, %7275
  %7283 = fmul fast float %5690, 4.000000e+00
  %7284 = fmul fast float %7283, %7148
  %7285 = fmul fast float %7284, %7276
  %7286 = fadd fast float %7279, %7266
  %7287 = fadd fast float %7282, %7267
  %7288 = fadd fast float %7285, %7268
  %7289 = call float @dx.op.unary.f32(i32 7, float %7286)  ; Saturate(value)
  %7290 = call float @dx.op.unary.f32(i32 7, float %7287)  ; Saturate(value)
  %7291 = call float @dx.op.unary.f32(i32 7, float %7288)  ; Saturate(value)
  br label %7292

; <label>:7292                                    ; preds = %7269, %7224
  %7293 = phi float [ %7289, %7269 ], [ %7266, %7224 ]
  %7294 = phi float [ %7290, %7269 ], [ %7267, %7224 ]
  %7295 = phi float [ %7291, %7269 ], [ %7268, %7224 ]
  %7296 = call float @dx.op.binary.f32(i32 35, float %7294, float %7295)  ; FMax(a,b)
  %7297 = call float @dx.op.binary.f32(i32 35, float %7293, float %7296)  ; FMax(a,b)
  %7298 = fsub fast float 1.000000e+00, %7297
  %7299 = fmul fast float %6080, %6086
  %7300 = fadd fast float %6079, %7299
  %7301 = call float @dx.op.unary.f32(i32 7, float %7300)  ; Saturate(value)
  %7302 = fsub fast float %6251, %5698
  %7303 = fsub fast float %6252, %5699
  %7304 = fsub fast float %6253, %5700
  %7305 = call float @dx.op.dot3.f32(i32 55, float %7302, float %7303, float %7304, float %7302, float %7303, float %7304)  ; Dot3(ax,ay,az,bx,by,bz)
  %7306 = call float @dx.op.unary.f32(i32 25, float %7305)  ; Rsqrt(value)
  %7307 = fmul fast float %7306, %7302
  %7308 = fmul fast float %7306, %7303
  %7309 = fmul fast float %7306, %7304
  %7310 = call float @dx.op.dot3.f32(i32 55, float %7245, float %7246, float %7247, float %7307, float %7308, float %7309)  ; Dot3(ax,ay,az,bx,by,bz)
  %7311 = fmul fast float %7310, %7310
  %7312 = call float @dx.op.unary.f32(i32 6, float %7249)  ; FAbs(value)
  %7313 = call float @dx.op.binary.f32(i32 35, float %7301, float 0x3F847AE140000000)  ; FMax(a,b)
  %7314 = fmul fast float %7313, %7313
  %7315 = fmul fast float %7314, %7314
  %7316 = fsub fast float 1.000000e+00, %7315
  %7317 = fmul fast float %7110, %7316
  %7318 = fadd fast float %7317, %7315
  %7319 = bitcast float %7318 to i32
  %7320 = ashr i32 %7319, 1
  %7321 = add nsw i32 %7320, 532487669
  %7322 = bitcast i32 %7321 to float
  %7323 = fadd fast float %7322, %5692
  %7324 = fmul fast float %7315, %7311
  %7325 = fsub fast float 1.000000e+00, %7311
  %7326 = fadd fast float %7325, %7324
  %7327 = fmul fast float %7312, %7312
  %7328 = fmul fast float %7327, %7316
  %7329 = fadd fast float %7328, %7315
  %7330 = bitcast float %7329 to i32
  %7331 = ashr i32 %7330, 1
  %7332 = add nsw i32 %7331, 532487669
  %7333 = bitcast i32 %7332 to float
  %7334 = fadd fast float %7333, %7312
  %7335 = fmul fast float %7326, %7326
  %7336 = fmul fast float %7335, %7323
  %7337 = fmul fast float %7336, %7334
  %7338 = fdiv fast float 0x3FF0A00000000000, %7337
  %7339 = fmul fast float %7338, %7315
  %7340 = fmul fast float %7249, %7242
  %7341 = fmul fast float %7249, %7243
  %7342 = fmul fast float %7249, %7244
  %7343 = fmul fast float %7340, %7298
  %7344 = fmul fast float %7343, %7339
  %7345 = fmul fast float %7341, %7298
  %7346 = fmul fast float %7345, %7339
  %7347 = fmul fast float %7342, %7298
  %7348 = fmul fast float %7347, %7339
  %7349 = fmul fast float %7179, %7133
  %7350 = fmul fast float %7180, %7133
  %7351 = fmul fast float %7181, %7133
  %7352 = fsub fast float 1.000000e+00, %7097
  %7353 = bitcast float %7352 to i32
  %7354 = sitofp i32 %7353 to float
  %7355 = fmul fast float %7354, 5.000000e+00
  %7356 = fadd fast float %7355, 0xC1EFBF8940000000
  %7357 = fptosi float %7356 to i32
  %7358 = bitcast i32 %7357 to float
  %7359 = fmul fast float %7358, %4695
  %7360 = fmul fast float %7230, %7359
  %7361 = fmul fast float %7360, %6013
  %7362 = fmul fast float %7360, %6014
  %7363 = fmul fast float %7360, %6015
  %7364 = fadd fast float %7361, %7349
  %7365 = fadd fast float %7362, %7350
  %7366 = fadd fast float %7363, %7351
  %7367 = fmul fast float %7364, %7102
  %7368 = fmul fast float %7365, %7102
  %7369 = fmul fast float %7366, %7102
  %7370 = fmul fast float %7102, %7085
  %7371 = fmul fast float %7370, %7230
  %7372 = fmul fast float %7102, %7086
  %7373 = fmul fast float %7372, %7230
  %7374 = fmul fast float %7102, %7087
  %7375 = fmul fast float %7374, %7230
  %7376 = fadd fast float %7367, %7344
  %7377 = fadd fast float %7368, %7346
  %7378 = fadd fast float %7369, %7348
  %7379 = fmul fast float %7376, %7085
  %7380 = fmul fast float %7377, %7086
  %7381 = fmul fast float %7378, %7087
  %7382 = fadd fast float %7371, %5997
  %7383 = fmul fast float %7382, %4691
  %7384 = fadd fast float %7373, %5998
  %7385 = fmul fast float %7384, %4691
  %7386 = fadd fast float %7375, %5999
  %7387 = fmul fast float %7386, %4691
  %7388 = fadd fast float %7379, %6237
  %7389 = fmul fast float %7388, %4691
  %7390 = fadd fast float %7380, %6241
  %7391 = fmul fast float %7390, %4691
  %7392 = fadd fast float %7381, %6245
  %7393 = fmul fast float %7392, %4691
  br label %7394

; <label>:7394                                    ; preds = %7292, %7079, %6221
  %7395 = phi float [ %6238, %6221 ], [ %6238, %7079 ], [ %7389, %7292 ]
  %7396 = phi float [ %6242, %6221 ], [ %6242, %7079 ], [ %7391, %7292 ]
  %7397 = phi float [ %6246, %6221 ], [ %6246, %7079 ], [ %7393, %7292 ]
  %7398 = phi float [ %6110, %6221 ], [ %6110, %7079 ], [ %7383, %7292 ]
  %7399 = phi float [ %6111, %6221 ], [ %6111, %7079 ], [ %7385, %7292 ]
  %7400 = phi float [ %6112, %6221 ], [ %6112, %7079 ], [ %7387, %7292 ]
  %7401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7402 = extractvalue %dx.types.CBufRet.f32 %7401, 0
  %7403 = fmul fast float %7402, %6093
  %7404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7405 = extractvalue %dx.types.CBufRet.f32 %7404, 3
  %7406 = fsub fast float 1.000000e+00, %4698
  %7407 = call float @dx.op.unary.f32(i32 7, float %7406)  ; Saturate(value)
  %7408 = fadd fast float %7400, %4697
  %7409 = fmul fast float %7408, %4698
  %7410 = fmul fast float %7407, %7405
  %7411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7412 = extractvalue %dx.types.CBufRet.f32 %7411, 3
  %7413 = fmul fast float %7398, %5651
  %7414 = fmul fast float %7399, %5652
  %7415 = fmul fast float %7400, %5653
  %7416 = fcmp fast ogt float %92, %215
  %7417 = and i1 %7416, %4766
  %7418 = or i1 %4845, %7417
  %7419 = icmp eq i32 %4765, 2
  %7420 = fcmp fast ole float %92, %215
  %7421 = and i1 %7420, %7419
  %7422 = or i1 %7421, %7418
  br i1 %7417, label %7423, label %7672

; <label>:7423                                    ; preds = %7394
  %7424 = fmul fast float %6173, %101
  %7425 = fmul fast float %6174, %102
  %7426 = call float @dx.op.unary.f32(i32 7, float %7424)  ; Saturate(value)
  %7427 = call float @dx.op.unary.f32(i32 7, float %7425)  ; Saturate(value)
  %7428 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %39, float %7426, float %7427, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7429 = extractvalue %dx.types.ResRet.f32 %7428, 0
  %7430 = extractvalue %dx.types.ResRet.f32 %7428, 1
  %7431 = extractvalue %dx.types.ResRet.f32 %7428, 2
  %7432 = extractvalue %dx.types.ResRet.f32 %7428, 3
  %7433 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %39, float %7426, float %7427, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7434 = extractvalue %dx.types.ResRet.f32 %7433, 0
  %7435 = extractvalue %dx.types.ResRet.f32 %7433, 1
  %7436 = extractvalue %dx.types.ResRet.f32 %7433, 2
  %7437 = extractvalue %dx.types.ResRet.f32 %7433, 3
  %7438 = call float @dx.op.binary.f32(i32 35, float %7430, float %7431)  ; FMax(a,b)
  %7439 = call float @dx.op.binary.f32(i32 35, float %7429, float %7438)  ; FMax(a,b)
  %7440 = call float @dx.op.binary.f32(i32 35, float %7439, float %7432)  ; FMax(a,b)
  %7441 = call float @dx.op.binary.f32(i32 36, float %7435, float %7436)  ; FMin(a,b)
  %7442 = call float @dx.op.binary.f32(i32 36, float %7434, float %7441)  ; FMin(a,b)
  %7443 = call float @dx.op.binary.f32(i32 36, float %7442, float %7437)  ; FMin(a,b)
  %7444 = fmul fast float %7440, 2.550000e+02
  %7445 = fadd fast float %7444, 0x3F70101020000000
  %7446 = fptoui float %7445 to i32
  %7447 = fmul fast float %7443, 2.550000e+02
  %7448 = fadd fast float %7447, 0x3F70101020000000
  %7449 = fptoui float %7448 to i32
  %7450 = icmp ult i32 %7446, %7449
  br i1 %7450, label %7451, label %7617

; <label>:7451                                    ; preds = %7423
  %7452 = fcmp fast ogt float %91, 9.843750e-01
  %7453 = fadd fast float %92, -4.000000e+00
  %7454 = select i1 %7452, float -4.000000e+00, float %7453
  %7455 = call float @dx.op.binary.f32(i32 35, float %7454, float 0.000000e+00)  ; FMax(a,b)
  %7456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7457 = extractvalue %dx.types.CBufRet.f32 %7456, 0
  %7458 = fadd fast float %7457, %7455
  %7459 = extractvalue %dx.types.CBufRet.f32 %7456, 2
  %7460 = fmul fast float %7458, %7459
  %7461 = call float @dx.op.unary.f32(i32 23, float %7460)  ; Log(value)
  %7462 = extractvalue %dx.types.CBufRet.f32 %7456, 3
  %7463 = fmul fast float %7462, %7461
  %7464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7465 = extractvalue %dx.types.CBufRet.f32 %7464, 2
  %7466 = fmul fast float %7463, %7465
  %7467 = call float @dx.op.unary.f32(i32 7, float %7466)  ; Saturate(value)
  %7468 = uitofp i32 %7446 to float
  %7469 = uitofp i32 %7449 to float
  %7470 = fadd fast float %7468, 5.000000e-01
  %7471 = fadd fast float %7469, 5.000000e-01
  %7472 = fmul fast float %7465, %7470
  %7473 = fmul fast float %7465, %7471
  %7474 = fadd fast float %7472, 0x3F0FFB4800000000
  %7475 = fadd fast float %7473, 0xBF0FFB4800000000
  %7476 = call float @dx.op.binary.f32(i32 35, float %7467, float %7474)  ; FMax(a,b)
  %7477 = call float @dx.op.binary.f32(i32 36, float %7476, float %7475)  ; FMin(a,b)
  %7478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7479 = extractvalue %dx.types.CBufRet.f32 %7478, 1
  %7480 = extractvalue %dx.types.CBufRet.f32 %7478, 2
  %7481 = extractvalue %dx.types.CBufRet.f32 %7478, 0
  %7482 = fmul fast float %7479, %7477
  %7483 = fadd fast float %7481, %7482
  %7484 = fadd fast float %7481, %7480
  %7485 = fsub fast float %7479, %7480
  %7486 = fadd fast float %7485, %7481
  %7487 = call float @dx.op.binary.f32(i32 35, float %7483, float %7484)  ; FMax(a,b)
  %7488 = call float @dx.op.binary.f32(i32 36, float %7487, float %7486)  ; FMin(a,b)
  %7489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %37, float %7426, float %7427, float %7488, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7490 = extractvalue %dx.types.ResRet.f32 %7489, 0
  %7491 = extractvalue %dx.types.ResRet.f32 %7489, 1
  %7492 = extractvalue %dx.types.ResRet.f32 %7489, 2
  %7493 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7494 = extractvalue %dx.types.CBufRet.i32 %7493, 0
  %7495 = extractvalue %dx.types.CBufRet.i32 %7493, 1
  %7496 = uitofp i32 %7494 to float
  %7497 = uitofp i32 %7495 to float
  %7498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7499 = extractvalue %dx.types.CBufRet.f32 %7498, 0
  %7500 = extractvalue %dx.types.CBufRet.f32 %7498, 1
  %7501 = fmul fast float %7496, %7426
  %7502 = fmul fast float %7497, %7427
  %7503 = fadd fast float %7501, -5.000000e-01
  %7504 = fadd fast float %7502, -5.000000e-01
  %7505 = call float @dx.op.unary.f32(i32 22, float %7503)  ; Frc(value)
  %7506 = call float @dx.op.unary.f32(i32 22, float %7504)  ; Frc(value)
  %7507 = fmul fast float %7505, %7505
  %7508 = fmul fast float %7507, %7505
  %7509 = fsub fast float 3.000000e+00, %7505
  %7510 = fmul fast float %7507, %7509
  %7511 = fmul fast float %7505, 3.000000e+00
  %7512 = fmul fast float %7508, 3.000000e+00
  %7513 = fmul fast float %7507, 6.000000e+00
  %7514 = fsub fast float %7512, %7513
  %7515 = fadd fast float %7514, 4.000000e+00
  %7516 = fmul fast float %7515, 0x3FC5555560000000
  %7517 = fmul fast float %7508, -3.000000e+00
  %7518 = fadd fast float %7507, %7505
  %7519 = fmul fast float %7518, 3.000000e+00
  %7520 = fadd fast float %7517, 1.000000e+00
  %7521 = fadd fast float %7520, %7519
  %7522 = fmul fast float %7508, 0x3FC5555560000000
  %7523 = fmul fast float %7506, %7506
  %7524 = fmul fast float %7523, %7506
  %7525 = fsub fast float 3.000000e+00, %7506
  %7526 = fmul fast float %7523, %7525
  %7527 = fmul fast float %7506, 3.000000e+00
  %7528 = fmul fast float %7524, 3.000000e+00
  %7529 = fmul fast float %7523, 6.000000e+00
  %7530 = fsub fast float %7528, %7529
  %7531 = fadd fast float %7530, 4.000000e+00
  %7532 = fmul fast float %7531, 0x3FC5555560000000
  %7533 = fmul fast float %7524, -3.000000e+00
  %7534 = fadd fast float %7523, %7506
  %7535 = fmul fast float %7534, 3.000000e+00
  %7536 = fadd fast float %7533, 1.000000e+00
  %7537 = fadd fast float %7536, %7535
  %7538 = fmul fast float %7524, 0x3FC5555560000000
  %7539 = fadd fast float %7505, 1.000000e+00
  %7540 = fsub fast float 1.000000e+00, %7511
  %7541 = fadd fast float %7540, %7510
  %7542 = fadd fast float %7541, %7515
  %7543 = fmul fast float %7542, 0x3FC5555560000000
  %7544 = fdiv fast float %7516, %7543
  %7545 = fsub fast float %7539, %7544
  %7546 = fsub fast float 1.000000e+00, %7505
  %7547 = fadd fast float %7521, %7508
  %7548 = fmul fast float %7547, 0x3FC5555560000000
  %7549 = fdiv fast float %7522, %7548
  %7550 = fadd fast float %7546, %7549
  %7551 = fadd fast float %7506, 1.000000e+00
  %7552 = fsub fast float 1.000000e+00, %7527
  %7553 = fadd fast float %7552, %7526
  %7554 = fadd fast float %7553, %7531
  %7555 = fmul fast float %7554, 0x3FC5555560000000
  %7556 = fdiv fast float %7532, %7555
  %7557 = fsub fast float %7551, %7556
  %7558 = fsub fast float 1.000000e+00, %7506
  %7559 = fadd fast float %7537, %7524
  %7560 = fmul fast float %7559, 0x3FC5555560000000
  %7561 = fdiv fast float %7538, %7560
  %7562 = fadd fast float %7561, %7558
  %7563 = fmul fast float %7545, %7499
  %7564 = fsub fast float %7426, %7563
  %7565 = fmul fast float %7550, %7499
  %7566 = fadd fast float %7565, %7426
  %7567 = fmul fast float %7562, %7500
  %7568 = fadd fast float %7567, %7427
  %7569 = fmul fast float %7557, %7500
  %7570 = fsub fast float %7427, %7569
  %7571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %7564, float %7570, float %7488, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7572 = extractvalue %dx.types.ResRet.f32 %7571, 0
  %7573 = extractvalue %dx.types.ResRet.f32 %7571, 1
  %7574 = extractvalue %dx.types.ResRet.f32 %7571, 2
  %7575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %7566, float %7570, float %7488, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7576 = extractvalue %dx.types.ResRet.f32 %7575, 0
  %7577 = extractvalue %dx.types.ResRet.f32 %7575, 1
  %7578 = extractvalue %dx.types.ResRet.f32 %7575, 2
  %7579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %7564, float %7568, float %7488, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7580 = extractvalue %dx.types.ResRet.f32 %7579, 0
  %7581 = extractvalue %dx.types.ResRet.f32 %7579, 1
  %7582 = extractvalue %dx.types.ResRet.f32 %7579, 2
  %7583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %7566, float %7568, float %7488, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7584 = extractvalue %dx.types.ResRet.f32 %7583, 0
  %7585 = extractvalue %dx.types.ResRet.f32 %7583, 1
  %7586 = extractvalue %dx.types.ResRet.f32 %7583, 2
  %7587 = fsub fast float %7580, %7572
  %7588 = fsub fast float %7581, %7573
  %7589 = fsub fast float %7582, %7574
  %7590 = fmul fast float %7587, %7560
  %7591 = fmul fast float %7588, %7560
  %7592 = fmul fast float %7589, %7560
  %7593 = fadd fast float %7590, %7572
  %7594 = fadd fast float %7591, %7573
  %7595 = fadd fast float %7592, %7574
  %7596 = fsub fast float %7584, %7576
  %7597 = fsub fast float %7585, %7577
  %7598 = fsub fast float %7586, %7578
  %7599 = fmul fast float %7596, %7560
  %7600 = fmul fast float %7597, %7560
  %7601 = fmul fast float %7598, %7560
  %7602 = fsub fast float %7576, %7593
  %7603 = fadd fast float %7602, %7599
  %7604 = fsub fast float %7577, %7594
  %7605 = fadd fast float %7604, %7600
  %7606 = fsub fast float %7578, %7595
  %7607 = fadd fast float %7606, %7601
  %7608 = fmul fast float %7603, %7548
  %7609 = fmul fast float %7605, %7548
  %7610 = fmul fast float %7607, %7548
  %7611 = fadd fast float %7608, %7593
  %7612 = fadd fast float %7609, %7594
  %7613 = fadd fast float %7610, %7595
  %7614 = fmul fast float %7611, %6228
  %7615 = fmul fast float %7612, %6228
  %7616 = fmul fast float %7613, %6228
  br label %7617

; <label>:7617                                    ; preds = %7451, %7423
  %7618 = phi float [ %7490, %7451 ], [ 1.000000e+00, %7423 ]
  %7619 = phi float [ %7491, %7451 ], [ 1.000000e+00, %7423 ]
  %7620 = phi float [ %7492, %7451 ], [ 1.000000e+00, %7423 ]
  %7621 = phi float [ %7614, %7451 ], [ 0.000000e+00, %7423 ]
  %7622 = phi float [ %7615, %7451 ], [ 0.000000e+00, %7423 ]
  %7623 = phi float [ %7616, %7451 ], [ 0.000000e+00, %7423 ]
  %7624 = call float @dx.op.dot3.f32(i32 55, float %7618, float %7619, float %7620, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7625 = call float @dx.op.dot3.f32(i32 55, float %7621, float %7622, float %7623, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7626 = select i1 %254, float %7624, float %7618
  %7627 = select i1 %254, float %7624, float %7619
  %7628 = select i1 %254, float 1.000000e+00, float %7620
  %7629 = select i1 %254, float %7625, float %7621
  %7630 = select i1 %254, float 0.000000e+00, float %7622
  %7631 = select i1 %254, float 0.000000e+00, float %7623
  %7632 = fmul fast float %7626, %7413
  %7633 = fmul fast float %7627, %7414
  %7634 = fmul fast float %7628, %7415
  %7635 = fadd fast float %7632, %7629
  %7636 = fadd fast float %7633, %7630
  %7637 = fadd fast float %7631, %7634
  %7638 = fmul fast float %7626, %7395
  %7639 = fmul fast float %7627, %7396
  %7640 = fmul fast float %7628, %7397
  %7641 = fmul fast float %129, %6173
  %7642 = fmul fast float %131, %6174
  %7643 = fsub fast float 1.000000e+00, %7641
  %7644 = fsub fast float 1.000000e+00, %7642
  %7645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7646 = extractvalue %dx.types.CBufRet.f32 %7645, 0
  %7647 = extractvalue %dx.types.CBufRet.f32 %7645, 1
  %7648 = extractvalue %dx.types.CBufRet.f32 %7645, 2
  %7649 = fmul fast float %7643, %7646
  %7650 = fmul fast float %7643, %7647
  %7651 = fmul fast float %7643, %7648
  %7652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7653 = extractvalue %dx.types.CBufRet.f32 %7652, 0
  %7654 = extractvalue %dx.types.CBufRet.f32 %7652, 1
  %7655 = extractvalue %dx.types.CBufRet.f32 %7652, 2
  %7656 = fmul fast float %7644, %7653
  %7657 = fmul fast float %7644, %7654
  %7658 = fmul fast float %7644, %7655
  %7659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7660 = extractvalue %dx.types.CBufRet.f32 %7659, 0
  %7661 = extractvalue %dx.types.CBufRet.f32 %7659, 1
  %7662 = extractvalue %dx.types.CBufRet.f32 %7659, 2
  %7663 = fadd fast float %7656, %7660
  %7664 = fadd fast float %7663, %7649
  %7665 = fadd fast float %7657, %7661
  %7666 = fadd fast float %7665, %7650
  %7667 = fadd fast float %7658, %7662
  %7668 = fadd fast float %7667, %7651
  %7669 = fmul fast float %7664, %215
  %7670 = fmul fast float %7666, %215
  %7671 = fmul fast float %7668, %215
  br label %7672

; <label>:7672                                    ; preds = %7617, %7394
  %7673 = phi float [ %7669, %7617 ], [ %180, %7394 ]
  %7674 = phi float [ %7670, %7617 ], [ %181, %7394 ]
  %7675 = phi float [ %7671, %7617 ], [ %182, %7394 ]
  %7676 = phi float [ %215, %7617 ], [ %92, %7394 ]
  %7677 = phi float [ %7635, %7617 ], [ %7413, %7394 ]
  %7678 = phi float [ %7636, %7617 ], [ %7414, %7394 ]
  %7679 = phi float [ %7637, %7617 ], [ %7415, %7394 ]
  %7680 = phi float [ %7638, %7617 ], [ %7395, %7394 ]
  %7681 = phi float [ %7639, %7617 ], [ %7396, %7394 ]
  %7682 = phi float [ %7640, %7617 ], [ %7397, %7394 ]
  %7683 = phi float [ %7618, %7617 ], [ 1.000000e+00, %7394 ]
  br i1 %7422, label %8825, label %7684

; <label>:7684                                    ; preds = %7672
  %7685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7686 = extractvalue %dx.types.CBufRet.f32 %7685, 0
  %7687 = extractvalue %dx.types.CBufRet.f32 %7685, 1
  %7688 = extractvalue %dx.types.CBufRet.f32 %7685, 2
  %7689 = extractvalue %dx.types.CBufRet.f32 %7685, 3
  %7690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7691 = extractvalue %dx.types.CBufRet.f32 %7690, 0
  %7692 = extractvalue %dx.types.CBufRet.f32 %7690, 1
  %7693 = extractvalue %dx.types.CBufRet.f32 %7690, 2
  %7694 = extractvalue %dx.types.CBufRet.f32 %7690, 3
  %7695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7696 = extractvalue %dx.types.CBufRet.f32 %7695, 0
  %7697 = extractvalue %dx.types.CBufRet.f32 %7695, 1
  %7698 = extractvalue %dx.types.CBufRet.f32 %7695, 2
  %7699 = extractvalue %dx.types.CBufRet.f32 %7695, 3
  %7700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7701 = extractvalue %dx.types.CBufRet.f32 %7700, 0
  %7702 = extractvalue %dx.types.CBufRet.f32 %7700, 1
  %7703 = extractvalue %dx.types.CBufRet.f32 %7700, 2
  %7704 = extractvalue %dx.types.CBufRet.f32 %7700, 3
  %7705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7706 = extractvalue %dx.types.CBufRet.f32 %7705, 3
  %7707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7708 = extractvalue %dx.types.CBufRet.f32 %7707, 3
  %7709 = extractvalue %dx.types.CBufRet.f32 %7707, 0
  %7710 = extractvalue %dx.types.CBufRet.f32 %7707, 1
  %7711 = extractvalue %dx.types.CBufRet.f32 %7707, 2
  %7712 = fcmp fast olt float %7711, -5.000000e-01
  %7713 = call float @dx.op.dot3.f32(i32 55, float %7673, float %7674, float %7675, float %7673, float %7674, float %7675)  ; Dot3(ax,ay,az,bx,by,bz)
  %7714 = call float @dx.op.unary.f32(i32 25, float %7713)  ; Rsqrt(value)
  %7715 = fmul fast float %7714, %7713
  %7716 = fmul fast float %7714, %7673
  %7717 = fmul fast float %7714, %7674
  %7718 = fmul fast float %7714, %7675
  %7719 = fadd fast float %7715, %7689
  %7720 = call float @dx.op.dot3.f32(i32 55, float %7716, float %7717, float %7718, float %7686, float %7687, float %7688)  ; Dot3(ax,ay,az,bx,by,bz)
  %7721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7722 = extractvalue %dx.types.CBufRet.i32 %7721, 1
  %7723 = and i32 %7722, 1
  %7724 = icmp ne i32 %7723, 0
  %7725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7726 = extractvalue %dx.types.CBufRet.f32 %7725, 2
  %7727 = fcmp fast ogt float %7726, 0.000000e+00
  %7728 = and i1 %7724, %7727
  br i1 %7728, label %7729, label %8135, !dx.controlflow.hints !115

; <label>:7729                                    ; preds = %7684
  %7730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7731 = extractvalue %dx.types.CBufRet.f32 %7730, 3
  %7732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7733 = extractvalue %dx.types.CBufRet.f32 %7732, 2
  %7734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7735 = extractvalue %dx.types.CBufRet.f32 %7734, 2
  %7736 = fsub fast float %7733, %7735
  %7737 = and i32 %7722, 2
  %7738 = extractvalue %dx.types.CBufRet.i32 %7721, 0
  %7739 = call i32 @dx.op.binary.i32(i32 40, i32 %7738, i32 3)  ; UMin(a,b)
  %7740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7741 = extractvalue %dx.types.CBufRet.f32 %7740, 0
  %7742 = extractvalue %dx.types.CBufRet.f32 %7740, 1
  %7743 = extractvalue %dx.types.CBufRet.f32 %7734, 0
  %7744 = extractvalue %dx.types.CBufRet.f32 %7734, 1
  %7745 = fsub fast float %7741, %7743
  %7746 = fsub fast float %7742, %7744
  %7747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7748 = extractvalue %dx.types.CBufRet.f32 %7747, 0
  %7749 = fcmp fast ogt float %7748, 0.000000e+00
  %7750 = fsub fast float -0.000000e+00, %7745
  %7751 = fsub fast float -0.000000e+00, %7746
  %7752 = call float @dx.op.dot2.f32(i32 54, float %7716, float %7717, float %7716, float %7717)  ; Dot2(ax,ay,bx,by)
  %7753 = call float @dx.op.dot2.f32(i32 54, float %7716, float %7717, float %7750, float %7751)  ; Dot2(ax,ay,bx,by)
  %7754 = fmul fast float %7753, 2.000000e+00
  %7755 = call float @dx.op.dot2.f32(i32 54, float %7750, float %7751, float %7750, float %7751)  ; Dot2(ax,ay,bx,by)
  %7756 = fmul fast float %7748, %7748
  %7757 = fsub fast float %7755, %7756
  %7758 = fmul fast float %7754, %7754
  %7759 = fmul fast float %7752, 4.000000e+00
  %7760 = fmul fast float %7759, %7757
  %7761 = fsub fast float %7758, %7760
  %7762 = fcmp fast ogt float %7761, 0.000000e+00
  br i1 %7762, label %7763, label %7778

; <label>:7763                                    ; preds = %7729
  %7764 = fcmp fast ogt float %7754, 0.000000e+00
  %7765 = call float @dx.op.unary.f32(i32 24, float %7761)  ; Sqrt(value)
  %7766 = fsub fast float -0.000000e+00, %7765
  %7767 = select i1 %7764, float %7765, float %7766
  %7768 = fadd fast float %7767, %7754
  %7769 = fmul float %7768, -5.000000e-01
  %7770 = fdiv fast float %7769, %7752
  %7771 = call float @dx.op.binary.f32(i32 35, float %7770, float 0.000000e+00)  ; FMax(a,b)
  %7772 = call float @dx.op.binary.f32(i32 36, float %7715, float %7771)  ; FMin(a,b)
  %7773 = fdiv fast float %7757, %7769
  %7774 = call float @dx.op.binary.f32(i32 35, float %7773, float 0.000000e+00)  ; FMax(a,b)
  %7775 = call float @dx.op.binary.f32(i32 36, float %7715, float %7774)  ; FMin(a,b)
  %7776 = call float @dx.op.binary.f32(i32 36, float %7772, float %7775)  ; FMin(a,b)
  %7777 = call float @dx.op.binary.f32(i32 35, float %7772, float %7775)  ; FMax(a,b)
  br label %7778

; <label>:7778                                    ; preds = %7763, %7729
  %7779 = phi float [ %7777, %7763 ], [ -1.000000e+00, %7729 ]
  %7780 = phi float [ %7776, %7763 ], [ -1.000000e+00, %7729 ]
  %7781 = phi i1 [ true, %7763 ], [ false, %7729 ]
  %7782 = and i1 %7749, %7781
  br i1 %7782, label %7783, label %7785

; <label>:7783                                    ; preds = %7778
  %7784 = fcmp fast oeq float %7780, %7779
  br i1 %7784, label %8088, label %7786

; <label>:7785                                    ; preds = %7778
  br i1 %7749, label %8088, label %7786

; <label>:7786                                    ; preds = %7785, %7783
  %7787 = phi float [ %7715, %7785 ], [ %7779, %7783 ]
  %7788 = phi float [ 0.000000e+00, %7785 ], [ %7780, %7783 ]
  %7789 = icmp ne i32 %7737, 0
  %7790 = fmul fast float %7787, %7718
  %7791 = fadd fast float %7790, %7731
  %7792 = fmul fast float %7791, %7787
  %7793 = select i1 %7789, float 0.000000e+00, float %7792
  %7794 = fcmp fast oeq float %7718, 0.000000e+00
  %7795 = fdiv fast float %7736, %7718
  %7796 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7795)  ; FMax(a,b)
  %7797 = select i1 %7794, float %7787, float %7796
  %7798 = call float @dx.op.binary.f32(i32 36, float %7787, float %7797)  ; FMin(a,b)
  %7799 = fcmp fast ogt float %7718, 0.000000e+00
  %7800 = fcmp fast olt float %7736, 0.000000e+00
  br i1 %7799, label %7801, label %7858

; <label>:7801                                    ; preds = %7786
  %7802 = icmp eq i32 %7737, 0
  br i1 %7800, label %7803, label %7847

; <label>:7803                                    ; preds = %7801
  %7804 = select i1 %7802, float %7787, float 0.000000e+00
  %7805 = fsub fast float -0.000000e+00, %7804
  %7806 = call float @dx.op.unary.f32(i32 6, float %7805)  ; FAbs(value)
  %7807 = fmul fast float %7804, %7718
  %7808 = fadd fast float %7807, %7731
  %7809 = fmul fast float %7806, %7808
  %7810 = fsub fast float %7793, %7809
  %7811 = fsub fast float %7787, %7806
  %7812 = select i1 %7802, float %7811, float 0.000000e+00
  %7813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7814 = extractvalue %dx.types.CBufRet.f32 %7813, 0
  %7815 = extractvalue %dx.types.CBufRet.f32 %7813, 1
  %7816 = extractvalue %dx.types.CBufRet.f32 %7813, 2
  %7817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7818 = extractvalue %dx.types.CBufRet.f32 %7817, 0
  %7819 = extractvalue %dx.types.CBufRet.f32 %7817, 1
  %7820 = extractvalue %dx.types.CBufRet.f32 %7817, 2
  %7821 = extractvalue %dx.types.CBufRet.f32 %7817, 3
  %7822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7823 = extractvalue %dx.types.CBufRet.f32 %7822, 3
  %7824 = call float @dx.op.binary.f32(i32 36, float %7810, float %7823)  ; FMin(a,b)
  %7825 = fmul fast float %7821, %7812
  %7826 = call float @dx.op.unary.f32(i32 7, float %7825)  ; Saturate(value)
  %7827 = fsub fast float %7818, %7814
  %7828 = fsub fast float %7819, %7815
  %7829 = fsub fast float %7820, %7816
  %7830 = fmul fast float %7826, %7827
  %7831 = fmul fast float %7826, %7828
  %7832 = fmul fast float %7826, %7829
  %7833 = fadd fast float %7830, %7814
  %7834 = fadd fast float %7831, %7815
  %7835 = fadd fast float %7832, %7816
  %7836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7837 = extractvalue %dx.types.CBufRet.f32 %7836, 0
  %7838 = extractvalue %dx.types.CBufRet.f32 %7836, 1
  %7839 = fadd fast float %7838, %7837
  %7840 = call float @dx.op.unary.f32(i32 7, float %7839)  ; Saturate(value)
  %7841 = extractvalue %dx.types.CBufRet.f32 %7836, 2
  %7842 = extractvalue %dx.types.CBufRet.f32 %7836, 3
  %7843 = fadd fast float %7842, %7841
  %7844 = call float @dx.op.unary.f32(i32 7, float %7843)  ; Saturate(value)
  %7845 = fmul fast float %7840, %7824
  %7846 = fmul fast float %7845, %7844
  br label %8088

; <label>:7847                                    ; preds = %7801
  br i1 %7802, label %7848, label %7869

; <label>:7848                                    ; preds = %7847
  %7849 = call float @dx.op.binary.f32(i32 36, float %7798, float %7788)  ; FMin(a,b)
  %7850 = fsub fast float %7798, %7849
  %7851 = fsub fast float %7850, %7787
  %7852 = call float @dx.op.unary.f32(i32 6, float %7851)  ; FAbs(value)
  %7853 = fadd fast float %7850, %7787
  %7854 = fmul fast float %7853, %7718
  %7855 = fadd fast float %7854, %7731
  %7856 = fmul fast float %7855, %7852
  %7857 = fsub fast float %7793, %7856
  br label %7869

; <label>:7858                                    ; preds = %7786
  br i1 %7800, label %7859, label %7869

; <label>:7859                                    ; preds = %7858
  %7860 = call float @dx.op.binary.f32(i32 35, float %7788, float %7798)  ; FMax(a,b)
  %7861 = icmp eq i32 %7737, 0
  %7862 = select i1 %7861, float %7798, float 0.000000e+00
  %7863 = fsub fast float -0.000000e+00, %7862
  %7864 = call float @dx.op.unary.f32(i32 6, float %7863)  ; FAbs(value)
  %7865 = fmul fast float %7862, %7718
  %7866 = fadd fast float %7865, %7731
  %7867 = fmul fast float %7864, %7866
  %7868 = fsub fast float %7793, %7867
  br label %7869

; <label>:7869                                    ; preds = %7859, %7858, %7848, %7847
  %7870 = phi float [ %7788, %7847 ], [ %7788, %7848 ], [ %7860, %7859 ], [ %7788, %7858 ]
  %7871 = phi float [ 0.000000e+00, %7847 ], [ %7852, %7848 ], [ %7864, %7859 ], [ 0.000000e+00, %7858 ]
  %7872 = phi float [ %7793, %7847 ], [ %7857, %7848 ], [ %7868, %7859 ], [ %7793, %7858 ]
  %7873 = phi float [ %7798, %7847 ], [ %7798, %7848 ], [ %7787, %7859 ], [ %7787, %7858 ]
  %7874 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %7874, align 4, !tbaa !116, !noalias !118
  %7875 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %7875, align 4, !tbaa !116, !noalias !118
  %7876 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %7876, align 4, !tbaa !116, !noalias !118
  %7877 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %7877, align 4, !tbaa !116, !noalias !118
  %7878 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %7878, align 4, !tbaa !116, !noalias !118
  %7879 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %7879, align 4, !tbaa !116, !noalias !118
  %7880 = icmp sgt i32 %7739, 0
  br i1 %7880, label %7881, label %7942

; <label>:7881                                    ; preds = %7869
  br label %7882

; <label>:7882                                    ; preds = %7931, %7881
  %7883 = phi i32 [ %7932, %7931 ], [ 0, %7881 ]
  %7884 = phi i32 [ %7933, %7931 ], [ 0, %7881 ]
  %7885 = add nuw i32 %7884, 171
  %7886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 %7885)  ; CBufferLoadLegacy(handle,regIndex)
  %7887 = extractvalue %dx.types.CBufRet.f32 %7886, 0
  %7888 = extractvalue %dx.types.CBufRet.f32 %7886, 1
  %7889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7890 = extractvalue %dx.types.CBufRet.f32 %7889, 0
  %7891 = extractvalue %dx.types.CBufRet.f32 %7889, 1
  %7892 = fsub fast float %7887, %7890
  %7893 = fsub fast float %7888, %7891
  %7894 = extractvalue %dx.types.CBufRet.f32 %7886, 2
  %7895 = fsub fast float -0.000000e+00, %7892
  %7896 = fsub fast float -0.000000e+00, %7893
  %7897 = call float @dx.op.dot2.f32(i32 54, float %7716, float %7717, float %7895, float %7896)  ; Dot2(ax,ay,bx,by)
  %7898 = fmul fast float %7897, 2.000000e+00
  %7899 = call float @dx.op.dot2.f32(i32 54, float %7895, float %7896, float %7895, float %7896)  ; Dot2(ax,ay,bx,by)
  %7900 = fmul fast float %7894, %7894
  %7901 = fsub fast float %7899, %7900
  %7902 = fmul fast float %7898, %7898
  %7903 = fmul fast float %7759, %7901
  %7904 = fsub fast float %7902, %7903
  %7905 = fcmp fast ogt float %7904, 0.000000e+00
  br i1 %7905, label %7906, label %7921

; <label>:7906                                    ; preds = %7882
  %7907 = fcmp fast ogt float %7898, 0.000000e+00
  %7908 = call float @dx.op.unary.f32(i32 24, float %7904)  ; Sqrt(value)
  %7909 = fsub fast float -0.000000e+00, %7908
  %7910 = select i1 %7907, float %7908, float %7909
  %7911 = fadd fast float %7910, %7898
  %7912 = fmul float %7911, -5.000000e-01
  %7913 = fdiv fast float %7912, %7752
  %7914 = call float @dx.op.binary.f32(i32 35, float %7913, float 0.000000e+00)  ; FMax(a,b)
  %7915 = call float @dx.op.binary.f32(i32 36, float %7787, float %7914)  ; FMin(a,b)
  %7916 = fdiv fast float %7901, %7912
  %7917 = call float @dx.op.binary.f32(i32 35, float %7916, float 0.000000e+00)  ; FMax(a,b)
  %7918 = call float @dx.op.binary.f32(i32 36, float %7787, float %7917)  ; FMin(a,b)
  %7919 = call float @dx.op.binary.f32(i32 36, float %7915, float %7918)  ; FMin(a,b)
  %7920 = call float @dx.op.binary.f32(i32 35, float %7915, float %7918)  ; FMax(a,b)
  br label %7921

; <label>:7921                                    ; preds = %7906, %7882
  %7922 = phi float [ %7920, %7906 ], [ -1.000000e+00, %7882 ]
  %7923 = phi float [ %7919, %7906 ], [ -1.000000e+00, %7882 ]
  %7924 = phi i1 [ true, %7906 ], [ false, %7882 ]
  br i1 %7924, label %7925, label %7931

; <label>:7925                                    ; preds = %7921
  %7926 = call float @dx.op.binary.f32(i32 35, float %7870, float %7923)  ; FMax(a,b)
  %7927 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %7884
  store float %7926, float* %7927, align 4, !tbaa !116, !noalias !118
  %7928 = call float @dx.op.binary.f32(i32 35, float %7870, float %7922)  ; FMax(a,b)
  %7929 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7884
  store float %7928, float* %7929, align 4, !tbaa !116, !noalias !118
  %7930 = add nsw i32 %7883, 1
  br label %7931

; <label>:7931                                    ; preds = %7925, %7921
  %7932 = phi i32 [ %7930, %7925 ], [ %7883, %7921 ]
  %7933 = add nuw nsw i32 %7884, 1
  %7934 = icmp eq i32 %7933, %7739
  br i1 %7934, label %7935, label %7882

; <label>:7935                                    ; preds = %7931
  %7936 = load float, float* %7876, align 4, !tbaa !116, !alias.scope !134, !noalias !137
  %7937 = load float, float* %7875, align 4, !tbaa !116, !alias.scope !140, !noalias !141
  %7938 = load float, float* %7874, align 4, !tbaa !116, !alias.scope !142, !noalias !143
  %7939 = load float, float* %7879, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %7940 = load float, float* %7878, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  %7941 = load float, float* %7877, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  br label %7942

; <label>:7942                                    ; preds = %7935, %7869
  %7943 = phi float [ -1.000000e+00, %7869 ], [ %7941, %7935 ]
  %7944 = phi float [ -1.000000e+00, %7869 ], [ %7940, %7935 ]
  %7945 = phi float [ -1.000000e+00, %7869 ], [ %7939, %7935 ]
  %7946 = phi float [ -1.000000e+00, %7869 ], [ %7938, %7935 ]
  %7947 = phi float [ -1.000000e+00, %7869 ], [ %7937, %7935 ]
  %7948 = phi float [ -1.000000e+00, %7869 ], [ %7936, %7935 ]
  %7949 = phi i32 [ 0, %7869 ], [ %7932, %7935 ]
  %7950 = call float @dx.op.binary.f32(i32 36, float %7947, float %7948)  ; FMin(a,b)
  %7951 = call float @dx.op.binary.f32(i32 36, float %7946, float %7950)  ; FMin(a,b)
  %7952 = call float @dx.op.binary.f32(i32 35, float %7946, float %7947)  ; FMax(a,b)
  %7953 = call float @dx.op.binary.f32(i32 36, float %7952, float %7948)  ; FMin(a,b)
  %7954 = call float @dx.op.binary.f32(i32 36, float %7946, float %7947)  ; FMin(a,b)
  %7955 = call float @dx.op.binary.f32(i32 35, float %7954, float %7953)  ; FMax(a,b)
  %7956 = call float @dx.op.binary.f32(i32 35, float %7947, float %7948)  ; FMax(a,b)
  %7957 = call float @dx.op.binary.f32(i32 35, float %7946, float %7956)  ; FMax(a,b)
  store float %7951, float* %7874, align 4, !tbaa !116, !alias.scope !142, !noalias !143
  store float %7955, float* %7875, align 4, !tbaa !116, !alias.scope !140, !noalias !141
  store float %7957, float* %7876, align 4, !tbaa !116, !alias.scope !134, !noalias !137
  %7958 = call float @dx.op.binary.f32(i32 36, float %7944, float %7945)  ; FMin(a,b)
  %7959 = call float @dx.op.binary.f32(i32 36, float %7943, float %7958)  ; FMin(a,b)
  %7960 = call float @dx.op.binary.f32(i32 35, float %7943, float %7944)  ; FMax(a,b)
  %7961 = call float @dx.op.binary.f32(i32 36, float %7960, float %7945)  ; FMin(a,b)
  %7962 = call float @dx.op.binary.f32(i32 36, float %7943, float %7944)  ; FMin(a,b)
  %7963 = call float @dx.op.binary.f32(i32 35, float %7962, float %7961)  ; FMax(a,b)
  %7964 = call float @dx.op.binary.f32(i32 35, float %7944, float %7945)  ; FMax(a,b)
  %7965 = call float @dx.op.binary.f32(i32 35, float %7943, float %7964)  ; FMax(a,b)
  store float %7959, float* %7877, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  store float %7963, float* %7878, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  store float %7965, float* %7879, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %7966 = sub nsw i32 3, %7949
  %7967 = icmp sgt i32 %7966, 2
  br i1 %7967, label %7968, label %8006

; <label>:7968                                    ; preds = %7942
  %7969 = icmp eq i32 %7737, 0
  %7970 = fsub fast float %7787, %7871
  %7971 = select i1 %7969, float %7970, float %7871
  %7972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7973 = extractvalue %dx.types.CBufRet.f32 %7972, 0
  %7974 = extractvalue %dx.types.CBufRet.f32 %7972, 1
  %7975 = extractvalue %dx.types.CBufRet.f32 %7972, 2
  %7976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7977 = extractvalue %dx.types.CBufRet.f32 %7976, 0
  %7978 = extractvalue %dx.types.CBufRet.f32 %7976, 1
  %7979 = extractvalue %dx.types.CBufRet.f32 %7976, 2
  %7980 = extractvalue %dx.types.CBufRet.f32 %7976, 3
  %7981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7982 = extractvalue %dx.types.CBufRet.f32 %7981, 3
  %7983 = call float @dx.op.binary.f32(i32 36, float %7872, float %7982)  ; FMin(a,b)
  %7984 = fmul fast float %7980, %7971
  %7985 = call float @dx.op.unary.f32(i32 7, float %7984)  ; Saturate(value)
  %7986 = fsub fast float %7977, %7973
  %7987 = fsub fast float %7978, %7974
  %7988 = fsub fast float %7979, %7975
  %7989 = fmul fast float %7985, %7986
  %7990 = fmul fast float %7985, %7987
  %7991 = fmul fast float %7985, %7988
  %7992 = fadd fast float %7989, %7973
  %7993 = fadd fast float %7990, %7974
  %7994 = fadd fast float %7991, %7975
  %7995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7996 = extractvalue %dx.types.CBufRet.f32 %7995, 0
  %7997 = extractvalue %dx.types.CBufRet.f32 %7995, 1
  %7998 = fadd fast float %7997, %7996
  %7999 = call float @dx.op.unary.f32(i32 7, float %7998)  ; Saturate(value)
  %8000 = extractvalue %dx.types.CBufRet.f32 %7995, 2
  %8001 = extractvalue %dx.types.CBufRet.f32 %7995, 3
  %8002 = fadd fast float %8001, %8000
  %8003 = call float @dx.op.unary.f32(i32 7, float %8002)  ; Saturate(value)
  %8004 = fmul fast float %7999, %7983
  %8005 = fmul fast float %8004, %8003
  br label %8088

; <label>:8006                                    ; preds = %7942
  %8007 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %7966
  %8008 = load float, float* %8007, align 4, !tbaa !116, !noalias !118
  %8009 = fcmp fast olt float %8008, %7873
  %8010 = icmp sgt i32 %7949, 0
  %8011 = and i1 %8010, %8009
  br i1 %8011, label %8012, label %8049

; <label>:8012                                    ; preds = %8006
  br label %8013

; <label>:8013                                    ; preds = %8042, %8012
  %8014 = phi float [ %8043, %8042 ], [ %7871, %8012 ]
  %8015 = phi float [ %8044, %8042 ], [ %7872, %8012 ]
  %8016 = phi float [ %8024, %8042 ], [ %8008, %8012 ]
  %8017 = phi i32 [ %8021, %8042 ], [ %7966, %8012 ]
  %8018 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8017
  %8019 = load float, float* %8018, align 4, !tbaa !116, !noalias !118
  %8020 = icmp slt i32 %8017, 2
  %8021 = add nsw i32 %8017, 1
  %8022 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8021
  %8023 = load float, float* %8022, align 4, !tbaa !116, !noalias !118
  %8024 = select i1 %8020, float %8023, float %7787
  %8025 = call float @dx.op.binary.f32(i32 36, float %8024, float %8019)  ; FMin(a,b)
  %8026 = call float @dx.op.binary.f32(i32 36, float %7873, float %8025)  ; FMin(a,b)
  %8027 = icmp eq i32 %7737, 0
  %8028 = fadd fast float %8026, %8016
  %8029 = fmul fast float %8028, %7718
  %8030 = fadd fast float %8029, %7731
  br i1 %8027, label %8036, label %8031

; <label>:8031                                    ; preds = %8013
  %8032 = fsub fast float %8026, %8016
  %8033 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8032)  ; FMax(a,b)
  %8034 = fmul fast float %8033, %8030
  %8035 = fadd fast float %8034, %8015
  br label %8042

; <label>:8036                                    ; preds = %8013
  %8037 = fsub fast float %8016, %8026
  %8038 = call float @dx.op.unary.f32(i32 6, float %8037)  ; FAbs(value)
  %8039 = fadd fast float %8038, %8014
  %8040 = fmul fast float %8038, %8030
  %8041 = fsub fast float %8015, %8040
  br label %8042

; <label>:8042                                    ; preds = %8036, %8031
  %8043 = phi float [ %8033, %8031 ], [ %8039, %8036 ]
  %8044 = phi float [ %8035, %8031 ], [ %8041, %8036 ]
  %8045 = fcmp fast olt float %8024, %7873
  %8046 = icmp slt i32 %8021, 3
  %8047 = and i1 %8046, %8045
  br i1 %8047, label %8013, label %8048

; <label>:8048                                    ; preds = %8042
  br label %8049

; <label>:8049                                    ; preds = %8048, %8006
  %8050 = phi float [ %7871, %8006 ], [ %8043, %8048 ]
  %8051 = phi float [ %7872, %8006 ], [ %8044, %8048 ]
  %8052 = fsub fast float %7787, %8050
  %8053 = select i1 %7789, float %8050, float %8052
  %8054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8055 = extractvalue %dx.types.CBufRet.f32 %8054, 0
  %8056 = extractvalue %dx.types.CBufRet.f32 %8054, 1
  %8057 = extractvalue %dx.types.CBufRet.f32 %8054, 2
  %8058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8059 = extractvalue %dx.types.CBufRet.f32 %8058, 0
  %8060 = extractvalue %dx.types.CBufRet.f32 %8058, 1
  %8061 = extractvalue %dx.types.CBufRet.f32 %8058, 2
  %8062 = extractvalue %dx.types.CBufRet.f32 %8058, 3
  %8063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8064 = extractvalue %dx.types.CBufRet.f32 %8063, 3
  %8065 = call float @dx.op.binary.f32(i32 36, float %8051, float %8064)  ; FMin(a,b)
  %8066 = fmul fast float %8062, %8053
  %8067 = call float @dx.op.unary.f32(i32 7, float %8066)  ; Saturate(value)
  %8068 = fsub fast float %8059, %8055
  %8069 = fsub fast float %8060, %8056
  %8070 = fsub fast float %8061, %8057
  %8071 = fmul fast float %8067, %8068
  %8072 = fmul fast float %8067, %8069
  %8073 = fmul fast float %8067, %8070
  %8074 = fadd fast float %8071, %8055
  %8075 = fadd fast float %8072, %8056
  %8076 = fadd fast float %8073, %8057
  %8077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8078 = extractvalue %dx.types.CBufRet.f32 %8077, 0
  %8079 = extractvalue %dx.types.CBufRet.f32 %8077, 1
  %8080 = fadd fast float %8079, %8078
  %8081 = call float @dx.op.unary.f32(i32 7, float %8080)  ; Saturate(value)
  %8082 = extractvalue %dx.types.CBufRet.f32 %8077, 2
  %8083 = extractvalue %dx.types.CBufRet.f32 %8077, 3
  %8084 = fadd fast float %8083, %8082
  %8085 = call float @dx.op.unary.f32(i32 7, float %8084)  ; Saturate(value)
  %8086 = fmul fast float %8081, %8065
  %8087 = fmul fast float %8086, %8085
  br label %8088

; <label>:8088                                    ; preds = %8049, %7968, %7803, %7785, %7783
  %8089 = phi float [ %7812, %7803 ], [ %7971, %7968 ], [ %8053, %8049 ], [ 0.000000e+00, %7783 ], [ 0.000000e+00, %7785 ]
  %8090 = phi float [ %7846, %7803 ], [ %8005, %7968 ], [ %8087, %8049 ], [ 0.000000e+00, %7783 ], [ 0.000000e+00, %7785 ]
  %8091 = phi float [ %7833, %7803 ], [ %7992, %7968 ], [ %8074, %8049 ], [ 0.000000e+00, %7783 ], [ 0.000000e+00, %7785 ]
  %8092 = phi float [ %7834, %7803 ], [ %7993, %7968 ], [ %8075, %8049 ], [ 0.000000e+00, %7783 ], [ 0.000000e+00, %7785 ]
  %8093 = phi float [ %7835, %7803 ], [ %7994, %7968 ], [ %8076, %8049 ], [ 0.000000e+00, %7783 ], [ 0.000000e+00, %7785 ]
  %8094 = fmul fast float %7726, %8090
  %8095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8096 = extractvalue %dx.types.CBufRet.f32 %8095, 2
  %8097 = fsub fast float %7733, %8096
  %8098 = fcmp fast olt float %8094, -2.000000e+01
  %8099 = call float @dx.op.unary.f32(i32 21, float %8094)  ; Exp(value)
  %8100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8101 = extractvalue %dx.types.CBufRet.f32 %8100, 2
  %8102 = extractvalue %dx.types.CBufRet.f32 %8100, 3
  %8103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8104 = extractvalue %dx.types.CBufRet.f32 %8103, 2
  %8105 = fmul fast float %8102, %8097
  %8106 = call float @dx.op.unary.f32(i32 7, float %8105)  ; Saturate(value)
  %8107 = fsub fast float 1.000000e+00, %8106
  %8108 = fmul fast float %7718, 5.000000e-01
  %8109 = fadd fast float %8108, 5.000000e-01
  %8110 = call float @dx.op.unary.f32(i32 7, float %8109)  ; Saturate(value)
  %8111 = fsub fast float 1.000000e+00, %8110
  %8112 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8107)  ; FMax(a,b)
  %8113 = fdiv fast float %8111, %8112
  %8114 = fsub fast float %8097, %7675
  %8115 = call float @dx.op.unary.f32(i32 6, float %8114)  ; FAbs(value)
  %8116 = fmul fast float %8115, %8101
  %8117 = call float @dx.op.unary.f32(i32 7, float %8113)  ; Saturate(value)
  %8118 = fsub fast float 1.000000e+00, %8116
  %8119 = fmul fast float %8118, %8117
  %8120 = fadd fast float %8119, %8116
  %8121 = fmul fast float %8104, %8097
  %8122 = call float @dx.op.unary.f32(i32 7, float %8121)  ; Saturate(value)
  %8123 = fsub fast float 1.000000e+00, %8120
  %8124 = fmul fast float %8123, %8122
  %8125 = fadd fast float %8124, %8120
  %8126 = call float @dx.op.unary.f32(i32 7, float %8125)  ; Saturate(value)
  %8127 = fadd fast float %8099, -1.000000e+00
  %8128 = select i1 %8098, float -1.000000e+00, float %8127
  %8129 = fmul fast float %8126, %8128
  %8130 = fadd fast float %8129, 1.000000e+00
  %8131 = fsub fast float -0.000000e+00, %8129
  %8132 = fmul fast float %8091, %8131
  %8133 = fmul fast float %8092, %8131
  %8134 = fmul fast float %8093, %8131
  br label %8135

; <label>:8135                                    ; preds = %8088, %7684
  %8136 = phi float [ %8089, %8088 ], [ 0.000000e+00, %7684 ]
  %8137 = phi float [ %8130, %8088 ], [ 1.000000e+00, %7684 ]
  %8138 = phi float [ %8132, %8088 ], [ 0.000000e+00, %7684 ]
  %8139 = phi float [ %8133, %8088 ], [ 0.000000e+00, %7684 ]
  %8140 = phi float [ %8134, %8088 ], [ 0.000000e+00, %7684 ]
  %8141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8142 = extractvalue %dx.types.CBufRet.f32 %8141, 1
  %8143 = fsub fast float 1.000000e+00, %8137
  %8144 = fmul fast float %8143, %7719
  %8145 = fmul fast float %8144, %8142
  %8146 = fsub fast float %7719, %8145
  br i1 %7712, label %8147, label %8176, !dx.controlflow.hints !154

; <label>:8147                                    ; preds = %8135
  %8148 = fmul fast float %7720, %7709
  %8149 = fadd fast float %8148, %7710
  %8150 = call float @dx.op.unary.f32(i32 7, float %8149)  ; Saturate(value)
  %8151 = fmul fast float %7691, %8146
  %8152 = fsub fast float -0.000000e+00, %8151
  %8153 = fmul fast float %7692, %8146
  %8154 = fsub fast float -0.000000e+00, %8153
  %8155 = call float @dx.op.unary.f32(i32 21, float %8152)  ; Exp(value)
  %8156 = call float @dx.op.unary.f32(i32 21, float %8154)  ; Exp(value)
  %8157 = call float @dx.op.binary.f32(i32 35, float %7699, float %8155)  ; FMax(a,b)
  %8158 = call float @dx.op.binary.f32(i32 35, float %7699, float %8156)  ; FMax(a,b)
  %8159 = fsub fast float %8158, %8157
  %8160 = fmul fast float %8159, %8150
  %8161 = fadd fast float %8160, %8157
  %8162 = call float @dx.op.unary.f32(i32 7, float %8161)  ; Saturate(value)
  %8163 = fsub fast float %7696, %7701
  %8164 = fsub fast float %7697, %7702
  %8165 = fsub fast float %7698, %7703
  %8166 = fmul fast float %8150, %8163
  %8167 = fmul fast float %8150, %8164
  %8168 = fmul fast float %8150, %8165
  %8169 = fadd fast float %8166, %7701
  %8170 = fadd fast float %8167, %7702
  %8171 = fadd fast float %8168, %7703
  %8172 = fsub fast float 1.000000e+00, %8162
  %8173 = fmul fast float %8172, %8169
  %8174 = fmul fast float %8172, %8170
  %8175 = fmul fast float %8172, %8171
  br label %8235

; <label>:8176                                    ; preds = %8135
  %8177 = fmul fast float %8146, %7708
  %8178 = call float @dx.op.unary.f32(i32 7, float %8177)  ; Saturate(value)
  %8179 = fsub fast float 2.000000e+00, %8178
  %8180 = fmul fast float %8178, 9.921875e-01
  %8181 = fmul fast float %8180, %8179
  %8182 = fadd fast float %8181, 3.906250e-03
  %8183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %8182, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8184 = extractvalue %dx.types.ResRet.f32 %8183, 0
  %8185 = fsub fast float %8178, %8184
  %8186 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8185)  ; FMax(a,b)
  %8187 = fmul fast float %7694, %7675
  %8188 = call float @dx.op.unary.f32(i32 6, float %8187)  ; FAbs(value)
  %8189 = fcmp fast ogt float %8188, 0x3EB0C6F7A0000000
  br i1 %8189, label %8190, label %8196, !dx.controlflow.hints !155

; <label>:8190                                    ; preds = %8176
  %8191 = fmul fast float %8187, 0xBFF7154760000000
  %8192 = call float @dx.op.unary.f32(i32 21, float %8191)  ; Exp(value)
  %8193 = fsub fast float 1.000000e+00, %8192
  %8194 = fdiv fast float %8193, %8187
  %8195 = fmul fast float %8194, %7704
  br label %8196

; <label>:8196                                    ; preds = %8190, %8176
  %8197 = phi float [ %8195, %8190 ], [ %7704, %8176 ]
  %8198 = fadd fast float %8197, %7706
  %8199 = fmul fast float %8198, %8186
  %8200 = fmul fast float %7691, %8199
  %8201 = fsub fast float -0.000000e+00, %8200
  %8202 = fmul fast float %7692, %8199
  %8203 = fsub fast float -0.000000e+00, %8202
  %8204 = fmul fast float %7693, %8199
  %8205 = fsub fast float -0.000000e+00, %8204
  %8206 = call float @dx.op.unary.f32(i32 21, float %8201)  ; Exp(value)
  %8207 = call float @dx.op.unary.f32(i32 21, float %8203)  ; Exp(value)
  %8208 = call float @dx.op.unary.f32(i32 21, float %8205)  ; Exp(value)
  %8209 = fmul fast float %7720, %7720
  %8210 = fadd fast float %8209, 1.000000e+00
  %8211 = fmul fast float %8210, 0x3FAE8EC8A0000000
  %8212 = fmul fast float %8211, %7701
  %8213 = fmul fast float %8211, %7702
  %8214 = fmul fast float %8211, %7703
  %8215 = fmul fast float %7720, %7699
  %8216 = fsub fast float 1.000000e+00, %8215
  %8217 = fmul fast float %7699, %7699
  %8218 = fsub fast float 1.000000e+00, %8217
  %8219 = fmul fast float %8218, 0x3FB45F3060000000
  %8220 = fmul fast float %8216, %8216
  %8221 = fdiv fast float 1.000000e+00, %8220
  %8222 = fmul fast float %8219, %8221
  %8223 = fmul fast float %8222, %7696
  %8224 = fmul fast float %8222, %7697
  %8225 = fmul fast float %8222, %7698
  %8226 = fadd fast float %8223, %8212
  %8227 = fadd fast float %8224, %8213
  %8228 = fadd fast float %8225, %8214
  %8229 = fsub fast float 1.000000e+00, %8206
  %8230 = fsub fast float 1.000000e+00, %8207
  %8231 = fsub fast float 1.000000e+00, %8208
  %8232 = fmul fast float %8226, %8229
  %8233 = fmul fast float %8227, %8230
  %8234 = fmul fast float %8228, %8231
  br label %8235

; <label>:8235                                    ; preds = %8196, %8147
  %8236 = phi float [ %8173, %8147 ], [ %8232, %8196 ]
  %8237 = phi float [ %8174, %8147 ], [ %8233, %8196 ]
  %8238 = phi float [ %8175, %8147 ], [ %8234, %8196 ]
  %8239 = phi float [ %8162, %8147 ], [ %8206, %8196 ]
  %8240 = phi float [ %8162, %8147 ], [ %8207, %8196 ]
  %8241 = phi float [ %8162, %8147 ], [ %8208, %8196 ]
  br i1 %7728, label %8242, label %8440, !dx.controlflow.hints !156

; <label>:8242                                    ; preds = %8235
  %8243 = extractvalue %dx.types.CBufRet.f32 %8141, 0
  %8244 = fmul fast float %8243, %8143
  %8245 = fsub fast float %8138, %8236
  %8246 = fsub fast float %8139, %8237
  %8247 = fsub fast float %8140, %8238
  %8248 = fmul fast float %8244, %8245
  %8249 = fmul fast float %8244, %8246
  %8250 = fmul fast float %8244, %8247
  %8251 = fadd fast float %8248, %8236
  %8252 = fadd fast float %8249, %8237
  %8253 = fadd fast float %8250, %8238
  %8254 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8239)  ; FMax(a,b)
  %8255 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8240)  ; FMax(a,b)
  %8256 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8241)  ; FMax(a,b)
  %8257 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8137)  ; FMax(a,b)
  %8258 = call float @dx.op.binary.f32(i32 35, float %8136, float %8146)  ; FMax(a,b)
  %8259 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8258)  ; FMax(a,b)
  %8260 = fdiv fast float %8136, %8259
  %8261 = call float @dx.op.unary.f32(i32 7, float %8260)  ; Saturate(value)
  %8262 = fdiv fast float %8146, %8259
  %8263 = call float @dx.op.unary.f32(i32 7, float %8262)  ; Saturate(value)
  %8264 = fcmp fast une float %8257, 1.000000e+00
  br i1 %8264, label %8265, label %8278, !dx.controlflow.hints !157

; <label>:8265                                    ; preds = %8242
  %8266 = call float @dx.op.unary.f32(i32 23, float %8257)  ; Log(value)
  %8267 = fmul fast float %8266, 0x3FE62E4300000000
  %8268 = fmul fast float %8138, %8267
  %8269 = fsub fast float -0.000000e+00, %8268
  %8270 = fmul fast float %8139, %8267
  %8271 = fsub fast float -0.000000e+00, %8270
  %8272 = fmul fast float %8140, %8267
  %8273 = fsub fast float -0.000000e+00, %8272
  %8274 = fsub fast float 1.000000e+00, %8257
  %8275 = fdiv fast float %8269, %8274
  %8276 = fdiv fast float %8271, %8274
  %8277 = fdiv fast float %8273, %8274
  br label %8278

; <label>:8278                                    ; preds = %8265, %8242
  %8279 = phi float [ %8275, %8265 ], [ %8138, %8242 ]
  %8280 = phi float [ %8276, %8265 ], [ %8139, %8242 ]
  %8281 = phi float [ %8277, %8265 ], [ %8140, %8242 ]
  %8282 = phi float [ %8267, %8265 ], [ 0.000000e+00, %8242 ]
  %8283 = fcmp fast une float %8254, 1.000000e+00
  br i1 %8283, label %8284, label %8291, !dx.controlflow.hints !158

; <label>:8284                                    ; preds = %8278
  %8285 = call float @dx.op.unary.f32(i32 23, float %8254)  ; Log(value)
  %8286 = fmul fast float %8285, 0x3FE62E4300000000
  %8287 = fmul fast float %8251, %8286
  %8288 = fsub fast float -0.000000e+00, %8287
  %8289 = fsub fast float 1.000000e+00, %8254
  %8290 = fdiv fast float %8288, %8289
  br label %8291

; <label>:8291                                    ; preds = %8284, %8278
  %8292 = phi float [ %8290, %8284 ], [ %8251, %8278 ]
  %8293 = phi float [ %8286, %8284 ], [ 0.000000e+00, %8278 ]
  %8294 = fcmp fast une float %8255, 1.000000e+00
  br i1 %8294, label %8295, label %8302, !dx.controlflow.hints !158

; <label>:8295                                    ; preds = %8291
  %8296 = call float @dx.op.unary.f32(i32 23, float %8255)  ; Log(value)
  %8297 = fmul fast float %8296, 0x3FE62E4300000000
  %8298 = fmul fast float %8252, %8297
  %8299 = fsub fast float -0.000000e+00, %8298
  %8300 = fsub fast float 1.000000e+00, %8255
  %8301 = fdiv fast float %8299, %8300
  br label %8302

; <label>:8302                                    ; preds = %8295, %8291
  %8303 = phi float [ %8301, %8295 ], [ %8252, %8291 ]
  %8304 = phi float [ %8297, %8295 ], [ 0.000000e+00, %8291 ]
  %8305 = fcmp fast une float %8256, 1.000000e+00
  br i1 %8305, label %8306, label %8313, !dx.controlflow.hints !158

; <label>:8306                                    ; preds = %8302
  %8307 = call float @dx.op.unary.f32(i32 23, float %8256)  ; Log(value)
  %8308 = fmul fast float %8307, 0x3FE62E4300000000
  %8309 = fmul fast float %8253, %8308
  %8310 = fsub fast float -0.000000e+00, %8309
  %8311 = fsub fast float 1.000000e+00, %8256
  %8312 = fdiv fast float %8310, %8311
  br label %8313

; <label>:8313                                    ; preds = %8306, %8302
  %8314 = phi float [ %8312, %8306 ], [ %8253, %8302 ]
  %8315 = phi float [ %8308, %8306 ], [ 0.000000e+00, %8302 ]
  %8316 = fmul fast float %8279, %8263
  %8317 = fmul fast float %8280, %8263
  %8318 = fmul fast float %8281, %8263
  %8319 = fmul fast float %8282, %8263
  %8320 = fmul fast float %8292, %8261
  %8321 = fmul fast float %8303, %8261
  %8322 = fmul fast float %8314, %8261
  %8323 = fmul fast float %8293, %8261
  %8324 = fmul fast float %8304, %8261
  %8325 = fmul fast float %8315, %8261
  %8326 = fadd fast float %8320, %8316
  %8327 = fadd fast float %8321, %8317
  %8328 = fadd fast float %8322, %8318
  %8329 = fadd fast float %8323, %8319
  %8330 = fadd fast float %8324, %8319
  %8331 = fadd fast float %8325, %8319
  %8332 = fcmp fast une float %8329, 0.000000e+00
  br i1 %8332, label %8333, label %8340, !dx.controlflow.hints !159

; <label>:8333                                    ; preds = %8313
  %8334 = fmul fast float %8329, 0x3FF7154760000000
  %8335 = call float @dx.op.unary.f32(i32 21, float %8334)  ; Exp(value)
  %8336 = fsub fast float 1.000000e+00, %8335
  %8337 = fmul fast float %8326, %8336
  %8338 = fsub fast float -0.000000e+00, %8337
  %8339 = fdiv fast float %8338, %8329
  br label %8340

; <label>:8340                                    ; preds = %8333, %8313
  %8341 = phi float [ %8335, %8333 ], [ 1.000000e+00, %8313 ]
  %8342 = phi float [ %8339, %8333 ], [ %8326, %8313 ]
  %8343 = fcmp fast une float %8330, 0.000000e+00
  br i1 %8343, label %8344, label %8351, !dx.controlflow.hints !159

; <label>:8344                                    ; preds = %8340
  %8345 = fmul fast float %8330, 0x3FF7154760000000
  %8346 = call float @dx.op.unary.f32(i32 21, float %8345)  ; Exp(value)
  %8347 = fsub fast float 1.000000e+00, %8346
  %8348 = fmul fast float %8327, %8347
  %8349 = fsub fast float -0.000000e+00, %8348
  %8350 = fdiv fast float %8349, %8330
  br label %8351

; <label>:8351                                    ; preds = %8344, %8340
  %8352 = phi float [ %8346, %8344 ], [ 1.000000e+00, %8340 ]
  %8353 = phi float [ %8350, %8344 ], [ %8327, %8340 ]
  %8354 = fcmp fast une float %8331, 0.000000e+00
  br i1 %8354, label %8355, label %8362, !dx.controlflow.hints !159

; <label>:8355                                    ; preds = %8351
  %8356 = fmul fast float %8331, 0x3FF7154760000000
  %8357 = call float @dx.op.unary.f32(i32 21, float %8356)  ; Exp(value)
  %8358 = fsub fast float 1.000000e+00, %8357
  %8359 = fmul fast float %8328, %8358
  %8360 = fsub fast float -0.000000e+00, %8359
  %8361 = fdiv fast float %8360, %8331
  br label %8362

; <label>:8362                                    ; preds = %8355, %8351
  %8363 = phi float [ %8357, %8355 ], [ 1.000000e+00, %8351 ]
  %8364 = phi float [ %8361, %8355 ], [ %8328, %8351 ]
  %8365 = fcmp fast ogt float %8261, %8263
  br i1 %8365, label %8366, label %8386

; <label>:8366                                    ; preds = %8362
  %8367 = fsub fast float 1.000000e+00, %8263
  %8368 = fmul fast float %8279, %8367
  %8369 = fmul fast float %8280, %8367
  %8370 = fmul fast float %8281, %8367
  %8371 = fmul fast float %8282, %8367
  %8372 = fcmp fast une float %8371, 0.000000e+00
  br i1 %8372, label %8373, label %8424, !dx.controlflow.hints !160

; <label>:8373                                    ; preds = %8366
  %8374 = fmul fast float %8371, 0x3FF7154760000000
  %8375 = call float @dx.op.unary.f32(i32 21, float %8374)  ; Exp(value)
  %8376 = fsub fast float 1.000000e+00, %8375
  %8377 = fmul fast float %8368, %8376
  %8378 = fsub fast float -0.000000e+00, %8377
  %8379 = fmul fast float %8369, %8376
  %8380 = fsub fast float -0.000000e+00, %8379
  %8381 = fmul fast float %8370, %8376
  %8382 = fsub fast float -0.000000e+00, %8381
  %8383 = fdiv fast float %8378, %8371
  %8384 = fdiv fast float %8380, %8371
  %8385 = fdiv fast float %8382, %8371
  br label %8424

; <label>:8386                                    ; preds = %8362
  %8387 = fsub fast float 1.000000e+00, %8261
  %8388 = fmul fast float %8292, %8387
  %8389 = fmul fast float %8303, %8387
  %8390 = fmul fast float %8314, %8387
  %8391 = fmul fast float %8293, %8387
  %8392 = fmul fast float %8304, %8387
  %8393 = fmul fast float %8315, %8387
  %8394 = fcmp fast une float %8391, 0.000000e+00
  br i1 %8394, label %8395, label %8402, !dx.controlflow.hints !159

; <label>:8395                                    ; preds = %8386
  %8396 = fmul fast float %8391, 0x3FF7154760000000
  %8397 = call float @dx.op.unary.f32(i32 21, float %8396)  ; Exp(value)
  %8398 = fsub fast float 1.000000e+00, %8397
  %8399 = fmul fast float %8388, %8398
  %8400 = fsub fast float -0.000000e+00, %8399
  %8401 = fdiv fast float %8400, %8391
  br label %8402

; <label>:8402                                    ; preds = %8395, %8386
  %8403 = phi float [ %8401, %8395 ], [ %8388, %8386 ]
  %8404 = phi float [ %8397, %8395 ], [ 1.000000e+00, %8386 ]
  %8405 = fcmp fast une float %8392, 0.000000e+00
  br i1 %8405, label %8406, label %8413, !dx.controlflow.hints !159

; <label>:8406                                    ; preds = %8402
  %8407 = fmul fast float %8392, 0x3FF7154760000000
  %8408 = call float @dx.op.unary.f32(i32 21, float %8407)  ; Exp(value)
  %8409 = fsub fast float 1.000000e+00, %8408
  %8410 = fmul fast float %8389, %8409
  %8411 = fsub fast float -0.000000e+00, %8410
  %8412 = fdiv fast float %8411, %8392
  br label %8413

; <label>:8413                                    ; preds = %8406, %8402
  %8414 = phi float [ %8412, %8406 ], [ %8389, %8402 ]
  %8415 = phi float [ %8408, %8406 ], [ 1.000000e+00, %8402 ]
  %8416 = fcmp fast une float %8393, 0.000000e+00
  br i1 %8416, label %8417, label %8424, !dx.controlflow.hints !159

; <label>:8417                                    ; preds = %8413
  %8418 = fmul fast float %8393, 0x3FF7154760000000
  %8419 = call float @dx.op.unary.f32(i32 21, float %8418)  ; Exp(value)
  %8420 = fsub fast float 1.000000e+00, %8419
  %8421 = fmul fast float %8390, %8420
  %8422 = fsub fast float -0.000000e+00, %8421
  %8423 = fdiv fast float %8422, %8393
  br label %8424

; <label>:8424                                    ; preds = %8417, %8413, %8373, %8366
  %8425 = phi float [ %8423, %8417 ], [ %8385, %8373 ], [ %8370, %8366 ], [ %8390, %8413 ]
  %8426 = phi float [ %8414, %8417 ], [ %8384, %8373 ], [ %8369, %8366 ], [ %8414, %8413 ]
  %8427 = phi float [ %8403, %8417 ], [ %8383, %8373 ], [ %8368, %8366 ], [ %8403, %8413 ]
  %8428 = phi float [ %8419, %8417 ], [ %8375, %8373 ], [ 1.000000e+00, %8366 ], [ 1.000000e+00, %8413 ]
  %8429 = phi float [ %8415, %8417 ], [ %8375, %8373 ], [ 1.000000e+00, %8366 ], [ %8415, %8413 ]
  %8430 = phi float [ %8404, %8417 ], [ %8375, %8373 ], [ 1.000000e+00, %8366 ], [ %8404, %8413 ]
  %8431 = fmul fast float %8430, %8342
  %8432 = fmul fast float %8429, %8353
  %8433 = fmul fast float %8428, %8364
  %8434 = fadd fast float %8431, %8427
  %8435 = fadd fast float %8432, %8426
  %8436 = fadd fast float %8433, %8425
  %8437 = fmul fast float %8430, %8341
  %8438 = fmul fast float %8429, %8352
  %8439 = fmul fast float %8428, %8363
  br label %8440

; <label>:8440                                    ; preds = %8424, %8235
  %8441 = phi float [ %8439, %8424 ], [ %8241, %8235 ]
  %8442 = phi float [ %8438, %8424 ], [ %8240, %8235 ]
  %8443 = phi float [ %8437, %8424 ], [ %8239, %8235 ]
  %8444 = phi float [ %8436, %8424 ], [ %8238, %8235 ]
  %8445 = phi float [ %8435, %8424 ], [ %8237, %8235 ]
  %8446 = phi float [ %8434, %8424 ], [ %8236, %8235 ]
  %8447 = fmul fast float %8443, %7683
  %8448 = call float @dx.op.dot3.f32(i32 55, float %8443, float %8442, float %8441, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8449 = call float @dx.op.dot3.f32(i32 55, float %8446, float %8445, float %8444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8450 = select i1 %254, float %8448, float %8443
  %8451 = select i1 %254, float %8448, float %8442
  %8452 = select i1 %254, float 1.000000e+00, float %8441
  %8453 = select i1 %254, float %8449, float %8446
  %8454 = select i1 %254, float 0.000000e+00, float %8445
  %8455 = select i1 %254, float 0.000000e+00, float %8444
  %8456 = fmul fast float %8450, %7677
  %8457 = fmul fast float %8451, %7678
  %8458 = fmul fast float %8452, %7679
  %8459 = fadd fast float %8456, %8453
  %8460 = fadd fast float %8457, %8454
  %8461 = fadd fast float %8455, %8458
  %8462 = fmul fast float %8450, %7680
  %8463 = fmul fast float %8451, %7681
  %8464 = fmul fast float %8452, %7682
  %8465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8466 = extractvalue %dx.types.CBufRet.i32 %8465, 0
  %8467 = icmp eq i32 %8466, 0
  br i1 %8467, label %8825, label %8468, !dx.controlflow.hints !161

; <label>:8468                                    ; preds = %8440
  %8469 = fmul fast float %6173, %101
  %8470 = fmul fast float %6174, %102
  %8471 = fmul fast float %8469, 2.000000e+00
  %8472 = fmul fast float %8470, 2.000000e+00
  %8473 = fsub fast float 1.000000e+00, %8471
  %8474 = fsub fast float 1.000000e+00, %8472
  %8475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8476 = extractvalue %dx.types.CBufRet.f32 %8475, 0
  %8477 = extractvalue %dx.types.CBufRet.f32 %8475, 1
  %8478 = extractvalue %dx.types.CBufRet.f32 %8475, 2
  %8479 = fmul fast float %8473, %8476
  %8480 = fmul fast float %8473, %8477
  %8481 = fmul fast float %8473, %8478
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8482, 0
  %8484 = extractvalue %dx.types.CBufRet.f32 %8482, 1
  %8485 = extractvalue %dx.types.CBufRet.f32 %8482, 2
  %8486 = fmul fast float %8474, %8483
  %8487 = fmul fast float %8474, %8484
  %8488 = fmul fast float %8474, %8485
  %8489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8490 = extractvalue %dx.types.CBufRet.f32 %8489, 0
  %8491 = extractvalue %dx.types.CBufRet.f32 %8489, 1
  %8492 = extractvalue %dx.types.CBufRet.f32 %8489, 2
  %8493 = fadd fast float %8486, %8490
  %8494 = fadd fast float %8493, %8479
  %8495 = fadd fast float %8487, %8491
  %8496 = fadd fast float %8495, %8480
  %8497 = fadd fast float %8488, %8492
  %8498 = fadd fast float %8497, %8481
  %8499 = fmul fast float %8494, %7676
  %8500 = fmul fast float %8496, %7676
  %8501 = fmul fast float %8498, %7676
  %8502 = fmul fast float %8499, %8499
  %8503 = fmul fast float %8500, %8500
  %8504 = fadd fast float %8502, %8503
  %8505 = fmul fast float %8501, %8501
  %8506 = fadd fast float %8504, %8505
  %8507 = call float @dx.op.unary.f32(i32 24, float %8506)  ; Sqrt(value)
  %8508 = extractvalue %dx.types.CBufRet.f32 %7411, 0
  %8509 = fsub fast float %8507, %8508
  %8510 = extractvalue %dx.types.CBufRet.f32 %7411, 2
  %8511 = fmul fast float %8509, %8510
  %8512 = call float @dx.op.unary.f32(i32 7, float %8511)  ; Saturate(value)
  %8513 = fadd fast float %8512, -5.000000e-01
  %8514 = fmul fast float %8513, 2.000000e+00
  %8515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8516 = extractvalue %dx.types.CBufRet.f32 %8515, 2
  %8517 = call float @dx.op.binary.f32(i32 36, float %8516, float %8514)  ; FMin(a,b)
  %8518 = fsub fast float -0.000000e+00, %8516
  %8519 = fcmp fast ogt float %8517, %8518
  br i1 %8519, label %8520, label %8825, !dx.controlflow.hints !162

; <label>:8520                                    ; preds = %8468
  %8521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8522 = extractvalue %dx.types.CBufRet.f32 %8521, 3
  %8523 = fcmp fast ogt float %8522, 0.000000e+00
  br i1 %8523, label %8524, label %8597, !dx.controlflow.hints !163

; <label>:8524                                    ; preds = %8520
  %8525 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %8526 = extractvalue %dx.types.Dimensions %8525, 0
  %8527 = sitofp i32 %8526 to float
  %8528 = extractvalue %dx.types.Dimensions %8525, 1
  %8529 = sitofp i32 %8528 to float
  %8530 = fmul fast float %8469, %8527
  %8531 = fmul fast float %8470, %8529
  %8532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %8533 = extractvalue %dx.types.CBufRet.f32 %8532, 1
  %8534 = fsub fast float -0.000000e+00, %8533
  %8535 = fptoui float %8534 to i32
  %8536 = fptoui float %8530 to i32
  %8537 = fptoui float %8531 to i32
  %8538 = and i32 %8535, 31
  %8539 = lshr i32 %8536, %8538
  %8540 = lshr i32 %8537, %8538
  %8541 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %8535, i32 %8539, i32 %8540, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8542 = extractvalue %dx.types.ResRet.f32 %8541, 0
  %8543 = fcmp fast olt float %8542, -1.000000e+00
  %8544 = fcmp fast ogt float %8542, -1.000000e+00
  %8545 = select i1 %8544, float %6181, float 1.000000e+00
  %8546 = fadd fast float %8542, 1.000000e+00
  %8547 = fmul fast float %8545, %8546
  %8548 = call float @dx.op.unary.f32(i32 6, float %8547)  ; FAbs(value)
  %8549 = extractvalue %dx.types.CBufRet.f32 %6180, 3
  %8550 = fcmp fast oge float %8548, %8549
  %8551 = select i1 %8550, float 0x4197782600000000, float %8548
  %8552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8553 = extractvalue %dx.types.CBufRet.f32 %8552, 0
  %8554 = extractvalue %dx.types.CBufRet.f32 %8552, 1
  %8555 = extractvalue %dx.types.CBufRet.f32 %8552, 2
  %8556 = select i1 %8543, float %8553, float %8476
  %8557 = select i1 %8543, float %8554, float %8477
  %8558 = select i1 %8543, float %8555, float %8478
  %8559 = fmul fast float %8556, %8473
  %8560 = fmul fast float %8557, %8473
  %8561 = fmul fast float %8558, %8473
  %8562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8563 = extractvalue %dx.types.CBufRet.f32 %8562, 0
  %8564 = extractvalue %dx.types.CBufRet.f32 %8562, 1
  %8565 = extractvalue %dx.types.CBufRet.f32 %8562, 2
  %8566 = select i1 %8543, float %8563, float %8483
  %8567 = select i1 %8543, float %8564, float %8484
  %8568 = select i1 %8543, float %8565, float %8485
  %8569 = fmul fast float %8566, %8474
  %8570 = fmul fast float %8567, %8474
  %8571 = fmul fast float %8568, %8474
  %8572 = fadd fast float %8569, %8559
  %8573 = fadd fast float %8570, %8560
  %8574 = fadd fast float %8571, %8561
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.f32 %8575, 0
  %8577 = extractvalue %dx.types.CBufRet.f32 %8575, 1
  %8578 = extractvalue %dx.types.CBufRet.f32 %8575, 2
  %8579 = select i1 %8543, float %8576, float %8490
  %8580 = select i1 %8543, float %8577, float %8491
  %8581 = select i1 %8543, float %8578, float %8492
  %8582 = fadd fast float %8572, %8579
  %8583 = fadd fast float %8573, %8580
  %8584 = fadd fast float %8574, %8581
  %8585 = fmul fast float %8582, %8551
  %8586 = fmul fast float %8583, %8551
  %8587 = fmul fast float %8584, %8551
  %8588 = fmul fast float %8585, %8585
  %8589 = fmul fast float %8586, %8586
  %8590 = fadd fast float %8588, %8589
  %8591 = fmul fast float %8587, %8587
  %8592 = fadd fast float %8590, %8591
  %8593 = call float @dx.op.unary.f32(i32 24, float %8592)  ; Sqrt(value)
  %8594 = fsub fast float %8593, %8508
  %8595 = fmul fast float %8594, %8510
  %8596 = call float @dx.op.unary.f32(i32 7, float %8595)  ; Saturate(value)
  br label %8597

; <label>:8597                                    ; preds = %8524, %8520
  %8598 = phi float [ %8596, %8524 ], [ 1.000000e+00, %8520 ]
  %8599 = fmul fast float %8517, 5.000000e-01
  %8600 = fadd fast float %8599, 5.000000e-01
  %8601 = call float @dx.op.unary.f32(i32 22, float %8600)  ; Frc(value)
  %8602 = call float @dx.op.unary.f32(i32 27, float %8601)  ; Round_ni(value)
  %8603 = call float @dx.op.unary.f32(i32 22, float %8601)  ; Frc(value)
  %8604 = fmul fast float %8603, 2.000000e+00
  %8605 = fadd fast float %8604, -1.000000e+00
  %8606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %39, float %8469, float %8470, float %8602, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8607 = extractvalue %dx.types.ResRet.f32 %8606, 0
  %8608 = extractvalue %dx.types.ResRet.f32 %8606, 1
  %8609 = extractvalue %dx.types.ResRet.f32 %8606, 2
  %8610 = extractvalue %dx.types.ResRet.f32 %8606, 3
  %8611 = fadd fast float %8607, -5.000000e-01
  %8612 = fadd fast float %8609, -5.000000e-01
  %8613 = fmul fast float %8611, 0xBFD5555560000000
  %8614 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8612, float %8613)  ; FMad(a,b,c)
  %8615 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8608, float 0.000000e+00)  ; FMad(a,b,c)
  %8616 = fadd fast float %8615, %8610
  %8617 = fmul fast float %8611, -7.500000e-01
  %8618 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8612, float %8617)  ; FMad(a,b,c)
  %8619 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8608, float 0.000000e+00)  ; FMad(a,b,c)
  %8620 = fadd fast float %8619, %8610
  %8621 = call float @dx.op.binary.f32(i32 35, float %8614, float -1.000000e+00)  ; FMax(a,b)
  %8622 = call float @dx.op.binary.f32(i32 35, float %8616, float -1.000000e+00)  ; FMax(a,b)
  %8623 = call float @dx.op.binary.f32(i32 35, float %8618, float -1.000000e+00)  ; FMax(a,b)
  %8624 = call float @dx.op.binary.f32(i32 35, float %8620, float -1.000000e+00)  ; FMax(a,b)
  %8625 = call float @dx.op.binary.f32(i32 36, float %8621, float 1.000000e+00)  ; FMin(a,b)
  %8626 = call float @dx.op.binary.f32(i32 36, float %8622, float 1.000000e+00)  ; FMin(a,b)
  %8627 = call float @dx.op.binary.f32(i32 36, float %8623, float 1.000000e+00)  ; FMin(a,b)
  %8628 = call float @dx.op.binary.f32(i32 36, float %8624, float 1.000000e+00)  ; FMin(a,b)
  %8629 = fcmp fast olt float %8625, 0x3FEFFF8020000000
  br i1 %8629, label %8630, label %8745, !dx.controlflow.hints !164

; <label>:8630                                    ; preds = %8597
  %8631 = extractvalue %dx.types.CBufRet.f32 %8515, 3
  %8632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8633 = extractvalue %dx.types.CBufRet.f32 %8632, 0
  %8634 = extractvalue %dx.types.CBufRet.f32 %8632, 1
  %8635 = extractvalue %dx.types.CBufRet.f32 %8632, 2
  %8636 = extractvalue %dx.types.CBufRet.f32 %8632, 3
  %8637 = fsub fast float %8633, %8625
  %8638 = fsub fast float %8634, %8626
  %8639 = fsub fast float %8635, %8627
  %8640 = fsub fast float %8636, %8628
  %8641 = fmul fast float %8637, %8631
  %8642 = fmul fast float %8638, %8631
  %8643 = fmul fast float %8639, %8631
  %8644 = fmul fast float %8640, %8631
  %8645 = fadd fast float %8641, %8625
  %8646 = fadd fast float %8642, %8626
  %8647 = fsub fast float -0.000000e+00, %8646
  %8648 = fadd fast float %8643, %8627
  %8649 = fadd fast float %8644, %8628
  %8650 = fmul fast float %8645, %8645
  %8651 = fsub fast float %8646, %8650
  %8652 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8651)  ; FMax(a,b)
  %8653 = fdiv fast float 1.000000e+00, %8652
  %8654 = fmul fast float %8646, %8645
  %8655 = fsub fast float %8648, %8654
  %8656 = fsub fast float %8605, %8645
  %8657 = fmul fast float %8605, %8605
  %8658 = fsub fast float %8657, %8646
  %8659 = fmul fast float %8656, %8653
  %8660 = fmul fast float %8659, %8655
  %8661 = fsub fast float %8658, %8660
  %8662 = fmul fast float %8646, %8646
  %8663 = fsub fast float %8649, %8662
  %8664 = fmul fast float %8655, %8655
  %8665 = fmul fast float %8664, %8653
  %8666 = fsub fast float %8663, %8665
  %8667 = fdiv fast float %8661, %8666
  %8668 = fmul fast float %8655, %8667
  %8669 = fsub fast float %8656, %8668
  %8670 = fmul fast float %8669, %8653
  %8671 = fmul fast float %8670, %8645
  %8672 = fsub fast float 1.000000e+00, %8671
  %8673 = fmul fast float %8646, %8667
  %8674 = fsub fast float %8672, %8673
  %8675 = fmul fast float %8670, %8670
  %8676 = fmul fast float %8667, 4.000000e+00
  %8677 = fmul fast float %8676, %8674
  %8678 = fsub fast float %8675, %8677
  %8679 = call float @dx.op.unary.f32(i32 24, float %8678)  ; Sqrt(value)
  %8680 = fcmp fast oge float %8670, 0.000000e+00
  %8681 = fsub fast float -0.000000e+00, %8679
  %8682 = select i1 %8680, float %8681, float %8679
  %8683 = fsub fast float %8682, %8670
  %8684 = fdiv fast float %8683, %8667
  %8685 = fdiv fast float %8674, %8683
  %8686 = fmul fast float %8684, 5.000000e-01
  %8687 = fmul fast float %8685, 2.000000e+00
  %8688 = select i1 %8680, float %8686, float %8687
  %8689 = select i1 %8680, float %8687, float %8686
  %8690 = call float @dx.op.binary.f32(i32 35, float %8688, float %8689)  ; FMax(a,b)
  %8691 = call float @dx.op.binary.f32(i32 36, float %8688, float %8689)  ; FMin(a,b)
  %8692 = fcmp fast ogt float %8605, %8691
  br i1 %8692, label %8693, label %8703

; <label>:8693                                    ; preds = %8630
  %8694 = fsub fast float %8605, %8691
  %8695 = fsub fast float %8690, %8691
  %8696 = fmul fast float %8694, %8695
  %8697 = fmul fast float %8690, %8605
  %8698 = fadd fast float %8690, %8605
  %8699 = fmul fast float %8698, %8645
  %8700 = fadd fast float %8697, %8646
  %8701 = fsub fast float %8700, %8699
  %8702 = fdiv fast float %8701, %8696
  br label %8703

; <label>:8703                                    ; preds = %8693, %8630
  %8704 = phi float [ %8702, %8693 ], [ 0.000000e+00, %8630 ]
  %8705 = fcmp fast ogt float %8605, %8690
  %8706 = fsub fast float %8605, %8690
  br i1 %8705, label %8707, label %8717

; <label>:8707                                    ; preds = %8703
  %8708 = fsub fast float %8690, %8691
  %8709 = fmul fast float %8708, %8706
  %8710 = fmul fast float %8691, %8605
  %8711 = fadd fast float %8691, %8605
  %8712 = fmul fast float %8711, %8645
  %8713 = fsub fast float %8647, %8710
  %8714 = fadd fast float %8713, %8712
  %8715 = fdiv fast float %8714, %8709
  %8716 = fadd fast float %8715, %8704
  br label %8717

; <label>:8717                                    ; preds = %8707, %8703
  %8718 = phi float [ %8716, %8707 ], [ %8704, %8703 ]
  %8719 = fsub fast float %8605, %8691
  %8720 = fmul fast float %8719, %8706
  %8721 = fmul fast float %8691, %8690
  %8722 = fadd fast float %8691, %8690
  %8723 = fmul fast float %8722, %8645
  %8724 = fadd fast float %8721, %8646
  %8725 = fsub fast float %8724, %8723
  %8726 = fdiv fast float %8725, %8720
  %8727 = call float @dx.op.unary.f32(i32 7, float %8718)  ; Saturate(value)
  %8728 = fcmp fast oeq float %7412, 0.000000e+00
  %8729 = extractvalue %dx.types.CBufRet.f32 %8515, 0
  %8730 = fcmp fast oeq float %8729, 0.000000e+00
  %8731 = or i1 %8728, %8730
  %8732 = fmul fast float %8729, 2.000000e+00
  %8733 = fadd fast float %8516, %8517
  %8734 = fdiv fast float %8733, %8732
  %8735 = call float @dx.op.unary.f32(i32 7, float %8734)  ; Saturate(value)
  %8736 = fmul fast float %8735, 2.000000e+00
  %8737 = fsub fast float 3.000000e+00, %8736
  %8738 = fmul fast float %8735, %8735
  %8739 = fmul fast float %8738, %8737
  %8740 = select i1 %8731, float 1.000000e+00, float %8739
  %8741 = fmul fast float %8726, %7412
  %8742 = fadd fast float %8727, %8741
  %8743 = call float @dx.op.unary.f32(i32 7, float %8742)  ; Saturate(value)
  %8744 = fmul fast float %8740, %8743
  br label %8745

; <label>:8745                                    ; preds = %8717, %8597
  %8746 = phi float [ %8744, %8717 ], [ 0.000000e+00, %8597 ]
  %8747 = fsub fast float 1.000000e+00, %8746
  %8748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %39, float %8469, float %8470, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8749 = extractvalue %dx.types.ResRet.f32 %8748, 0
  %8750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8751 = extractvalue %dx.types.CBufRet.i32 %8750, 2
  %8752 = icmp eq i32 %8751, 0
  br i1 %8752, label %8758, label %8753

; <label>:8753                                    ; preds = %8745
  %8754 = call float @dx.op.unary.f32(i32 7, float %8746)  ; Saturate(value)
  %8755 = fadd fast float %8749, -1.000000e+00
  %8756 = fmul fast float %8754, %8755
  %8757 = fadd fast float %8756, 1.000000e+00
  br label %8758

; <label>:8758                                    ; preds = %8753, %8745
  %8759 = phi float [ %8757, %8753 ], [ %8747, %8745 ]
  br i1 %8523, label %8760, label %8778

; <label>:8760                                    ; preds = %8758
  %8761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8762 = extractvalue %dx.types.CBufRet.f32 %8761, 1
  %8763 = fsub fast float %8598, %8762
  %8764 = call float @dx.op.unary.f32(i32 7, float %8763)  ; Saturate(value)
  %8765 = fsub fast float %8598, %8522
  %8766 = call float @dx.op.unary.f32(i32 7, float %8765)  ; Saturate(value)
  %8767 = fsub fast float %8764, %8766
  %8768 = fsub fast float %8600, %8766
  %8769 = fdiv fast float %8768, %8767
  %8770 = call float @dx.op.unary.f32(i32 7, float %8769)  ; Saturate(value)
  %8771 = fmul fast float %8770, 2.000000e+00
  %8772 = fsub fast float 3.000000e+00, %8771
  %8773 = fsub fast float %8749, %8759
  %8774 = fmul fast float %8770, %8770
  %8775 = fmul fast float %8774, %8773
  %8776 = fmul fast float %8775, %8772
  %8777 = fadd fast float %8776, %8759
  br label %8778

; <label>:8778                                    ; preds = %8760, %8758
  %8779 = phi float [ %8777, %8760 ], [ %8759, %8758 ]
  %8780 = call float @dx.op.binary.f32(i32 35, float %8749, float %8779)  ; FMax(a,b)
  %8781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8782 = extractvalue %dx.types.CBufRet.i32 %8781, 2
  %8783 = and i32 %8782, 1
  %8784 = icmp eq i32 %8783, 0
  %8785 = fcmp fast une float %8780, 1.000000e+00
  %8786 = and i1 %8785, %8784
  br i1 %8786, label %8787, label %8804

; <label>:8787                                    ; preds = %8778
  %8788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %8469, float %8470, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8789 = extractvalue %dx.types.ResRet.f32 %8788, 0
  %8790 = extractvalue %dx.types.ResRet.f32 %8788, 1
  %8791 = extractvalue %dx.types.ResRet.f32 %8788, 2
  %8792 = fmul fast float %6228, %8789
  %8793 = fmul fast float %6228, %8790
  %8794 = fmul fast float %6228, %8791
  %8795 = fcmp fast ogt float %8749, 0x3FEFFF2E40000000
  %8796 = fsub fast float 1.000000e+00, %8780
  %8797 = fsub fast float 1.000000e+00, %8749
  %8798 = fdiv fast float %8796, %8797
  %8799 = call float @dx.op.unary.f32(i32 7, float %8798)  ; Saturate(value)
  %8800 = select i1 %8795, float 0.000000e+00, float %8799
  %8801 = fmul fast float %8792, %8800
  %8802 = fmul fast float %8793, %8800
  %8803 = fmul fast float %8794, %8800
  br label %8804

; <label>:8804                                    ; preds = %8787, %8778
  %8805 = phi float [ 0.000000e+00, %8778 ], [ %8801, %8787 ]
  %8806 = phi float [ 0.000000e+00, %8778 ], [ %8802, %8787 ]
  %8807 = phi float [ 0.000000e+00, %8778 ], [ %8803, %8787 ]
  %8808 = fmul fast float %8780, %8447
  %8809 = call float @dx.op.dot3.f32(i32 55, float %8780, float %8780, float %8780, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8810 = call float @dx.op.dot3.f32(i32 55, float %8805, float %8806, float %8807, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8811 = select i1 %254, float %8809, float %8780
  %8812 = select i1 %254, float 1.000000e+00, float %8780
  %8813 = select i1 %254, float %8810, float %8805
  %8814 = select i1 %254, float 0.000000e+00, float %8806
  %8815 = select i1 %254, float 0.000000e+00, float %8807
  %8816 = fmul fast float %8811, %8459
  %8817 = fmul fast float %8811, %8460
  %8818 = fmul fast float %8812, %8461
  %8819 = fadd fast float %8816, %8813
  %8820 = fadd fast float %8817, %8814
  %8821 = fadd fast float %8815, %8818
  %8822 = fmul fast float %8811, %8462
  %8823 = fmul fast float %8811, %8463
  %8824 = fmul fast float %8812, %8464
  br label %8825

; <label>:8825                                    ; preds = %8804, %8468, %8440, %7672
  %8826 = phi float [ %7677, %7672 ], [ %8459, %8440 ], [ %8819, %8804 ], [ %8459, %8468 ]
  %8827 = phi float [ %7678, %7672 ], [ %8460, %8440 ], [ %8820, %8804 ], [ %8460, %8468 ]
  %8828 = phi float [ %7679, %7672 ], [ %8461, %8440 ], [ %8821, %8804 ], [ %8461, %8468 ]
  %8829 = phi float [ %7680, %7672 ], [ %8462, %8440 ], [ %8822, %8804 ], [ %8462, %8468 ]
  %8830 = phi float [ %7681, %7672 ], [ %8463, %8440 ], [ %8823, %8804 ], [ %8463, %8468 ]
  %8831 = phi float [ %7682, %7672 ], [ %8464, %8440 ], [ %8824, %8804 ], [ %8464, %8468 ]
  %8832 = phi float [ %7683, %7672 ], [ %8447, %8440 ], [ %8808, %8804 ], [ %8447, %8468 ]
  %8833 = fmul fast float %6173, %101
  %8834 = fmul fast float %6174, %102
  %8835 = call float @dx.op.unary.f32(i32 7, float %8833)  ; Saturate(value)
  %8836 = call float @dx.op.unary.f32(i32 7, float %8834)  ; Saturate(value)
  %8837 = select i1 %7422, i32 2, i32 0
  %8838 = or i32 %8837, 1
  %8839 = uitofp i32 %8838 to float
  %8840 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %39, float %8835, float %8836, float %8839, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8841 = extractvalue %dx.types.ResRet.f32 %8840, 0
  %8842 = extractvalue %dx.types.ResRet.f32 %8840, 1
  %8843 = extractvalue %dx.types.ResRet.f32 %8840, 2
  %8844 = extractvalue %dx.types.ResRet.f32 %8840, 3
  %8845 = add nuw nsw i32 %8837, 2
  %8846 = uitofp i32 %8845 to float
  %8847 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %39, float %8835, float %8836, float %8846, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8848 = extractvalue %dx.types.ResRet.f32 %8847, 0
  %8849 = extractvalue %dx.types.ResRet.f32 %8847, 1
  %8850 = extractvalue %dx.types.ResRet.f32 %8847, 2
  %8851 = extractvalue %dx.types.ResRet.f32 %8847, 3
  %8852 = call float @dx.op.binary.f32(i32 35, float %8842, float %8843)  ; FMax(a,b)
  %8853 = call float @dx.op.binary.f32(i32 35, float %8841, float %8852)  ; FMax(a,b)
  %8854 = call float @dx.op.binary.f32(i32 35, float %8853, float %8844)  ; FMax(a,b)
  %8855 = call float @dx.op.binary.f32(i32 36, float %8849, float %8850)  ; FMin(a,b)
  %8856 = call float @dx.op.binary.f32(i32 36, float %8848, float %8855)  ; FMin(a,b)
  %8857 = call float @dx.op.binary.f32(i32 36, float %8856, float %8851)  ; FMin(a,b)
  %8858 = fmul fast float %8854, 2.550000e+02
  %8859 = fadd fast float %8858, 0x3F70101020000000
  %8860 = fptoui float %8859 to i32
  %8861 = fmul fast float %8857, 2.550000e+02
  %8862 = fadd fast float %8861, 0x3F70101020000000
  %8863 = fptoui float %8862 to i32
  %8864 = icmp ult i32 %8860, %8863
  br i1 %8864, label %8865, label %9032

; <label>:8865                                    ; preds = %8825
  %8866 = fcmp fast ogt float %91, 9.843750e-01
  %8867 = fadd fast float %7676, -4.000000e+00
  %8868 = select i1 %8866, float -4.000000e+00, float %8867
  %8869 = call float @dx.op.binary.f32(i32 35, float %8868, float 0.000000e+00)  ; FMax(a,b)
  %8870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8871 = extractvalue %dx.types.CBufRet.f32 %8870, 0
  %8872 = fadd fast float %8871, %8869
  %8873 = extractvalue %dx.types.CBufRet.f32 %8870, 2
  %8874 = fmul fast float %8872, %8873
  %8875 = call float @dx.op.unary.f32(i32 23, float %8874)  ; Log(value)
  %8876 = extractvalue %dx.types.CBufRet.f32 %8870, 3
  %8877 = fmul fast float %8876, %8875
  %8878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8879 = extractvalue %dx.types.CBufRet.f32 %8878, 2
  %8880 = fmul fast float %8877, %8879
  %8881 = call float @dx.op.unary.f32(i32 7, float %8880)  ; Saturate(value)
  %8882 = uitofp i32 %8860 to float
  %8883 = uitofp i32 %8863 to float
  %8884 = fadd fast float %8882, 5.000000e-01
  %8885 = fadd fast float %8883, 5.000000e-01
  %8886 = fmul fast float %8879, %8884
  %8887 = fmul fast float %8879, %8885
  %8888 = fadd fast float %8886, 0x3F0FFB4800000000
  %8889 = fadd fast float %8887, 0xBF0FFB4800000000
  %8890 = call float @dx.op.binary.f32(i32 35, float %8881, float %8888)  ; FMax(a,b)
  %8891 = call float @dx.op.binary.f32(i32 36, float %8890, float %8889)  ; FMin(a,b)
  %8892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8892, 1
  %8894 = extractvalue %dx.types.CBufRet.f32 %8892, 2
  %8895 = extractvalue %dx.types.CBufRet.f32 %8892, 0
  %8896 = select i1 %7422, float %8895, float 0.000000e+00
  %8897 = fmul fast float %8893, %8891
  %8898 = fadd fast float %8896, %8897
  %8899 = fadd fast float %8896, %8894
  %8900 = fsub fast float %8893, %8894
  %8901 = fadd fast float %8900, %8896
  %8902 = call float @dx.op.binary.f32(i32 35, float %8898, float %8899)  ; FMax(a,b)
  %8903 = call float @dx.op.binary.f32(i32 36, float %8902, float %8901)  ; FMin(a,b)
  %8904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %37, float %8835, float %8836, float %8903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8905 = extractvalue %dx.types.ResRet.f32 %8904, 0
  %8906 = extractvalue %dx.types.ResRet.f32 %8904, 1
  %8907 = extractvalue %dx.types.ResRet.f32 %8904, 2
  %8908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8909 = extractvalue %dx.types.CBufRet.i32 %8908, 0
  %8910 = extractvalue %dx.types.CBufRet.i32 %8908, 1
  %8911 = uitofp i32 %8909 to float
  %8912 = uitofp i32 %8910 to float
  %8913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8914 = extractvalue %dx.types.CBufRet.f32 %8913, 0
  %8915 = extractvalue %dx.types.CBufRet.f32 %8913, 1
  %8916 = fmul fast float %8911, %8835
  %8917 = fmul fast float %8912, %8836
  %8918 = fadd fast float %8916, -5.000000e-01
  %8919 = fadd fast float %8917, -5.000000e-01
  %8920 = call float @dx.op.unary.f32(i32 22, float %8918)  ; Frc(value)
  %8921 = call float @dx.op.unary.f32(i32 22, float %8919)  ; Frc(value)
  %8922 = fmul fast float %8920, %8920
  %8923 = fmul fast float %8922, %8920
  %8924 = fsub fast float 3.000000e+00, %8920
  %8925 = fmul fast float %8922, %8924
  %8926 = fmul fast float %8920, 3.000000e+00
  %8927 = fmul fast float %8923, 3.000000e+00
  %8928 = fmul fast float %8922, 6.000000e+00
  %8929 = fsub fast float %8927, %8928
  %8930 = fadd fast float %8929, 4.000000e+00
  %8931 = fmul fast float %8930, 0x3FC5555560000000
  %8932 = fmul fast float %8923, -3.000000e+00
  %8933 = fadd fast float %8922, %8920
  %8934 = fmul fast float %8933, 3.000000e+00
  %8935 = fadd fast float %8932, 1.000000e+00
  %8936 = fadd fast float %8935, %8934
  %8937 = fmul fast float %8923, 0x3FC5555560000000
  %8938 = fmul fast float %8921, %8921
  %8939 = fmul fast float %8938, %8921
  %8940 = fsub fast float 3.000000e+00, %8921
  %8941 = fmul fast float %8938, %8940
  %8942 = fmul fast float %8921, 3.000000e+00
  %8943 = fmul fast float %8939, 3.000000e+00
  %8944 = fmul fast float %8938, 6.000000e+00
  %8945 = fsub fast float %8943, %8944
  %8946 = fadd fast float %8945, 4.000000e+00
  %8947 = fmul fast float %8946, 0x3FC5555560000000
  %8948 = fmul fast float %8939, -3.000000e+00
  %8949 = fadd fast float %8938, %8921
  %8950 = fmul fast float %8949, 3.000000e+00
  %8951 = fadd fast float %8948, 1.000000e+00
  %8952 = fadd fast float %8951, %8950
  %8953 = fmul fast float %8939, 0x3FC5555560000000
  %8954 = fadd fast float %8920, 1.000000e+00
  %8955 = fsub fast float 1.000000e+00, %8926
  %8956 = fadd fast float %8955, %8925
  %8957 = fadd fast float %8956, %8930
  %8958 = fmul fast float %8957, 0x3FC5555560000000
  %8959 = fdiv fast float %8931, %8958
  %8960 = fsub fast float %8954, %8959
  %8961 = fsub fast float 1.000000e+00, %8920
  %8962 = fadd fast float %8936, %8923
  %8963 = fmul fast float %8962, 0x3FC5555560000000
  %8964 = fdiv fast float %8937, %8963
  %8965 = fadd fast float %8961, %8964
  %8966 = fadd fast float %8921, 1.000000e+00
  %8967 = fsub fast float 1.000000e+00, %8942
  %8968 = fadd fast float %8967, %8941
  %8969 = fadd fast float %8968, %8946
  %8970 = fmul fast float %8969, 0x3FC5555560000000
  %8971 = fdiv fast float %8947, %8970
  %8972 = fsub fast float %8966, %8971
  %8973 = fsub fast float 1.000000e+00, %8921
  %8974 = fadd fast float %8952, %8939
  %8975 = fmul fast float %8974, 0x3FC5555560000000
  %8976 = fdiv fast float %8953, %8975
  %8977 = fadd fast float %8976, %8973
  %8978 = fmul fast float %8960, %8914
  %8979 = fsub fast float %8835, %8978
  %8980 = fmul fast float %8965, %8914
  %8981 = fadd fast float %8980, %8835
  %8982 = fmul fast float %8977, %8915
  %8983 = fadd fast float %8982, %8836
  %8984 = fmul fast float %8972, %8915
  %8985 = fsub fast float %8836, %8984
  %8986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %8979, float %8985, float %8903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8987 = extractvalue %dx.types.ResRet.f32 %8986, 0
  %8988 = extractvalue %dx.types.ResRet.f32 %8986, 1
  %8989 = extractvalue %dx.types.ResRet.f32 %8986, 2
  %8990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %8981, float %8985, float %8903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8991 = extractvalue %dx.types.ResRet.f32 %8990, 0
  %8992 = extractvalue %dx.types.ResRet.f32 %8990, 1
  %8993 = extractvalue %dx.types.ResRet.f32 %8990, 2
  %8994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %8979, float %8983, float %8903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8995 = extractvalue %dx.types.ResRet.f32 %8994, 0
  %8996 = extractvalue %dx.types.ResRet.f32 %8994, 1
  %8997 = extractvalue %dx.types.ResRet.f32 %8994, 2
  %8998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %8981, float %8983, float %8903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8999 = extractvalue %dx.types.ResRet.f32 %8998, 0
  %9000 = extractvalue %dx.types.ResRet.f32 %8998, 1
  %9001 = extractvalue %dx.types.ResRet.f32 %8998, 2
  %9002 = fsub fast float %8995, %8987
  %9003 = fsub fast float %8996, %8988
  %9004 = fsub fast float %8997, %8989
  %9005 = fmul fast float %9002, %8975
  %9006 = fmul fast float %9003, %8975
  %9007 = fmul fast float %9004, %8975
  %9008 = fadd fast float %9005, %8987
  %9009 = fadd fast float %9006, %8988
  %9010 = fadd fast float %9007, %8989
  %9011 = fsub fast float %8999, %8991
  %9012 = fsub fast float %9000, %8992
  %9013 = fsub fast float %9001, %8993
  %9014 = fmul fast float %9011, %8975
  %9015 = fmul fast float %9012, %8975
  %9016 = fmul fast float %9013, %8975
  %9017 = fsub fast float %8991, %9008
  %9018 = fadd fast float %9017, %9014
  %9019 = fsub fast float %8992, %9009
  %9020 = fadd fast float %9019, %9015
  %9021 = fsub fast float %8993, %9010
  %9022 = fadd fast float %9021, %9016
  %9023 = fmul fast float %9018, %8963
  %9024 = fmul fast float %9020, %8963
  %9025 = fmul fast float %9022, %8963
  %9026 = fadd fast float %9023, %9008
  %9027 = fadd fast float %9024, %9009
  %9028 = fadd fast float %9025, %9010
  %9029 = fmul fast float %9026, %6228
  %9030 = fmul fast float %9027, %6228
  %9031 = fmul fast float %9028, %6228
  br label %9032

; <label>:9032                                    ; preds = %8865, %8825
  %9033 = phi float [ %8905, %8865 ], [ 1.000000e+00, %8825 ]
  %9034 = phi float [ %8906, %8865 ], [ 1.000000e+00, %8825 ]
  %9035 = phi float [ %8907, %8865 ], [ 1.000000e+00, %8825 ]
  %9036 = phi float [ %9029, %8865 ], [ 0.000000e+00, %8825 ]
  %9037 = phi float [ %9030, %8865 ], [ 0.000000e+00, %8825 ]
  %9038 = phi float [ %9031, %8865 ], [ 0.000000e+00, %8825 ]
  %9039 = fmul fast float %9033, %8832
  %9040 = call float @dx.op.dot3.f32(i32 55, float %9033, float %9034, float %9035, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9041 = call float @dx.op.dot3.f32(i32 55, float %9036, float %9037, float %9038, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9042 = select i1 %254, float %9040, float %9033
  %9043 = select i1 %254, float %9040, float %9034
  %9044 = select i1 %254, float 1.000000e+00, float %9035
  %9045 = select i1 %254, float %9041, float %9036
  %9046 = select i1 %254, float 0.000000e+00, float %9037
  %9047 = select i1 %254, float 0.000000e+00, float %9038
  %9048 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9049 = extractvalue %dx.types.CBufRet.i32 %9048, 3
  %9050 = and i32 %9049, 3
  %9051 = icmp ne i32 %9050, 0
  %9052 = and i32 %9049, 4
  %9053 = icmp ne i32 %9052, 0
  %9054 = and i1 %9051, %9053
  %9055 = and i1 %254, %9054
  br i1 %9055, label %9056, label %9062

; <label>:9056                                    ; preds = %9032
  %9057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9058 = extractvalue %dx.types.CBufRet.f32 %9057, 1
  %9059 = fadd fast float %9039, -1.000000e+00
  %9060 = fmul fast float %9058, %9059
  %9061 = fadd fast float %9060, 1.000000e+00
  br label %9062

; <label>:9062                                    ; preds = %9056, %9032
  %9063 = phi float [ %9061, %9056 ], [ %9039, %9032 ]
  %9064 = fadd fast float %8829, %8826
  %9065 = fmul fast float %9042, %9064
  %9066 = fadd fast float %9065, %9045
  %9067 = fadd fast float %8830, %8827
  %9068 = fmul fast float %9043, %9067
  %9069 = fadd fast float %9068, %9046
  %9070 = extractvalue %dx.types.CBufRet.f32 %6227, 0
  br i1 %254, label %9071, label %9086

; <label>:9071                                    ; preds = %9062
  %9072 = fadd fast float %9066, %9069
  %9073 = fmul fast float %9070, %9072
  %9074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9075 = extractvalue %dx.types.CBufRet.f32 %9074, 3
  %9076 = extractvalue %dx.types.CBufRet.f32 %7404, 1
  %9077 = fsub fast float %7409, %7403
  %9078 = fadd fast float %9077, %7410
  %9079 = fsub fast float %9078, %9076
  %9080 = extractvalue %dx.types.CBufRet.f32 %7404, 2
  %9081 = fmul fast float %9079, %9080
  %9082 = call float @dx.op.unary.f32(i32 7, float %9081)  ; Saturate(value)
  %9083 = fsub fast float %9082, %9075
  %9084 = fmul fast float %9083, %9063
  %9085 = fadd fast float %9084, %9075
  br label %9110

; <label>:9086                                    ; preds = %9062
  %9087 = fadd fast float %8831, %8828
  %9088 = fmul fast float %9044, %9087
  %9089 = fadd fast float %9088, %9047
  %9090 = fmul fast float %9070, %9066
  %9091 = fmul fast float %9070, %9069
  %9092 = fmul fast float %9070, %9089
  %9093 = call float @dx.op.binary.f32(i32 35, float %9091, float %9092)  ; FMax(a,b)
  %9094 = call float @dx.op.binary.f32(i32 35, float %9090, float %9093)  ; FMax(a,b)
  %9095 = call float @dx.op.binary.f32(i32 35, float %9094, float 1.000000e+00)  ; FMax(a,b)
  %9096 = fcmp fast ugt float %9095, 0x3F10000000000000
  br i1 %9096, label %9098, label %9097

; <label>:9097                                    ; preds = %9086
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9098

; <label>:9098                                    ; preds = %9097, %9086
  %9099 = add i32 %45, 356
  %9100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %9099, i32 undef)  ; BufferLoad(srv,index,wot)
  %9101 = extractvalue %dx.types.ResRet.i32 %9100, 0
  %9102 = and i32 %9101, 32
  %9103 = icmp eq i32 %9102, 0
  br i1 %9103, label %9110, label %9104

; <label>:9104                                    ; preds = %9098
  %9105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9106 = extractvalue %dx.types.CBufRet.f32 %9105, 0
  %9107 = fmul fast float %9106, 0x3FE99999A0000000
  %9108 = fadd fast float %9106, %9090
  %9109 = fadd fast float %9107, %9092
  br label %9110

; <label>:9110                                    ; preds = %9104, %9098, %9071
  %9111 = phi float [ %9073, %9071 ], [ %9108, %9104 ], [ %9090, %9098 ]
  %9112 = phi float [ %9085, %9071 ], [ %9091, %9104 ], [ %9091, %9098 ]
  %9113 = phi float [ 1.000000e+00, %9071 ], [ %9109, %9104 ], [ %9092, %9098 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9114 = call float @dx.op.binary.f32(i32 36, float %9111, float 3.225500e+04)  ; FMin(a,b)
  %9115 = call float @dx.op.binary.f32(i32 36, float %9112, float 3.225500e+04)  ; FMin(a,b)
  %9116 = call float @dx.op.binary.f32(i32 36, float %9113, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9114)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9115)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9116)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

