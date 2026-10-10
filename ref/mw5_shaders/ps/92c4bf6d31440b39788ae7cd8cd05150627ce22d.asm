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
;
; shader hash: 1eb0c95010cb9f746234b3b51b4eb323
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
;                                   texture     f32          2d     T13     t58,space2     1
;                                   texture     f32          2d     T14     t57,space2     1
;                                   texture    byte         r/o     T15     t69,space1     1
;                                   texture     u32          2d     T16     t56,space2     1
;                                   texture     f32          2d     T17     t34,space2     1
;                                   texture     f32          2d     T18      t1,space2     1
;                                   texture     f32          2d     T19      t2,space2     1
;                                   texture     f32          2d     T20      t3,space2     1
;                                   texture     f32          2d     T21      t4,space2     1
;                                   textureunorm_f32     2darray     T22     t80,space2     1
;                                   texture    byte         r/o     T23     t67,space1     1
;                                   texture     f32          2d     T24      t7,space2     1
;                                   texture     f32          2d     T25      t6,space2     1
;                                   texture     f32          2d     T26      t5,space2     1
;                                   texture     f32          2d     T27     t38,space2     1
;                                   texture     f32          1d     T28     t30,space2     1
;                                   texture     f32          3d     T29     t44,space2     1
;                                   texture     f32          3d     T30     t45,space2     1
;                                   texture     f32     2darray     T31     t47,space2     1
;                                   textureunorm_f32     2darray     T32     t85,space2     1
;                                   texture     f32          2d     T33     t83,space2     1
;                                   texture     f32          2d     T34     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = alloca [4 x i32], align 4
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = alloca [12 x float], align 4
  %92 = alloca [12 x float], align 4
  %93 = alloca [3 x float], align 4
  %94 = alloca [3 x float], align 4
  %95 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %96 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = fmul fast float %98, %87
  %100 = fmul fast float %98, %88
  %101 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %102 = bitcast float %101 to i32
  %103 = ashr i32 %102, 1
  %104 = sub nsw i32 1597250115, %103
  %105 = bitcast i32 %104 to float
  %106 = fmul fast float %105, %78
  %107 = fmul fast float %105, %79
  %108 = fmul fast float %105, %80
  %109 = fmul fast float %79, %76
  %110 = fmul fast float %80, %75
  %111 = fsub fast float %109, %110
  %112 = fmul fast float %80, %74
  %113 = fmul fast float %78, %76
  %114 = fsub fast float %112, %113
  %115 = fmul fast float %78, %75
  %116 = fmul fast float %79, %74
  %117 = fsub fast float %115, %116
  %118 = fmul fast float %111, %77
  %119 = fmul fast float %114, %77
  %120 = fmul fast float %117, %77
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = fcmp fast une float %122, 0.000000e+00
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 3
  %127 = fmul fast float %99, 2.000000e+00
  %128 = fmul fast float %127, %125
  %129 = fmul fast float %100, 2.000000e+00
  %130 = fmul fast float %129, %126
  %131 = fsub fast float 1.000000e+00, %128
  %132 = fsub fast float 1.000000e+00, %130
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = select i1 %123, float %134, float %138
  %142 = select i1 %123, float %135, float %139
  %143 = select i1 %123, float %136, float %140
  %144 = fmul fast float %141, %131
  %145 = fmul fast float %142, %131
  %146 = fmul fast float %143, %131
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = select i1 %123, float %148, float %152
  %156 = select i1 %123, float %149, float %153
  %157 = select i1 %123, float %150, float %154
  %158 = fmul fast float %155, %132
  %159 = fmul fast float %156, %132
  %160 = fmul fast float %157, %132
  %161 = fadd fast float %158, %144
  %162 = fadd fast float %159, %145
  %163 = fadd fast float %160, %146
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %172 = select i1 %123, float %165, float %169
  %173 = select i1 %123, float %166, float %170
  %174 = select i1 %123, float %167, float %171
  %175 = fadd fast float %161, %172
  %176 = fadd fast float %162, %173
  %177 = fadd fast float %163, %174
  %178 = fmul fast float %175, %90
  %179 = fmul fast float %176, %90
  %180 = fmul fast float %177, %90
  %181 = shl i32 %44, 5
  %182 = add i32 %181, 4194304
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = extractvalue %dx.types.ResRet.i32 %183, 1
  %186 = extractvalue %dx.types.ResRet.i32 %183, 2
  %187 = extractvalue %dx.types.ResRet.i32 %183, 3
  %188 = add i32 %181, 4194320
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = extractvalue %dx.types.ResRet.i32 %189, 1
  %192 = bitcast i32 %190 to float
  %193 = bitcast i32 %191 to float
  %194 = fmul fast float %99, 5.000000e-01
  %195 = fmul fast float %100, 5.000000e-01
  %196 = fptosi float %194 to i32
  %197 = fptosi float %195 to i32
  %198 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %196, i32 %197, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = lshr i32 %199, 18
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %201, 0x3F4C00EBA0000000
  %203 = call float @dx.op.unary.f32(i32 21, float %202)  ; Exp(value)
  %204 = fadd fast float %203, -1.000000e+00
  %205 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %19, i32 0)  ; GetDimensions(handle,mipLevel)
  %206 = extractvalue %dx.types.Dimensions %205, 0
  %207 = sitofp i32 %206 to float
  %208 = extractvalue %dx.types.Dimensions %205, 1
  %209 = sitofp i32 %208 to float
  %210 = fcmp fast oge float %194, %207
  %211 = fcmp fast oge float %195, %209
  %212 = or i1 %210, %211
  %213 = select i1 %212, float 0x4197782600000000, float %204
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %217 = fmul fast float %215, %99
  %218 = fmul fast float %216, %100
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = and i32 %220, 114688
  %222 = icmp ne i32 %221, 0
  %223 = select i1 %222, float %217, float 0.000000e+00
  %224 = select i1 %222, float %218, float 0.000000e+00
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %223, float %224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fmul fast float %226, 2.550000e+02
  %228 = fptoui float %227 to i32
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.i32 %230, 3
  %232 = and i32 %231, 3
  %233 = icmp ne i32 %232, 0
  %234 = and i32 %231, 4
  %235 = icmp ne i32 %234, 0
  %236 = and i1 %233, %235
  br i1 %236, label %237, label %248

; <label>:237                                     ; preds = %0
  %238 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %239 = fmul fast float %238, %100
  %240 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %241 = fmul fast float %240, %99
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %37, float %241, float %239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = fsub fast float 1.000000e+00, %243
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = fcmp fast olt float %244, %246
  br label %251

; <label>:248                                     ; preds = %0
  %249 = icmp eq i32 %234, 0
  %250 = and i1 %233, %249
  br label %251

; <label>:251                                     ; preds = %248, %237
  %252 = phi i1 [ %247, %237 ], [ %250, %248 ]
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %255 = fmul fast float %254, 0x3FE3C6EF40000000
  %256 = frem fast float %99, 2.560000e+02
  %257 = frem fast float %100, 2.560000e+02
  %258 = fptoui float %256 to i32
  %259 = fptoui float %257 to i32
  %260 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %258, i32 %259, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = fadd fast float %261, %255
  %263 = call float @dx.op.unary.f32(i32 22, float %262)  ; Frc(value)
  %264 = add i32 %43, 156
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = shl i32 %266, 4
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %266, 7
  %271 = and i32 %270, 32752
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %266, 22
  %274 = shl nuw nsw i32 %273, 5
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %43, 216
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = lshr i32 %278, 8
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = lshr i32 %278, 16
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = add i32 %43, 36
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %292, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %43, 288
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = fmul fast float %301, 0x3F50624DE0000000
  %305 = fmul fast float %303, 0x3F50624DE0000000
  %306 = add i32 %43, 172
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = shl i32 %308, 4
  %310 = and i32 %309, 32752
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %308, 7
  %313 = and i32 %312, 32752
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %308, 22
  %316 = shl nuw nsw i32 %315, 5
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %43, 232
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = lshr i32 %320, 8
  %325 = and i32 %324, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F70101020000000
  %328 = lshr i32 %320, 16
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = add i32 %43, 52
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %334, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %43, 304
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = fmul fast float %343, 0x3F50624DE0000000
  %347 = fmul fast float %345, 0x3F50624DE0000000
  %348 = add i32 %43, 188
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = shl i32 %350, 4
  %352 = and i32 %351, 32752
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %350, 7
  %355 = and i32 %354, 32752
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %350, 22
  %358 = shl nuw nsw i32 %357, 5
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = add i32 %43, 248
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 255
  %364 = uitofp i32 %363 to float
  %365 = fmul fast float %364, 0x3F70101020000000
  %366 = lshr i32 %362, 8
  %367 = and i32 %366, 255
  %368 = uitofp i32 %367 to float
  %369 = fmul fast float %368, 0x3F70101020000000
  %370 = lshr i32 %362, 16
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F70101020000000
  %374 = add i32 %43, 68
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 65535
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %376, 16
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = add i32 %43, 320
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = fmul fast float %385, 0x3F50624DE0000000
  %389 = fmul fast float %387, 0x3F50624DE0000000
  %390 = add i32 %43, 204
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = shl i32 %392, 4
  %394 = and i32 %393, 32752
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %392, 7
  %397 = and i32 %396, 32752
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %392, 22
  %400 = shl nuw nsw i32 %399, 5
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = add i32 %43, 264
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 255
  %406 = uitofp i32 %405 to float
  %407 = fmul fast float %406, 0x3F70101020000000
  %408 = lshr i32 %404, 8
  %409 = and i32 %408, 255
  %410 = uitofp i32 %409 to float
  %411 = fmul fast float %410, 0x3F70101020000000
  %412 = lshr i32 %404, 16
  %413 = and i32 %412, 255
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3F70101020000000
  %416 = add i32 %43, 84
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 65535
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = lshr i32 %418, 16
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = add i32 %43, 336
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 65535
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = lshr i32 %425, 16
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = fmul fast float %427, 0x3F50624DE0000000
  %431 = fmul fast float %429, 0x3F50624DE0000000
  %432 = add i32 %43, 348
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 32
  %436 = icmp eq i32 %435, 0
  %437 = and i32 %434, 64
  %438 = icmp eq i32 %437, 0
  %439 = and i32 %434, 128
  %440 = icmp eq i32 %439, 0
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 2
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %460, label %445

; <label>:445                                     ; preds = %251
  %446 = add i32 %43, 508
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = add i32 %448, 0
  %450 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %449, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %451 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %450, %dx.types.Handle %96, float %81, float %82, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = extractvalue %dx.types.ResRet.f32 %451, 2
  %455 = extractvalue %dx.types.ResRet.f32 %451, 3
  %456 = fmul fast float %455, %83
  %457 = fmul fast float %452, %84
  %458 = fmul fast float %453, %85
  %459 = fmul fast float %454, %86
  br label %460

; <label>:460                                     ; preds = %445, %251
  %461 = phi float [ %86, %251 ], [ %459, %445 ]
  %462 = phi float [ %85, %251 ], [ %458, %445 ]
  %463 = phi float [ %84, %251 ], [ %457, %445 ]
  %464 = phi float [ %83, %251 ], [ %456, %445 ]
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 2
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %488, label %469

; <label>:469                                     ; preds = %460
  %470 = add i32 %43, 44
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 1
  %474 = icmp ne i32 %473, 0
  %475 = select i1 %474, float %463, float 1.000000e+00
  %476 = add i32 %43, 60
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = and i32 %478, 1
  %480 = icmp ne i32 %479, 0
  %481 = select i1 %480, float %462, float 1.000000e+00
  %482 = add i32 %43, 76
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = and i32 %484, 1
  %486 = icmp ne i32 %485, 0
  %487 = select i1 %486, float %461, float 1.000000e+00
  br label %488

; <label>:488                                     ; preds = %469, %460
  %489 = phi float [ %461, %460 ], [ %487, %469 ]
  %490 = phi float [ %462, %460 ], [ %481, %469 ]
  %491 = phi float [ %463, %460 ], [ %475, %469 ]
  %492 = lshr i32 %466, 20
  %493 = and i32 %492, 3
  %494 = add nuw nsw i32 %493, 1
  %495 = add i32 %43, 24
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = add i32 %43, 28
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = or i32 %500, %497
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %1148, label %503

; <label>:503                                     ; preds = %488
  %504 = and i32 %497, 262144
  %505 = icmp ne i32 %504, 0
  %506 = select i1 %505, float %49, float 1.000000e+00
  %507 = select i1 %505, float %50, float 0.000000e+00
  %508 = select i1 %505, float %51, float 0.000000e+00
  %509 = select i1 %505, float %52, float 1.000000e+00
  %510 = select i1 %505, float %53, float %81
  %511 = select i1 %505, float %54, float %82
  %512 = add i32 %43, 284
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = lshr i32 %514, 16
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = fmul fast float %516, 0x3F50624DE0000000
  %518 = add i32 %43, 88
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = lshr i32 %520, 16
  %522 = and i32 %521, 255
  %523 = lshr i32 %520, 24
  %524 = add i32 %43, 292
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = and i32 %526, 65535
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = lshr i32 %526, 16
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = add i32 %43, 32
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = lshr i32 %533, 22
  %535 = shl nuw nsw i32 %534, 5
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = shl i32 %533, 4
  %538 = and i32 %537, 32752
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = lshr i32 %533, 7
  %541 = and i32 %540, 32752
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 3
  %545 = fmul fast float %544, 1.000000e+03
  %546 = fmul fast float %304, %545
  %547 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %548 = fadd fast float %547, %294
  %549 = fmul fast float %305, %545
  %550 = call float @dx.op.unary.f32(i32 22, float %549)  ; Frc(value)
  %551 = fadd fast float %550, %296
  %552 = fmul fast float %517, %545
  %553 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %554 = fmul fast float %553, 0x401921FB60000000
  %555 = fadd fast float %554, %536
  %556 = call float @dx.op.unary.f32(i32 13, float %555)  ; Sin(value)
  %557 = call float @dx.op.unary.f32(i32 12, float %555)  ; Cos(value)
  %558 = fsub fast float -0.000000e+00, %556
  %559 = fadd fast float %510, -5.000000e-01
  %560 = fadd fast float %511, -5.000000e-01
  %561 = fmul fast float %528, %559
  %562 = fmul fast float %530, %560
  %563 = fadd fast float %561, 5.000000e-01
  %564 = fadd fast float %562, 5.000000e-01
  %565 = fmul fast float %539, %563
  %566 = fmul fast float %542, %564
  %567 = fmul fast float %557, %565
  %568 = call float @dx.op.tertiary.f32(i32 46, float %558, float %566, float %567)  ; FMad(a,b,c)
  %569 = fmul fast float %556, %565
  %570 = call float @dx.op.tertiary.f32(i32 46, float %557, float %566, float %569)  ; FMad(a,b,c)
  %571 = fadd fast float %548, %568
  %572 = fadd fast float %551, %570
  %573 = icmp ugt i32 %522, 1
  %574 = icmp ugt i32 %520, 33554431
  %575 = or i1 %574, %573
  br i1 %575, label %576, label %601

; <label>:576                                     ; preds = %503
  %577 = add i32 %43, 228
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = lshr i32 %579, 16
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = fmul fast float %544, %581
  %583 = call float @dx.op.unary.f32(i32 22, float %582)  ; Frc(value)
  %584 = mul nuw nsw i32 %522, %523
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %583, %585
  %587 = call float @dx.op.unary.f32(i32 27, float %586)  ; Round_ni(value)
  %588 = fptoui float %587 to i32
  %589 = urem i32 %588, %522
  %590 = udiv i32 %588, %523
  %591 = call float @dx.op.unary.f32(i32 22, float %571)  ; Frc(value)
  %592 = call float @dx.op.unary.f32(i32 22, float %572)  ; Frc(value)
  %593 = uitofp i32 %589 to float
  %594 = uitofp i32 %590 to float
  %595 = fadd fast float %591, %593
  %596 = fadd fast float %592, %594
  %597 = uitofp i32 %522 to float
  %598 = uitofp i32 %523 to float
  %599 = fdiv fast float %595, %597
  %600 = fdiv fast float %596, %598
  br label %601

; <label>:601                                     ; preds = %576, %503
  %602 = phi float [ %599, %576 ], [ %571, %503 ]
  %603 = phi float [ %600, %576 ], [ %572, %503 ]
  %604 = and i32 %497, 256
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %652, label %606

; <label>:606                                     ; preds = %601
  %607 = add i32 %43, 440
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = add i32 %609, 0
  %611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %610, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %611, %dx.types.Handle %96, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = add i32 %43, 100
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = shl i32 %616, 4
  %618 = and i32 %617, 32752
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = lshr i32 %616, 7
  %621 = and i32 %620, 32752
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = fsub fast float 1.000000e+00, %464
  %624 = call float @dx.op.binary.f32(i32 35, float %623, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %625 = bitcast float %464 to i32
  %626 = sitofp i32 %625 to float
  %627 = fadd fast float %626, 0xC1CFBF8940000000
  %628 = fmul fast float %622, %627
  %629 = fadd fast float %628, 0x41CFBF8940000000
  %630 = fptosi float %629 to i32
  %631 = bitcast i32 %630 to float
  %632 = bitcast float %624 to i32
  %633 = sitofp i32 %632 to float
  %634 = fadd fast float %633, 0xC1CFBF8940000000
  %635 = fmul fast float %634, %622
  %636 = fadd fast float %635, 0x41CFBF8940000000
  %637 = fptosi float %636 to i32
  %638 = bitcast i32 %637 to float
  %639 = fmul fast float %631, %619
  %640 = fmul fast float %638, %619
  %641 = fsub fast float %624, %639
  %642 = fadd fast float %640, %624
  %643 = call float @dx.op.unary.f32(i32 7, float %641)  ; Saturate(value)
  %644 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %645 = fsub fast float %613, %643
  %646 = fsub fast float %644, %643
  %647 = bitcast float %646 to i32
  %648 = sub nsw i32 2129859010, %647
  %649 = bitcast i32 %648 to float
  %650 = fmul fast float %649, %645
  %651 = call float @dx.op.unary.f32(i32 7, float %650)  ; Saturate(value)
  br label %652

; <label>:652                                     ; preds = %606, %601
  %653 = phi float [ %651, %606 ], [ %464, %601 ]
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = and i32 %655, 128
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %674, label %658

; <label>:658                                     ; preds = %652
  %659 = add i32 %43, 424
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = add i32 %661, 0
  %663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %663, %dx.types.Handle %96, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = and i32 %667, 524288
  %669 = icmp ne i32 %668, 0
  %670 = fcmp fast ogt float %665, 0x3FE0101020000000
  %671 = select i1 %670, float 1.000000e+00, float 0.000000e+00
  %672 = select i1 %669, float %671, float %665
  %673 = fmul fast float %672, %653
  br label %674

; <label>:674                                     ; preds = %658, %652
  %675 = phi float [ %673, %658 ], [ %653, %652 ]
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = and i32 %677, 16
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %878, label %680

; <label>:680                                     ; preds = %674
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = add i32 %43, 376
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = add i32 %685, 0
  %687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %688 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %687, %dx.types.Handle %95, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %689 = extractvalue %dx.types.ResRet.f32 %688, 0
  %690 = extractvalue %dx.types.ResRet.f32 %688, 1
  %691 = extractvalue %dx.types.ResRet.f32 %688, 2
  %692 = extractvalue %dx.types.ResRet.f32 %688, 3
  %693 = and i32 %682, 255
  %694 = uitofp i32 %693 to float
  %695 = lshr i32 %682, 8
  %696 = and i32 %695, 255
  %697 = uitofp i32 %696 to float
  %698 = fmul fast float %692, %694
  %699 = fadd fast float %698, %697
  %700 = fmul fast float %699, 0x3F70101000000000
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = and i32 %702, 512
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %713, label %705

; <label>:705                                     ; preds = %680
  %706 = add i32 %43, 460
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = add i32 %708, 0
  %710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %711 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %710, %dx.types.Handle %96, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  br label %713

; <label>:713                                     ; preds = %705, %680
  %714 = phi float [ %712, %705 ], [ 1.000000e+00, %680 ]
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = and i32 %716, 33554432
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %825, label %719

; <label>:719                                     ; preds = %713
  %720 = add i32 %43, 224
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 65535
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = lshr i32 %722, 16
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = add i32 %43, 228
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 65535
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = lshr i32 %733, 24
  %735 = uitofp i32 %734 to float
  %736 = fmul fast float %735, 0x3F70101020000000
  %737 = and i32 %733, 255
  %738 = uitofp i32 %737 to float
  %739 = fmul fast float %738, 0x3F70101020000000
  %740 = lshr i32 %733, 8
  %741 = and i32 %740, 255
  %742 = uitofp i32 %741 to float
  %743 = fmul fast float %742, 0x3F70101020000000
  %744 = lshr i32 %733, 16
  %745 = and i32 %744, 255
  %746 = uitofp i32 %745 to float
  %747 = fmul fast float %746, 0x3F70101020000000
  %748 = add i32 %43, 220
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = lshr i32 %750, 24
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %752, 0x3F70101020000000
  %754 = and i32 %750, 255
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, 0x3F70101020000000
  %757 = lshr i32 %750, 8
  %758 = and i32 %757, 255
  %759 = uitofp i32 %758 to float
  %760 = fmul fast float %759, 0x3F70101020000000
  %761 = lshr i32 %750, 16
  %762 = and i32 %761, 255
  %763 = uitofp i32 %762 to float
  %764 = fmul fast float %763, 0x3F70101020000000
  %765 = bitcast float %689 to i32
  %766 = ashr i32 %765, 1
  %767 = sub nsw i32 1597463174, %766
  %768 = bitcast i32 %767 to float
  %769 = fmul fast float %689, 5.000000e-01
  %770 = fmul fast float %768, %768
  %771 = fmul fast float %770, %769
  %772 = fsub fast float 1.500000e+00, %771
  %773 = fmul fast float %768, %689
  %774 = fmul fast float %773, %772
  %775 = bitcast float %690 to i32
  %776 = ashr i32 %775, 1
  %777 = sub nsw i32 1597463174, %776
  %778 = bitcast i32 %777 to float
  %779 = fmul fast float %690, 5.000000e-01
  %780 = fmul fast float %778, %778
  %781 = fmul fast float %780, %779
  %782 = fsub fast float 1.500000e+00, %781
  %783 = fmul fast float %778, %690
  %784 = fmul fast float %783, %782
  %785 = bitcast float %691 to i32
  %786 = ashr i32 %785, 1
  %787 = sub nsw i32 1597463174, %786
  %788 = bitcast i32 %787 to float
  %789 = fmul fast float %691, 5.000000e-01
  %790 = fmul fast float %788, %788
  %791 = fmul fast float %790, %789
  %792 = fsub fast float 1.500000e+00, %791
  %793 = fmul fast float %788, %691
  %794 = fmul fast float %793, %792
  %795 = fsub fast float %774, %756
  %796 = fsub fast float %784, %760
  %797 = fsub fast float %794, %764
  %798 = fmul fast float %795, %724
  %799 = fmul fast float %796, %726
  %800 = fmul fast float %797, %731
  %801 = fadd fast float %798, %739
  %802 = fadd fast float %799, %743
  %803 = fadd fast float %800, %747
  %804 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %805 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %806 = call float @dx.op.unary.f32(i32 7, float %803)  ; Saturate(value)
  %807 = fmul fast float %804, %804
  %808 = fmul fast float %805, %805
  %809 = fmul fast float %806, %806
  %810 = fsub fast float %807, %689
  %811 = fsub fast float %808, %690
  %812 = fsub fast float %809, %691
  %813 = fmul fast float %810, %714
  %814 = fmul fast float %811, %714
  %815 = fmul fast float %812, %714
  %816 = fadd fast float %813, %689
  %817 = fadd fast float %814, %690
  %818 = fadd fast float %815, %691
  %819 = fadd fast float %736, %700
  %820 = fsub fast float %819, %753
  %821 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %822 = fsub fast float %821, %700
  %823 = fmul fast float %822, %714
  %824 = fadd fast float %823, %700
  br label %878

; <label>:825                                     ; preds = %713
  %826 = and i32 %716, 134217728
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %862, label %828

; <label>:828                                     ; preds = %825
  %829 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %830 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %831 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %832 = fadd fast float %829, -5.000000e-01
  %833 = fadd fast float %830, -5.000000e-01
  %834 = fadd fast float %831, -5.000000e-01
  %835 = fmul fast float %832, %714
  %836 = fmul fast float %833, %714
  %837 = fmul fast float %834, %714
  %838 = fadd fast float %835, 5.000000e-01
  %839 = fadd fast float %836, 5.000000e-01
  %840 = fadd fast float %837, 5.000000e-01
  %841 = call float @dx.op.unary.f32(i32 24, float %689)  ; Sqrt(value)
  %842 = call float @dx.op.unary.f32(i32 24, float %690)  ; Sqrt(value)
  %843 = call float @dx.op.unary.f32(i32 24, float %691)  ; Sqrt(value)
  %844 = fmul fast float %838, 2.000000e+00
  %845 = fsub fast float 1.000000e+00, %844
  %846 = fmul fast float %845, %841
  %847 = fadd fast float %846, %844
  %848 = fmul fast float %847, %841
  %849 = fmul fast float %839, 2.000000e+00
  %850 = fsub fast float 1.000000e+00, %849
  %851 = fmul fast float %850, %842
  %852 = fadd fast float %851, %849
  %853 = fmul fast float %852, %842
  %854 = fmul fast float %840, 2.000000e+00
  %855 = fsub fast float 1.000000e+00, %854
  %856 = fmul fast float %855, %843
  %857 = fadd fast float %856, %854
  %858 = fmul fast float %857, %843
  %859 = fmul fast float %848, %848
  %860 = fmul fast float %853, %853
  %861 = fmul fast float %858, %858
  br label %878

; <label>:862                                     ; preds = %825
  %863 = fmul fast float %281, %281
  %864 = fmul fast float %285, %285
  %865 = fmul fast float %289, %289
  %866 = fadd fast float %863, -1.000000e+00
  %867 = fadd fast float %864, -1.000000e+00
  %868 = fadd fast float %865, -1.000000e+00
  %869 = fmul fast float %714, %866
  %870 = fmul fast float %714, %867
  %871 = fmul fast float %714, %868
  %872 = fadd fast float %869, 1.000000e+00
  %873 = fadd fast float %870, 1.000000e+00
  %874 = fadd fast float %871, 1.000000e+00
  %875 = fmul fast float %872, %689
  %876 = fmul fast float %873, %690
  %877 = fmul fast float %874, %691
  br label %878

; <label>:878                                     ; preds = %862, %828, %719, %674
  %879 = phi float [ %824, %719 ], [ %700, %828 ], [ %700, %862 ], [ 0x3FA23C0BE0000000, %674 ]
  %880 = phi float [ %816, %719 ], [ %859, %828 ], [ %875, %862 ], [ 1.000000e+00, %674 ]
  %881 = phi float [ %817, %719 ], [ %860, %828 ], [ %876, %862 ], [ 1.000000e+00, %674 ]
  %882 = phi float [ %818, %719 ], [ %861, %828 ], [ %877, %862 ], [ 1.000000e+00, %674 ]
  %883 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %884 = extractvalue %dx.types.CBufRet.i32 %883, 1
  %885 = and i32 %884, 1
  %886 = icmp ne i32 %885, 0
  %887 = add i32 %43, 356
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = and i32 %889, 32
  %891 = icmp ne i32 %890, 0
  %892 = and i1 %886, %891
  %893 = select i1 %892, float 1.000000e+00, float %880
  %894 = select i1 %892, float 0x3FD3333340000000, float %881
  %895 = select i1 %892, float 0x3FD3333340000000, float %882
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = and i32 %897, 32
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %972, label %900

; <label>:900                                     ; preds = %878
  %901 = add i32 %43, 92
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = add i32 %43, 392
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = add i32 %906, 0
  %908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %907, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %909 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %908, %dx.types.Handle %95, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %910 = extractvalue %dx.types.ResRet.f32 %909, 0
  %911 = extractvalue %dx.types.ResRet.f32 %909, 1
  %912 = extractvalue %dx.types.ResRet.f32 %909, 2
  %913 = extractvalue %dx.types.ResRet.f32 %909, 3
  %914 = and i32 %903, 255
  %915 = uitofp i32 %914 to float
  %916 = lshr i32 %903, 8
  %917 = and i32 %916, 255
  %918 = uitofp i32 %917 to float
  %919 = lshr i32 %903, 16
  %920 = and i32 %919, 255
  %921 = uitofp i32 %920 to float
  %922 = fmul fast float %921, 0x3F70101000000000
  %923 = fmul fast float %910, %915
  %924 = fadd fast float %923, %918
  %925 = fmul fast float %924, 0x3F70101000000000
  %926 = fadd fast float %911, -5.000000e-01
  %927 = fadd fast float %913, -5.000000e-01
  %928 = fmul fast float %926, %922
  %929 = fmul fast float %927, %922
  %930 = fadd fast float %928, 5.000000e-01
  %931 = fadd fast float %929, 5.000000e-01
  %932 = fmul fast float %930, 2.000000e+00
  %933 = fadd fast float %932, -1.000000e+00
  %934 = fmul fast float %931, 2.000000e+00
  %935 = fadd fast float %934, -1.000000e+00
  %936 = fadd fast float %933, %935
  %937 = fmul fast float %936, 5.000000e-01
  %938 = fsub fast float %933, %935
  %939 = fmul fast float %938, 5.000000e-01
  %940 = call float @dx.op.unary.f32(i32 6, float %937)  ; FAbs(value)
  %941 = fsub fast float 1.000000e+00, %940
  %942 = call float @dx.op.unary.f32(i32 6, float %939)  ; FAbs(value)
  %943 = fsub fast float %941, %942
  %944 = call float @dx.op.dot3.f32(i32 55, float %937, float %939, float %943, float %937, float %939, float %943)  ; Dot3(ax,ay,az,bx,by,bz)
  %945 = call float @dx.op.unary.f32(i32 25, float %944)  ; Rsqrt(value)
  %946 = fmul fast float %937, %945
  %947 = fmul fast float %939, %945
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = and i32 %949, 67108864
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %968, label %952

; <label>:952                                     ; preds = %900
  %953 = add i32 %43, 280
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = and i32 %955, 65535
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = and i32 %959, 65535
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = lshr i32 %955, 16
  %963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %962)  ; LegacyF16ToF32(value)
  %964 = fsub fast float %925, %963
  %965 = fmul fast float %964, %957
  %966 = fadd fast float %965, %961
  %967 = call float @dx.op.unary.f32(i32 7, float %966)  ; Saturate(value)
  br label %968

; <label>:968                                     ; preds = %952, %900
  %969 = phi float [ %967, %952 ], [ %925, %900 ]
  %970 = call float @dx.op.dot2.f32(i32 54, float %946, float %947, float %506, float %507)  ; Dot2(ax,ay,bx,by)
  %971 = call float @dx.op.dot2.f32(i32 54, float %946, float %947, float %508, float %509)  ; Dot2(ax,ay,bx,by)
  br label %972

; <label>:972                                     ; preds = %968, %878
  %973 = phi float [ %969, %968 ], [ 0x3FD6666660000000, %878 ]
  %974 = phi float [ %970, %968 ], [ 0.000000e+00, %878 ]
  %975 = phi float [ %971, %968 ], [ 0.000000e+00, %878 ]
  %976 = phi float [ %912, %968 ], [ 1.000000e+00, %878 ]
  %977 = add i32 %43, 160
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = lshr i32 %979, 22
  %981 = shl nuw nsw i32 %980, 5
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = and i32 %984, 64
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %1020, label %987

; <label>:987                                     ; preds = %972
  %988 = add i32 %43, 408
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = add i32 %990, 0
  %992 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %991, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = and i32 %994, 131072
  %996 = icmp eq i32 %995, 0
  %997 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %992, %dx.types.Handle %95, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %998 = extractvalue %dx.types.ResRet.f32 %997, 0
  %999 = extractvalue %dx.types.ResRet.f32 %997, 1
  %1000 = extractvalue %dx.types.ResRet.f32 %997, 2
  %1001 = fmul fast float %998, %269
  %1002 = fmul fast float %999, %272
  %1003 = fmul fast float %1000, %275
  br i1 %996, label %1010, label %1004

; <label>:1004                                    ; preds = %987
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1007 = fmul fast float %1006, %1001
  %1008 = fmul fast float %1006, %1002
  %1009 = fmul fast float %1006, %1003
  br label %1010

; <label>:1010                                    ; preds = %1004, %987
  %1011 = phi float [ %1007, %1004 ], [ %1001, %987 ]
  %1012 = phi float [ %1008, %1004 ], [ %1002, %987 ]
  %1013 = phi float [ %1009, %1004 ], [ %1003, %987 ]
  %1014 = fmul fast float %1011, %982
  %1015 = select i1 %252, float %1014, float %1011
  %1016 = call float @dx.op.dot3.f32(i32 55, float %1015, float %1012, float %1013, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1017 = select i1 %252, float 0.000000e+00, float %1011
  %1018 = select i1 %252, float %1016, float %1012
  %1019 = select i1 %252, float 0.000000e+00, float %1013
  br label %1020

; <label>:1020                                    ; preds = %1010, %972
  %1021 = phi float [ %1017, %1010 ], [ 0.000000e+00, %972 ]
  %1022 = phi float [ %1018, %1010 ], [ 0.000000e+00, %972 ]
  %1023 = phi float [ %1019, %1010 ], [ 0.000000e+00, %972 ]
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = and i32 %1025, 1024
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1058, label %1028

; <label>:1028                                    ; preds = %1020
  %1029 = add i32 %43, 152
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = and i32 %1031, 255
  %1033 = uitofp i32 %1032 to float
  %1034 = fmul fast float %1033, 0x3F70101020000000
  %1035 = lshr i32 %1031, 8
  %1036 = and i32 %1035, 255
  %1037 = uitofp i32 %1036 to float
  %1038 = fmul fast float %1037, 0x3F70101020000000
  %1039 = lshr i32 %1031, 16
  %1040 = and i32 %1039, 255
  %1041 = uitofp i32 %1040 to float
  %1042 = fmul fast float %1041, 0x3F70101020000000
  %1043 = fmul fast float %1034, %1034
  %1044 = fmul fast float %1038, %1038
  %1045 = fmul fast float %1042, %1042
  %1046 = add i32 %43, 476
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = add i32 %1048, 0
  %1050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1049, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1051 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1050, %dx.types.Handle %96, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = fmul fast float %1043, %1052
  %1056 = fmul fast float %1044, %1053
  %1057 = fmul fast float %1045, %1054
  br label %1058

; <label>:1058                                    ; preds = %1028, %1020
  %1059 = phi float [ %1055, %1028 ], [ 0.000000e+00, %1020 ]
  %1060 = phi float [ %1056, %1028 ], [ 0.000000e+00, %1020 ]
  %1061 = phi float [ %1057, %1028 ], [ 0.000000e+00, %1020 ]
  %1062 = fcmp fast ogt float %1059, 0.000000e+00
  %1063 = fcmp fast ogt float %1060, 0.000000e+00
  %1064 = fcmp fast ogt float %1061, 0.000000e+00
  %1065 = call float @dx.op.unary.f32(i32 23, float %1059)  ; Log(value)
  %1066 = call float @dx.op.unary.f32(i32 23, float %1060)  ; Log(value)
  %1067 = call float @dx.op.unary.f32(i32 23, float %1061)  ; Log(value)
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = lshr i32 %1069, 7
  %1071 = and i32 %1070, 32752
  %1072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1071)  ; LegacyF16ToF32(value)
  %1073 = fmul fast float %1065, 0xBFE62E4300000000
  %1074 = fmul fast float %1073, %1072
  %1075 = fmul fast float %1066, 0xBFE62E4300000000
  %1076 = fmul fast float %1075, %1072
  %1077 = fmul fast float %1067, 0xBFE62E4300000000
  %1078 = fmul fast float %1077, %1072
  %1079 = select i1 %1062, float %1074, float 1.270000e+02
  %1080 = select i1 %1063, float %1076, float 1.270000e+02
  %1081 = select i1 %1064, float %1078, float 1.270000e+02
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = and i32 %1083, 10240
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1130, label %1086

; <label>:1086                                    ; preds = %1058
  %1087 = add i32 %43, 492
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = add i32 %1089, 0
  %1091 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1090, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1092 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1091, %dx.types.Handle %96, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 3
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = and i32 %1096, 1048576
  %1098 = icmp ne i32 %1097, 0
  %1099 = and i32 %1096, 8192
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1116, label %1101

; <label>:1101                                    ; preds = %1086
  %1102 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1103 = select i1 %1098, float %1102, float %1093
  %1104 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1105 = select i1 %1098, float %1104, float %1093
  %1106 = add i32 %43, 96
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = lshr i32 %1108, 16
  %1110 = and i32 %1109, 255
  %1111 = uitofp i32 %1110 to float
  %1112 = fmul fast float %1111, 0x3F80101020000000
  %1113 = fmul fast float %1112, %1105
  %1114 = fmul fast float %1112, %1093
  %1115 = fmul fast float %1112, %1103
  br label %1116

; <label>:1116                                    ; preds = %1101, %1086
  %1117 = phi float [ %1113, %1101 ], [ 0.000000e+00, %1086 ]
  %1118 = phi float [ %1114, %1101 ], [ 0.000000e+00, %1086 ]
  %1119 = phi float [ %1115, %1101 ], [ 0.000000e+00, %1086 ]
  %1120 = and i32 %1096, 2048
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1130, label %1122

; <label>:1122                                    ; preds = %1116
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = shl i32 %1124, 4
  %1126 = and i32 %1125, 32752
  %1127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1126)  ; LegacyF16ToF32(value)
  %1128 = fmul fast float %1127, %1094
  %1129 = call float @dx.op.binary.f32(i32 35, float %1128, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1130

; <label>:1130                                    ; preds = %1122, %1116, %1058
  %1131 = phi float [ %1117, %1122 ], [ %1117, %1116 ], [ 0.000000e+00, %1058 ]
  %1132 = phi float [ %1118, %1122 ], [ %1118, %1116 ], [ 0.000000e+00, %1058 ]
  %1133 = phi float [ %1119, %1122 ], [ %1119, %1116 ], [ 0.000000e+00, %1058 ]
  %1134 = phi float [ %1129, %1122 ], [ 0x3F70101020000000, %1116 ], [ 0x3F70101020000000, %1058 ]
  %1135 = add i32 %43, 96
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = and i32 %1137, 255
  %1139 = uitofp i32 %1138 to float
  %1140 = lshr i32 %1137, 8
  %1141 = and i32 %1140, 255
  %1142 = uitofp i32 %1141 to float
  %1143 = call float @dx.op.dot3.f32(i32 55, float %893, float %894, float %895, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1144 = fmul fast float %1142, %1143
  %1145 = fadd fast float %1144, %1139
  %1146 = fmul fast float %1145, 0x3F70101020000000
  %1147 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  br label %1148

; <label>:1148                                    ; preds = %1130, %488
  %1149 = phi float [ 0.000000e+00, %488 ], [ %974, %1130 ]
  %1150 = phi float [ 0.000000e+00, %488 ], [ %975, %1130 ]
  %1151 = phi float [ 0.000000e+00, %488 ], [ %893, %1130 ]
  %1152 = phi float [ 0.000000e+00, %488 ], [ %894, %1130 ]
  %1153 = phi float [ 0.000000e+00, %488 ], [ %895, %1130 ]
  %1154 = phi float [ 0.000000e+00, %488 ], [ %1021, %1130 ]
  %1155 = phi float [ 0.000000e+00, %488 ], [ %1022, %1130 ]
  %1156 = phi float [ 0.000000e+00, %488 ], [ %1023, %1130 ]
  %1157 = phi float [ 0.000000e+00, %488 ], [ %1079, %1130 ]
  %1158 = phi float [ 0.000000e+00, %488 ], [ %1080, %1130 ]
  %1159 = phi float [ 0.000000e+00, %488 ], [ %1081, %1130 ]
  %1160 = phi float [ 0.000000e+00, %488 ], [ %1131, %1130 ]
  %1161 = phi float [ 0.000000e+00, %488 ], [ %1132, %1130 ]
  %1162 = phi float [ 0.000000e+00, %488 ], [ %1133, %1130 ]
  %1163 = phi float [ 0.000000e+00, %488 ], [ %879, %1130 ]
  %1164 = phi float [ 0.000000e+00, %488 ], [ %675, %1130 ]
  %1165 = phi float [ 0.000000e+00, %488 ], [ %973, %1130 ]
  %1166 = phi float [ 0.000000e+00, %488 ], [ %976, %1130 ]
  %1167 = phi float [ 0.000000e+00, %488 ], [ %1134, %1130 ]
  %1168 = phi float [ 0.000000e+00, %488 ], [ %1147, %1130 ]
  br i1 %436, label %2091, label %1169

; <label>:1169                                    ; preds = %1148
  %1170 = icmp ult i32 %494, 2
  %1171 = add i32 %43, 40
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = add i32 %43, 44
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = or i32 %1176, %1173
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %2091, label %1179

; <label>:1179                                    ; preds = %1169
  %1180 = and i32 %1173, 262144
  %1181 = icmp ne i32 %1180, 0
  %1182 = select i1 %1181, float %49, float 1.000000e+00
  %1183 = select i1 %1181, float %50, float 0.000000e+00
  %1184 = select i1 %1181, float %51, float 0.000000e+00
  %1185 = select i1 %1181, float %52, float 1.000000e+00
  %1186 = select i1 %1181, float %53, float %81
  %1187 = select i1 %1181, float %54, float %82
  %1188 = add i32 %43, 300
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = lshr i32 %1190, 16
  %1192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1191)  ; LegacyF16ToF32(value)
  %1193 = fmul fast float %1192, 0x3F50624DE0000000
  %1194 = add i32 %43, 104
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = lshr i32 %1196, 16
  %1198 = and i32 %1197, 255
  %1199 = lshr i32 %1196, 24
  %1200 = add i32 %43, 308
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = and i32 %1202, 65535
  %1204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1203)  ; LegacyF16ToF32(value)
  %1205 = lshr i32 %1202, 16
  %1206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1205)  ; LegacyF16ToF32(value)
  %1207 = add i32 %43, 48
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1207, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = lshr i32 %1209, 22
  %1211 = shl nuw nsw i32 %1210, 5
  %1212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1211)  ; LegacyF16ToF32(value)
  %1213 = shl i32 %1209, 4
  %1214 = and i32 %1213, 32752
  %1215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1214)  ; LegacyF16ToF32(value)
  %1216 = lshr i32 %1209, 7
  %1217 = and i32 %1216, 32752
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 3
  %1221 = fmul fast float %1220, 1.000000e+03
  %1222 = fmul fast float %346, %1221
  %1223 = call float @dx.op.unary.f32(i32 22, float %1222)  ; Frc(value)
  %1224 = fadd fast float %1223, %336
  %1225 = fmul fast float %347, %1221
  %1226 = call float @dx.op.unary.f32(i32 22, float %1225)  ; Frc(value)
  %1227 = fadd fast float %1226, %338
  %1228 = fmul fast float %1193, %1221
  %1229 = call float @dx.op.unary.f32(i32 22, float %1228)  ; Frc(value)
  %1230 = fmul fast float %1229, 0x401921FB60000000
  %1231 = fadd fast float %1230, %1212
  %1232 = call float @dx.op.unary.f32(i32 13, float %1231)  ; Sin(value)
  %1233 = call float @dx.op.unary.f32(i32 12, float %1231)  ; Cos(value)
  %1234 = fsub fast float -0.000000e+00, %1232
  %1235 = fadd fast float %1186, -5.000000e-01
  %1236 = fadd fast float %1187, -5.000000e-01
  %1237 = fmul fast float %1204, %1235
  %1238 = fmul fast float %1206, %1236
  %1239 = fadd fast float %1237, 5.000000e-01
  %1240 = fadd fast float %1238, 5.000000e-01
  %1241 = fmul fast float %1215, %1239
  %1242 = fmul fast float %1218, %1240
  %1243 = fmul fast float %1233, %1241
  %1244 = call float @dx.op.tertiary.f32(i32 46, float %1234, float %1242, float %1243)  ; FMad(a,b,c)
  %1245 = fmul fast float %1232, %1241
  %1246 = call float @dx.op.tertiary.f32(i32 46, float %1233, float %1242, float %1245)  ; FMad(a,b,c)
  %1247 = fadd fast float %1224, %1244
  %1248 = fadd fast float %1227, %1246
  %1249 = icmp ugt i32 %1198, 1
  %1250 = icmp ugt i32 %1196, 33554431
  %1251 = or i1 %1250, %1249
  br i1 %1251, label %1252, label %1277

; <label>:1252                                    ; preds = %1179
  %1253 = add i32 %43, 244
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = lshr i32 %1255, 16
  %1257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1256)  ; LegacyF16ToF32(value)
  %1258 = fmul fast float %1220, %1257
  %1259 = call float @dx.op.unary.f32(i32 22, float %1258)  ; Frc(value)
  %1260 = mul nuw nsw i32 %1198, %1199
  %1261 = uitofp i32 %1260 to float
  %1262 = fmul fast float %1259, %1261
  %1263 = call float @dx.op.unary.f32(i32 27, float %1262)  ; Round_ni(value)
  %1264 = fptoui float %1263 to i32
  %1265 = urem i32 %1264, %1198
  %1266 = udiv i32 %1264, %1199
  %1267 = call float @dx.op.unary.f32(i32 22, float %1247)  ; Frc(value)
  %1268 = call float @dx.op.unary.f32(i32 22, float %1248)  ; Frc(value)
  %1269 = uitofp i32 %1265 to float
  %1270 = uitofp i32 %1266 to float
  %1271 = fadd fast float %1267, %1269
  %1272 = fadd fast float %1268, %1270
  %1273 = uitofp i32 %1198 to float
  %1274 = uitofp i32 %1199 to float
  %1275 = fdiv fast float %1271, %1273
  %1276 = fdiv fast float %1272, %1274
  br label %1277

; <label>:1277                                    ; preds = %1252, %1179
  %1278 = phi float [ %1275, %1252 ], [ %1247, %1179 ]
  %1279 = phi float [ %1276, %1252 ], [ %1248, %1179 ]
  %1280 = and i32 %1173, 256
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1328, label %1282

; <label>:1282                                    ; preds = %1277
  %1283 = add i32 %43, 444
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = add i32 %1285, 0
  %1287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1287, %dx.types.Handle %96, float %1278, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1289 = extractvalue %dx.types.ResRet.f32 %1288, 0
  %1290 = add i32 %43, 116
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = shl i32 %1292, 4
  %1294 = and i32 %1293, 32752
  %1295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1294)  ; LegacyF16ToF32(value)
  %1296 = lshr i32 %1292, 7
  %1297 = and i32 %1296, 32752
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = fsub fast float 1.000000e+00, %491
  %1300 = call float @dx.op.binary.f32(i32 35, float %1299, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1301 = bitcast float %491 to i32
  %1302 = sitofp i32 %1301 to float
  %1303 = fadd fast float %1302, 0xC1CFBF8940000000
  %1304 = fmul fast float %1298, %1303
  %1305 = fadd fast float %1304, 0x41CFBF8940000000
  %1306 = fptosi float %1305 to i32
  %1307 = bitcast i32 %1306 to float
  %1308 = bitcast float %1300 to i32
  %1309 = sitofp i32 %1308 to float
  %1310 = fadd fast float %1309, 0xC1CFBF8940000000
  %1311 = fmul fast float %1310, %1298
  %1312 = fadd fast float %1311, 0x41CFBF8940000000
  %1313 = fptosi float %1312 to i32
  %1314 = bitcast i32 %1313 to float
  %1315 = fmul fast float %1307, %1295
  %1316 = fmul fast float %1314, %1295
  %1317 = fsub fast float %1300, %1315
  %1318 = fadd fast float %1316, %1300
  %1319 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1320 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1321 = fsub fast float %1289, %1319
  %1322 = fsub fast float %1320, %1319
  %1323 = bitcast float %1322 to i32
  %1324 = sub nsw i32 2129859010, %1323
  %1325 = bitcast i32 %1324 to float
  %1326 = fmul fast float %1325, %1321
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  br label %1328

; <label>:1328                                    ; preds = %1282, %1277
  %1329 = phi float [ %1327, %1282 ], [ %491, %1277 ]
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = and i32 %1331, 128
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1350, label %1334

; <label>:1334                                    ; preds = %1328
  %1335 = add i32 %43, 428
  %1336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.i32 %1336, 0
  %1338 = add i32 %1337, 0
  %1339 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1338, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1340 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1339, %dx.types.Handle %96, float %1278, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1341 = extractvalue %dx.types.ResRet.f32 %1340, 0
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = and i32 %1343, 524288
  %1345 = icmp ne i32 %1344, 0
  %1346 = fcmp fast ogt float %1341, 0x3FE0101020000000
  %1347 = select i1 %1346, float 1.000000e+00, float 0.000000e+00
  %1348 = select i1 %1345, float %1347, float %1341
  %1349 = fmul fast float %1348, %1329
  br label %1350

; <label>:1350                                    ; preds = %1334, %1328
  %1351 = phi float [ %1349, %1334 ], [ %1329, %1328 ]
  %1352 = fcmp fast ult float %1351, 0x3F70101020000000
  br i1 %1352, label %2091, label %1353

; <label>:1353                                    ; preds = %1350
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = and i32 %1355, 16
  %1357 = icmp eq i32 %1356, 0
  br i1 %1357, label %1556, label %1358

; <label>:1358                                    ; preds = %1353
  %1359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.i32 %1359, 0
  %1361 = add i32 %43, 380
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1361, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = add i32 %1363, 0
  %1365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1364, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1366 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1365, %dx.types.Handle %95, float %1278, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = extractvalue %dx.types.ResRet.f32 %1366, 1
  %1369 = extractvalue %dx.types.ResRet.f32 %1366, 2
  %1370 = extractvalue %dx.types.ResRet.f32 %1366, 3
  %1371 = and i32 %1360, 255
  %1372 = uitofp i32 %1371 to float
  %1373 = lshr i32 %1360, 8
  %1374 = and i32 %1373, 255
  %1375 = uitofp i32 %1374 to float
  %1376 = fmul fast float %1370, %1372
  %1377 = fadd fast float %1376, %1375
  %1378 = fmul fast float %1377, 0x3F70101000000000
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = and i32 %1380, 512
  %1382 = icmp eq i32 %1381, 0
  br i1 %1382, label %1391, label %1383

; <label>:1383                                    ; preds = %1358
  %1384 = add i32 %43, 464
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = add i32 %1386, 0
  %1388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1388, %dx.types.Handle %96, float %1278, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1390 = extractvalue %dx.types.ResRet.f32 %1389, 0
  br label %1391

; <label>:1391                                    ; preds = %1383, %1358
  %1392 = phi float [ %1390, %1383 ], [ 1.000000e+00, %1358 ]
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = and i32 %1394, 33554432
  %1396 = icmp eq i32 %1395, 0
  br i1 %1396, label %1503, label %1397

; <label>:1397                                    ; preds = %1391
  %1398 = add i32 %43, 240
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1398, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = and i32 %1400, 65535
  %1402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1401)  ; LegacyF16ToF32(value)
  %1403 = lshr i32 %1400, 16
  %1404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1403)  ; LegacyF16ToF32(value)
  %1405 = add i32 %43, 244
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1405, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = and i32 %1407, 65535
  %1409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1408)  ; LegacyF16ToF32(value)
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = lshr i32 %1411, 24
  %1413 = uitofp i32 %1412 to float
  %1414 = fmul fast float %1413, 0x3F70101020000000
  %1415 = and i32 %1411, 255
  %1416 = uitofp i32 %1415 to float
  %1417 = fmul fast float %1416, 0x3F70101020000000
  %1418 = lshr i32 %1411, 8
  %1419 = and i32 %1418, 255
  %1420 = uitofp i32 %1419 to float
  %1421 = fmul fast float %1420, 0x3F70101020000000
  %1422 = lshr i32 %1411, 16
  %1423 = and i32 %1422, 255
  %1424 = uitofp i32 %1423 to float
  %1425 = fmul fast float %1424, 0x3F70101020000000
  %1426 = add i32 %43, 236
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = lshr i32 %1428, 24
  %1430 = uitofp i32 %1429 to float
  %1431 = fmul fast float %1430, 0x3F70101020000000
  %1432 = and i32 %1428, 255
  %1433 = uitofp i32 %1432 to float
  %1434 = fmul fast float %1433, 0x3F70101020000000
  %1435 = lshr i32 %1428, 8
  %1436 = and i32 %1435, 255
  %1437 = uitofp i32 %1436 to float
  %1438 = fmul fast float %1437, 0x3F70101020000000
  %1439 = lshr i32 %1428, 16
  %1440 = and i32 %1439, 255
  %1441 = uitofp i32 %1440 to float
  %1442 = fmul fast float %1441, 0x3F70101020000000
  %1443 = bitcast float %1367 to i32
  %1444 = ashr i32 %1443, 1
  %1445 = sub nsw i32 1597463174, %1444
  %1446 = bitcast i32 %1445 to float
  %1447 = fmul fast float %1367, 5.000000e-01
  %1448 = fmul fast float %1446, %1446
  %1449 = fmul fast float %1448, %1447
  %1450 = fsub fast float 1.500000e+00, %1449
  %1451 = fmul fast float %1446, %1367
  %1452 = fmul fast float %1451, %1450
  %1453 = bitcast float %1368 to i32
  %1454 = ashr i32 %1453, 1
  %1455 = sub nsw i32 1597463174, %1454
  %1456 = bitcast i32 %1455 to float
  %1457 = fmul fast float %1368, 5.000000e-01
  %1458 = fmul fast float %1456, %1456
  %1459 = fmul fast float %1458, %1457
  %1460 = fsub fast float 1.500000e+00, %1459
  %1461 = fmul fast float %1456, %1368
  %1462 = fmul fast float %1461, %1460
  %1463 = bitcast float %1369 to i32
  %1464 = ashr i32 %1463, 1
  %1465 = sub nsw i32 1597463174, %1464
  %1466 = bitcast i32 %1465 to float
  %1467 = fmul fast float %1369, 5.000000e-01
  %1468 = fmul fast float %1466, %1466
  %1469 = fmul fast float %1468, %1467
  %1470 = fsub fast float 1.500000e+00, %1469
  %1471 = fmul fast float %1466, %1369
  %1472 = fmul fast float %1471, %1470
  %1473 = fsub fast float %1452, %1434
  %1474 = fsub fast float %1462, %1438
  %1475 = fsub fast float %1472, %1442
  %1476 = fmul fast float %1473, %1402
  %1477 = fmul fast float %1474, %1404
  %1478 = fmul fast float %1475, %1409
  %1479 = fadd fast float %1476, %1417
  %1480 = fadd fast float %1477, %1421
  %1481 = fadd fast float %1478, %1425
  %1482 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  %1483 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  %1484 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1485 = fmul fast float %1482, %1482
  %1486 = fmul fast float %1483, %1483
  %1487 = fmul fast float %1484, %1484
  %1488 = fsub fast float %1485, %1367
  %1489 = fsub fast float %1486, %1368
  %1490 = fsub fast float %1487, %1369
  %1491 = fmul fast float %1488, %1392
  %1492 = fmul fast float %1489, %1392
  %1493 = fmul fast float %1490, %1392
  %1494 = fadd fast float %1491, %1367
  %1495 = fadd fast float %1492, %1368
  %1496 = fadd fast float %1493, %1369
  %1497 = fadd fast float %1414, %1378
  %1498 = fsub fast float %1497, %1431
  %1499 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1500 = fsub fast float %1499, %1378
  %1501 = fmul fast float %1500, %1392
  %1502 = fadd fast float %1501, %1378
  br label %1556

; <label>:1503                                    ; preds = %1391
  %1504 = and i32 %1394, 134217728
  %1505 = icmp eq i32 %1504, 0
  br i1 %1505, label %1540, label %1506

; <label>:1506                                    ; preds = %1503
  %1507 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %1508 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %1509 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %1510 = fadd fast float %1507, -5.000000e-01
  %1511 = fadd fast float %1508, -5.000000e-01
  %1512 = fadd fast float %1509, -5.000000e-01
  %1513 = fmul fast float %1510, %1392
  %1514 = fmul fast float %1511, %1392
  %1515 = fmul fast float %1512, %1392
  %1516 = fadd fast float %1513, 5.000000e-01
  %1517 = fadd fast float %1514, 5.000000e-01
  %1518 = fadd fast float %1515, 5.000000e-01
  %1519 = call float @dx.op.unary.f32(i32 24, float %1367)  ; Sqrt(value)
  %1520 = call float @dx.op.unary.f32(i32 24, float %1368)  ; Sqrt(value)
  %1521 = call float @dx.op.unary.f32(i32 24, float %1369)  ; Sqrt(value)
  %1522 = fmul fast float %1516, 2.000000e+00
  %1523 = fsub fast float 1.000000e+00, %1522
  %1524 = fmul fast float %1523, %1519
  %1525 = fadd fast float %1524, %1522
  %1526 = fmul fast float %1525, %1519
  %1527 = fmul fast float %1517, 2.000000e+00
  %1528 = fsub fast float 1.000000e+00, %1527
  %1529 = fmul fast float %1528, %1520
  %1530 = fadd fast float %1529, %1527
  %1531 = fmul fast float %1530, %1520
  %1532 = fmul fast float %1518, 2.000000e+00
  %1533 = fsub fast float 1.000000e+00, %1532
  %1534 = fmul fast float %1533, %1521
  %1535 = fadd fast float %1534, %1532
  %1536 = fmul fast float %1535, %1521
  %1537 = fmul fast float %1526, %1526
  %1538 = fmul fast float %1531, %1531
  %1539 = fmul fast float %1536, %1536
  br label %1556

; <label>:1540                                    ; preds = %1503
  %1541 = fmul fast float %323, %323
  %1542 = fmul fast float %327, %327
  %1543 = fmul fast float %331, %331
  %1544 = fadd fast float %1541, -1.000000e+00
  %1545 = fadd fast float %1542, -1.000000e+00
  %1546 = fadd fast float %1543, -1.000000e+00
  %1547 = fmul fast float %1392, %1544
  %1548 = fmul fast float %1392, %1545
  %1549 = fmul fast float %1392, %1546
  %1550 = fadd fast float %1547, 1.000000e+00
  %1551 = fadd fast float %1548, 1.000000e+00
  %1552 = fadd fast float %1549, 1.000000e+00
  %1553 = fmul fast float %1550, %1367
  %1554 = fmul fast float %1551, %1368
  %1555 = fmul fast float %1552, %1369
  br label %1556

; <label>:1556                                    ; preds = %1540, %1506, %1397, %1353
  %1557 = phi float [ %1502, %1397 ], [ %1378, %1506 ], [ %1378, %1540 ], [ 0x3FA23C0BE0000000, %1353 ]
  %1558 = phi float [ %1494, %1397 ], [ %1537, %1506 ], [ %1553, %1540 ], [ 1.000000e+00, %1353 ]
  %1559 = phi float [ %1495, %1397 ], [ %1538, %1506 ], [ %1554, %1540 ], [ 1.000000e+00, %1353 ]
  %1560 = phi float [ %1496, %1397 ], [ %1539, %1506 ], [ %1555, %1540 ], [ 1.000000e+00, %1353 ]
  %1561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.i32 %1561, 1
  %1563 = and i32 %1562, 1
  %1564 = icmp ne i32 %1563, 0
  %1565 = add i32 %43, 356
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = and i32 %1567, 32
  %1569 = icmp ne i32 %1568, 0
  %1570 = and i1 %1564, %1569
  %1571 = select i1 %1570, float 1.000000e+00, float %1558
  %1572 = select i1 %1570, float 0x3FD3333340000000, float %1559
  %1573 = select i1 %1570, float 0x3FD3333340000000, float %1560
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 32
  %1577 = icmp eq i32 %1576, 0
  br i1 %1577, label %1650, label %1578

; <label>:1578                                    ; preds = %1556
  %1579 = add i32 %43, 108
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1579, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = add i32 %43, 396
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = add i32 %1584, 0
  %1586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1585, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1586, %dx.types.Handle %95, float %1278, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1588 = extractvalue %dx.types.ResRet.f32 %1587, 0
  %1589 = extractvalue %dx.types.ResRet.f32 %1587, 1
  %1590 = extractvalue %dx.types.ResRet.f32 %1587, 2
  %1591 = extractvalue %dx.types.ResRet.f32 %1587, 3
  %1592 = and i32 %1581, 255
  %1593 = uitofp i32 %1592 to float
  %1594 = lshr i32 %1581, 8
  %1595 = and i32 %1594, 255
  %1596 = uitofp i32 %1595 to float
  %1597 = lshr i32 %1581, 16
  %1598 = and i32 %1597, 255
  %1599 = uitofp i32 %1598 to float
  %1600 = fmul fast float %1599, 0x3F70101000000000
  %1601 = fmul fast float %1588, %1593
  %1602 = fadd fast float %1601, %1596
  %1603 = fmul fast float %1602, 0x3F70101000000000
  %1604 = fadd fast float %1589, -5.000000e-01
  %1605 = fadd fast float %1591, -5.000000e-01
  %1606 = fmul fast float %1604, %1600
  %1607 = fmul fast float %1605, %1600
  %1608 = fadd fast float %1606, 5.000000e-01
  %1609 = fadd fast float %1607, 5.000000e-01
  %1610 = fmul fast float %1608, 2.000000e+00
  %1611 = fadd fast float %1610, -1.000000e+00
  %1612 = fmul fast float %1609, 2.000000e+00
  %1613 = fadd fast float %1612, -1.000000e+00
  %1614 = fadd fast float %1611, %1613
  %1615 = fmul fast float %1614, 5.000000e-01
  %1616 = fsub fast float %1611, %1613
  %1617 = fmul fast float %1616, 5.000000e-01
  %1618 = call float @dx.op.unary.f32(i32 6, float %1615)  ; FAbs(value)
  %1619 = fsub fast float 1.000000e+00, %1618
  %1620 = call float @dx.op.unary.f32(i32 6, float %1617)  ; FAbs(value)
  %1621 = fsub fast float %1619, %1620
  %1622 = call float @dx.op.dot3.f32(i32 55, float %1615, float %1617, float %1621, float %1615, float %1617, float %1621)  ; Dot3(ax,ay,az,bx,by,bz)
  %1623 = call float @dx.op.unary.f32(i32 25, float %1622)  ; Rsqrt(value)
  %1624 = fmul fast float %1615, %1623
  %1625 = fmul fast float %1617, %1623
  %1626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.i32 %1626, 0
  %1628 = and i32 %1627, 67108864
  %1629 = icmp eq i32 %1628, 0
  br i1 %1629, label %1646, label %1630

; <label>:1630                                    ; preds = %1578
  %1631 = add i32 %43, 296
  %1632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1631, i32 undef)  ; BufferLoad(srv,index,wot)
  %1633 = extractvalue %dx.types.ResRet.i32 %1632, 0
  %1634 = and i32 %1633, 65535
  %1635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1634)  ; LegacyF16ToF32(value)
  %1636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1637 = extractvalue %dx.types.ResRet.i32 %1636, 0
  %1638 = and i32 %1637, 65535
  %1639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1638)  ; LegacyF16ToF32(value)
  %1640 = lshr i32 %1633, 16
  %1641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1640)  ; LegacyF16ToF32(value)
  %1642 = fsub fast float %1603, %1641
  %1643 = fmul fast float %1642, %1635
  %1644 = fadd fast float %1643, %1639
  %1645 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  br label %1646

; <label>:1646                                    ; preds = %1630, %1578
  %1647 = phi float [ %1645, %1630 ], [ %1603, %1578 ]
  %1648 = call float @dx.op.dot2.f32(i32 54, float %1624, float %1625, float %1182, float %1183)  ; Dot2(ax,ay,bx,by)
  %1649 = call float @dx.op.dot2.f32(i32 54, float %1624, float %1625, float %1184, float %1185)  ; Dot2(ax,ay,bx,by)
  br label %1650

; <label>:1650                                    ; preds = %1646, %1556
  %1651 = phi float [ %1647, %1646 ], [ 0x3FD6666660000000, %1556 ]
  %1652 = phi float [ %1648, %1646 ], [ 0.000000e+00, %1556 ]
  %1653 = phi float [ %1649, %1646 ], [ 0.000000e+00, %1556 ]
  %1654 = phi float [ %1590, %1646 ], [ 1.000000e+00, %1556 ]
  %1655 = add i32 %43, 176
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1655, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = lshr i32 %1657, 22
  %1659 = shl nuw nsw i32 %1658, 5
  %1660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1659)  ; LegacyF16ToF32(value)
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = and i32 %1662, 64
  %1664 = icmp eq i32 %1663, 0
  br i1 %1664, label %1698, label %1665

; <label>:1665                                    ; preds = %1650
  %1666 = add i32 %43, 412
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = add i32 %1668, 0
  %1670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = and i32 %1672, 131072
  %1674 = icmp eq i32 %1673, 0
  %1675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1670, %dx.types.Handle %95, float %1278, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1676 = extractvalue %dx.types.ResRet.f32 %1675, 0
  %1677 = extractvalue %dx.types.ResRet.f32 %1675, 1
  %1678 = extractvalue %dx.types.ResRet.f32 %1675, 2
  %1679 = fmul fast float %1676, %311
  %1680 = fmul fast float %1677, %314
  %1681 = fmul fast float %1678, %317
  br i1 %1674, label %1688, label %1682

; <label>:1682                                    ; preds = %1665
  %1683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1684 = extractvalue %dx.types.CBufRet.f32 %1683, 0
  %1685 = fmul fast float %1684, %1679
  %1686 = fmul fast float %1684, %1680
  %1687 = fmul fast float %1684, %1681
  br label %1688

; <label>:1688                                    ; preds = %1682, %1665
  %1689 = phi float [ %1685, %1682 ], [ %1679, %1665 ]
  %1690 = phi float [ %1686, %1682 ], [ %1680, %1665 ]
  %1691 = phi float [ %1687, %1682 ], [ %1681, %1665 ]
  %1692 = fmul fast float %1689, %1660
  %1693 = select i1 %252, float %1692, float %1689
  %1694 = call float @dx.op.dot3.f32(i32 55, float %1693, float %1690, float %1691, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1695 = select i1 %252, float 0.000000e+00, float %1689
  %1696 = select i1 %252, float %1694, float %1690
  %1697 = select i1 %252, float 0.000000e+00, float %1691
  br label %1698

; <label>:1698                                    ; preds = %1688, %1650
  %1699 = phi float [ %1695, %1688 ], [ 0.000000e+00, %1650 ]
  %1700 = phi float [ %1696, %1688 ], [ 0.000000e+00, %1650 ]
  %1701 = phi float [ %1697, %1688 ], [ 0.000000e+00, %1650 ]
  %1702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1703 = extractvalue %dx.types.ResRet.i32 %1702, 0
  %1704 = and i32 %1703, 1024
  %1705 = icmp eq i32 %1704, 0
  br i1 %1705, label %1736, label %1706

; <label>:1706                                    ; preds = %1698
  %1707 = add i32 %43, 168
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 255
  %1711 = uitofp i32 %1710 to float
  %1712 = fmul fast float %1711, 0x3F70101020000000
  %1713 = lshr i32 %1709, 8
  %1714 = and i32 %1713, 255
  %1715 = uitofp i32 %1714 to float
  %1716 = fmul fast float %1715, 0x3F70101020000000
  %1717 = lshr i32 %1709, 16
  %1718 = and i32 %1717, 255
  %1719 = uitofp i32 %1718 to float
  %1720 = fmul fast float %1719, 0x3F70101020000000
  %1721 = fmul fast float %1712, %1712
  %1722 = fmul fast float %1716, %1716
  %1723 = fmul fast float %1720, %1720
  %1724 = add i32 %43, 480
  %1725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1724, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.i32 %1725, 0
  %1727 = add i32 %1726, 0
  %1728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1727, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1729 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1728, %dx.types.Handle %96, float %1278, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1730 = extractvalue %dx.types.ResRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.ResRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.ResRet.f32 %1729, 2
  %1733 = fmul fast float %1721, %1730
  %1734 = fmul fast float %1722, %1731
  %1735 = fmul fast float %1723, %1732
  br label %1736

; <label>:1736                                    ; preds = %1706, %1698
  %1737 = phi float [ %1733, %1706 ], [ 0.000000e+00, %1698 ]
  %1738 = phi float [ %1734, %1706 ], [ 0.000000e+00, %1698 ]
  %1739 = phi float [ %1735, %1706 ], [ 0.000000e+00, %1698 ]
  %1740 = fcmp fast ogt float %1737, 0.000000e+00
  %1741 = fcmp fast ogt float %1738, 0.000000e+00
  %1742 = fcmp fast ogt float %1739, 0.000000e+00
  %1743 = call float @dx.op.unary.f32(i32 23, float %1737)  ; Log(value)
  %1744 = call float @dx.op.unary.f32(i32 23, float %1738)  ; Log(value)
  %1745 = call float @dx.op.unary.f32(i32 23, float %1739)  ; Log(value)
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1655, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = lshr i32 %1747, 7
  %1749 = and i32 %1748, 32752
  %1750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1749)  ; LegacyF16ToF32(value)
  %1751 = fmul fast float %1743, 0xBFE62E4300000000
  %1752 = fmul fast float %1751, %1750
  %1753 = fmul fast float %1744, 0xBFE62E4300000000
  %1754 = fmul fast float %1753, %1750
  %1755 = fmul fast float %1745, 0xBFE62E4300000000
  %1756 = fmul fast float %1755, %1750
  %1757 = select i1 %1740, float %1752, float 1.270000e+02
  %1758 = select i1 %1741, float %1754, float 1.270000e+02
  %1759 = select i1 %1742, float %1756, float 1.270000e+02
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = and i32 %1761, 10240
  %1763 = icmp eq i32 %1762, 0
  br i1 %1763, label %1808, label %1764

; <label>:1764                                    ; preds = %1736
  %1765 = add i32 %43, 496
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = add i32 %1767, 0
  %1769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1768, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1770 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1769, %dx.types.Handle %96, float %1278, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 1
  %1772 = extractvalue %dx.types.ResRet.f32 %1770, 3
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = and i32 %1774, 1048576
  %1776 = icmp ne i32 %1775, 0
  %1777 = and i32 %1774, 8192
  %1778 = icmp eq i32 %1777, 0
  br i1 %1778, label %1794, label %1779

; <label>:1779                                    ; preds = %1764
  %1780 = extractvalue %dx.types.ResRet.f32 %1770, 2
  %1781 = select i1 %1776, float %1780, float %1771
  %1782 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1783 = select i1 %1776, float %1782, float %1771
  %1784 = add i32 %43, 112
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = lshr i32 %1786, 16
  %1788 = and i32 %1787, 255
  %1789 = uitofp i32 %1788 to float
  %1790 = fmul fast float %1789, 0x3F80101020000000
  %1791 = fmul fast float %1790, %1783
  %1792 = fmul fast float %1790, %1771
  %1793 = fmul fast float %1790, %1781
  br label %1794

; <label>:1794                                    ; preds = %1779, %1764
  %1795 = phi float [ %1791, %1779 ], [ 0.000000e+00, %1764 ]
  %1796 = phi float [ %1792, %1779 ], [ 0.000000e+00, %1764 ]
  %1797 = phi float [ %1793, %1779 ], [ 0.000000e+00, %1764 ]
  %1798 = and i32 %1774, 2048
  %1799 = icmp eq i32 %1798, 0
  br i1 %1799, label %1808, label %1800

; <label>:1800                                    ; preds = %1794
  %1801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1655, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.i32 %1801, 0
  %1803 = shl i32 %1802, 4
  %1804 = and i32 %1803, 32752
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = fmul fast float %1805, %1772
  %1807 = call float @dx.op.binary.f32(i32 35, float %1806, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1808

; <label>:1808                                    ; preds = %1800, %1794, %1736
  %1809 = phi float [ %1795, %1800 ], [ %1795, %1794 ], [ 0.000000e+00, %1736 ]
  %1810 = phi float [ %1796, %1800 ], [ %1796, %1794 ], [ 0.000000e+00, %1736 ]
  %1811 = phi float [ %1797, %1800 ], [ %1797, %1794 ], [ 0.000000e+00, %1736 ]
  %1812 = phi float [ %1807, %1800 ], [ 0x3F70101020000000, %1794 ], [ 0x3F70101020000000, %1736 ]
  %1813 = add i32 %43, 112
  %1814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.i32 %1814, 0
  %1816 = and i32 %1815, 255
  %1817 = uitofp i32 %1816 to float
  %1818 = lshr i32 %1815, 8
  %1819 = and i32 %1818, 255
  %1820 = uitofp i32 %1819 to float
  %1821 = call float @dx.op.dot3.f32(i32 55, float %1571, float %1572, float %1573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1822 = fmul fast float %1820, %1821
  %1823 = fadd fast float %1822, %1817
  %1824 = fmul fast float %1823, 0x3F70101020000000
  %1825 = call float @dx.op.unary.f32(i32 7, float %1824)  ; Saturate(value)
  br i1 %1170, label %1826, label %1861

; <label>:1826                                    ; preds = %1808
  %1827 = fmul fast float %1812, 2.000000e+00
  %1828 = fcmp fast olt float %1757, 1.270000e+02
  %1829 = fcmp fast olt float %1758, 1.270000e+02
  %1830 = fcmp fast olt float %1759, 1.270000e+02
  %1831 = fmul fast float %1757, 0xBFF7154760000000
  %1832 = fmul fast float %1831, %1827
  %1833 = fmul fast float %1758, 0xBFF7154760000000
  %1834 = fmul fast float %1833, %1827
  %1835 = fmul fast float %1759, 0xBFF7154760000000
  %1836 = fmul fast float %1835, %1827
  %1837 = call float @dx.op.unary.f32(i32 21, float %1832)  ; Exp(value)
  %1838 = call float @dx.op.unary.f32(i32 21, float %1834)  ; Exp(value)
  %1839 = call float @dx.op.unary.f32(i32 21, float %1836)  ; Exp(value)
  %1840 = call float @dx.op.unary.f32(i32 7, float %1837)  ; Saturate(value)
  %1841 = call float @dx.op.unary.f32(i32 7, float %1838)  ; Saturate(value)
  %1842 = call float @dx.op.unary.f32(i32 7, float %1839)  ; Saturate(value)
  %1843 = fadd fast float %1840, -1.000000e+00
  %1844 = select i1 %1828, float %1843, float -1.000000e+00
  %1845 = fadd fast float %1841, -1.000000e+00
  %1846 = select i1 %1829, float %1845, float -1.000000e+00
  %1847 = fadd fast float %1842, -1.000000e+00
  %1848 = select i1 %1830, float %1847, float -1.000000e+00
  %1849 = fmul fast float %1844, %1351
  %1850 = fmul fast float %1846, %1351
  %1851 = fmul fast float %1848, %1351
  %1852 = fadd fast float %1849, 1.000000e+00
  %1853 = fadd fast float %1850, 1.000000e+00
  %1854 = fadd fast float %1851, 1.000000e+00
  %1855 = fmul fast float %1852, %1151
  %1856 = fmul fast float %1853, %1152
  %1857 = fmul fast float %1854, %1153
  %1858 = fmul fast float %1852, %1154
  %1859 = fmul fast float %1853, %1155
  %1860 = fmul fast float %1854, %1156
  br label %1861

; <label>:1861                                    ; preds = %1826, %1808
  %1862 = phi float [ %1855, %1826 ], [ %1151, %1808 ]
  %1863 = phi float [ %1856, %1826 ], [ %1152, %1808 ]
  %1864 = phi float [ %1857, %1826 ], [ %1153, %1808 ]
  %1865 = phi float [ %1858, %1826 ], [ %1154, %1808 ]
  %1866 = phi float [ %1859, %1826 ], [ %1155, %1808 ]
  %1867 = phi float [ %1860, %1826 ], [ %1156, %1808 ]
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = and i32 %1869, 3
  %1871 = icmp eq i32 %1870, 3
  br i1 %1871, label %1950, label %1872

; <label>:1872                                    ; preds = %1861
  %1873 = and i32 %1869, 16
  %1874 = icmp ne i32 %1873, 0
  %1875 = select i1 %1874, float %1351, float 0.000000e+00
  %1876 = icmp eq i32 %1870, 0
  br i1 %1876, label %1877, label %1905

; <label>:1877                                    ; preds = %1872
  %1878 = and i32 %1869, 64
  %1879 = icmp ne i32 %1878, 0
  %1880 = select i1 %1879, float %1351, float 0.000000e+00
  %1881 = fsub fast float %1571, %1862
  %1882 = fsub fast float %1572, %1863
  %1883 = fsub fast float %1573, %1864
  %1884 = fmul fast float %1875, %1881
  %1885 = fmul fast float %1875, %1882
  %1886 = fmul fast float %1875, %1883
  %1887 = fadd fast float %1884, %1862
  %1888 = fadd fast float %1885, %1863
  %1889 = fadd fast float %1886, %1864
  %1890 = fsub fast float %1557, %1163
  %1891 = fmul fast float %1875, %1890
  %1892 = fadd fast float %1891, %1163
  %1893 = fsub fast float %1699, %1865
  %1894 = fsub fast float %1700, %1866
  %1895 = fsub fast float %1701, %1867
  %1896 = fmul fast float %1880, %1893
  %1897 = fmul fast float %1880, %1894
  %1898 = fmul fast float %1880, %1895
  %1899 = fadd fast float %1896, %1865
  %1900 = fadd fast float %1897, %1866
  %1901 = fadd fast float %1898, %1867
  %1902 = fsub fast float %1825, %1168
  %1903 = fmul fast float %1875, %1902
  %1904 = fadd fast float %1903, %1168
  br label %1950

; <label>:1905                                    ; preds = %1872
  %1906 = icmp eq i32 %1870, 1
  br i1 %1906, label %1907, label %1920

; <label>:1907                                    ; preds = %1905
  %1908 = fadd fast float %1571, -1.000000e+00
  %1909 = fadd fast float %1572, -1.000000e+00
  %1910 = fadd fast float %1573, -1.000000e+00
  %1911 = fmul fast float %1875, %1908
  %1912 = fmul fast float %1875, %1909
  %1913 = fmul fast float %1875, %1910
  %1914 = fadd fast float %1911, 1.000000e+00
  %1915 = fadd fast float %1912, 1.000000e+00
  %1916 = fadd fast float %1913, 1.000000e+00
  %1917 = fmul fast float %1914, %1862
  %1918 = fmul fast float %1915, %1863
  %1919 = fmul fast float %1916, %1864
  br label %1950

; <label>:1920                                    ; preds = %1905
  %1921 = icmp eq i32 %1870, 2
  br i1 %1921, label %1922, label %1950

; <label>:1922                                    ; preds = %1920
  %1923 = call float @dx.op.unary.f32(i32 24, float %1571)  ; Sqrt(value)
  %1924 = call float @dx.op.unary.f32(i32 24, float %1572)  ; Sqrt(value)
  %1925 = call float @dx.op.unary.f32(i32 24, float %1573)  ; Sqrt(value)
  %1926 = fadd fast float %1923, -5.000000e-01
  %1927 = fadd fast float %1924, -5.000000e-01
  %1928 = fadd fast float %1925, -5.000000e-01
  %1929 = fmul fast float %1926, %1875
  %1930 = fmul fast float %1927, %1875
  %1931 = fmul fast float %1928, %1875
  %1932 = fadd fast float %1929, 5.000000e-01
  %1933 = fadd fast float %1930, 5.000000e-01
  %1934 = fadd fast float %1931, 5.000000e-01
  %1935 = fmul fast float %1932, 2.000000e+00
  %1936 = fsub fast float 1.000000e+00, %1935
  %1937 = fmul fast float %1936, %1862
  %1938 = fadd fast float %1937, %1935
  %1939 = fmul fast float %1938, %1862
  %1940 = fmul fast float %1933, 2.000000e+00
  %1941 = fsub fast float 1.000000e+00, %1940
  %1942 = fmul fast float %1941, %1863
  %1943 = fadd fast float %1942, %1940
  %1944 = fmul fast float %1943, %1863
  %1945 = fmul fast float %1934, 2.000000e+00
  %1946 = fsub fast float 1.000000e+00, %1945
  %1947 = fmul fast float %1946, %1864
  %1948 = fadd fast float %1947, %1945
  %1949 = fmul fast float %1948, %1864
  br label %1950

; <label>:1950                                    ; preds = %1922, %1920, %1907, %1877, %1861
  %1951 = phi float [ %1862, %1861 ], [ %1939, %1922 ], [ %1862, %1920 ], [ %1917, %1907 ], [ %1887, %1877 ]
  %1952 = phi float [ %1863, %1861 ], [ %1944, %1922 ], [ %1863, %1920 ], [ %1918, %1907 ], [ %1888, %1877 ]
  %1953 = phi float [ %1864, %1861 ], [ %1949, %1922 ], [ %1864, %1920 ], [ %1919, %1907 ], [ %1889, %1877 ]
  %1954 = phi float [ %1865, %1861 ], [ %1865, %1922 ], [ %1865, %1920 ], [ %1865, %1907 ], [ %1899, %1877 ]
  %1955 = phi float [ %1866, %1861 ], [ %1866, %1922 ], [ %1866, %1920 ], [ %1866, %1907 ], [ %1900, %1877 ]
  %1956 = phi float [ %1867, %1861 ], [ %1867, %1922 ], [ %1867, %1920 ], [ %1867, %1907 ], [ %1901, %1877 ]
  %1957 = phi float [ %1163, %1861 ], [ %1163, %1922 ], [ %1163, %1920 ], [ %1163, %1907 ], [ %1892, %1877 ]
  %1958 = phi float [ %1168, %1861 ], [ %1168, %1922 ], [ %1168, %1920 ], [ %1168, %1907 ], [ %1904, %1877 ]
  %1959 = and i32 %1869, 12
  %1960 = icmp eq i32 %1959, 12
  br i1 %1960, label %2091, label %1961

; <label>:1961                                    ; preds = %1950
  %1962 = and i32 %1869, 2097184
  %1963 = icmp eq i32 %1962, 2097184
  %1964 = select i1 %1963, float %1351, float 0.000000e+00
  %1965 = and i32 %1869, 4194336
  %1966 = icmp eq i32 %1965, 4194336
  %1967 = select i1 %1966, float %1351, float 0.000000e+00
  %1968 = and i32 %1869, 8388640
  %1969 = icmp eq i32 %1968, 8388640
  %1970 = select i1 %1969, float %1351, float 0.000000e+00
  %1971 = and i32 %1869, 1024
  %1972 = icmp ne i32 %1971, 0
  %1973 = select i1 %1972, float %1351, float 0.000000e+00
  %1974 = and i32 %1869, 2048
  %1975 = icmp ne i32 %1974, 0
  %1976 = select i1 %1975, float %1351, float 0.000000e+00
  %1977 = and i32 %1869, 8192
  %1978 = icmp ne i32 %1977, 0
  %1979 = select i1 %1978, float %1351, float 0.000000e+00
  %1980 = icmp eq i32 %1959, 0
  br i1 %1980, label %1981, label %2015

; <label>:1981                                    ; preds = %1961
  %1982 = fsub fast float %1652, %1149
  %1983 = fsub fast float %1653, %1150
  %1984 = fmul fast float %1964, %1982
  %1985 = fmul fast float %1964, %1983
  %1986 = fadd fast float %1984, %1149
  %1987 = fadd fast float %1985, %1150
  %1988 = fsub fast float %1654, %1166
  %1989 = fmul fast float %1967, %1988
  %1990 = fadd fast float %1989, %1166
  %1991 = fsub fast float %1651, %1165
  %1992 = fmul fast float %1970, %1991
  %1993 = fadd fast float %1992, %1165
  %1994 = fsub fast float %1757, %1157
  %1995 = fsub fast float %1758, %1158
  %1996 = fsub fast float %1759, %1159
  %1997 = fmul fast float %1973, %1994
  %1998 = fmul fast float %1973, %1995
  %1999 = fmul fast float %1973, %1996
  %2000 = fadd fast float %1997, %1157
  %2001 = fadd fast float %1998, %1158
  %2002 = fadd fast float %1999, %1159
  %2003 = fsub fast float %1812, %1167
  %2004 = fmul fast float %1976, %2003
  %2005 = fadd fast float %2004, %1167
  %2006 = fsub fast float %1809, %1160
  %2007 = fsub fast float %1810, %1161
  %2008 = fsub fast float %1811, %1162
  %2009 = fmul fast float %1979, %2006
  %2010 = fmul fast float %1979, %2007
  %2011 = fmul fast float %1979, %2008
  %2012 = fadd fast float %2009, %1160
  %2013 = fadd fast float %2010, %1161
  %2014 = fadd fast float %2011, %1162
  br label %2091

; <label>:2015                                    ; preds = %1961
  %2016 = icmp eq i32 %1959, 4
  br i1 %2016, label %2017, label %2063

; <label>:2017                                    ; preds = %2015
  %2018 = fmul fast float %1964, %1652
  %2019 = fmul fast float %1964, %1653
  %2020 = fadd fast float %2018, %1149
  %2021 = fadd fast float %2019, %1150
  %2022 = call float @dx.op.binary.f32(i32 36, float %1166, float %1654)  ; FMin(a,b)
  %2023 = fsub fast float %2022, %1166
  %2024 = fmul fast float %2023, %1967
  %2025 = fadd fast float %2024, %1166
  %2026 = fadd fast float %1651, %1165
  %2027 = fmul fast float %2026, 0x3FF337FAE0000000
  %2028 = fmul fast float %1165, %1165
  %2029 = fmul fast float %1651, %1651
  %2030 = fadd fast float %2029, %2028
  %2031 = fmul fast float %2030, 0x3FE5152B00000000
  %2032 = fmul fast float %1165, 0xBFCC1F85E0000000
  %2033 = fmul fast float %2032, %1651
  %2034 = fadd fast float %2033, 0xBFE1363700000000
  %2035 = fadd fast float %2034, %2027
  %2036 = fsub fast float %2035, %2031
  %2037 = fmul fast float %2026, 0x3FBA6F0D00000000
  %2038 = fmul fast float %2030, 0x3FD0432880000000
  %2039 = fmul fast float %1165, 0xBFEF110800000000
  %2040 = fmul fast float %2039, %1651
  %2041 = fadd fast float %2040, 1.000000e+00
  %2042 = fsub fast float %2041, %2037
  %2043 = fadd fast float %2042, %2038
  %2044 = fdiv fast float %2036, %2043
  %2045 = call float @dx.op.unary.f32(i32 7, float %2044)  ; Saturate(value)
  %2046 = fsub fast float %2045, %1165
  %2047 = fmul fast float %2046, %1970
  %2048 = fadd fast float %2047, %1165
  %2049 = fmul fast float %1973, %1757
  %2050 = fmul fast float %1973, %1758
  %2051 = fmul fast float %1973, %1759
  %2052 = fadd fast float %2049, %1157
  %2053 = fadd fast float %2050, %1158
  %2054 = fadd fast float %2051, %1159
  %2055 = fmul fast float %1976, %1812
  %2056 = fadd fast float %2055, %1167
  %2057 = fmul fast float %1979, %1809
  %2058 = fmul fast float %1979, %1810
  %2059 = fmul fast float %1979, %1811
  %2060 = fadd fast float %2057, %1160
  %2061 = fadd fast float %2058, %1161
  %2062 = fadd fast float %2059, %1162
  br label %2091

; <label>:2063                                    ; preds = %2015
  %2064 = icmp eq i32 %1959, 8
  br i1 %2064, label %2065, label %2091

; <label>:2065                                    ; preds = %2063
  %2066 = fmul fast float %1964, %1652
  %2067 = fmul fast float %1964, %1653
  %2068 = fadd fast float %2066, %1149
  %2069 = fadd fast float %2067, %1150
  %2070 = call float @dx.op.binary.f32(i32 36, float %1166, float %1654)  ; FMin(a,b)
  %2071 = fsub fast float %2070, %1166
  %2072 = fmul fast float %2071, %1967
  %2073 = fadd fast float %2072, %1166
  %2074 = fsub fast float %1651, %1165
  %2075 = fmul fast float %1970, %2074
  %2076 = fadd fast float %2075, %1165
  %2077 = fmul fast float %1973, %1757
  %2078 = fmul fast float %1973, %1758
  %2079 = fmul fast float %1973, %1759
  %2080 = fadd fast float %2077, %1157
  %2081 = fadd fast float %2078, %1158
  %2082 = fadd fast float %2079, %1159
  %2083 = fmul fast float %1976, %1812
  %2084 = fadd fast float %2083, %1167
  %2085 = fmul fast float %1979, %1809
  %2086 = fmul fast float %1979, %1810
  %2087 = fmul fast float %1979, %1811
  %2088 = fadd fast float %2085, %1160
  %2089 = fadd fast float %2086, %1161
  %2090 = fadd fast float %2087, %1162
  br label %2091

; <label>:2091                                    ; preds = %2065, %2063, %2017, %1981, %1950, %1350, %1169, %1148
  %2092 = phi float [ %1149, %1950 ], [ %1149, %1350 ], [ %1149, %1148 ], [ %2068, %2065 ], [ %1149, %2063 ], [ %2020, %2017 ], [ %1986, %1981 ], [ %1149, %1169 ]
  %2093 = phi float [ %1150, %1950 ], [ %1150, %1350 ], [ %1150, %1148 ], [ %2069, %2065 ], [ %1150, %2063 ], [ %2021, %2017 ], [ %1987, %1981 ], [ %1150, %1169 ]
  %2094 = phi float [ %1951, %1950 ], [ %1151, %1350 ], [ %1151, %1148 ], [ %1951, %2065 ], [ %1951, %2063 ], [ %1951, %2017 ], [ %1951, %1981 ], [ %1151, %1169 ]
  %2095 = phi float [ %1952, %1950 ], [ %1152, %1350 ], [ %1152, %1148 ], [ %1952, %2065 ], [ %1952, %2063 ], [ %1952, %2017 ], [ %1952, %1981 ], [ %1152, %1169 ]
  %2096 = phi float [ %1953, %1950 ], [ %1153, %1350 ], [ %1153, %1148 ], [ %1953, %2065 ], [ %1953, %2063 ], [ %1953, %2017 ], [ %1953, %1981 ], [ %1153, %1169 ]
  %2097 = phi float [ %1954, %1950 ], [ %1154, %1350 ], [ %1154, %1148 ], [ %1954, %2065 ], [ %1954, %2063 ], [ %1954, %2017 ], [ %1954, %1981 ], [ %1154, %1169 ]
  %2098 = phi float [ %1955, %1950 ], [ %1155, %1350 ], [ %1155, %1148 ], [ %1955, %2065 ], [ %1955, %2063 ], [ %1955, %2017 ], [ %1955, %1981 ], [ %1155, %1169 ]
  %2099 = phi float [ %1956, %1950 ], [ %1156, %1350 ], [ %1156, %1148 ], [ %1956, %2065 ], [ %1956, %2063 ], [ %1956, %2017 ], [ %1956, %1981 ], [ %1156, %1169 ]
  %2100 = phi float [ %1157, %1950 ], [ %1157, %1350 ], [ %1157, %1148 ], [ %2080, %2065 ], [ %1157, %2063 ], [ %2052, %2017 ], [ %2000, %1981 ], [ %1157, %1169 ]
  %2101 = phi float [ %1158, %1950 ], [ %1158, %1350 ], [ %1158, %1148 ], [ %2081, %2065 ], [ %1158, %2063 ], [ %2053, %2017 ], [ %2001, %1981 ], [ %1158, %1169 ]
  %2102 = phi float [ %1159, %1950 ], [ %1159, %1350 ], [ %1159, %1148 ], [ %2082, %2065 ], [ %1159, %2063 ], [ %2054, %2017 ], [ %2002, %1981 ], [ %1159, %1169 ]
  %2103 = phi float [ %1160, %1950 ], [ %1160, %1350 ], [ %1160, %1148 ], [ %2088, %2065 ], [ %1160, %2063 ], [ %2060, %2017 ], [ %2012, %1981 ], [ %1160, %1169 ]
  %2104 = phi float [ %1161, %1950 ], [ %1161, %1350 ], [ %1161, %1148 ], [ %2089, %2065 ], [ %1161, %2063 ], [ %2061, %2017 ], [ %2013, %1981 ], [ %1161, %1169 ]
  %2105 = phi float [ %1162, %1950 ], [ %1162, %1350 ], [ %1162, %1148 ], [ %2090, %2065 ], [ %1162, %2063 ], [ %2062, %2017 ], [ %2014, %1981 ], [ %1162, %1169 ]
  %2106 = phi float [ %1957, %1950 ], [ %1163, %1350 ], [ %1163, %1148 ], [ %1957, %2065 ], [ %1957, %2063 ], [ %1957, %2017 ], [ %1957, %1981 ], [ %1163, %1169 ]
  %2107 = phi float [ %1165, %1950 ], [ %1165, %1350 ], [ %1165, %1148 ], [ %2076, %2065 ], [ %1165, %2063 ], [ %2048, %2017 ], [ %1993, %1981 ], [ %1165, %1169 ]
  %2108 = phi float [ %1166, %1950 ], [ %1166, %1350 ], [ %1166, %1148 ], [ %2073, %2065 ], [ %1166, %2063 ], [ %2025, %2017 ], [ %1990, %1981 ], [ %1166, %1169 ]
  %2109 = phi float [ %1167, %1950 ], [ %1167, %1350 ], [ %1167, %1148 ], [ %2084, %2065 ], [ %1167, %2063 ], [ %2056, %2017 ], [ %2005, %1981 ], [ %1167, %1169 ]
  %2110 = phi float [ %1958, %1950 ], [ %1168, %1350 ], [ %1168, %1148 ], [ %1958, %2065 ], [ %1958, %2063 ], [ %1958, %2017 ], [ %1958, %1981 ], [ %1168, %1169 ]
  br i1 %438, label %3033, label %2111

; <label>:2111                                    ; preds = %2091
  %2112 = icmp ult i32 %494, 3
  %2113 = add i32 %43, 56
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = add i32 %43, 60
  %2117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.i32 %2117, 0
  %2119 = or i32 %2118, %2115
  %2120 = icmp eq i32 %2119, 0
  br i1 %2120, label %3033, label %2121

; <label>:2121                                    ; preds = %2111
  %2122 = and i32 %2115, 262144
  %2123 = icmp ne i32 %2122, 0
  %2124 = select i1 %2123, float %49, float 1.000000e+00
  %2125 = select i1 %2123, float %50, float 0.000000e+00
  %2126 = select i1 %2123, float %51, float 0.000000e+00
  %2127 = select i1 %2123, float %52, float 1.000000e+00
  %2128 = select i1 %2123, float %53, float %81
  %2129 = select i1 %2123, float %54, float %82
  %2130 = add i32 %43, 316
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = lshr i32 %2132, 16
  %2134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2133)  ; LegacyF16ToF32(value)
  %2135 = fmul fast float %2134, 0x3F50624DE0000000
  %2136 = add i32 %43, 120
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = lshr i32 %2138, 16
  %2140 = and i32 %2139, 255
  %2141 = lshr i32 %2138, 24
  %2142 = add i32 %43, 324
  %2143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2142, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.i32 %2143, 0
  %2145 = and i32 %2144, 65535
  %2146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2145)  ; LegacyF16ToF32(value)
  %2147 = lshr i32 %2144, 16
  %2148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2147)  ; LegacyF16ToF32(value)
  %2149 = add i32 %43, 64
  %2150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2149, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.i32 %2150, 0
  %2152 = lshr i32 %2151, 22
  %2153 = shl nuw nsw i32 %2152, 5
  %2154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2153)  ; LegacyF16ToF32(value)
  %2155 = shl i32 %2151, 4
  %2156 = and i32 %2155, 32752
  %2157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2156)  ; LegacyF16ToF32(value)
  %2158 = lshr i32 %2151, 7
  %2159 = and i32 %2158, 32752
  %2160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2159)  ; LegacyF16ToF32(value)
  %2161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2162 = extractvalue %dx.types.CBufRet.f32 %2161, 3
  %2163 = fmul fast float %2162, 1.000000e+03
  %2164 = fmul fast float %388, %2163
  %2165 = call float @dx.op.unary.f32(i32 22, float %2164)  ; Frc(value)
  %2166 = fadd fast float %2165, %378
  %2167 = fmul fast float %389, %2163
  %2168 = call float @dx.op.unary.f32(i32 22, float %2167)  ; Frc(value)
  %2169 = fadd fast float %2168, %380
  %2170 = fmul fast float %2135, %2163
  %2171 = call float @dx.op.unary.f32(i32 22, float %2170)  ; Frc(value)
  %2172 = fmul fast float %2171, 0x401921FB60000000
  %2173 = fadd fast float %2172, %2154
  %2174 = call float @dx.op.unary.f32(i32 13, float %2173)  ; Sin(value)
  %2175 = call float @dx.op.unary.f32(i32 12, float %2173)  ; Cos(value)
  %2176 = fsub fast float -0.000000e+00, %2174
  %2177 = fadd fast float %2128, -5.000000e-01
  %2178 = fadd fast float %2129, -5.000000e-01
  %2179 = fmul fast float %2146, %2177
  %2180 = fmul fast float %2148, %2178
  %2181 = fadd fast float %2179, 5.000000e-01
  %2182 = fadd fast float %2180, 5.000000e-01
  %2183 = fmul fast float %2157, %2181
  %2184 = fmul fast float %2160, %2182
  %2185 = fmul fast float %2175, %2183
  %2186 = call float @dx.op.tertiary.f32(i32 46, float %2176, float %2184, float %2185)  ; FMad(a,b,c)
  %2187 = fmul fast float %2174, %2183
  %2188 = call float @dx.op.tertiary.f32(i32 46, float %2175, float %2184, float %2187)  ; FMad(a,b,c)
  %2189 = fadd fast float %2166, %2186
  %2190 = fadd fast float %2169, %2188
  %2191 = icmp ugt i32 %2140, 1
  %2192 = icmp ugt i32 %2138, 33554431
  %2193 = or i1 %2192, %2191
  br i1 %2193, label %2194, label %2219

; <label>:2194                                    ; preds = %2121
  %2195 = add i32 %43, 260
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = lshr i32 %2197, 16
  %2199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2198)  ; LegacyF16ToF32(value)
  %2200 = fmul fast float %2162, %2199
  %2201 = call float @dx.op.unary.f32(i32 22, float %2200)  ; Frc(value)
  %2202 = mul nuw nsw i32 %2140, %2141
  %2203 = uitofp i32 %2202 to float
  %2204 = fmul fast float %2201, %2203
  %2205 = call float @dx.op.unary.f32(i32 27, float %2204)  ; Round_ni(value)
  %2206 = fptoui float %2205 to i32
  %2207 = urem i32 %2206, %2140
  %2208 = udiv i32 %2206, %2141
  %2209 = call float @dx.op.unary.f32(i32 22, float %2189)  ; Frc(value)
  %2210 = call float @dx.op.unary.f32(i32 22, float %2190)  ; Frc(value)
  %2211 = uitofp i32 %2207 to float
  %2212 = uitofp i32 %2208 to float
  %2213 = fadd fast float %2209, %2211
  %2214 = fadd fast float %2210, %2212
  %2215 = uitofp i32 %2140 to float
  %2216 = uitofp i32 %2141 to float
  %2217 = fdiv fast float %2213, %2215
  %2218 = fdiv fast float %2214, %2216
  br label %2219

; <label>:2219                                    ; preds = %2194, %2121
  %2220 = phi float [ %2217, %2194 ], [ %2189, %2121 ]
  %2221 = phi float [ %2218, %2194 ], [ %2190, %2121 ]
  %2222 = and i32 %2115, 256
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2270, label %2224

; <label>:2224                                    ; preds = %2219
  %2225 = add i32 %43, 448
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = add i32 %2227, 0
  %2229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2228, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2230 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2229, %dx.types.Handle %96, float %2220, float %2221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2231 = extractvalue %dx.types.ResRet.f32 %2230, 0
  %2232 = add i32 %43, 132
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = shl i32 %2234, 4
  %2236 = and i32 %2235, 32752
  %2237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2236)  ; LegacyF16ToF32(value)
  %2238 = lshr i32 %2234, 7
  %2239 = and i32 %2238, 32752
  %2240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2239)  ; LegacyF16ToF32(value)
  %2241 = fsub fast float 1.000000e+00, %490
  %2242 = call float @dx.op.binary.f32(i32 35, float %2241, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2243 = bitcast float %490 to i32
  %2244 = sitofp i32 %2243 to float
  %2245 = fadd fast float %2244, 0xC1CFBF8940000000
  %2246 = fmul fast float %2240, %2245
  %2247 = fadd fast float %2246, 0x41CFBF8940000000
  %2248 = fptosi float %2247 to i32
  %2249 = bitcast i32 %2248 to float
  %2250 = bitcast float %2242 to i32
  %2251 = sitofp i32 %2250 to float
  %2252 = fadd fast float %2251, 0xC1CFBF8940000000
  %2253 = fmul fast float %2252, %2240
  %2254 = fadd fast float %2253, 0x41CFBF8940000000
  %2255 = fptosi float %2254 to i32
  %2256 = bitcast i32 %2255 to float
  %2257 = fmul fast float %2249, %2237
  %2258 = fmul fast float %2256, %2237
  %2259 = fsub fast float %2242, %2257
  %2260 = fadd fast float %2258, %2242
  %2261 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2262 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  %2263 = fsub fast float %2231, %2261
  %2264 = fsub fast float %2262, %2261
  %2265 = bitcast float %2264 to i32
  %2266 = sub nsw i32 2129859010, %2265
  %2267 = bitcast i32 %2266 to float
  %2268 = fmul fast float %2267, %2263
  %2269 = call float @dx.op.unary.f32(i32 7, float %2268)  ; Saturate(value)
  br label %2270

; <label>:2270                                    ; preds = %2224, %2219
  %2271 = phi float [ %2269, %2224 ], [ %490, %2219 ]
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 128
  %2275 = icmp eq i32 %2274, 0
  br i1 %2275, label %2292, label %2276

; <label>:2276                                    ; preds = %2270
  %2277 = add i32 %43, 432
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2277, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = add i32 %2279, 0
  %2281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2280, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2282 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2281, %dx.types.Handle %96, float %2220, float %2221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2283 = extractvalue %dx.types.ResRet.f32 %2282, 0
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = and i32 %2285, 524288
  %2287 = icmp ne i32 %2286, 0
  %2288 = fcmp fast ogt float %2283, 0x3FE0101020000000
  %2289 = select i1 %2288, float 1.000000e+00, float 0.000000e+00
  %2290 = select i1 %2287, float %2289, float %2283
  %2291 = fmul fast float %2290, %2271
  br label %2292

; <label>:2292                                    ; preds = %2276, %2270
  %2293 = phi float [ %2291, %2276 ], [ %2271, %2270 ]
  %2294 = fcmp fast ult float %2293, 0x3F70101020000000
  br i1 %2294, label %3033, label %2295

; <label>:2295                                    ; preds = %2292
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = and i32 %2297, 16
  %2299 = icmp eq i32 %2298, 0
  br i1 %2299, label %2498, label %2300

; <label>:2300                                    ; preds = %2295
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = add i32 %43, 384
  %2304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.i32 %2304, 0
  %2306 = add i32 %2305, 0
  %2307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2308 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2307, %dx.types.Handle %95, float %2220, float %2221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2309 = extractvalue %dx.types.ResRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.ResRet.f32 %2308, 1
  %2311 = extractvalue %dx.types.ResRet.f32 %2308, 2
  %2312 = extractvalue %dx.types.ResRet.f32 %2308, 3
  %2313 = and i32 %2302, 255
  %2314 = uitofp i32 %2313 to float
  %2315 = lshr i32 %2302, 8
  %2316 = and i32 %2315, 255
  %2317 = uitofp i32 %2316 to float
  %2318 = fmul fast float %2312, %2314
  %2319 = fadd fast float %2318, %2317
  %2320 = fmul fast float %2319, 0x3F70101000000000
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = and i32 %2322, 512
  %2324 = icmp eq i32 %2323, 0
  br i1 %2324, label %2333, label %2325

; <label>:2325                                    ; preds = %2300
  %2326 = add i32 %43, 468
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = add i32 %2328, 0
  %2330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2329, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2331 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2330, %dx.types.Handle %96, float %2220, float %2221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2332 = extractvalue %dx.types.ResRet.f32 %2331, 0
  br label %2333

; <label>:2333                                    ; preds = %2325, %2300
  %2334 = phi float [ %2332, %2325 ], [ 1.000000e+00, %2300 ]
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = and i32 %2336, 33554432
  %2338 = icmp eq i32 %2337, 0
  br i1 %2338, label %2445, label %2339

; <label>:2339                                    ; preds = %2333
  %2340 = add i32 %43, 256
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = and i32 %2342, 65535
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = lshr i32 %2342, 16
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = add i32 %43, 260
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2347, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 65535
  %2351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2350)  ; LegacyF16ToF32(value)
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = lshr i32 %2353, 24
  %2355 = uitofp i32 %2354 to float
  %2356 = fmul fast float %2355, 0x3F70101020000000
  %2357 = and i32 %2353, 255
  %2358 = uitofp i32 %2357 to float
  %2359 = fmul fast float %2358, 0x3F70101020000000
  %2360 = lshr i32 %2353, 8
  %2361 = and i32 %2360, 255
  %2362 = uitofp i32 %2361 to float
  %2363 = fmul fast float %2362, 0x3F70101020000000
  %2364 = lshr i32 %2353, 16
  %2365 = and i32 %2364, 255
  %2366 = uitofp i32 %2365 to float
  %2367 = fmul fast float %2366, 0x3F70101020000000
  %2368 = add i32 %43, 252
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = lshr i32 %2370, 24
  %2372 = uitofp i32 %2371 to float
  %2373 = fmul fast float %2372, 0x3F70101020000000
  %2374 = and i32 %2370, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = fmul fast float %2375, 0x3F70101020000000
  %2377 = lshr i32 %2370, 8
  %2378 = and i32 %2377, 255
  %2379 = uitofp i32 %2378 to float
  %2380 = fmul fast float %2379, 0x3F70101020000000
  %2381 = lshr i32 %2370, 16
  %2382 = and i32 %2381, 255
  %2383 = uitofp i32 %2382 to float
  %2384 = fmul fast float %2383, 0x3F70101020000000
  %2385 = bitcast float %2309 to i32
  %2386 = ashr i32 %2385, 1
  %2387 = sub nsw i32 1597463174, %2386
  %2388 = bitcast i32 %2387 to float
  %2389 = fmul fast float %2309, 5.000000e-01
  %2390 = fmul fast float %2388, %2388
  %2391 = fmul fast float %2390, %2389
  %2392 = fsub fast float 1.500000e+00, %2391
  %2393 = fmul fast float %2388, %2309
  %2394 = fmul fast float %2393, %2392
  %2395 = bitcast float %2310 to i32
  %2396 = ashr i32 %2395, 1
  %2397 = sub nsw i32 1597463174, %2396
  %2398 = bitcast i32 %2397 to float
  %2399 = fmul fast float %2310, 5.000000e-01
  %2400 = fmul fast float %2398, %2398
  %2401 = fmul fast float %2400, %2399
  %2402 = fsub fast float 1.500000e+00, %2401
  %2403 = fmul fast float %2398, %2310
  %2404 = fmul fast float %2403, %2402
  %2405 = bitcast float %2311 to i32
  %2406 = ashr i32 %2405, 1
  %2407 = sub nsw i32 1597463174, %2406
  %2408 = bitcast i32 %2407 to float
  %2409 = fmul fast float %2311, 5.000000e-01
  %2410 = fmul fast float %2408, %2408
  %2411 = fmul fast float %2410, %2409
  %2412 = fsub fast float 1.500000e+00, %2411
  %2413 = fmul fast float %2408, %2311
  %2414 = fmul fast float %2413, %2412
  %2415 = fsub fast float %2394, %2376
  %2416 = fsub fast float %2404, %2380
  %2417 = fsub fast float %2414, %2384
  %2418 = fmul fast float %2415, %2344
  %2419 = fmul fast float %2416, %2346
  %2420 = fmul fast float %2417, %2351
  %2421 = fadd fast float %2418, %2359
  %2422 = fadd fast float %2419, %2363
  %2423 = fadd fast float %2420, %2367
  %2424 = call float @dx.op.unary.f32(i32 7, float %2421)  ; Saturate(value)
  %2425 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  %2426 = call float @dx.op.unary.f32(i32 7, float %2423)  ; Saturate(value)
  %2427 = fmul fast float %2424, %2424
  %2428 = fmul fast float %2425, %2425
  %2429 = fmul fast float %2426, %2426
  %2430 = fsub fast float %2427, %2309
  %2431 = fsub fast float %2428, %2310
  %2432 = fsub fast float %2429, %2311
  %2433 = fmul fast float %2430, %2334
  %2434 = fmul fast float %2431, %2334
  %2435 = fmul fast float %2432, %2334
  %2436 = fadd fast float %2433, %2309
  %2437 = fadd fast float %2434, %2310
  %2438 = fadd fast float %2435, %2311
  %2439 = fadd fast float %2356, %2320
  %2440 = fsub fast float %2439, %2373
  %2441 = call float @dx.op.unary.f32(i32 7, float %2440)  ; Saturate(value)
  %2442 = fsub fast float %2441, %2320
  %2443 = fmul fast float %2442, %2334
  %2444 = fadd fast float %2443, %2320
  br label %2498

; <label>:2445                                    ; preds = %2333
  %2446 = and i32 %2336, 134217728
  %2447 = icmp eq i32 %2446, 0
  br i1 %2447, label %2482, label %2448

; <label>:2448                                    ; preds = %2445
  %2449 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %2450 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %2451 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %2452 = fadd fast float %2449, -5.000000e-01
  %2453 = fadd fast float %2450, -5.000000e-01
  %2454 = fadd fast float %2451, -5.000000e-01
  %2455 = fmul fast float %2452, %2334
  %2456 = fmul fast float %2453, %2334
  %2457 = fmul fast float %2454, %2334
  %2458 = fadd fast float %2455, 5.000000e-01
  %2459 = fadd fast float %2456, 5.000000e-01
  %2460 = fadd fast float %2457, 5.000000e-01
  %2461 = call float @dx.op.unary.f32(i32 24, float %2309)  ; Sqrt(value)
  %2462 = call float @dx.op.unary.f32(i32 24, float %2310)  ; Sqrt(value)
  %2463 = call float @dx.op.unary.f32(i32 24, float %2311)  ; Sqrt(value)
  %2464 = fmul fast float %2458, 2.000000e+00
  %2465 = fsub fast float 1.000000e+00, %2464
  %2466 = fmul fast float %2465, %2461
  %2467 = fadd fast float %2466, %2464
  %2468 = fmul fast float %2467, %2461
  %2469 = fmul fast float %2459, 2.000000e+00
  %2470 = fsub fast float 1.000000e+00, %2469
  %2471 = fmul fast float %2470, %2462
  %2472 = fadd fast float %2471, %2469
  %2473 = fmul fast float %2472, %2462
  %2474 = fmul fast float %2460, 2.000000e+00
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = fmul fast float %2475, %2463
  %2477 = fadd fast float %2476, %2474
  %2478 = fmul fast float %2477, %2463
  %2479 = fmul fast float %2468, %2468
  %2480 = fmul fast float %2473, %2473
  %2481 = fmul fast float %2478, %2478
  br label %2498

; <label>:2482                                    ; preds = %2445
  %2483 = fmul fast float %365, %365
  %2484 = fmul fast float %369, %369
  %2485 = fmul fast float %373, %373
  %2486 = fadd fast float %2483, -1.000000e+00
  %2487 = fadd fast float %2484, -1.000000e+00
  %2488 = fadd fast float %2485, -1.000000e+00
  %2489 = fmul fast float %2334, %2486
  %2490 = fmul fast float %2334, %2487
  %2491 = fmul fast float %2334, %2488
  %2492 = fadd fast float %2489, 1.000000e+00
  %2493 = fadd fast float %2490, 1.000000e+00
  %2494 = fadd fast float %2491, 1.000000e+00
  %2495 = fmul fast float %2492, %2309
  %2496 = fmul fast float %2493, %2310
  %2497 = fmul fast float %2494, %2311
  br label %2498

; <label>:2498                                    ; preds = %2482, %2448, %2339, %2295
  %2499 = phi float [ %2444, %2339 ], [ %2320, %2448 ], [ %2320, %2482 ], [ 0x3FA23C0BE0000000, %2295 ]
  %2500 = phi float [ %2436, %2339 ], [ %2479, %2448 ], [ %2495, %2482 ], [ 1.000000e+00, %2295 ]
  %2501 = phi float [ %2437, %2339 ], [ %2480, %2448 ], [ %2496, %2482 ], [ 1.000000e+00, %2295 ]
  %2502 = phi float [ %2438, %2339 ], [ %2481, %2448 ], [ %2497, %2482 ], [ 1.000000e+00, %2295 ]
  %2503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2504 = extractvalue %dx.types.CBufRet.i32 %2503, 1
  %2505 = and i32 %2504, 1
  %2506 = icmp ne i32 %2505, 0
  %2507 = add i32 %43, 356
  %2508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2507, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.i32 %2508, 0
  %2510 = and i32 %2509, 32
  %2511 = icmp ne i32 %2510, 0
  %2512 = and i1 %2506, %2511
  %2513 = select i1 %2512, float 1.000000e+00, float %2500
  %2514 = select i1 %2512, float 0x3FD3333340000000, float %2501
  %2515 = select i1 %2512, float 0x3FD3333340000000, float %2502
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = and i32 %2517, 32
  %2519 = icmp eq i32 %2518, 0
  br i1 %2519, label %2592, label %2520

; <label>:2520                                    ; preds = %2498
  %2521 = add i32 %43, 124
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = add i32 %43, 400
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2524, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = add i32 %2526, 0
  %2528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2528, %dx.types.Handle %95, float %2220, float %2221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2530 = extractvalue %dx.types.ResRet.f32 %2529, 0
  %2531 = extractvalue %dx.types.ResRet.f32 %2529, 1
  %2532 = extractvalue %dx.types.ResRet.f32 %2529, 2
  %2533 = extractvalue %dx.types.ResRet.f32 %2529, 3
  %2534 = and i32 %2523, 255
  %2535 = uitofp i32 %2534 to float
  %2536 = lshr i32 %2523, 8
  %2537 = and i32 %2536, 255
  %2538 = uitofp i32 %2537 to float
  %2539 = lshr i32 %2523, 16
  %2540 = and i32 %2539, 255
  %2541 = uitofp i32 %2540 to float
  %2542 = fmul fast float %2541, 0x3F70101000000000
  %2543 = fmul fast float %2530, %2535
  %2544 = fadd fast float %2543, %2538
  %2545 = fmul fast float %2544, 0x3F70101000000000
  %2546 = fadd fast float %2531, -5.000000e-01
  %2547 = fadd fast float %2533, -5.000000e-01
  %2548 = fmul fast float %2546, %2542
  %2549 = fmul fast float %2547, %2542
  %2550 = fadd fast float %2548, 5.000000e-01
  %2551 = fadd fast float %2549, 5.000000e-01
  %2552 = fmul fast float %2550, 2.000000e+00
  %2553 = fadd fast float %2552, -1.000000e+00
  %2554 = fmul fast float %2551, 2.000000e+00
  %2555 = fadd fast float %2554, -1.000000e+00
  %2556 = fadd fast float %2553, %2555
  %2557 = fmul fast float %2556, 5.000000e-01
  %2558 = fsub fast float %2553, %2555
  %2559 = fmul fast float %2558, 5.000000e-01
  %2560 = call float @dx.op.unary.f32(i32 6, float %2557)  ; FAbs(value)
  %2561 = fsub fast float 1.000000e+00, %2560
  %2562 = call float @dx.op.unary.f32(i32 6, float %2559)  ; FAbs(value)
  %2563 = fsub fast float %2561, %2562
  %2564 = call float @dx.op.dot3.f32(i32 55, float %2557, float %2559, float %2563, float %2557, float %2559, float %2563)  ; Dot3(ax,ay,az,bx,by,bz)
  %2565 = call float @dx.op.unary.f32(i32 25, float %2564)  ; Rsqrt(value)
  %2566 = fmul fast float %2557, %2565
  %2567 = fmul fast float %2559, %2565
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = and i32 %2569, 67108864
  %2571 = icmp eq i32 %2570, 0
  br i1 %2571, label %2588, label %2572

; <label>:2572                                    ; preds = %2520
  %2573 = add i32 %43, 312
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2573, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 65535
  %2577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2576)  ; LegacyF16ToF32(value)
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = and i32 %2579, 65535
  %2581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2580)  ; LegacyF16ToF32(value)
  %2582 = lshr i32 %2575, 16
  %2583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2582)  ; LegacyF16ToF32(value)
  %2584 = fsub fast float %2545, %2583
  %2585 = fmul fast float %2584, %2577
  %2586 = fadd fast float %2585, %2581
  %2587 = call float @dx.op.unary.f32(i32 7, float %2586)  ; Saturate(value)
  br label %2588

; <label>:2588                                    ; preds = %2572, %2520
  %2589 = phi float [ %2587, %2572 ], [ %2545, %2520 ]
  %2590 = call float @dx.op.dot2.f32(i32 54, float %2566, float %2567, float %2124, float %2125)  ; Dot2(ax,ay,bx,by)
  %2591 = call float @dx.op.dot2.f32(i32 54, float %2566, float %2567, float %2126, float %2127)  ; Dot2(ax,ay,bx,by)
  br label %2592

; <label>:2592                                    ; preds = %2588, %2498
  %2593 = phi float [ %2589, %2588 ], [ 0x3FD6666660000000, %2498 ]
  %2594 = phi float [ %2590, %2588 ], [ 0.000000e+00, %2498 ]
  %2595 = phi float [ %2591, %2588 ], [ 0.000000e+00, %2498 ]
  %2596 = phi float [ %2532, %2588 ], [ 1.000000e+00, %2498 ]
  %2597 = add i32 %43, 192
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = lshr i32 %2599, 22
  %2601 = shl nuw nsw i32 %2600, 5
  %2602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2601)  ; LegacyF16ToF32(value)
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = and i32 %2604, 64
  %2606 = icmp eq i32 %2605, 0
  br i1 %2606, label %2640, label %2607

; <label>:2607                                    ; preds = %2592
  %2608 = add i32 %43, 416
  %2609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2608, i32 undef)  ; BufferLoad(srv,index,wot)
  %2610 = extractvalue %dx.types.ResRet.i32 %2609, 0
  %2611 = add i32 %2610, 0
  %2612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2611, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = and i32 %2614, 131072
  %2616 = icmp eq i32 %2615, 0
  %2617 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2612, %dx.types.Handle %95, float %2220, float %2221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2618 = extractvalue %dx.types.ResRet.f32 %2617, 0
  %2619 = extractvalue %dx.types.ResRet.f32 %2617, 1
  %2620 = extractvalue %dx.types.ResRet.f32 %2617, 2
  %2621 = fmul fast float %2618, %353
  %2622 = fmul fast float %2619, %356
  %2623 = fmul fast float %2620, %359
  br i1 %2616, label %2630, label %2624

; <label>:2624                                    ; preds = %2607
  %2625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.f32 %2625, 0
  %2627 = fmul fast float %2626, %2621
  %2628 = fmul fast float %2626, %2622
  %2629 = fmul fast float %2626, %2623
  br label %2630

; <label>:2630                                    ; preds = %2624, %2607
  %2631 = phi float [ %2627, %2624 ], [ %2621, %2607 ]
  %2632 = phi float [ %2628, %2624 ], [ %2622, %2607 ]
  %2633 = phi float [ %2629, %2624 ], [ %2623, %2607 ]
  %2634 = fmul fast float %2631, %2602
  %2635 = select i1 %252, float %2634, float %2631
  %2636 = call float @dx.op.dot3.f32(i32 55, float %2635, float %2632, float %2633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2637 = select i1 %252, float 0.000000e+00, float %2631
  %2638 = select i1 %252, float %2636, float %2632
  %2639 = select i1 %252, float 0.000000e+00, float %2633
  br label %2640

; <label>:2640                                    ; preds = %2630, %2592
  %2641 = phi float [ %2637, %2630 ], [ 0.000000e+00, %2592 ]
  %2642 = phi float [ %2638, %2630 ], [ 0.000000e+00, %2592 ]
  %2643 = phi float [ %2639, %2630 ], [ 0.000000e+00, %2592 ]
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = and i32 %2645, 1024
  %2647 = icmp eq i32 %2646, 0
  br i1 %2647, label %2678, label %2648

; <label>:2648                                    ; preds = %2640
  %2649 = add i32 %43, 184
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2649, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 255
  %2653 = uitofp i32 %2652 to float
  %2654 = fmul fast float %2653, 0x3F70101020000000
  %2655 = lshr i32 %2651, 8
  %2656 = and i32 %2655, 255
  %2657 = uitofp i32 %2656 to float
  %2658 = fmul fast float %2657, 0x3F70101020000000
  %2659 = lshr i32 %2651, 16
  %2660 = and i32 %2659, 255
  %2661 = uitofp i32 %2660 to float
  %2662 = fmul fast float %2661, 0x3F70101020000000
  %2663 = fmul fast float %2654, %2654
  %2664 = fmul fast float %2658, %2658
  %2665 = fmul fast float %2662, %2662
  %2666 = add i32 %43, 484
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = add i32 %2668, 0
  %2670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2671 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2670, %dx.types.Handle %96, float %2220, float %2221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2672 = extractvalue %dx.types.ResRet.f32 %2671, 0
  %2673 = extractvalue %dx.types.ResRet.f32 %2671, 1
  %2674 = extractvalue %dx.types.ResRet.f32 %2671, 2
  %2675 = fmul fast float %2663, %2672
  %2676 = fmul fast float %2664, %2673
  %2677 = fmul fast float %2665, %2674
  br label %2678

; <label>:2678                                    ; preds = %2648, %2640
  %2679 = phi float [ %2675, %2648 ], [ 0.000000e+00, %2640 ]
  %2680 = phi float [ %2676, %2648 ], [ 0.000000e+00, %2640 ]
  %2681 = phi float [ %2677, %2648 ], [ 0.000000e+00, %2640 ]
  %2682 = fcmp fast ogt float %2679, 0.000000e+00
  %2683 = fcmp fast ogt float %2680, 0.000000e+00
  %2684 = fcmp fast ogt float %2681, 0.000000e+00
  %2685 = call float @dx.op.unary.f32(i32 23, float %2679)  ; Log(value)
  %2686 = call float @dx.op.unary.f32(i32 23, float %2680)  ; Log(value)
  %2687 = call float @dx.op.unary.f32(i32 23, float %2681)  ; Log(value)
  %2688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.i32 %2688, 0
  %2690 = lshr i32 %2689, 7
  %2691 = and i32 %2690, 32752
  %2692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2691)  ; LegacyF16ToF32(value)
  %2693 = fmul fast float %2685, 0xBFE62E4300000000
  %2694 = fmul fast float %2693, %2692
  %2695 = fmul fast float %2686, 0xBFE62E4300000000
  %2696 = fmul fast float %2695, %2692
  %2697 = fmul fast float %2687, 0xBFE62E4300000000
  %2698 = fmul fast float %2697, %2692
  %2699 = select i1 %2682, float %2694, float 1.270000e+02
  %2700 = select i1 %2683, float %2696, float 1.270000e+02
  %2701 = select i1 %2684, float %2698, float 1.270000e+02
  %2702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2703 = extractvalue %dx.types.ResRet.i32 %2702, 0
  %2704 = and i32 %2703, 10240
  %2705 = icmp eq i32 %2704, 0
  br i1 %2705, label %2750, label %2706

; <label>:2706                                    ; preds = %2678
  %2707 = add i32 %43, 500
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2707, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = add i32 %2709, 0
  %2711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2712 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2711, %dx.types.Handle %96, float %2220, float %2221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2713 = extractvalue %dx.types.ResRet.f32 %2712, 1
  %2714 = extractvalue %dx.types.ResRet.f32 %2712, 3
  %2715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.i32 %2715, 0
  %2717 = and i32 %2716, 1048576
  %2718 = icmp ne i32 %2717, 0
  %2719 = and i32 %2716, 8192
  %2720 = icmp eq i32 %2719, 0
  br i1 %2720, label %2736, label %2721

; <label>:2721                                    ; preds = %2706
  %2722 = extractvalue %dx.types.ResRet.f32 %2712, 2
  %2723 = select i1 %2718, float %2722, float %2713
  %2724 = extractvalue %dx.types.ResRet.f32 %2712, 0
  %2725 = select i1 %2718, float %2724, float %2713
  %2726 = add i32 %43, 128
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = lshr i32 %2728, 16
  %2730 = and i32 %2729, 255
  %2731 = uitofp i32 %2730 to float
  %2732 = fmul fast float %2731, 0x3F80101020000000
  %2733 = fmul fast float %2732, %2725
  %2734 = fmul fast float %2732, %2713
  %2735 = fmul fast float %2732, %2723
  br label %2736

; <label>:2736                                    ; preds = %2721, %2706
  %2737 = phi float [ %2733, %2721 ], [ 0.000000e+00, %2706 ]
  %2738 = phi float [ %2734, %2721 ], [ 0.000000e+00, %2706 ]
  %2739 = phi float [ %2735, %2721 ], [ 0.000000e+00, %2706 ]
  %2740 = and i32 %2716, 2048
  %2741 = icmp eq i32 %2740, 0
  br i1 %2741, label %2750, label %2742

; <label>:2742                                    ; preds = %2736
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = shl i32 %2744, 4
  %2746 = and i32 %2745, 32752
  %2747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2746)  ; LegacyF16ToF32(value)
  %2748 = fmul fast float %2747, %2714
  %2749 = call float @dx.op.binary.f32(i32 35, float %2748, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2750

; <label>:2750                                    ; preds = %2742, %2736, %2678
  %2751 = phi float [ %2737, %2742 ], [ %2737, %2736 ], [ 0.000000e+00, %2678 ]
  %2752 = phi float [ %2738, %2742 ], [ %2738, %2736 ], [ 0.000000e+00, %2678 ]
  %2753 = phi float [ %2739, %2742 ], [ %2739, %2736 ], [ 0.000000e+00, %2678 ]
  %2754 = phi float [ %2749, %2742 ], [ 0x3F70101020000000, %2736 ], [ 0x3F70101020000000, %2678 ]
  %2755 = add i32 %43, 128
  %2756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.i32 %2756, 0
  %2758 = and i32 %2757, 255
  %2759 = uitofp i32 %2758 to float
  %2760 = lshr i32 %2757, 8
  %2761 = and i32 %2760, 255
  %2762 = uitofp i32 %2761 to float
  %2763 = call float @dx.op.dot3.f32(i32 55, float %2513, float %2514, float %2515, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2764 = fmul fast float %2762, %2763
  %2765 = fadd fast float %2764, %2759
  %2766 = fmul fast float %2765, 0x3F70101020000000
  %2767 = call float @dx.op.unary.f32(i32 7, float %2766)  ; Saturate(value)
  br i1 %2112, label %2768, label %2803

; <label>:2768                                    ; preds = %2750
  %2769 = fmul fast float %2754, 2.000000e+00
  %2770 = fcmp fast olt float %2699, 1.270000e+02
  %2771 = fcmp fast olt float %2700, 1.270000e+02
  %2772 = fcmp fast olt float %2701, 1.270000e+02
  %2773 = fmul fast float %2699, 0xBFF7154760000000
  %2774 = fmul fast float %2773, %2769
  %2775 = fmul fast float %2700, 0xBFF7154760000000
  %2776 = fmul fast float %2775, %2769
  %2777 = fmul fast float %2701, 0xBFF7154760000000
  %2778 = fmul fast float %2777, %2769
  %2779 = call float @dx.op.unary.f32(i32 21, float %2774)  ; Exp(value)
  %2780 = call float @dx.op.unary.f32(i32 21, float %2776)  ; Exp(value)
  %2781 = call float @dx.op.unary.f32(i32 21, float %2778)  ; Exp(value)
  %2782 = call float @dx.op.unary.f32(i32 7, float %2779)  ; Saturate(value)
  %2783 = call float @dx.op.unary.f32(i32 7, float %2780)  ; Saturate(value)
  %2784 = call float @dx.op.unary.f32(i32 7, float %2781)  ; Saturate(value)
  %2785 = fadd fast float %2782, -1.000000e+00
  %2786 = select i1 %2770, float %2785, float -1.000000e+00
  %2787 = fadd fast float %2783, -1.000000e+00
  %2788 = select i1 %2771, float %2787, float -1.000000e+00
  %2789 = fadd fast float %2784, -1.000000e+00
  %2790 = select i1 %2772, float %2789, float -1.000000e+00
  %2791 = fmul fast float %2786, %2293
  %2792 = fmul fast float %2788, %2293
  %2793 = fmul fast float %2790, %2293
  %2794 = fadd fast float %2791, 1.000000e+00
  %2795 = fadd fast float %2792, 1.000000e+00
  %2796 = fadd fast float %2793, 1.000000e+00
  %2797 = fmul fast float %2794, %2094
  %2798 = fmul fast float %2795, %2095
  %2799 = fmul fast float %2796, %2096
  %2800 = fmul fast float %2794, %2097
  %2801 = fmul fast float %2795, %2098
  %2802 = fmul fast float %2796, %2099
  br label %2803

; <label>:2803                                    ; preds = %2768, %2750
  %2804 = phi float [ %2797, %2768 ], [ %2094, %2750 ]
  %2805 = phi float [ %2798, %2768 ], [ %2095, %2750 ]
  %2806 = phi float [ %2799, %2768 ], [ %2096, %2750 ]
  %2807 = phi float [ %2800, %2768 ], [ %2097, %2750 ]
  %2808 = phi float [ %2801, %2768 ], [ %2098, %2750 ]
  %2809 = phi float [ %2802, %2768 ], [ %2099, %2750 ]
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = and i32 %2811, 3
  %2813 = icmp eq i32 %2812, 3
  br i1 %2813, label %2892, label %2814

; <label>:2814                                    ; preds = %2803
  %2815 = and i32 %2811, 16
  %2816 = icmp ne i32 %2815, 0
  %2817 = select i1 %2816, float %2293, float 0.000000e+00
  %2818 = icmp eq i32 %2812, 0
  br i1 %2818, label %2819, label %2847

; <label>:2819                                    ; preds = %2814
  %2820 = and i32 %2811, 64
  %2821 = icmp ne i32 %2820, 0
  %2822 = select i1 %2821, float %2293, float 0.000000e+00
  %2823 = fsub fast float %2513, %2804
  %2824 = fsub fast float %2514, %2805
  %2825 = fsub fast float %2515, %2806
  %2826 = fmul fast float %2817, %2823
  %2827 = fmul fast float %2817, %2824
  %2828 = fmul fast float %2817, %2825
  %2829 = fadd fast float %2826, %2804
  %2830 = fadd fast float %2827, %2805
  %2831 = fadd fast float %2828, %2806
  %2832 = fsub fast float %2499, %2106
  %2833 = fmul fast float %2817, %2832
  %2834 = fadd fast float %2833, %2106
  %2835 = fsub fast float %2641, %2807
  %2836 = fsub fast float %2642, %2808
  %2837 = fsub fast float %2643, %2809
  %2838 = fmul fast float %2822, %2835
  %2839 = fmul fast float %2822, %2836
  %2840 = fmul fast float %2822, %2837
  %2841 = fadd fast float %2838, %2807
  %2842 = fadd fast float %2839, %2808
  %2843 = fadd fast float %2840, %2809
  %2844 = fsub fast float %2767, %2110
  %2845 = fmul fast float %2817, %2844
  %2846 = fadd fast float %2845, %2110
  br label %2892

; <label>:2847                                    ; preds = %2814
  %2848 = icmp eq i32 %2812, 1
  br i1 %2848, label %2849, label %2862

; <label>:2849                                    ; preds = %2847
  %2850 = fadd fast float %2513, -1.000000e+00
  %2851 = fadd fast float %2514, -1.000000e+00
  %2852 = fadd fast float %2515, -1.000000e+00
  %2853 = fmul fast float %2817, %2850
  %2854 = fmul fast float %2817, %2851
  %2855 = fmul fast float %2817, %2852
  %2856 = fadd fast float %2853, 1.000000e+00
  %2857 = fadd fast float %2854, 1.000000e+00
  %2858 = fadd fast float %2855, 1.000000e+00
  %2859 = fmul fast float %2856, %2804
  %2860 = fmul fast float %2857, %2805
  %2861 = fmul fast float %2858, %2806
  br label %2892

; <label>:2862                                    ; preds = %2847
  %2863 = icmp eq i32 %2812, 2
  br i1 %2863, label %2864, label %2892

; <label>:2864                                    ; preds = %2862
  %2865 = call float @dx.op.unary.f32(i32 24, float %2513)  ; Sqrt(value)
  %2866 = call float @dx.op.unary.f32(i32 24, float %2514)  ; Sqrt(value)
  %2867 = call float @dx.op.unary.f32(i32 24, float %2515)  ; Sqrt(value)
  %2868 = fadd fast float %2865, -5.000000e-01
  %2869 = fadd fast float %2866, -5.000000e-01
  %2870 = fadd fast float %2867, -5.000000e-01
  %2871 = fmul fast float %2868, %2817
  %2872 = fmul fast float %2869, %2817
  %2873 = fmul fast float %2870, %2817
  %2874 = fadd fast float %2871, 5.000000e-01
  %2875 = fadd fast float %2872, 5.000000e-01
  %2876 = fadd fast float %2873, 5.000000e-01
  %2877 = fmul fast float %2874, 2.000000e+00
  %2878 = fsub fast float 1.000000e+00, %2877
  %2879 = fmul fast float %2878, %2804
  %2880 = fadd fast float %2879, %2877
  %2881 = fmul fast float %2880, %2804
  %2882 = fmul fast float %2875, 2.000000e+00
  %2883 = fsub fast float 1.000000e+00, %2882
  %2884 = fmul fast float %2883, %2805
  %2885 = fadd fast float %2884, %2882
  %2886 = fmul fast float %2885, %2805
  %2887 = fmul fast float %2876, 2.000000e+00
  %2888 = fsub fast float 1.000000e+00, %2887
  %2889 = fmul fast float %2888, %2806
  %2890 = fadd fast float %2889, %2887
  %2891 = fmul fast float %2890, %2806
  br label %2892

; <label>:2892                                    ; preds = %2864, %2862, %2849, %2819, %2803
  %2893 = phi float [ %2804, %2803 ], [ %2881, %2864 ], [ %2804, %2862 ], [ %2859, %2849 ], [ %2829, %2819 ]
  %2894 = phi float [ %2805, %2803 ], [ %2886, %2864 ], [ %2805, %2862 ], [ %2860, %2849 ], [ %2830, %2819 ]
  %2895 = phi float [ %2806, %2803 ], [ %2891, %2864 ], [ %2806, %2862 ], [ %2861, %2849 ], [ %2831, %2819 ]
  %2896 = phi float [ %2807, %2803 ], [ %2807, %2864 ], [ %2807, %2862 ], [ %2807, %2849 ], [ %2841, %2819 ]
  %2897 = phi float [ %2808, %2803 ], [ %2808, %2864 ], [ %2808, %2862 ], [ %2808, %2849 ], [ %2842, %2819 ]
  %2898 = phi float [ %2809, %2803 ], [ %2809, %2864 ], [ %2809, %2862 ], [ %2809, %2849 ], [ %2843, %2819 ]
  %2899 = phi float [ %2106, %2803 ], [ %2106, %2864 ], [ %2106, %2862 ], [ %2106, %2849 ], [ %2834, %2819 ]
  %2900 = phi float [ %2110, %2803 ], [ %2110, %2864 ], [ %2110, %2862 ], [ %2110, %2849 ], [ %2846, %2819 ]
  %2901 = and i32 %2811, 12
  %2902 = icmp eq i32 %2901, 12
  br i1 %2902, label %3033, label %2903

; <label>:2903                                    ; preds = %2892
  %2904 = and i32 %2811, 2097184
  %2905 = icmp eq i32 %2904, 2097184
  %2906 = select i1 %2905, float %2293, float 0.000000e+00
  %2907 = and i32 %2811, 4194336
  %2908 = icmp eq i32 %2907, 4194336
  %2909 = select i1 %2908, float %2293, float 0.000000e+00
  %2910 = and i32 %2811, 8388640
  %2911 = icmp eq i32 %2910, 8388640
  %2912 = select i1 %2911, float %2293, float 0.000000e+00
  %2913 = and i32 %2811, 1024
  %2914 = icmp ne i32 %2913, 0
  %2915 = select i1 %2914, float %2293, float 0.000000e+00
  %2916 = and i32 %2811, 2048
  %2917 = icmp ne i32 %2916, 0
  %2918 = select i1 %2917, float %2293, float 0.000000e+00
  %2919 = and i32 %2811, 8192
  %2920 = icmp ne i32 %2919, 0
  %2921 = select i1 %2920, float %2293, float 0.000000e+00
  %2922 = icmp eq i32 %2901, 0
  br i1 %2922, label %2923, label %2957

; <label>:2923                                    ; preds = %2903
  %2924 = fsub fast float %2594, %2092
  %2925 = fsub fast float %2595, %2093
  %2926 = fmul fast float %2906, %2924
  %2927 = fmul fast float %2906, %2925
  %2928 = fadd fast float %2926, %2092
  %2929 = fadd fast float %2927, %2093
  %2930 = fsub fast float %2596, %2108
  %2931 = fmul fast float %2909, %2930
  %2932 = fadd fast float %2931, %2108
  %2933 = fsub fast float %2593, %2107
  %2934 = fmul fast float %2912, %2933
  %2935 = fadd fast float %2934, %2107
  %2936 = fsub fast float %2699, %2100
  %2937 = fsub fast float %2700, %2101
  %2938 = fsub fast float %2701, %2102
  %2939 = fmul fast float %2915, %2936
  %2940 = fmul fast float %2915, %2937
  %2941 = fmul fast float %2915, %2938
  %2942 = fadd fast float %2939, %2100
  %2943 = fadd fast float %2940, %2101
  %2944 = fadd fast float %2941, %2102
  %2945 = fsub fast float %2754, %2109
  %2946 = fmul fast float %2918, %2945
  %2947 = fadd fast float %2946, %2109
  %2948 = fsub fast float %2751, %2103
  %2949 = fsub fast float %2752, %2104
  %2950 = fsub fast float %2753, %2105
  %2951 = fmul fast float %2921, %2948
  %2952 = fmul fast float %2921, %2949
  %2953 = fmul fast float %2921, %2950
  %2954 = fadd fast float %2951, %2103
  %2955 = fadd fast float %2952, %2104
  %2956 = fadd fast float %2953, %2105
  br label %3033

; <label>:2957                                    ; preds = %2903
  %2958 = icmp eq i32 %2901, 4
  br i1 %2958, label %2959, label %3005

; <label>:2959                                    ; preds = %2957
  %2960 = fmul fast float %2906, %2594
  %2961 = fmul fast float %2906, %2595
  %2962 = fadd fast float %2960, %2092
  %2963 = fadd fast float %2961, %2093
  %2964 = call float @dx.op.binary.f32(i32 36, float %2108, float %2596)  ; FMin(a,b)
  %2965 = fsub fast float %2964, %2108
  %2966 = fmul fast float %2965, %2909
  %2967 = fadd fast float %2966, %2108
  %2968 = fadd fast float %2593, %2107
  %2969 = fmul fast float %2968, 0x3FF337FAE0000000
  %2970 = fmul fast float %2107, %2107
  %2971 = fmul fast float %2593, %2593
  %2972 = fadd fast float %2971, %2970
  %2973 = fmul fast float %2972, 0x3FE5152B00000000
  %2974 = fmul fast float %2107, 0xBFCC1F85E0000000
  %2975 = fmul fast float %2974, %2593
  %2976 = fadd fast float %2975, 0xBFE1363700000000
  %2977 = fadd fast float %2976, %2969
  %2978 = fsub fast float %2977, %2973
  %2979 = fmul fast float %2968, 0x3FBA6F0D00000000
  %2980 = fmul fast float %2972, 0x3FD0432880000000
  %2981 = fmul fast float %2107, 0xBFEF110800000000
  %2982 = fmul fast float %2981, %2593
  %2983 = fadd fast float %2982, 1.000000e+00
  %2984 = fsub fast float %2983, %2979
  %2985 = fadd fast float %2984, %2980
  %2986 = fdiv fast float %2978, %2985
  %2987 = call float @dx.op.unary.f32(i32 7, float %2986)  ; Saturate(value)
  %2988 = fsub fast float %2987, %2107
  %2989 = fmul fast float %2988, %2912
  %2990 = fadd fast float %2989, %2107
  %2991 = fmul fast float %2915, %2699
  %2992 = fmul fast float %2915, %2700
  %2993 = fmul fast float %2915, %2701
  %2994 = fadd fast float %2991, %2100
  %2995 = fadd fast float %2992, %2101
  %2996 = fadd fast float %2993, %2102
  %2997 = fmul fast float %2918, %2754
  %2998 = fadd fast float %2997, %2109
  %2999 = fmul fast float %2921, %2751
  %3000 = fmul fast float %2921, %2752
  %3001 = fmul fast float %2921, %2753
  %3002 = fadd fast float %2999, %2103
  %3003 = fadd fast float %3000, %2104
  %3004 = fadd fast float %3001, %2105
  br label %3033

; <label>:3005                                    ; preds = %2957
  %3006 = icmp eq i32 %2901, 8
  br i1 %3006, label %3007, label %3033

; <label>:3007                                    ; preds = %3005
  %3008 = fmul fast float %2906, %2594
  %3009 = fmul fast float %2906, %2595
  %3010 = fadd fast float %3008, %2092
  %3011 = fadd fast float %3009, %2093
  %3012 = call float @dx.op.binary.f32(i32 36, float %2108, float %2596)  ; FMin(a,b)
  %3013 = fsub fast float %3012, %2108
  %3014 = fmul fast float %3013, %2909
  %3015 = fadd fast float %3014, %2108
  %3016 = fsub fast float %2593, %2107
  %3017 = fmul fast float %2912, %3016
  %3018 = fadd fast float %3017, %2107
  %3019 = fmul fast float %2915, %2699
  %3020 = fmul fast float %2915, %2700
  %3021 = fmul fast float %2915, %2701
  %3022 = fadd fast float %3019, %2100
  %3023 = fadd fast float %3020, %2101
  %3024 = fadd fast float %3021, %2102
  %3025 = fmul fast float %2918, %2754
  %3026 = fadd fast float %3025, %2109
  %3027 = fmul fast float %2921, %2751
  %3028 = fmul fast float %2921, %2752
  %3029 = fmul fast float %2921, %2753
  %3030 = fadd fast float %3027, %2103
  %3031 = fadd fast float %3028, %2104
  %3032 = fadd fast float %3029, %2105
  br label %3033

; <label>:3033                                    ; preds = %3007, %3005, %2959, %2923, %2892, %2292, %2111, %2091
  %3034 = phi float [ %2092, %2892 ], [ %2092, %2292 ], [ %2092, %2091 ], [ %3010, %3007 ], [ %2092, %3005 ], [ %2962, %2959 ], [ %2928, %2923 ], [ %2092, %2111 ]
  %3035 = phi float [ %2093, %2892 ], [ %2093, %2292 ], [ %2093, %2091 ], [ %3011, %3007 ], [ %2093, %3005 ], [ %2963, %2959 ], [ %2929, %2923 ], [ %2093, %2111 ]
  %3036 = phi float [ %2893, %2892 ], [ %2094, %2292 ], [ %2094, %2091 ], [ %2893, %3007 ], [ %2893, %3005 ], [ %2893, %2959 ], [ %2893, %2923 ], [ %2094, %2111 ]
  %3037 = phi float [ %2894, %2892 ], [ %2095, %2292 ], [ %2095, %2091 ], [ %2894, %3007 ], [ %2894, %3005 ], [ %2894, %2959 ], [ %2894, %2923 ], [ %2095, %2111 ]
  %3038 = phi float [ %2895, %2892 ], [ %2096, %2292 ], [ %2096, %2091 ], [ %2895, %3007 ], [ %2895, %3005 ], [ %2895, %2959 ], [ %2895, %2923 ], [ %2096, %2111 ]
  %3039 = phi float [ %2896, %2892 ], [ %2097, %2292 ], [ %2097, %2091 ], [ %2896, %3007 ], [ %2896, %3005 ], [ %2896, %2959 ], [ %2896, %2923 ], [ %2097, %2111 ]
  %3040 = phi float [ %2897, %2892 ], [ %2098, %2292 ], [ %2098, %2091 ], [ %2897, %3007 ], [ %2897, %3005 ], [ %2897, %2959 ], [ %2897, %2923 ], [ %2098, %2111 ]
  %3041 = phi float [ %2898, %2892 ], [ %2099, %2292 ], [ %2099, %2091 ], [ %2898, %3007 ], [ %2898, %3005 ], [ %2898, %2959 ], [ %2898, %2923 ], [ %2099, %2111 ]
  %3042 = phi float [ %2100, %2892 ], [ %2100, %2292 ], [ %2100, %2091 ], [ %3022, %3007 ], [ %2100, %3005 ], [ %2994, %2959 ], [ %2942, %2923 ], [ %2100, %2111 ]
  %3043 = phi float [ %2101, %2892 ], [ %2101, %2292 ], [ %2101, %2091 ], [ %3023, %3007 ], [ %2101, %3005 ], [ %2995, %2959 ], [ %2943, %2923 ], [ %2101, %2111 ]
  %3044 = phi float [ %2102, %2892 ], [ %2102, %2292 ], [ %2102, %2091 ], [ %3024, %3007 ], [ %2102, %3005 ], [ %2996, %2959 ], [ %2944, %2923 ], [ %2102, %2111 ]
  %3045 = phi float [ %2103, %2892 ], [ %2103, %2292 ], [ %2103, %2091 ], [ %3030, %3007 ], [ %2103, %3005 ], [ %3002, %2959 ], [ %2954, %2923 ], [ %2103, %2111 ]
  %3046 = phi float [ %2104, %2892 ], [ %2104, %2292 ], [ %2104, %2091 ], [ %3031, %3007 ], [ %2104, %3005 ], [ %3003, %2959 ], [ %2955, %2923 ], [ %2104, %2111 ]
  %3047 = phi float [ %2105, %2892 ], [ %2105, %2292 ], [ %2105, %2091 ], [ %3032, %3007 ], [ %2105, %3005 ], [ %3004, %2959 ], [ %2956, %2923 ], [ %2105, %2111 ]
  %3048 = phi float [ %2899, %2892 ], [ %2106, %2292 ], [ %2106, %2091 ], [ %2899, %3007 ], [ %2899, %3005 ], [ %2899, %2959 ], [ %2899, %2923 ], [ %2106, %2111 ]
  %3049 = phi float [ %2107, %2892 ], [ %2107, %2292 ], [ %2107, %2091 ], [ %3018, %3007 ], [ %2107, %3005 ], [ %2990, %2959 ], [ %2935, %2923 ], [ %2107, %2111 ]
  %3050 = phi float [ %2108, %2892 ], [ %2108, %2292 ], [ %2108, %2091 ], [ %3015, %3007 ], [ %2108, %3005 ], [ %2967, %2959 ], [ %2932, %2923 ], [ %2108, %2111 ]
  %3051 = phi float [ %2109, %2892 ], [ %2109, %2292 ], [ %2109, %2091 ], [ %3026, %3007 ], [ %2109, %3005 ], [ %2998, %2959 ], [ %2947, %2923 ], [ %2109, %2111 ]
  %3052 = phi float [ %2900, %2892 ], [ %2110, %2292 ], [ %2110, %2091 ], [ %2900, %3007 ], [ %2900, %3005 ], [ %2900, %2959 ], [ %2900, %2923 ], [ %2110, %2111 ]
  br i1 %440, label %3975, label %3053

; <label>:3053                                    ; preds = %3033
  %3054 = icmp ult i32 %494, 4
  %3055 = add i32 %43, 72
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = add i32 %43, 76
  %3059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3058, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.i32 %3059, 0
  %3061 = or i32 %3060, %3057
  %3062 = icmp eq i32 %3061, 0
  br i1 %3062, label %3975, label %3063

; <label>:3063                                    ; preds = %3053
  %3064 = and i32 %3057, 262144
  %3065 = icmp ne i32 %3064, 0
  %3066 = select i1 %3065, float %49, float 1.000000e+00
  %3067 = select i1 %3065, float %50, float 0.000000e+00
  %3068 = select i1 %3065, float %51, float 0.000000e+00
  %3069 = select i1 %3065, float %52, float 1.000000e+00
  %3070 = select i1 %3065, float %53, float %81
  %3071 = select i1 %3065, float %54, float %82
  %3072 = add i32 %43, 332
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = lshr i32 %3074, 16
  %3076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3075)  ; LegacyF16ToF32(value)
  %3077 = fmul fast float %3076, 0x3F50624DE0000000
  %3078 = add i32 %43, 136
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3078, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = lshr i32 %3080, 16
  %3082 = and i32 %3081, 255
  %3083 = lshr i32 %3080, 24
  %3084 = add i32 %43, 340
  %3085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3084, i32 undef)  ; BufferLoad(srv,index,wot)
  %3086 = extractvalue %dx.types.ResRet.i32 %3085, 0
  %3087 = and i32 %3086, 65535
  %3088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3087)  ; LegacyF16ToF32(value)
  %3089 = lshr i32 %3086, 16
  %3090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3089)  ; LegacyF16ToF32(value)
  %3091 = add i32 %43, 80
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = lshr i32 %3093, 22
  %3095 = shl nuw nsw i32 %3094, 5
  %3096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3095)  ; LegacyF16ToF32(value)
  %3097 = shl i32 %3093, 4
  %3098 = and i32 %3097, 32752
  %3099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3098)  ; LegacyF16ToF32(value)
  %3100 = lshr i32 %3093, 7
  %3101 = and i32 %3100, 32752
  %3102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3101)  ; LegacyF16ToF32(value)
  %3103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3104 = extractvalue %dx.types.CBufRet.f32 %3103, 3
  %3105 = fmul fast float %3104, 1.000000e+03
  %3106 = fmul fast float %430, %3105
  %3107 = call float @dx.op.unary.f32(i32 22, float %3106)  ; Frc(value)
  %3108 = fadd fast float %3107, %420
  %3109 = fmul fast float %431, %3105
  %3110 = call float @dx.op.unary.f32(i32 22, float %3109)  ; Frc(value)
  %3111 = fadd fast float %3110, %422
  %3112 = fmul fast float %3077, %3105
  %3113 = call float @dx.op.unary.f32(i32 22, float %3112)  ; Frc(value)
  %3114 = fmul fast float %3113, 0x401921FB60000000
  %3115 = fadd fast float %3114, %3096
  %3116 = call float @dx.op.unary.f32(i32 13, float %3115)  ; Sin(value)
  %3117 = call float @dx.op.unary.f32(i32 12, float %3115)  ; Cos(value)
  %3118 = fsub fast float -0.000000e+00, %3116
  %3119 = fadd fast float %3070, -5.000000e-01
  %3120 = fadd fast float %3071, -5.000000e-01
  %3121 = fmul fast float %3088, %3119
  %3122 = fmul fast float %3090, %3120
  %3123 = fadd fast float %3121, 5.000000e-01
  %3124 = fadd fast float %3122, 5.000000e-01
  %3125 = fmul fast float %3099, %3123
  %3126 = fmul fast float %3102, %3124
  %3127 = fmul fast float %3117, %3125
  %3128 = call float @dx.op.tertiary.f32(i32 46, float %3118, float %3126, float %3127)  ; FMad(a,b,c)
  %3129 = fmul fast float %3116, %3125
  %3130 = call float @dx.op.tertiary.f32(i32 46, float %3117, float %3126, float %3129)  ; FMad(a,b,c)
  %3131 = fadd fast float %3108, %3128
  %3132 = fadd fast float %3111, %3130
  %3133 = icmp ugt i32 %3082, 1
  %3134 = icmp ugt i32 %3080, 33554431
  %3135 = or i1 %3134, %3133
  br i1 %3135, label %3136, label %3161

; <label>:3136                                    ; preds = %3063
  %3137 = add i32 %43, 276
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3137, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = lshr i32 %3139, 16
  %3141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3140)  ; LegacyF16ToF32(value)
  %3142 = fmul fast float %3104, %3141
  %3143 = call float @dx.op.unary.f32(i32 22, float %3142)  ; Frc(value)
  %3144 = mul nuw nsw i32 %3082, %3083
  %3145 = uitofp i32 %3144 to float
  %3146 = fmul fast float %3143, %3145
  %3147 = call float @dx.op.unary.f32(i32 27, float %3146)  ; Round_ni(value)
  %3148 = fptoui float %3147 to i32
  %3149 = urem i32 %3148, %3082
  %3150 = udiv i32 %3148, %3083
  %3151 = call float @dx.op.unary.f32(i32 22, float %3131)  ; Frc(value)
  %3152 = call float @dx.op.unary.f32(i32 22, float %3132)  ; Frc(value)
  %3153 = uitofp i32 %3149 to float
  %3154 = uitofp i32 %3150 to float
  %3155 = fadd fast float %3151, %3153
  %3156 = fadd fast float %3152, %3154
  %3157 = uitofp i32 %3082 to float
  %3158 = uitofp i32 %3083 to float
  %3159 = fdiv fast float %3155, %3157
  %3160 = fdiv fast float %3156, %3158
  br label %3161

; <label>:3161                                    ; preds = %3136, %3063
  %3162 = phi float [ %3159, %3136 ], [ %3131, %3063 ]
  %3163 = phi float [ %3160, %3136 ], [ %3132, %3063 ]
  %3164 = and i32 %3057, 256
  %3165 = icmp eq i32 %3164, 0
  br i1 %3165, label %3212, label %3166

; <label>:3166                                    ; preds = %3161
  %3167 = add i32 %43, 452
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3167, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = add i32 %3169, 0
  %3171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3171, %dx.types.Handle %96, float %3162, float %3163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3173 = extractvalue %dx.types.ResRet.f32 %3172, 0
  %3174 = add i32 %43, 148
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = shl i32 %3176, 4
  %3178 = and i32 %3177, 32752
  %3179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3178)  ; LegacyF16ToF32(value)
  %3180 = lshr i32 %3176, 7
  %3181 = and i32 %3180, 32752
  %3182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3181)  ; LegacyF16ToF32(value)
  %3183 = fsub fast float 1.000000e+00, %489
  %3184 = call float @dx.op.binary.f32(i32 35, float %3183, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3185 = bitcast float %489 to i32
  %3186 = sitofp i32 %3185 to float
  %3187 = fadd fast float %3186, 0xC1CFBF8940000000
  %3188 = fmul fast float %3182, %3187
  %3189 = fadd fast float %3188, 0x41CFBF8940000000
  %3190 = fptosi float %3189 to i32
  %3191 = bitcast i32 %3190 to float
  %3192 = bitcast float %3184 to i32
  %3193 = sitofp i32 %3192 to float
  %3194 = fadd fast float %3193, 0xC1CFBF8940000000
  %3195 = fmul fast float %3194, %3182
  %3196 = fadd fast float %3195, 0x41CFBF8940000000
  %3197 = fptosi float %3196 to i32
  %3198 = bitcast i32 %3197 to float
  %3199 = fmul fast float %3191, %3179
  %3200 = fmul fast float %3198, %3179
  %3201 = fsub fast float %3184, %3199
  %3202 = fadd fast float %3200, %3184
  %3203 = call float @dx.op.unary.f32(i32 7, float %3201)  ; Saturate(value)
  %3204 = call float @dx.op.unary.f32(i32 7, float %3202)  ; Saturate(value)
  %3205 = fsub fast float %3173, %3203
  %3206 = fsub fast float %3204, %3203
  %3207 = bitcast float %3206 to i32
  %3208 = sub nsw i32 2129859010, %3207
  %3209 = bitcast i32 %3208 to float
  %3210 = fmul fast float %3209, %3205
  %3211 = call float @dx.op.unary.f32(i32 7, float %3210)  ; Saturate(value)
  br label %3212

; <label>:3212                                    ; preds = %3166, %3161
  %3213 = phi float [ %3211, %3166 ], [ %489, %3161 ]
  %3214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.i32 %3214, 0
  %3216 = and i32 %3215, 128
  %3217 = icmp eq i32 %3216, 0
  br i1 %3217, label %3234, label %3218

; <label>:3218                                    ; preds = %3212
  %3219 = add i32 %43, 436
  %3220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3219, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.i32 %3220, 0
  %3222 = add i32 %3221, 0
  %3223 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3222, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3224 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3223, %dx.types.Handle %96, float %3162, float %3163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3225 = extractvalue %dx.types.ResRet.f32 %3224, 0
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = and i32 %3227, 524288
  %3229 = icmp ne i32 %3228, 0
  %3230 = fcmp fast ogt float %3225, 0x3FE0101020000000
  %3231 = select i1 %3230, float 1.000000e+00, float 0.000000e+00
  %3232 = select i1 %3229, float %3231, float %3225
  %3233 = fmul fast float %3232, %3213
  br label %3234

; <label>:3234                                    ; preds = %3218, %3212
  %3235 = phi float [ %3233, %3218 ], [ %3213, %3212 ]
  %3236 = fcmp fast ult float %3235, 0x3F70101020000000
  br i1 %3236, label %3975, label %3237

; <label>:3237                                    ; preds = %3234
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = and i32 %3239, 16
  %3241 = icmp eq i32 %3240, 0
  br i1 %3241, label %3440, label %3242

; <label>:3242                                    ; preds = %3237
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3078, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = add i32 %43, 388
  %3246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3245, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.i32 %3246, 0
  %3248 = add i32 %3247, 0
  %3249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3248, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3250 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3249, %dx.types.Handle %95, float %3162, float %3163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3251 = extractvalue %dx.types.ResRet.f32 %3250, 0
  %3252 = extractvalue %dx.types.ResRet.f32 %3250, 1
  %3253 = extractvalue %dx.types.ResRet.f32 %3250, 2
  %3254 = extractvalue %dx.types.ResRet.f32 %3250, 3
  %3255 = and i32 %3244, 255
  %3256 = uitofp i32 %3255 to float
  %3257 = lshr i32 %3244, 8
  %3258 = and i32 %3257, 255
  %3259 = uitofp i32 %3258 to float
  %3260 = fmul fast float %3254, %3256
  %3261 = fadd fast float %3260, %3259
  %3262 = fmul fast float %3261, 0x3F70101000000000
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = and i32 %3264, 512
  %3266 = icmp eq i32 %3265, 0
  br i1 %3266, label %3275, label %3267

; <label>:3267                                    ; preds = %3242
  %3268 = add i32 %43, 472
  %3269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.i32 %3269, 0
  %3271 = add i32 %3270, 0
  %3272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3273 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3272, %dx.types.Handle %96, float %3162, float %3163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3274 = extractvalue %dx.types.ResRet.f32 %3273, 0
  br label %3275

; <label>:3275                                    ; preds = %3267, %3242
  %3276 = phi float [ %3274, %3267 ], [ 1.000000e+00, %3242 ]
  %3277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3278 = extractvalue %dx.types.ResRet.i32 %3277, 0
  %3279 = and i32 %3278, 33554432
  %3280 = icmp eq i32 %3279, 0
  br i1 %3280, label %3387, label %3281

; <label>:3281                                    ; preds = %3275
  %3282 = add i32 %43, 272
  %3283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3282, i32 undef)  ; BufferLoad(srv,index,wot)
  %3284 = extractvalue %dx.types.ResRet.i32 %3283, 0
  %3285 = and i32 %3284, 65535
  %3286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3285)  ; LegacyF16ToF32(value)
  %3287 = lshr i32 %3284, 16
  %3288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3287)  ; LegacyF16ToF32(value)
  %3289 = add i32 %43, 276
  %3290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3289, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.i32 %3290, 0
  %3292 = and i32 %3291, 65535
  %3293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3292)  ; LegacyF16ToF32(value)
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = lshr i32 %3295, 24
  %3297 = uitofp i32 %3296 to float
  %3298 = fmul fast float %3297, 0x3F70101020000000
  %3299 = and i32 %3295, 255
  %3300 = uitofp i32 %3299 to float
  %3301 = fmul fast float %3300, 0x3F70101020000000
  %3302 = lshr i32 %3295, 8
  %3303 = and i32 %3302, 255
  %3304 = uitofp i32 %3303 to float
  %3305 = fmul fast float %3304, 0x3F70101020000000
  %3306 = lshr i32 %3295, 16
  %3307 = and i32 %3306, 255
  %3308 = uitofp i32 %3307 to float
  %3309 = fmul fast float %3308, 0x3F70101020000000
  %3310 = add i32 %43, 268
  %3311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.i32 %3311, 0
  %3313 = lshr i32 %3312, 24
  %3314 = uitofp i32 %3313 to float
  %3315 = fmul fast float %3314, 0x3F70101020000000
  %3316 = and i32 %3312, 255
  %3317 = uitofp i32 %3316 to float
  %3318 = fmul fast float %3317, 0x3F70101020000000
  %3319 = lshr i32 %3312, 8
  %3320 = and i32 %3319, 255
  %3321 = uitofp i32 %3320 to float
  %3322 = fmul fast float %3321, 0x3F70101020000000
  %3323 = lshr i32 %3312, 16
  %3324 = and i32 %3323, 255
  %3325 = uitofp i32 %3324 to float
  %3326 = fmul fast float %3325, 0x3F70101020000000
  %3327 = bitcast float %3251 to i32
  %3328 = ashr i32 %3327, 1
  %3329 = sub nsw i32 1597463174, %3328
  %3330 = bitcast i32 %3329 to float
  %3331 = fmul fast float %3251, 5.000000e-01
  %3332 = fmul fast float %3330, %3330
  %3333 = fmul fast float %3332, %3331
  %3334 = fsub fast float 1.500000e+00, %3333
  %3335 = fmul fast float %3330, %3251
  %3336 = fmul fast float %3335, %3334
  %3337 = bitcast float %3252 to i32
  %3338 = ashr i32 %3337, 1
  %3339 = sub nsw i32 1597463174, %3338
  %3340 = bitcast i32 %3339 to float
  %3341 = fmul fast float %3252, 5.000000e-01
  %3342 = fmul fast float %3340, %3340
  %3343 = fmul fast float %3342, %3341
  %3344 = fsub fast float 1.500000e+00, %3343
  %3345 = fmul fast float %3340, %3252
  %3346 = fmul fast float %3345, %3344
  %3347 = bitcast float %3253 to i32
  %3348 = ashr i32 %3347, 1
  %3349 = sub nsw i32 1597463174, %3348
  %3350 = bitcast i32 %3349 to float
  %3351 = fmul fast float %3253, 5.000000e-01
  %3352 = fmul fast float %3350, %3350
  %3353 = fmul fast float %3352, %3351
  %3354 = fsub fast float 1.500000e+00, %3353
  %3355 = fmul fast float %3350, %3253
  %3356 = fmul fast float %3355, %3354
  %3357 = fsub fast float %3336, %3318
  %3358 = fsub fast float %3346, %3322
  %3359 = fsub fast float %3356, %3326
  %3360 = fmul fast float %3357, %3286
  %3361 = fmul fast float %3358, %3288
  %3362 = fmul fast float %3359, %3293
  %3363 = fadd fast float %3360, %3301
  %3364 = fadd fast float %3361, %3305
  %3365 = fadd fast float %3362, %3309
  %3366 = call float @dx.op.unary.f32(i32 7, float %3363)  ; Saturate(value)
  %3367 = call float @dx.op.unary.f32(i32 7, float %3364)  ; Saturate(value)
  %3368 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  %3369 = fmul fast float %3366, %3366
  %3370 = fmul fast float %3367, %3367
  %3371 = fmul fast float %3368, %3368
  %3372 = fsub fast float %3369, %3251
  %3373 = fsub fast float %3370, %3252
  %3374 = fsub fast float %3371, %3253
  %3375 = fmul fast float %3372, %3276
  %3376 = fmul fast float %3373, %3276
  %3377 = fmul fast float %3374, %3276
  %3378 = fadd fast float %3375, %3251
  %3379 = fadd fast float %3376, %3252
  %3380 = fadd fast float %3377, %3253
  %3381 = fadd fast float %3298, %3262
  %3382 = fsub fast float %3381, %3315
  %3383 = call float @dx.op.unary.f32(i32 7, float %3382)  ; Saturate(value)
  %3384 = fsub fast float %3383, %3262
  %3385 = fmul fast float %3384, %3276
  %3386 = fadd fast float %3385, %3262
  br label %3440

; <label>:3387                                    ; preds = %3275
  %3388 = and i32 %3278, 134217728
  %3389 = icmp eq i32 %3388, 0
  br i1 %3389, label %3424, label %3390

; <label>:3390                                    ; preds = %3387
  %3391 = call float @dx.op.unary.f32(i32 24, float %407)  ; Sqrt(value)
  %3392 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %3393 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %3394 = fadd fast float %3391, -5.000000e-01
  %3395 = fadd fast float %3392, -5.000000e-01
  %3396 = fadd fast float %3393, -5.000000e-01
  %3397 = fmul fast float %3394, %3276
  %3398 = fmul fast float %3395, %3276
  %3399 = fmul fast float %3396, %3276
  %3400 = fadd fast float %3397, 5.000000e-01
  %3401 = fadd fast float %3398, 5.000000e-01
  %3402 = fadd fast float %3399, 5.000000e-01
  %3403 = call float @dx.op.unary.f32(i32 24, float %3251)  ; Sqrt(value)
  %3404 = call float @dx.op.unary.f32(i32 24, float %3252)  ; Sqrt(value)
  %3405 = call float @dx.op.unary.f32(i32 24, float %3253)  ; Sqrt(value)
  %3406 = fmul fast float %3400, 2.000000e+00
  %3407 = fsub fast float 1.000000e+00, %3406
  %3408 = fmul fast float %3407, %3403
  %3409 = fadd fast float %3408, %3406
  %3410 = fmul fast float %3409, %3403
  %3411 = fmul fast float %3401, 2.000000e+00
  %3412 = fsub fast float 1.000000e+00, %3411
  %3413 = fmul fast float %3412, %3404
  %3414 = fadd fast float %3413, %3411
  %3415 = fmul fast float %3414, %3404
  %3416 = fmul fast float %3402, 2.000000e+00
  %3417 = fsub fast float 1.000000e+00, %3416
  %3418 = fmul fast float %3417, %3405
  %3419 = fadd fast float %3418, %3416
  %3420 = fmul fast float %3419, %3405
  %3421 = fmul fast float %3410, %3410
  %3422 = fmul fast float %3415, %3415
  %3423 = fmul fast float %3420, %3420
  br label %3440

; <label>:3424                                    ; preds = %3387
  %3425 = fmul fast float %407, %407
  %3426 = fmul fast float %411, %411
  %3427 = fmul fast float %415, %415
  %3428 = fadd fast float %3425, -1.000000e+00
  %3429 = fadd fast float %3426, -1.000000e+00
  %3430 = fadd fast float %3427, -1.000000e+00
  %3431 = fmul fast float %3276, %3428
  %3432 = fmul fast float %3276, %3429
  %3433 = fmul fast float %3276, %3430
  %3434 = fadd fast float %3431, 1.000000e+00
  %3435 = fadd fast float %3432, 1.000000e+00
  %3436 = fadd fast float %3433, 1.000000e+00
  %3437 = fmul fast float %3434, %3251
  %3438 = fmul fast float %3435, %3252
  %3439 = fmul fast float %3436, %3253
  br label %3440

; <label>:3440                                    ; preds = %3424, %3390, %3281, %3237
  %3441 = phi float [ %3386, %3281 ], [ %3262, %3390 ], [ %3262, %3424 ], [ 0x3FA23C0BE0000000, %3237 ]
  %3442 = phi float [ %3378, %3281 ], [ %3421, %3390 ], [ %3437, %3424 ], [ 1.000000e+00, %3237 ]
  %3443 = phi float [ %3379, %3281 ], [ %3422, %3390 ], [ %3438, %3424 ], [ 1.000000e+00, %3237 ]
  %3444 = phi float [ %3380, %3281 ], [ %3423, %3390 ], [ %3439, %3424 ], [ 1.000000e+00, %3237 ]
  %3445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3446 = extractvalue %dx.types.CBufRet.i32 %3445, 1
  %3447 = and i32 %3446, 1
  %3448 = icmp ne i32 %3447, 0
  %3449 = add i32 %43, 356
  %3450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3451 = extractvalue %dx.types.ResRet.i32 %3450, 0
  %3452 = and i32 %3451, 32
  %3453 = icmp ne i32 %3452, 0
  %3454 = and i1 %3448, %3453
  %3455 = select i1 %3454, float 1.000000e+00, float %3442
  %3456 = select i1 %3454, float 0x3FD3333340000000, float %3443
  %3457 = select i1 %3454, float 0x3FD3333340000000, float %3444
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = and i32 %3459, 32
  %3461 = icmp eq i32 %3460, 0
  br i1 %3461, label %3534, label %3462

; <label>:3462                                    ; preds = %3440
  %3463 = add i32 %43, 140
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = add i32 %43, 404
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = add i32 %3468, 0
  %3470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3470, %dx.types.Handle %95, float %3162, float %3163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3472 = extractvalue %dx.types.ResRet.f32 %3471, 0
  %3473 = extractvalue %dx.types.ResRet.f32 %3471, 1
  %3474 = extractvalue %dx.types.ResRet.f32 %3471, 2
  %3475 = extractvalue %dx.types.ResRet.f32 %3471, 3
  %3476 = and i32 %3465, 255
  %3477 = uitofp i32 %3476 to float
  %3478 = lshr i32 %3465, 8
  %3479 = and i32 %3478, 255
  %3480 = uitofp i32 %3479 to float
  %3481 = lshr i32 %3465, 16
  %3482 = and i32 %3481, 255
  %3483 = uitofp i32 %3482 to float
  %3484 = fmul fast float %3483, 0x3F70101000000000
  %3485 = fmul fast float %3472, %3477
  %3486 = fadd fast float %3485, %3480
  %3487 = fmul fast float %3486, 0x3F70101000000000
  %3488 = fadd fast float %3473, -5.000000e-01
  %3489 = fadd fast float %3475, -5.000000e-01
  %3490 = fmul fast float %3488, %3484
  %3491 = fmul fast float %3489, %3484
  %3492 = fadd fast float %3490, 5.000000e-01
  %3493 = fadd fast float %3491, 5.000000e-01
  %3494 = fmul fast float %3492, 2.000000e+00
  %3495 = fadd fast float %3494, -1.000000e+00
  %3496 = fmul fast float %3493, 2.000000e+00
  %3497 = fadd fast float %3496, -1.000000e+00
  %3498 = fadd fast float %3495, %3497
  %3499 = fmul fast float %3498, 5.000000e-01
  %3500 = fsub fast float %3495, %3497
  %3501 = fmul fast float %3500, 5.000000e-01
  %3502 = call float @dx.op.unary.f32(i32 6, float %3499)  ; FAbs(value)
  %3503 = fsub fast float 1.000000e+00, %3502
  %3504 = call float @dx.op.unary.f32(i32 6, float %3501)  ; FAbs(value)
  %3505 = fsub fast float %3503, %3504
  %3506 = call float @dx.op.dot3.f32(i32 55, float %3499, float %3501, float %3505, float %3499, float %3501, float %3505)  ; Dot3(ax,ay,az,bx,by,bz)
  %3507 = call float @dx.op.unary.f32(i32 25, float %3506)  ; Rsqrt(value)
  %3508 = fmul fast float %3499, %3507
  %3509 = fmul fast float %3501, %3507
  %3510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.i32 %3510, 0
  %3512 = and i32 %3511, 67108864
  %3513 = icmp eq i32 %3512, 0
  br i1 %3513, label %3530, label %3514

; <label>:3514                                    ; preds = %3462
  %3515 = add i32 %43, 328
  %3516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.i32 %3516, 0
  %3518 = and i32 %3517, 65535
  %3519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3518)  ; LegacyF16ToF32(value)
  %3520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.i32 %3520, 0
  %3522 = and i32 %3521, 65535
  %3523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3522)  ; LegacyF16ToF32(value)
  %3524 = lshr i32 %3517, 16
  %3525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3524)  ; LegacyF16ToF32(value)
  %3526 = fsub fast float %3487, %3525
  %3527 = fmul fast float %3526, %3519
  %3528 = fadd fast float %3527, %3523
  %3529 = call float @dx.op.unary.f32(i32 7, float %3528)  ; Saturate(value)
  br label %3530

; <label>:3530                                    ; preds = %3514, %3462
  %3531 = phi float [ %3529, %3514 ], [ %3487, %3462 ]
  %3532 = call float @dx.op.dot2.f32(i32 54, float %3508, float %3509, float %3066, float %3067)  ; Dot2(ax,ay,bx,by)
  %3533 = call float @dx.op.dot2.f32(i32 54, float %3508, float %3509, float %3068, float %3069)  ; Dot2(ax,ay,bx,by)
  br label %3534

; <label>:3534                                    ; preds = %3530, %3440
  %3535 = phi float [ %3531, %3530 ], [ 0x3FD6666660000000, %3440 ]
  %3536 = phi float [ %3532, %3530 ], [ 0.000000e+00, %3440 ]
  %3537 = phi float [ %3533, %3530 ], [ 0.000000e+00, %3440 ]
  %3538 = phi float [ %3474, %3530 ], [ 1.000000e+00, %3440 ]
  %3539 = add i32 %43, 208
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = lshr i32 %3541, 22
  %3543 = shl nuw nsw i32 %3542, 5
  %3544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3543)  ; LegacyF16ToF32(value)
  %3545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.i32 %3545, 0
  %3547 = and i32 %3546, 64
  %3548 = icmp eq i32 %3547, 0
  br i1 %3548, label %3582, label %3549

; <label>:3549                                    ; preds = %3534
  %3550 = add i32 %43, 420
  %3551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3550, i32 undef)  ; BufferLoad(srv,index,wot)
  %3552 = extractvalue %dx.types.ResRet.i32 %3551, 0
  %3553 = add i32 %3552, 0
  %3554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3553, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = and i32 %3556, 131072
  %3558 = icmp eq i32 %3557, 0
  %3559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3554, %dx.types.Handle %95, float %3162, float %3163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3560 = extractvalue %dx.types.ResRet.f32 %3559, 0
  %3561 = extractvalue %dx.types.ResRet.f32 %3559, 1
  %3562 = extractvalue %dx.types.ResRet.f32 %3559, 2
  %3563 = fmul fast float %3560, %395
  %3564 = fmul fast float %3561, %398
  %3565 = fmul fast float %3562, %401
  br i1 %3558, label %3572, label %3566

; <label>:3566                                    ; preds = %3549
  %3567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3568 = extractvalue %dx.types.CBufRet.f32 %3567, 0
  %3569 = fmul fast float %3568, %3563
  %3570 = fmul fast float %3568, %3564
  %3571 = fmul fast float %3568, %3565
  br label %3572

; <label>:3572                                    ; preds = %3566, %3549
  %3573 = phi float [ %3569, %3566 ], [ %3563, %3549 ]
  %3574 = phi float [ %3570, %3566 ], [ %3564, %3549 ]
  %3575 = phi float [ %3571, %3566 ], [ %3565, %3549 ]
  %3576 = fmul fast float %3573, %3544
  %3577 = select i1 %252, float %3576, float %3573
  %3578 = call float @dx.op.dot3.f32(i32 55, float %3577, float %3574, float %3575, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3579 = select i1 %252, float 0.000000e+00, float %3573
  %3580 = select i1 %252, float %3578, float %3574
  %3581 = select i1 %252, float 0.000000e+00, float %3575
  br label %3582

; <label>:3582                                    ; preds = %3572, %3534
  %3583 = phi float [ %3579, %3572 ], [ 0.000000e+00, %3534 ]
  %3584 = phi float [ %3580, %3572 ], [ 0.000000e+00, %3534 ]
  %3585 = phi float [ %3581, %3572 ], [ 0.000000e+00, %3534 ]
  %3586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.i32 %3586, 0
  %3588 = and i32 %3587, 1024
  %3589 = icmp eq i32 %3588, 0
  br i1 %3589, label %3620, label %3590

; <label>:3590                                    ; preds = %3582
  %3591 = add i32 %43, 200
  %3592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.i32 %3592, 0
  %3594 = and i32 %3593, 255
  %3595 = uitofp i32 %3594 to float
  %3596 = fmul fast float %3595, 0x3F70101020000000
  %3597 = lshr i32 %3593, 8
  %3598 = and i32 %3597, 255
  %3599 = uitofp i32 %3598 to float
  %3600 = fmul fast float %3599, 0x3F70101020000000
  %3601 = lshr i32 %3593, 16
  %3602 = and i32 %3601, 255
  %3603 = uitofp i32 %3602 to float
  %3604 = fmul fast float %3603, 0x3F70101020000000
  %3605 = fmul fast float %3596, %3596
  %3606 = fmul fast float %3600, %3600
  %3607 = fmul fast float %3604, %3604
  %3608 = add i32 %43, 488
  %3609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.i32 %3609, 0
  %3611 = add i32 %3610, 0
  %3612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3611, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3613 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3612, %dx.types.Handle %96, float %3162, float %3163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3617 = fmul fast float %3605, %3614
  %3618 = fmul fast float %3606, %3615
  %3619 = fmul fast float %3607, %3616
  br label %3620

; <label>:3620                                    ; preds = %3590, %3582
  %3621 = phi float [ %3617, %3590 ], [ 0.000000e+00, %3582 ]
  %3622 = phi float [ %3618, %3590 ], [ 0.000000e+00, %3582 ]
  %3623 = phi float [ %3619, %3590 ], [ 0.000000e+00, %3582 ]
  %3624 = fcmp fast ogt float %3621, 0.000000e+00
  %3625 = fcmp fast ogt float %3622, 0.000000e+00
  %3626 = fcmp fast ogt float %3623, 0.000000e+00
  %3627 = call float @dx.op.unary.f32(i32 23, float %3621)  ; Log(value)
  %3628 = call float @dx.op.unary.f32(i32 23, float %3622)  ; Log(value)
  %3629 = call float @dx.op.unary.f32(i32 23, float %3623)  ; Log(value)
  %3630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.i32 %3630, 0
  %3632 = lshr i32 %3631, 7
  %3633 = and i32 %3632, 32752
  %3634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3633)  ; LegacyF16ToF32(value)
  %3635 = fmul fast float %3627, 0xBFE62E4300000000
  %3636 = fmul fast float %3635, %3634
  %3637 = fmul fast float %3628, 0xBFE62E4300000000
  %3638 = fmul fast float %3637, %3634
  %3639 = fmul fast float %3629, 0xBFE62E4300000000
  %3640 = fmul fast float %3639, %3634
  %3641 = select i1 %3624, float %3636, float 1.270000e+02
  %3642 = select i1 %3625, float %3638, float 1.270000e+02
  %3643 = select i1 %3626, float %3640, float 1.270000e+02
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = and i32 %3645, 10240
  %3647 = icmp eq i32 %3646, 0
  br i1 %3647, label %3692, label %3648

; <label>:3648                                    ; preds = %3620
  %3649 = add i32 %43, 504
  %3650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.i32 %3650, 0
  %3652 = add i32 %3651, 0
  %3653 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3652, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3654 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3653, %dx.types.Handle %96, float %3162, float %3163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3655 = extractvalue %dx.types.ResRet.f32 %3654, 1
  %3656 = extractvalue %dx.types.ResRet.f32 %3654, 3
  %3657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.i32 %3657, 0
  %3659 = and i32 %3658, 1048576
  %3660 = icmp ne i32 %3659, 0
  %3661 = and i32 %3658, 8192
  %3662 = icmp eq i32 %3661, 0
  br i1 %3662, label %3678, label %3663

; <label>:3663                                    ; preds = %3648
  %3664 = extractvalue %dx.types.ResRet.f32 %3654, 2
  %3665 = select i1 %3660, float %3664, float %3655
  %3666 = extractvalue %dx.types.ResRet.f32 %3654, 0
  %3667 = select i1 %3660, float %3666, float %3655
  %3668 = add i32 %43, 144
  %3669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3668, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.i32 %3669, 0
  %3671 = lshr i32 %3670, 16
  %3672 = and i32 %3671, 255
  %3673 = uitofp i32 %3672 to float
  %3674 = fmul fast float %3673, 0x3F80101020000000
  %3675 = fmul fast float %3674, %3667
  %3676 = fmul fast float %3674, %3655
  %3677 = fmul fast float %3674, %3665
  br label %3678

; <label>:3678                                    ; preds = %3663, %3648
  %3679 = phi float [ %3675, %3663 ], [ 0.000000e+00, %3648 ]
  %3680 = phi float [ %3676, %3663 ], [ 0.000000e+00, %3648 ]
  %3681 = phi float [ %3677, %3663 ], [ 0.000000e+00, %3648 ]
  %3682 = and i32 %3658, 2048
  %3683 = icmp eq i32 %3682, 0
  br i1 %3683, label %3692, label %3684

; <label>:3684                                    ; preds = %3678
  %3685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3686 = extractvalue %dx.types.ResRet.i32 %3685, 0
  %3687 = shl i32 %3686, 4
  %3688 = and i32 %3687, 32752
  %3689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3688)  ; LegacyF16ToF32(value)
  %3690 = fmul fast float %3689, %3656
  %3691 = call float @dx.op.binary.f32(i32 35, float %3690, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3692

; <label>:3692                                    ; preds = %3684, %3678, %3620
  %3693 = phi float [ %3679, %3684 ], [ %3679, %3678 ], [ 0.000000e+00, %3620 ]
  %3694 = phi float [ %3680, %3684 ], [ %3680, %3678 ], [ 0.000000e+00, %3620 ]
  %3695 = phi float [ %3681, %3684 ], [ %3681, %3678 ], [ 0.000000e+00, %3620 ]
  %3696 = phi float [ %3691, %3684 ], [ 0x3F70101020000000, %3678 ], [ 0x3F70101020000000, %3620 ]
  %3697 = add i32 %43, 144
  %3698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3697, i32 undef)  ; BufferLoad(srv,index,wot)
  %3699 = extractvalue %dx.types.ResRet.i32 %3698, 0
  %3700 = and i32 %3699, 255
  %3701 = uitofp i32 %3700 to float
  %3702 = lshr i32 %3699, 8
  %3703 = and i32 %3702, 255
  %3704 = uitofp i32 %3703 to float
  %3705 = call float @dx.op.dot3.f32(i32 55, float %3455, float %3456, float %3457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3706 = fmul fast float %3704, %3705
  %3707 = fadd fast float %3706, %3701
  %3708 = fmul fast float %3707, 0x3F70101020000000
  %3709 = call float @dx.op.unary.f32(i32 7, float %3708)  ; Saturate(value)
  br i1 %3054, label %3710, label %3745

; <label>:3710                                    ; preds = %3692
  %3711 = fmul fast float %3696, 2.000000e+00
  %3712 = fcmp fast olt float %3641, 1.270000e+02
  %3713 = fcmp fast olt float %3642, 1.270000e+02
  %3714 = fcmp fast olt float %3643, 1.270000e+02
  %3715 = fmul fast float %3641, 0xBFF7154760000000
  %3716 = fmul fast float %3715, %3711
  %3717 = fmul fast float %3642, 0xBFF7154760000000
  %3718 = fmul fast float %3717, %3711
  %3719 = fmul fast float %3643, 0xBFF7154760000000
  %3720 = fmul fast float %3719, %3711
  %3721 = call float @dx.op.unary.f32(i32 21, float %3716)  ; Exp(value)
  %3722 = call float @dx.op.unary.f32(i32 21, float %3718)  ; Exp(value)
  %3723 = call float @dx.op.unary.f32(i32 21, float %3720)  ; Exp(value)
  %3724 = call float @dx.op.unary.f32(i32 7, float %3721)  ; Saturate(value)
  %3725 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3726 = call float @dx.op.unary.f32(i32 7, float %3723)  ; Saturate(value)
  %3727 = fadd fast float %3724, -1.000000e+00
  %3728 = select i1 %3712, float %3727, float -1.000000e+00
  %3729 = fadd fast float %3725, -1.000000e+00
  %3730 = select i1 %3713, float %3729, float -1.000000e+00
  %3731 = fadd fast float %3726, -1.000000e+00
  %3732 = select i1 %3714, float %3731, float -1.000000e+00
  %3733 = fmul fast float %3728, %3235
  %3734 = fmul fast float %3730, %3235
  %3735 = fmul fast float %3732, %3235
  %3736 = fadd fast float %3733, 1.000000e+00
  %3737 = fadd fast float %3734, 1.000000e+00
  %3738 = fadd fast float %3735, 1.000000e+00
  %3739 = fmul fast float %3736, %3036
  %3740 = fmul fast float %3737, %3037
  %3741 = fmul fast float %3738, %3038
  %3742 = fmul fast float %3736, %3039
  %3743 = fmul fast float %3737, %3040
  %3744 = fmul fast float %3738, %3041
  br label %3745

; <label>:3745                                    ; preds = %3710, %3692
  %3746 = phi float [ %3739, %3710 ], [ %3036, %3692 ]
  %3747 = phi float [ %3740, %3710 ], [ %3037, %3692 ]
  %3748 = phi float [ %3741, %3710 ], [ %3038, %3692 ]
  %3749 = phi float [ %3742, %3710 ], [ %3039, %3692 ]
  %3750 = phi float [ %3743, %3710 ], [ %3040, %3692 ]
  %3751 = phi float [ %3744, %3710 ], [ %3041, %3692 ]
  %3752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.i32 %3752, 0
  %3754 = and i32 %3753, 3
  %3755 = icmp eq i32 %3754, 3
  br i1 %3755, label %3834, label %3756

; <label>:3756                                    ; preds = %3745
  %3757 = and i32 %3753, 16
  %3758 = icmp ne i32 %3757, 0
  %3759 = select i1 %3758, float %3235, float 0.000000e+00
  %3760 = icmp eq i32 %3754, 0
  br i1 %3760, label %3761, label %3789

; <label>:3761                                    ; preds = %3756
  %3762 = and i32 %3753, 64
  %3763 = icmp ne i32 %3762, 0
  %3764 = select i1 %3763, float %3235, float 0.000000e+00
  %3765 = fsub fast float %3455, %3746
  %3766 = fsub fast float %3456, %3747
  %3767 = fsub fast float %3457, %3748
  %3768 = fmul fast float %3759, %3765
  %3769 = fmul fast float %3759, %3766
  %3770 = fmul fast float %3759, %3767
  %3771 = fadd fast float %3768, %3746
  %3772 = fadd fast float %3769, %3747
  %3773 = fadd fast float %3770, %3748
  %3774 = fsub fast float %3441, %3048
  %3775 = fmul fast float %3759, %3774
  %3776 = fadd fast float %3775, %3048
  %3777 = fsub fast float %3583, %3749
  %3778 = fsub fast float %3584, %3750
  %3779 = fsub fast float %3585, %3751
  %3780 = fmul fast float %3764, %3777
  %3781 = fmul fast float %3764, %3778
  %3782 = fmul fast float %3764, %3779
  %3783 = fadd fast float %3780, %3749
  %3784 = fadd fast float %3781, %3750
  %3785 = fadd fast float %3782, %3751
  %3786 = fsub fast float %3709, %3052
  %3787 = fmul fast float %3759, %3786
  %3788 = fadd fast float %3787, %3052
  br label %3834

; <label>:3789                                    ; preds = %3756
  %3790 = icmp eq i32 %3754, 1
  br i1 %3790, label %3791, label %3804

; <label>:3791                                    ; preds = %3789
  %3792 = fadd fast float %3455, -1.000000e+00
  %3793 = fadd fast float %3456, -1.000000e+00
  %3794 = fadd fast float %3457, -1.000000e+00
  %3795 = fmul fast float %3759, %3792
  %3796 = fmul fast float %3759, %3793
  %3797 = fmul fast float %3759, %3794
  %3798 = fadd fast float %3795, 1.000000e+00
  %3799 = fadd fast float %3796, 1.000000e+00
  %3800 = fadd fast float %3797, 1.000000e+00
  %3801 = fmul fast float %3798, %3746
  %3802 = fmul fast float %3799, %3747
  %3803 = fmul fast float %3800, %3748
  br label %3834

; <label>:3804                                    ; preds = %3789
  %3805 = icmp eq i32 %3754, 2
  br i1 %3805, label %3806, label %3834

; <label>:3806                                    ; preds = %3804
  %3807 = call float @dx.op.unary.f32(i32 24, float %3455)  ; Sqrt(value)
  %3808 = call float @dx.op.unary.f32(i32 24, float %3456)  ; Sqrt(value)
  %3809 = call float @dx.op.unary.f32(i32 24, float %3457)  ; Sqrt(value)
  %3810 = fadd fast float %3807, -5.000000e-01
  %3811 = fadd fast float %3808, -5.000000e-01
  %3812 = fadd fast float %3809, -5.000000e-01
  %3813 = fmul fast float %3810, %3759
  %3814 = fmul fast float %3811, %3759
  %3815 = fmul fast float %3812, %3759
  %3816 = fadd fast float %3813, 5.000000e-01
  %3817 = fadd fast float %3814, 5.000000e-01
  %3818 = fadd fast float %3815, 5.000000e-01
  %3819 = fmul fast float %3816, 2.000000e+00
  %3820 = fsub fast float 1.000000e+00, %3819
  %3821 = fmul fast float %3820, %3746
  %3822 = fadd fast float %3821, %3819
  %3823 = fmul fast float %3822, %3746
  %3824 = fmul fast float %3817, 2.000000e+00
  %3825 = fsub fast float 1.000000e+00, %3824
  %3826 = fmul fast float %3825, %3747
  %3827 = fadd fast float %3826, %3824
  %3828 = fmul fast float %3827, %3747
  %3829 = fmul fast float %3818, 2.000000e+00
  %3830 = fsub fast float 1.000000e+00, %3829
  %3831 = fmul fast float %3830, %3748
  %3832 = fadd fast float %3831, %3829
  %3833 = fmul fast float %3832, %3748
  br label %3834

; <label>:3834                                    ; preds = %3806, %3804, %3791, %3761, %3745
  %3835 = phi float [ %3746, %3745 ], [ %3823, %3806 ], [ %3746, %3804 ], [ %3801, %3791 ], [ %3771, %3761 ]
  %3836 = phi float [ %3747, %3745 ], [ %3828, %3806 ], [ %3747, %3804 ], [ %3802, %3791 ], [ %3772, %3761 ]
  %3837 = phi float [ %3748, %3745 ], [ %3833, %3806 ], [ %3748, %3804 ], [ %3803, %3791 ], [ %3773, %3761 ]
  %3838 = phi float [ %3749, %3745 ], [ %3749, %3806 ], [ %3749, %3804 ], [ %3749, %3791 ], [ %3783, %3761 ]
  %3839 = phi float [ %3750, %3745 ], [ %3750, %3806 ], [ %3750, %3804 ], [ %3750, %3791 ], [ %3784, %3761 ]
  %3840 = phi float [ %3751, %3745 ], [ %3751, %3806 ], [ %3751, %3804 ], [ %3751, %3791 ], [ %3785, %3761 ]
  %3841 = phi float [ %3048, %3745 ], [ %3048, %3806 ], [ %3048, %3804 ], [ %3048, %3791 ], [ %3776, %3761 ]
  %3842 = phi float [ %3052, %3745 ], [ %3052, %3806 ], [ %3052, %3804 ], [ %3052, %3791 ], [ %3788, %3761 ]
  %3843 = and i32 %3753, 12
  %3844 = icmp eq i32 %3843, 12
  br i1 %3844, label %3975, label %3845

; <label>:3845                                    ; preds = %3834
  %3846 = and i32 %3753, 2097184
  %3847 = icmp eq i32 %3846, 2097184
  %3848 = select i1 %3847, float %3235, float 0.000000e+00
  %3849 = and i32 %3753, 4194336
  %3850 = icmp eq i32 %3849, 4194336
  %3851 = select i1 %3850, float %3235, float 0.000000e+00
  %3852 = and i32 %3753, 8388640
  %3853 = icmp eq i32 %3852, 8388640
  %3854 = select i1 %3853, float %3235, float 0.000000e+00
  %3855 = and i32 %3753, 1024
  %3856 = icmp ne i32 %3855, 0
  %3857 = select i1 %3856, float %3235, float 0.000000e+00
  %3858 = and i32 %3753, 2048
  %3859 = icmp ne i32 %3858, 0
  %3860 = select i1 %3859, float %3235, float 0.000000e+00
  %3861 = and i32 %3753, 8192
  %3862 = icmp ne i32 %3861, 0
  %3863 = select i1 %3862, float %3235, float 0.000000e+00
  %3864 = icmp eq i32 %3843, 0
  br i1 %3864, label %3865, label %3899

; <label>:3865                                    ; preds = %3845
  %3866 = fsub fast float %3536, %3034
  %3867 = fsub fast float %3537, %3035
  %3868 = fmul fast float %3848, %3866
  %3869 = fmul fast float %3848, %3867
  %3870 = fadd fast float %3868, %3034
  %3871 = fadd fast float %3869, %3035
  %3872 = fsub fast float %3538, %3050
  %3873 = fmul fast float %3851, %3872
  %3874 = fadd fast float %3873, %3050
  %3875 = fsub fast float %3535, %3049
  %3876 = fmul fast float %3854, %3875
  %3877 = fadd fast float %3876, %3049
  %3878 = fsub fast float %3641, %3042
  %3879 = fsub fast float %3642, %3043
  %3880 = fsub fast float %3643, %3044
  %3881 = fmul fast float %3857, %3878
  %3882 = fmul fast float %3857, %3879
  %3883 = fmul fast float %3857, %3880
  %3884 = fadd fast float %3881, %3042
  %3885 = fadd fast float %3882, %3043
  %3886 = fadd fast float %3883, %3044
  %3887 = fsub fast float %3696, %3051
  %3888 = fmul fast float %3860, %3887
  %3889 = fadd fast float %3888, %3051
  %3890 = fsub fast float %3693, %3045
  %3891 = fsub fast float %3694, %3046
  %3892 = fsub fast float %3695, %3047
  %3893 = fmul fast float %3863, %3890
  %3894 = fmul fast float %3863, %3891
  %3895 = fmul fast float %3863, %3892
  %3896 = fadd fast float %3893, %3045
  %3897 = fadd fast float %3894, %3046
  %3898 = fadd fast float %3895, %3047
  br label %3975

; <label>:3899                                    ; preds = %3845
  %3900 = icmp eq i32 %3843, 4
  br i1 %3900, label %3901, label %3947

; <label>:3901                                    ; preds = %3899
  %3902 = fmul fast float %3848, %3536
  %3903 = fmul fast float %3848, %3537
  %3904 = fadd fast float %3902, %3034
  %3905 = fadd fast float %3903, %3035
  %3906 = call float @dx.op.binary.f32(i32 36, float %3050, float %3538)  ; FMin(a,b)
  %3907 = fsub fast float %3906, %3050
  %3908 = fmul fast float %3907, %3851
  %3909 = fadd fast float %3908, %3050
  %3910 = fadd fast float %3535, %3049
  %3911 = fmul fast float %3910, 0x3FF337FAE0000000
  %3912 = fmul fast float %3049, %3049
  %3913 = fmul fast float %3535, %3535
  %3914 = fadd fast float %3913, %3912
  %3915 = fmul fast float %3914, 0x3FE5152B00000000
  %3916 = fmul fast float %3049, 0xBFCC1F85E0000000
  %3917 = fmul fast float %3916, %3535
  %3918 = fadd fast float %3917, 0xBFE1363700000000
  %3919 = fadd fast float %3918, %3911
  %3920 = fsub fast float %3919, %3915
  %3921 = fmul fast float %3910, 0x3FBA6F0D00000000
  %3922 = fmul fast float %3914, 0x3FD0432880000000
  %3923 = fmul fast float %3049, 0xBFEF110800000000
  %3924 = fmul fast float %3923, %3535
  %3925 = fadd fast float %3924, 1.000000e+00
  %3926 = fsub fast float %3925, %3921
  %3927 = fadd fast float %3926, %3922
  %3928 = fdiv fast float %3920, %3927
  %3929 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3930 = fsub fast float %3929, %3049
  %3931 = fmul fast float %3930, %3854
  %3932 = fadd fast float %3931, %3049
  %3933 = fmul fast float %3857, %3641
  %3934 = fmul fast float %3857, %3642
  %3935 = fmul fast float %3857, %3643
  %3936 = fadd fast float %3933, %3042
  %3937 = fadd fast float %3934, %3043
  %3938 = fadd fast float %3935, %3044
  %3939 = fmul fast float %3860, %3696
  %3940 = fadd fast float %3939, %3051
  %3941 = fmul fast float %3863, %3693
  %3942 = fmul fast float %3863, %3694
  %3943 = fmul fast float %3863, %3695
  %3944 = fadd fast float %3941, %3045
  %3945 = fadd fast float %3942, %3046
  %3946 = fadd fast float %3943, %3047
  br label %3975

; <label>:3947                                    ; preds = %3899
  %3948 = icmp eq i32 %3843, 8
  br i1 %3948, label %3949, label %3975

; <label>:3949                                    ; preds = %3947
  %3950 = fmul fast float %3848, %3536
  %3951 = fmul fast float %3848, %3537
  %3952 = fadd fast float %3950, %3034
  %3953 = fadd fast float %3951, %3035
  %3954 = call float @dx.op.binary.f32(i32 36, float %3050, float %3538)  ; FMin(a,b)
  %3955 = fsub fast float %3954, %3050
  %3956 = fmul fast float %3955, %3851
  %3957 = fadd fast float %3956, %3050
  %3958 = fsub fast float %3535, %3049
  %3959 = fmul fast float %3854, %3958
  %3960 = fadd fast float %3959, %3049
  %3961 = fmul fast float %3857, %3641
  %3962 = fmul fast float %3857, %3642
  %3963 = fmul fast float %3857, %3643
  %3964 = fadd fast float %3961, %3042
  %3965 = fadd fast float %3962, %3043
  %3966 = fadd fast float %3963, %3044
  %3967 = fmul fast float %3860, %3696
  %3968 = fadd fast float %3967, %3051
  %3969 = fmul fast float %3863, %3693
  %3970 = fmul fast float %3863, %3694
  %3971 = fmul fast float %3863, %3695
  %3972 = fadd fast float %3969, %3045
  %3973 = fadd fast float %3970, %3046
  %3974 = fadd fast float %3971, %3047
  br label %3975

; <label>:3975                                    ; preds = %3949, %3947, %3901, %3865, %3834, %3234, %3053, %3033
  %3976 = phi float [ %3034, %3834 ], [ %3034, %3234 ], [ %3034, %3033 ], [ %3034, %3053 ], [ %3870, %3865 ], [ %3904, %3901 ], [ %3034, %3947 ], [ %3952, %3949 ]
  %3977 = phi float [ %3035, %3834 ], [ %3035, %3234 ], [ %3035, %3033 ], [ %3035, %3053 ], [ %3871, %3865 ], [ %3905, %3901 ], [ %3035, %3947 ], [ %3953, %3949 ]
  %3978 = phi float [ %3835, %3834 ], [ %3036, %3234 ], [ %3036, %3033 ], [ %3036, %3053 ], [ %3835, %3865 ], [ %3835, %3901 ], [ %3835, %3947 ], [ %3835, %3949 ]
  %3979 = phi float [ %3836, %3834 ], [ %3037, %3234 ], [ %3037, %3033 ], [ %3037, %3053 ], [ %3836, %3865 ], [ %3836, %3901 ], [ %3836, %3947 ], [ %3836, %3949 ]
  %3980 = phi float [ %3837, %3834 ], [ %3038, %3234 ], [ %3038, %3033 ], [ %3038, %3053 ], [ %3837, %3865 ], [ %3837, %3901 ], [ %3837, %3947 ], [ %3837, %3949 ]
  %3981 = phi float [ %3838, %3834 ], [ %3039, %3234 ], [ %3039, %3033 ], [ %3039, %3053 ], [ %3838, %3865 ], [ %3838, %3901 ], [ %3838, %3947 ], [ %3838, %3949 ]
  %3982 = phi float [ %3839, %3834 ], [ %3040, %3234 ], [ %3040, %3033 ], [ %3040, %3053 ], [ %3839, %3865 ], [ %3839, %3901 ], [ %3839, %3947 ], [ %3839, %3949 ]
  %3983 = phi float [ %3840, %3834 ], [ %3041, %3234 ], [ %3041, %3033 ], [ %3041, %3053 ], [ %3840, %3865 ], [ %3840, %3901 ], [ %3840, %3947 ], [ %3840, %3949 ]
  %3984 = phi float [ %3042, %3834 ], [ %3042, %3234 ], [ %3042, %3033 ], [ %3042, %3053 ], [ %3884, %3865 ], [ %3936, %3901 ], [ %3042, %3947 ], [ %3964, %3949 ]
  %3985 = phi float [ %3043, %3834 ], [ %3043, %3234 ], [ %3043, %3033 ], [ %3043, %3053 ], [ %3885, %3865 ], [ %3937, %3901 ], [ %3043, %3947 ], [ %3965, %3949 ]
  %3986 = phi float [ %3044, %3834 ], [ %3044, %3234 ], [ %3044, %3033 ], [ %3044, %3053 ], [ %3886, %3865 ], [ %3938, %3901 ], [ %3044, %3947 ], [ %3966, %3949 ]
  %3987 = phi float [ %3045, %3834 ], [ %3045, %3234 ], [ %3045, %3033 ], [ %3045, %3053 ], [ %3896, %3865 ], [ %3944, %3901 ], [ %3045, %3947 ], [ %3972, %3949 ]
  %3988 = phi float [ %3046, %3834 ], [ %3046, %3234 ], [ %3046, %3033 ], [ %3046, %3053 ], [ %3897, %3865 ], [ %3945, %3901 ], [ %3046, %3947 ], [ %3973, %3949 ]
  %3989 = phi float [ %3047, %3834 ], [ %3047, %3234 ], [ %3047, %3033 ], [ %3047, %3053 ], [ %3898, %3865 ], [ %3946, %3901 ], [ %3047, %3947 ], [ %3974, %3949 ]
  %3990 = phi float [ %3841, %3834 ], [ %3048, %3234 ], [ %3048, %3033 ], [ %3048, %3053 ], [ %3841, %3865 ], [ %3841, %3901 ], [ %3841, %3947 ], [ %3841, %3949 ]
  %3991 = phi float [ %3049, %3834 ], [ %3049, %3234 ], [ %3049, %3033 ], [ %3049, %3053 ], [ %3877, %3865 ], [ %3932, %3901 ], [ %3049, %3947 ], [ %3960, %3949 ]
  %3992 = phi float [ %3050, %3834 ], [ %3050, %3234 ], [ %3050, %3033 ], [ %3050, %3053 ], [ %3874, %3865 ], [ %3909, %3901 ], [ %3050, %3947 ], [ %3957, %3949 ]
  %3993 = phi float [ %3051, %3834 ], [ %3051, %3234 ], [ %3051, %3033 ], [ %3051, %3053 ], [ %3889, %3865 ], [ %3940, %3901 ], [ %3051, %3947 ], [ %3968, %3949 ]
  %3994 = phi float [ %3842, %3834 ], [ %3052, %3234 ], [ %3052, %3033 ], [ %3052, %3053 ], [ %3842, %3865 ], [ %3842, %3901 ], [ %3842, %3947 ], [ %3842, %3949 ]
  %3995 = add i32 %43, 360
  %3996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3995, i32 undef)  ; BufferLoad(srv,index,wot)
  %3997 = extractvalue %dx.types.ResRet.i32 %3996, 0
  %3998 = extractvalue %dx.types.ResRet.i32 %3996, 1
  %3999 = bitcast i32 %3997 to float
  %4000 = bitcast i32 %3998 to float
  %4001 = fcmp fast oge float %3999, 0.000000e+00
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 0
  %4004 = select i1 %4001, float %3999, float %4003
  %4005 = fadd fast float %4004, %192
  %4006 = fmul fast float %4000, %193
  %4007 = add i32 %43, 456
  %4008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4007, i32 undef)  ; BufferLoad(srv,index,wot)
  %4009 = extractvalue %dx.types.ResRet.i32 %4008, 0
  %4010 = add i32 %4009, 0
  %4011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4012 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4011, %dx.types.Handle %96, float %81, float %82, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4013 = extractvalue %dx.types.ResRet.f32 %4012, 0
  %4014 = fmul fast float %4006, %4013
  %4015 = fadd fast float %4005, %4014
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 0
  %4018 = and i32 %184, 65535
  %4019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4018)  ; LegacyF16ToF32(value)
  %4020 = lshr i32 %184, 16
  %4021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4020)  ; LegacyF16ToF32(value)
  %4022 = and i32 %185, 65535
  %4023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4022)  ; LegacyF16ToF32(value)
  %4024 = fmul fast float %4019, %3978
  %4025 = fmul fast float %4021, %3979
  %4026 = fmul fast float %4023, %3980
  %4027 = shl i32 %186, 4
  %4028 = and i32 %4027, 32752
  %4029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4028)  ; LegacyF16ToF32(value)
  %4030 = lshr i32 %186, 7
  %4031 = and i32 %4030, 32752
  %4032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4031)  ; LegacyF16ToF32(value)
  %4033 = lshr i32 %186, 22
  %4034 = shl nuw nsw i32 %4033, 5
  %4035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4034)  ; LegacyF16ToF32(value)
  %4036 = and i32 %187, 65535
  %4037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4036)  ; LegacyF16ToF32(value)
  %4038 = fmul fast float %4017, %3981
  %4039 = fmul fast float %4038, %4029
  %4040 = fmul fast float %4039, %4037
  %4041 = fmul fast float %4017, %3982
  %4042 = fmul fast float %4041, %4032
  %4043 = fmul fast float %4042, %4037
  %4044 = fmul fast float %4017, %3983
  %4045 = fmul fast float %4044, %4035
  %4046 = fmul fast float %4045, %4037
  %4047 = call float @dx.op.dot2.f32(i32 54, float %3976, float %3977, float %3976, float %3977)  ; Dot2(ax,ay,bx,by)
  %4048 = fmul fast float %4047, 0x3FE3333340000000
  %4049 = fsub fast float 1.000000e+00, %4048
  %4050 = call float @dx.op.dot3.f32(i32 55, float %3976, float %3977, float %4049, float %3976, float %3977, float %4049)  ; Dot3(ax,ay,az,bx,by,bz)
  %4051 = call float @dx.op.unary.f32(i32 25, float %4050)  ; Rsqrt(value)
  %4052 = fmul fast float %4051, %3976
  %4053 = fmul fast float %4051, %3977
  %4054 = fmul fast float %4049, %4051
  %4055 = fmul fast float %4054, %106
  %4056 = fmul fast float %4054, %107
  %4057 = fmul fast float %4054, %108
  %4058 = fmul fast float %4052, %74
  %4059 = fmul fast float %4052, %75
  %4060 = fmul fast float %4052, %76
  %4061 = fadd fast float %4055, %4058
  %4062 = fadd fast float %4056, %4059
  %4063 = fadd fast float %4057, %4060
  %4064 = fmul fast float %118, %4053
  %4065 = fmul fast float %119, %4053
  %4066 = fmul fast float %120, %4053
  %4067 = fadd fast float %4061, %4064
  %4068 = fadd fast float %4062, %4065
  %4069 = fadd fast float %4063, %4066
  %4070 = call float @dx.op.dot3.f32(i32 55, float %4067, float %4068, float %4069, float %4067, float %4068, float %4069)  ; Dot3(ax,ay,az,bx,by,bz)
  %4071 = call float @dx.op.unary.f32(i32 25, float %4070)  ; Rsqrt(value)
  %4072 = fmul fast float %4067, %4071
  %4073 = fmul fast float %4068, %4071
  %4074 = fmul fast float %4069, %4071
  %4075 = icmp eq i32 %45, 65535
  br i1 %4075, label %4674, label %4076

; <label>:4076                                    ; preds = %3975
  %4077 = call float @dx.op.unary.f32(i32 83, float %46)  ; DerivCoarseX(value)
  %4078 = call float @dx.op.unary.f32(i32 83, float %47)  ; DerivCoarseX(value)
  %4079 = call float @dx.op.unary.f32(i32 83, float %48)  ; DerivCoarseX(value)
  %4080 = call float @dx.op.unary.f32(i32 84, float %46)  ; DerivCoarseY(value)
  %4081 = call float @dx.op.unary.f32(i32 84, float %47)  ; DerivCoarseY(value)
  %4082 = call float @dx.op.unary.f32(i32 84, float %48)  ; DerivCoarseY(value)
  %4083 = fadd fast float %4077, %46
  %4084 = fadd fast float %4078, %47
  %4085 = fadd fast float %4079, %48
  %4086 = fadd fast float %4080, %46
  %4087 = fadd fast float %4081, %47
  %4088 = fadd fast float %4082, %48
  %4089 = mul i32 %45, 48
  %4090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.f32 %4090, 0
  %4092 = extractvalue %dx.types.ResRet.f32 %4090, 1
  %4093 = extractvalue %dx.types.ResRet.f32 %4090, 2
  %4094 = add i32 %4089, 16
  %4095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = extractvalue %dx.types.ResRet.f32 %4095, 1
  %4098 = extractvalue %dx.types.ResRet.f32 %4095, 2
  %4099 = add i32 %4089, 32
  %4100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = extractvalue %dx.types.ResRet.f32 %4100, 1
  %4103 = extractvalue %dx.types.ResRet.f32 %4100, 2
  %4104 = extractvalue %dx.types.ResRet.f32 %4100, 3
  %4105 = bitcast float %4104 to i32
  %4106 = fmul fast float %4091, %46
  %4107 = fmul fast float %4092, %47
  %4108 = fmul fast float %4093, %48
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
  %4134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.i32 %4134, 0
  %4136 = lshr i32 %4135, 16
  %4137 = icmp eq i32 %4136, 0
  br i1 %4137, label %4637, label %4138

; <label>:4138                                    ; preds = %4076
  br label %4139

; <label>:4139                                    ; preds = %4266, %4138
  %4140 = phi i32 [ %4168, %4266 ], [ %4136, %4138 ]
  %4141 = phi float [ %4267, %4266 ], [ 0.000000e+00, %4138 ]
  %4142 = phi float [ %4268, %4266 ], [ %4015, %4138 ]
  %4143 = phi float [ %4269, %4266 ], [ %3994, %4138 ]
  %4144 = phi float [ %4270, %4266 ], [ %3984, %4138 ]
  %4145 = phi float [ %4271, %4266 ], [ %3985, %4138 ]
  %4146 = phi float [ %4272, %4266 ], [ %3986, %4138 ]
  %4147 = phi float [ %4273, %4266 ], [ 0.000000e+00, %4138 ]
  %4148 = phi float [ %4274, %4266 ], [ 0.000000e+00, %4138 ]
  %4149 = phi float [ %4275, %4266 ], [ %3987, %4138 ]
  %4150 = phi float [ %4276, %4266 ], [ %3988, %4138 ]
  %4151 = phi float [ %4277, %4266 ], [ %3989, %4138 ]
  %4152 = phi float [ %4278, %4266 ], [ %4040, %4138 ]
  %4153 = phi float [ %4279, %4266 ], [ %4043, %4138 ]
  %4154 = phi float [ %4280, %4266 ], [ %4046, %4138 ]
  %4155 = phi float [ %4281, %4266 ], [ %4072, %4138 ]
  %4156 = phi float [ %4282, %4266 ], [ %4073, %4138 ]
  %4157 = phi float [ %4283, %4266 ], [ %4074, %4138 ]
  %4158 = phi float [ %4284, %4266 ], [ %3992, %4138 ]
  %4159 = phi float [ %4285, %4266 ], [ %3991, %4138 ]
  %4160 = phi float [ %4286, %4266 ], [ 0.000000e+00, %4138 ]
  %4161 = phi float [ %4287, %4266 ], [ %3990, %4138 ]
  %4162 = phi float [ %4288, %4266 ], [ %4024, %4138 ]
  %4163 = phi float [ %4289, %4266 ], [ %4025, %4138 ]
  %4164 = phi float [ %4290, %4266 ], [ %4026, %4138 ]
  %4165 = shl nuw nsw i32 %4140, 2
  %4166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4165, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.i32 %4166, 0
  %4168 = lshr i32 %4167, 16
  %4169 = shl i32 %4167, 8
  %4170 = and i32 %4169, 16776960
  %4171 = or i32 %4170, 48
  %4172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4171, i32 undef)  ; BufferLoad(srv,index,wot)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.ResRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.ResRet.f32 %4172, 2
  %4176 = or i32 %4170, 64
  %4177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4176, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.i32 %4177, 0
  %4179 = extractvalue %dx.types.ResRet.i32 %4177, 1
  %4180 = or i32 %4170, 80
  %4181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 2
  %4183 = extractvalue %dx.types.ResRet.f32 %4181, 3
  %4184 = or i32 %4170, 96
  %4185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4184, i32 undef)  ; BufferLoad(srv,index,wot)
  %4186 = extractvalue %dx.types.ResRet.f32 %4185, 0
  %4187 = extractvalue %dx.types.ResRet.f32 %4185, 1
  %4188 = extractvalue %dx.types.ResRet.f32 %4185, 2
  %4189 = extractvalue %dx.types.ResRet.f32 %4185, 3
  %4190 = or i32 %4170, 112
  %4191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 2
  %4193 = or i32 %4170, 128
  %4194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.f32 %4194, 0
  %4196 = extractvalue %dx.types.ResRet.f32 %4194, 1
  %4197 = extractvalue %dx.types.ResRet.f32 %4194, 2
  %4198 = extractvalue %dx.types.ResRet.f32 %4194, 3
  %4199 = or i32 %4170, 144
  %4200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4199, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  %4204 = extractvalue %dx.types.ResRet.f32 %4200, 3
  %4205 = or i32 %4170, 160
  %4206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4205, i32 undef)  ; BufferLoad(srv,index,wot)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.ResRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.ResRet.f32 %4206, 2
  %4210 = extractvalue %dx.types.ResRet.f32 %4206, 3
  %4211 = or i32 %4170, 192
  %4212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.i32 %4212, 0
  %4214 = or i32 %4170, 208
  %4215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4214, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = or i32 %4170, 248
  %4218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4217, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = extractvalue %dx.types.ResRet.f32 %4218, 1
  %4221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4170, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.ResRet.f32 %4221, 1
  %4224 = extractvalue %dx.types.ResRet.f32 %4221, 2
  %4225 = extractvalue %dx.types.ResRet.f32 %4221, 3
  %4226 = call float @dx.op.dot4.f32(i32 56, float %4222, float %4223, float %4224, float %4225, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4227 = or i32 %4170, 16
  %4228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4227, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4230 = extractvalue %dx.types.ResRet.f32 %4228, 1
  %4231 = extractvalue %dx.types.ResRet.f32 %4228, 2
  %4232 = extractvalue %dx.types.ResRet.f32 %4228, 3
  %4233 = call float @dx.op.dot4.f32(i32 56, float %4229, float %4230, float %4231, float %4232, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4234 = or i32 %4170, 32
  %4235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4234, i32 undef)  ; BufferLoad(srv,index,wot)
  %4236 = extractvalue %dx.types.ResRet.f32 %4235, 0
  %4237 = extractvalue %dx.types.ResRet.f32 %4235, 1
  %4238 = extractvalue %dx.types.ResRet.f32 %4235, 2
  %4239 = extractvalue %dx.types.ResRet.f32 %4235, 3
  %4240 = call float @dx.op.dot4.f32(i32 56, float %4236, float %4237, float %4238, float %4239, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
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
  %4258 = call float @dx.op.dot3.f32(i32 55, float %4173, float %4174, float %4175, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4639 = phi float [ %4015, %4076 ], [ %4268, %4636 ]
  %4640 = phi float [ %3994, %4076 ], [ %4269, %4636 ]
  %4641 = phi float [ %3984, %4076 ], [ %4270, %4636 ]
  %4642 = phi float [ %3985, %4076 ], [ %4271, %4636 ]
  %4643 = phi float [ %3986, %4076 ], [ %4272, %4636 ]
  %4644 = phi float [ 0.000000e+00, %4076 ], [ %4273, %4636 ]
  %4645 = phi float [ 0.000000e+00, %4076 ], [ %4274, %4636 ]
  %4646 = phi float [ %3987, %4076 ], [ %4275, %4636 ]
  %4647 = phi float [ %3988, %4076 ], [ %4276, %4636 ]
  %4648 = phi float [ %3989, %4076 ], [ %4277, %4636 ]
  %4649 = phi float [ %4040, %4076 ], [ %4278, %4636 ]
  %4650 = phi float [ %4043, %4076 ], [ %4279, %4636 ]
  %4651 = phi float [ %4046, %4076 ], [ %4280, %4636 ]
  %4652 = phi float [ %4072, %4076 ], [ %4281, %4636 ]
  %4653 = phi float [ %4073, %4076 ], [ %4282, %4636 ]
  %4654 = phi float [ %4074, %4076 ], [ %4283, %4636 ]
  %4655 = phi float [ %3992, %4076 ], [ %4284, %4636 ]
  %4656 = phi float [ %3991, %4076 ], [ %4285, %4636 ]
  %4657 = phi float [ 0.000000e+00, %4076 ], [ %4286, %4636 ]
  %4658 = phi float [ %3990, %4076 ], [ %4287, %4636 ]
  %4659 = phi float [ %4024, %4076 ], [ %4288, %4636 ]
  %4660 = phi float [ %4025, %4076 ], [ %4289, %4636 ]
  %4661 = phi float [ %4026, %4076 ], [ %4290, %4636 ]
  %4662 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float %4652, float %4653, float %4654)  ; Dot3(ax,ay,az,bx,by,bz)
  %4663 = call float @dx.op.unary.f32(i32 25, float %4662)  ; Rsqrt(value)
  %4664 = fmul fast float %4663, %4652
  %4665 = fmul fast float %4663, %4653
  %4666 = fmul fast float %4663, %4654
  %4667 = fadd fast float %4657, %1164
  %4668 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4669 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4665, float %4666, float %4664, float %4665, float %4666)  ; Dot3(ax,ay,az,bx,by,bz)
  %4670 = call float @dx.op.unary.f32(i32 25, float %4669)  ; Rsqrt(value)
  %4671 = fmul fast float %4670, %4664
  %4672 = fmul fast float %4670, %4665
  %4673 = fmul fast float %4670, %4666
  br label %4674

; <label>:4674                                    ; preds = %4637, %3975
  %4675 = phi float [ %4671, %4637 ], [ %4072, %3975 ]
  %4676 = phi float [ %4672, %4637 ], [ %4073, %3975 ]
  %4677 = phi float [ %4673, %4637 ], [ %4074, %3975 ]
  %4678 = phi float [ %4659, %4637 ], [ %4024, %3975 ]
  %4679 = phi float [ %4660, %4637 ], [ %4025, %3975 ]
  %4680 = phi float [ %4661, %4637 ], [ %4026, %3975 ]
  %4681 = phi float [ %4646, %4637 ], [ %3987, %3975 ]
  %4682 = phi float [ %4647, %4637 ], [ %3988, %3975 ]
  %4683 = phi float [ %4648, %4637 ], [ %3989, %3975 ]
  %4684 = phi float [ %4649, %4637 ], [ %4040, %3975 ]
  %4685 = phi float [ %4650, %4637 ], [ %4043, %3975 ]
  %4686 = phi float [ %4651, %4637 ], [ %4046, %3975 ]
  %4687 = phi float [ %4641, %4637 ], [ %3984, %3975 ]
  %4688 = phi float [ %4642, %4637 ], [ %3985, %3975 ]
  %4689 = phi float [ %4643, %4637 ], [ %3986, %3975 ]
  %4690 = phi float [ %4658, %4637 ], [ %3990, %3975 ]
  %4691 = phi float [ %4668, %4637 ], [ %1164, %3975 ]
  %4692 = phi float [ %4656, %4637 ], [ %3991, %3975 ]
  %4693 = phi float [ %4655, %4637 ], [ %3992, %3975 ]
  %4694 = phi float [ %4645, %4637 ], [ 0.000000e+00, %3975 ]
  %4695 = phi float [ %4644, %4637 ], [ 0.000000e+00, %3975 ]
  %4696 = phi float [ %4638, %4637 ], [ 0.000000e+00, %3975 ]
  %4697 = phi float [ %4639, %4637 ], [ %4015, %3975 ]
  %4698 = phi float [ %4640, %4637 ], [ %3994, %3975 ]
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
  %4721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %4733 = fmul fast float %4708, %4681
  %4734 = fmul fast float %4709, %4682
  %4735 = fmul fast float %4710, %4683
  %4736 = fmul fast float %4733, %4732
  %4737 = fmul fast float %4734, %4732
  %4738 = fmul fast float %4735, %4732
  br label %4739

; <label>:4739                                    ; preds = %4725, %4674
  %4740 = phi float [ %4736, %4725 ], [ %4681, %4674 ]
  %4741 = phi float [ %4737, %4725 ], [ %4682, %4674 ]
  %4742 = phi float [ %4738, %4725 ], [ %4683, %4674 ]
  %4743 = call float @dx.op.binary.f32(i32 36, float %4687, float 1.270000e+02)  ; FMin(a,b)
  %4744 = call float @dx.op.binary.f32(i32 36, float %4688, float 1.270000e+02)  ; FMin(a,b)
  %4745 = call float @dx.op.binary.f32(i32 36, float %4689, float 1.270000e+02)  ; FMin(a,b)
  %4746 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.i32 %4746, 3
  %4748 = and i32 %4747, 8
  %4749 = icmp ne i32 %4748, 0
  %4750 = call float @dx.op.binary.f32(i32 35, float %4708, float %4678)  ; FMax(a,b)
  %4751 = call float @dx.op.binary.f32(i32 35, float %4709, float %4678)  ; FMax(a,b)
  %4752 = call float @dx.op.binary.f32(i32 35, float %4710, float %4678)  ; FMax(a,b)
  %4753 = call float @dx.op.dot3.f32(i32 55, float %4708, float %4709, float %4710, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4754 = select i1 %252, float %4678, float %4708
  %4755 = select i1 %252, float %4753, float %4709
  %4756 = select i1 %252, float 1.000000e+00, float %4710
  %4757 = select i1 %4749, float %4750, float %4754
  %4758 = select i1 %4749, float %4751, float %4755
  %4759 = select i1 %4749, float %4752, float %4756
  %4760 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4741, float %4742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4761 = select i1 %252, float %4760, float %4740
  %4762 = select i1 %252, float %4760, float %4741
  %4763 = select i1 %252, float %4760, float %4742
  %4764 = and i32 %228, 3
  %4765 = select i1 %222, i32 %4764, i32 0
  %4766 = icmp eq i32 %4765, 1
  br i1 %4766, label %4767, label %4843

; <label>:4767                                    ; preds = %4739
  %4768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4769 = extractvalue %dx.types.CBufRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.CBufRet.f32 %4768, 1
  %4771 = fadd fast float %4769, %178
  %4772 = fadd fast float %4770, %179
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4786 = fadd fast float %4785, %180
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4787, 0
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 0
  %4791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %37, float %4819, float %4820, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4822 = extractvalue %dx.types.ResRet.f32 %4821, 0
  %4823 = fcmp fast ugt float %4822, 0.000000e+00
  br i1 %4823, label %4824, label %4837

; <label>:4824                                    ; preds = %4784
  %4825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4840 = fsub fast float %4839, %180
  %4841 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4842 = select i1 %4838, float %4841, float 1.000000e+00
  br label %4843

; <label>:4843                                    ; preds = %4837, %4739
  %4844 = phi float [ %4842, %4837 ], [ 0.000000e+00, %4739 ]
  %4845 = icmp eq i32 %4765, 3
  %4846 = select i1 %4845, float 1.000000e+00, float %4844
  %4847 = call float @dx.op.binary.f32(i32 35, float %4696, float %4846)  ; FMax(a,b)
  %4848 = fcmp fast olt float %4846, 1.000000e+00
  %4849 = fcmp uge float %59, 0.000000e+00
  %4850 = and i1 %4849, %4848
  br i1 %4850, label %4851, label %4861

; <label>:4851                                    ; preds = %4843
  %4852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %35, float %59, float %60, float %61, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4853 = extractvalue %dx.types.ResRet.f32 %4852, 0
  %4854 = extractvalue %dx.types.ResRet.f32 %4852, 1
  %4855 = extractvalue %dx.types.ResRet.f32 %4852, 2
  %4856 = fadd fast float %4853, %4847
  %4857 = fcmp ule float %58, 0.000000e+00
  %4858 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %4876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4877 = extractvalue %dx.types.CBufRet.f32 %4876, 0
  %4878 = fmul fast float %4877, %46
  %4879 = fmul fast float %4877, %47
  %4880 = fmul fast float %4877, %48
  %4881 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4882 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %4883 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
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
  %4897 = fcmp fast ogt float %55, 0.000000e+00
  %4898 = fcmp fast ogt float %56, 0.000000e+00
  %4899 = fcmp fast ogt float %57, 0.000000e+00
  %4900 = fcmp fast olt float %55, 0.000000e+00
  %4901 = fcmp fast olt float %56, 0.000000e+00
  %4902 = fcmp fast olt float %57, 0.000000e+00
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
  %4918 = fcmp fast ole float %263, %4896
  %4919 = fmul fast float %4895, %4893
  %4920 = fcmp fast ole float %263, %4919
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
  %4946 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4944, i32 %4945, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %4972 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4971, %dx.types.Handle %96, float %4964, float %4965, float undef, float undef, i32 0, i32 0, i32 undef, float %4927, float %4928, float undef, float %4931, float %4932, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4973 = extractvalue %dx.types.ResRet.f32 %4972, 0
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
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
  %5010 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.i32 %5010, 1
  %5012 = extractvalue %dx.types.CBufRet.i32 %5010, 0
  %5013 = add i32 %5012, 0
  %5014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5013, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5015 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5014, %dx.types.Handle %95, float %4964, float %4965, float undef, float undef, i32 0, i32 0, i32 undef, float %4927, float %4928, float undef, float %4931, float %4932, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
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
  %5049 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5050 = extractvalue %dx.types.CBufRet.i32 %5049, 3
  %5051 = extractvalue %dx.types.CBufRet.i32 %5049, 2
  %5052 = add i32 %5051, 0
  %5053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5054 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5053, %dx.types.Handle %95, float %4964, float %4965, float undef, float undef, i32 0, i32 0, i32 undef, float %4927, float %4928, float undef, float %4931, float %4932, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
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
  %5146 = phi float [ %5109, %5007 ], [ %4757, %4969 ], [ %4757, %4871 ]
  %5147 = phi float [ %5110, %5007 ], [ %4758, %4969 ], [ %4758, %4871 ]
  %5148 = phi float [ %5111, %5007 ], [ %4759, %4969 ], [ %4759, %4871 ]
  %5149 = phi float [ %5135, %5007 ], [ %4675, %4969 ], [ %4675, %4871 ]
  %5150 = phi float [ %5136, %5007 ], [ %4676, %4969 ], [ %4676, %4871 ]
  %5151 = phi float [ %5137, %5007 ], [ %4677, %4969 ], [ %4677, %4871 ]
  %5152 = phi float [ %5118, %5007 ], [ %4717, %4969 ], [ %4717, %4871 ]
  %5153 = phi float [ %5119, %5007 ], [ %4718, %4969 ], [ %4718, %4871 ]
  %5154 = phi float [ %5120, %5007 ], [ %4719, %4969 ], [ %4719, %4871 ]
  %5155 = phi float [ %5144, %5007 ], [ %4720, %4969 ], [ %4720, %4871 ]
  %5156 = phi float [ %5141, %5007 ], [ %4693, %4969 ], [ %4693, %4871 ]
  br i1 %4869, label %5157, label %5446

; <label>:5157                                    ; preds = %5145
  %5158 = call float @dx.op.unary.f32(i32 23, float %5156)  ; Log(value)
  %5159 = fmul fast float %5158, 4.000000e+00
  %5160 = call float @dx.op.unary.f32(i32 21, float %5159)  ; Exp(value)
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5163 = fmul fast float %5162, %46
  %5164 = fmul fast float %5162, %47
  %5165 = fmul fast float %5162, %48
  %5166 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %5167 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %5168 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
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
  %5182 = fcmp fast ogt float %55, 0.000000e+00
  %5183 = fcmp fast ogt float %56, 0.000000e+00
  %5184 = fcmp fast ogt float %57, 0.000000e+00
  %5185 = fcmp fast olt float %55, 0.000000e+00
  %5186 = fcmp fast olt float %56, 0.000000e+00
  %5187 = fcmp fast olt float %57, 0.000000e+00
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
  %5203 = fcmp fast ole float %263, %5181
  %5204 = fmul fast float %5180, %5178
  %5205 = fcmp fast ole float %263, %5204
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
  %5231 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %5229, i32 %5230, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %5257 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5256, %dx.types.Handle %96, float %5249, float %5250, float undef, float undef, i32 0, i32 0, i32 undef, float %5212, float %5213, float undef, float %5216, float %5217, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5258 = extractvalue %dx.types.ResRet.f32 %5257, 0
  %5259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
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
  %5295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.i32 %5295, 1
  %5297 = extractvalue %dx.types.CBufRet.i32 %5295, 0
  %5298 = add i32 %5297, 0
  %5299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5300 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5299, %dx.types.Handle %95, float %5249, float %5250, float undef, float undef, i32 0, i32 0, i32 undef, float %5212, float %5213, float undef, float %5216, float %5217, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
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
  %5334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.i32 %5334, 3
  %5336 = extractvalue %dx.types.CBufRet.i32 %5334, 2
  %5337 = add i32 %5336, 0
  %5338 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5337, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5339 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5338, %dx.types.Handle %95, float %5249, float %5250, float undef, float undef, i32 0, i32 0, i32 undef, float %5212, float %5213, float undef, float %5216, float %5217, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
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
  %5388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5389 = extractvalue %dx.types.CBufRet.f32 %5388, 0
  %5390 = fptoui float %5389 to i32
  %5391 = add i32 %5390, 0
  %5392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5393 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5392, %dx.types.Handle %95, float %5249, float %5250, float undef, float undef, i32 0, i32 0, i32 undef, float %5212, float %5213, float undef, float %5216, float %5217, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5394 = extractvalue %dx.types.ResRet.f32 %5393, 0
  %5395 = fsub fast float %5322, %5146
  %5396 = fsub fast float %5323, %5147
  %5397 = fsub fast float %5324, %5148
  %5398 = fmul fast float %5395, %5294
  %5399 = fmul fast float %5396, %5294
  %5400 = fmul fast float %5397, %5294
  %5401 = fadd fast float %5398, %5146
  %5402 = fadd fast float %5399, %5147
  %5403 = fadd fast float %5400, %5148
  %5404 = fsub fast float %5331, %5152
  %5405 = fsub fast float %5332, %5153
  %5406 = fsub fast float %5333, %5154
  %5407 = fmul fast float %5404, %5294
  %5408 = fmul fast float %5405, %5294
  %5409 = fmul fast float %5406, %5294
  %5410 = fadd fast float %5407, %5152
  %5411 = fadd fast float %5408, %5153
  %5412 = fadd fast float %5409, %5154
  %5413 = fadd fast float %5385, %5149
  %5414 = fadd fast float %5386, %5150
  %5415 = fadd fast float %5387, %5151
  %5416 = call float @dx.op.dot3.f32(i32 55, float %5413, float %5414, float %5415, float %5413, float %5414, float %5415)  ; Dot3(ax,ay,az,bx,by,bz)
  %5417 = call float @dx.op.unary.f32(i32 25, float %5416)  ; Rsqrt(value)
  %5418 = fmul fast float %5417, %5413
  %5419 = fmul fast float %5417, %5414
  %5420 = fmul fast float %5417, %5415
  %5421 = fsub fast float %5418, %5149
  %5422 = fsub fast float %5419, %5150
  %5423 = fsub fast float %5420, %5151
  %5424 = fmul fast float %5421, %5294
  %5425 = fmul fast float %5422, %5294
  %5426 = fmul fast float %5423, %5294
  %5427 = fadd fast float %5424, %5149
  %5428 = fadd fast float %5425, %5150
  %5429 = fadd fast float %5426, %5151
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
  %5447 = phi float [ %5401, %5292 ], [ %5146, %5254 ], [ %5146, %5145 ], [ %4757, %4861 ]
  %5448 = phi float [ %5402, %5292 ], [ %5147, %5254 ], [ %5147, %5145 ], [ %4758, %4861 ]
  %5449 = phi float [ %5403, %5292 ], [ %5148, %5254 ], [ %5148, %5145 ], [ %4759, %4861 ]
  %5450 = phi float [ %5427, %5292 ], [ %5149, %5254 ], [ %5149, %5145 ], [ %4675, %4861 ]
  %5451 = phi float [ %5428, %5292 ], [ %5150, %5254 ], [ %5150, %5145 ], [ %4676, %4861 ]
  %5452 = phi float [ %5429, %5292 ], [ %5151, %5254 ], [ %5151, %5145 ], [ %4677, %4861 ]
  %5453 = phi float [ %5443, %5292 ], [ %4761, %5254 ], [ %4761, %5145 ], [ %4761, %4861 ]
  %5454 = phi float [ %5444, %5292 ], [ %4762, %5254 ], [ %4762, %5145 ], [ %4762, %4861 ]
  %5455 = phi float [ %5445, %5292 ], [ %4763, %5254 ], [ %4763, %5145 ], [ %4763, %4861 ]
  %5456 = phi float [ %5410, %5292 ], [ %5152, %5254 ], [ %5152, %5145 ], [ %4717, %4861 ]
  %5457 = phi float [ %5411, %5292 ], [ %5153, %5254 ], [ %5153, %5145 ], [ %4718, %4861 ]
  %5458 = phi float [ %5412, %5292 ], [ %5154, %5254 ], [ %5154, %5145 ], [ %4719, %4861 ]
  %5459 = phi float [ %5436, %5292 ], [ %5155, %5254 ], [ %5155, %5145 ], [ %4720, %4861 ]
  %5460 = phi float [ %5433, %5292 ], [ %5156, %5254 ], [ %5156, %5145 ], [ %4693, %4861 ]
  %5461 = fcmp fast une float %4865, 0.000000e+00
  %5462 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = call float @dx.op.unary.f32(i32 25, float %5462)  ; Rsqrt(value)
  br i1 %5461, label %5471, label %5464

; <label>:5464                                    ; preds = %5446
  %5465 = fmul fast float %5463, %178
  %5466 = fmul fast float %5463, %179
  %5467 = fmul fast float %5463, %180
  %5468 = fsub fast float -0.000000e+00, %5465
  %5469 = fsub fast float -0.000000e+00, %5466
  %5470 = fsub fast float -0.000000e+00, %5467
  br label %5638

; <label>:5471                                    ; preds = %5446
  %5472 = fmul fast float %178, %5463
  %5473 = fsub fast float -0.000000e+00, %5472
  %5474 = fmul fast float %179, %5463
  %5475 = fsub fast float -0.000000e+00, %5474
  %5476 = fmul fast float %180, %5463
  %5477 = fsub fast float -0.000000e+00, %5476
  %5478 = call float @dx.op.dot3.f32(i32 55, float %5473, float %5475, float %5477, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %5498 = fmul fast float %5447, 0x3FEA2B8620000000
  %5499 = fmul fast float %5448, 0x3FEA2B8620000000
  %5500 = fmul fast float %5449, 0x3FEA2B8620000000
  %5501 = fadd fast float %5498, 0x3FC81DFBA0000000
  %5502 = fmul fast float %5501, %5447
  %5503 = fadd fast float %5502, 0x3F910E6020000000
  %5504 = fadd fast float %5499, 0x3FC81DFBA0000000
  %5505 = fmul fast float %5504, %5448
  %5506 = fadd fast float %5505, 0x3F910E6020000000
  %5507 = fadd fast float %5500, 0x3FC81DFBA0000000
  %5508 = fmul fast float %5507, %5449
  %5509 = fadd fast float %5508, 0x3F910E6020000000
  %5510 = call float @dx.op.unary.f32(i32 7, float %5503)  ; Saturate(value)
  %5511 = call float @dx.op.unary.f32(i32 7, float %5506)  ; Saturate(value)
  %5512 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5513 = fsub fast float %5510, %5447
  %5514 = fsub fast float %5511, %5448
  %5515 = fsub fast float %5512, %5449
  %5516 = fmul fast float %5513, %5480
  %5517 = fmul fast float %5516, %5497
  %5518 = fmul fast float %5514, %5480
  %5519 = fmul fast float %5518, %5497
  %5520 = fmul fast float %5515, %5480
  %5521 = fmul fast float %5520, %5497
  %5522 = fadd fast float %5517, %5447
  %5523 = fadd fast float %5519, %5448
  %5524 = fadd fast float %5521, %5449
  %5525 = fmul fast float %5460, %5460
  %5526 = fmul fast float %5525, %5525
  %5527 = fadd fast float %5483, 1.000000e+00
  %5528 = fsub fast float %5527, %5497
  %5529 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5530 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %5541 = bitcast float %5456 to i32
  %5542 = ashr i32 %5541, 1
  %5543 = add nsw i32 %5542, 532487669
  %5544 = bitcast i32 %5543 to float
  %5545 = fsub fast float 1.000000e+00, %5544
  %5546 = bitcast float %5545 to i32
  %5547 = sub nsw i32 2129859010, %5546
  %5548 = bitcast i32 %5547 to float
  %5549 = fmul fast float %5548, 2.000000e+00
  %5550 = bitcast float %5457 to i32
  %5551 = ashr i32 %5550, 1
  %5552 = add nsw i32 %5551, 532487669
  %5553 = bitcast i32 %5552 to float
  %5554 = fsub fast float 1.000000e+00, %5553
  %5555 = bitcast float %5554 to i32
  %5556 = sub nsw i32 2129859010, %5555
  %5557 = bitcast i32 %5556 to float
  %5558 = fmul fast float %5557, 2.000000e+00
  %5559 = bitcast float %5458 to i32
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
  %5607 = fsub fast float %5589, %5456
  %5608 = fsub fast float %5590, %5457
  %5609 = fsub fast float %5591, %5458
  %5610 = fmul fast float %5599, %5607
  %5611 = fmul fast float %5599, %5608
  %5612 = fmul fast float %5599, %5609
  %5613 = fadd fast float %5610, %5456
  %5614 = fadd fast float %5611, %5457
  %5615 = fadd fast float %5612, %5458
  %5616 = fsub fast float %106, %5450
  %5617 = fsub fast float %107, %5451
  %5618 = fsub fast float %108, %5452
  %5619 = fmul fast float %5599, %5616
  %5620 = fmul fast float %5599, %5617
  %5621 = fmul fast float %5599, %5618
  %5622 = fadd fast float %5619, %5450
  %5623 = fadd fast float %5620, %5451
  %5624 = fadd fast float %5621, %5452
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
  %5645 = phi float [ %5447, %5464 ], [ %5522, %5471 ]
  %5646 = phi float [ %5448, %5464 ], [ %5523, %5471 ]
  %5647 = phi float [ %5449, %5464 ], [ %5524, %5471 ]
  %5648 = phi float [ %5450, %5464 ], [ %5635, %5471 ]
  %5649 = phi float [ %5451, %5464 ], [ %5636, %5471 ]
  %5650 = phi float [ %5452, %5464 ], [ %5637, %5471 ]
  %5651 = phi float [ %5456, %5464 ], [ %5613, %5471 ]
  %5652 = phi float [ %5457, %5464 ], [ %5614, %5471 ]
  %5653 = phi float [ %5458, %5464 ], [ %5615, %5471 ]
  %5654 = phi float [ %5459, %5464 ], [ %5629, %5471 ]
  %5655 = phi float [ %5460, %5464 ], [ %5632, %5471 ]
  %5656 = select i1 %252, float 0.000000e+00, float %5653
  %5657 = call float @dx.op.dot3.f32(i32 55, float %5648, float %5649, float %5650, float %5641, float %5640, float %5639)  ; Dot3(ax,ay,az,bx,by,bz)
  %5658 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5659 = call float @dx.op.dot3.f32(i32 55, float %5644, float %5643, float %5642, float %5648, float %5649, float %5650)  ; Dot3(ax,ay,az,bx,by,bz)
  %5660 = fmul fast float %5659, 2.000000e+00
  %5661 = fmul fast float %5660, %5648
  %5662 = fmul fast float %5660, %5649
  %5663 = fmul fast float %5660, %5650
  %5664 = fsub fast float %5644, %5661
  %5665 = fsub fast float %5643, %5662
  %5666 = fsub fast float %5642, %5663
  %5667 = call float @dx.op.binary.f32(i32 36, float %5655, float 1.000000e+00)  ; FMin(a,b)
  %5668 = fsub fast float 1.000000e+00, %5655
  %5669 = bitcast float %5668 to i32
  %5670 = sub nsw i32 2129859010, %5669
  %5671 = bitcast i32 %5670 to float
  %5672 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5673 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5674 = fcmp fast oeq float %5673, 0.000000e+00
  %5675 = fcmp fast oeq float %5672, 0.000000e+00
  %5676 = or i1 %5675, %5674
  br i1 %5676, label %5706, label %5677

; <label>:5677                                    ; preds = %5638
  %5678 = fsub fast float -0.000000e+00, %73
  %5679 = fsub fast float -0.000000e+00, %71
  %5680 = call float @dx.op.unary.f32(i32 24, float %5673)  ; Sqrt(value)
  %5681 = fdiv fast float %5680, %5672
  %5682 = fcmp fast ogt float %5681, 0x3FFB6F8900000000
  %5683 = select i1 %5682, float 0x3FFB6F8900000000, float %5681
  %5684 = fmul fast float %5683, 0x3FE8A23460000000
  %5685 = call float @dx.op.unary.f32(i32 7, float %5684)  ; Saturate(value)
  %5686 = call float @dx.op.binary.f32(i32 35, float %5683, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5687 = fmul fast float %5685, %5672
  %5688 = fmul fast float %5686, 0x3FF279A740000000
  %5689 = fadd fast float %5688, -1.000000e+00
  %5690 = call float @dx.op.dot3.f32(i32 55, float %5678, float %5679, float %72, float %5678, float %5679, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5691 = call float @dx.op.unary.f32(i32 25, float %5690)  ; Rsqrt(value)
  %5692 = fmul fast float %5691, %5678
  %5693 = fmul fast float %5691, %5679
  %5694 = fmul fast float %5691, %72
  %5695 = fmul fast float %5689, %5689
  %5696 = fsub fast float 1.000000e+00, %5695
  %5697 = fmul fast float %5686, 0x40005F8BE0000000
  %5698 = fsub fast float 0x400C5BF8A0000000, %5697
  %5699 = fdiv fast float %5687, %5698
  %5700 = fmul fast float %5699, 0x3FEE31C3C0000000
  %5701 = fmul fast float %5700, %5696
  %5702 = fmul fast float %5686, 0x3FDACB7480000000
  %5703 = fadd fast float %5702, 0xBFD7347680000000
  %5704 = fmul fast float %5703, %5699
  %5705 = fmul fast float %5704, %5696
  br label %5706

; <label>:5706                                    ; preds = %5677, %5638
  %5707 = phi float [ %5692, %5677 ], [ 0.000000e+00, %5638 ]
  %5708 = phi float [ %5693, %5677 ], [ 0.000000e+00, %5638 ]
  %5709 = phi float [ %5694, %5677 ], [ 0.000000e+00, %5638 ]
  %5710 = phi float [ %5701, %5677 ], [ 0.000000e+00, %5638 ]
  %5711 = phi float [ %5705, %5677 ], [ 0.000000e+00, %5638 ]
  %5712 = call float @dx.op.dot3.f32(i32 55, float %5707, float %5708, float %5709, float %5648, float %5649, float %5650)  ; Dot3(ax,ay,az,bx,by,bz)
  %5713 = fmul fast float %5712, 0x3FDF454380000000
  %5714 = fmul fast float %5712, %5712
  %5715 = fmul fast float %5714, 0x3FEE471020000000
  %5716 = fadd fast float %5715, 0xBFD42F6020000000
  %5717 = fmul fast float %5672, 0x3FD20DD760000000
  %5718 = fmul fast float %5716, %5711
  %5719 = fadd fast float %5718, %5717
  %5720 = fmul fast float %5713, %5710
  %5721 = fadd fast float %5719, %5720
  %5722 = fsub fast float %5719, %5720
  %5723 = call float @dx.op.dot3.f32(i32 55, float %5707, float %5708, float %5709, float %5664, float %5665, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5724 = fmul fast float %5723, 0x3FDF454380000000
  %5725 = fmul fast float %5723, %5723
  %5726 = fmul fast float %5725, 0x3FEE471020000000
  %5727 = fadd fast float %5726, 0xBFD42F6020000000
  %5728 = call float @dx.op.dot3.f32(i32 55, float %5672, float %5710, float %5711, float 0x3FD20DD760000000, float %5724, float %5727)  ; Dot3(ax,ay,az,bx,by,bz)
  %5729 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %5730 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5731 = fcmp fast oeq float %5730, 0.000000e+00
  %5732 = fcmp fast oeq float %5729, 0.000000e+00
  %5733 = or i1 %5732, %5731
  br i1 %5733, label %5763, label %5734

; <label>:5734                                    ; preds = %5706
  %5735 = fsub fast float -0.000000e+00, %69
  %5736 = fsub fast float -0.000000e+00, %67
  %5737 = call float @dx.op.unary.f32(i32 24, float %5730)  ; Sqrt(value)
  %5738 = fdiv fast float %5737, %5729
  %5739 = fcmp fast ogt float %5738, 0x3FFB6F8900000000
  %5740 = select i1 %5739, float 0x3FFB6F8900000000, float %5738
  %5741 = fmul fast float %5740, 0x3FE8A23460000000
  %5742 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5743 = call float @dx.op.binary.f32(i32 35, float %5740, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5744 = fmul fast float %5742, %5729
  %5745 = fmul fast float %5743, 0x3FF279A740000000
  %5746 = fadd fast float %5745, -1.000000e+00
  %5747 = call float @dx.op.dot3.f32(i32 55, float %5735, float %5736, float %68, float %5735, float %5736, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5748 = call float @dx.op.unary.f32(i32 25, float %5747)  ; Rsqrt(value)
  %5749 = fmul fast float %5748, %5735
  %5750 = fmul fast float %5748, %5736
  %5751 = fmul fast float %5748, %68
  %5752 = fmul fast float %5746, %5746
  %5753 = fsub fast float 1.000000e+00, %5752
  %5754 = fmul fast float %5743, 0x40005F8BE0000000
  %5755 = fsub fast float 0x400C5BF8A0000000, %5754
  %5756 = fdiv fast float %5744, %5755
  %5757 = fmul fast float %5756, 0x3FEE31C3C0000000
  %5758 = fmul fast float %5757, %5753
  %5759 = fmul fast float %5743, 0x3FDACB7480000000
  %5760 = fadd fast float %5759, 0xBFD7347680000000
  %5761 = fmul fast float %5760, %5756
  %5762 = fmul fast float %5761, %5753
  br label %5763

; <label>:5763                                    ; preds = %5734, %5706
  %5764 = phi float [ %5749, %5734 ], [ 0.000000e+00, %5706 ]
  %5765 = phi float [ %5750, %5734 ], [ 0.000000e+00, %5706 ]
  %5766 = phi float [ %5751, %5734 ], [ 0.000000e+00, %5706 ]
  %5767 = phi float [ %5758, %5734 ], [ 0.000000e+00, %5706 ]
  %5768 = phi float [ %5762, %5734 ], [ 0.000000e+00, %5706 ]
  %5769 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %5648, float %5649, float %5650)  ; Dot3(ax,ay,az,bx,by,bz)
  %5770 = fmul fast float %5769, 0x3FDF454380000000
  %5771 = fmul fast float %5769, %5769
  %5772 = fmul fast float %5771, 0x3FEE471020000000
  %5773 = fadd fast float %5772, 0xBFD42F6020000000
  %5774 = fmul fast float %5729, 0x3FD20DD760000000
  %5775 = fmul fast float %5773, %5768
  %5776 = fadd fast float %5775, %5774
  %5777 = fmul fast float %5770, %5767
  %5778 = fadd fast float %5776, %5777
  %5779 = fsub fast float %5776, %5777
  %5780 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %5664, float %5665, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = fmul fast float %5780, 0x3FDF454380000000
  %5782 = fmul fast float %5780, %5780
  %5783 = fmul fast float %5782, 0x3FEE471020000000
  %5784 = fadd fast float %5783, 0xBFD42F6020000000
  %5785 = call float @dx.op.dot3.f32(i32 55, float %5729, float %5767, float %5768, float 0x3FD20DD760000000, float %5781, float %5784)  ; Dot3(ax,ay,az,bx,by,bz)
  %5786 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %5787 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = fcmp fast oeq float %5787, 0.000000e+00
  %5789 = fcmp fast oeq float %5786, 0.000000e+00
  %5790 = or i1 %5789, %5788
  br i1 %5790, label %5820, label %5791

; <label>:5791                                    ; preds = %5763
  %5792 = fsub fast float -0.000000e+00, %65
  %5793 = fsub fast float -0.000000e+00, %63
  %5794 = call float @dx.op.unary.f32(i32 24, float %5787)  ; Sqrt(value)
  %5795 = fdiv fast float %5794, %5786
  %5796 = fcmp fast ogt float %5795, 0x3FFB6F8900000000
  %5797 = select i1 %5796, float 0x3FFB6F8900000000, float %5795
  %5798 = fmul fast float %5797, 0x3FE8A23460000000
  %5799 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5800 = call float @dx.op.binary.f32(i32 35, float %5797, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5801 = fmul fast float %5799, %5786
  %5802 = fmul fast float %5800, 0x3FF279A740000000
  %5803 = fadd fast float %5802, -1.000000e+00
  %5804 = call float @dx.op.dot3.f32(i32 55, float %5792, float %5793, float %64, float %5792, float %5793, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5805 = call float @dx.op.unary.f32(i32 25, float %5804)  ; Rsqrt(value)
  %5806 = fmul fast float %5805, %5792
  %5807 = fmul fast float %5805, %5793
  %5808 = fmul fast float %5805, %64
  %5809 = fmul fast float %5803, %5803
  %5810 = fsub fast float 1.000000e+00, %5809
  %5811 = fmul fast float %5800, 0x40005F8BE0000000
  %5812 = fsub fast float 0x400C5BF8A0000000, %5811
  %5813 = fdiv fast float %5801, %5812
  %5814 = fmul fast float %5813, 0x3FEE31C3C0000000
  %5815 = fmul fast float %5814, %5810
  %5816 = fmul fast float %5800, 0x3FDACB7480000000
  %5817 = fadd fast float %5816, 0xBFD7347680000000
  %5818 = fmul fast float %5817, %5813
  %5819 = fmul fast float %5818, %5810
  br label %5820

; <label>:5820                                    ; preds = %5791, %5763
  %5821 = phi float [ %5806, %5791 ], [ 0.000000e+00, %5763 ]
  %5822 = phi float [ %5807, %5791 ], [ 0.000000e+00, %5763 ]
  %5823 = phi float [ %5808, %5791 ], [ 0.000000e+00, %5763 ]
  %5824 = phi float [ %5815, %5791 ], [ 0.000000e+00, %5763 ]
  %5825 = phi float [ %5819, %5791 ], [ 0.000000e+00, %5763 ]
  %5826 = call float @dx.op.dot3.f32(i32 55, float %5821, float %5822, float %5823, float %5648, float %5649, float %5650)  ; Dot3(ax,ay,az,bx,by,bz)
  %5827 = fmul fast float %5826, 0x3FDF454380000000
  %5828 = fmul fast float %5826, %5826
  %5829 = fmul fast float %5828, 0x3FEE471020000000
  %5830 = fadd fast float %5829, 0xBFD42F6020000000
  %5831 = fmul fast float %5786, 0x3FD20DD760000000
  %5832 = fmul fast float %5830, %5825
  %5833 = fadd fast float %5832, %5831
  %5834 = fmul fast float %5827, %5824
  %5835 = fadd fast float %5833, %5834
  %5836 = fsub fast float %5833, %5834
  %5837 = call float @dx.op.dot3.f32(i32 55, float %5821, float %5822, float %5823, float %5664, float %5665, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5838 = fmul fast float %5837, 0x3FDF454380000000
  %5839 = fmul fast float %5837, %5837
  %5840 = fmul fast float %5839, 0x3FEE471020000000
  %5841 = fadd fast float %5840, 0xBFD42F6020000000
  %5842 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5824, float %5825, float 0x3FD20DD760000000, float %5838, float %5841)  ; Dot3(ax,ay,az,bx,by,bz)
  %5843 = call float @dx.op.binary.f32(i32 35, float %5721, float 0.000000e+00)  ; FMax(a,b)
  %5844 = call float @dx.op.binary.f32(i32 35, float %5778, float 0.000000e+00)  ; FMax(a,b)
  %5845 = call float @dx.op.binary.f32(i32 35, float %5835, float 0.000000e+00)  ; FMax(a,b)
  %5846 = call float @dx.op.binary.f32(i32 35, float %5722, float 0.000000e+00)  ; FMax(a,b)
  %5847 = call float @dx.op.binary.f32(i32 35, float %5779, float 0.000000e+00)  ; FMax(a,b)
  %5848 = call float @dx.op.binary.f32(i32 35, float %5836, float 0.000000e+00)  ; FMax(a,b)
  %5849 = call float @dx.op.binary.f32(i32 35, float %5728, float 0.000000e+00)  ; FMax(a,b)
  %5850 = call float @dx.op.binary.f32(i32 35, float %5785, float 0.000000e+00)  ; FMax(a,b)
  %5851 = call float @dx.op.binary.f32(i32 35, float %5842, float 0.000000e+00)  ; FMax(a,b)
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = call float @dx.op.binary.f32(i32 36, float %5645, float %5853)  ; FMin(a,b)
  %5855 = fsub fast float 1.000000e+00, %5667
  %5856 = fmul fast float %5854, %5855
  %5857 = fsub fast float 1.000000e+00, %5856
  %5858 = bitcast float %5857 to i32
  %5859 = sub nsw i32 2129859010, %5858
  %5860 = bitcast i32 %5859 to float
  %5861 = call float @dx.op.binary.f32(i32 36, float %5646, float %5853)  ; FMin(a,b)
  %5862 = fmul fast float %5861, %5855
  %5863 = fsub fast float 1.000000e+00, %5862
  %5864 = bitcast float %5863 to i32
  %5865 = sub nsw i32 2129859010, %5864
  %5866 = bitcast i32 %5865 to float
  %5867 = call float @dx.op.binary.f32(i32 36, float %5647, float %5853)  ; FMin(a,b)
  %5868 = fmul fast float %5867, %5855
  %5869 = fsub fast float 1.000000e+00, %5868
  %5870 = bitcast float %5869 to i32
  %5871 = sub nsw i32 2129859010, %5870
  %5872 = bitcast i32 %5871 to float
  %5873 = fmul fast float %5843, %5667
  %5874 = fmul fast float %5873, %5860
  %5875 = fmul fast float %5844, %5667
  %5876 = fmul fast float %5875, %5866
  %5877 = fmul fast float %5845, %5667
  %5878 = fmul fast float %5877, %5872
  %5879 = call float @dx.op.binary.f32(i32 36, float %5651, float %5853)  ; FMin(a,b)
  %5880 = fmul fast float %5879, %5855
  %5881 = fsub fast float 1.000000e+00, %5880
  %5882 = bitcast float %5881 to i32
  %5883 = sub nsw i32 2129859010, %5882
  %5884 = bitcast i32 %5883 to float
  %5885 = call float @dx.op.binary.f32(i32 36, float %5652, float %5853)  ; FMin(a,b)
  %5886 = fmul fast float %5885, %5855
  %5887 = fsub fast float 1.000000e+00, %5886
  %5888 = bitcast float %5887 to i32
  %5889 = sub nsw i32 2129859010, %5888
  %5890 = bitcast i32 %5889 to float
  %5891 = call float @dx.op.binary.f32(i32 36, float %5656, float %5853)  ; FMin(a,b)
  %5892 = fmul fast float %5891, %5855
  %5893 = fsub fast float 1.000000e+00, %5892
  %5894 = bitcast float %5893 to i32
  %5895 = sub nsw i32 2129859010, %5894
  %5896 = bitcast i32 %5895 to float
  %5897 = fmul fast float %5849, %5667
  %5898 = fmul fast float %5897, %5884
  %5899 = fmul fast float %5850, %5667
  %5900 = fmul fast float %5899, %5890
  %5901 = fmul fast float %5851, %5667
  %5902 = fmul fast float %5901, %5896
  %5903 = call float @dx.op.dot3.f32(i32 55, float %5874, float %5876, float %5878, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5904 = select i1 %252, float 0.000000e+00, float %5874
  %5905 = select i1 %252, float %5903, float %5876
  %5906 = select i1 %252, float 0.000000e+00, float %5878
  %5907 = call float @dx.op.dot3.f32(i32 55, float %5846, float %5847, float %5848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5908 = select i1 %252, float 0.000000e+00, float %5846
  %5909 = select i1 %252, float %5907, float %5847
  %5910 = select i1 %252, float 0.000000e+00, float %5848
  %5911 = call float @dx.op.dot3.f32(i32 55, float %5898, float %5900, float %5902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5912 = select i1 %252, float 0.000000e+00, float %5898
  %5913 = select i1 %252, float %5911, float %5900
  %5914 = select i1 %252, float 0.000000e+00, float %5902
  %5915 = fmul fast float %3993, %3993
  %5916 = call float @dx.op.unary.f32(i32 7, float %5915)  ; Saturate(value)
  %5917 = fmul fast float %5658, 9.843750e-01
  %5918 = fmul fast float %5654, 9.843750e-01
  %5919 = fadd fast float %5917, 7.812500e-03
  %5920 = fadd fast float %5918, 7.812500e-03
  %5921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %5919, float %5920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5922 = extractvalue %dx.types.ResRet.f32 %5921, 0
  %5923 = extractvalue %dx.types.ResRet.f32 %5921, 1
  %5924 = extractvalue %dx.types.ResRet.f32 %5921, 2
  %5925 = extractvalue %dx.types.ResRet.f32 %5921, 3
  %5926 = fsub fast float 1.000000e+00, %5916
  %5927 = fsub fast float %5924, %5922
  %5928 = fsub fast float %5925, %5923
  %5929 = fmul fast float %5927, %5926
  %5930 = fmul fast float %5928, %5926
  %5931 = fadd fast float %5929, %5922
  %5932 = fadd fast float %5930, %5923
  %5933 = fmul fast float %5931, %5651
  %5934 = fmul fast float %5931, %5652
  %5935 = fmul fast float %5931, %5656
  %5936 = fadd fast float %5933, %5932
  %5937 = fadd fast float %5934, %5932
  %5938 = fadd fast float %5935, %5932
  %5939 = fcmp fast ogt float %4694, 0.000000e+00
  br i1 %5939, label %5940, label %5966

; <label>:5940                                    ; preds = %5820
  %5941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4694, float %5658, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5942 = extractvalue %dx.types.ResRet.f32 %5941, 0
  %5943 = extractvalue %dx.types.ResRet.f32 %5941, 1
  %5944 = extractvalue %dx.types.ResRet.f32 %5941, 2
  %5945 = fadd fast float %5942, -5.000000e-01
  %5946 = fadd fast float %5943, -5.000000e-01
  %5947 = fadd fast float %5944, -5.000000e-01
  %5948 = fsub fast float 1.000000e+00, %5651
  %5949 = fsub fast float 1.000000e+00, %5652
  %5950 = fsub fast float 1.000000e+00, %5656
  %5951 = fmul fast float %5651, 4.000000e+00
  %5952 = fmul fast float %5951, %5948
  %5953 = fmul fast float %5952, %5945
  %5954 = fmul fast float %5652, 4.000000e+00
  %5955 = fmul fast float %5954, %5949
  %5956 = fmul fast float %5955, %5946
  %5957 = fmul fast float %5656, 4.000000e+00
  %5958 = fmul fast float %5957, %5950
  %5959 = fmul fast float %5958, %5947
  %5960 = fadd fast float %5953, %5936
  %5961 = fadd fast float %5956, %5937
  %5962 = fadd fast float %5959, %5938
  %5963 = call float @dx.op.unary.f32(i32 7, float %5960)  ; Saturate(value)
  %5964 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5965 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  br label %5966

; <label>:5966                                    ; preds = %5940, %5820
  %5967 = phi float [ %5963, %5940 ], [ %5936, %5820 ]
  %5968 = phi float [ %5964, %5940 ], [ %5937, %5820 ]
  %5969 = phi float [ %5965, %5940 ], [ %5938, %5820 ]
  %5970 = call float @dx.op.binary.f32(i32 35, float %5968, float %5969)  ; FMax(a,b)
  %5971 = call float @dx.op.binary.f32(i32 35, float %5967, float %5970)  ; FMax(a,b)
  %5972 = fsub fast float 1.000000e+00, %5971
  %5973 = call float @dx.op.dot3.f32(i32 55, float %5645, float %5646, float %5647, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5974 = fcmp fast ogt float %5973, 0x3E7FF19E20000000
  %5975 = fdiv fast float 1.000000e+00, %5973
  %5976 = select i1 %5974, float %5975, float 0.000000e+00
  %5977 = fmul fast float %5976, %5645
  %5978 = fmul fast float %5976, %5646
  %5979 = fmul fast float %5976, %5647
  %5980 = fadd fast float %5977, -1.000000e+00
  %5981 = fadd fast float %5978, -1.000000e+00
  %5982 = fadd fast float %5979, -1.000000e+00
  %5983 = fmul fast float %5980, 5.000000e-01
  %5984 = fmul fast float %5981, 5.000000e-01
  %5985 = fmul fast float %5982, 5.000000e-01
  %5986 = fadd fast float %5983, 1.000000e+00
  %5987 = fadd fast float %5984, 1.000000e+00
  %5988 = fadd fast float %5985, 1.000000e+00
  %5989 = call float @dx.op.binary.f32(i32 35, float %5658, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5990 = fdiv fast float %3993, %5989
  %5991 = fcmp fast olt float %4743, 1.270000e+02
  %5992 = fcmp fast olt float %4744, 1.270000e+02
  %5993 = fcmp fast olt float %4745, 1.270000e+02
  %5994 = fmul fast float %4743, 0xBFF7154760000000
  %5995 = fmul fast float %5994, %5990
  %5996 = fmul fast float %4744, 0xBFF7154760000000
  %5997 = fmul fast float %5996, %5990
  %5998 = fmul fast float %4745, 0xBFF7154760000000
  %5999 = fmul fast float %5998, %5990
  %6000 = call float @dx.op.unary.f32(i32 21, float %5995)  ; Exp(value)
  %6001 = call float @dx.op.unary.f32(i32 21, float %5997)  ; Exp(value)
  %6002 = call float @dx.op.unary.f32(i32 21, float %5999)  ; Exp(value)
  %6003 = call float @dx.op.unary.f32(i32 7, float %6000)  ; Saturate(value)
  %6004 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6005 = call float @dx.op.unary.f32(i32 7, float %6002)  ; Saturate(value)
  %6006 = select i1 %5991, float %6003, float 0.000000e+00
  %6007 = select i1 %5992, float %6004, float 0.000000e+00
  %6008 = select i1 %5993, float %6005, float 0.000000e+00
  %6009 = fmul fast float %6006, %5972
  %6010 = fmul fast float %6007, %5972
  %6011 = fmul fast float %6008, %5972
  %6012 = fadd fast float %6009, -1.000000e+00
  %6013 = fadd fast float %6010, -1.000000e+00
  %6014 = fadd fast float %6011, -1.000000e+00
  %6015 = fmul fast float %6012, %4691
  %6016 = fmul fast float %6013, %4691
  %6017 = fmul fast float %6014, %4691
  %6018 = fmul fast float %5967, %5912
  %6019 = fmul fast float %5968, %5913
  %6020 = fmul fast float %5969, %5914
  %6021 = fsub fast float 1.000000e+00, %5658
  %6022 = bitcast float %6021 to i32
  %6023 = sitofp i32 %6022 to float
  %6024 = fmul fast float %6023, 5.000000e+00
  %6025 = fadd fast float %6024, 0xC1EFBF8940000000
  %6026 = fptosi float %6025 to i32
  %6027 = bitcast i32 %6026 to float
  %6028 = fmul fast float %6027, %4695
  %6029 = fmul fast float %5904, %6028
  %6030 = fmul fast float %6029, %5972
  %6031 = fmul fast float %6030, %5986
  %6032 = fmul fast float %5905, %6028
  %6033 = fmul fast float %6032, %5972
  %6034 = fmul fast float %6033, %5987
  %6035 = fmul fast float %5906, %6028
  %6036 = fmul fast float %6035, %5972
  %6037 = fmul fast float %6036, %5988
  %6038 = fadd fast float %6018, %4684
  %6039 = fadd fast float %6038, %6031
  %6040 = fmul fast float %6039, %4691
  %6041 = fadd fast float %6019, %4685
  %6042 = fadd fast float %6041, %6034
  %6043 = fmul fast float %6042, %4691
  %6044 = fadd fast float %6020, %4686
  %6045 = fadd fast float %6044, %6037
  %6046 = fmul fast float %6045, %4691
  %6047 = fmul fast float %5652, 0x4012D0A400000000
  %6048 = fadd fast float %6017, 1.000000e+00
  %6049 = fadd fast float %6016, 1.000000e+00
  %6050 = fadd fast float %6015, 1.000000e+00
  %6051 = fmul fast float %5972, %5906
  %6052 = fmul fast float %5972, %5905
  %6053 = fmul fast float %5972, %5904
  %6054 = fsub fast float 1.000000e+00, %5654
  %6055 = fmul fast float %6054, %4691
  %6056 = fsub fast float 1.000000e+00, %6055
  %6057 = call float @dx.op.unary.f32(i32 7, float %6056)  ; Saturate(value)
  %6058 = fsub fast float 1.000000e+00, %6057
  %6059 = fadd fast float %6047, 0x3FDB6377A0000000
  %6060 = fmul fast float %6058, %6059
  %6061 = call float @dx.op.dot3.f32(i32 55, float %5453, float %5454, float %5455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6062 = fadd fast float %6060, %6061
  %6063 = call float @dx.op.unary.f32(i32 7, float %6062)  ; Saturate(value)
  %6064 = call float @dx.op.binary.f32(i32 35, float %6063, float 0x3F847AE140000000)  ; FMax(a,b)
  %6065 = fmul fast float %6064, %6064
  %6066 = fmul fast float %6065, %6065
  %6067 = fmul fast float %6066, 0xC00A935000000000
  %6068 = call float @dx.op.unary.f32(i32 21, float %6067)  ; Exp(value)
  %6069 = fsub fast float 1.000000e+00, %6068
  %6070 = fmul fast float %6050, %5908
  %6071 = fmul fast float %6070, %6069
  %6072 = fmul fast float %6049, %5909
  %6073 = fmul fast float %6072, %6069
  %6074 = fmul fast float %6048, %5910
  %6075 = fmul fast float %6074, %6069
  %6076 = fadd fast float %6071, %6053
  %6077 = fmul fast float %6076, %4691
  %6078 = fadd fast float %6073, %6052
  %6079 = fmul fast float %6078, %4691
  %6080 = fadd fast float %6075, %6051
  %6081 = fmul fast float %6080, %4691
  %6082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6083 = extractvalue %dx.types.CBufRet.f32 %6082, 3
  %6084 = fcmp fast oeq float %6083, 0.000000e+00
  br i1 %6084, label %7229, label %6085

; <label>:6085                                    ; preds = %5966
  %6086 = extractvalue %dx.types.CBufRet.f32 %6082, 0
  %6087 = extractvalue %dx.types.CBufRet.f32 %6082, 1
  %6088 = extractvalue %dx.types.CBufRet.f32 %6082, 2
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 0
  %6091 = extractvalue %dx.types.CBufRet.f32 %6089, 1
  %6092 = extractvalue %dx.types.CBufRet.f32 %6089, 2
  %6093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6094 = extractvalue %dx.types.CBufRet.f32 %6093, 0
  %6095 = extractvalue %dx.types.CBufRet.f32 %6093, 1
  %6096 = call float @dx.op.dot3.f32(i32 55, float %6090, float %6091, float %6092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6097 = select i1 %252, float %6094, float %6090
  %6098 = select i1 %252, float %6096, float %6091
  %6099 = select i1 %252, float %6095, float %6092
  %6100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6101 = extractvalue %dx.types.CBufRet.f32 %6100, 2
  %6102 = fmul fast float %6101, %106
  %6103 = fmul fast float %6101, %107
  %6104 = fmul fast float %6101, %108
  %6105 = fadd fast float %6102, %178
  %6106 = fadd fast float %6103, %179
  %6107 = fadd fast float %6104, %180
  %6108 = fcmp fast olt float %6083, 0.000000e+00
  br i1 %6108, label %6748, label %6109

; <label>:6109                                    ; preds = %6085
  %6110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.f32 %6110, 0
  %6112 = extractvalue %dx.types.CBufRet.f32 %6110, 1
  %6113 = extractvalue %dx.types.CBufRet.f32 %6110, 2
  %6114 = extractvalue %dx.types.CBufRet.f32 %6110, 3
  %6115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6116 = extractvalue %dx.types.CBufRet.f32 %6115, 0
  %6117 = extractvalue %dx.types.CBufRet.f32 %6115, 1
  %6118 = extractvalue %dx.types.CBufRet.f32 %6115, 2
  %6119 = extractvalue %dx.types.CBufRet.f32 %6115, 3
  %6120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6121 = extractvalue %dx.types.CBufRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.CBufRet.f32 %6120, 1
  %6123 = extractvalue %dx.types.CBufRet.f32 %6120, 2
  %6124 = extractvalue %dx.types.CBufRet.f32 %6120, 3
  %6125 = fmul fast float %6111, %6105
  %6126 = call float @dx.op.tertiary.f32(i32 46, float %6106, float %6112, float %6125)  ; FMad(a,b,c)
  %6127 = call float @dx.op.tertiary.f32(i32 46, float %6107, float %6113, float %6126)  ; FMad(a,b,c)
  %6128 = fadd fast float %6127, %6114
  %6129 = fmul fast float %6116, %6105
  %6130 = call float @dx.op.tertiary.f32(i32 46, float %6106, float %6117, float %6129)  ; FMad(a,b,c)
  %6131 = call float @dx.op.tertiary.f32(i32 46, float %6107, float %6118, float %6130)  ; FMad(a,b,c)
  %6132 = fadd fast float %6131, %6119
  %6133 = fmul fast float %6121, %6105
  %6134 = call float @dx.op.tertiary.f32(i32 46, float %6106, float %6122, float %6133)  ; FMad(a,b,c)
  %6135 = call float @dx.op.tertiary.f32(i32 46, float %6107, float %6123, float %6134)  ; FMad(a,b,c)
  %6136 = fadd fast float %6135, %6124
  %6137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6138 = extractvalue %dx.types.CBufRet.f32 %6137, 0
  %6139 = fcmp fast une float %6138, 0.000000e+00
  %6140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.f32 %6140, 0
  %6142 = extractvalue %dx.types.CBufRet.f32 %6140, 1
  %6143 = extractvalue %dx.types.CBufRet.f32 %6140, 3
  %6144 = fmul fast float %6143, %6128
  %6145 = fmul fast float %6143, %6132
  %6146 = fadd fast float %6144, %6141
  %6147 = fadd fast float %6145, %6142
  %6148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6149 = extractvalue %dx.types.CBufRet.f32 %6148, 0
  %6150 = extractvalue %dx.types.CBufRet.f32 %6148, 1
  %6151 = extractvalue %dx.types.CBufRet.f32 %6148, 3
  %6152 = fmul fast float %6151, %6128
  %6153 = fmul fast float %6151, %6132
  %6154 = fadd fast float %6152, %6149
  %6155 = fadd fast float %6153, %6150
  %6156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6157 = extractvalue %dx.types.CBufRet.f32 %6156, 1
  %6158 = fsub fast float %6157, %6136
  %6159 = extractvalue %dx.types.CBufRet.f32 %6156, 2
  %6160 = fmul fast float %6158, %6159
  %6161 = fsub fast float 1.000000e+00, %6160
  %6162 = call float @dx.op.unary.f32(i32 7, float %6161)  ; Saturate(value)
  br i1 %6139, label %6223, label %6163

; <label>:6163                                    ; preds = %6109
  %6164 = extractvalue %dx.types.CBufRet.f32 %6148, 2
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 2
  %6167 = fadd fast float %6166, %6164
  %6168 = fcmp fast ogt float %6167, 0.000000e+00
  br i1 %6168, label %6169, label %6193

; <label>:6169                                    ; preds = %6163
  %6170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6171 = extractvalue %dx.types.CBufRet.f32 %6170, 0
  %6172 = extractvalue %dx.types.CBufRet.f32 %6170, 1
  %6173 = fsub fast float %6154, %6171
  %6174 = fsub fast float %6155, %6172
  %6175 = fcmp fast olt float %6173, 0.000000e+00
  %6176 = fcmp fast olt float %6174, 0.000000e+00
  %6177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6178 = extractvalue %dx.types.CBufRet.f32 %6177, 0
  %6179 = extractvalue %dx.types.CBufRet.f32 %6177, 1
  %6180 = extractvalue %dx.types.CBufRet.f32 %6177, 2
  %6181 = extractvalue %dx.types.CBufRet.f32 %6177, 3
  %6182 = select i1 %6175, float %6178, float %6180
  %6183 = select i1 %6176, float %6179, float %6181
  %6184 = fmul fast float %6182, %6173
  %6185 = fmul fast float %6183, %6174
  %6186 = call float @dx.op.unary.f32(i32 6, float %6184)  ; FAbs(value)
  %6187 = call float @dx.op.unary.f32(i32 6, float %6185)  ; FAbs(value)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6100, 0
  %6189 = call float @dx.op.binary.f32(i32 35, float %6186, float %6187)  ; FMax(a,b)
  %6190 = fsub fast float %6188, %6189
  %6191 = call float @dx.op.unary.f32(i32 7, float %6190)  ; Saturate(value)
  %6192 = fmul fast float %6191, %6162
  br label %6193

; <label>:6193                                    ; preds = %6169, %6163
  %6194 = phi float [ %6192, %6169 ], [ 0.000000e+00, %6163 ]
  %6195 = extractvalue %dx.types.CBufRet.f32 %6140, 2
  %6196 = extractvalue %dx.types.CBufRet.f32 %6165, 1
  %6197 = fadd fast float %6196, %6195
  %6198 = fcmp fast ogt float %6197, 0.000000e+00
  br i1 %6198, label %6199, label %6223

; <label>:6199                                    ; preds = %6193
  %6200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6200, 0
  %6202 = extractvalue %dx.types.CBufRet.f32 %6200, 1
  %6203 = fsub fast float %6146, %6201
  %6204 = fsub fast float %6147, %6202
  %6205 = fcmp fast olt float %6203, 0.000000e+00
  %6206 = fcmp fast olt float %6204, 0.000000e+00
  %6207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6208 = extractvalue %dx.types.CBufRet.f32 %6207, 0
  %6209 = extractvalue %dx.types.CBufRet.f32 %6207, 1
  %6210 = extractvalue %dx.types.CBufRet.f32 %6207, 2
  %6211 = extractvalue %dx.types.CBufRet.f32 %6207, 3
  %6212 = select i1 %6205, float %6208, float %6210
  %6213 = select i1 %6206, float %6209, float %6211
  %6214 = fmul fast float %6212, %6203
  %6215 = fmul fast float %6213, %6204
  %6216 = call float @dx.op.unary.f32(i32 6, float %6214)  ; FAbs(value)
  %6217 = call float @dx.op.unary.f32(i32 6, float %6215)  ; FAbs(value)
  %6218 = extractvalue %dx.types.CBufRet.f32 %6100, 0
  %6219 = call float @dx.op.binary.f32(i32 35, float %6216, float %6217)  ; FMax(a,b)
  %6220 = fsub fast float %6218, %6219
  %6221 = call float @dx.op.unary.f32(i32 7, float %6220)  ; Saturate(value)
  %6222 = fmul fast float %6221, %6162
  br label %6223

; <label>:6223                                    ; preds = %6199, %6193, %6109
  %6224 = phi float [ 0.000000e+00, %6109 ], [ %6222, %6199 ], [ 0.000000e+00, %6193 ]
  %6225 = phi float [ 0.000000e+00, %6109 ], [ %6194, %6199 ], [ %6194, %6193 ]
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 1
  %6228 = call float @dx.op.unary.f32(i32 7, float %6227)  ; Saturate(value)
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 0
  %6231 = extractvalue %dx.types.CBufRet.f32 %6229, 1
  %6232 = fsub fast float %6128, %6230
  %6233 = fsub fast float %6132, %6231
  %6234 = fcmp fast olt float %6232, 0.000000e+00
  %6235 = fcmp fast olt float %6233, 0.000000e+00
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 0
  %6238 = extractvalue %dx.types.CBufRet.f32 %6236, 1
  %6239 = extractvalue %dx.types.CBufRet.f32 %6236, 2
  %6240 = extractvalue %dx.types.CBufRet.f32 %6236, 3
  %6241 = select i1 %6234, float %6237, float %6239
  %6242 = select i1 %6235, float %6238, float %6240
  %6243 = fmul fast float %6241, %6232
  %6244 = fmul fast float %6242, %6233
  %6245 = call float @dx.op.unary.f32(i32 6, float %6243)  ; FAbs(value)
  %6246 = call float @dx.op.unary.f32(i32 6, float %6244)  ; FAbs(value)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6100, 0
  %6248 = call float @dx.op.binary.f32(i32 35, float %6245, float %6246)  ; FMax(a,b)
  %6249 = fsub fast float %6247, %6248
  %6250 = call float @dx.op.unary.f32(i32 7, float %6249)  ; Saturate(value)
  %6251 = call float @dx.op.binary.f32(i32 36, float %6250, float %6228)  ; FMin(a,b)
  %6252 = fmul fast float %6251, %6162
  %6253 = fsub fast float %6224, %6252
  %6254 = fsub fast float %6225, %6224
  %6255 = fsub fast float %6254, %6252
  %6256 = call float @dx.op.binary.f32(i32 35, float %6224, float %6225)  ; FMax(a,b)
  %6257 = call float @dx.op.binary.f32(i32 35, float %6252, float %6256)  ; FMax(a,b)
  %6258 = fcmp fast olt float %6257, 1.000000e+00
  br i1 %6258, label %6259, label %6657, !dx.controlflow.hints !84

; <label>:6259                                    ; preds = %6223
  %6260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6261 = extractvalue %dx.types.CBufRet.f32 %6260, 0
  %6262 = fcmp fast une float %6261, 0.000000e+00
  br i1 %6262, label %6263, label %6657, !dx.controlflow.hints !85

; <label>:6263                                    ; preds = %6259
  %6264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6265 = extractvalue %dx.types.CBufRet.f32 %6264, 0
  %6266 = extractvalue %dx.types.CBufRet.f32 %6264, 1
  %6267 = extractvalue %dx.types.CBufRet.f32 %6264, 2
  %6268 = extractvalue %dx.types.CBufRet.f32 %6264, 3
  %6269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6270 = extractvalue %dx.types.CBufRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.CBufRet.f32 %6269, 1
  %6272 = extractvalue %dx.types.CBufRet.f32 %6269, 2
  %6273 = extractvalue %dx.types.CBufRet.f32 %6269, 3
  %6274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6275 = extractvalue %dx.types.CBufRet.f32 %6274, 0
  %6276 = extractvalue %dx.types.CBufRet.f32 %6274, 1
  %6277 = extractvalue %dx.types.CBufRet.f32 %6274, 2
  %6278 = extractvalue %dx.types.CBufRet.f32 %6274, 3
  %6279 = fmul fast float %6265, %6105
  %6280 = call float @dx.op.tertiary.f32(i32 46, float %6106, float %6266, float %6279)  ; FMad(a,b,c)
  %6281 = call float @dx.op.tertiary.f32(i32 46, float %6107, float %6267, float %6280)  ; FMad(a,b,c)
  %6282 = fadd fast float %6281, %6268
  %6283 = fmul fast float %6270, %6105
  %6284 = call float @dx.op.tertiary.f32(i32 46, float %6106, float %6271, float %6283)  ; FMad(a,b,c)
  %6285 = call float @dx.op.tertiary.f32(i32 46, float %6107, float %6272, float %6284)  ; FMad(a,b,c)
  %6286 = fadd fast float %6285, %6273
  %6287 = fmul fast float %6275, %6105
  %6288 = call float @dx.op.tertiary.f32(i32 46, float %6106, float %6276, float %6287)  ; FMad(a,b,c)
  %6289 = call float @dx.op.tertiary.f32(i32 46, float %6107, float %6277, float %6288)  ; FMad(a,b,c)
  %6290 = fadd fast float %6289, %6278
  %6291 = fcmp fast oge float %6282, 1.000000e+00
  %6292 = fcmp fast oge float %6286, 1.000000e+00
  %6293 = or i1 %6291, %6292
  %6294 = fcmp fast olt float %6282, 0.000000e+00
  %6295 = fcmp fast olt float %6286, 0.000000e+00
  %6296 = or i1 %6294, %6295
  %6297 = or i1 %6293, %6296
  br i1 %6297, label %6657, label %6298, !dx.controlflow.hints !86

; <label>:6298                                    ; preds = %6263
  %6299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6300 = extractvalue %dx.types.CBufRet.f32 %6299, 0
  %6301 = extractvalue %dx.types.CBufRet.f32 %6299, 1
  %6302 = extractvalue %dx.types.CBufRet.f32 %6299, 2
  %6303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6304 = extractvalue %dx.types.CBufRet.i32 %6303, 2
  %6305 = uitofp i32 %6304 to float
  %6306 = extractvalue %dx.types.CBufRet.i32 %6303, 3
  %6307 = uitofp i32 %6306 to float
  %6308 = extractvalue %dx.types.CBufRet.f32 %6299, 3
  %6309 = fmul fast float %6308, 2.000000e+00
  %6310 = fsub fast float %6282, %6300
  %6311 = fsub fast float %6286, %6301
  %6312 = fmul fast float %6309, %6310
  %6313 = fmul fast float %6309, %6311
  %6314 = fdiv fast float 1.000000e+00, %6088
  %6315 = fmul fast float %6313, %6314
  %6316 = call float @dx.op.unary.f32(i32 6, float %6315)  ; FAbs(value)
  %6317 = fmul fast float %6302, %6107
  %6318 = fmul fast float %6317, %6309
  %6319 = call float @dx.op.unary.f32(i32 6, float %6318)  ; FAbs(value)
  %6320 = call float @dx.op.unary.f32(i32 6, float %6312)  ; FAbs(value)
  %6321 = call float @dx.op.binary.f32(i32 35, float %6319, float %6316)  ; FMax(a,b)
  %6322 = call float @dx.op.binary.f32(i32 35, float %6320, float %6321)  ; FMax(a,b)
  %6323 = fmul fast float %6322, 2.000000e+00
  %6324 = call float @dx.op.unary.f32(i32 23, float %6323)  ; Log(value)
  %6325 = call float @dx.op.binary.f32(i32 35, float %6324, float %6305)  ; FMax(a,b)
  %6326 = call float @dx.op.unary.f32(i32 22, float %6325)  ; Frc(value)
  %6327 = fadd fast float %6326, 0xBFEA666660000000
  %6328 = fmul fast float %6327, 8.000000e+00
  %6329 = call float @dx.op.unary.f32(i32 7, float %6328)  ; Saturate(value)
  %6330 = call float @dx.op.unary.f32(i32 27, float %6325)  ; Round_ni(value)
  %6331 = fadd fast float %6330, %6329
  %6332 = call float @dx.op.binary.f32(i32 36, float %6331, float %6307)  ; FMin(a,b)
  %6333 = call float @dx.op.unary.f32(i32 27, float %6332)  ; Round_ni(value)
  %6334 = fsub fast float -0.000000e+00, %6333
  %6335 = call float @dx.op.unary.f32(i32 21, float %6334)  ; Exp(value)
  %6336 = fmul fast float %6335, %6309
  %6337 = fmul fast float %6336, %6282
  %6338 = fmul fast float %6336, %6286
  %6339 = fmul fast float %6337, 2.500000e-01
  %6340 = fmul fast float %6338, 2.500000e-01
  %6341 = fadd fast float %6339, 5.000000e-01
  %6342 = fadd fast float %6340, 5.000000e-01
  %6343 = fsub fast float %6307, %6305
  %6344 = fptoui float %6343 to i32
  %6345 = add i32 %6344, 320
  %6346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %6345)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.f32 %6346, 0
  %6348 = extractvalue %dx.types.CBufRet.f32 %6346, 1
  %6349 = fcmp fast une float %6332, %6307
  %6350 = fsub fast float %6282, %6347
  %6351 = fsub fast float %6286, %6348
  %6352 = call float @dx.op.unary.f32(i32 6, float %6350)  ; FAbs(value)
  %6353 = call float @dx.op.unary.f32(i32 6, float %6351)  ; FAbs(value)
  %6354 = fmul fast float %6352, %6336
  %6355 = fmul fast float %6353, %6336
  %6356 = fcmp fast olt float %6354, 1.000000e+00
  %6357 = fcmp fast olt float %6355, 1.000000e+00
  %6358 = and i1 %6356, %6357
  %6359 = or i1 %6349, %6358
  br i1 %6359, label %6360, label %6657, !dx.controlflow.hints !87

; <label>:6360                                    ; preds = %6298
  %6361 = fmul fast float %6338, 5.000000e-01
  %6362 = fmul fast float %6337, 5.000000e-01
  %6363 = fadd fast float %6361, 5.000000e-01
  %6364 = fadd fast float %6362, 5.000000e-01
  %6365 = sitofp i32 %6304 to float
  %6366 = fsub fast float %6332, %6365
  %6367 = call float @dx.op.unary.f32(i32 27, float %6366)  ; Round_ni(value)
  %6368 = call float @dx.op.unary.f32(i32 22, float %6332)  ; Frc(value)
  %6369 = call float @dx.op.unary.f32(i32 22, float %6364)  ; Frc(value)
  %6370 = call float @dx.op.unary.f32(i32 22, float %6363)  ; Frc(value)
  %6371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %36, float %6369, float %6370, float %6367, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6372 = extractvalue %dx.types.ResRet.f32 %6371, 0
  %6373 = extractvalue %dx.types.ResRet.f32 %6371, 1
  %6374 = extractvalue %dx.types.ResRet.f32 %6371, 2
  %6375 = extractvalue %dx.types.ResRet.f32 %6371, 3
  %6376 = fcmp fast ogt float %6368, 0.000000e+00
  br i1 %6376, label %6377, label %6398, !dx.controlflow.hints !88

; <label>:6377                                    ; preds = %6360
  %6378 = fadd fast float %6367, 1.000000e+00
  %6379 = call float @dx.op.unary.f32(i32 22, float %6341)  ; Frc(value)
  %6380 = call float @dx.op.unary.f32(i32 22, float %6342)  ; Frc(value)
  %6381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %36, float %6379, float %6380, float %6378, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6382 = extractvalue %dx.types.ResRet.f32 %6381, 0
  %6383 = extractvalue %dx.types.ResRet.f32 %6381, 1
  %6384 = extractvalue %dx.types.ResRet.f32 %6381, 2
  %6385 = extractvalue %dx.types.ResRet.f32 %6381, 3
  %6386 = fsub fast float %6382, %6372
  %6387 = fsub fast float %6383, %6373
  %6388 = fsub fast float %6384, %6374
  %6389 = fsub fast float %6385, %6375
  %6390 = fmul fast float %6386, %6368
  %6391 = fmul fast float %6387, %6368
  %6392 = fmul fast float %6388, %6368
  %6393 = fmul fast float %6389, %6368
  %6394 = fadd fast float %6390, %6372
  %6395 = fadd fast float %6391, %6373
  %6396 = fadd fast float %6392, %6374
  %6397 = fadd fast float %6393, %6375
  br label %6398

; <label>:6398                                    ; preds = %6377, %6360
  %6399 = phi float [ %6394, %6377 ], [ %6372, %6360 ]
  %6400 = phi float [ %6395, %6377 ], [ %6373, %6360 ]
  %6401 = phi float [ %6396, %6377 ], [ %6374, %6360 ]
  %6402 = phi float [ %6397, %6377 ], [ %6375, %6360 ]
  %6403 = fadd fast float %6399, -5.000000e-01
  %6404 = fadd fast float %6401, -5.000000e-01
  %6405 = fmul fast float %6403, 0xBFD5555560000000
  %6406 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6404, float %6405)  ; FMad(a,b,c)
  %6407 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6400, float 0.000000e+00)  ; FMad(a,b,c)
  %6408 = fadd fast float %6407, %6402
  %6409 = fmul fast float %6403, -7.500000e-01
  %6410 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6404, float %6409)  ; FMad(a,b,c)
  %6411 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6400, float 0.000000e+00)  ; FMad(a,b,c)
  %6412 = fadd fast float %6411, %6402
  %6413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6414 = extractvalue %dx.types.CBufRet.f32 %6413, 0
  %6415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6416 = extractvalue %dx.types.CBufRet.f32 %6415, 0
  %6417 = extractvalue %dx.types.CBufRet.f32 %6415, 1
  %6418 = extractvalue %dx.types.CBufRet.f32 %6415, 2
  %6419 = extractvalue %dx.types.CBufRet.f32 %6415, 3
  %6420 = fsub fast float %6416, %6406
  %6421 = fsub fast float %6417, %6408
  %6422 = fsub fast float %6418, %6410
  %6423 = fsub fast float %6419, %6412
  %6424 = fmul fast float %6420, %6414
  %6425 = fmul fast float %6421, %6414
  %6426 = fmul fast float %6422, %6414
  %6427 = fmul fast float %6423, %6414
  %6428 = fadd fast float %6424, %6406
  %6429 = fadd fast float %6425, %6408
  %6430 = fadd fast float %6426, %6410
  %6431 = fadd fast float %6427, %6412
  %6432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6433 = extractvalue %dx.types.ResRet.i32 %6432, 0
  %6434 = and i32 %6433, 536870911
  %6435 = uitofp i32 %6434 to float
  %6436 = fmul fast float %6435, %6282
  %6437 = fmul fast float %6435, %6286
  %6438 = fptoui float %6436 to i32
  %6439 = fptoui float %6437 to i32
  %6440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6441 = extractvalue %dx.types.ResRet.i32 %6440, 0
  %6442 = and i32 %6441, 31
  %6443 = lshr i32 %6438, %6442
  %6444 = lshr i32 %6439, %6442
  %6445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6446 = extractvalue %dx.types.ResRet.i32 %6445, 0
  %6447 = and i32 %6446, 31
  %6448 = shl i32 1, %6447
  %6449 = call i32 @dx.op.binary.i32(i32 40, i32 %6448, i32 4)  ; UMin(a,b)
  %6450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6451 = extractvalue %dx.types.ResRet.i32 %6450, 0
  %6452 = extractvalue %dx.types.ResRet.i32 %6450, 1
  %6453 = icmp eq i32 %6449, 0
  br i1 %6453, label %6495, label %6454

; <label>:6454                                    ; preds = %6398
  br label %6455

; <label>:6455                                    ; preds = %6483, %6454
  %6456 = phi i32 [ %6486, %6483 ], [ 0, %6454 ]
  %6457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6458 = extractvalue %dx.types.ResRet.i32 %6457, 0
  %6459 = lshr i32 %6458, 16
  %6460 = and i32 %6459, 31
  %6461 = shl i32 %6444, %6460
  %6462 = add i32 %6461, %6443
  %6463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6464 = extractvalue %dx.types.ResRet.i32 %6463, 0
  %6465 = and i32 %6464, 31
  %6466 = shl i32 %6462, %6465
  %6467 = add i32 %6466, %6456
  %6468 = shl i32 %6467, 2
  %6469 = add i32 %6468, 32
  %6470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6469, i32 undef)  ; BufferLoad(srv,index,wot)
  %6471 = extractvalue %dx.types.ResRet.i32 %6470, 0
  %6472 = icmp slt i32 %6471, 0
  %6473 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6456
  %6474 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6456
  %6475 = bitcast float* %6473 to i32*
  %6476 = bitcast float* %6474 to i32*
  br i1 %6472, label %6477, label %6483

; <label>:6477                                    ; preds = %6455
  %6478 = and i32 %6471, 1073741823
  %6479 = add nuw nsw i32 %6478, 20
  %6480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6479, i32 undef)  ; BufferLoad(srv,index,wot)
  %6481 = extractvalue %dx.types.ResRet.i32 %6480, 0
  %6482 = extractvalue %dx.types.ResRet.i32 %6480, 1
  br label %6483

; <label>:6483                                    ; preds = %6477, %6455
  %6484 = phi i32 [ %6481, %6477 ], [ %6451, %6455 ]
  %6485 = phi i32 [ %6482, %6477 ], [ %6452, %6455 ]
  store i32 %6484, i32* %6475, align 4
  store i32 %6485, i32* %6476, align 4
  %6486 = add nuw i32 %6456, 1
  %6487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6488 = extractvalue %dx.types.CBufRet.i32 %6487, 2
  %6489 = icmp eq i32 %6488, 0
  %6490 = icmp ugt i32 %6471, -1073741825
  %6491 = and i1 %6490, %6489
  %6492 = icmp ult i32 %6486, %6449
  %6493 = and i1 %6491, %6492
  br i1 %6493, label %6455, label %6494

; <label>:6494                                    ; preds = %6483
  br label %6495

; <label>:6495                                    ; preds = %6494, %6398
  %6496 = phi i32 [ 0, %6398 ], [ %6486, %6494 ]
  %6497 = extractvalue %dx.types.CBufRet.f32 %6260, 2
  %6498 = fptoui float %6497 to i32
  %6499 = icmp eq i32 %6498, 0
  br i1 %6499, label %6551, label %6500

; <label>:6500                                    ; preds = %6495
  br label %6501

; <label>:6501                                    ; preds = %6546, %6500
  %6502 = phi i32 [ %6547, %6546 ], [ %6496, %6500 ]
  %6503 = phi i32 [ %6548, %6546 ], [ 0, %6500 ]
  %6504 = lshr i32 %6503, 2
  %6505 = and i32 %6503, 3
  %6506 = add nuw nsw i32 %6504, 83
  %6507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 %6506)  ; CBufferLoadLegacy(handle,regIndex)
  %6508 = extractvalue %dx.types.CBufRet.i32 %6507, 0
  %6509 = extractvalue %dx.types.CBufRet.i32 %6507, 1
  %6510 = extractvalue %dx.types.CBufRet.i32 %6507, 2
  %6511 = extractvalue %dx.types.CBufRet.i32 %6507, 3
  %6512 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 0
  store i32 %6508, i32* %6512, align 4
  %6513 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 1
  store i32 %6509, i32* %6513, align 4
  %6514 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 2
  store i32 %6510, i32* %6514, align 4
  %6515 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 3
  store i32 %6511, i32* %6515, align 4
  %6516 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 %6505
  %6517 = load i32, i32* %6516, align 4, !tbaa !89, !noalias !93
  %6518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6519 = extractvalue %dx.types.ResRet.i32 %6518, 0
  %6520 = lshr i32 %6519, 16
  %6521 = and i32 %6520, 31
  %6522 = shl i32 %6444, %6521
  %6523 = add i32 %6522, %6443
  %6524 = shl i32 %6523, 2
  %6525 = add i32 %6524, %6517
  %6526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6525, i32 undef)  ; BufferLoad(srv,index,wot)
  %6527 = extractvalue %dx.types.ResRet.i32 %6526, 0
  %6528 = icmp eq i32 %6527, 0
  br i1 %6528, label %6546, label %6529

; <label>:6529                                    ; preds = %6501
  %6530 = icmp slt i32 %6527, 0
  %6531 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6502
  %6532 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6502
  %6533 = bitcast float* %6531 to i32*
  %6534 = bitcast float* %6532 to i32*
  br i1 %6530, label %6535, label %6542

; <label>:6535                                    ; preds = %6529
  %6536 = and i32 %6527, 1073741823
  %6537 = add i32 %6517, 20
  %6538 = add i32 %6537, %6536
  %6539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6538, i32 undef)  ; BufferLoad(srv,index,wot)
  %6540 = extractvalue %dx.types.ResRet.i32 %6539, 0
  %6541 = extractvalue %dx.types.ResRet.i32 %6539, 1
  br label %6542

; <label>:6542                                    ; preds = %6535, %6529
  %6543 = phi i32 [ %6540, %6535 ], [ %6451, %6529 ]
  %6544 = phi i32 [ %6541, %6535 ], [ %6452, %6529 ]
  store i32 %6543, i32* %6533, align 4
  store i32 %6544, i32* %6534, align 4
  %6545 = add i32 %6502, 1
  br label %6546

; <label>:6546                                    ; preds = %6542, %6501
  %6547 = phi i32 [ %6502, %6501 ], [ %6545, %6542 ]
  %6548 = add nuw i32 %6503, 1
  %6549 = icmp eq i32 %6548, %6498
  br i1 %6549, label %6550, label %6501

; <label>:6550                                    ; preds = %6546
  br label %6551

; <label>:6551                                    ; preds = %6550, %6495
  %6552 = phi i32 [ %6496, %6495 ], [ %6547, %6550 ]
  %6553 = icmp eq i32 %6552, 1
  %6554 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  %6555 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  br i1 %6553, label %6556, label %6559

; <label>:6556                                    ; preds = %6551
  %6557 = load float, float* %6554, align 4
  %6558 = load float, float* %6555, align 4
  br label %6586

; <label>:6559                                    ; preds = %6551
  %6560 = load float, float* %6554, align 4
  %6561 = load float, float* %6555, align 4
  %6562 = fdiv fast float 1.000000e+00, %6561
  %6563 = fsub fast float %6560, %6562
  %6564 = icmp ugt i32 %6552, 1
  br i1 %6564, label %6565, label %6581

; <label>:6565                                    ; preds = %6559
  br label %6566

; <label>:6566                                    ; preds = %6566, %6565
  %6567 = phi float [ %6576, %6566 ], [ %6563, %6565 ]
  %6568 = phi float [ %6577, %6566 ], [ %6560, %6565 ]
  %6569 = phi i32 [ %6578, %6566 ], [ 1, %6565 ]
  %6570 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6569
  %6571 = load float, float* %6570, align 4
  %6572 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6569
  %6573 = load float, float* %6572, align 4
  %6574 = fdiv fast float 1.000000e+00, %6573
  %6575 = fsub fast float %6571, %6574
  %6576 = call float @dx.op.binary.f32(i32 36, float %6567, float %6575)  ; FMin(a,b)
  %6577 = call float @dx.op.binary.f32(i32 35, float %6568, float %6571)  ; FMax(a,b)
  %6578 = add nuw i32 %6569, 1
  %6579 = icmp eq i32 %6578, %6552
  br i1 %6579, label %6580, label %6566

; <label>:6580                                    ; preds = %6566
  br label %6581

; <label>:6581                                    ; preds = %6580, %6559
  %6582 = phi float [ %6563, %6559 ], [ %6576, %6580 ]
  %6583 = phi float [ %6560, %6559 ], [ %6577, %6580 ]
  %6584 = fsub fast float %6583, %6582
  %6585 = fdiv fast float 1.000000e+00, %6584
  br label %6586

; <label>:6586                                    ; preds = %6581, %6556
  %6587 = phi float [ %6557, %6556 ], [ %6583, %6581 ]
  %6588 = phi float [ %6558, %6556 ], [ %6585, %6581 ]
  %6589 = fadd fast float %6290, %6587
  %6590 = fmul fast float %6589, %6588
  %6591 = call float @dx.op.unary.f32(i32 7, float %6590)  ; Saturate(value)
  %6592 = fmul fast float %6591, 2.000000e+00
  %6593 = fsub fast float 1.000000e+00, %6592
  %6594 = fmul fast float %6428, %6428
  %6595 = fsub fast float %6429, %6594
  %6596 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6595)  ; FMax(a,b)
  %6597 = fdiv fast float 1.000000e+00, %6596
  %6598 = fmul fast float %6429, %6428
  %6599 = fsub fast float %6430, %6598
  %6600 = fsub fast float %6593, %6428
  %6601 = fmul fast float %6593, %6593
  %6602 = fsub fast float %6601, %6429
  %6603 = fmul fast float %6597, %6599
  %6604 = fmul fast float %6603, %6600
  %6605 = fsub fast float %6602, %6604
  %6606 = fmul fast float %6429, %6429
  %6607 = fsub fast float %6431, %6606
  %6608 = fmul fast float %6599, %6599
  %6609 = fmul fast float %6608, %6597
  %6610 = fsub fast float %6607, %6609
  %6611 = fdiv fast float %6605, %6610
  %6612 = fmul fast float %6611, %6599
  %6613 = fsub fast float %6600, %6612
  %6614 = fmul fast float %6613, %6597
  %6615 = fmul fast float %6614, %6428
  %6616 = fsub fast float 1.000000e+00, %6615
  %6617 = fmul fast float %6611, %6429
  %6618 = fsub fast float %6616, %6617
  %6619 = fmul fast float %6614, %6614
  %6620 = fmul fast float %6611, 4.000000e+00
  %6621 = fmul fast float %6620, %6618
  %6622 = fsub fast float %6619, %6621
  %6623 = call float @dx.op.unary.f32(i32 24, float %6622)  ; Sqrt(value)
  %6624 = fcmp fast oge float %6614, 0.000000e+00
  %6625 = fsub fast float -0.000000e+00, %6623
  %6626 = select i1 %6624, float %6625, float %6623
  %6627 = fsub fast float %6626, %6614
  %6628 = fdiv fast float %6627, %6611
  %6629 = fdiv fast float %6618, %6627
  %6630 = fmul fast float %6628, 5.000000e-01
  %6631 = fmul fast float %6629, 2.000000e+00
  %6632 = select i1 %6624, float %6630, float %6631
  %6633 = select i1 %6624, float %6631, float %6630
  %6634 = call float @dx.op.binary.f32(i32 35, float %6632, float %6633)  ; FMax(a,b)
  %6635 = call float @dx.op.binary.f32(i32 36, float %6632, float %6633)  ; FMin(a,b)
  %6636 = fcmp fast ogt float %6593, %6634
  %6637 = fsub fast float %6593, %6635
  %6638 = fsub fast float %6593, %6634
  %6639 = fsub fast float %6634, %6635
  %6640 = select i1 %6636, float %6638, float %6639
  %6641 = fmul float %6637, %6640
  %6642 = select i1 %6636, float %6635, float %6593
  %6643 = fcmp fast ogt float %6593, %6635
  %6644 = fmul fast float %6642, %6634
  %6645 = fadd fast float %6642, %6634
  %6646 = fmul fast float %6645, %6428
  %6647 = fadd fast float %6644, %6429
  %6648 = fsub fast float %6647, %6646
  %6649 = fdiv fast float %6648, %6641
  %6650 = select i1 %6643, float %6649, float 0.000000e+00
  %6651 = fsub fast float 1.000000e+00, %6650
  %6652 = select i1 %6636, float %6651, float %6650
  %6653 = call float @dx.op.unary.f32(i32 7, float %6652)  ; Saturate(value)
  %6654 = extractvalue %dx.types.CBufRet.f32 %6413, 3
  %6655 = fmul fast float %6654, %6653
  %6656 = fsub fast float 1.000000e+00, %6655
  br label %6657

; <label>:6657                                    ; preds = %6586, %6298, %6263, %6259, %6223
  %6658 = phi float [ 1.000000e+00, %6223 ], [ %6656, %6586 ], [ 1.000000e+00, %6263 ], [ 1.000000e+00, %6298 ], [ 1.000000e+00, %6259 ]
  %6659 = fcmp fast ogt float %6255, 0.000000e+00
  br i1 %6659, label %6660, label %6668, !dx.controlflow.hints !102

; <label>:6660                                    ; preds = %6657
  %6661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6662 = extractvalue %dx.types.CBufRet.f32 %6661, 2
  %6663 = fadd fast float %6662, %6136
  %6664 = call float @dx.op.binary.f32(i32 35, float %6663, float 0.000000e+00)  ; FMax(a,b)
  %6665 = fadd fast float %6664, 0x3F10000000000000
  %6666 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %39, float %6154, float %6155, float undef, float undef, i32 0, i32 0, i32 undef, float %6665)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6667 = extractvalue %dx.types.ResRet.f32 %6666, 0
  br label %6668

; <label>:6668                                    ; preds = %6660, %6657
  %6669 = phi float [ %6667, %6660 ], [ 1.000000e+00, %6657 ]
  %6670 = fcmp fast ogt float %6253, 0.000000e+00
  br i1 %6670, label %6671, label %6679, !dx.controlflow.hints !103

; <label>:6671                                    ; preds = %6668
  %6672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6673 = extractvalue %dx.types.CBufRet.f32 %6672, 1
  %6674 = fadd fast float %6673, %6136
  %6675 = call float @dx.op.binary.f32(i32 35, float %6674, float 0.000000e+00)  ; FMax(a,b)
  %6676 = fadd fast float %6675, 0x3F10000000000000
  %6677 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %39, float %6146, float %6147, float undef, float undef, i32 0, i32 0, i32 undef, float %6676)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6678 = extractvalue %dx.types.ResRet.f32 %6677, 0
  br label %6679

; <label>:6679                                    ; preds = %6671, %6668
  %6680 = phi float [ %6678, %6671 ], [ 1.000000e+00, %6668 ]
  %6681 = fcmp fast ogt float %6252, 0.000000e+00
  br i1 %6681, label %6682, label %6694, !dx.controlflow.hints !104

; <label>:6682                                    ; preds = %6679
  %6683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6684 = extractvalue %dx.types.CBufRet.f32 %6683, 0
  %6685 = fadd fast float %6684, %6136
  %6686 = call float @dx.op.binary.f32(i32 35, float %6685, float 0.000000e+00)  ; FMax(a,b)
  %6687 = fadd fast float %6686, 0x3F10000000000000
  br i1 %6139, label %6688, label %6691, !dx.controlflow.hints !105

; <label>:6688                                    ; preds = %6682
  %6689 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %39, float %6128, float %6132, float undef, float undef, i32 0, i32 0, i32 undef, float %6687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6690 = extractvalue %dx.types.ResRet.f32 %6689, 0
  br label %6694

; <label>:6691                                    ; preds = %6682
  %6692 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %39, float %6128, float %6132, float undef, float undef, i32 0, i32 0, i32 undef, float %6687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6693 = extractvalue %dx.types.ResRet.f32 %6692, 0
  br label %6694

; <label>:6694                                    ; preds = %6691, %6688, %6679
  %6695 = phi float [ %6690, %6688 ], [ %6693, %6691 ], [ 1.000000e+00, %6679 ]
  %6696 = fsub fast float %6669, %6658
  %6697 = fmul fast float %6696, %6225
  %6698 = fadd fast float %6697, %6658
  %6699 = fsub fast float %6680, %6698
  %6700 = fmul fast float %6699, %6224
  %6701 = fadd fast float %6700, %6698
  %6702 = fsub fast float %6695, %6701
  %6703 = fmul fast float %6702, %6252
  %6704 = fadd fast float %6703, %6701
  %6705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6706 = extractvalue %dx.types.CBufRet.f32 %6705, 2
  %6707 = fcmp fast ogt float %6706, 0.000000e+00
  br i1 %6707, label %6708, label %6748, !dx.controlflow.hints !106

; <label>:6708                                    ; preds = %6694
  %6709 = fcmp fast ugt float %6706, 0.000000e+00
  br i1 %6709, label %6710, label %6745

; <label>:6710                                    ; preds = %6708
  %6711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6712 = extractvalue %dx.types.CBufRet.f32 %6711, 0
  %6713 = extractvalue %dx.types.CBufRet.f32 %6711, 1
  %6714 = extractvalue %dx.types.CBufRet.f32 %6711, 2
  %6715 = extractvalue %dx.types.CBufRet.f32 %6711, 3
  %6716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6717 = extractvalue %dx.types.CBufRet.f32 %6716, 0
  %6718 = extractvalue %dx.types.CBufRet.f32 %6716, 1
  %6719 = extractvalue %dx.types.CBufRet.f32 %6716, 2
  %6720 = extractvalue %dx.types.CBufRet.f32 %6716, 3
  %6721 = extractvalue %dx.types.CBufRet.f32 %6705, 0
  %6722 = extractvalue %dx.types.CBufRet.f32 %6705, 1
  %6723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6724 = extractvalue %dx.types.CBufRet.f32 %6723, 0
  %6725 = extractvalue %dx.types.CBufRet.f32 %6723, 1
  %6726 = extractvalue %dx.types.CBufRet.f32 %6723, 2
  %6727 = fadd fast float %6724, %6105
  %6728 = fadd fast float %6725, %6106
  %6729 = fadd fast float %6726, %6107
  %6730 = fmul fast float %6727, %6712
  %6731 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6728, float %6730)  ; FMad(a,b,c)
  %6732 = call float @dx.op.tertiary.f32(i32 46, float %6714, float %6729, float %6731)  ; FMad(a,b,c)
  %6733 = fadd fast float %6732, %6715
  %6734 = fmul fast float %6727, %6717
  %6735 = call float @dx.op.tertiary.f32(i32 46, float %6718, float %6728, float %6734)  ; FMad(a,b,c)
  %6736 = call float @dx.op.tertiary.f32(i32 46, float %6719, float %6729, float %6735)  ; FMad(a,b,c)
  %6737 = fadd fast float %6736, %6720
  %6738 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %34, float %6733, float %6737, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6739 = extractvalue %dx.types.ResRet.f32 %6738, 0
  %6740 = fmul fast float %6739, %6722
  %6741 = fadd fast float %6740, %6721
  %6742 = call float @dx.op.unary.f32(i32 7, float %6741)  ; Saturate(value)
  %6743 = fmul fast float %6742, %6706
  %6744 = fsub fast float 1.000000e+00, %6743
  br label %6745

; <label>:6745                                    ; preds = %6710, %6708
  %6746 = phi float [ %6744, %6710 ], [ 1.000000e+00, %6708 ]
  %6747 = fmul fast float %6746, %6704
  br label %6748

; <label>:6748                                    ; preds = %6745, %6694, %6085
  %6749 = phi float [ 1.000000e+00, %6085 ], [ %6747, %6745 ], [ %6704, %6694 ]
  %6750 = call float @dx.op.binary.f32(i32 36, float %6749, float %6749)  ; FMin(a,b)
  %6751 = call float @dx.op.binary.f32(i32 36, float %6749, float %6750)  ; FMin(a,b)
  %6752 = fcmp fast ogt float %6751, 0.000000e+00
  br i1 %6752, label %6753, label %6914, !dx.controlflow.hints !107

; <label>:6753                                    ; preds = %6748
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 0
  %6756 = extractvalue %dx.types.CBufRet.f32 %6754, 1
  %6757 = extractvalue %dx.types.CBufRet.f32 %6754, 2
  %6758 = extractvalue %dx.types.CBufRet.f32 %6754, 3
  %6759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6760 = extractvalue %dx.types.CBufRet.f32 %6759, 0
  %6761 = extractvalue %dx.types.CBufRet.f32 %6759, 1
  %6762 = extractvalue %dx.types.CBufRet.f32 %6759, 2
  %6763 = extractvalue %dx.types.CBufRet.f32 %6759, 3
  %6764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6765 = extractvalue %dx.types.CBufRet.f32 %6764, 0
  %6766 = extractvalue %dx.types.CBufRet.f32 %6764, 1
  %6767 = extractvalue %dx.types.CBufRet.f32 %6764, 2
  %6768 = extractvalue %dx.types.CBufRet.f32 %6764, 3
  %6769 = fmul fast float %6755, %6105
  %6770 = call float @dx.op.tertiary.f32(i32 46, float %6106, float %6756, float %6769)  ; FMad(a,b,c)
  %6771 = call float @dx.op.tertiary.f32(i32 46, float %6107, float %6757, float %6770)  ; FMad(a,b,c)
  %6772 = fadd fast float %6771, %6758
  %6773 = fmul fast float %6760, %6105
  %6774 = call float @dx.op.tertiary.f32(i32 46, float %6106, float %6761, float %6773)  ; FMad(a,b,c)
  %6775 = call float @dx.op.tertiary.f32(i32 46, float %6107, float %6762, float %6774)  ; FMad(a,b,c)
  %6776 = fadd fast float %6775, %6763
  %6777 = fmul fast float %6765, %6105
  %6778 = call float @dx.op.tertiary.f32(i32 46, float %6106, float %6766, float %6777)  ; FMad(a,b,c)
  %6779 = call float @dx.op.tertiary.f32(i32 46, float %6107, float %6767, float %6778)  ; FMad(a,b,c)
  %6780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6781 = extractvalue %dx.types.CBufRet.f32 %6780, 0
  %6782 = extractvalue %dx.types.CBufRet.f32 %6780, 1
  %6783 = extractvalue %dx.types.CBufRet.f32 %6780, 3
  %6784 = fmul fast float %6783, %6772
  %6785 = fmul fast float %6783, %6776
  %6786 = fadd fast float %6784, %6781
  %6787 = fadd fast float %6785, %6782
  %6788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6789 = extractvalue %dx.types.CBufRet.f32 %6788, 0
  %6790 = extractvalue %dx.types.CBufRet.f32 %6788, 1
  %6791 = fsub fast float %6786, %6789
  %6792 = fsub fast float %6787, %6790
  %6793 = fcmp fast olt float %6791, 0.000000e+00
  %6794 = fcmp fast olt float %6792, 0.000000e+00
  %6795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6796 = extractvalue %dx.types.CBufRet.f32 %6795, 0
  %6797 = extractvalue %dx.types.CBufRet.f32 %6795, 1
  %6798 = extractvalue %dx.types.CBufRet.f32 %6795, 2
  %6799 = extractvalue %dx.types.CBufRet.f32 %6795, 3
  %6800 = select i1 %6793, float %6796, float %6798
  %6801 = select i1 %6794, float %6797, float %6799
  %6802 = fmul fast float %6800, %6791
  %6803 = fmul fast float %6801, %6792
  %6804 = call float @dx.op.unary.f32(i32 6, float %6802)  ; FAbs(value)
  %6805 = call float @dx.op.unary.f32(i32 6, float %6803)  ; FAbs(value)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6100, 0
  %6807 = call float @dx.op.binary.f32(i32 35, float %6804, float %6805)  ; FMax(a,b)
  %6808 = fsub fast float %6806, %6807
  %6809 = call float @dx.op.unary.f32(i32 7, float %6808)  ; Saturate(value)
  %6810 = fcmp fast ogt float %6809, 0.000000e+00
  br i1 %6810, label %6811, label %6852, !dx.controlflow.hints !108

; <label>:6811                                    ; preds = %6753
  %6812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %37, float %6786, float %6787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6813 = extractvalue %dx.types.ResRet.f32 %6812, 1
  %6814 = fcmp fast ogt float %6813, 0.000000e+00
  br i1 %6814, label %6815, label %6847

; <label>:6815                                    ; preds = %6811
  %6816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %6786, float %6787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6817 = extractvalue %dx.types.ResRet.f32 %6816, 0
  %6818 = extractvalue %dx.types.ResRet.f32 %6816, 1
  %6819 = extractvalue %dx.types.ResRet.f32 %6816, 2
  %6820 = extractvalue %dx.types.ResRet.f32 %6816, 3
  %6821 = fsub fast float 1.000000e+00, %6768
  %6822 = fsub fast float %6821, %6779
  %6823 = fmul fast float %6822, 0x400921FB60000000
  %6824 = fadd fast float %6823, 0x3FF921FB60000000
  %6825 = call float @dx.op.unary.f32(i32 13, float %6824)  ; Sin(value)
  %6826 = fadd fast float %6825, -1.000000e+00
  %6827 = fmul fast float %6826, 0x3FD45F3060000000
  %6828 = fmul fast float %6822, 0x401921FB60000000
  %6829 = fadd fast float %6828, 0x400921FB60000000
  %6830 = call float @dx.op.unary.f32(i32 13, float %6829)  ; Sin(value)
  %6831 = fadd fast float %6830, 0x3E7777A5C0000000
  %6832 = fmul fast float %6831, 0x3FC45F3060000000
  %6833 = fmul fast float %6822, 0x4022D97C80000000
  %6834 = fadd fast float %6833, 0x4012D97C80000000
  %6835 = call float @dx.op.unary.f32(i32 13, float %6834)  ; Sin(value)
  %6836 = fadd fast float %6835, 1.000000e+00
  %6837 = fmul fast float %6836, 0x3FBB2995E0000000
  %6838 = fmul fast float %6822, 0x402921FB60000000
  %6839 = fadd fast float %6838, 0x401921FB60000000
  %6840 = call float @dx.op.unary.f32(i32 13, float %6839)  ; Sin(value)
  %6841 = fadd fast float %6840, 0xBE8777A5C0000000
  %6842 = fmul fast float %6841, 0x3FB45F3060000000
  %6843 = call float @dx.op.dot4.f32(i32 56, float %6817, float %6818, float %6819, float %6820, float %6827, float %6832, float %6837, float %6842)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6844 = fmul fast float %6843, 0xBFF7154760000000
  %6845 = call float @dx.op.unary.f32(i32 21, float %6844)  ; Exp(value)
  %6846 = call float @dx.op.unary.f32(i32 7, float %6845)  ; Saturate(value)
  br label %6847

; <label>:6847                                    ; preds = %6815, %6811
  %6848 = phi float [ %6846, %6815 ], [ 1.000000e+00, %6811 ]
  %6849 = fadd fast float %6848, -1.000000e+00
  %6850 = fmul fast float %6849, %6809
  %6851 = fadd fast float %6850, 1.000000e+00
  br label %6852

; <label>:6852                                    ; preds = %6847, %6753
  %6853 = phi float [ %6851, %6847 ], [ 1.000000e+00, %6753 ]
  %6854 = fmul fast float %6853, %6749
  %6855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6856 = extractvalue %dx.types.CBufRet.f32 %6855, 0
  %6857 = extractvalue %dx.types.CBufRet.f32 %6855, 1
  %6858 = extractvalue %dx.types.CBufRet.f32 %6855, 2
  %6859 = fadd fast float %6856, %178
  %6860 = fadd fast float %6857, %179
  %6861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6862 = extractvalue %dx.types.CBufRet.f32 %6861, 1
  %6863 = fsub fast float -0.000000e+00, %6859
  %6864 = fsub fast float -0.000000e+00, %6860
  %6865 = fsub fast float -0.000000e+00, %180
  %6866 = fsub fast float %6865, %6858
  %6867 = fadd fast float %6866, %6862
  %6868 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6863, float %6864, float %6867)  ; Dot3(ax,ay,az,bx,by,bz)
  %6869 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6086, float %6087, float %6088)  ; Dot3(ax,ay,az,bx,by,bz)
  %6870 = fdiv fast float 1.000000e+00, %6869
  %6871 = fmul fast float %6870, %6868
  %6872 = fmul fast float %6086, %6871
  %6873 = fmul fast float %6087, %6871
  %6874 = fadd fast float %6872, %6859
  %6875 = fadd fast float %6873, %6860
  %6876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6877 = extractvalue %dx.types.CBufRet.f32 %6876, 0
  %6878 = extractvalue %dx.types.CBufRet.f32 %6876, 1
  %6879 = fsub fast float %6874, %6877
  %6880 = fsub fast float %6875, %6878
  %6881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6882 = extractvalue %dx.types.CBufRet.f32 %6881, 2
  %6883 = extractvalue %dx.types.CBufRet.f32 %6881, 3
  %6884 = fmul fast float %6879, %6882
  %6885 = fmul fast float %6880, %6883
  %6886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.i32 %6886, 3
  %6888 = icmp eq i32 %6887, 0
  br i1 %6888, label %6894, label %6889

; <label>:6889                                    ; preds = %6852
  %6890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %36, float %6884, float %6885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6891 = extractvalue %dx.types.ResRet.f32 %6890, 0
  %6892 = extractvalue %dx.types.ResRet.f32 %6890, 1
  %6893 = extractvalue %dx.types.ResRet.f32 %6890, 2
  br label %6899

; <label>:6894                                    ; preds = %6852
  %6895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %6884, float %6885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6896 = extractvalue %dx.types.ResRet.f32 %6895, 0
  %6897 = extractvalue %dx.types.ResRet.f32 %6895, 1
  %6898 = extractvalue %dx.types.ResRet.f32 %6895, 2
  br label %6899

; <label>:6899                                    ; preds = %6894, %6889
  %6900 = phi float [ %6891, %6889 ], [ %6896, %6894 ]
  %6901 = phi float [ %6892, %6889 ], [ %6897, %6894 ]
  %6902 = phi float [ %6893, %6889 ], [ %6898, %6894 ]
  %6903 = extractvalue %dx.types.CBufRet.f32 %6861, 2
  %6904 = fmul fast float %6903, %6900
  %6905 = extractvalue %dx.types.CBufRet.f32 %6861, 0
  %6906 = fsub fast float %6871, %6905
  %6907 = fsub fast float %6906, %6904
  %6908 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6907)  ; FMax(a,b)
  %6909 = fmul fast float %6908, %6901
  %6910 = call float @dx.op.binary.f32(i32 36, float %6902, float %6909)  ; FMin(a,b)
  %6911 = fmul fast float %6910, 0xBFF7154760000000
  %6912 = call float @dx.op.unary.f32(i32 21, float %6911)  ; Exp(value)
  %6913 = fmul fast float %6854, %6912
  br label %6914

; <label>:6914                                    ; preds = %6899, %6748
  %6915 = phi float [ %6913, %6899 ], [ %6749, %6748 ]
  %6916 = call float @dx.op.binary.f32(i32 36, float %6915, float %6915)  ; FMin(a,b)
  %6917 = call float @dx.op.binary.f32(i32 36, float %6915, float %6916)  ; FMin(a,b)
  %6918 = fcmp fast ogt float %6917, 0.000000e+00
  br i1 %6918, label %6919, label %7229, !dx.controlflow.hints !109

; <label>:6919                                    ; preds = %6914
  %6920 = fmul fast float %6915, %6097
  %6921 = fmul fast float %6915, %6098
  %6922 = fmul fast float %6915, %6099
  %6923 = fsub fast float %6086, %5644
  %6924 = fsub fast float %6087, %5643
  %6925 = fsub fast float %6088, %5642
  %6926 = call float @dx.op.dot3.f32(i32 55, float %6923, float %6924, float %6925, float %6923, float %6924, float %6925)  ; Dot3(ax,ay,az,bx,by,bz)
  %6927 = call float @dx.op.unary.f32(i32 25, float %6926)  ; Rsqrt(value)
  %6928 = fmul fast float %6927, %6923
  %6929 = fmul fast float %6927, %6924
  %6930 = fmul fast float %6927, %6925
  %6931 = call float @dx.op.dot3.f32(i32 55, float %6086, float %6087, float %6088, float %5648, float %5649, float %5650)  ; Dot3(ax,ay,az,bx,by,bz)
  %6932 = call float @dx.op.dot3.f32(i32 55, float %5641, float %5640, float %5639, float %6928, float %6929, float %6930)  ; Dot3(ax,ay,az,bx,by,bz)
  %6933 = call float @dx.op.unary.f32(i32 7, float %6931)  ; Saturate(value)
  %6934 = fmul fast float %6933, %6933
  %6935 = fmul fast float %6934, %5671
  %6936 = call float @dx.op.unary.f32(i32 7, float %6935)  ; Saturate(value)
  %6937 = fmul fast float %6936, %6933
  %6938 = call float @dx.op.dot3.f32(i32 55, float %5648, float %5649, float %5650, float %6928, float %6929, float %6930)  ; Dot3(ax,ay,az,bx,by,bz)
  %6939 = fmul fast float %6938, %6938
  %6940 = call float @dx.op.unary.f32(i32 6, float %6931)  ; FAbs(value)
  %6941 = call float @dx.op.binary.f32(i32 35, float %6054, float 0x3F847AE140000000)  ; FMax(a,b)
  %6942 = fmul fast float %6941, %6941
  %6943 = fmul fast float %6942, %6942
  %6944 = fsub fast float 1.000000e+00, %6943
  %6945 = fmul fast float %5658, %5658
  %6946 = fmul fast float %6945, %6944
  %6947 = fadd fast float %6946, %6943
  %6948 = bitcast float %6947 to i32
  %6949 = ashr i32 %6948, 1
  %6950 = add nsw i32 %6949, 532487669
  %6951 = bitcast i32 %6950 to float
  %6952 = fadd fast float %6951, %5658
  %6953 = fmul fast float %6943, %6939
  %6954 = fsub fast float 1.000000e+00, %6939
  %6955 = fadd fast float %6954, %6953
  %6956 = fmul fast float %6940, %6940
  %6957 = fmul fast float %6956, %6944
  %6958 = fadd fast float %6957, %6943
  %6959 = bitcast float %6958 to i32
  %6960 = ashr i32 %6959, 1
  %6961 = add nsw i32 %6960, 532487669
  %6962 = bitcast i32 %6961 to float
  %6963 = fadd fast float %6962, %6940
  %6964 = fmul fast float %6955, %6955
  %6965 = fmul fast float %6964, %6952
  %6966 = fmul fast float %6965, %6963
  %6967 = fdiv fast float 0x3FF0A00000000000, %6966
  %6968 = fmul fast float %6967, %6943
  %6969 = fmul fast float %5916, 0x3FF9999980000000
  %6970 = fsub fast float 5.000000e+00, %6969
  %6971 = call float @dx.op.unary.f32(i32 6, float %6932)  ; FAbs(value)
  %6972 = fsub fast float 1.000000e+00, %6971
  %6973 = fmul fast float %5916, 0x41D9660740000000
  %6974 = fadd fast float %6973, 0xC1EFBF8940000000
  %6975 = bitcast float %6972 to i32
  %6976 = sitofp i32 %6975 to float
  %6977 = fmul fast float %6976, %6970
  %6978 = fadd fast float %6974, %6977
  %6979 = fptosi float %6978 to i32
  %6980 = bitcast i32 %6979 to float
  %6981 = fsub fast float 1.000000e+00, %5651
  %6982 = fsub fast float 1.000000e+00, %5652
  %6983 = fsub fast float 1.000000e+00, %5656
  %6984 = fmul fast float %6980, %6981
  %6985 = fmul fast float %6980, %6982
  %6986 = fmul fast float %6980, %6983
  %6987 = fadd fast float %6984, %5651
  %6988 = fadd fast float %6985, %5652
  %6989 = fadd fast float %6986, %5656
  br i1 %5939, label %6990, label %7013

; <label>:6990                                    ; preds = %6919
  %6991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4694, float %6971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6992 = extractvalue %dx.types.ResRet.f32 %6991, 0
  %6993 = extractvalue %dx.types.ResRet.f32 %6991, 1
  %6994 = extractvalue %dx.types.ResRet.f32 %6991, 2
  %6995 = fadd fast float %6992, -5.000000e-01
  %6996 = fadd fast float %6993, -5.000000e-01
  %6997 = fadd fast float %6994, -5.000000e-01
  %6998 = fmul fast float %5651, 4.000000e+00
  %6999 = fmul fast float %6998, %6981
  %7000 = fmul fast float %6999, %6995
  %7001 = fmul fast float %5652, 4.000000e+00
  %7002 = fmul fast float %7001, %6982
  %7003 = fmul fast float %7002, %6996
  %7004 = fmul fast float %5656, 4.000000e+00
  %7005 = fmul fast float %7004, %6983
  %7006 = fmul fast float %7005, %6997
  %7007 = fadd fast float %7000, %6987
  %7008 = fadd fast float %7003, %6988
  %7009 = fadd fast float %7006, %6989
  %7010 = call float @dx.op.unary.f32(i32 7, float %7007)  ; Saturate(value)
  %7011 = call float @dx.op.unary.f32(i32 7, float %7008)  ; Saturate(value)
  %7012 = call float @dx.op.unary.f32(i32 7, float %7009)  ; Saturate(value)
  br label %7013

; <label>:7013                                    ; preds = %6990, %6919
  %7014 = phi float [ %7010, %6990 ], [ %6987, %6919 ]
  %7015 = phi float [ %7011, %6990 ], [ %6988, %6919 ]
  %7016 = phi float [ %7012, %6990 ], [ %6989, %6919 ]
  %7017 = fmul fast float %6931, 9.843750e-01
  %7018 = fadd fast float %7017, 7.812500e-03
  %7019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %7018, float %5920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7020 = extractvalue %dx.types.ResRet.f32 %7019, 0
  %7021 = extractvalue %dx.types.ResRet.f32 %7019, 1
  %7022 = extractvalue %dx.types.ResRet.f32 %7019, 2
  %7023 = extractvalue %dx.types.ResRet.f32 %7019, 3
  %7024 = fsub fast float %7022, %7020
  %7025 = fsub fast float %7023, %7021
  %7026 = fmul fast float %7024, %5926
  %7027 = fmul fast float %7025, %5926
  %7028 = fadd fast float %7026, %7020
  %7029 = fadd fast float %7027, %7021
  %7030 = fmul fast float %7028, %5651
  %7031 = fmul fast float %7028, %5652
  %7032 = fmul fast float %7028, %5656
  %7033 = fadd fast float %7030, %7029
  %7034 = fadd fast float %7031, %7029
  %7035 = fadd fast float %7032, %7029
  br i1 %5939, label %7036, label %7059

; <label>:7036                                    ; preds = %7013
  %7037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4694, float %6931, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7038 = extractvalue %dx.types.ResRet.f32 %7037, 0
  %7039 = extractvalue %dx.types.ResRet.f32 %7037, 1
  %7040 = extractvalue %dx.types.ResRet.f32 %7037, 2
  %7041 = fadd fast float %7038, -5.000000e-01
  %7042 = fadd fast float %7039, -5.000000e-01
  %7043 = fadd fast float %7040, -5.000000e-01
  %7044 = fmul fast float %5651, 4.000000e+00
  %7045 = fmul fast float %7044, %6981
  %7046 = fmul fast float %7045, %7041
  %7047 = fmul fast float %5652, 4.000000e+00
  %7048 = fmul fast float %7047, %6982
  %7049 = fmul fast float %7048, %7042
  %7050 = fmul fast float %5656, 4.000000e+00
  %7051 = fmul fast float %7050, %6983
  %7052 = fmul fast float %7051, %7043
  %7053 = fadd fast float %7046, %7033
  %7054 = fadd fast float %7049, %7034
  %7055 = fadd fast float %7052, %7035
  %7056 = call float @dx.op.unary.f32(i32 7, float %7053)  ; Saturate(value)
  %7057 = call float @dx.op.unary.f32(i32 7, float %7054)  ; Saturate(value)
  %7058 = call float @dx.op.unary.f32(i32 7, float %7055)  ; Saturate(value)
  br label %7059

; <label>:7059                                    ; preds = %7036, %7013
  %7060 = phi float [ %7056, %7036 ], [ %7033, %7013 ]
  %7061 = phi float [ %7057, %7036 ], [ %7034, %7013 ]
  %7062 = phi float [ %7058, %7036 ], [ %7035, %7013 ]
  %7063 = call float @dx.op.binary.f32(i32 35, float %7061, float %7062)  ; FMax(a,b)
  %7064 = call float @dx.op.binary.f32(i32 35, float %7060, float %7063)  ; FMax(a,b)
  %7065 = fsub fast float 1.000000e+00, %7064
  %7066 = call float @dx.op.binary.f32(i32 35, float %6940, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7067 = fdiv fast float %3993, %7066
  %7068 = fmul fast float %5994, %7067
  %7069 = fmul fast float %5996, %7067
  %7070 = fmul fast float %5998, %7067
  %7071 = call float @dx.op.unary.f32(i32 21, float %7068)  ; Exp(value)
  %7072 = call float @dx.op.unary.f32(i32 21, float %7069)  ; Exp(value)
  %7073 = call float @dx.op.unary.f32(i32 21, float %7070)  ; Exp(value)
  %7074 = call float @dx.op.unary.f32(i32 7, float %7071)  ; Saturate(value)
  %7075 = call float @dx.op.unary.f32(i32 7, float %7072)  ; Saturate(value)
  %7076 = call float @dx.op.unary.f32(i32 7, float %7073)  ; Saturate(value)
  %7077 = select i1 %5991, float %7074, float 0.000000e+00
  %7078 = select i1 %5992, float %7075, float 0.000000e+00
  %7079 = select i1 %5993, float %7076, float 0.000000e+00
  %7080 = fsub fast float -0.000000e+00, %5648
  %7081 = fsub fast float -0.000000e+00, %5649
  %7082 = fsub fast float -0.000000e+00, %5650
  %7083 = call float @dx.op.dot3.f32(i32 55, float %6086, float %6087, float %6088, float %7080, float %7081, float %7082)  ; Dot3(ax,ay,az,bx,by,bz)
  %7084 = call float @dx.op.unary.f32(i32 7, float %7083)  ; Saturate(value)
  %7085 = fmul fast float %7084, 9.843750e-01
  %7086 = fadd fast float %7085, 7.812500e-03
  %7087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %7086, float %5920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7088 = extractvalue %dx.types.ResRet.f32 %7087, 0
  %7089 = extractvalue %dx.types.ResRet.f32 %7087, 1
  %7090 = extractvalue %dx.types.ResRet.f32 %7087, 2
  %7091 = extractvalue %dx.types.ResRet.f32 %7087, 3
  %7092 = fsub fast float %7090, %7088
  %7093 = fsub fast float %7091, %7089
  %7094 = fmul fast float %7092, %5926
  %7095 = fmul fast float %7093, %5926
  %7096 = fadd fast float %7094, %7088
  %7097 = fadd fast float %7095, %7089
  %7098 = fmul fast float %7096, %5651
  %7099 = fmul fast float %7096, %5652
  %7100 = fmul fast float %7096, %5656
  %7101 = fadd fast float %7098, %7097
  %7102 = fadd fast float %7099, %7097
  %7103 = fadd fast float %7100, %7097
  br i1 %5939, label %7104, label %7127

; <label>:7104                                    ; preds = %7059
  %7105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4694, float %7084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7106 = extractvalue %dx.types.ResRet.f32 %7105, 0
  %7107 = extractvalue %dx.types.ResRet.f32 %7105, 1
  %7108 = extractvalue %dx.types.ResRet.f32 %7105, 2
  %7109 = fadd fast float %7106, -5.000000e-01
  %7110 = fadd fast float %7107, -5.000000e-01
  %7111 = fadd fast float %7108, -5.000000e-01
  %7112 = fmul fast float %5651, 4.000000e+00
  %7113 = fmul fast float %7112, %6981
  %7114 = fmul fast float %7113, %7109
  %7115 = fmul fast float %5652, 4.000000e+00
  %7116 = fmul fast float %7115, %6982
  %7117 = fmul fast float %7116, %7110
  %7118 = fmul fast float %5656, 4.000000e+00
  %7119 = fmul fast float %7118, %6983
  %7120 = fmul fast float %7119, %7111
  %7121 = fadd fast float %7114, %7101
  %7122 = fadd fast float %7117, %7102
  %7123 = fadd fast float %7120, %7103
  %7124 = call float @dx.op.unary.f32(i32 7, float %7121)  ; Saturate(value)
  %7125 = call float @dx.op.unary.f32(i32 7, float %7122)  ; Saturate(value)
  %7126 = call float @dx.op.unary.f32(i32 7, float %7123)  ; Saturate(value)
  br label %7127

; <label>:7127                                    ; preds = %7104, %7059
  %7128 = phi float [ %7124, %7104 ], [ %7101, %7059 ]
  %7129 = phi float [ %7125, %7104 ], [ %7102, %7059 ]
  %7130 = phi float [ %7126, %7104 ], [ %7103, %7059 ]
  %7131 = call float @dx.op.binary.f32(i32 35, float %7129, float %7130)  ; FMax(a,b)
  %7132 = call float @dx.op.binary.f32(i32 35, float %7128, float %7131)  ; FMax(a,b)
  %7133 = fsub fast float 1.000000e+00, %7132
  %7134 = fmul fast float %6054, %6059
  %7135 = fadd fast float %6061, %7134
  %7136 = call float @dx.op.unary.f32(i32 7, float %7135)  ; Saturate(value)
  %7137 = fsub fast float %6086, %5664
  %7138 = fsub fast float %6087, %5665
  %7139 = fsub fast float %6088, %5666
  %7140 = call float @dx.op.dot3.f32(i32 55, float %7137, float %7138, float %7139, float %7137, float %7138, float %7139)  ; Dot3(ax,ay,az,bx,by,bz)
  %7141 = call float @dx.op.unary.f32(i32 25, float %7140)  ; Rsqrt(value)
  %7142 = fmul fast float %7141, %7137
  %7143 = fmul fast float %7141, %7138
  %7144 = fmul fast float %7141, %7139
  %7145 = call float @dx.op.dot3.f32(i32 55, float %7080, float %7081, float %7082, float %7142, float %7143, float %7144)  ; Dot3(ax,ay,az,bx,by,bz)
  %7146 = fmul fast float %7145, %7145
  %7147 = call float @dx.op.unary.f32(i32 6, float %7084)  ; FAbs(value)
  %7148 = call float @dx.op.binary.f32(i32 35, float %7136, float 0x3F847AE140000000)  ; FMax(a,b)
  %7149 = fmul fast float %7148, %7148
  %7150 = fmul fast float %7149, %7149
  %7151 = fsub fast float 1.000000e+00, %7150
  %7152 = fmul fast float %6945, %7151
  %7153 = fadd fast float %7152, %7150
  %7154 = bitcast float %7153 to i32
  %7155 = ashr i32 %7154, 1
  %7156 = add nsw i32 %7155, 532487669
  %7157 = bitcast i32 %7156 to float
  %7158 = fadd fast float %7157, %5658
  %7159 = fmul fast float %7150, %7146
  %7160 = fsub fast float 1.000000e+00, %7146
  %7161 = fadd fast float %7160, %7159
  %7162 = fmul fast float %7147, %7147
  %7163 = fmul fast float %7162, %7151
  %7164 = fadd fast float %7163, %7150
  %7165 = bitcast float %7164 to i32
  %7166 = ashr i32 %7165, 1
  %7167 = add nsw i32 %7166, 532487669
  %7168 = bitcast i32 %7167 to float
  %7169 = fadd fast float %7168, %7147
  %7170 = fmul fast float %7161, %7161
  %7171 = fmul fast float %7170, %7158
  %7172 = fmul fast float %7171, %7169
  %7173 = fdiv fast float 0x3FF0A00000000000, %7172
  %7174 = fmul fast float %7173, %7150
  %7175 = fmul fast float %7084, %7077
  %7176 = fmul fast float %7084, %7078
  %7177 = fmul fast float %7084, %7079
  %7178 = fmul fast float %7175, %7133
  %7179 = fmul fast float %7178, %7174
  %7180 = fmul fast float %7176, %7133
  %7181 = fmul fast float %7180, %7174
  %7182 = fmul fast float %7177, %7133
  %7183 = fmul fast float %7182, %7174
  %7184 = fmul fast float %7014, %6968
  %7185 = fmul fast float %7015, %6968
  %7186 = fmul fast float %7016, %6968
  %7187 = fsub fast float 1.000000e+00, %6932
  %7188 = bitcast float %7187 to i32
  %7189 = sitofp i32 %7188 to float
  %7190 = fmul fast float %7189, 5.000000e+00
  %7191 = fadd fast float %7190, 0xC1EFBF8940000000
  %7192 = fptosi float %7191 to i32
  %7193 = bitcast i32 %7192 to float
  %7194 = fmul fast float %7193, %4695
  %7195 = fmul fast float %7065, %7194
  %7196 = fmul fast float %7195, %5986
  %7197 = fmul fast float %7195, %5987
  %7198 = fmul fast float %7195, %5988
  %7199 = fadd fast float %7196, %7184
  %7200 = fadd fast float %7197, %7185
  %7201 = fadd fast float %7198, %7186
  %7202 = fmul fast float %7199, %6937
  %7203 = fmul fast float %7200, %6937
  %7204 = fmul fast float %7201, %6937
  %7205 = fmul fast float %6937, %6920
  %7206 = fmul fast float %7205, %7065
  %7207 = fmul fast float %6937, %6921
  %7208 = fmul fast float %7207, %7065
  %7209 = fmul fast float %6937, %6922
  %7210 = fmul fast float %7209, %7065
  %7211 = fadd fast float %7202, %7179
  %7212 = fadd fast float %7203, %7181
  %7213 = fadd fast float %7204, %7183
  %7214 = fmul fast float %7211, %6920
  %7215 = fmul fast float %7212, %6921
  %7216 = fmul fast float %7213, %6922
  %7217 = fadd fast float %7206, %6076
  %7218 = fmul fast float %7217, %4691
  %7219 = fadd fast float %7208, %6078
  %7220 = fmul fast float %7219, %4691
  %7221 = fadd fast float %7210, %6080
  %7222 = fmul fast float %7221, %4691
  %7223 = fadd fast float %7214, %6039
  %7224 = fmul fast float %7223, %4691
  %7225 = fadd fast float %7215, %6042
  %7226 = fmul fast float %7225, %4691
  %7227 = fadd fast float %7216, %6045
  %7228 = fmul fast float %7227, %4691
  br label %7229

; <label>:7229                                    ; preds = %7127, %6914, %5966
  %7230 = phi float [ %6040, %5966 ], [ %6040, %6914 ], [ %7224, %7127 ]
  %7231 = phi float [ %6043, %5966 ], [ %6043, %6914 ], [ %7226, %7127 ]
  %7232 = phi float [ %6046, %5966 ], [ %6046, %6914 ], [ %7228, %7127 ]
  %7233 = phi float [ %6077, %5966 ], [ %6077, %6914 ], [ %7218, %7127 ]
  %7234 = phi float [ %6079, %5966 ], [ %6079, %6914 ], [ %7220, %7127 ]
  %7235 = phi float [ %6081, %5966 ], [ %6081, %6914 ], [ %7222, %7127 ]
  %7236 = fmul fast float %6015, %4691
  %7237 = fmul fast float %6016, %4691
  %7238 = fmul fast float %6017, %4691
  %7239 = fadd fast float %7236, 1.000000e+00
  %7240 = fadd fast float %7237, 1.000000e+00
  %7241 = fadd fast float %7238, 1.000000e+00
  %7242 = call float @dx.op.dot3.f32(i32 55, float %7239, float %7240, float %7241, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7243 = fsub fast float 1.000000e+00, %7242
  %7244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7245 = extractvalue %dx.types.CBufRet.f32 %7244, 0
  %7246 = fmul fast float %7245, %6021
  %7247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7248 = extractvalue %dx.types.CBufRet.f32 %7247, 3
  %7249 = fsub fast float 1.000000e+00, %4698
  %7250 = call float @dx.op.unary.f32(i32 7, float %7249)  ; Saturate(value)
  %7251 = fadd fast float %7235, %4697
  %7252 = fmul fast float %7251, %4698
  %7253 = fmul fast float %7250, %7248
  %7254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7255 = extractvalue %dx.types.CBufRet.f32 %7254, 3
  %7256 = fmul fast float %7233, %5645
  %7257 = fmul fast float %7234, %5646
  %7258 = fmul fast float %7235, %5647
  %7259 = fcmp fast ogt float %90, %213
  %7260 = and i1 %7259, %4766
  %7261 = or i1 %4845, %7260
  %7262 = icmp eq i32 %4765, 2
  %7263 = fcmp fast ole float %90, %213
  %7264 = and i1 %7263, %7262
  %7265 = or i1 %7264, %7261
  br i1 %7260, label %7266, label %7523

; <label>:7266                                    ; preds = %7229
  %7267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7268 = extractvalue %dx.types.CBufRet.f32 %7267, 2
  %7269 = extractvalue %dx.types.CBufRet.f32 %7267, 3
  %7270 = fmul fast float %7268, %99
  %7271 = fmul fast float %7269, %100
  %7272 = call float @dx.op.unary.f32(i32 7, float %7270)  ; Saturate(value)
  %7273 = call float @dx.op.unary.f32(i32 7, float %7271)  ; Saturate(value)
  %7274 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %7272, float %7273, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7275 = extractvalue %dx.types.ResRet.f32 %7274, 0
  %7276 = extractvalue %dx.types.ResRet.f32 %7274, 1
  %7277 = extractvalue %dx.types.ResRet.f32 %7274, 2
  %7278 = extractvalue %dx.types.ResRet.f32 %7274, 3
  %7279 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %7272, float %7273, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7280 = extractvalue %dx.types.ResRet.f32 %7279, 0
  %7281 = extractvalue %dx.types.ResRet.f32 %7279, 1
  %7282 = extractvalue %dx.types.ResRet.f32 %7279, 2
  %7283 = extractvalue %dx.types.ResRet.f32 %7279, 3
  %7284 = call float @dx.op.binary.f32(i32 35, float %7276, float %7277)  ; FMax(a,b)
  %7285 = call float @dx.op.binary.f32(i32 35, float %7275, float %7284)  ; FMax(a,b)
  %7286 = call float @dx.op.binary.f32(i32 35, float %7285, float %7278)  ; FMax(a,b)
  %7287 = call float @dx.op.binary.f32(i32 36, float %7281, float %7282)  ; FMin(a,b)
  %7288 = call float @dx.op.binary.f32(i32 36, float %7280, float %7287)  ; FMin(a,b)
  %7289 = call float @dx.op.binary.f32(i32 36, float %7288, float %7283)  ; FMin(a,b)
  %7290 = fmul fast float %7286, 2.550000e+02
  %7291 = fadd fast float %7290, 0x3F70101020000000
  %7292 = fptoui float %7291 to i32
  %7293 = fmul fast float %7289, 2.550000e+02
  %7294 = fadd fast float %7293, 0x3F70101020000000
  %7295 = fptoui float %7294 to i32
  %7296 = icmp ult i32 %7292, %7295
  br i1 %7296, label %7297, label %7465

; <label>:7297                                    ; preds = %7266
  %7298 = fcmp fast ogt float %89, 9.843750e-01
  %7299 = fadd fast float %90, -4.000000e+00
  %7300 = select i1 %7298, float -4.000000e+00, float %7299
  %7301 = call float @dx.op.binary.f32(i32 35, float %7300, float 0.000000e+00)  ; FMax(a,b)
  %7302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7303 = extractvalue %dx.types.CBufRet.f32 %7302, 0
  %7304 = fadd fast float %7303, %7301
  %7305 = extractvalue %dx.types.CBufRet.f32 %7302, 2
  %7306 = fmul fast float %7304, %7305
  %7307 = call float @dx.op.unary.f32(i32 23, float %7306)  ; Log(value)
  %7308 = extractvalue %dx.types.CBufRet.f32 %7302, 3
  %7309 = fmul fast float %7308, %7307
  %7310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.f32 %7310, 2
  %7312 = fmul fast float %7309, %7311
  %7313 = call float @dx.op.unary.f32(i32 7, float %7312)  ; Saturate(value)
  %7314 = uitofp i32 %7292 to float
  %7315 = uitofp i32 %7295 to float
  %7316 = fadd fast float %7314, 5.000000e-01
  %7317 = fadd fast float %7315, 5.000000e-01
  %7318 = fmul fast float %7311, %7316
  %7319 = fmul fast float %7311, %7317
  %7320 = fadd fast float %7318, 0x3F0FFB4800000000
  %7321 = fadd fast float %7319, 0xBF0FFB4800000000
  %7322 = call float @dx.op.binary.f32(i32 35, float %7313, float %7320)  ; FMax(a,b)
  %7323 = call float @dx.op.binary.f32(i32 36, float %7322, float %7321)  ; FMin(a,b)
  %7324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7325 = extractvalue %dx.types.CBufRet.f32 %7324, 1
  %7326 = extractvalue %dx.types.CBufRet.f32 %7324, 2
  %7327 = extractvalue %dx.types.CBufRet.f32 %7324, 0
  %7328 = fmul fast float %7325, %7323
  %7329 = fadd fast float %7327, %7328
  %7330 = fadd fast float %7327, %7326
  %7331 = fsub fast float %7325, %7326
  %7332 = fadd fast float %7331, %7327
  %7333 = call float @dx.op.binary.f32(i32 35, float %7329, float %7330)  ; FMax(a,b)
  %7334 = call float @dx.op.binary.f32(i32 36, float %7333, float %7332)  ; FMin(a,b)
  %7335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %7272, float %7273, float %7334, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7336 = extractvalue %dx.types.ResRet.f32 %7335, 0
  %7337 = extractvalue %dx.types.ResRet.f32 %7335, 1
  %7338 = extractvalue %dx.types.ResRet.f32 %7335, 2
  %7339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7340 = extractvalue %dx.types.CBufRet.i32 %7339, 0
  %7341 = extractvalue %dx.types.CBufRet.i32 %7339, 1
  %7342 = uitofp i32 %7340 to float
  %7343 = uitofp i32 %7341 to float
  %7344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7345 = extractvalue %dx.types.CBufRet.f32 %7344, 0
  %7346 = extractvalue %dx.types.CBufRet.f32 %7344, 1
  %7347 = fmul fast float %7342, %7272
  %7348 = fmul fast float %7343, %7273
  %7349 = fadd fast float %7347, -5.000000e-01
  %7350 = fadd fast float %7348, -5.000000e-01
  %7351 = call float @dx.op.unary.f32(i32 22, float %7349)  ; Frc(value)
  %7352 = call float @dx.op.unary.f32(i32 22, float %7350)  ; Frc(value)
  %7353 = fmul fast float %7351, %7351
  %7354 = fmul fast float %7353, %7351
  %7355 = fsub fast float 3.000000e+00, %7351
  %7356 = fmul fast float %7353, %7355
  %7357 = fmul fast float %7351, 3.000000e+00
  %7358 = fmul fast float %7354, 3.000000e+00
  %7359 = fmul fast float %7353, 6.000000e+00
  %7360 = fsub fast float %7358, %7359
  %7361 = fadd fast float %7360, 4.000000e+00
  %7362 = fmul fast float %7361, 0x3FC5555560000000
  %7363 = fmul fast float %7354, -3.000000e+00
  %7364 = fadd fast float %7353, %7351
  %7365 = fmul fast float %7364, 3.000000e+00
  %7366 = fadd fast float %7363, 1.000000e+00
  %7367 = fadd fast float %7366, %7365
  %7368 = fmul fast float %7354, 0x3FC5555560000000
  %7369 = fmul fast float %7352, %7352
  %7370 = fmul fast float %7369, %7352
  %7371 = fsub fast float 3.000000e+00, %7352
  %7372 = fmul fast float %7369, %7371
  %7373 = fmul fast float %7352, 3.000000e+00
  %7374 = fmul fast float %7370, 3.000000e+00
  %7375 = fmul fast float %7369, 6.000000e+00
  %7376 = fsub fast float %7374, %7375
  %7377 = fadd fast float %7376, 4.000000e+00
  %7378 = fmul fast float %7377, 0x3FC5555560000000
  %7379 = fmul fast float %7370, -3.000000e+00
  %7380 = fadd fast float %7369, %7352
  %7381 = fmul fast float %7380, 3.000000e+00
  %7382 = fadd fast float %7379, 1.000000e+00
  %7383 = fadd fast float %7382, %7381
  %7384 = fmul fast float %7370, 0x3FC5555560000000
  %7385 = fadd fast float %7351, 1.000000e+00
  %7386 = fsub fast float 1.000000e+00, %7357
  %7387 = fadd fast float %7386, %7356
  %7388 = fadd fast float %7387, %7361
  %7389 = fmul fast float %7388, 0x3FC5555560000000
  %7390 = fdiv fast float %7362, %7389
  %7391 = fsub fast float %7385, %7390
  %7392 = fsub fast float 1.000000e+00, %7351
  %7393 = fadd fast float %7367, %7354
  %7394 = fmul fast float %7393, 0x3FC5555560000000
  %7395 = fdiv fast float %7368, %7394
  %7396 = fadd fast float %7392, %7395
  %7397 = fadd fast float %7352, 1.000000e+00
  %7398 = fsub fast float 1.000000e+00, %7373
  %7399 = fadd fast float %7398, %7372
  %7400 = fadd fast float %7399, %7377
  %7401 = fmul fast float %7400, 0x3FC5555560000000
  %7402 = fdiv fast float %7378, %7401
  %7403 = fsub fast float %7397, %7402
  %7404 = fsub fast float 1.000000e+00, %7352
  %7405 = fadd fast float %7383, %7370
  %7406 = fmul fast float %7405, 0x3FC5555560000000
  %7407 = fdiv fast float %7384, %7406
  %7408 = fadd fast float %7407, %7404
  %7409 = fmul fast float %7391, %7345
  %7410 = fsub fast float %7272, %7409
  %7411 = fmul fast float %7396, %7345
  %7412 = fadd fast float %7411, %7272
  %7413 = fmul fast float %7408, %7346
  %7414 = fadd fast float %7413, %7273
  %7415 = fmul fast float %7403, %7346
  %7416 = fsub fast float %7273, %7415
  %7417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7410, float %7416, float %7334, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7418 = extractvalue %dx.types.ResRet.f32 %7417, 0
  %7419 = extractvalue %dx.types.ResRet.f32 %7417, 1
  %7420 = extractvalue %dx.types.ResRet.f32 %7417, 2
  %7421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7412, float %7416, float %7334, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7422 = extractvalue %dx.types.ResRet.f32 %7421, 0
  %7423 = extractvalue %dx.types.ResRet.f32 %7421, 1
  %7424 = extractvalue %dx.types.ResRet.f32 %7421, 2
  %7425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7410, float %7414, float %7334, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7426 = extractvalue %dx.types.ResRet.f32 %7425, 0
  %7427 = extractvalue %dx.types.ResRet.f32 %7425, 1
  %7428 = extractvalue %dx.types.ResRet.f32 %7425, 2
  %7429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7412, float %7414, float %7334, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7430 = extractvalue %dx.types.ResRet.f32 %7429, 0
  %7431 = extractvalue %dx.types.ResRet.f32 %7429, 1
  %7432 = extractvalue %dx.types.ResRet.f32 %7429, 2
  %7433 = fsub fast float %7426, %7418
  %7434 = fsub fast float %7427, %7419
  %7435 = fsub fast float %7428, %7420
  %7436 = fmul fast float %7433, %7406
  %7437 = fmul fast float %7434, %7406
  %7438 = fmul fast float %7435, %7406
  %7439 = fadd fast float %7436, %7418
  %7440 = fadd fast float %7437, %7419
  %7441 = fadd fast float %7438, %7420
  %7442 = fsub fast float %7430, %7422
  %7443 = fsub fast float %7431, %7423
  %7444 = fsub fast float %7432, %7424
  %7445 = fmul fast float %7442, %7406
  %7446 = fmul fast float %7443, %7406
  %7447 = fmul fast float %7444, %7406
  %7448 = fsub fast float %7422, %7439
  %7449 = fadd fast float %7448, %7445
  %7450 = fsub fast float %7423, %7440
  %7451 = fadd fast float %7450, %7446
  %7452 = fsub fast float %7424, %7441
  %7453 = fadd fast float %7452, %7447
  %7454 = fmul fast float %7449, %7394
  %7455 = fmul fast float %7451, %7394
  %7456 = fmul fast float %7453, %7394
  %7457 = fadd fast float %7454, %7439
  %7458 = fadd fast float %7455, %7440
  %7459 = fadd fast float %7456, %7441
  %7460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7461 = extractvalue %dx.types.CBufRet.f32 %7460, 1
  %7462 = fmul fast float %7457, %7461
  %7463 = fmul fast float %7458, %7461
  %7464 = fmul fast float %7459, %7461
  br label %7465

; <label>:7465                                    ; preds = %7297, %7266
  %7466 = phi float [ %7336, %7297 ], [ 1.000000e+00, %7266 ]
  %7467 = phi float [ %7337, %7297 ], [ 1.000000e+00, %7266 ]
  %7468 = phi float [ %7338, %7297 ], [ 1.000000e+00, %7266 ]
  %7469 = phi float [ %7462, %7297 ], [ 0.000000e+00, %7266 ]
  %7470 = phi float [ %7463, %7297 ], [ 0.000000e+00, %7266 ]
  %7471 = phi float [ %7464, %7297 ], [ 0.000000e+00, %7266 ]
  %7472 = fmul fast float %7469, %7243
  %7473 = fmul fast float %7470, %7243
  %7474 = fmul fast float %7471, %7243
  %7475 = call float @dx.op.dot3.f32(i32 55, float %7466, float %7467, float %7468, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7476 = call float @dx.op.dot3.f32(i32 55, float %7472, float %7473, float %7474, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7477 = select i1 %252, float %7475, float %7466
  %7478 = select i1 %252, float %7475, float %7467
  %7479 = select i1 %252, float 1.000000e+00, float %7468
  %7480 = select i1 %252, float %7476, float %7472
  %7481 = select i1 %252, float 0.000000e+00, float %7473
  %7482 = select i1 %252, float 0.000000e+00, float %7474
  %7483 = fmul fast float %7477, %7256
  %7484 = fmul fast float %7478, %7257
  %7485 = fmul fast float %7479, %7258
  %7486 = fadd fast float %7483, %7480
  %7487 = fadd fast float %7484, %7481
  %7488 = fadd fast float %7482, %7485
  %7489 = fmul fast float %7477, %7230
  %7490 = fmul fast float %7478, %7231
  %7491 = fmul fast float %7479, %7232
  %7492 = fmul fast float %127, %7268
  %7493 = fmul fast float %129, %7269
  %7494 = fsub fast float 1.000000e+00, %7492
  %7495 = fsub fast float 1.000000e+00, %7493
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 0
  %7498 = extractvalue %dx.types.CBufRet.f32 %7496, 1
  %7499 = extractvalue %dx.types.CBufRet.f32 %7496, 2
  %7500 = fmul fast float %7494, %7497
  %7501 = fmul fast float %7494, %7498
  %7502 = fmul fast float %7494, %7499
  %7503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7504 = extractvalue %dx.types.CBufRet.f32 %7503, 0
  %7505 = extractvalue %dx.types.CBufRet.f32 %7503, 1
  %7506 = extractvalue %dx.types.CBufRet.f32 %7503, 2
  %7507 = fmul fast float %7495, %7504
  %7508 = fmul fast float %7495, %7505
  %7509 = fmul fast float %7495, %7506
  %7510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7511 = extractvalue %dx.types.CBufRet.f32 %7510, 0
  %7512 = extractvalue %dx.types.CBufRet.f32 %7510, 1
  %7513 = extractvalue %dx.types.CBufRet.f32 %7510, 2
  %7514 = fadd fast float %7507, %7511
  %7515 = fadd fast float %7514, %7500
  %7516 = fadd fast float %7508, %7512
  %7517 = fadd fast float %7516, %7501
  %7518 = fadd fast float %7509, %7513
  %7519 = fadd fast float %7518, %7502
  %7520 = fmul fast float %7515, %213
  %7521 = fmul fast float %7517, %213
  %7522 = fmul fast float %7519, %213
  br label %7523

; <label>:7523                                    ; preds = %7465, %7229
  %7524 = phi float [ %7520, %7465 ], [ %178, %7229 ]
  %7525 = phi float [ %7521, %7465 ], [ %179, %7229 ]
  %7526 = phi float [ %7522, %7465 ], [ %180, %7229 ]
  %7527 = phi float [ %213, %7465 ], [ %90, %7229 ]
  %7528 = phi float [ %7486, %7465 ], [ %7256, %7229 ]
  %7529 = phi float [ %7487, %7465 ], [ %7257, %7229 ]
  %7530 = phi float [ %7488, %7465 ], [ %7258, %7229 ]
  %7531 = phi float [ %7489, %7465 ], [ %7230, %7229 ]
  %7532 = phi float [ %7490, %7465 ], [ %7231, %7229 ]
  %7533 = phi float [ %7491, %7465 ], [ %7232, %7229 ]
  %7534 = phi float [ %7466, %7465 ], [ 1.000000e+00, %7229 ]
  br i1 %7265, label %8689, label %7535

; <label>:7535                                    ; preds = %7523
  %7536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7537 = extractvalue %dx.types.CBufRet.f32 %7536, 0
  %7538 = extractvalue %dx.types.CBufRet.f32 %7536, 1
  %7539 = extractvalue %dx.types.CBufRet.f32 %7536, 2
  %7540 = extractvalue %dx.types.CBufRet.f32 %7536, 3
  %7541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7542 = extractvalue %dx.types.CBufRet.f32 %7541, 0
  %7543 = extractvalue %dx.types.CBufRet.f32 %7541, 1
  %7544 = extractvalue %dx.types.CBufRet.f32 %7541, 2
  %7545 = extractvalue %dx.types.CBufRet.f32 %7541, 3
  %7546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7547 = extractvalue %dx.types.CBufRet.f32 %7546, 0
  %7548 = extractvalue %dx.types.CBufRet.f32 %7546, 1
  %7549 = extractvalue %dx.types.CBufRet.f32 %7546, 2
  %7550 = extractvalue %dx.types.CBufRet.f32 %7546, 3
  %7551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7552 = extractvalue %dx.types.CBufRet.f32 %7551, 0
  %7553 = extractvalue %dx.types.CBufRet.f32 %7551, 1
  %7554 = extractvalue %dx.types.CBufRet.f32 %7551, 2
  %7555 = extractvalue %dx.types.CBufRet.f32 %7551, 3
  %7556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7557 = extractvalue %dx.types.CBufRet.f32 %7556, 3
  %7558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7559 = extractvalue %dx.types.CBufRet.f32 %7558, 3
  %7560 = extractvalue %dx.types.CBufRet.f32 %7558, 0
  %7561 = extractvalue %dx.types.CBufRet.f32 %7558, 1
  %7562 = extractvalue %dx.types.CBufRet.f32 %7558, 2
  %7563 = fcmp fast olt float %7562, -5.000000e-01
  %7564 = call float @dx.op.dot3.f32(i32 55, float %7524, float %7525, float %7526, float %7524, float %7525, float %7526)  ; Dot3(ax,ay,az,bx,by,bz)
  %7565 = call float @dx.op.unary.f32(i32 25, float %7564)  ; Rsqrt(value)
  %7566 = fmul fast float %7565, %7564
  %7567 = fmul fast float %7565, %7524
  %7568 = fmul fast float %7565, %7525
  %7569 = fmul fast float %7565, %7526
  %7570 = fadd fast float %7566, %7540
  %7571 = call float @dx.op.dot3.f32(i32 55, float %7567, float %7568, float %7569, float %7537, float %7538, float %7539)  ; Dot3(ax,ay,az,bx,by,bz)
  %7572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.i32 %7572, 1
  %7574 = and i32 %7573, 1
  %7575 = icmp ne i32 %7574, 0
  %7576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7577 = extractvalue %dx.types.CBufRet.f32 %7576, 2
  %7578 = fcmp fast ogt float %7577, 0.000000e+00
  %7579 = and i1 %7575, %7578
  br i1 %7579, label %7580, label %7986, !dx.controlflow.hints !110

; <label>:7580                                    ; preds = %7535
  %7581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7582 = extractvalue %dx.types.CBufRet.f32 %7581, 3
  %7583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7584 = extractvalue %dx.types.CBufRet.f32 %7583, 2
  %7585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7586 = extractvalue %dx.types.CBufRet.f32 %7585, 2
  %7587 = fsub fast float %7584, %7586
  %7588 = and i32 %7573, 2
  %7589 = extractvalue %dx.types.CBufRet.i32 %7572, 0
  %7590 = call i32 @dx.op.binary.i32(i32 40, i32 %7589, i32 3)  ; UMin(a,b)
  %7591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7592 = extractvalue %dx.types.CBufRet.f32 %7591, 0
  %7593 = extractvalue %dx.types.CBufRet.f32 %7591, 1
  %7594 = extractvalue %dx.types.CBufRet.f32 %7585, 0
  %7595 = extractvalue %dx.types.CBufRet.f32 %7585, 1
  %7596 = fsub fast float %7592, %7594
  %7597 = fsub fast float %7593, %7595
  %7598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7599 = extractvalue %dx.types.CBufRet.f32 %7598, 0
  %7600 = fcmp fast ogt float %7599, 0.000000e+00
  %7601 = fsub fast float -0.000000e+00, %7596
  %7602 = fsub fast float -0.000000e+00, %7597
  %7603 = call float @dx.op.dot2.f32(i32 54, float %7567, float %7568, float %7567, float %7568)  ; Dot2(ax,ay,bx,by)
  %7604 = call float @dx.op.dot2.f32(i32 54, float %7567, float %7568, float %7601, float %7602)  ; Dot2(ax,ay,bx,by)
  %7605 = fmul fast float %7604, 2.000000e+00
  %7606 = call float @dx.op.dot2.f32(i32 54, float %7601, float %7602, float %7601, float %7602)  ; Dot2(ax,ay,bx,by)
  %7607 = fmul fast float %7599, %7599
  %7608 = fsub fast float %7606, %7607
  %7609 = fmul fast float %7605, %7605
  %7610 = fmul fast float %7603, 4.000000e+00
  %7611 = fmul fast float %7610, %7608
  %7612 = fsub fast float %7609, %7611
  %7613 = fcmp fast ogt float %7612, 0.000000e+00
  br i1 %7613, label %7614, label %7629

; <label>:7614                                    ; preds = %7580
  %7615 = fcmp fast ogt float %7605, 0.000000e+00
  %7616 = call float @dx.op.unary.f32(i32 24, float %7612)  ; Sqrt(value)
  %7617 = fsub fast float -0.000000e+00, %7616
  %7618 = select i1 %7615, float %7616, float %7617
  %7619 = fadd fast float %7618, %7605
  %7620 = fmul float %7619, -5.000000e-01
  %7621 = fdiv fast float %7620, %7603
  %7622 = call float @dx.op.binary.f32(i32 35, float %7621, float 0.000000e+00)  ; FMax(a,b)
  %7623 = call float @dx.op.binary.f32(i32 36, float %7566, float %7622)  ; FMin(a,b)
  %7624 = fdiv fast float %7608, %7620
  %7625 = call float @dx.op.binary.f32(i32 35, float %7624, float 0.000000e+00)  ; FMax(a,b)
  %7626 = call float @dx.op.binary.f32(i32 36, float %7566, float %7625)  ; FMin(a,b)
  %7627 = call float @dx.op.binary.f32(i32 36, float %7623, float %7626)  ; FMin(a,b)
  %7628 = call float @dx.op.binary.f32(i32 35, float %7623, float %7626)  ; FMax(a,b)
  br label %7629

; <label>:7629                                    ; preds = %7614, %7580
  %7630 = phi float [ %7628, %7614 ], [ -1.000000e+00, %7580 ]
  %7631 = phi float [ %7627, %7614 ], [ -1.000000e+00, %7580 ]
  %7632 = phi i1 [ true, %7614 ], [ false, %7580 ]
  %7633 = and i1 %7600, %7632
  br i1 %7633, label %7634, label %7636

; <label>:7634                                    ; preds = %7629
  %7635 = fcmp fast oeq float %7631, %7630
  br i1 %7635, label %7939, label %7637

; <label>:7636                                    ; preds = %7629
  br i1 %7600, label %7939, label %7637

; <label>:7637                                    ; preds = %7636, %7634
  %7638 = phi float [ %7566, %7636 ], [ %7630, %7634 ]
  %7639 = phi float [ 0.000000e+00, %7636 ], [ %7631, %7634 ]
  %7640 = icmp ne i32 %7588, 0
  %7641 = fmul fast float %7638, %7569
  %7642 = fadd fast float %7641, %7582
  %7643 = fmul fast float %7642, %7638
  %7644 = select i1 %7640, float 0.000000e+00, float %7643
  %7645 = fcmp fast oeq float %7569, 0.000000e+00
  %7646 = fdiv fast float %7587, %7569
  %7647 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7646)  ; FMax(a,b)
  %7648 = select i1 %7645, float %7638, float %7647
  %7649 = call float @dx.op.binary.f32(i32 36, float %7638, float %7648)  ; FMin(a,b)
  %7650 = fcmp fast ogt float %7569, 0.000000e+00
  %7651 = fcmp fast olt float %7587, 0.000000e+00
  br i1 %7650, label %7652, label %7709

; <label>:7652                                    ; preds = %7637
  %7653 = icmp eq i32 %7588, 0
  br i1 %7651, label %7654, label %7698

; <label>:7654                                    ; preds = %7652
  %7655 = select i1 %7653, float %7638, float 0.000000e+00
  %7656 = fsub fast float -0.000000e+00, %7655
  %7657 = call float @dx.op.unary.f32(i32 6, float %7656)  ; FAbs(value)
  %7658 = fmul fast float %7655, %7569
  %7659 = fadd fast float %7658, %7582
  %7660 = fmul fast float %7657, %7659
  %7661 = fsub fast float %7644, %7660
  %7662 = fsub fast float %7638, %7657
  %7663 = select i1 %7653, float %7662, float 0.000000e+00
  %7664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7665 = extractvalue %dx.types.CBufRet.f32 %7664, 0
  %7666 = extractvalue %dx.types.CBufRet.f32 %7664, 1
  %7667 = extractvalue %dx.types.CBufRet.f32 %7664, 2
  %7668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7669 = extractvalue %dx.types.CBufRet.f32 %7668, 0
  %7670 = extractvalue %dx.types.CBufRet.f32 %7668, 1
  %7671 = extractvalue %dx.types.CBufRet.f32 %7668, 2
  %7672 = extractvalue %dx.types.CBufRet.f32 %7668, 3
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 3
  %7675 = call float @dx.op.binary.f32(i32 36, float %7661, float %7674)  ; FMin(a,b)
  %7676 = fmul fast float %7672, %7663
  %7677 = call float @dx.op.unary.f32(i32 7, float %7676)  ; Saturate(value)
  %7678 = fsub fast float %7669, %7665
  %7679 = fsub fast float %7670, %7666
  %7680 = fsub fast float %7671, %7667
  %7681 = fmul fast float %7677, %7678
  %7682 = fmul fast float %7677, %7679
  %7683 = fmul fast float %7677, %7680
  %7684 = fadd fast float %7681, %7665
  %7685 = fadd fast float %7682, %7666
  %7686 = fadd fast float %7683, %7667
  %7687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7688 = extractvalue %dx.types.CBufRet.f32 %7687, 0
  %7689 = extractvalue %dx.types.CBufRet.f32 %7687, 1
  %7690 = fadd fast float %7689, %7688
  %7691 = call float @dx.op.unary.f32(i32 7, float %7690)  ; Saturate(value)
  %7692 = extractvalue %dx.types.CBufRet.f32 %7687, 2
  %7693 = extractvalue %dx.types.CBufRet.f32 %7687, 3
  %7694 = fadd fast float %7693, %7692
  %7695 = call float @dx.op.unary.f32(i32 7, float %7694)  ; Saturate(value)
  %7696 = fmul fast float %7691, %7675
  %7697 = fmul fast float %7696, %7695
  br label %7939

; <label>:7698                                    ; preds = %7652
  br i1 %7653, label %7699, label %7720

; <label>:7699                                    ; preds = %7698
  %7700 = call float @dx.op.binary.f32(i32 36, float %7649, float %7639)  ; FMin(a,b)
  %7701 = fsub fast float %7649, %7700
  %7702 = fsub fast float %7701, %7638
  %7703 = call float @dx.op.unary.f32(i32 6, float %7702)  ; FAbs(value)
  %7704 = fadd fast float %7701, %7638
  %7705 = fmul fast float %7704, %7569
  %7706 = fadd fast float %7705, %7582
  %7707 = fmul fast float %7706, %7703
  %7708 = fsub fast float %7644, %7707
  br label %7720

; <label>:7709                                    ; preds = %7637
  br i1 %7651, label %7710, label %7720

; <label>:7710                                    ; preds = %7709
  %7711 = call float @dx.op.binary.f32(i32 35, float %7639, float %7649)  ; FMax(a,b)
  %7712 = icmp eq i32 %7588, 0
  %7713 = select i1 %7712, float %7649, float 0.000000e+00
  %7714 = fsub fast float -0.000000e+00, %7713
  %7715 = call float @dx.op.unary.f32(i32 6, float %7714)  ; FAbs(value)
  %7716 = fmul fast float %7713, %7569
  %7717 = fadd fast float %7716, %7582
  %7718 = fmul fast float %7715, %7717
  %7719 = fsub fast float %7644, %7718
  br label %7720

; <label>:7720                                    ; preds = %7710, %7709, %7699, %7698
  %7721 = phi float [ %7639, %7698 ], [ %7639, %7699 ], [ %7711, %7710 ], [ %7639, %7709 ]
  %7722 = phi float [ 0.000000e+00, %7698 ], [ %7703, %7699 ], [ %7715, %7710 ], [ 0.000000e+00, %7709 ]
  %7723 = phi float [ %7644, %7698 ], [ %7708, %7699 ], [ %7719, %7710 ], [ %7644, %7709 ]
  %7724 = phi float [ %7649, %7698 ], [ %7649, %7699 ], [ %7638, %7710 ], [ %7638, %7709 ]
  %7725 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %7725, align 4, !tbaa !111, !noalias !113
  %7726 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %7726, align 4, !tbaa !111, !noalias !113
  %7727 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %7727, align 4, !tbaa !111, !noalias !113
  %7728 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %7728, align 4, !tbaa !111, !noalias !113
  %7729 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %7729, align 4, !tbaa !111, !noalias !113
  %7730 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %7730, align 4, !tbaa !111, !noalias !113
  %7731 = icmp sgt i32 %7590, 0
  br i1 %7731, label %7732, label %7793

; <label>:7732                                    ; preds = %7720
  br label %7733

; <label>:7733                                    ; preds = %7782, %7732
  %7734 = phi i32 [ %7783, %7782 ], [ 0, %7732 ]
  %7735 = phi i32 [ %7784, %7782 ], [ 0, %7732 ]
  %7736 = add nuw i32 %7735, 171
  %7737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %7736)  ; CBufferLoadLegacy(handle,regIndex)
  %7738 = extractvalue %dx.types.CBufRet.f32 %7737, 0
  %7739 = extractvalue %dx.types.CBufRet.f32 %7737, 1
  %7740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7741 = extractvalue %dx.types.CBufRet.f32 %7740, 0
  %7742 = extractvalue %dx.types.CBufRet.f32 %7740, 1
  %7743 = fsub fast float %7738, %7741
  %7744 = fsub fast float %7739, %7742
  %7745 = extractvalue %dx.types.CBufRet.f32 %7737, 2
  %7746 = fsub fast float -0.000000e+00, %7743
  %7747 = fsub fast float -0.000000e+00, %7744
  %7748 = call float @dx.op.dot2.f32(i32 54, float %7567, float %7568, float %7746, float %7747)  ; Dot2(ax,ay,bx,by)
  %7749 = fmul fast float %7748, 2.000000e+00
  %7750 = call float @dx.op.dot2.f32(i32 54, float %7746, float %7747, float %7746, float %7747)  ; Dot2(ax,ay,bx,by)
  %7751 = fmul fast float %7745, %7745
  %7752 = fsub fast float %7750, %7751
  %7753 = fmul fast float %7749, %7749
  %7754 = fmul fast float %7610, %7752
  %7755 = fsub fast float %7753, %7754
  %7756 = fcmp fast ogt float %7755, 0.000000e+00
  br i1 %7756, label %7757, label %7772

; <label>:7757                                    ; preds = %7733
  %7758 = fcmp fast ogt float %7749, 0.000000e+00
  %7759 = call float @dx.op.unary.f32(i32 24, float %7755)  ; Sqrt(value)
  %7760 = fsub fast float -0.000000e+00, %7759
  %7761 = select i1 %7758, float %7759, float %7760
  %7762 = fadd fast float %7761, %7749
  %7763 = fmul float %7762, -5.000000e-01
  %7764 = fdiv fast float %7763, %7603
  %7765 = call float @dx.op.binary.f32(i32 35, float %7764, float 0.000000e+00)  ; FMax(a,b)
  %7766 = call float @dx.op.binary.f32(i32 36, float %7638, float %7765)  ; FMin(a,b)
  %7767 = fdiv fast float %7752, %7763
  %7768 = call float @dx.op.binary.f32(i32 35, float %7767, float 0.000000e+00)  ; FMax(a,b)
  %7769 = call float @dx.op.binary.f32(i32 36, float %7638, float %7768)  ; FMin(a,b)
  %7770 = call float @dx.op.binary.f32(i32 36, float %7766, float %7769)  ; FMin(a,b)
  %7771 = call float @dx.op.binary.f32(i32 35, float %7766, float %7769)  ; FMax(a,b)
  br label %7772

; <label>:7772                                    ; preds = %7757, %7733
  %7773 = phi float [ %7771, %7757 ], [ -1.000000e+00, %7733 ]
  %7774 = phi float [ %7770, %7757 ], [ -1.000000e+00, %7733 ]
  %7775 = phi i1 [ true, %7757 ], [ false, %7733 ]
  br i1 %7775, label %7776, label %7782

; <label>:7776                                    ; preds = %7772
  %7777 = call float @dx.op.binary.f32(i32 35, float %7721, float %7774)  ; FMax(a,b)
  %7778 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7735
  store float %7777, float* %7778, align 4, !tbaa !111, !noalias !113
  %7779 = call float @dx.op.binary.f32(i32 35, float %7721, float %7773)  ; FMax(a,b)
  %7780 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7735
  store float %7779, float* %7780, align 4, !tbaa !111, !noalias !113
  %7781 = add nsw i32 %7734, 1
  br label %7782

; <label>:7782                                    ; preds = %7776, %7772
  %7783 = phi i32 [ %7781, %7776 ], [ %7734, %7772 ]
  %7784 = add nuw nsw i32 %7735, 1
  %7785 = icmp eq i32 %7784, %7590
  br i1 %7785, label %7786, label %7733

; <label>:7786                                    ; preds = %7782
  %7787 = load float, float* %7727, align 4, !tbaa !111, !alias.scope !129, !noalias !132
  %7788 = load float, float* %7726, align 4, !tbaa !111, !alias.scope !135, !noalias !136
  %7789 = load float, float* %7725, align 4, !tbaa !111, !alias.scope !137, !noalias !138
  %7790 = load float, float* %7730, align 4, !tbaa !111, !alias.scope !139, !noalias !142
  %7791 = load float, float* %7729, align 4, !tbaa !111, !alias.scope !145, !noalias !146
  %7792 = load float, float* %7728, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  br label %7793

; <label>:7793                                    ; preds = %7786, %7720
  %7794 = phi float [ -1.000000e+00, %7720 ], [ %7792, %7786 ]
  %7795 = phi float [ -1.000000e+00, %7720 ], [ %7791, %7786 ]
  %7796 = phi float [ -1.000000e+00, %7720 ], [ %7790, %7786 ]
  %7797 = phi float [ -1.000000e+00, %7720 ], [ %7789, %7786 ]
  %7798 = phi float [ -1.000000e+00, %7720 ], [ %7788, %7786 ]
  %7799 = phi float [ -1.000000e+00, %7720 ], [ %7787, %7786 ]
  %7800 = phi i32 [ 0, %7720 ], [ %7783, %7786 ]
  %7801 = call float @dx.op.binary.f32(i32 36, float %7798, float %7799)  ; FMin(a,b)
  %7802 = call float @dx.op.binary.f32(i32 36, float %7797, float %7801)  ; FMin(a,b)
  %7803 = call float @dx.op.binary.f32(i32 35, float %7797, float %7798)  ; FMax(a,b)
  %7804 = call float @dx.op.binary.f32(i32 36, float %7803, float %7799)  ; FMin(a,b)
  %7805 = call float @dx.op.binary.f32(i32 36, float %7797, float %7798)  ; FMin(a,b)
  %7806 = call float @dx.op.binary.f32(i32 35, float %7805, float %7804)  ; FMax(a,b)
  %7807 = call float @dx.op.binary.f32(i32 35, float %7798, float %7799)  ; FMax(a,b)
  %7808 = call float @dx.op.binary.f32(i32 35, float %7797, float %7807)  ; FMax(a,b)
  store float %7802, float* %7725, align 4, !tbaa !111, !alias.scope !137, !noalias !138
  store float %7806, float* %7726, align 4, !tbaa !111, !alias.scope !135, !noalias !136
  store float %7808, float* %7727, align 4, !tbaa !111, !alias.scope !129, !noalias !132
  %7809 = call float @dx.op.binary.f32(i32 36, float %7795, float %7796)  ; FMin(a,b)
  %7810 = call float @dx.op.binary.f32(i32 36, float %7794, float %7809)  ; FMin(a,b)
  %7811 = call float @dx.op.binary.f32(i32 35, float %7794, float %7795)  ; FMax(a,b)
  %7812 = call float @dx.op.binary.f32(i32 36, float %7811, float %7796)  ; FMin(a,b)
  %7813 = call float @dx.op.binary.f32(i32 36, float %7794, float %7795)  ; FMin(a,b)
  %7814 = call float @dx.op.binary.f32(i32 35, float %7813, float %7812)  ; FMax(a,b)
  %7815 = call float @dx.op.binary.f32(i32 35, float %7795, float %7796)  ; FMax(a,b)
  %7816 = call float @dx.op.binary.f32(i32 35, float %7794, float %7815)  ; FMax(a,b)
  store float %7810, float* %7728, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  store float %7814, float* %7729, align 4, !tbaa !111, !alias.scope !145, !noalias !146
  store float %7816, float* %7730, align 4, !tbaa !111, !alias.scope !139, !noalias !142
  %7817 = sub nsw i32 3, %7800
  %7818 = icmp sgt i32 %7817, 2
  br i1 %7818, label %7819, label %7857

; <label>:7819                                    ; preds = %7793
  %7820 = icmp eq i32 %7588, 0
  %7821 = fsub fast float %7638, %7722
  %7822 = select i1 %7820, float %7821, float %7722
  %7823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7824 = extractvalue %dx.types.CBufRet.f32 %7823, 0
  %7825 = extractvalue %dx.types.CBufRet.f32 %7823, 1
  %7826 = extractvalue %dx.types.CBufRet.f32 %7823, 2
  %7827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7828 = extractvalue %dx.types.CBufRet.f32 %7827, 0
  %7829 = extractvalue %dx.types.CBufRet.f32 %7827, 1
  %7830 = extractvalue %dx.types.CBufRet.f32 %7827, 2
  %7831 = extractvalue %dx.types.CBufRet.f32 %7827, 3
  %7832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7833 = extractvalue %dx.types.CBufRet.f32 %7832, 3
  %7834 = call float @dx.op.binary.f32(i32 36, float %7723, float %7833)  ; FMin(a,b)
  %7835 = fmul fast float %7831, %7822
  %7836 = call float @dx.op.unary.f32(i32 7, float %7835)  ; Saturate(value)
  %7837 = fsub fast float %7828, %7824
  %7838 = fsub fast float %7829, %7825
  %7839 = fsub fast float %7830, %7826
  %7840 = fmul fast float %7836, %7837
  %7841 = fmul fast float %7836, %7838
  %7842 = fmul fast float %7836, %7839
  %7843 = fadd fast float %7840, %7824
  %7844 = fadd fast float %7841, %7825
  %7845 = fadd fast float %7842, %7826
  %7846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7847 = extractvalue %dx.types.CBufRet.f32 %7846, 0
  %7848 = extractvalue %dx.types.CBufRet.f32 %7846, 1
  %7849 = fadd fast float %7848, %7847
  %7850 = call float @dx.op.unary.f32(i32 7, float %7849)  ; Saturate(value)
  %7851 = extractvalue %dx.types.CBufRet.f32 %7846, 2
  %7852 = extractvalue %dx.types.CBufRet.f32 %7846, 3
  %7853 = fadd fast float %7852, %7851
  %7854 = call float @dx.op.unary.f32(i32 7, float %7853)  ; Saturate(value)
  %7855 = fmul fast float %7850, %7834
  %7856 = fmul fast float %7855, %7854
  br label %7939

; <label>:7857                                    ; preds = %7793
  %7858 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7817
  %7859 = load float, float* %7858, align 4, !tbaa !111, !noalias !113
  %7860 = fcmp fast olt float %7859, %7724
  %7861 = icmp sgt i32 %7800, 0
  %7862 = and i1 %7861, %7860
  br i1 %7862, label %7863, label %7900

; <label>:7863                                    ; preds = %7857
  br label %7864

; <label>:7864                                    ; preds = %7893, %7863
  %7865 = phi float [ %7894, %7893 ], [ %7722, %7863 ]
  %7866 = phi float [ %7895, %7893 ], [ %7723, %7863 ]
  %7867 = phi float [ %7875, %7893 ], [ %7859, %7863 ]
  %7868 = phi i32 [ %7872, %7893 ], [ %7817, %7863 ]
  %7869 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7868
  %7870 = load float, float* %7869, align 4, !tbaa !111, !noalias !113
  %7871 = icmp slt i32 %7868, 2
  %7872 = add nsw i32 %7868, 1
  %7873 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7872
  %7874 = load float, float* %7873, align 4, !tbaa !111, !noalias !113
  %7875 = select i1 %7871, float %7874, float %7638
  %7876 = call float @dx.op.binary.f32(i32 36, float %7875, float %7870)  ; FMin(a,b)
  %7877 = call float @dx.op.binary.f32(i32 36, float %7724, float %7876)  ; FMin(a,b)
  %7878 = icmp eq i32 %7588, 0
  %7879 = fadd fast float %7877, %7867
  %7880 = fmul fast float %7879, %7569
  %7881 = fadd fast float %7880, %7582
  br i1 %7878, label %7887, label %7882

; <label>:7882                                    ; preds = %7864
  %7883 = fsub fast float %7877, %7867
  %7884 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7883)  ; FMax(a,b)
  %7885 = fmul fast float %7884, %7881
  %7886 = fadd fast float %7885, %7866
  br label %7893

; <label>:7887                                    ; preds = %7864
  %7888 = fsub fast float %7867, %7877
  %7889 = call float @dx.op.unary.f32(i32 6, float %7888)  ; FAbs(value)
  %7890 = fadd fast float %7889, %7865
  %7891 = fmul fast float %7889, %7881
  %7892 = fsub fast float %7866, %7891
  br label %7893

; <label>:7893                                    ; preds = %7887, %7882
  %7894 = phi float [ %7884, %7882 ], [ %7890, %7887 ]
  %7895 = phi float [ %7886, %7882 ], [ %7892, %7887 ]
  %7896 = fcmp fast olt float %7875, %7724
  %7897 = icmp slt i32 %7872, 3
  %7898 = and i1 %7897, %7896
  br i1 %7898, label %7864, label %7899

; <label>:7899                                    ; preds = %7893
  br label %7900

; <label>:7900                                    ; preds = %7899, %7857
  %7901 = phi float [ %7722, %7857 ], [ %7894, %7899 ]
  %7902 = phi float [ %7723, %7857 ], [ %7895, %7899 ]
  %7903 = fsub fast float %7638, %7901
  %7904 = select i1 %7640, float %7901, float %7903
  %7905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7906 = extractvalue %dx.types.CBufRet.f32 %7905, 0
  %7907 = extractvalue %dx.types.CBufRet.f32 %7905, 1
  %7908 = extractvalue %dx.types.CBufRet.f32 %7905, 2
  %7909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7910 = extractvalue %dx.types.CBufRet.f32 %7909, 0
  %7911 = extractvalue %dx.types.CBufRet.f32 %7909, 1
  %7912 = extractvalue %dx.types.CBufRet.f32 %7909, 2
  %7913 = extractvalue %dx.types.CBufRet.f32 %7909, 3
  %7914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7915 = extractvalue %dx.types.CBufRet.f32 %7914, 3
  %7916 = call float @dx.op.binary.f32(i32 36, float %7902, float %7915)  ; FMin(a,b)
  %7917 = fmul fast float %7913, %7904
  %7918 = call float @dx.op.unary.f32(i32 7, float %7917)  ; Saturate(value)
  %7919 = fsub fast float %7910, %7906
  %7920 = fsub fast float %7911, %7907
  %7921 = fsub fast float %7912, %7908
  %7922 = fmul fast float %7918, %7919
  %7923 = fmul fast float %7918, %7920
  %7924 = fmul fast float %7918, %7921
  %7925 = fadd fast float %7922, %7906
  %7926 = fadd fast float %7923, %7907
  %7927 = fadd fast float %7924, %7908
  %7928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7929 = extractvalue %dx.types.CBufRet.f32 %7928, 0
  %7930 = extractvalue %dx.types.CBufRet.f32 %7928, 1
  %7931 = fadd fast float %7930, %7929
  %7932 = call float @dx.op.unary.f32(i32 7, float %7931)  ; Saturate(value)
  %7933 = extractvalue %dx.types.CBufRet.f32 %7928, 2
  %7934 = extractvalue %dx.types.CBufRet.f32 %7928, 3
  %7935 = fadd fast float %7934, %7933
  %7936 = call float @dx.op.unary.f32(i32 7, float %7935)  ; Saturate(value)
  %7937 = fmul fast float %7932, %7916
  %7938 = fmul fast float %7937, %7936
  br label %7939

; <label>:7939                                    ; preds = %7900, %7819, %7654, %7636, %7634
  %7940 = phi float [ %7663, %7654 ], [ %7822, %7819 ], [ %7904, %7900 ], [ 0.000000e+00, %7634 ], [ 0.000000e+00, %7636 ]
  %7941 = phi float [ %7697, %7654 ], [ %7856, %7819 ], [ %7938, %7900 ], [ 0.000000e+00, %7634 ], [ 0.000000e+00, %7636 ]
  %7942 = phi float [ %7684, %7654 ], [ %7843, %7819 ], [ %7925, %7900 ], [ 0.000000e+00, %7634 ], [ 0.000000e+00, %7636 ]
  %7943 = phi float [ %7685, %7654 ], [ %7844, %7819 ], [ %7926, %7900 ], [ 0.000000e+00, %7634 ], [ 0.000000e+00, %7636 ]
  %7944 = phi float [ %7686, %7654 ], [ %7845, %7819 ], [ %7927, %7900 ], [ 0.000000e+00, %7634 ], [ 0.000000e+00, %7636 ]
  %7945 = fmul fast float %7577, %7941
  %7946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7947 = extractvalue %dx.types.CBufRet.f32 %7946, 2
  %7948 = fsub fast float %7584, %7947
  %7949 = fcmp fast olt float %7945, -2.000000e+01
  %7950 = call float @dx.op.unary.f32(i32 21, float %7945)  ; Exp(value)
  %7951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7952 = extractvalue %dx.types.CBufRet.f32 %7951, 2
  %7953 = extractvalue %dx.types.CBufRet.f32 %7951, 3
  %7954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7955 = extractvalue %dx.types.CBufRet.f32 %7954, 2
  %7956 = fmul fast float %7953, %7948
  %7957 = call float @dx.op.unary.f32(i32 7, float %7956)  ; Saturate(value)
  %7958 = fsub fast float 1.000000e+00, %7957
  %7959 = fmul fast float %7569, 5.000000e-01
  %7960 = fadd fast float %7959, 5.000000e-01
  %7961 = call float @dx.op.unary.f32(i32 7, float %7960)  ; Saturate(value)
  %7962 = fsub fast float 1.000000e+00, %7961
  %7963 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7958)  ; FMax(a,b)
  %7964 = fdiv fast float %7962, %7963
  %7965 = fsub fast float %7948, %7526
  %7966 = call float @dx.op.unary.f32(i32 6, float %7965)  ; FAbs(value)
  %7967 = fmul fast float %7966, %7952
  %7968 = call float @dx.op.unary.f32(i32 7, float %7964)  ; Saturate(value)
  %7969 = fsub fast float 1.000000e+00, %7967
  %7970 = fmul fast float %7969, %7968
  %7971 = fadd fast float %7970, %7967
  %7972 = fmul fast float %7955, %7948
  %7973 = call float @dx.op.unary.f32(i32 7, float %7972)  ; Saturate(value)
  %7974 = fsub fast float 1.000000e+00, %7971
  %7975 = fmul fast float %7974, %7973
  %7976 = fadd fast float %7975, %7971
  %7977 = call float @dx.op.unary.f32(i32 7, float %7976)  ; Saturate(value)
  %7978 = fadd fast float %7950, -1.000000e+00
  %7979 = select i1 %7949, float -1.000000e+00, float %7978
  %7980 = fmul fast float %7977, %7979
  %7981 = fadd fast float %7980, 1.000000e+00
  %7982 = fsub fast float -0.000000e+00, %7980
  %7983 = fmul fast float %7942, %7982
  %7984 = fmul fast float %7943, %7982
  %7985 = fmul fast float %7944, %7982
  br label %7986

; <label>:7986                                    ; preds = %7939, %7535
  %7987 = phi float [ %7940, %7939 ], [ 0.000000e+00, %7535 ]
  %7988 = phi float [ %7981, %7939 ], [ 1.000000e+00, %7535 ]
  %7989 = phi float [ %7983, %7939 ], [ 0.000000e+00, %7535 ]
  %7990 = phi float [ %7984, %7939 ], [ 0.000000e+00, %7535 ]
  %7991 = phi float [ %7985, %7939 ], [ 0.000000e+00, %7535 ]
  %7992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7993 = extractvalue %dx.types.CBufRet.f32 %7992, 1
  %7994 = fsub fast float 1.000000e+00, %7988
  %7995 = fmul fast float %7994, %7570
  %7996 = fmul fast float %7995, %7993
  %7997 = fsub fast float %7570, %7996
  br i1 %7563, label %7998, label %8027, !dx.controlflow.hints !149

; <label>:7998                                    ; preds = %7986
  %7999 = fmul fast float %7571, %7560
  %8000 = fadd fast float %7999, %7561
  %8001 = call float @dx.op.unary.f32(i32 7, float %8000)  ; Saturate(value)
  %8002 = fmul fast float %7542, %7997
  %8003 = fsub fast float -0.000000e+00, %8002
  %8004 = fmul fast float %7543, %7997
  %8005 = fsub fast float -0.000000e+00, %8004
  %8006 = call float @dx.op.unary.f32(i32 21, float %8003)  ; Exp(value)
  %8007 = call float @dx.op.unary.f32(i32 21, float %8005)  ; Exp(value)
  %8008 = call float @dx.op.binary.f32(i32 35, float %7550, float %8006)  ; FMax(a,b)
  %8009 = call float @dx.op.binary.f32(i32 35, float %7550, float %8007)  ; FMax(a,b)
  %8010 = fsub fast float %8009, %8008
  %8011 = fmul fast float %8010, %8001
  %8012 = fadd fast float %8011, %8008
  %8013 = call float @dx.op.unary.f32(i32 7, float %8012)  ; Saturate(value)
  %8014 = fsub fast float %7547, %7552
  %8015 = fsub fast float %7548, %7553
  %8016 = fsub fast float %7549, %7554
  %8017 = fmul fast float %8001, %8014
  %8018 = fmul fast float %8001, %8015
  %8019 = fmul fast float %8001, %8016
  %8020 = fadd fast float %8017, %7552
  %8021 = fadd fast float %8018, %7553
  %8022 = fadd fast float %8019, %7554
  %8023 = fsub fast float 1.000000e+00, %8013
  %8024 = fmul fast float %8023, %8020
  %8025 = fmul fast float %8023, %8021
  %8026 = fmul fast float %8023, %8022
  br label %8086

; <label>:8027                                    ; preds = %7986
  %8028 = fmul fast float %7997, %7559
  %8029 = call float @dx.op.unary.f32(i32 7, float %8028)  ; Saturate(value)
  %8030 = fsub fast float 2.000000e+00, %8029
  %8031 = fmul fast float %8029, 9.921875e-01
  %8032 = fmul fast float %8031, %8030
  %8033 = fadd fast float %8032, 3.906250e-03
  %8034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %37, float %8033, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8035 = extractvalue %dx.types.ResRet.f32 %8034, 0
  %8036 = fsub fast float %8029, %8035
  %8037 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8036)  ; FMax(a,b)
  %8038 = fmul fast float %7545, %7526
  %8039 = call float @dx.op.unary.f32(i32 6, float %8038)  ; FAbs(value)
  %8040 = fcmp fast ogt float %8039, 0x3EB0C6F7A0000000
  br i1 %8040, label %8041, label %8047, !dx.controlflow.hints !150

; <label>:8041                                    ; preds = %8027
  %8042 = fmul fast float %8038, 0xBFF7154760000000
  %8043 = call float @dx.op.unary.f32(i32 21, float %8042)  ; Exp(value)
  %8044 = fsub fast float 1.000000e+00, %8043
  %8045 = fdiv fast float %8044, %8038
  %8046 = fmul fast float %8045, %7555
  br label %8047

; <label>:8047                                    ; preds = %8041, %8027
  %8048 = phi float [ %8046, %8041 ], [ %7555, %8027 ]
  %8049 = fadd fast float %8048, %7557
  %8050 = fmul fast float %8049, %8037
  %8051 = fmul fast float %7542, %8050
  %8052 = fsub fast float -0.000000e+00, %8051
  %8053 = fmul fast float %7543, %8050
  %8054 = fsub fast float -0.000000e+00, %8053
  %8055 = fmul fast float %7544, %8050
  %8056 = fsub fast float -0.000000e+00, %8055
  %8057 = call float @dx.op.unary.f32(i32 21, float %8052)  ; Exp(value)
  %8058 = call float @dx.op.unary.f32(i32 21, float %8054)  ; Exp(value)
  %8059 = call float @dx.op.unary.f32(i32 21, float %8056)  ; Exp(value)
  %8060 = fmul fast float %7571, %7571
  %8061 = fadd fast float %8060, 1.000000e+00
  %8062 = fmul fast float %8061, 0x3FAE8EC8A0000000
  %8063 = fmul fast float %8062, %7552
  %8064 = fmul fast float %8062, %7553
  %8065 = fmul fast float %8062, %7554
  %8066 = fmul fast float %7571, %7550
  %8067 = fsub fast float 1.000000e+00, %8066
  %8068 = fmul fast float %7550, %7550
  %8069 = fsub fast float 1.000000e+00, %8068
  %8070 = fmul fast float %8069, 0x3FB45F3060000000
  %8071 = fmul fast float %8067, %8067
  %8072 = fdiv fast float 1.000000e+00, %8071
  %8073 = fmul fast float %8070, %8072
  %8074 = fmul fast float %8073, %7547
  %8075 = fmul fast float %8073, %7548
  %8076 = fmul fast float %8073, %7549
  %8077 = fadd fast float %8074, %8063
  %8078 = fadd fast float %8075, %8064
  %8079 = fadd fast float %8076, %8065
  %8080 = fsub fast float 1.000000e+00, %8057
  %8081 = fsub fast float 1.000000e+00, %8058
  %8082 = fsub fast float 1.000000e+00, %8059
  %8083 = fmul fast float %8077, %8080
  %8084 = fmul fast float %8078, %8081
  %8085 = fmul fast float %8079, %8082
  br label %8086

; <label>:8086                                    ; preds = %8047, %7998
  %8087 = phi float [ %8024, %7998 ], [ %8083, %8047 ]
  %8088 = phi float [ %8025, %7998 ], [ %8084, %8047 ]
  %8089 = phi float [ %8026, %7998 ], [ %8085, %8047 ]
  %8090 = phi float [ %8013, %7998 ], [ %8057, %8047 ]
  %8091 = phi float [ %8013, %7998 ], [ %8058, %8047 ]
  %8092 = phi float [ %8013, %7998 ], [ %8059, %8047 ]
  br i1 %7579, label %8093, label %8291, !dx.controlflow.hints !151

; <label>:8093                                    ; preds = %8086
  %8094 = extractvalue %dx.types.CBufRet.f32 %7992, 0
  %8095 = fmul fast float %8094, %7994
  %8096 = fsub fast float %7989, %8087
  %8097 = fsub fast float %7990, %8088
  %8098 = fsub fast float %7991, %8089
  %8099 = fmul fast float %8095, %8096
  %8100 = fmul fast float %8095, %8097
  %8101 = fmul fast float %8095, %8098
  %8102 = fadd fast float %8099, %8087
  %8103 = fadd fast float %8100, %8088
  %8104 = fadd fast float %8101, %8089
  %8105 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8090)  ; FMax(a,b)
  %8106 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8091)  ; FMax(a,b)
  %8107 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8092)  ; FMax(a,b)
  %8108 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7988)  ; FMax(a,b)
  %8109 = call float @dx.op.binary.f32(i32 35, float %7987, float %7997)  ; FMax(a,b)
  %8110 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8109)  ; FMax(a,b)
  %8111 = fdiv fast float %7987, %8110
  %8112 = call float @dx.op.unary.f32(i32 7, float %8111)  ; Saturate(value)
  %8113 = fdiv fast float %7997, %8110
  %8114 = call float @dx.op.unary.f32(i32 7, float %8113)  ; Saturate(value)
  %8115 = fcmp fast une float %8108, 1.000000e+00
  br i1 %8115, label %8116, label %8129, !dx.controlflow.hints !152

; <label>:8116                                    ; preds = %8093
  %8117 = call float @dx.op.unary.f32(i32 23, float %8108)  ; Log(value)
  %8118 = fmul fast float %8117, 0x3FE62E4300000000
  %8119 = fmul fast float %7989, %8118
  %8120 = fsub fast float -0.000000e+00, %8119
  %8121 = fmul fast float %7990, %8118
  %8122 = fsub fast float -0.000000e+00, %8121
  %8123 = fmul fast float %7991, %8118
  %8124 = fsub fast float -0.000000e+00, %8123
  %8125 = fsub fast float 1.000000e+00, %8108
  %8126 = fdiv fast float %8120, %8125
  %8127 = fdiv fast float %8122, %8125
  %8128 = fdiv fast float %8124, %8125
  br label %8129

; <label>:8129                                    ; preds = %8116, %8093
  %8130 = phi float [ %8126, %8116 ], [ %7989, %8093 ]
  %8131 = phi float [ %8127, %8116 ], [ %7990, %8093 ]
  %8132 = phi float [ %8128, %8116 ], [ %7991, %8093 ]
  %8133 = phi float [ %8118, %8116 ], [ 0.000000e+00, %8093 ]
  %8134 = fcmp fast une float %8105, 1.000000e+00
  br i1 %8134, label %8135, label %8142, !dx.controlflow.hints !153

; <label>:8135                                    ; preds = %8129
  %8136 = call float @dx.op.unary.f32(i32 23, float %8105)  ; Log(value)
  %8137 = fmul fast float %8136, 0x3FE62E4300000000
  %8138 = fmul fast float %8102, %8137
  %8139 = fsub fast float -0.000000e+00, %8138
  %8140 = fsub fast float 1.000000e+00, %8105
  %8141 = fdiv fast float %8139, %8140
  br label %8142

; <label>:8142                                    ; preds = %8135, %8129
  %8143 = phi float [ %8141, %8135 ], [ %8102, %8129 ]
  %8144 = phi float [ %8137, %8135 ], [ 0.000000e+00, %8129 ]
  %8145 = fcmp fast une float %8106, 1.000000e+00
  br i1 %8145, label %8146, label %8153, !dx.controlflow.hints !153

; <label>:8146                                    ; preds = %8142
  %8147 = call float @dx.op.unary.f32(i32 23, float %8106)  ; Log(value)
  %8148 = fmul fast float %8147, 0x3FE62E4300000000
  %8149 = fmul fast float %8103, %8148
  %8150 = fsub fast float -0.000000e+00, %8149
  %8151 = fsub fast float 1.000000e+00, %8106
  %8152 = fdiv fast float %8150, %8151
  br label %8153

; <label>:8153                                    ; preds = %8146, %8142
  %8154 = phi float [ %8152, %8146 ], [ %8103, %8142 ]
  %8155 = phi float [ %8148, %8146 ], [ 0.000000e+00, %8142 ]
  %8156 = fcmp fast une float %8107, 1.000000e+00
  br i1 %8156, label %8157, label %8164, !dx.controlflow.hints !153

; <label>:8157                                    ; preds = %8153
  %8158 = call float @dx.op.unary.f32(i32 23, float %8107)  ; Log(value)
  %8159 = fmul fast float %8158, 0x3FE62E4300000000
  %8160 = fmul fast float %8104, %8159
  %8161 = fsub fast float -0.000000e+00, %8160
  %8162 = fsub fast float 1.000000e+00, %8107
  %8163 = fdiv fast float %8161, %8162
  br label %8164

; <label>:8164                                    ; preds = %8157, %8153
  %8165 = phi float [ %8163, %8157 ], [ %8104, %8153 ]
  %8166 = phi float [ %8159, %8157 ], [ 0.000000e+00, %8153 ]
  %8167 = fmul fast float %8130, %8114
  %8168 = fmul fast float %8131, %8114
  %8169 = fmul fast float %8132, %8114
  %8170 = fmul fast float %8133, %8114
  %8171 = fmul fast float %8143, %8112
  %8172 = fmul fast float %8154, %8112
  %8173 = fmul fast float %8165, %8112
  %8174 = fmul fast float %8144, %8112
  %8175 = fmul fast float %8155, %8112
  %8176 = fmul fast float %8166, %8112
  %8177 = fadd fast float %8171, %8167
  %8178 = fadd fast float %8172, %8168
  %8179 = fadd fast float %8173, %8169
  %8180 = fadd fast float %8174, %8170
  %8181 = fadd fast float %8175, %8170
  %8182 = fadd fast float %8176, %8170
  %8183 = fcmp fast une float %8180, 0.000000e+00
  br i1 %8183, label %8184, label %8191, !dx.controlflow.hints !154

; <label>:8184                                    ; preds = %8164
  %8185 = fmul fast float %8180, 0x3FF7154760000000
  %8186 = call float @dx.op.unary.f32(i32 21, float %8185)  ; Exp(value)
  %8187 = fsub fast float 1.000000e+00, %8186
  %8188 = fmul fast float %8177, %8187
  %8189 = fsub fast float -0.000000e+00, %8188
  %8190 = fdiv fast float %8189, %8180
  br label %8191

; <label>:8191                                    ; preds = %8184, %8164
  %8192 = phi float [ %8186, %8184 ], [ 1.000000e+00, %8164 ]
  %8193 = phi float [ %8190, %8184 ], [ %8177, %8164 ]
  %8194 = fcmp fast une float %8181, 0.000000e+00
  br i1 %8194, label %8195, label %8202, !dx.controlflow.hints !154

; <label>:8195                                    ; preds = %8191
  %8196 = fmul fast float %8181, 0x3FF7154760000000
  %8197 = call float @dx.op.unary.f32(i32 21, float %8196)  ; Exp(value)
  %8198 = fsub fast float 1.000000e+00, %8197
  %8199 = fmul fast float %8178, %8198
  %8200 = fsub fast float -0.000000e+00, %8199
  %8201 = fdiv fast float %8200, %8181
  br label %8202

; <label>:8202                                    ; preds = %8195, %8191
  %8203 = phi float [ %8197, %8195 ], [ 1.000000e+00, %8191 ]
  %8204 = phi float [ %8201, %8195 ], [ %8178, %8191 ]
  %8205 = fcmp fast une float %8182, 0.000000e+00
  br i1 %8205, label %8206, label %8213, !dx.controlflow.hints !154

; <label>:8206                                    ; preds = %8202
  %8207 = fmul fast float %8182, 0x3FF7154760000000
  %8208 = call float @dx.op.unary.f32(i32 21, float %8207)  ; Exp(value)
  %8209 = fsub fast float 1.000000e+00, %8208
  %8210 = fmul fast float %8179, %8209
  %8211 = fsub fast float -0.000000e+00, %8210
  %8212 = fdiv fast float %8211, %8182
  br label %8213

; <label>:8213                                    ; preds = %8206, %8202
  %8214 = phi float [ %8208, %8206 ], [ 1.000000e+00, %8202 ]
  %8215 = phi float [ %8212, %8206 ], [ %8179, %8202 ]
  %8216 = fcmp fast ogt float %8112, %8114
  br i1 %8216, label %8217, label %8237

; <label>:8217                                    ; preds = %8213
  %8218 = fsub fast float 1.000000e+00, %8114
  %8219 = fmul fast float %8130, %8218
  %8220 = fmul fast float %8131, %8218
  %8221 = fmul fast float %8132, %8218
  %8222 = fmul fast float %8133, %8218
  %8223 = fcmp fast une float %8222, 0.000000e+00
  br i1 %8223, label %8224, label %8275, !dx.controlflow.hints !155

; <label>:8224                                    ; preds = %8217
  %8225 = fmul fast float %8222, 0x3FF7154760000000
  %8226 = call float @dx.op.unary.f32(i32 21, float %8225)  ; Exp(value)
  %8227 = fsub fast float 1.000000e+00, %8226
  %8228 = fmul fast float %8219, %8227
  %8229 = fsub fast float -0.000000e+00, %8228
  %8230 = fmul fast float %8220, %8227
  %8231 = fsub fast float -0.000000e+00, %8230
  %8232 = fmul fast float %8221, %8227
  %8233 = fsub fast float -0.000000e+00, %8232
  %8234 = fdiv fast float %8229, %8222
  %8235 = fdiv fast float %8231, %8222
  %8236 = fdiv fast float %8233, %8222
  br label %8275

; <label>:8237                                    ; preds = %8213
  %8238 = fsub fast float 1.000000e+00, %8112
  %8239 = fmul fast float %8143, %8238
  %8240 = fmul fast float %8154, %8238
  %8241 = fmul fast float %8165, %8238
  %8242 = fmul fast float %8144, %8238
  %8243 = fmul fast float %8155, %8238
  %8244 = fmul fast float %8166, %8238
  %8245 = fcmp fast une float %8242, 0.000000e+00
  br i1 %8245, label %8246, label %8253, !dx.controlflow.hints !154

; <label>:8246                                    ; preds = %8237
  %8247 = fmul fast float %8242, 0x3FF7154760000000
  %8248 = call float @dx.op.unary.f32(i32 21, float %8247)  ; Exp(value)
  %8249 = fsub fast float 1.000000e+00, %8248
  %8250 = fmul fast float %8239, %8249
  %8251 = fsub fast float -0.000000e+00, %8250
  %8252 = fdiv fast float %8251, %8242
  br label %8253

; <label>:8253                                    ; preds = %8246, %8237
  %8254 = phi float [ %8252, %8246 ], [ %8239, %8237 ]
  %8255 = phi float [ %8248, %8246 ], [ 1.000000e+00, %8237 ]
  %8256 = fcmp fast une float %8243, 0.000000e+00
  br i1 %8256, label %8257, label %8264, !dx.controlflow.hints !154

; <label>:8257                                    ; preds = %8253
  %8258 = fmul fast float %8243, 0x3FF7154760000000
  %8259 = call float @dx.op.unary.f32(i32 21, float %8258)  ; Exp(value)
  %8260 = fsub fast float 1.000000e+00, %8259
  %8261 = fmul fast float %8240, %8260
  %8262 = fsub fast float -0.000000e+00, %8261
  %8263 = fdiv fast float %8262, %8243
  br label %8264

; <label>:8264                                    ; preds = %8257, %8253
  %8265 = phi float [ %8263, %8257 ], [ %8240, %8253 ]
  %8266 = phi float [ %8259, %8257 ], [ 1.000000e+00, %8253 ]
  %8267 = fcmp fast une float %8244, 0.000000e+00
  br i1 %8267, label %8268, label %8275, !dx.controlflow.hints !154

; <label>:8268                                    ; preds = %8264
  %8269 = fmul fast float %8244, 0x3FF7154760000000
  %8270 = call float @dx.op.unary.f32(i32 21, float %8269)  ; Exp(value)
  %8271 = fsub fast float 1.000000e+00, %8270
  %8272 = fmul fast float %8241, %8271
  %8273 = fsub fast float -0.000000e+00, %8272
  %8274 = fdiv fast float %8273, %8244
  br label %8275

; <label>:8275                                    ; preds = %8268, %8264, %8224, %8217
  %8276 = phi float [ %8274, %8268 ], [ %8236, %8224 ], [ %8221, %8217 ], [ %8241, %8264 ]
  %8277 = phi float [ %8265, %8268 ], [ %8235, %8224 ], [ %8220, %8217 ], [ %8265, %8264 ]
  %8278 = phi float [ %8254, %8268 ], [ %8234, %8224 ], [ %8219, %8217 ], [ %8254, %8264 ]
  %8279 = phi float [ %8270, %8268 ], [ %8226, %8224 ], [ 1.000000e+00, %8217 ], [ 1.000000e+00, %8264 ]
  %8280 = phi float [ %8266, %8268 ], [ %8226, %8224 ], [ 1.000000e+00, %8217 ], [ %8266, %8264 ]
  %8281 = phi float [ %8255, %8268 ], [ %8226, %8224 ], [ 1.000000e+00, %8217 ], [ %8255, %8264 ]
  %8282 = fmul fast float %8281, %8193
  %8283 = fmul fast float %8280, %8204
  %8284 = fmul fast float %8279, %8215
  %8285 = fadd fast float %8282, %8278
  %8286 = fadd fast float %8283, %8277
  %8287 = fadd fast float %8284, %8276
  %8288 = fmul fast float %8281, %8192
  %8289 = fmul fast float %8280, %8203
  %8290 = fmul fast float %8279, %8214
  br label %8291

; <label>:8291                                    ; preds = %8275, %8086
  %8292 = phi float [ %8290, %8275 ], [ %8092, %8086 ]
  %8293 = phi float [ %8289, %8275 ], [ %8091, %8086 ]
  %8294 = phi float [ %8288, %8275 ], [ %8090, %8086 ]
  %8295 = phi float [ %8287, %8275 ], [ %8089, %8086 ]
  %8296 = phi float [ %8286, %8275 ], [ %8088, %8086 ]
  %8297 = phi float [ %8285, %8275 ], [ %8087, %8086 ]
  %8298 = fmul fast float %8297, %7243
  %8299 = fmul fast float %8296, %7243
  %8300 = fmul fast float %8295, %7243
  %8301 = fmul fast float %8294, %7534
  %8302 = call float @dx.op.dot3.f32(i32 55, float %8294, float %8293, float %8292, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8303 = call float @dx.op.dot3.f32(i32 55, float %8298, float %8299, float %8300, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8304 = select i1 %252, float %8302, float %8294
  %8305 = select i1 %252, float %8302, float %8293
  %8306 = select i1 %252, float 1.000000e+00, float %8292
  %8307 = select i1 %252, float %8303, float %8298
  %8308 = select i1 %252, float 0.000000e+00, float %8299
  %8309 = select i1 %252, float 0.000000e+00, float %8300
  %8310 = fmul fast float %8304, %7528
  %8311 = fmul fast float %8305, %7529
  %8312 = fmul fast float %8306, %7530
  %8313 = fadd fast float %8310, %8307
  %8314 = fadd fast float %8311, %8308
  %8315 = fadd fast float %8309, %8312
  %8316 = fmul fast float %8304, %7531
  %8317 = fmul fast float %8305, %7532
  %8318 = fmul fast float %8306, %7533
  %8319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8320 = extractvalue %dx.types.CBufRet.i32 %8319, 0
  %8321 = icmp eq i32 %8320, 0
  br i1 %8321, label %8689, label %8322, !dx.controlflow.hints !156

; <label>:8322                                    ; preds = %8291
  %8323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8324 = extractvalue %dx.types.CBufRet.f32 %8323, 2
  %8325 = extractvalue %dx.types.CBufRet.f32 %8323, 3
  %8326 = fmul fast float %8324, %99
  %8327 = fmul fast float %8325, %100
  %8328 = fmul fast float %8326, 2.000000e+00
  %8329 = fmul fast float %8327, 2.000000e+00
  %8330 = fsub fast float 1.000000e+00, %8328
  %8331 = fsub fast float 1.000000e+00, %8329
  %8332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8333 = extractvalue %dx.types.CBufRet.f32 %8332, 0
  %8334 = extractvalue %dx.types.CBufRet.f32 %8332, 1
  %8335 = extractvalue %dx.types.CBufRet.f32 %8332, 2
  %8336 = fmul fast float %8330, %8333
  %8337 = fmul fast float %8330, %8334
  %8338 = fmul fast float %8330, %8335
  %8339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8340 = extractvalue %dx.types.CBufRet.f32 %8339, 0
  %8341 = extractvalue %dx.types.CBufRet.f32 %8339, 1
  %8342 = extractvalue %dx.types.CBufRet.f32 %8339, 2
  %8343 = fmul fast float %8331, %8340
  %8344 = fmul fast float %8331, %8341
  %8345 = fmul fast float %8331, %8342
  %8346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8347 = extractvalue %dx.types.CBufRet.f32 %8346, 0
  %8348 = extractvalue %dx.types.CBufRet.f32 %8346, 1
  %8349 = extractvalue %dx.types.CBufRet.f32 %8346, 2
  %8350 = fadd fast float %8343, %8347
  %8351 = fadd fast float %8350, %8336
  %8352 = fadd fast float %8344, %8348
  %8353 = fadd fast float %8352, %8337
  %8354 = fadd fast float %8345, %8349
  %8355 = fadd fast float %8354, %8338
  %8356 = fmul fast float %8351, %7527
  %8357 = fmul fast float %8353, %7527
  %8358 = fmul fast float %8355, %7527
  %8359 = fmul fast float %8356, %8356
  %8360 = fmul fast float %8357, %8357
  %8361 = fadd fast float %8359, %8360
  %8362 = fmul fast float %8358, %8358
  %8363 = fadd fast float %8361, %8362
  %8364 = call float @dx.op.unary.f32(i32 24, float %8363)  ; Sqrt(value)
  %8365 = extractvalue %dx.types.CBufRet.f32 %7254, 0
  %8366 = fsub fast float %8364, %8365
  %8367 = extractvalue %dx.types.CBufRet.f32 %7254, 2
  %8368 = fmul fast float %8366, %8367
  %8369 = call float @dx.op.unary.f32(i32 7, float %8368)  ; Saturate(value)
  %8370 = fadd fast float %8369, -5.000000e-01
  %8371 = fmul fast float %8370, 2.000000e+00
  %8372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8373 = extractvalue %dx.types.CBufRet.f32 %8372, 2
  %8374 = call float @dx.op.binary.f32(i32 36, float %8373, float %8371)  ; FMin(a,b)
  %8375 = fsub fast float -0.000000e+00, %8373
  %8376 = fcmp fast ogt float %8374, %8375
  br i1 %8376, label %8377, label %8689, !dx.controlflow.hints !157

; <label>:8377                                    ; preds = %8322
  %8378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8379 = extractvalue %dx.types.CBufRet.f32 %8378, 3
  %8380 = fcmp fast ogt float %8379, 0.000000e+00
  br i1 %8380, label %8381, label %8456, !dx.controlflow.hints !158

; <label>:8381                                    ; preds = %8377
  %8382 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %8383 = extractvalue %dx.types.Dimensions %8382, 0
  %8384 = sitofp i32 %8383 to float
  %8385 = extractvalue %dx.types.Dimensions %8382, 1
  %8386 = sitofp i32 %8385 to float
  %8387 = fmul fast float %8326, %8384
  %8388 = fmul fast float %8327, %8386
  %8389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8390 = extractvalue %dx.types.CBufRet.f32 %8389, 1
  %8391 = fsub fast float -0.000000e+00, %8390
  %8392 = fptoui float %8391 to i32
  %8393 = fptoui float %8387 to i32
  %8394 = fptoui float %8388 to i32
  %8395 = and i32 %8392, 31
  %8396 = lshr i32 %8393, %8395
  %8397 = lshr i32 %8394, %8395
  %8398 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 %8392, i32 %8396, i32 %8397, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8399 = extractvalue %dx.types.ResRet.f32 %8398, 0
  %8400 = fcmp fast olt float %8399, -1.000000e+00
  %8401 = fcmp fast ogt float %8399, -1.000000e+00
  %8402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.f32 %8402, 1
  %8404 = select i1 %8401, float %8403, float 1.000000e+00
  %8405 = fadd fast float %8399, 1.000000e+00
  %8406 = fmul fast float %8404, %8405
  %8407 = call float @dx.op.unary.f32(i32 6, float %8406)  ; FAbs(value)
  %8408 = extractvalue %dx.types.CBufRet.f32 %8402, 3
  %8409 = fcmp fast oge float %8407, %8408
  %8410 = select i1 %8409, float 0x4197782600000000, float %8407
  %8411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8411, 0
  %8413 = extractvalue %dx.types.CBufRet.f32 %8411, 1
  %8414 = extractvalue %dx.types.CBufRet.f32 %8411, 2
  %8415 = select i1 %8400, float %8412, float %8333
  %8416 = select i1 %8400, float %8413, float %8334
  %8417 = select i1 %8400, float %8414, float %8335
  %8418 = fmul fast float %8415, %8330
  %8419 = fmul fast float %8416, %8330
  %8420 = fmul fast float %8417, %8330
  %8421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8422 = extractvalue %dx.types.CBufRet.f32 %8421, 0
  %8423 = extractvalue %dx.types.CBufRet.f32 %8421, 1
  %8424 = extractvalue %dx.types.CBufRet.f32 %8421, 2
  %8425 = select i1 %8400, float %8422, float %8340
  %8426 = select i1 %8400, float %8423, float %8341
  %8427 = select i1 %8400, float %8424, float %8342
  %8428 = fmul fast float %8425, %8331
  %8429 = fmul fast float %8426, %8331
  %8430 = fmul fast float %8427, %8331
  %8431 = fadd fast float %8428, %8418
  %8432 = fadd fast float %8429, %8419
  %8433 = fadd fast float %8430, %8420
  %8434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8435 = extractvalue %dx.types.CBufRet.f32 %8434, 0
  %8436 = extractvalue %dx.types.CBufRet.f32 %8434, 1
  %8437 = extractvalue %dx.types.CBufRet.f32 %8434, 2
  %8438 = select i1 %8400, float %8435, float %8347
  %8439 = select i1 %8400, float %8436, float %8348
  %8440 = select i1 %8400, float %8437, float %8349
  %8441 = fadd fast float %8431, %8438
  %8442 = fadd fast float %8432, %8439
  %8443 = fadd fast float %8433, %8440
  %8444 = fmul fast float %8441, %8410
  %8445 = fmul fast float %8442, %8410
  %8446 = fmul fast float %8443, %8410
  %8447 = fmul fast float %8444, %8444
  %8448 = fmul fast float %8445, %8445
  %8449 = fadd fast float %8447, %8448
  %8450 = fmul fast float %8446, %8446
  %8451 = fadd fast float %8449, %8450
  %8452 = call float @dx.op.unary.f32(i32 24, float %8451)  ; Sqrt(value)
  %8453 = fsub fast float %8452, %8365
  %8454 = fmul fast float %8453, %8367
  %8455 = call float @dx.op.unary.f32(i32 7, float %8454)  ; Saturate(value)
  br label %8456

; <label>:8456                                    ; preds = %8381, %8377
  %8457 = phi float [ %8455, %8381 ], [ 1.000000e+00, %8377 ]
  %8458 = fmul fast float %8374, 5.000000e-01
  %8459 = fadd fast float %8458, 5.000000e-01
  %8460 = call float @dx.op.unary.f32(i32 22, float %8459)  ; Frc(value)
  %8461 = call float @dx.op.unary.f32(i32 27, float %8460)  ; Round_ni(value)
  %8462 = call float @dx.op.unary.f32(i32 22, float %8460)  ; Frc(value)
  %8463 = fmul fast float %8462, 2.000000e+00
  %8464 = fadd fast float %8463, -1.000000e+00
  %8465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %37, float %8326, float %8327, float %8461, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8466 = extractvalue %dx.types.ResRet.f32 %8465, 0
  %8467 = extractvalue %dx.types.ResRet.f32 %8465, 1
  %8468 = extractvalue %dx.types.ResRet.f32 %8465, 2
  %8469 = extractvalue %dx.types.ResRet.f32 %8465, 3
  %8470 = fadd fast float %8466, -5.000000e-01
  %8471 = fadd fast float %8468, -5.000000e-01
  %8472 = fmul fast float %8470, 0xBFD5555560000000
  %8473 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8471, float %8472)  ; FMad(a,b,c)
  %8474 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8467, float 0.000000e+00)  ; FMad(a,b,c)
  %8475 = fadd fast float %8474, %8469
  %8476 = fmul fast float %8470, -7.500000e-01
  %8477 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8471, float %8476)  ; FMad(a,b,c)
  %8478 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8467, float 0.000000e+00)  ; FMad(a,b,c)
  %8479 = fadd fast float %8478, %8469
  %8480 = call float @dx.op.binary.f32(i32 35, float %8473, float -1.000000e+00)  ; FMax(a,b)
  %8481 = call float @dx.op.binary.f32(i32 35, float %8475, float -1.000000e+00)  ; FMax(a,b)
  %8482 = call float @dx.op.binary.f32(i32 35, float %8477, float -1.000000e+00)  ; FMax(a,b)
  %8483 = call float @dx.op.binary.f32(i32 35, float %8479, float -1.000000e+00)  ; FMax(a,b)
  %8484 = call float @dx.op.binary.f32(i32 36, float %8480, float 1.000000e+00)  ; FMin(a,b)
  %8485 = call float @dx.op.binary.f32(i32 36, float %8481, float 1.000000e+00)  ; FMin(a,b)
  %8486 = call float @dx.op.binary.f32(i32 36, float %8482, float 1.000000e+00)  ; FMin(a,b)
  %8487 = call float @dx.op.binary.f32(i32 36, float %8483, float 1.000000e+00)  ; FMin(a,b)
  %8488 = fcmp fast olt float %8484, 0x3FEFFF8020000000
  br i1 %8488, label %8489, label %8604, !dx.controlflow.hints !159

; <label>:8489                                    ; preds = %8456
  %8490 = extractvalue %dx.types.CBufRet.f32 %8372, 3
  %8491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8492 = extractvalue %dx.types.CBufRet.f32 %8491, 0
  %8493 = extractvalue %dx.types.CBufRet.f32 %8491, 1
  %8494 = extractvalue %dx.types.CBufRet.f32 %8491, 2
  %8495 = extractvalue %dx.types.CBufRet.f32 %8491, 3
  %8496 = fsub fast float %8492, %8484
  %8497 = fsub fast float %8493, %8485
  %8498 = fsub fast float %8494, %8486
  %8499 = fsub fast float %8495, %8487
  %8500 = fmul fast float %8496, %8490
  %8501 = fmul fast float %8497, %8490
  %8502 = fmul fast float %8498, %8490
  %8503 = fmul fast float %8499, %8490
  %8504 = fadd fast float %8500, %8484
  %8505 = fadd fast float %8501, %8485
  %8506 = fsub fast float -0.000000e+00, %8505
  %8507 = fadd fast float %8502, %8486
  %8508 = fadd fast float %8503, %8487
  %8509 = fmul fast float %8504, %8504
  %8510 = fsub fast float %8505, %8509
  %8511 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8510)  ; FMax(a,b)
  %8512 = fdiv fast float 1.000000e+00, %8511
  %8513 = fmul fast float %8505, %8504
  %8514 = fsub fast float %8507, %8513
  %8515 = fsub fast float %8464, %8504
  %8516 = fmul fast float %8464, %8464
  %8517 = fsub fast float %8516, %8505
  %8518 = fmul fast float %8515, %8512
  %8519 = fmul fast float %8518, %8514
  %8520 = fsub fast float %8517, %8519
  %8521 = fmul fast float %8505, %8505
  %8522 = fsub fast float %8508, %8521
  %8523 = fmul fast float %8514, %8514
  %8524 = fmul fast float %8523, %8512
  %8525 = fsub fast float %8522, %8524
  %8526 = fdiv fast float %8520, %8525
  %8527 = fmul fast float %8514, %8526
  %8528 = fsub fast float %8515, %8527
  %8529 = fmul fast float %8528, %8512
  %8530 = fmul fast float %8529, %8504
  %8531 = fsub fast float 1.000000e+00, %8530
  %8532 = fmul fast float %8505, %8526
  %8533 = fsub fast float %8531, %8532
  %8534 = fmul fast float %8529, %8529
  %8535 = fmul fast float %8526, 4.000000e+00
  %8536 = fmul fast float %8535, %8533
  %8537 = fsub fast float %8534, %8536
  %8538 = call float @dx.op.unary.f32(i32 24, float %8537)  ; Sqrt(value)
  %8539 = fcmp fast oge float %8529, 0.000000e+00
  %8540 = fsub fast float -0.000000e+00, %8538
  %8541 = select i1 %8539, float %8540, float %8538
  %8542 = fsub fast float %8541, %8529
  %8543 = fdiv fast float %8542, %8526
  %8544 = fdiv fast float %8533, %8542
  %8545 = fmul fast float %8543, 5.000000e-01
  %8546 = fmul fast float %8544, 2.000000e+00
  %8547 = select i1 %8539, float %8545, float %8546
  %8548 = select i1 %8539, float %8546, float %8545
  %8549 = call float @dx.op.binary.f32(i32 35, float %8547, float %8548)  ; FMax(a,b)
  %8550 = call float @dx.op.binary.f32(i32 36, float %8547, float %8548)  ; FMin(a,b)
  %8551 = fcmp fast ogt float %8464, %8550
  br i1 %8551, label %8552, label %8562

; <label>:8552                                    ; preds = %8489
  %8553 = fsub fast float %8464, %8550
  %8554 = fsub fast float %8549, %8550
  %8555 = fmul fast float %8553, %8554
  %8556 = fmul fast float %8549, %8464
  %8557 = fadd fast float %8549, %8464
  %8558 = fmul fast float %8557, %8504
  %8559 = fadd fast float %8556, %8505
  %8560 = fsub fast float %8559, %8558
  %8561 = fdiv fast float %8560, %8555
  br label %8562

; <label>:8562                                    ; preds = %8552, %8489
  %8563 = phi float [ %8561, %8552 ], [ 0.000000e+00, %8489 ]
  %8564 = fcmp fast ogt float %8464, %8549
  %8565 = fsub fast float %8464, %8549
  br i1 %8564, label %8566, label %8576

; <label>:8566                                    ; preds = %8562
  %8567 = fsub fast float %8549, %8550
  %8568 = fmul fast float %8567, %8565
  %8569 = fmul fast float %8550, %8464
  %8570 = fadd fast float %8550, %8464
  %8571 = fmul fast float %8570, %8504
  %8572 = fsub fast float %8506, %8569
  %8573 = fadd fast float %8572, %8571
  %8574 = fdiv fast float %8573, %8568
  %8575 = fadd fast float %8574, %8563
  br label %8576

; <label>:8576                                    ; preds = %8566, %8562
  %8577 = phi float [ %8575, %8566 ], [ %8563, %8562 ]
  %8578 = fsub fast float %8464, %8550
  %8579 = fmul fast float %8578, %8565
  %8580 = fmul fast float %8550, %8549
  %8581 = fadd fast float %8550, %8549
  %8582 = fmul fast float %8581, %8504
  %8583 = fadd fast float %8580, %8505
  %8584 = fsub fast float %8583, %8582
  %8585 = fdiv fast float %8584, %8579
  %8586 = call float @dx.op.unary.f32(i32 7, float %8577)  ; Saturate(value)
  %8587 = fcmp fast oeq float %7255, 0.000000e+00
  %8588 = extractvalue %dx.types.CBufRet.f32 %8372, 0
  %8589 = fcmp fast oeq float %8588, 0.000000e+00
  %8590 = or i1 %8587, %8589
  %8591 = fmul fast float %8588, 2.000000e+00
  %8592 = fadd fast float %8373, %8374
  %8593 = fdiv fast float %8592, %8591
  %8594 = call float @dx.op.unary.f32(i32 7, float %8593)  ; Saturate(value)
  %8595 = fmul fast float %8594, 2.000000e+00
  %8596 = fsub fast float 3.000000e+00, %8595
  %8597 = fmul fast float %8594, %8594
  %8598 = fmul fast float %8597, %8596
  %8599 = select i1 %8590, float 1.000000e+00, float %8598
  %8600 = fmul fast float %8585, %7255
  %8601 = fadd fast float %8586, %8600
  %8602 = call float @dx.op.unary.f32(i32 7, float %8601)  ; Saturate(value)
  %8603 = fmul fast float %8599, %8602
  br label %8604

; <label>:8604                                    ; preds = %8576, %8456
  %8605 = phi float [ %8603, %8576 ], [ 0.000000e+00, %8456 ]
  %8606 = fsub fast float 1.000000e+00, %8605
  %8607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %37, float %8326, float %8327, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8608 = extractvalue %dx.types.ResRet.f32 %8607, 0
  %8609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8610 = extractvalue %dx.types.CBufRet.i32 %8609, 2
  %8611 = icmp eq i32 %8610, 0
  br i1 %8611, label %8617, label %8612

; <label>:8612                                    ; preds = %8604
  %8613 = call float @dx.op.unary.f32(i32 7, float %8605)  ; Saturate(value)
  %8614 = fadd fast float %8608, -1.000000e+00
  %8615 = fmul fast float %8613, %8614
  %8616 = fadd fast float %8615, 1.000000e+00
  br label %8617

; <label>:8617                                    ; preds = %8612, %8604
  %8618 = phi float [ %8616, %8612 ], [ %8606, %8604 ]
  br i1 %8380, label %8619, label %8637

; <label>:8619                                    ; preds = %8617
  %8620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8621 = extractvalue %dx.types.CBufRet.f32 %8620, 1
  %8622 = fsub fast float %8457, %8621
  %8623 = call float @dx.op.unary.f32(i32 7, float %8622)  ; Saturate(value)
  %8624 = fsub fast float %8457, %8379
  %8625 = call float @dx.op.unary.f32(i32 7, float %8624)  ; Saturate(value)
  %8626 = fsub fast float %8623, %8625
  %8627 = fsub fast float %8459, %8625
  %8628 = fdiv fast float %8627, %8626
  %8629 = call float @dx.op.unary.f32(i32 7, float %8628)  ; Saturate(value)
  %8630 = fmul fast float %8629, 2.000000e+00
  %8631 = fsub fast float 3.000000e+00, %8630
  %8632 = fsub fast float %8608, %8618
  %8633 = fmul fast float %8629, %8629
  %8634 = fmul fast float %8633, %8632
  %8635 = fmul fast float %8634, %8631
  %8636 = fadd fast float %8635, %8618
  br label %8637

; <label>:8637                                    ; preds = %8619, %8617
  %8638 = phi float [ %8636, %8619 ], [ %8618, %8617 ]
  %8639 = call float @dx.op.binary.f32(i32 35, float %8608, float %8638)  ; FMax(a,b)
  %8640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.i32 %8640, 2
  %8642 = and i32 %8641, 1
  %8643 = icmp eq i32 %8642, 0
  %8644 = fcmp fast une float %8639, 1.000000e+00
  %8645 = and i1 %8644, %8643
  br i1 %8645, label %8646, label %8665

; <label>:8646                                    ; preds = %8637
  %8647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %37, float %8326, float %8327, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8648 = extractvalue %dx.types.ResRet.f32 %8647, 0
  %8649 = extractvalue %dx.types.ResRet.f32 %8647, 1
  %8650 = extractvalue %dx.types.ResRet.f32 %8647, 2
  %8651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8652 = extractvalue %dx.types.CBufRet.f32 %8651, 1
  %8653 = fmul fast float %8652, %8648
  %8654 = fmul fast float %8652, %8649
  %8655 = fmul fast float %8652, %8650
  %8656 = fcmp fast ogt float %8608, 0x3FEFFF2E40000000
  %8657 = fsub fast float 1.000000e+00, %8639
  %8658 = fsub fast float 1.000000e+00, %8608
  %8659 = fdiv fast float %8657, %8658
  %8660 = call float @dx.op.unary.f32(i32 7, float %8659)  ; Saturate(value)
  %8661 = select i1 %8656, float 0.000000e+00, float %8660
  %8662 = fmul fast float %8653, %8661
  %8663 = fmul fast float %8654, %8661
  %8664 = fmul fast float %8655, %8661
  br label %8665

; <label>:8665                                    ; preds = %8646, %8637
  %8666 = phi float [ 0.000000e+00, %8637 ], [ %8662, %8646 ]
  %8667 = phi float [ 0.000000e+00, %8637 ], [ %8663, %8646 ]
  %8668 = phi float [ 0.000000e+00, %8637 ], [ %8664, %8646 ]
  %8669 = fmul fast float %8666, %7243
  %8670 = fmul fast float %8667, %7243
  %8671 = fmul fast float %8668, %7243
  %8672 = fmul fast float %8639, %8301
  %8673 = call float @dx.op.dot3.f32(i32 55, float %8639, float %8639, float %8639, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8674 = call float @dx.op.dot3.f32(i32 55, float %8669, float %8670, float %8671, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8675 = select i1 %252, float %8673, float %8639
  %8676 = select i1 %252, float 1.000000e+00, float %8639
  %8677 = select i1 %252, float %8674, float %8669
  %8678 = select i1 %252, float 0.000000e+00, float %8670
  %8679 = select i1 %252, float 0.000000e+00, float %8671
  %8680 = fmul fast float %8675, %8313
  %8681 = fmul fast float %8675, %8314
  %8682 = fmul fast float %8676, %8315
  %8683 = fadd fast float %8680, %8677
  %8684 = fadd fast float %8681, %8678
  %8685 = fadd fast float %8679, %8682
  %8686 = fmul fast float %8675, %8316
  %8687 = fmul fast float %8675, %8317
  %8688 = fmul fast float %8676, %8318
  br label %8689

; <label>:8689                                    ; preds = %8665, %8322, %8291, %7523
  %8690 = phi float [ %7528, %7523 ], [ %8313, %8291 ], [ %8683, %8665 ], [ %8313, %8322 ]
  %8691 = phi float [ %7529, %7523 ], [ %8314, %8291 ], [ %8684, %8665 ], [ %8314, %8322 ]
  %8692 = phi float [ %7530, %7523 ], [ %8315, %8291 ], [ %8685, %8665 ], [ %8315, %8322 ]
  %8693 = phi float [ %7531, %7523 ], [ %8316, %8291 ], [ %8686, %8665 ], [ %8316, %8322 ]
  %8694 = phi float [ %7532, %7523 ], [ %8317, %8291 ], [ %8687, %8665 ], [ %8317, %8322 ]
  %8695 = phi float [ %7533, %7523 ], [ %8318, %8291 ], [ %8688, %8665 ], [ %8318, %8322 ]
  %8696 = phi float [ %7534, %7523 ], [ %8301, %8291 ], [ %8672, %8665 ], [ %8301, %8322 ]
  %8697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8698 = extractvalue %dx.types.CBufRet.f32 %8697, 2
  %8699 = extractvalue %dx.types.CBufRet.f32 %8697, 3
  %8700 = fmul fast float %8698, %99
  %8701 = fmul fast float %8699, %100
  %8702 = call float @dx.op.unary.f32(i32 7, float %8700)  ; Saturate(value)
  %8703 = call float @dx.op.unary.f32(i32 7, float %8701)  ; Saturate(value)
  %8704 = select i1 %7265, i32 2, i32 0
  %8705 = or i32 %8704, 1
  %8706 = uitofp i32 %8705 to float
  %8707 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %8702, float %8703, float %8706, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8708 = extractvalue %dx.types.ResRet.f32 %8707, 0
  %8709 = extractvalue %dx.types.ResRet.f32 %8707, 1
  %8710 = extractvalue %dx.types.ResRet.f32 %8707, 2
  %8711 = extractvalue %dx.types.ResRet.f32 %8707, 3
  %8712 = add nuw nsw i32 %8704, 2
  %8713 = uitofp i32 %8712 to float
  %8714 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %8702, float %8703, float %8713, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8715 = extractvalue %dx.types.ResRet.f32 %8714, 0
  %8716 = extractvalue %dx.types.ResRet.f32 %8714, 1
  %8717 = extractvalue %dx.types.ResRet.f32 %8714, 2
  %8718 = extractvalue %dx.types.ResRet.f32 %8714, 3
  %8719 = call float @dx.op.binary.f32(i32 35, float %8709, float %8710)  ; FMax(a,b)
  %8720 = call float @dx.op.binary.f32(i32 35, float %8708, float %8719)  ; FMax(a,b)
  %8721 = call float @dx.op.binary.f32(i32 35, float %8720, float %8711)  ; FMax(a,b)
  %8722 = call float @dx.op.binary.f32(i32 36, float %8716, float %8717)  ; FMin(a,b)
  %8723 = call float @dx.op.binary.f32(i32 36, float %8715, float %8722)  ; FMin(a,b)
  %8724 = call float @dx.op.binary.f32(i32 36, float %8723, float %8718)  ; FMin(a,b)
  %8725 = fmul fast float %8721, 2.550000e+02
  %8726 = fadd fast float %8725, 0x3F70101020000000
  %8727 = fptoui float %8726 to i32
  %8728 = fmul fast float %8724, 2.550000e+02
  %8729 = fadd fast float %8728, 0x3F70101020000000
  %8730 = fptoui float %8729 to i32
  %8731 = icmp ult i32 %8727, %8730
  br i1 %8731, label %8732, label %8901

; <label>:8732                                    ; preds = %8689
  %8733 = fcmp fast ogt float %89, 9.843750e-01
  %8734 = fadd fast float %7527, -4.000000e+00
  %8735 = select i1 %8733, float -4.000000e+00, float %8734
  %8736 = call float @dx.op.binary.f32(i32 35, float %8735, float 0.000000e+00)  ; FMax(a,b)
  %8737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8738 = extractvalue %dx.types.CBufRet.f32 %8737, 0
  %8739 = fadd fast float %8738, %8736
  %8740 = extractvalue %dx.types.CBufRet.f32 %8737, 2
  %8741 = fmul fast float %8739, %8740
  %8742 = call float @dx.op.unary.f32(i32 23, float %8741)  ; Log(value)
  %8743 = extractvalue %dx.types.CBufRet.f32 %8737, 3
  %8744 = fmul fast float %8743, %8742
  %8745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8746 = extractvalue %dx.types.CBufRet.f32 %8745, 2
  %8747 = fmul fast float %8744, %8746
  %8748 = call float @dx.op.unary.f32(i32 7, float %8747)  ; Saturate(value)
  %8749 = uitofp i32 %8727 to float
  %8750 = uitofp i32 %8730 to float
  %8751 = fadd fast float %8749, 5.000000e-01
  %8752 = fadd fast float %8750, 5.000000e-01
  %8753 = fmul fast float %8746, %8751
  %8754 = fmul fast float %8746, %8752
  %8755 = fadd fast float %8753, 0x3F0FFB4800000000
  %8756 = fadd fast float %8754, 0xBF0FFB4800000000
  %8757 = call float @dx.op.binary.f32(i32 35, float %8748, float %8755)  ; FMax(a,b)
  %8758 = call float @dx.op.binary.f32(i32 36, float %8757, float %8756)  ; FMin(a,b)
  %8759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8760 = extractvalue %dx.types.CBufRet.f32 %8759, 1
  %8761 = extractvalue %dx.types.CBufRet.f32 %8759, 2
  %8762 = extractvalue %dx.types.CBufRet.f32 %8759, 0
  %8763 = select i1 %7265, float %8762, float 0.000000e+00
  %8764 = fmul fast float %8760, %8758
  %8765 = fadd fast float %8763, %8764
  %8766 = fadd fast float %8763, %8761
  %8767 = fsub fast float %8760, %8761
  %8768 = fadd fast float %8767, %8763
  %8769 = call float @dx.op.binary.f32(i32 35, float %8765, float %8766)  ; FMax(a,b)
  %8770 = call float @dx.op.binary.f32(i32 36, float %8769, float %8768)  ; FMin(a,b)
  %8771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %8702, float %8703, float %8770, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8772 = extractvalue %dx.types.ResRet.f32 %8771, 0
  %8773 = extractvalue %dx.types.ResRet.f32 %8771, 1
  %8774 = extractvalue %dx.types.ResRet.f32 %8771, 2
  %8775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8776 = extractvalue %dx.types.CBufRet.i32 %8775, 0
  %8777 = extractvalue %dx.types.CBufRet.i32 %8775, 1
  %8778 = uitofp i32 %8776 to float
  %8779 = uitofp i32 %8777 to float
  %8780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8781 = extractvalue %dx.types.CBufRet.f32 %8780, 0
  %8782 = extractvalue %dx.types.CBufRet.f32 %8780, 1
  %8783 = fmul fast float %8778, %8702
  %8784 = fmul fast float %8779, %8703
  %8785 = fadd fast float %8783, -5.000000e-01
  %8786 = fadd fast float %8784, -5.000000e-01
  %8787 = call float @dx.op.unary.f32(i32 22, float %8785)  ; Frc(value)
  %8788 = call float @dx.op.unary.f32(i32 22, float %8786)  ; Frc(value)
  %8789 = fmul fast float %8787, %8787
  %8790 = fmul fast float %8789, %8787
  %8791 = fsub fast float 3.000000e+00, %8787
  %8792 = fmul fast float %8789, %8791
  %8793 = fmul fast float %8787, 3.000000e+00
  %8794 = fmul fast float %8790, 3.000000e+00
  %8795 = fmul fast float %8789, 6.000000e+00
  %8796 = fsub fast float %8794, %8795
  %8797 = fadd fast float %8796, 4.000000e+00
  %8798 = fmul fast float %8797, 0x3FC5555560000000
  %8799 = fmul fast float %8790, -3.000000e+00
  %8800 = fadd fast float %8789, %8787
  %8801 = fmul fast float %8800, 3.000000e+00
  %8802 = fadd fast float %8799, 1.000000e+00
  %8803 = fadd fast float %8802, %8801
  %8804 = fmul fast float %8790, 0x3FC5555560000000
  %8805 = fmul fast float %8788, %8788
  %8806 = fmul fast float %8805, %8788
  %8807 = fsub fast float 3.000000e+00, %8788
  %8808 = fmul fast float %8805, %8807
  %8809 = fmul fast float %8788, 3.000000e+00
  %8810 = fmul fast float %8806, 3.000000e+00
  %8811 = fmul fast float %8805, 6.000000e+00
  %8812 = fsub fast float %8810, %8811
  %8813 = fadd fast float %8812, 4.000000e+00
  %8814 = fmul fast float %8813, 0x3FC5555560000000
  %8815 = fmul fast float %8806, -3.000000e+00
  %8816 = fadd fast float %8805, %8788
  %8817 = fmul fast float %8816, 3.000000e+00
  %8818 = fadd fast float %8815, 1.000000e+00
  %8819 = fadd fast float %8818, %8817
  %8820 = fmul fast float %8806, 0x3FC5555560000000
  %8821 = fadd fast float %8787, 1.000000e+00
  %8822 = fsub fast float 1.000000e+00, %8793
  %8823 = fadd fast float %8822, %8792
  %8824 = fadd fast float %8823, %8797
  %8825 = fmul fast float %8824, 0x3FC5555560000000
  %8826 = fdiv fast float %8798, %8825
  %8827 = fsub fast float %8821, %8826
  %8828 = fsub fast float 1.000000e+00, %8787
  %8829 = fadd fast float %8803, %8790
  %8830 = fmul fast float %8829, 0x3FC5555560000000
  %8831 = fdiv fast float %8804, %8830
  %8832 = fadd fast float %8828, %8831
  %8833 = fadd fast float %8788, 1.000000e+00
  %8834 = fsub fast float 1.000000e+00, %8809
  %8835 = fadd fast float %8834, %8808
  %8836 = fadd fast float %8835, %8813
  %8837 = fmul fast float %8836, 0x3FC5555560000000
  %8838 = fdiv fast float %8814, %8837
  %8839 = fsub fast float %8833, %8838
  %8840 = fsub fast float 1.000000e+00, %8788
  %8841 = fadd fast float %8819, %8806
  %8842 = fmul fast float %8841, 0x3FC5555560000000
  %8843 = fdiv fast float %8820, %8842
  %8844 = fadd fast float %8843, %8840
  %8845 = fmul fast float %8827, %8781
  %8846 = fsub fast float %8702, %8845
  %8847 = fmul fast float %8832, %8781
  %8848 = fadd fast float %8847, %8702
  %8849 = fmul fast float %8844, %8782
  %8850 = fadd fast float %8849, %8703
  %8851 = fmul fast float %8839, %8782
  %8852 = fsub fast float %8703, %8851
  %8853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8846, float %8852, float %8770, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8854 = extractvalue %dx.types.ResRet.f32 %8853, 0
  %8855 = extractvalue %dx.types.ResRet.f32 %8853, 1
  %8856 = extractvalue %dx.types.ResRet.f32 %8853, 2
  %8857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8848, float %8852, float %8770, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8858 = extractvalue %dx.types.ResRet.f32 %8857, 0
  %8859 = extractvalue %dx.types.ResRet.f32 %8857, 1
  %8860 = extractvalue %dx.types.ResRet.f32 %8857, 2
  %8861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8846, float %8850, float %8770, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8862 = extractvalue %dx.types.ResRet.f32 %8861, 0
  %8863 = extractvalue %dx.types.ResRet.f32 %8861, 1
  %8864 = extractvalue %dx.types.ResRet.f32 %8861, 2
  %8865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8848, float %8850, float %8770, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8866 = extractvalue %dx.types.ResRet.f32 %8865, 0
  %8867 = extractvalue %dx.types.ResRet.f32 %8865, 1
  %8868 = extractvalue %dx.types.ResRet.f32 %8865, 2
  %8869 = fsub fast float %8862, %8854
  %8870 = fsub fast float %8863, %8855
  %8871 = fsub fast float %8864, %8856
  %8872 = fmul fast float %8869, %8842
  %8873 = fmul fast float %8870, %8842
  %8874 = fmul fast float %8871, %8842
  %8875 = fadd fast float %8872, %8854
  %8876 = fadd fast float %8873, %8855
  %8877 = fadd fast float %8874, %8856
  %8878 = fsub fast float %8866, %8858
  %8879 = fsub fast float %8867, %8859
  %8880 = fsub fast float %8868, %8860
  %8881 = fmul fast float %8878, %8842
  %8882 = fmul fast float %8879, %8842
  %8883 = fmul fast float %8880, %8842
  %8884 = fsub fast float %8858, %8875
  %8885 = fadd fast float %8884, %8881
  %8886 = fsub fast float %8859, %8876
  %8887 = fadd fast float %8886, %8882
  %8888 = fsub fast float %8860, %8877
  %8889 = fadd fast float %8888, %8883
  %8890 = fmul fast float %8885, %8830
  %8891 = fmul fast float %8887, %8830
  %8892 = fmul fast float %8889, %8830
  %8893 = fadd fast float %8890, %8875
  %8894 = fadd fast float %8891, %8876
  %8895 = fadd fast float %8892, %8877
  %8896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8897 = extractvalue %dx.types.CBufRet.f32 %8896, 1
  %8898 = fmul fast float %8893, %8897
  %8899 = fmul fast float %8894, %8897
  %8900 = fmul fast float %8895, %8897
  br label %8901

; <label>:8901                                    ; preds = %8732, %8689
  %8902 = phi float [ %8772, %8732 ], [ 1.000000e+00, %8689 ]
  %8903 = phi float [ %8773, %8732 ], [ 1.000000e+00, %8689 ]
  %8904 = phi float [ %8774, %8732 ], [ 1.000000e+00, %8689 ]
  %8905 = phi float [ %8898, %8732 ], [ 0.000000e+00, %8689 ]
  %8906 = phi float [ %8899, %8732 ], [ 0.000000e+00, %8689 ]
  %8907 = phi float [ %8900, %8732 ], [ 0.000000e+00, %8689 ]
  %8908 = fmul fast float %8905, %7243
  %8909 = fmul fast float %8906, %7243
  %8910 = fmul fast float %8907, %7243
  %8911 = fmul fast float %8902, %8696
  %8912 = call float @dx.op.dot3.f32(i32 55, float %8902, float %8903, float %8904, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8913 = call float @dx.op.dot3.f32(i32 55, float %8908, float %8909, float %8910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8914 = select i1 %252, float %8912, float %8902
  %8915 = select i1 %252, float %8912, float %8903
  %8916 = select i1 %252, float 1.000000e+00, float %8904
  %8917 = select i1 %252, float %8913, float %8908
  %8918 = select i1 %252, float 0.000000e+00, float %8909
  %8919 = select i1 %252, float 0.000000e+00, float %8910
  %8920 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8921 = extractvalue %dx.types.CBufRet.i32 %8920, 3
  %8922 = and i32 %8921, 3
  %8923 = icmp ne i32 %8922, 0
  %8924 = and i32 %8921, 4
  %8925 = icmp ne i32 %8924, 0
  %8926 = and i1 %8923, %8925
  %8927 = and i1 %252, %8926
  br i1 %8927, label %8928, label %8934

; <label>:8928                                    ; preds = %8901
  %8929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8930 = extractvalue %dx.types.CBufRet.f32 %8929, 1
  %8931 = fadd fast float %8911, -1.000000e+00
  %8932 = fmul fast float %8930, %8931
  %8933 = fadd fast float %8932, 1.000000e+00
  br label %8934

; <label>:8934                                    ; preds = %8928, %8901
  %8935 = phi float [ %8933, %8928 ], [ %8911, %8901 ]
  %8936 = fadd fast float %8693, %8690
  %8937 = fmul fast float %8914, %8936
  %8938 = fadd fast float %8937, %8917
  %8939 = fadd fast float %8694, %8691
  %8940 = fmul fast float %8915, %8939
  %8941 = fadd fast float %8940, %8918
  %8942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8943 = extractvalue %dx.types.CBufRet.f32 %8942, 0
  br i1 %252, label %8944, label %8967

; <label>:8944                                    ; preds = %8934
  %8945 = fadd fast float %8938, %8941
  %8946 = fmul fast float %8943, %8945
  %8947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8948 = extractvalue %dx.types.CBufRet.f32 %8947, 3
  %8949 = extractvalue %dx.types.CBufRet.f32 %7247, 1
  %8950 = fsub fast float %7252, %7246
  %8951 = fadd fast float %8950, %7253
  %8952 = fsub fast float %8951, %8949
  %8953 = extractvalue %dx.types.CBufRet.f32 %7247, 2
  %8954 = fmul fast float %8952, %8953
  %8955 = call float @dx.op.unary.f32(i32 7, float %8954)  ; Saturate(value)
  %8956 = fsub fast float %8955, %8948
  %8957 = fmul fast float %8956, %8935
  %8958 = fadd fast float %8957, %8948
  %8959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8960 = extractvalue %dx.types.CBufRet.f32 %8959, 0
  %8961 = fsub fast float %8958, %8960
  %8962 = fmul fast float %8961, 1.000000e+01
  %8963 = call float @dx.op.unary.f32(i32 7, float %8962)  ; Saturate(value)
  %8964 = fmul fast float %8963, %7242
  %8965 = fadd fast float %8964, %7243
  %8966 = fmul fast float %8965, %8958
  br label %8991

; <label>:8967                                    ; preds = %8934
  %8968 = fadd fast float %8695, %8692
  %8969 = fmul fast float %8916, %8968
  %8970 = fadd fast float %8969, %8919
  %8971 = fmul fast float %8943, %8938
  %8972 = fmul fast float %8943, %8941
  %8973 = fmul fast float %8943, %8970
  %8974 = call float @dx.op.binary.f32(i32 35, float %8972, float %8973)  ; FMax(a,b)
  %8975 = call float @dx.op.binary.f32(i32 35, float %8971, float %8974)  ; FMax(a,b)
  %8976 = call float @dx.op.binary.f32(i32 35, float %8975, float %7243)  ; FMax(a,b)
  %8977 = fcmp fast ugt float %8976, 0x3F10000000000000
  br i1 %8977, label %8979, label %8978

; <label>:8978                                    ; preds = %8967
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8979

; <label>:8979                                    ; preds = %8978, %8967
  %8980 = add i32 %43, 356
  %8981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %8980, i32 undef)  ; BufferLoad(srv,index,wot)
  %8982 = extractvalue %dx.types.ResRet.i32 %8981, 0
  %8983 = and i32 %8982, 32
  %8984 = icmp eq i32 %8983, 0
  br i1 %8984, label %8991, label %8985

; <label>:8985                                    ; preds = %8979
  %8986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8987 = extractvalue %dx.types.CBufRet.f32 %8986, 0
  %8988 = fmul fast float %8987, 0x3FE99999A0000000
  %8989 = fadd fast float %8987, %8971
  %8990 = fadd fast float %8988, %8973
  br label %8991

; <label>:8991                                    ; preds = %8985, %8979, %8944
  %8992 = phi float [ %8946, %8944 ], [ %8989, %8985 ], [ %8971, %8979 ]
  %8993 = phi float [ %8966, %8944 ], [ %8972, %8985 ], [ %8972, %8979 ]
  %8994 = phi float [ %8965, %8944 ], [ %8990, %8985 ], [ %8973, %8979 ]
  %8995 = phi float [ %8965, %8944 ], [ %7243, %8985 ], [ %7243, %8979 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8996 = call float @dx.op.binary.f32(i32 36, float %8992, float 3.225500e+04)  ; FMin(a,b)
  %8997 = call float @dx.op.binary.f32(i32 36, float %8993, float 3.225500e+04)  ; FMin(a,b)
  %8998 = call float @dx.op.binary.f32(i32 36, float %8994, float 3.225500e+04)  ; FMin(a,b)
  %8999 = call float @dx.op.binary.f32(i32 36, float %8995, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8996)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8997)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8998)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8999)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!55}
!dx.entryPoints = !{!56}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !44, !47}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
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
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !24}
!24 = !{i32 0, i32 5}
!25 = !{i32 17, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !31}
!31 = !{i32 0, i32 14}
!32 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!33 = !{i32 24, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!34 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!38 = !{i32 29, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!39 = !{i32 30, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!40 = !{i32 31, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!41 = !{i32 32, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !31}
!42 = !{i32 33, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!44 = !{!45, !46}
!45 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!46 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!47 = !{!48, !49, !50, !51, !52, !53, !54}
!48 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!49 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!50 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!51 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!52 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!53 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!54 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!55 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!56 = !{void ()* @ps_main, !"ps_main", !57, !4, !83}
!57 = !{!58, !81, null}
!58 = !{!59, !62, !63, !65, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !78, !79, !80}
!59 = !{i32 0, !"SV_Position", i8 9, i8 3, !60, i8 4, i32 1, i8 4, i32 0, i8 0, !61}
!60 = !{i32 0}
!61 = !{i32 3, i32 15}
!62 = !{i32 1, !"COLOR", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 1, i8 0, !61}
!63 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 2, i8 0, !64}
!64 = !{i32 3, i32 3}
!65 = !{i32 3, !"NORMAL", i8 9, i8 0, !60, i8 2, i32 1, i8 3, i32 3, i8 0, !66}
!66 = !{i32 3, i32 7}
!67 = !{i32 4, !"TANGENT", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 4, i8 0, !61}
!68 = !{i32 5, !"SH_RED", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 5, i8 0, !61}
!69 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 6, i8 0, !61}
!70 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 7, i8 0, !61}
!71 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !60, i8 2, i32 1, i8 3, i32 8, i8 0, !66}
!72 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 9, i8 0, !61}
!73 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !60, i8 2, i32 1, i8 2, i32 10, i8 0, !64}
!74 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 11, i8 0, !61}
!75 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 12, i8 0, !66}
!76 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !60, i8 1, i32 1, i8 1, i32 13, i8 0, !77}
!77 = !{i32 3, i32 1}
!78 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !60, i8 1, i32 1, i8 2, i32 13, i8 1, !77}
!79 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !60, i8 1, i32 1, i8 4, i32 14, i8 0, !77}
!80 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !60, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!81 = !{!82}
!82 = !{i32 0, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!83 = !{i32 0, i64 16}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = !{!90, !90, i64 0}
!90 = !{!"int", !91, i64 0}
!91 = !{!"omnipotent char", !92, i64 0}
!92 = !{!"Simple C/C++ TBAA"}
!93 = !{!94, !96, !98, !100}
!94 = distinct !{!94, !95, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!95 = distinct !{!95, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!96 = distinct !{!96, !97, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!97 = distinct !{!97, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!98 = distinct !{!98, !99, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!99 = distinct !{!99, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!100 = distinct !{!100, !101, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!101 = distinct !{!101, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = !{!112, !112, i64 0}
!112 = !{!"float", !91, i64 0}
!113 = !{!114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!114 = distinct !{!114, !115, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!115 = distinct !{!115, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!116 = distinct !{!116, !117, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!117 = distinct !{!117, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!118 = distinct !{!118, !117, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!119 = distinct !{!119, !120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!120 = distinct !{!120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!121 = distinct !{!121, !120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!122 = distinct !{!122, !120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!123 = distinct !{!123, !124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!124 = distinct !{!124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!125 = distinct !{!125, !124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!126 = distinct !{!126, !124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!127 = distinct !{!127, !128, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!128 = distinct !{!128, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"\01?sort@@YAXAIAM00@Z: %c"}
!131 = distinct !{!131, !"\01?sort@@YAXAIAM00@Z"}
!132 = !{!133, !134, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!133 = distinct !{!133, !131, !"\01?sort@@YAXAIAM00@Z: %a"}
!134 = distinct !{!134, !131, !"\01?sort@@YAXAIAM00@Z: %b"}
!135 = !{!134}
!136 = !{!133, !130, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!137 = !{!133}
!138 = !{!134, !130, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!139 = !{!140}
!140 = distinct !{!140, !141, !"\01?sort@@YAXAIAM00@Z: %c"}
!141 = distinct !{!141, !"\01?sort@@YAXAIAM00@Z"}
!142 = !{!143, !144, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!143 = distinct !{!143, !141, !"\01?sort@@YAXAIAM00@Z: %a"}
!144 = distinct !{!144, !141, !"\01?sort@@YAXAIAM00@Z: %b"}
!145 = !{!144}
!146 = !{!143, !140, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!147 = !{!143}
!148 = !{!144, !140, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 2}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}

