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
; shader hash: 215f9dd2e393c6c51102cf7142609310
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
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
  %191 = bitcast i32 %190 to float
  %192 = add i32 %43, 360
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = extractvalue %dx.types.ResRet.i32 %193, 1
  %196 = extractvalue %dx.types.ResRet.i32 %193, 2
  %197 = extractvalue %dx.types.ResRet.i32 %193, 3
  %198 = bitcast i32 %194 to float
  %199 = bitcast i32 %195 to float
  %200 = bitcast i32 %196 to float
  %201 = bitcast i32 %197 to float
  %202 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %203 = call float @dx.op.unary.f32(i32 25, float %202)  ; Rsqrt(value)
  %204 = fmul fast float %203, %106
  %205 = fmul fast float %203, %107
  %206 = fmul fast float %203, %108
  %207 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %208 = call float @dx.op.unary.f32(i32 25, float %207)  ; Rsqrt(value)
  %209 = fmul fast float %208, %178
  %210 = fmul fast float %208, %179
  %211 = fmul fast float %208, %180
  %212 = call float @dx.op.dot3.f32(i32 55, float %209, float %210, float %211, float %204, float %205, float %206)  ; Dot3(ax,ay,az,bx,by,bz)
  %213 = fmul fast float %212, %212
  %214 = fmul fast float %213, %200
  %215 = fadd fast float %214, %201
  %216 = call float @dx.op.unary.f32(i32 7, float %215)  ; Saturate(value)
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %219 = fmul fast float %218, %207
  %220 = fsub fast float %198, %219
  %221 = fmul fast float %220, %199
  %222 = call float @dx.op.unary.f32(i32 7, float %221)  ; Saturate(value)
  %223 = fmul fast float %222, %216
  %224 = fmul fast float %99, 5.000000e-01
  %225 = fmul fast float %100, 5.000000e-01
  %226 = fptosi float %224 to i32
  %227 = fptosi float %225 to i32
  %228 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %226, i32 %227, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = lshr i32 %229, 18
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F4C00EBA0000000
  %233 = call float @dx.op.unary.f32(i32 21, float %232)  ; Exp(value)
  %234 = fadd fast float %233, -1.000000e+00
  %235 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %19, i32 0)  ; GetDimensions(handle,mipLevel)
  %236 = extractvalue %dx.types.Dimensions %235, 0
  %237 = sitofp i32 %236 to float
  %238 = extractvalue %dx.types.Dimensions %235, 1
  %239 = sitofp i32 %238 to float
  %240 = fcmp fast oge float %224, %237
  %241 = fcmp fast oge float %225, %239
  %242 = or i1 %240, %241
  %243 = select i1 %242, float 0x4197782600000000, float %234
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %246 = extractvalue %dx.types.CBufRet.f32 %244, 3
  %247 = fmul fast float %245, %99
  %248 = fmul fast float %246, %100
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 114688
  %252 = icmp ne i32 %251, 0
  %253 = select i1 %252, float %247, float 0.000000e+00
  %254 = select i1 %252, float %248, float 0.000000e+00
  %255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %253, float %254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = fmul fast float %256, 2.550000e+02
  %258 = fptoui float %257 to i32
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.i32 %260, 3
  %262 = and i32 %261, 3
  %263 = icmp ne i32 %262, 0
  %264 = and i32 %261, 4
  %265 = icmp ne i32 %264, 0
  %266 = and i1 %263, %265
  br i1 %266, label %267, label %278

; <label>:267                                     ; preds = %0
  %268 = extractvalue %dx.types.CBufRet.f32 %259, 3
  %269 = fmul fast float %268, %100
  %270 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %271 = fmul fast float %270, %99
  %272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %37, float %271, float %269, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = fsub fast float 1.000000e+00, %273
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %277 = fcmp fast olt float %274, %276
  br label %281

; <label>:278                                     ; preds = %0
  %279 = icmp eq i32 %264, 0
  %280 = and i1 %263, %279
  br label %281

; <label>:281                                     ; preds = %278, %267
  %282 = phi i1 [ %277, %267 ], [ %280, %278 ]
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %285 = fmul fast float %284, 0x3FE3C6EF40000000
  %286 = frem fast float %99, 2.560000e+02
  %287 = frem fast float %100, 2.560000e+02
  %288 = fptoui float %286 to i32
  %289 = fptoui float %287 to i32
  %290 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %288, i32 %289, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = fadd fast float %291, %285
  %293 = call float @dx.op.unary.f32(i32 22, float %292)  ; Frc(value)
  %294 = add i32 %43, 156
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %306 = add i32 %43, 216
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %320 = add i32 %43, 36
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = add i32 %43, 288
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %329, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = fmul fast float %331, 0x3F50624DE0000000
  %335 = fmul fast float %333, 0x3F50624DE0000000
  %336 = add i32 %43, 172
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %348 = add i32 %43, 232
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %362 = add i32 %43, 52
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 65535
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %364, 16
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = add i32 %43, 304
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %371, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = fmul fast float %373, 0x3F50624DE0000000
  %377 = fmul fast float %375, 0x3F50624DE0000000
  %378 = add i32 %43, 188
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %390 = add i32 %43, 248
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %404 = add i32 %43, 68
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 65535
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %406, 16
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = add i32 %43, 320
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 65535
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %413, 16
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = fmul fast float %415, 0x3F50624DE0000000
  %419 = fmul fast float %417, 0x3F50624DE0000000
  %420 = add i32 %43, 204
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %432 = add i32 %43, 264
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %446 = add i32 %43, 84
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 65535
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = lshr i32 %448, 16
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = add i32 %43, 336
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 65535
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = lshr i32 %455, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = fmul fast float %457, 0x3F50624DE0000000
  %461 = fmul fast float %459, 0x3F50624DE0000000
  %462 = add i32 %43, 348
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 32
  %466 = icmp eq i32 %465, 0
  %467 = and i32 %464, 64
  %468 = icmp eq i32 %467, 0
  %469 = and i32 %464, 128
  %470 = icmp eq i32 %469, 0
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 2
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %490, label %475

; <label>:475                                     ; preds = %281
  %476 = add i32 %43, 536
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = add i32 %478, 0
  %480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %480, %dx.types.Handle %96, float %81, float %82, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = fmul fast float %485, %83
  %487 = fmul fast float %482, %84
  %488 = fmul fast float %483, %85
  %489 = fmul fast float %484, %86
  br label %490

; <label>:490                                     ; preds = %475, %281
  %491 = phi float [ %86, %281 ], [ %489, %475 ]
  %492 = phi float [ %85, %281 ], [ %488, %475 ]
  %493 = phi float [ %84, %281 ], [ %487, %475 ]
  %494 = phi float [ %83, %281 ], [ %486, %475 ]
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = and i32 %496, 2
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %518, label %499

; <label>:499                                     ; preds = %490
  %500 = add i32 %43, 44
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = and i32 %502, 1
  %504 = icmp ne i32 %503, 0
  %505 = select i1 %504, float %493, float 1.000000e+00
  %506 = add i32 %43, 60
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = and i32 %508, 1
  %510 = icmp ne i32 %509, 0
  %511 = select i1 %510, float %492, float 1.000000e+00
  %512 = add i32 %43, 76
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %525 = add i32 %43, 24
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = add i32 %43, 28
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = or i32 %530, %527
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %1120, label %533

; <label>:533                                     ; preds = %518
  %534 = and i32 %527, 262144
  %535 = icmp ne i32 %534, 0
  %536 = select i1 %535, float %49, float 1.000000e+00
  %537 = select i1 %535, float %50, float 0.000000e+00
  %538 = select i1 %535, float %51, float 0.000000e+00
  %539 = select i1 %535, float %52, float 1.000000e+00
  %540 = select i1 %535, float %53, float %81
  %541 = select i1 %535, float %54, float %82
  %542 = add i32 %43, 284
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = lshr i32 %544, 16
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = fmul fast float %546, 0x3F50624DE0000000
  %548 = add i32 %43, 88
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = lshr i32 %550, 16
  %552 = and i32 %551, 255
  %553 = lshr i32 %550, 24
  %554 = add i32 %43, 292
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = and i32 %556, 65535
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = lshr i32 %556, 16
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = add i32 %43, 32
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
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
  %607 = add i32 %43, 228
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %637 = add i32 %43, 488
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = add i32 %639, 0
  %641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %642 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %641, %dx.types.Handle %96, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = add i32 %43, 100
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 128
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %704, label %688

; <label>:688                                     ; preds = %682
  %689 = add i32 %43, 472
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = add i32 %691, 0
  %693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %692, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %694 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %693, %dx.types.Handle %96, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %695 = extractvalue %dx.types.ResRet.f32 %694, 0
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 16
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %908, label %710

; <label>:710                                     ; preds = %704
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = add i32 %43, 424
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = add i32 %715, 0
  %717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %718 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %717, %dx.types.Handle %95, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 512
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %743, label %735

; <label>:735                                     ; preds = %710
  %736 = add i32 %43, 504
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = add i32 %738, 0
  %740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %739, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %741 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %740, %dx.types.Handle %96, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  br label %743

; <label>:743                                     ; preds = %735, %710
  %744 = phi float [ %742, %735 ], [ 1.000000e+00, %710 ]
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 33554432
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %855, label %749

; <label>:749                                     ; preds = %743
  %750 = add i32 %43, 224
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = and i32 %752, 65535
  %754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %753)  ; LegacyF16ToF32(value)
  %755 = lshr i32 %752, 16
  %756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %755)  ; LegacyF16ToF32(value)
  %757 = add i32 %43, 228
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 65535
  %761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %760)  ; LegacyF16ToF32(value)
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %778 = add i32 %43, 220
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %913 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.i32 %913, 1
  %915 = and i32 %914, 1
  %916 = icmp ne i32 %915, 0
  %917 = add i32 %43, 356
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = and i32 %919, 32
  %921 = icmp ne i32 %920, 0
  %922 = and i1 %916, %921
  %923 = select i1 %922, float 1.000000e+00, float %910
  %924 = select i1 %922, float 0x3FD3333340000000, float %911
  %925 = select i1 %922, float 0x3FD3333340000000, float %912
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = and i32 %927, 32
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %1002, label %930

; <label>:930                                     ; preds = %908
  %931 = add i32 %43, 92
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = add i32 %43, 440
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = add i32 %936, 0
  %938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %937, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %939 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %938, %dx.types.Handle %95, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = and i32 %979, 67108864
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %998, label %982

; <label>:982                                     ; preds = %930
  %983 = add i32 %43, 280
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = and i32 %985, 65535
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1007 = add i32 %43, 160
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = lshr i32 %1009, 22
  %1011 = shl nuw nsw i32 %1010, 5
  %1012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1011)  ; LegacyF16ToF32(value)
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 64
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1050, label %1017

; <label>:1017                                    ; preds = %1002
  %1018 = add i32 %43, 456
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = add i32 %1020, 0
  %1022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1021, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = and i32 %1024, 131072
  %1026 = icmp eq i32 %1025, 0
  %1027 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1022, %dx.types.Handle %95, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.ResRet.f32 %1027, 2
  %1031 = fmul fast float %1028, %299
  %1032 = fmul fast float %1029, %302
  %1033 = fmul fast float %1030, %305
  br i1 %1026, label %1040, label %1034

; <label>:1034                                    ; preds = %1017
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.i32 %1054, 0
  %1056 = and i32 %1055, 10240
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1102, label %1058

; <label>:1058                                    ; preds = %1050
  %1059 = add i32 %43, 520
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = add i32 %1061, 0
  %1063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1062, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1064 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1063, %dx.types.Handle %96, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 1
  %1066 = extractvalue %dx.types.ResRet.f32 %1064, 3
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = and i32 %1068, 1048576
  %1070 = icmp ne i32 %1069, 0
  %1071 = and i32 %1068, 8192
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1088, label %1073

; <label>:1073                                    ; preds = %1058
  %1074 = extractvalue %dx.types.ResRet.f32 %1064, 2
  %1075 = select i1 %1070, float %1074, float %1065
  %1076 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1077 = select i1 %1070, float %1076, float %1065
  %1078 = add i32 %43, 96
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = lshr i32 %1080, 16
  %1082 = and i32 %1081, 255
  %1083 = uitofp i32 %1082 to float
  %1084 = fmul fast float %1083, 0x3F80101020000000
  %1085 = fmul fast float %1084, %1077
  %1086 = fmul fast float %1084, %1065
  %1087 = fmul fast float %1084, %1075
  br label %1088

; <label>:1088                                    ; preds = %1073, %1058
  %1089 = phi float [ %1085, %1073 ], [ 0.000000e+00, %1058 ]
  %1090 = phi float [ %1086, %1073 ], [ 0.000000e+00, %1058 ]
  %1091 = phi float [ %1087, %1073 ], [ 0.000000e+00, %1058 ]
  %1092 = and i32 %1068, 2048
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1102, label %1094

; <label>:1094                                    ; preds = %1088
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = shl i32 %1096, 4
  %1098 = and i32 %1097, 32752
  %1099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1098)  ; LegacyF16ToF32(value)
  %1100 = fmul fast float %1099, %1066
  %1101 = call float @dx.op.binary.f32(i32 35, float %1100, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1102

; <label>:1102                                    ; preds = %1094, %1088, %1050
  %1103 = phi float [ %1089, %1094 ], [ %1089, %1088 ], [ 0.000000e+00, %1050 ]
  %1104 = phi float [ %1090, %1094 ], [ %1090, %1088 ], [ 0.000000e+00, %1050 ]
  %1105 = phi float [ %1091, %1094 ], [ %1091, %1088 ], [ 0.000000e+00, %1050 ]
  %1106 = phi float [ %1101, %1094 ], [ 0x3F70101020000000, %1088 ], [ 0x3F70101020000000, %1050 ]
  %1107 = add i32 %43, 96
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 255
  %1111 = uitofp i32 %1110 to float
  %1112 = lshr i32 %1109, 8
  %1113 = and i32 %1112, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = call float @dx.op.dot3.f32(i32 55, float %923, float %924, float %925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1116 = fmul fast float %1114, %1115
  %1117 = fadd fast float %1116, %1111
  %1118 = fmul fast float %1117, 0x3F70101020000000
  %1119 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  br label %1120

; <label>:1120                                    ; preds = %1102, %518
  %1121 = phi float [ 0.000000e+00, %518 ], [ %1004, %1102 ]
  %1122 = phi float [ 0.000000e+00, %518 ], [ %1005, %1102 ]
  %1123 = phi float [ 0.000000e+00, %518 ], [ %923, %1102 ]
  %1124 = phi float [ 0.000000e+00, %518 ], [ %924, %1102 ]
  %1125 = phi float [ 0.000000e+00, %518 ], [ %925, %1102 ]
  %1126 = phi float [ 0.000000e+00, %518 ], [ %1051, %1102 ]
  %1127 = phi float [ 0.000000e+00, %518 ], [ %1052, %1102 ]
  %1128 = phi float [ 0.000000e+00, %518 ], [ %1053, %1102 ]
  %1129 = phi float [ 0.000000e+00, %518 ], [ %1103, %1102 ]
  %1130 = phi float [ 0.000000e+00, %518 ], [ %1104, %1102 ]
  %1131 = phi float [ 0.000000e+00, %518 ], [ %1105, %1102 ]
  %1132 = phi float [ 0.000000e+00, %518 ], [ %909, %1102 ]
  %1133 = phi float [ 0.000000e+00, %518 ], [ %705, %1102 ]
  %1134 = phi float [ 0.000000e+00, %518 ], [ %1003, %1102 ]
  %1135 = phi float [ 0.000000e+00, %518 ], [ %1006, %1102 ]
  %1136 = phi float [ 0.000000e+00, %518 ], [ %1106, %1102 ]
  %1137 = phi float [ 0.000000e+00, %518 ], [ %1119, %1102 ]
  br i1 %466, label %1951, label %1138

; <label>:1138                                    ; preds = %1120
  %1139 = icmp ult i32 %524, 2
  %1140 = add i32 %43, 40
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = add i32 %43, 44
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = or i32 %1145, %1142
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1951, label %1148

; <label>:1148                                    ; preds = %1138
  %1149 = and i32 %1142, 262144
  %1150 = icmp ne i32 %1149, 0
  %1151 = select i1 %1150, float %49, float 1.000000e+00
  %1152 = select i1 %1150, float %50, float 0.000000e+00
  %1153 = select i1 %1150, float %51, float 0.000000e+00
  %1154 = select i1 %1150, float %52, float 1.000000e+00
  %1155 = select i1 %1150, float %53, float %81
  %1156 = select i1 %1150, float %54, float %82
  %1157 = add i32 %43, 300
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = lshr i32 %1159, 16
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = fmul fast float %1161, 0x3F50624DE0000000
  %1163 = add i32 %43, 104
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = lshr i32 %1165, 16
  %1167 = and i32 %1166, 255
  %1168 = lshr i32 %1165, 24
  %1169 = add i32 %43, 308
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = and i32 %1171, 65535
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = lshr i32 %1171, 16
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = add i32 %43, 48
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = lshr i32 %1178, 22
  %1180 = shl nuw nsw i32 %1179, 5
  %1181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1180)  ; LegacyF16ToF32(value)
  %1182 = shl i32 %1178, 4
  %1183 = and i32 %1182, 32752
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = lshr i32 %1178, 7
  %1186 = and i32 %1185, 32752
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.f32 %1188, 3
  %1190 = fmul fast float %1189, 1.000000e+03
  %1191 = fmul fast float %376, %1190
  %1192 = call float @dx.op.unary.f32(i32 22, float %1191)  ; Frc(value)
  %1193 = fadd fast float %1192, %366
  %1194 = fmul fast float %377, %1190
  %1195 = call float @dx.op.unary.f32(i32 22, float %1194)  ; Frc(value)
  %1196 = fadd fast float %1195, %368
  %1197 = fmul fast float %1162, %1190
  %1198 = call float @dx.op.unary.f32(i32 22, float %1197)  ; Frc(value)
  %1199 = fmul fast float %1198, 0x401921FB60000000
  %1200 = fadd fast float %1199, %1181
  %1201 = call float @dx.op.unary.f32(i32 13, float %1200)  ; Sin(value)
  %1202 = call float @dx.op.unary.f32(i32 12, float %1200)  ; Cos(value)
  %1203 = fsub fast float -0.000000e+00, %1201
  %1204 = fadd fast float %1155, -5.000000e-01
  %1205 = fadd fast float %1156, -5.000000e-01
  %1206 = fmul fast float %1173, %1204
  %1207 = fmul fast float %1175, %1205
  %1208 = fadd fast float %1206, 5.000000e-01
  %1209 = fadd fast float %1207, 5.000000e-01
  %1210 = fmul fast float %1184, %1208
  %1211 = fmul fast float %1187, %1209
  %1212 = fmul fast float %1202, %1210
  %1213 = call float @dx.op.tertiary.f32(i32 46, float %1203, float %1211, float %1212)  ; FMad(a,b,c)
  %1214 = fmul fast float %1201, %1210
  %1215 = call float @dx.op.tertiary.f32(i32 46, float %1202, float %1211, float %1214)  ; FMad(a,b,c)
  %1216 = fadd fast float %1193, %1213
  %1217 = fadd fast float %1196, %1215
  %1218 = icmp ugt i32 %1167, 1
  %1219 = icmp ugt i32 %1165, 33554431
  %1220 = or i1 %1219, %1218
  br i1 %1220, label %1221, label %1246

; <label>:1221                                    ; preds = %1148
  %1222 = add i32 %43, 244
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = lshr i32 %1224, 16
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = fmul fast float %1189, %1226
  %1228 = call float @dx.op.unary.f32(i32 22, float %1227)  ; Frc(value)
  %1229 = mul nuw nsw i32 %1167, %1168
  %1230 = uitofp i32 %1229 to float
  %1231 = fmul fast float %1228, %1230
  %1232 = call float @dx.op.unary.f32(i32 27, float %1231)  ; Round_ni(value)
  %1233 = fptoui float %1232 to i32
  %1234 = urem i32 %1233, %1167
  %1235 = udiv i32 %1233, %1168
  %1236 = call float @dx.op.unary.f32(i32 22, float %1216)  ; Frc(value)
  %1237 = call float @dx.op.unary.f32(i32 22, float %1217)  ; Frc(value)
  %1238 = uitofp i32 %1234 to float
  %1239 = uitofp i32 %1235 to float
  %1240 = fadd fast float %1236, %1238
  %1241 = fadd fast float %1237, %1239
  %1242 = uitofp i32 %1167 to float
  %1243 = uitofp i32 %1168 to float
  %1244 = fdiv fast float %1240, %1242
  %1245 = fdiv fast float %1241, %1243
  br label %1246

; <label>:1246                                    ; preds = %1221, %1148
  %1247 = phi float [ %1244, %1221 ], [ %1216, %1148 ]
  %1248 = phi float [ %1245, %1221 ], [ %1217, %1148 ]
  %1249 = and i32 %1142, 256
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1297, label %1251

; <label>:1251                                    ; preds = %1246
  %1252 = add i32 %43, 492
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = add i32 %1254, 0
  %1256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1255, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1257 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1256, %dx.types.Handle %96, float %1247, float %1248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1258 = extractvalue %dx.types.ResRet.f32 %1257, 0
  %1259 = add i32 %43, 116
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = shl i32 %1261, 4
  %1263 = and i32 %1262, 32752
  %1264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1263)  ; LegacyF16ToF32(value)
  %1265 = lshr i32 %1261, 7
  %1266 = and i32 %1265, 32752
  %1267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1266)  ; LegacyF16ToF32(value)
  %1268 = fsub fast float 1.000000e+00, %521
  %1269 = call float @dx.op.binary.f32(i32 35, float %1268, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1270 = bitcast float %521 to i32
  %1271 = sitofp i32 %1270 to float
  %1272 = fadd fast float %1271, 0xC1CFBF8940000000
  %1273 = fmul fast float %1267, %1272
  %1274 = fadd fast float %1273, 0x41CFBF8940000000
  %1275 = fptosi float %1274 to i32
  %1276 = bitcast i32 %1275 to float
  %1277 = bitcast float %1269 to i32
  %1278 = sitofp i32 %1277 to float
  %1279 = fadd fast float %1278, 0xC1CFBF8940000000
  %1280 = fmul fast float %1279, %1267
  %1281 = fadd fast float %1280, 0x41CFBF8940000000
  %1282 = fptosi float %1281 to i32
  %1283 = bitcast i32 %1282 to float
  %1284 = fmul fast float %1276, %1264
  %1285 = fmul fast float %1283, %1264
  %1286 = fsub fast float %1269, %1284
  %1287 = fadd fast float %1285, %1269
  %1288 = call float @dx.op.unary.f32(i32 7, float %1286)  ; Saturate(value)
  %1289 = call float @dx.op.unary.f32(i32 7, float %1287)  ; Saturate(value)
  %1290 = fsub fast float %1258, %1288
  %1291 = fsub fast float %1289, %1288
  %1292 = bitcast float %1291 to i32
  %1293 = sub nsw i32 2129859010, %1292
  %1294 = bitcast i32 %1293 to float
  %1295 = fmul fast float %1294, %1290
  %1296 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  br label %1297

; <label>:1297                                    ; preds = %1251, %1246
  %1298 = phi float [ %1296, %1251 ], [ %521, %1246 ]
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = and i32 %1300, 128
  %1302 = icmp eq i32 %1301, 0
  br i1 %1302, label %1319, label %1303

; <label>:1303                                    ; preds = %1297
  %1304 = add i32 %43, 476
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = add i32 %1306, 0
  %1308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1307, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1309 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1308, %dx.types.Handle %96, float %1247, float %1248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 0
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = and i32 %1312, 524288
  %1314 = icmp ne i32 %1313, 0
  %1315 = fcmp fast ogt float %1310, 0x3FE0101020000000
  %1316 = select i1 %1315, float 1.000000e+00, float 0.000000e+00
  %1317 = select i1 %1314, float %1316, float %1310
  %1318 = fmul fast float %1317, %1298
  br label %1319

; <label>:1319                                    ; preds = %1303, %1297
  %1320 = phi float [ %1318, %1303 ], [ %1298, %1297 ]
  %1321 = fcmp fast ult float %1320, 0x3F70101020000000
  br i1 %1321, label %1951, label %1322

; <label>:1322                                    ; preds = %1319
  %1323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.i32 %1323, 0
  %1325 = and i32 %1324, 16
  %1326 = icmp eq i32 %1325, 0
  br i1 %1326, label %1525, label %1327

; <label>:1327                                    ; preds = %1322
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = add i32 %43, 428
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = add i32 %1332, 0
  %1334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1333, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1335 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1334, %dx.types.Handle %95, float %1247, float %1248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1336 = extractvalue %dx.types.ResRet.f32 %1335, 0
  %1337 = extractvalue %dx.types.ResRet.f32 %1335, 1
  %1338 = extractvalue %dx.types.ResRet.f32 %1335, 2
  %1339 = extractvalue %dx.types.ResRet.f32 %1335, 3
  %1340 = and i32 %1329, 255
  %1341 = uitofp i32 %1340 to float
  %1342 = lshr i32 %1329, 8
  %1343 = and i32 %1342, 255
  %1344 = uitofp i32 %1343 to float
  %1345 = fmul fast float %1339, %1341
  %1346 = fadd fast float %1345, %1344
  %1347 = fmul fast float %1346, 0x3F70101000000000
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = and i32 %1349, 512
  %1351 = icmp eq i32 %1350, 0
  br i1 %1351, label %1360, label %1352

; <label>:1352                                    ; preds = %1327
  %1353 = add i32 %43, 508
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1353, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = add i32 %1355, 0
  %1357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1356, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1358 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1357, %dx.types.Handle %96, float %1247, float %1248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  br label %1360

; <label>:1360                                    ; preds = %1352, %1327
  %1361 = phi float [ %1359, %1352 ], [ 1.000000e+00, %1327 ]
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = and i32 %1363, 33554432
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1472, label %1366

; <label>:1366                                    ; preds = %1360
  %1367 = add i32 %43, 240
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1367, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = and i32 %1369, 65535
  %1371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1370)  ; LegacyF16ToF32(value)
  %1372 = lshr i32 %1369, 16
  %1373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1372)  ; LegacyF16ToF32(value)
  %1374 = add i32 %43, 244
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1374, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = and i32 %1376, 65535
  %1378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1377)  ; LegacyF16ToF32(value)
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = lshr i32 %1380, 24
  %1382 = uitofp i32 %1381 to float
  %1383 = fmul fast float %1382, 0x3F70101020000000
  %1384 = and i32 %1380, 255
  %1385 = uitofp i32 %1384 to float
  %1386 = fmul fast float %1385, 0x3F70101020000000
  %1387 = lshr i32 %1380, 8
  %1388 = and i32 %1387, 255
  %1389 = uitofp i32 %1388 to float
  %1390 = fmul fast float %1389, 0x3F70101020000000
  %1391 = lshr i32 %1380, 16
  %1392 = and i32 %1391, 255
  %1393 = uitofp i32 %1392 to float
  %1394 = fmul fast float %1393, 0x3F70101020000000
  %1395 = add i32 %43, 236
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = lshr i32 %1397, 24
  %1399 = uitofp i32 %1398 to float
  %1400 = fmul fast float %1399, 0x3F70101020000000
  %1401 = and i32 %1397, 255
  %1402 = uitofp i32 %1401 to float
  %1403 = fmul fast float %1402, 0x3F70101020000000
  %1404 = lshr i32 %1397, 8
  %1405 = and i32 %1404, 255
  %1406 = uitofp i32 %1405 to float
  %1407 = fmul fast float %1406, 0x3F70101020000000
  %1408 = lshr i32 %1397, 16
  %1409 = and i32 %1408, 255
  %1410 = uitofp i32 %1409 to float
  %1411 = fmul fast float %1410, 0x3F70101020000000
  %1412 = bitcast float %1336 to i32
  %1413 = ashr i32 %1412, 1
  %1414 = sub nsw i32 1597463174, %1413
  %1415 = bitcast i32 %1414 to float
  %1416 = fmul fast float %1336, 5.000000e-01
  %1417 = fmul fast float %1415, %1415
  %1418 = fmul fast float %1417, %1416
  %1419 = fsub fast float 1.500000e+00, %1418
  %1420 = fmul fast float %1415, %1336
  %1421 = fmul fast float %1420, %1419
  %1422 = bitcast float %1337 to i32
  %1423 = ashr i32 %1422, 1
  %1424 = sub nsw i32 1597463174, %1423
  %1425 = bitcast i32 %1424 to float
  %1426 = fmul fast float %1337, 5.000000e-01
  %1427 = fmul fast float %1425, %1425
  %1428 = fmul fast float %1427, %1426
  %1429 = fsub fast float 1.500000e+00, %1428
  %1430 = fmul fast float %1425, %1337
  %1431 = fmul fast float %1430, %1429
  %1432 = bitcast float %1338 to i32
  %1433 = ashr i32 %1432, 1
  %1434 = sub nsw i32 1597463174, %1433
  %1435 = bitcast i32 %1434 to float
  %1436 = fmul fast float %1338, 5.000000e-01
  %1437 = fmul fast float %1435, %1435
  %1438 = fmul fast float %1437, %1436
  %1439 = fsub fast float 1.500000e+00, %1438
  %1440 = fmul fast float %1435, %1338
  %1441 = fmul fast float %1440, %1439
  %1442 = fsub fast float %1421, %1403
  %1443 = fsub fast float %1431, %1407
  %1444 = fsub fast float %1441, %1411
  %1445 = fmul fast float %1442, %1371
  %1446 = fmul fast float %1443, %1373
  %1447 = fmul fast float %1444, %1378
  %1448 = fadd fast float %1445, %1386
  %1449 = fadd fast float %1446, %1390
  %1450 = fadd fast float %1447, %1394
  %1451 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  %1452 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1453 = call float @dx.op.unary.f32(i32 7, float %1450)  ; Saturate(value)
  %1454 = fmul fast float %1451, %1451
  %1455 = fmul fast float %1452, %1452
  %1456 = fmul fast float %1453, %1453
  %1457 = fsub fast float %1454, %1336
  %1458 = fsub fast float %1455, %1337
  %1459 = fsub fast float %1456, %1338
  %1460 = fmul fast float %1457, %1361
  %1461 = fmul fast float %1458, %1361
  %1462 = fmul fast float %1459, %1361
  %1463 = fadd fast float %1460, %1336
  %1464 = fadd fast float %1461, %1337
  %1465 = fadd fast float %1462, %1338
  %1466 = fadd fast float %1383, %1347
  %1467 = fsub fast float %1466, %1400
  %1468 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  %1469 = fsub fast float %1468, %1347
  %1470 = fmul fast float %1469, %1361
  %1471 = fadd fast float %1470, %1347
  br label %1525

; <label>:1472                                    ; preds = %1360
  %1473 = and i32 %1363, 134217728
  %1474 = icmp eq i32 %1473, 0
  br i1 %1474, label %1509, label %1475

; <label>:1475                                    ; preds = %1472
  %1476 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %1477 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %1478 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %1479 = fadd fast float %1476, -5.000000e-01
  %1480 = fadd fast float %1477, -5.000000e-01
  %1481 = fadd fast float %1478, -5.000000e-01
  %1482 = fmul fast float %1479, %1361
  %1483 = fmul fast float %1480, %1361
  %1484 = fmul fast float %1481, %1361
  %1485 = fadd fast float %1482, 5.000000e-01
  %1486 = fadd fast float %1483, 5.000000e-01
  %1487 = fadd fast float %1484, 5.000000e-01
  %1488 = call float @dx.op.unary.f32(i32 24, float %1336)  ; Sqrt(value)
  %1489 = call float @dx.op.unary.f32(i32 24, float %1337)  ; Sqrt(value)
  %1490 = call float @dx.op.unary.f32(i32 24, float %1338)  ; Sqrt(value)
  %1491 = fmul fast float %1485, 2.000000e+00
  %1492 = fsub fast float 1.000000e+00, %1491
  %1493 = fmul fast float %1492, %1488
  %1494 = fadd fast float %1493, %1491
  %1495 = fmul fast float %1494, %1488
  %1496 = fmul fast float %1486, 2.000000e+00
  %1497 = fsub fast float 1.000000e+00, %1496
  %1498 = fmul fast float %1497, %1489
  %1499 = fadd fast float %1498, %1496
  %1500 = fmul fast float %1499, %1489
  %1501 = fmul fast float %1487, 2.000000e+00
  %1502 = fsub fast float 1.000000e+00, %1501
  %1503 = fmul fast float %1502, %1490
  %1504 = fadd fast float %1503, %1501
  %1505 = fmul fast float %1504, %1490
  %1506 = fmul fast float %1495, %1495
  %1507 = fmul fast float %1500, %1500
  %1508 = fmul fast float %1505, %1505
  br label %1525

; <label>:1509                                    ; preds = %1472
  %1510 = fmul fast float %353, %353
  %1511 = fmul fast float %357, %357
  %1512 = fmul fast float %361, %361
  %1513 = fadd fast float %1510, -1.000000e+00
  %1514 = fadd fast float %1511, -1.000000e+00
  %1515 = fadd fast float %1512, -1.000000e+00
  %1516 = fmul fast float %1361, %1513
  %1517 = fmul fast float %1361, %1514
  %1518 = fmul fast float %1361, %1515
  %1519 = fadd fast float %1516, 1.000000e+00
  %1520 = fadd fast float %1517, 1.000000e+00
  %1521 = fadd fast float %1518, 1.000000e+00
  %1522 = fmul fast float %1519, %1336
  %1523 = fmul fast float %1520, %1337
  %1524 = fmul fast float %1521, %1338
  br label %1525

; <label>:1525                                    ; preds = %1509, %1475, %1366, %1322
  %1526 = phi float [ %1471, %1366 ], [ %1347, %1475 ], [ %1347, %1509 ], [ 0x3FA23C0BE0000000, %1322 ]
  %1527 = phi float [ %1463, %1366 ], [ %1506, %1475 ], [ %1522, %1509 ], [ 1.000000e+00, %1322 ]
  %1528 = phi float [ %1464, %1366 ], [ %1507, %1475 ], [ %1523, %1509 ], [ 1.000000e+00, %1322 ]
  %1529 = phi float [ %1465, %1366 ], [ %1508, %1475 ], [ %1524, %1509 ], [ 1.000000e+00, %1322 ]
  %1530 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1531 = extractvalue %dx.types.CBufRet.i32 %1530, 1
  %1532 = and i32 %1531, 1
  %1533 = icmp ne i32 %1532, 0
  %1534 = add i32 %43, 356
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1534, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = and i32 %1536, 32
  %1538 = icmp ne i32 %1537, 0
  %1539 = and i1 %1533, %1538
  %1540 = select i1 %1539, float 1.000000e+00, float %1527
  %1541 = select i1 %1539, float 0x3FD3333340000000, float %1528
  %1542 = select i1 %1539, float 0x3FD3333340000000, float %1529
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 32
  %1546 = icmp eq i32 %1545, 0
  br i1 %1546, label %1619, label %1547

; <label>:1547                                    ; preds = %1525
  %1548 = add i32 %43, 108
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = add i32 %43, 444
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = add i32 %1553, 0
  %1555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1556 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1555, %dx.types.Handle %95, float %1247, float %1248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1557 = extractvalue %dx.types.ResRet.f32 %1556, 0
  %1558 = extractvalue %dx.types.ResRet.f32 %1556, 1
  %1559 = extractvalue %dx.types.ResRet.f32 %1556, 2
  %1560 = extractvalue %dx.types.ResRet.f32 %1556, 3
  %1561 = and i32 %1550, 255
  %1562 = uitofp i32 %1561 to float
  %1563 = lshr i32 %1550, 8
  %1564 = and i32 %1563, 255
  %1565 = uitofp i32 %1564 to float
  %1566 = lshr i32 %1550, 16
  %1567 = and i32 %1566, 255
  %1568 = uitofp i32 %1567 to float
  %1569 = fmul fast float %1568, 0x3F70101000000000
  %1570 = fmul fast float %1557, %1562
  %1571 = fadd fast float %1570, %1565
  %1572 = fmul fast float %1571, 0x3F70101000000000
  %1573 = fadd fast float %1558, -5.000000e-01
  %1574 = fadd fast float %1560, -5.000000e-01
  %1575 = fmul fast float %1573, %1569
  %1576 = fmul fast float %1574, %1569
  %1577 = fadd fast float %1575, 5.000000e-01
  %1578 = fadd fast float %1576, 5.000000e-01
  %1579 = fmul fast float %1577, 2.000000e+00
  %1580 = fadd fast float %1579, -1.000000e+00
  %1581 = fmul fast float %1578, 2.000000e+00
  %1582 = fadd fast float %1581, -1.000000e+00
  %1583 = fadd fast float %1580, %1582
  %1584 = fmul fast float %1583, 5.000000e-01
  %1585 = fsub fast float %1580, %1582
  %1586 = fmul fast float %1585, 5.000000e-01
  %1587 = call float @dx.op.unary.f32(i32 6, float %1584)  ; FAbs(value)
  %1588 = fsub fast float 1.000000e+00, %1587
  %1589 = call float @dx.op.unary.f32(i32 6, float %1586)  ; FAbs(value)
  %1590 = fsub fast float %1588, %1589
  %1591 = call float @dx.op.dot3.f32(i32 55, float %1584, float %1586, float %1590, float %1584, float %1586, float %1590)  ; Dot3(ax,ay,az,bx,by,bz)
  %1592 = call float @dx.op.unary.f32(i32 25, float %1591)  ; Rsqrt(value)
  %1593 = fmul fast float %1584, %1592
  %1594 = fmul fast float %1586, %1592
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = and i32 %1596, 67108864
  %1598 = icmp eq i32 %1597, 0
  br i1 %1598, label %1615, label %1599

; <label>:1599                                    ; preds = %1547
  %1600 = add i32 %43, 296
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1600, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = and i32 %1602, 65535
  %1604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1603)  ; LegacyF16ToF32(value)
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = and i32 %1606, 65535
  %1608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1607)  ; LegacyF16ToF32(value)
  %1609 = lshr i32 %1602, 16
  %1610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1609)  ; LegacyF16ToF32(value)
  %1611 = fsub fast float %1572, %1610
  %1612 = fmul fast float %1611, %1604
  %1613 = fadd fast float %1612, %1608
  %1614 = call float @dx.op.unary.f32(i32 7, float %1613)  ; Saturate(value)
  br label %1615

; <label>:1615                                    ; preds = %1599, %1547
  %1616 = phi float [ %1614, %1599 ], [ %1572, %1547 ]
  %1617 = call float @dx.op.dot2.f32(i32 54, float %1593, float %1594, float %1151, float %1152)  ; Dot2(ax,ay,bx,by)
  %1618 = call float @dx.op.dot2.f32(i32 54, float %1593, float %1594, float %1153, float %1154)  ; Dot2(ax,ay,bx,by)
  br label %1619

; <label>:1619                                    ; preds = %1615, %1525
  %1620 = phi float [ %1616, %1615 ], [ 0x3FD6666660000000, %1525 ]
  %1621 = phi float [ %1617, %1615 ], [ 0.000000e+00, %1525 ]
  %1622 = phi float [ %1618, %1615 ], [ 0.000000e+00, %1525 ]
  %1623 = phi float [ %1559, %1615 ], [ 1.000000e+00, %1525 ]
  %1624 = add i32 %43, 176
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1624, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = lshr i32 %1626, 22
  %1628 = shl nuw nsw i32 %1627, 5
  %1629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1628)  ; LegacyF16ToF32(value)
  %1630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.i32 %1630, 0
  %1632 = and i32 %1631, 64
  %1633 = icmp eq i32 %1632, 0
  br i1 %1633, label %1667, label %1634

; <label>:1634                                    ; preds = %1619
  %1635 = add i32 %43, 460
  %1636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1635, i32 undef)  ; BufferLoad(srv,index,wot)
  %1637 = extractvalue %dx.types.ResRet.i32 %1636, 0
  %1638 = add i32 %1637, 0
  %1639 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1638, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1641 = extractvalue %dx.types.ResRet.i32 %1640, 0
  %1642 = and i32 %1641, 131072
  %1643 = icmp eq i32 %1642, 0
  %1644 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1639, %dx.types.Handle %95, float %1247, float %1248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1645 = extractvalue %dx.types.ResRet.f32 %1644, 0
  %1646 = extractvalue %dx.types.ResRet.f32 %1644, 1
  %1647 = extractvalue %dx.types.ResRet.f32 %1644, 2
  %1648 = fmul fast float %1645, %341
  %1649 = fmul fast float %1646, %344
  %1650 = fmul fast float %1647, %347
  br i1 %1643, label %1657, label %1651

; <label>:1651                                    ; preds = %1634
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  %1654 = fmul fast float %1653, %1648
  %1655 = fmul fast float %1653, %1649
  %1656 = fmul fast float %1653, %1650
  br label %1657

; <label>:1657                                    ; preds = %1651, %1634
  %1658 = phi float [ %1654, %1651 ], [ %1648, %1634 ]
  %1659 = phi float [ %1655, %1651 ], [ %1649, %1634 ]
  %1660 = phi float [ %1656, %1651 ], [ %1650, %1634 ]
  %1661 = fmul fast float %1658, %1629
  %1662 = select i1 %282, float %1661, float %1658
  %1663 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1659, float %1660, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1664 = select i1 %282, float 0.000000e+00, float %1658
  %1665 = select i1 %282, float %1663, float %1659
  %1666 = select i1 %282, float 0.000000e+00, float %1660
  br label %1667

; <label>:1667                                    ; preds = %1657, %1619
  %1668 = phi float [ %1664, %1657 ], [ 0.000000e+00, %1619 ]
  %1669 = phi float [ %1665, %1657 ], [ 0.000000e+00, %1619 ]
  %1670 = phi float [ %1666, %1657 ], [ 0.000000e+00, %1619 ]
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = and i32 %1672, 10240
  %1674 = icmp eq i32 %1673, 0
  br i1 %1674, label %1719, label %1675

; <label>:1675                                    ; preds = %1667
  %1676 = add i32 %43, 524
  %1677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.i32 %1677, 0
  %1679 = add i32 %1678, 0
  %1680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1680, %dx.types.Handle %96, float %1247, float %1248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1682 = extractvalue %dx.types.ResRet.f32 %1681, 1
  %1683 = extractvalue %dx.types.ResRet.f32 %1681, 3
  %1684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1685 = extractvalue %dx.types.ResRet.i32 %1684, 0
  %1686 = and i32 %1685, 1048576
  %1687 = icmp ne i32 %1686, 0
  %1688 = and i32 %1685, 8192
  %1689 = icmp eq i32 %1688, 0
  br i1 %1689, label %1705, label %1690

; <label>:1690                                    ; preds = %1675
  %1691 = extractvalue %dx.types.ResRet.f32 %1681, 2
  %1692 = select i1 %1687, float %1691, float %1682
  %1693 = extractvalue %dx.types.ResRet.f32 %1681, 0
  %1694 = select i1 %1687, float %1693, float %1682
  %1695 = add i32 %43, 112
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1697 = extractvalue %dx.types.ResRet.i32 %1696, 0
  %1698 = lshr i32 %1697, 16
  %1699 = and i32 %1698, 255
  %1700 = uitofp i32 %1699 to float
  %1701 = fmul fast float %1700, 0x3F80101020000000
  %1702 = fmul fast float %1701, %1694
  %1703 = fmul fast float %1701, %1682
  %1704 = fmul fast float %1701, %1692
  br label %1705

; <label>:1705                                    ; preds = %1690, %1675
  %1706 = phi float [ %1702, %1690 ], [ 0.000000e+00, %1675 ]
  %1707 = phi float [ %1703, %1690 ], [ 0.000000e+00, %1675 ]
  %1708 = phi float [ %1704, %1690 ], [ 0.000000e+00, %1675 ]
  %1709 = and i32 %1685, 2048
  %1710 = icmp eq i32 %1709, 0
  br i1 %1710, label %1719, label %1711

; <label>:1711                                    ; preds = %1705
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1624, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = shl i32 %1713, 4
  %1715 = and i32 %1714, 32752
  %1716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1715)  ; LegacyF16ToF32(value)
  %1717 = fmul fast float %1716, %1683
  %1718 = call float @dx.op.binary.f32(i32 35, float %1717, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1719

; <label>:1719                                    ; preds = %1711, %1705, %1667
  %1720 = phi float [ %1706, %1711 ], [ %1706, %1705 ], [ 0.000000e+00, %1667 ]
  %1721 = phi float [ %1707, %1711 ], [ %1707, %1705 ], [ 0.000000e+00, %1667 ]
  %1722 = phi float [ %1708, %1711 ], [ %1708, %1705 ], [ 0.000000e+00, %1667 ]
  %1723 = phi float [ %1718, %1711 ], [ 0x3F70101020000000, %1705 ], [ 0x3F70101020000000, %1667 ]
  %1724 = add i32 %43, 112
  %1725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1724, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.i32 %1725, 0
  %1727 = and i32 %1726, 255
  %1728 = uitofp i32 %1727 to float
  %1729 = lshr i32 %1726, 8
  %1730 = and i32 %1729, 255
  %1731 = uitofp i32 %1730 to float
  %1732 = call float @dx.op.dot3.f32(i32 55, float %1540, float %1541, float %1542, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1733 = fmul fast float %1731, %1732
  %1734 = fadd fast float %1733, %1728
  %1735 = fmul fast float %1734, 0x3F70101020000000
  %1736 = call float @dx.op.unary.f32(i32 7, float %1735)  ; Saturate(value)
  br i1 %1139, label %1737, label %1745

; <label>:1737                                    ; preds = %1719
  %1738 = fsub fast float 1.000000e+00, %1320
  %1739 = fmul fast float %1738, %1123
  %1740 = fmul fast float %1738, %1124
  %1741 = fmul fast float %1738, %1125
  %1742 = fmul fast float %1738, %1126
  %1743 = fmul fast float %1738, %1127
  %1744 = fmul fast float %1738, %1128
  br label %1745

; <label>:1745                                    ; preds = %1737, %1719
  %1746 = phi float [ %1739, %1737 ], [ %1123, %1719 ]
  %1747 = phi float [ %1740, %1737 ], [ %1124, %1719 ]
  %1748 = phi float [ %1741, %1737 ], [ %1125, %1719 ]
  %1749 = phi float [ %1742, %1737 ], [ %1126, %1719 ]
  %1750 = phi float [ %1743, %1737 ], [ %1127, %1719 ]
  %1751 = phi float [ %1744, %1737 ], [ %1128, %1719 ]
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = and i32 %1753, 3
  %1755 = icmp eq i32 %1754, 3
  br i1 %1755, label %1834, label %1756

; <label>:1756                                    ; preds = %1745
  %1757 = and i32 %1753, 16
  %1758 = icmp ne i32 %1757, 0
  %1759 = select i1 %1758, float %1320, float 0.000000e+00
  %1760 = icmp eq i32 %1754, 0
  br i1 %1760, label %1761, label %1789

; <label>:1761                                    ; preds = %1756
  %1762 = and i32 %1753, 64
  %1763 = icmp ne i32 %1762, 0
  %1764 = select i1 %1763, float %1320, float 0.000000e+00
  %1765 = fsub fast float %1540, %1746
  %1766 = fsub fast float %1541, %1747
  %1767 = fsub fast float %1542, %1748
  %1768 = fmul fast float %1759, %1765
  %1769 = fmul fast float %1759, %1766
  %1770 = fmul fast float %1759, %1767
  %1771 = fadd fast float %1768, %1746
  %1772 = fadd fast float %1769, %1747
  %1773 = fadd fast float %1770, %1748
  %1774 = fsub fast float %1526, %1132
  %1775 = fmul fast float %1759, %1774
  %1776 = fadd fast float %1775, %1132
  %1777 = fsub fast float %1668, %1749
  %1778 = fsub fast float %1669, %1750
  %1779 = fsub fast float %1670, %1751
  %1780 = fmul fast float %1764, %1777
  %1781 = fmul fast float %1764, %1778
  %1782 = fmul fast float %1764, %1779
  %1783 = fadd fast float %1780, %1749
  %1784 = fadd fast float %1781, %1750
  %1785 = fadd fast float %1782, %1751
  %1786 = fsub fast float %1736, %1137
  %1787 = fmul fast float %1759, %1786
  %1788 = fadd fast float %1787, %1137
  br label %1834

; <label>:1789                                    ; preds = %1756
  %1790 = icmp eq i32 %1754, 1
  br i1 %1790, label %1791, label %1804

; <label>:1791                                    ; preds = %1789
  %1792 = fadd fast float %1540, -1.000000e+00
  %1793 = fadd fast float %1541, -1.000000e+00
  %1794 = fadd fast float %1542, -1.000000e+00
  %1795 = fmul fast float %1759, %1792
  %1796 = fmul fast float %1759, %1793
  %1797 = fmul fast float %1759, %1794
  %1798 = fadd fast float %1795, 1.000000e+00
  %1799 = fadd fast float %1796, 1.000000e+00
  %1800 = fadd fast float %1797, 1.000000e+00
  %1801 = fmul fast float %1798, %1746
  %1802 = fmul fast float %1799, %1747
  %1803 = fmul fast float %1800, %1748
  br label %1834

; <label>:1804                                    ; preds = %1789
  %1805 = icmp eq i32 %1754, 2
  br i1 %1805, label %1806, label %1834

; <label>:1806                                    ; preds = %1804
  %1807 = call float @dx.op.unary.f32(i32 24, float %1540)  ; Sqrt(value)
  %1808 = call float @dx.op.unary.f32(i32 24, float %1541)  ; Sqrt(value)
  %1809 = call float @dx.op.unary.f32(i32 24, float %1542)  ; Sqrt(value)
  %1810 = fadd fast float %1807, -5.000000e-01
  %1811 = fadd fast float %1808, -5.000000e-01
  %1812 = fadd fast float %1809, -5.000000e-01
  %1813 = fmul fast float %1810, %1759
  %1814 = fmul fast float %1811, %1759
  %1815 = fmul fast float %1812, %1759
  %1816 = fadd fast float %1813, 5.000000e-01
  %1817 = fadd fast float %1814, 5.000000e-01
  %1818 = fadd fast float %1815, 5.000000e-01
  %1819 = fmul fast float %1816, 2.000000e+00
  %1820 = fsub fast float 1.000000e+00, %1819
  %1821 = fmul fast float %1820, %1746
  %1822 = fadd fast float %1821, %1819
  %1823 = fmul fast float %1822, %1746
  %1824 = fmul fast float %1817, 2.000000e+00
  %1825 = fsub fast float 1.000000e+00, %1824
  %1826 = fmul fast float %1825, %1747
  %1827 = fadd fast float %1826, %1824
  %1828 = fmul fast float %1827, %1747
  %1829 = fmul fast float %1818, 2.000000e+00
  %1830 = fsub fast float 1.000000e+00, %1829
  %1831 = fmul fast float %1830, %1748
  %1832 = fadd fast float %1831, %1829
  %1833 = fmul fast float %1832, %1748
  br label %1834

; <label>:1834                                    ; preds = %1806, %1804, %1791, %1761, %1745
  %1835 = phi float [ %1746, %1745 ], [ %1823, %1806 ], [ %1746, %1804 ], [ %1801, %1791 ], [ %1771, %1761 ]
  %1836 = phi float [ %1747, %1745 ], [ %1828, %1806 ], [ %1747, %1804 ], [ %1802, %1791 ], [ %1772, %1761 ]
  %1837 = phi float [ %1748, %1745 ], [ %1833, %1806 ], [ %1748, %1804 ], [ %1803, %1791 ], [ %1773, %1761 ]
  %1838 = phi float [ %1749, %1745 ], [ %1749, %1806 ], [ %1749, %1804 ], [ %1749, %1791 ], [ %1783, %1761 ]
  %1839 = phi float [ %1750, %1745 ], [ %1750, %1806 ], [ %1750, %1804 ], [ %1750, %1791 ], [ %1784, %1761 ]
  %1840 = phi float [ %1751, %1745 ], [ %1751, %1806 ], [ %1751, %1804 ], [ %1751, %1791 ], [ %1785, %1761 ]
  %1841 = phi float [ %1132, %1745 ], [ %1132, %1806 ], [ %1132, %1804 ], [ %1132, %1791 ], [ %1776, %1761 ]
  %1842 = phi float [ %1137, %1745 ], [ %1137, %1806 ], [ %1137, %1804 ], [ %1137, %1791 ], [ %1788, %1761 ]
  %1843 = and i32 %1753, 12
  %1844 = icmp eq i32 %1843, 12
  br i1 %1844, label %1951, label %1845

; <label>:1845                                    ; preds = %1834
  %1846 = and i32 %1753, 2097184
  %1847 = icmp eq i32 %1846, 2097184
  %1848 = select i1 %1847, float %1320, float 0.000000e+00
  %1849 = and i32 %1753, 4194336
  %1850 = icmp eq i32 %1849, 4194336
  %1851 = select i1 %1850, float %1320, float 0.000000e+00
  %1852 = and i32 %1753, 8388640
  %1853 = icmp eq i32 %1852, 8388640
  %1854 = select i1 %1853, float %1320, float 0.000000e+00
  %1855 = and i32 %1753, 2048
  %1856 = icmp ne i32 %1855, 0
  %1857 = select i1 %1856, float %1320, float 0.000000e+00
  %1858 = and i32 %1753, 8192
  %1859 = icmp ne i32 %1858, 0
  %1860 = select i1 %1859, float %1320, float 0.000000e+00
  %1861 = icmp eq i32 %1843, 0
  br i1 %1861, label %1862, label %1887

; <label>:1862                                    ; preds = %1845
  %1863 = fsub fast float %1621, %1121
  %1864 = fsub fast float %1622, %1122
  %1865 = fmul fast float %1848, %1863
  %1866 = fmul fast float %1848, %1864
  %1867 = fadd fast float %1865, %1121
  %1868 = fadd fast float %1866, %1122
  %1869 = fsub fast float %1623, %1135
  %1870 = fmul fast float %1851, %1869
  %1871 = fadd fast float %1870, %1135
  %1872 = fsub fast float %1620, %1134
  %1873 = fmul fast float %1854, %1872
  %1874 = fadd fast float %1873, %1134
  %1875 = fsub fast float %1723, %1136
  %1876 = fmul fast float %1857, %1875
  %1877 = fadd fast float %1876, %1136
  %1878 = fsub fast float %1720, %1129
  %1879 = fsub fast float %1721, %1130
  %1880 = fsub fast float %1722, %1131
  %1881 = fmul fast float %1860, %1878
  %1882 = fmul fast float %1860, %1879
  %1883 = fmul fast float %1860, %1880
  %1884 = fadd fast float %1881, %1129
  %1885 = fadd fast float %1882, %1130
  %1886 = fadd fast float %1883, %1131
  br label %1951

; <label>:1887                                    ; preds = %1845
  %1888 = icmp eq i32 %1843, 4
  br i1 %1888, label %1889, label %1929

; <label>:1889                                    ; preds = %1887
  %1890 = fmul fast float %1848, %1621
  %1891 = fmul fast float %1848, %1622
  %1892 = fadd fast float %1890, %1121
  %1893 = fadd fast float %1891, %1122
  %1894 = call float @dx.op.binary.f32(i32 36, float %1135, float %1623)  ; FMin(a,b)
  %1895 = fsub fast float %1894, %1135
  %1896 = fmul fast float %1895, %1851
  %1897 = fadd fast float %1896, %1135
  %1898 = fadd fast float %1620, %1134
  %1899 = fmul fast float %1898, 0x3FF337FAE0000000
  %1900 = fmul fast float %1134, %1134
  %1901 = fmul fast float %1620, %1620
  %1902 = fadd fast float %1901, %1900
  %1903 = fmul fast float %1902, 0x3FE5152B00000000
  %1904 = fmul fast float %1134, 0xBFCC1F85E0000000
  %1905 = fmul fast float %1904, %1620
  %1906 = fadd fast float %1905, 0xBFE1363700000000
  %1907 = fadd fast float %1906, %1899
  %1908 = fsub fast float %1907, %1903
  %1909 = fmul fast float %1898, 0x3FBA6F0D00000000
  %1910 = fmul fast float %1902, 0x3FD0432880000000
  %1911 = fmul fast float %1134, 0xBFEF110800000000
  %1912 = fmul fast float %1911, %1620
  %1913 = fadd fast float %1912, 1.000000e+00
  %1914 = fsub fast float %1913, %1909
  %1915 = fadd fast float %1914, %1910
  %1916 = fdiv fast float %1908, %1915
  %1917 = call float @dx.op.unary.f32(i32 7, float %1916)  ; Saturate(value)
  %1918 = fsub fast float %1917, %1134
  %1919 = fmul fast float %1918, %1854
  %1920 = fadd fast float %1919, %1134
  %1921 = fmul fast float %1857, %1723
  %1922 = fadd fast float %1921, %1136
  %1923 = fmul fast float %1860, %1720
  %1924 = fmul fast float %1860, %1721
  %1925 = fmul fast float %1860, %1722
  %1926 = fadd fast float %1923, %1129
  %1927 = fadd fast float %1924, %1130
  %1928 = fadd fast float %1925, %1131
  br label %1951

; <label>:1929                                    ; preds = %1887
  %1930 = icmp eq i32 %1843, 8
  br i1 %1930, label %1931, label %1951

; <label>:1931                                    ; preds = %1929
  %1932 = fmul fast float %1848, %1621
  %1933 = fmul fast float %1848, %1622
  %1934 = fadd fast float %1932, %1121
  %1935 = fadd fast float %1933, %1122
  %1936 = call float @dx.op.binary.f32(i32 36, float %1135, float %1623)  ; FMin(a,b)
  %1937 = fsub fast float %1936, %1135
  %1938 = fmul fast float %1937, %1851
  %1939 = fadd fast float %1938, %1135
  %1940 = fsub fast float %1620, %1134
  %1941 = fmul fast float %1854, %1940
  %1942 = fadd fast float %1941, %1134
  %1943 = fmul fast float %1857, %1723
  %1944 = fadd fast float %1943, %1136
  %1945 = fmul fast float %1860, %1720
  %1946 = fmul fast float %1860, %1721
  %1947 = fmul fast float %1860, %1722
  %1948 = fadd fast float %1945, %1129
  %1949 = fadd fast float %1946, %1130
  %1950 = fadd fast float %1947, %1131
  br label %1951

; <label>:1951                                    ; preds = %1931, %1929, %1889, %1862, %1834, %1319, %1138, %1120
  %1952 = phi float [ %1121, %1834 ], [ %1121, %1319 ], [ %1121, %1120 ], [ %1934, %1931 ], [ %1121, %1929 ], [ %1892, %1889 ], [ %1867, %1862 ], [ %1121, %1138 ]
  %1953 = phi float [ %1122, %1834 ], [ %1122, %1319 ], [ %1122, %1120 ], [ %1935, %1931 ], [ %1122, %1929 ], [ %1893, %1889 ], [ %1868, %1862 ], [ %1122, %1138 ]
  %1954 = phi float [ %1835, %1834 ], [ %1123, %1319 ], [ %1123, %1120 ], [ %1835, %1931 ], [ %1835, %1929 ], [ %1835, %1889 ], [ %1835, %1862 ], [ %1123, %1138 ]
  %1955 = phi float [ %1836, %1834 ], [ %1124, %1319 ], [ %1124, %1120 ], [ %1836, %1931 ], [ %1836, %1929 ], [ %1836, %1889 ], [ %1836, %1862 ], [ %1124, %1138 ]
  %1956 = phi float [ %1837, %1834 ], [ %1125, %1319 ], [ %1125, %1120 ], [ %1837, %1931 ], [ %1837, %1929 ], [ %1837, %1889 ], [ %1837, %1862 ], [ %1125, %1138 ]
  %1957 = phi float [ %1838, %1834 ], [ %1126, %1319 ], [ %1126, %1120 ], [ %1838, %1931 ], [ %1838, %1929 ], [ %1838, %1889 ], [ %1838, %1862 ], [ %1126, %1138 ]
  %1958 = phi float [ %1839, %1834 ], [ %1127, %1319 ], [ %1127, %1120 ], [ %1839, %1931 ], [ %1839, %1929 ], [ %1839, %1889 ], [ %1839, %1862 ], [ %1127, %1138 ]
  %1959 = phi float [ %1840, %1834 ], [ %1128, %1319 ], [ %1128, %1120 ], [ %1840, %1931 ], [ %1840, %1929 ], [ %1840, %1889 ], [ %1840, %1862 ], [ %1128, %1138 ]
  %1960 = phi float [ %1129, %1834 ], [ %1129, %1319 ], [ %1129, %1120 ], [ %1948, %1931 ], [ %1129, %1929 ], [ %1926, %1889 ], [ %1884, %1862 ], [ %1129, %1138 ]
  %1961 = phi float [ %1130, %1834 ], [ %1130, %1319 ], [ %1130, %1120 ], [ %1949, %1931 ], [ %1130, %1929 ], [ %1927, %1889 ], [ %1885, %1862 ], [ %1130, %1138 ]
  %1962 = phi float [ %1131, %1834 ], [ %1131, %1319 ], [ %1131, %1120 ], [ %1950, %1931 ], [ %1131, %1929 ], [ %1928, %1889 ], [ %1886, %1862 ], [ %1131, %1138 ]
  %1963 = phi float [ %1841, %1834 ], [ %1132, %1319 ], [ %1132, %1120 ], [ %1841, %1931 ], [ %1841, %1929 ], [ %1841, %1889 ], [ %1841, %1862 ], [ %1132, %1138 ]
  %1964 = phi float [ %1134, %1834 ], [ %1134, %1319 ], [ %1134, %1120 ], [ %1942, %1931 ], [ %1134, %1929 ], [ %1920, %1889 ], [ %1874, %1862 ], [ %1134, %1138 ]
  %1965 = phi float [ %1135, %1834 ], [ %1135, %1319 ], [ %1135, %1120 ], [ %1939, %1931 ], [ %1135, %1929 ], [ %1897, %1889 ], [ %1871, %1862 ], [ %1135, %1138 ]
  %1966 = phi float [ %1136, %1834 ], [ %1136, %1319 ], [ %1136, %1120 ], [ %1944, %1931 ], [ %1136, %1929 ], [ %1922, %1889 ], [ %1877, %1862 ], [ %1136, %1138 ]
  %1967 = phi float [ %1842, %1834 ], [ %1137, %1319 ], [ %1137, %1120 ], [ %1842, %1931 ], [ %1842, %1929 ], [ %1842, %1889 ], [ %1842, %1862 ], [ %1137, %1138 ]
  br i1 %468, label %2781, label %1968

; <label>:1968                                    ; preds = %1951
  %1969 = icmp ult i32 %524, 3
  %1970 = add i32 %43, 56
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = add i32 %43, 60
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1973, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = or i32 %1975, %1972
  %1977 = icmp eq i32 %1976, 0
  br i1 %1977, label %2781, label %1978

; <label>:1978                                    ; preds = %1968
  %1979 = and i32 %1972, 262144
  %1980 = icmp ne i32 %1979, 0
  %1981 = select i1 %1980, float %49, float 1.000000e+00
  %1982 = select i1 %1980, float %50, float 0.000000e+00
  %1983 = select i1 %1980, float %51, float 0.000000e+00
  %1984 = select i1 %1980, float %52, float 1.000000e+00
  %1985 = select i1 %1980, float %53, float %81
  %1986 = select i1 %1980, float %54, float %82
  %1987 = add i32 %43, 316
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = lshr i32 %1989, 16
  %1991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1990)  ; LegacyF16ToF32(value)
  %1992 = fmul fast float %1991, 0x3F50624DE0000000
  %1993 = add i32 %43, 120
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = lshr i32 %1995, 16
  %1997 = and i32 %1996, 255
  %1998 = lshr i32 %1995, 24
  %1999 = add i32 %43, 324
  %2000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.i32 %2000, 0
  %2002 = and i32 %2001, 65535
  %2003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2002)  ; LegacyF16ToF32(value)
  %2004 = lshr i32 %2001, 16
  %2005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2004)  ; LegacyF16ToF32(value)
  %2006 = add i32 %43, 64
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = lshr i32 %2008, 22
  %2010 = shl nuw nsw i32 %2009, 5
  %2011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2010)  ; LegacyF16ToF32(value)
  %2012 = shl i32 %2008, 4
  %2013 = and i32 %2012, 32752
  %2014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2013)  ; LegacyF16ToF32(value)
  %2015 = lshr i32 %2008, 7
  %2016 = and i32 %2015, 32752
  %2017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2016)  ; LegacyF16ToF32(value)
  %2018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2019 = extractvalue %dx.types.CBufRet.f32 %2018, 3
  %2020 = fmul fast float %2019, 1.000000e+03
  %2021 = fmul fast float %418, %2020
  %2022 = call float @dx.op.unary.f32(i32 22, float %2021)  ; Frc(value)
  %2023 = fadd fast float %2022, %408
  %2024 = fmul fast float %419, %2020
  %2025 = call float @dx.op.unary.f32(i32 22, float %2024)  ; Frc(value)
  %2026 = fadd fast float %2025, %410
  %2027 = fmul fast float %1992, %2020
  %2028 = call float @dx.op.unary.f32(i32 22, float %2027)  ; Frc(value)
  %2029 = fmul fast float %2028, 0x401921FB60000000
  %2030 = fadd fast float %2029, %2011
  %2031 = call float @dx.op.unary.f32(i32 13, float %2030)  ; Sin(value)
  %2032 = call float @dx.op.unary.f32(i32 12, float %2030)  ; Cos(value)
  %2033 = fsub fast float -0.000000e+00, %2031
  %2034 = fadd fast float %1985, -5.000000e-01
  %2035 = fadd fast float %1986, -5.000000e-01
  %2036 = fmul fast float %2003, %2034
  %2037 = fmul fast float %2005, %2035
  %2038 = fadd fast float %2036, 5.000000e-01
  %2039 = fadd fast float %2037, 5.000000e-01
  %2040 = fmul fast float %2014, %2038
  %2041 = fmul fast float %2017, %2039
  %2042 = fmul fast float %2032, %2040
  %2043 = call float @dx.op.tertiary.f32(i32 46, float %2033, float %2041, float %2042)  ; FMad(a,b,c)
  %2044 = fmul fast float %2031, %2040
  %2045 = call float @dx.op.tertiary.f32(i32 46, float %2032, float %2041, float %2044)  ; FMad(a,b,c)
  %2046 = fadd fast float %2023, %2043
  %2047 = fadd fast float %2026, %2045
  %2048 = icmp ugt i32 %1997, 1
  %2049 = icmp ugt i32 %1995, 33554431
  %2050 = or i1 %2049, %2048
  br i1 %2050, label %2051, label %2076

; <label>:2051                                    ; preds = %1978
  %2052 = add i32 %43, 260
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = lshr i32 %2054, 16
  %2056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2055)  ; LegacyF16ToF32(value)
  %2057 = fmul fast float %2019, %2056
  %2058 = call float @dx.op.unary.f32(i32 22, float %2057)  ; Frc(value)
  %2059 = mul nuw nsw i32 %1997, %1998
  %2060 = uitofp i32 %2059 to float
  %2061 = fmul fast float %2058, %2060
  %2062 = call float @dx.op.unary.f32(i32 27, float %2061)  ; Round_ni(value)
  %2063 = fptoui float %2062 to i32
  %2064 = urem i32 %2063, %1997
  %2065 = udiv i32 %2063, %1998
  %2066 = call float @dx.op.unary.f32(i32 22, float %2046)  ; Frc(value)
  %2067 = call float @dx.op.unary.f32(i32 22, float %2047)  ; Frc(value)
  %2068 = uitofp i32 %2064 to float
  %2069 = uitofp i32 %2065 to float
  %2070 = fadd fast float %2066, %2068
  %2071 = fadd fast float %2067, %2069
  %2072 = uitofp i32 %1997 to float
  %2073 = uitofp i32 %1998 to float
  %2074 = fdiv fast float %2070, %2072
  %2075 = fdiv fast float %2071, %2073
  br label %2076

; <label>:2076                                    ; preds = %2051, %1978
  %2077 = phi float [ %2074, %2051 ], [ %2046, %1978 ]
  %2078 = phi float [ %2075, %2051 ], [ %2047, %1978 ]
  %2079 = and i32 %1972, 256
  %2080 = icmp eq i32 %2079, 0
  br i1 %2080, label %2127, label %2081

; <label>:2081                                    ; preds = %2076
  %2082 = add i32 %43, 496
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2082, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = add i32 %2084, 0
  %2086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2087 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2086, %dx.types.Handle %96, float %2077, float %2078, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2088 = extractvalue %dx.types.ResRet.f32 %2087, 0
  %2089 = add i32 %43, 132
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = shl i32 %2091, 4
  %2093 = and i32 %2092, 32752
  %2094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2093)  ; LegacyF16ToF32(value)
  %2095 = lshr i32 %2091, 7
  %2096 = and i32 %2095, 32752
  %2097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2096)  ; LegacyF16ToF32(value)
  %2098 = fsub fast float 1.000000e+00, %520
  %2099 = call float @dx.op.binary.f32(i32 35, float %2098, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2100 = bitcast float %520 to i32
  %2101 = sitofp i32 %2100 to float
  %2102 = fadd fast float %2101, 0xC1CFBF8940000000
  %2103 = fmul fast float %2097, %2102
  %2104 = fadd fast float %2103, 0x41CFBF8940000000
  %2105 = fptosi float %2104 to i32
  %2106 = bitcast i32 %2105 to float
  %2107 = bitcast float %2099 to i32
  %2108 = sitofp i32 %2107 to float
  %2109 = fadd fast float %2108, 0xC1CFBF8940000000
  %2110 = fmul fast float %2109, %2097
  %2111 = fadd fast float %2110, 0x41CFBF8940000000
  %2112 = fptosi float %2111 to i32
  %2113 = bitcast i32 %2112 to float
  %2114 = fmul fast float %2106, %2094
  %2115 = fmul fast float %2113, %2094
  %2116 = fsub fast float %2099, %2114
  %2117 = fadd fast float %2115, %2099
  %2118 = call float @dx.op.unary.f32(i32 7, float %2116)  ; Saturate(value)
  %2119 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2120 = fsub fast float %2088, %2118
  %2121 = fsub fast float %2119, %2118
  %2122 = bitcast float %2121 to i32
  %2123 = sub nsw i32 2129859010, %2122
  %2124 = bitcast i32 %2123 to float
  %2125 = fmul fast float %2124, %2120
  %2126 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  br label %2127

; <label>:2127                                    ; preds = %2081, %2076
  %2128 = phi float [ %2126, %2081 ], [ %520, %2076 ]
  %2129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2130 = extractvalue %dx.types.ResRet.i32 %2129, 0
  %2131 = and i32 %2130, 128
  %2132 = icmp eq i32 %2131, 0
  br i1 %2132, label %2149, label %2133

; <label>:2133                                    ; preds = %2127
  %2134 = add i32 %43, 480
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2134, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = add i32 %2136, 0
  %2138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2137, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2139 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2138, %dx.types.Handle %96, float %2077, float %2078, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2140 = extractvalue %dx.types.ResRet.f32 %2139, 0
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = and i32 %2142, 524288
  %2144 = icmp ne i32 %2143, 0
  %2145 = fcmp fast ogt float %2140, 0x3FE0101020000000
  %2146 = select i1 %2145, float 1.000000e+00, float 0.000000e+00
  %2147 = select i1 %2144, float %2146, float %2140
  %2148 = fmul fast float %2147, %2128
  br label %2149

; <label>:2149                                    ; preds = %2133, %2127
  %2150 = phi float [ %2148, %2133 ], [ %2128, %2127 ]
  %2151 = fcmp fast ult float %2150, 0x3F70101020000000
  br i1 %2151, label %2781, label %2152

; <label>:2152                                    ; preds = %2149
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = and i32 %2154, 16
  %2156 = icmp eq i32 %2155, 0
  br i1 %2156, label %2355, label %2157

; <label>:2157                                    ; preds = %2152
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = add i32 %43, 432
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = add i32 %2162, 0
  %2164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2163, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2165 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2164, %dx.types.Handle %95, float %2077, float %2078, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2166 = extractvalue %dx.types.ResRet.f32 %2165, 0
  %2167 = extractvalue %dx.types.ResRet.f32 %2165, 1
  %2168 = extractvalue %dx.types.ResRet.f32 %2165, 2
  %2169 = extractvalue %dx.types.ResRet.f32 %2165, 3
  %2170 = and i32 %2159, 255
  %2171 = uitofp i32 %2170 to float
  %2172 = lshr i32 %2159, 8
  %2173 = and i32 %2172, 255
  %2174 = uitofp i32 %2173 to float
  %2175 = fmul fast float %2169, %2171
  %2176 = fadd fast float %2175, %2174
  %2177 = fmul fast float %2176, 0x3F70101000000000
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = and i32 %2179, 512
  %2181 = icmp eq i32 %2180, 0
  br i1 %2181, label %2190, label %2182

; <label>:2182                                    ; preds = %2157
  %2183 = add i32 %43, 512
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = add i32 %2185, 0
  %2187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2186, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2188 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2187, %dx.types.Handle %96, float %2077, float %2078, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2189 = extractvalue %dx.types.ResRet.f32 %2188, 0
  br label %2190

; <label>:2190                                    ; preds = %2182, %2157
  %2191 = phi float [ %2189, %2182 ], [ 1.000000e+00, %2157 ]
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = and i32 %2193, 33554432
  %2195 = icmp eq i32 %2194, 0
  br i1 %2195, label %2302, label %2196

; <label>:2196                                    ; preds = %2190
  %2197 = add i32 %43, 256
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2197, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 65535
  %2201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2200)  ; LegacyF16ToF32(value)
  %2202 = lshr i32 %2199, 16
  %2203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2202)  ; LegacyF16ToF32(value)
  %2204 = add i32 %43, 260
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2204, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = and i32 %2206, 65535
  %2208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2207)  ; LegacyF16ToF32(value)
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = lshr i32 %2210, 24
  %2212 = uitofp i32 %2211 to float
  %2213 = fmul fast float %2212, 0x3F70101020000000
  %2214 = and i32 %2210, 255
  %2215 = uitofp i32 %2214 to float
  %2216 = fmul fast float %2215, 0x3F70101020000000
  %2217 = lshr i32 %2210, 8
  %2218 = and i32 %2217, 255
  %2219 = uitofp i32 %2218 to float
  %2220 = fmul fast float %2219, 0x3F70101020000000
  %2221 = lshr i32 %2210, 16
  %2222 = and i32 %2221, 255
  %2223 = uitofp i32 %2222 to float
  %2224 = fmul fast float %2223, 0x3F70101020000000
  %2225 = add i32 %43, 252
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = lshr i32 %2227, 24
  %2229 = uitofp i32 %2228 to float
  %2230 = fmul fast float %2229, 0x3F70101020000000
  %2231 = and i32 %2227, 255
  %2232 = uitofp i32 %2231 to float
  %2233 = fmul fast float %2232, 0x3F70101020000000
  %2234 = lshr i32 %2227, 8
  %2235 = and i32 %2234, 255
  %2236 = uitofp i32 %2235 to float
  %2237 = fmul fast float %2236, 0x3F70101020000000
  %2238 = lshr i32 %2227, 16
  %2239 = and i32 %2238, 255
  %2240 = uitofp i32 %2239 to float
  %2241 = fmul fast float %2240, 0x3F70101020000000
  %2242 = bitcast float %2166 to i32
  %2243 = ashr i32 %2242, 1
  %2244 = sub nsw i32 1597463174, %2243
  %2245 = bitcast i32 %2244 to float
  %2246 = fmul fast float %2166, 5.000000e-01
  %2247 = fmul fast float %2245, %2245
  %2248 = fmul fast float %2247, %2246
  %2249 = fsub fast float 1.500000e+00, %2248
  %2250 = fmul fast float %2245, %2166
  %2251 = fmul fast float %2250, %2249
  %2252 = bitcast float %2167 to i32
  %2253 = ashr i32 %2252, 1
  %2254 = sub nsw i32 1597463174, %2253
  %2255 = bitcast i32 %2254 to float
  %2256 = fmul fast float %2167, 5.000000e-01
  %2257 = fmul fast float %2255, %2255
  %2258 = fmul fast float %2257, %2256
  %2259 = fsub fast float 1.500000e+00, %2258
  %2260 = fmul fast float %2255, %2167
  %2261 = fmul fast float %2260, %2259
  %2262 = bitcast float %2168 to i32
  %2263 = ashr i32 %2262, 1
  %2264 = sub nsw i32 1597463174, %2263
  %2265 = bitcast i32 %2264 to float
  %2266 = fmul fast float %2168, 5.000000e-01
  %2267 = fmul fast float %2265, %2265
  %2268 = fmul fast float %2267, %2266
  %2269 = fsub fast float 1.500000e+00, %2268
  %2270 = fmul fast float %2265, %2168
  %2271 = fmul fast float %2270, %2269
  %2272 = fsub fast float %2251, %2233
  %2273 = fsub fast float %2261, %2237
  %2274 = fsub fast float %2271, %2241
  %2275 = fmul fast float %2272, %2201
  %2276 = fmul fast float %2273, %2203
  %2277 = fmul fast float %2274, %2208
  %2278 = fadd fast float %2275, %2216
  %2279 = fadd fast float %2276, %2220
  %2280 = fadd fast float %2277, %2224
  %2281 = call float @dx.op.unary.f32(i32 7, float %2278)  ; Saturate(value)
  %2282 = call float @dx.op.unary.f32(i32 7, float %2279)  ; Saturate(value)
  %2283 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  %2284 = fmul fast float %2281, %2281
  %2285 = fmul fast float %2282, %2282
  %2286 = fmul fast float %2283, %2283
  %2287 = fsub fast float %2284, %2166
  %2288 = fsub fast float %2285, %2167
  %2289 = fsub fast float %2286, %2168
  %2290 = fmul fast float %2287, %2191
  %2291 = fmul fast float %2288, %2191
  %2292 = fmul fast float %2289, %2191
  %2293 = fadd fast float %2290, %2166
  %2294 = fadd fast float %2291, %2167
  %2295 = fadd fast float %2292, %2168
  %2296 = fadd fast float %2213, %2177
  %2297 = fsub fast float %2296, %2230
  %2298 = call float @dx.op.unary.f32(i32 7, float %2297)  ; Saturate(value)
  %2299 = fsub fast float %2298, %2177
  %2300 = fmul fast float %2299, %2191
  %2301 = fadd fast float %2300, %2177
  br label %2355

; <label>:2302                                    ; preds = %2190
  %2303 = and i32 %2193, 134217728
  %2304 = icmp eq i32 %2303, 0
  br i1 %2304, label %2339, label %2305

; <label>:2305                                    ; preds = %2302
  %2306 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %2307 = call float @dx.op.unary.f32(i32 24, float %399)  ; Sqrt(value)
  %2308 = call float @dx.op.unary.f32(i32 24, float %403)  ; Sqrt(value)
  %2309 = fadd fast float %2306, -5.000000e-01
  %2310 = fadd fast float %2307, -5.000000e-01
  %2311 = fadd fast float %2308, -5.000000e-01
  %2312 = fmul fast float %2309, %2191
  %2313 = fmul fast float %2310, %2191
  %2314 = fmul fast float %2311, %2191
  %2315 = fadd fast float %2312, 5.000000e-01
  %2316 = fadd fast float %2313, 5.000000e-01
  %2317 = fadd fast float %2314, 5.000000e-01
  %2318 = call float @dx.op.unary.f32(i32 24, float %2166)  ; Sqrt(value)
  %2319 = call float @dx.op.unary.f32(i32 24, float %2167)  ; Sqrt(value)
  %2320 = call float @dx.op.unary.f32(i32 24, float %2168)  ; Sqrt(value)
  %2321 = fmul fast float %2315, 2.000000e+00
  %2322 = fsub fast float 1.000000e+00, %2321
  %2323 = fmul fast float %2322, %2318
  %2324 = fadd fast float %2323, %2321
  %2325 = fmul fast float %2324, %2318
  %2326 = fmul fast float %2316, 2.000000e+00
  %2327 = fsub fast float 1.000000e+00, %2326
  %2328 = fmul fast float %2327, %2319
  %2329 = fadd fast float %2328, %2326
  %2330 = fmul fast float %2329, %2319
  %2331 = fmul fast float %2317, 2.000000e+00
  %2332 = fsub fast float 1.000000e+00, %2331
  %2333 = fmul fast float %2332, %2320
  %2334 = fadd fast float %2333, %2331
  %2335 = fmul fast float %2334, %2320
  %2336 = fmul fast float %2325, %2325
  %2337 = fmul fast float %2330, %2330
  %2338 = fmul fast float %2335, %2335
  br label %2355

; <label>:2339                                    ; preds = %2302
  %2340 = fmul fast float %395, %395
  %2341 = fmul fast float %399, %399
  %2342 = fmul fast float %403, %403
  %2343 = fadd fast float %2340, -1.000000e+00
  %2344 = fadd fast float %2341, -1.000000e+00
  %2345 = fadd fast float %2342, -1.000000e+00
  %2346 = fmul fast float %2191, %2343
  %2347 = fmul fast float %2191, %2344
  %2348 = fmul fast float %2191, %2345
  %2349 = fadd fast float %2346, 1.000000e+00
  %2350 = fadd fast float %2347, 1.000000e+00
  %2351 = fadd fast float %2348, 1.000000e+00
  %2352 = fmul fast float %2349, %2166
  %2353 = fmul fast float %2350, %2167
  %2354 = fmul fast float %2351, %2168
  br label %2355

; <label>:2355                                    ; preds = %2339, %2305, %2196, %2152
  %2356 = phi float [ %2301, %2196 ], [ %2177, %2305 ], [ %2177, %2339 ], [ 0x3FA23C0BE0000000, %2152 ]
  %2357 = phi float [ %2293, %2196 ], [ %2336, %2305 ], [ %2352, %2339 ], [ 1.000000e+00, %2152 ]
  %2358 = phi float [ %2294, %2196 ], [ %2337, %2305 ], [ %2353, %2339 ], [ 1.000000e+00, %2152 ]
  %2359 = phi float [ %2295, %2196 ], [ %2338, %2305 ], [ %2354, %2339 ], [ 1.000000e+00, %2152 ]
  %2360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2361 = extractvalue %dx.types.CBufRet.i32 %2360, 1
  %2362 = and i32 %2361, 1
  %2363 = icmp ne i32 %2362, 0
  %2364 = add i32 %43, 356
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = and i32 %2366, 32
  %2368 = icmp ne i32 %2367, 0
  %2369 = and i1 %2363, %2368
  %2370 = select i1 %2369, float 1.000000e+00, float %2357
  %2371 = select i1 %2369, float 0x3FD3333340000000, float %2358
  %2372 = select i1 %2369, float 0x3FD3333340000000, float %2359
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = and i32 %2374, 32
  %2376 = icmp eq i32 %2375, 0
  br i1 %2376, label %2449, label %2377

; <label>:2377                                    ; preds = %2355
  %2378 = add i32 %43, 124
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2378, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = add i32 %43, 448
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = add i32 %2383, 0
  %2385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2386 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2385, %dx.types.Handle %95, float %2077, float %2078, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2387 = extractvalue %dx.types.ResRet.f32 %2386, 0
  %2388 = extractvalue %dx.types.ResRet.f32 %2386, 1
  %2389 = extractvalue %dx.types.ResRet.f32 %2386, 2
  %2390 = extractvalue %dx.types.ResRet.f32 %2386, 3
  %2391 = and i32 %2380, 255
  %2392 = uitofp i32 %2391 to float
  %2393 = lshr i32 %2380, 8
  %2394 = and i32 %2393, 255
  %2395 = uitofp i32 %2394 to float
  %2396 = lshr i32 %2380, 16
  %2397 = and i32 %2396, 255
  %2398 = uitofp i32 %2397 to float
  %2399 = fmul fast float %2398, 0x3F70101000000000
  %2400 = fmul fast float %2387, %2392
  %2401 = fadd fast float %2400, %2395
  %2402 = fmul fast float %2401, 0x3F70101000000000
  %2403 = fadd fast float %2388, -5.000000e-01
  %2404 = fadd fast float %2390, -5.000000e-01
  %2405 = fmul fast float %2403, %2399
  %2406 = fmul fast float %2404, %2399
  %2407 = fadd fast float %2405, 5.000000e-01
  %2408 = fadd fast float %2406, 5.000000e-01
  %2409 = fmul fast float %2407, 2.000000e+00
  %2410 = fadd fast float %2409, -1.000000e+00
  %2411 = fmul fast float %2408, 2.000000e+00
  %2412 = fadd fast float %2411, -1.000000e+00
  %2413 = fadd fast float %2410, %2412
  %2414 = fmul fast float %2413, 5.000000e-01
  %2415 = fsub fast float %2410, %2412
  %2416 = fmul fast float %2415, 5.000000e-01
  %2417 = call float @dx.op.unary.f32(i32 6, float %2414)  ; FAbs(value)
  %2418 = fsub fast float 1.000000e+00, %2417
  %2419 = call float @dx.op.unary.f32(i32 6, float %2416)  ; FAbs(value)
  %2420 = fsub fast float %2418, %2419
  %2421 = call float @dx.op.dot3.f32(i32 55, float %2414, float %2416, float %2420, float %2414, float %2416, float %2420)  ; Dot3(ax,ay,az,bx,by,bz)
  %2422 = call float @dx.op.unary.f32(i32 25, float %2421)  ; Rsqrt(value)
  %2423 = fmul fast float %2414, %2422
  %2424 = fmul fast float %2416, %2422
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = and i32 %2426, 67108864
  %2428 = icmp eq i32 %2427, 0
  br i1 %2428, label %2445, label %2429

; <label>:2429                                    ; preds = %2377
  %2430 = add i32 %43, 312
  %2431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2430, i32 undef)  ; BufferLoad(srv,index,wot)
  %2432 = extractvalue %dx.types.ResRet.i32 %2431, 0
  %2433 = and i32 %2432, 65535
  %2434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2433)  ; LegacyF16ToF32(value)
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = and i32 %2436, 65535
  %2438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2437)  ; LegacyF16ToF32(value)
  %2439 = lshr i32 %2432, 16
  %2440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2439)  ; LegacyF16ToF32(value)
  %2441 = fsub fast float %2402, %2440
  %2442 = fmul fast float %2441, %2434
  %2443 = fadd fast float %2442, %2438
  %2444 = call float @dx.op.unary.f32(i32 7, float %2443)  ; Saturate(value)
  br label %2445

; <label>:2445                                    ; preds = %2429, %2377
  %2446 = phi float [ %2444, %2429 ], [ %2402, %2377 ]
  %2447 = call float @dx.op.dot2.f32(i32 54, float %2423, float %2424, float %1981, float %1982)  ; Dot2(ax,ay,bx,by)
  %2448 = call float @dx.op.dot2.f32(i32 54, float %2423, float %2424, float %1983, float %1984)  ; Dot2(ax,ay,bx,by)
  br label %2449

; <label>:2449                                    ; preds = %2445, %2355
  %2450 = phi float [ %2446, %2445 ], [ 0x3FD6666660000000, %2355 ]
  %2451 = phi float [ %2447, %2445 ], [ 0.000000e+00, %2355 ]
  %2452 = phi float [ %2448, %2445 ], [ 0.000000e+00, %2355 ]
  %2453 = phi float [ %2389, %2445 ], [ 1.000000e+00, %2355 ]
  %2454 = add i32 %43, 192
  %2455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.i32 %2455, 0
  %2457 = lshr i32 %2456, 22
  %2458 = shl nuw nsw i32 %2457, 5
  %2459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2458)  ; LegacyF16ToF32(value)
  %2460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.i32 %2460, 0
  %2462 = and i32 %2461, 64
  %2463 = icmp eq i32 %2462, 0
  br i1 %2463, label %2497, label %2464

; <label>:2464                                    ; preds = %2449
  %2465 = add i32 %43, 464
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2465, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = add i32 %2467, 0
  %2469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = and i32 %2471, 131072
  %2473 = icmp eq i32 %2472, 0
  %2474 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2469, %dx.types.Handle %95, float %2077, float %2078, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2475 = extractvalue %dx.types.ResRet.f32 %2474, 0
  %2476 = extractvalue %dx.types.ResRet.f32 %2474, 1
  %2477 = extractvalue %dx.types.ResRet.f32 %2474, 2
  %2478 = fmul fast float %2475, %383
  %2479 = fmul fast float %2476, %386
  %2480 = fmul fast float %2477, %389
  br i1 %2473, label %2487, label %2481

; <label>:2481                                    ; preds = %2464
  %2482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2483 = extractvalue %dx.types.CBufRet.f32 %2482, 0
  %2484 = fmul fast float %2483, %2478
  %2485 = fmul fast float %2483, %2479
  %2486 = fmul fast float %2483, %2480
  br label %2487

; <label>:2487                                    ; preds = %2481, %2464
  %2488 = phi float [ %2484, %2481 ], [ %2478, %2464 ]
  %2489 = phi float [ %2485, %2481 ], [ %2479, %2464 ]
  %2490 = phi float [ %2486, %2481 ], [ %2480, %2464 ]
  %2491 = fmul fast float %2488, %2459
  %2492 = select i1 %282, float %2491, float %2488
  %2493 = call float @dx.op.dot3.f32(i32 55, float %2492, float %2489, float %2490, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2494 = select i1 %282, float 0.000000e+00, float %2488
  %2495 = select i1 %282, float %2493, float %2489
  %2496 = select i1 %282, float 0.000000e+00, float %2490
  br label %2497

; <label>:2497                                    ; preds = %2487, %2449
  %2498 = phi float [ %2494, %2487 ], [ 0.000000e+00, %2449 ]
  %2499 = phi float [ %2495, %2487 ], [ 0.000000e+00, %2449 ]
  %2500 = phi float [ %2496, %2487 ], [ 0.000000e+00, %2449 ]
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = and i32 %2502, 10240
  %2504 = icmp eq i32 %2503, 0
  br i1 %2504, label %2549, label %2505

; <label>:2505                                    ; preds = %2497
  %2506 = add i32 %43, 528
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = add i32 %2508, 0
  %2510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2509, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2511 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2510, %dx.types.Handle %96, float %2077, float %2078, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2512 = extractvalue %dx.types.ResRet.f32 %2511, 1
  %2513 = extractvalue %dx.types.ResRet.f32 %2511, 3
  %2514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.i32 %2514, 0
  %2516 = and i32 %2515, 1048576
  %2517 = icmp ne i32 %2516, 0
  %2518 = and i32 %2515, 8192
  %2519 = icmp eq i32 %2518, 0
  br i1 %2519, label %2535, label %2520

; <label>:2520                                    ; preds = %2505
  %2521 = extractvalue %dx.types.ResRet.f32 %2511, 2
  %2522 = select i1 %2517, float %2521, float %2512
  %2523 = extractvalue %dx.types.ResRet.f32 %2511, 0
  %2524 = select i1 %2517, float %2523, float %2512
  %2525 = add i32 %43, 128
  %2526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2525, i32 undef)  ; BufferLoad(srv,index,wot)
  %2527 = extractvalue %dx.types.ResRet.i32 %2526, 0
  %2528 = lshr i32 %2527, 16
  %2529 = and i32 %2528, 255
  %2530 = uitofp i32 %2529 to float
  %2531 = fmul fast float %2530, 0x3F80101020000000
  %2532 = fmul fast float %2531, %2524
  %2533 = fmul fast float %2531, %2512
  %2534 = fmul fast float %2531, %2522
  br label %2535

; <label>:2535                                    ; preds = %2520, %2505
  %2536 = phi float [ %2532, %2520 ], [ 0.000000e+00, %2505 ]
  %2537 = phi float [ %2533, %2520 ], [ 0.000000e+00, %2505 ]
  %2538 = phi float [ %2534, %2520 ], [ 0.000000e+00, %2505 ]
  %2539 = and i32 %2515, 2048
  %2540 = icmp eq i32 %2539, 0
  br i1 %2540, label %2549, label %2541

; <label>:2541                                    ; preds = %2535
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = shl i32 %2543, 4
  %2545 = and i32 %2544, 32752
  %2546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2545)  ; LegacyF16ToF32(value)
  %2547 = fmul fast float %2546, %2513
  %2548 = call float @dx.op.binary.f32(i32 35, float %2547, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2549

; <label>:2549                                    ; preds = %2541, %2535, %2497
  %2550 = phi float [ %2536, %2541 ], [ %2536, %2535 ], [ 0.000000e+00, %2497 ]
  %2551 = phi float [ %2537, %2541 ], [ %2537, %2535 ], [ 0.000000e+00, %2497 ]
  %2552 = phi float [ %2538, %2541 ], [ %2538, %2535 ], [ 0.000000e+00, %2497 ]
  %2553 = phi float [ %2548, %2541 ], [ 0x3F70101020000000, %2535 ], [ 0x3F70101020000000, %2497 ]
  %2554 = add i32 %43, 128
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = and i32 %2556, 255
  %2558 = uitofp i32 %2557 to float
  %2559 = lshr i32 %2556, 8
  %2560 = and i32 %2559, 255
  %2561 = uitofp i32 %2560 to float
  %2562 = call float @dx.op.dot3.f32(i32 55, float %2370, float %2371, float %2372, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2563 = fmul fast float %2561, %2562
  %2564 = fadd fast float %2563, %2558
  %2565 = fmul fast float %2564, 0x3F70101020000000
  %2566 = call float @dx.op.unary.f32(i32 7, float %2565)  ; Saturate(value)
  br i1 %1969, label %2567, label %2575

; <label>:2567                                    ; preds = %2549
  %2568 = fsub fast float 1.000000e+00, %2150
  %2569 = fmul fast float %2568, %1954
  %2570 = fmul fast float %2568, %1955
  %2571 = fmul fast float %2568, %1956
  %2572 = fmul fast float %2568, %1957
  %2573 = fmul fast float %2568, %1958
  %2574 = fmul fast float %2568, %1959
  br label %2575

; <label>:2575                                    ; preds = %2567, %2549
  %2576 = phi float [ %2569, %2567 ], [ %1954, %2549 ]
  %2577 = phi float [ %2570, %2567 ], [ %1955, %2549 ]
  %2578 = phi float [ %2571, %2567 ], [ %1956, %2549 ]
  %2579 = phi float [ %2572, %2567 ], [ %1957, %2549 ]
  %2580 = phi float [ %2573, %2567 ], [ %1958, %2549 ]
  %2581 = phi float [ %2574, %2567 ], [ %1959, %2549 ]
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = and i32 %2583, 3
  %2585 = icmp eq i32 %2584, 3
  br i1 %2585, label %2664, label %2586

; <label>:2586                                    ; preds = %2575
  %2587 = and i32 %2583, 16
  %2588 = icmp ne i32 %2587, 0
  %2589 = select i1 %2588, float %2150, float 0.000000e+00
  %2590 = icmp eq i32 %2584, 0
  br i1 %2590, label %2591, label %2619

; <label>:2591                                    ; preds = %2586
  %2592 = and i32 %2583, 64
  %2593 = icmp ne i32 %2592, 0
  %2594 = select i1 %2593, float %2150, float 0.000000e+00
  %2595 = fsub fast float %2370, %2576
  %2596 = fsub fast float %2371, %2577
  %2597 = fsub fast float %2372, %2578
  %2598 = fmul fast float %2589, %2595
  %2599 = fmul fast float %2589, %2596
  %2600 = fmul fast float %2589, %2597
  %2601 = fadd fast float %2598, %2576
  %2602 = fadd fast float %2599, %2577
  %2603 = fadd fast float %2600, %2578
  %2604 = fsub fast float %2356, %1963
  %2605 = fmul fast float %2589, %2604
  %2606 = fadd fast float %2605, %1963
  %2607 = fsub fast float %2498, %2579
  %2608 = fsub fast float %2499, %2580
  %2609 = fsub fast float %2500, %2581
  %2610 = fmul fast float %2594, %2607
  %2611 = fmul fast float %2594, %2608
  %2612 = fmul fast float %2594, %2609
  %2613 = fadd fast float %2610, %2579
  %2614 = fadd fast float %2611, %2580
  %2615 = fadd fast float %2612, %2581
  %2616 = fsub fast float %2566, %1967
  %2617 = fmul fast float %2589, %2616
  %2618 = fadd fast float %2617, %1967
  br label %2664

; <label>:2619                                    ; preds = %2586
  %2620 = icmp eq i32 %2584, 1
  br i1 %2620, label %2621, label %2634

; <label>:2621                                    ; preds = %2619
  %2622 = fadd fast float %2370, -1.000000e+00
  %2623 = fadd fast float %2371, -1.000000e+00
  %2624 = fadd fast float %2372, -1.000000e+00
  %2625 = fmul fast float %2589, %2622
  %2626 = fmul fast float %2589, %2623
  %2627 = fmul fast float %2589, %2624
  %2628 = fadd fast float %2625, 1.000000e+00
  %2629 = fadd fast float %2626, 1.000000e+00
  %2630 = fadd fast float %2627, 1.000000e+00
  %2631 = fmul fast float %2628, %2576
  %2632 = fmul fast float %2629, %2577
  %2633 = fmul fast float %2630, %2578
  br label %2664

; <label>:2634                                    ; preds = %2619
  %2635 = icmp eq i32 %2584, 2
  br i1 %2635, label %2636, label %2664

; <label>:2636                                    ; preds = %2634
  %2637 = call float @dx.op.unary.f32(i32 24, float %2370)  ; Sqrt(value)
  %2638 = call float @dx.op.unary.f32(i32 24, float %2371)  ; Sqrt(value)
  %2639 = call float @dx.op.unary.f32(i32 24, float %2372)  ; Sqrt(value)
  %2640 = fadd fast float %2637, -5.000000e-01
  %2641 = fadd fast float %2638, -5.000000e-01
  %2642 = fadd fast float %2639, -5.000000e-01
  %2643 = fmul fast float %2640, %2589
  %2644 = fmul fast float %2641, %2589
  %2645 = fmul fast float %2642, %2589
  %2646 = fadd fast float %2643, 5.000000e-01
  %2647 = fadd fast float %2644, 5.000000e-01
  %2648 = fadd fast float %2645, 5.000000e-01
  %2649 = fmul fast float %2646, 2.000000e+00
  %2650 = fsub fast float 1.000000e+00, %2649
  %2651 = fmul fast float %2650, %2576
  %2652 = fadd fast float %2651, %2649
  %2653 = fmul fast float %2652, %2576
  %2654 = fmul fast float %2647, 2.000000e+00
  %2655 = fsub fast float 1.000000e+00, %2654
  %2656 = fmul fast float %2655, %2577
  %2657 = fadd fast float %2656, %2654
  %2658 = fmul fast float %2657, %2577
  %2659 = fmul fast float %2648, 2.000000e+00
  %2660 = fsub fast float 1.000000e+00, %2659
  %2661 = fmul fast float %2660, %2578
  %2662 = fadd fast float %2661, %2659
  %2663 = fmul fast float %2662, %2578
  br label %2664

; <label>:2664                                    ; preds = %2636, %2634, %2621, %2591, %2575
  %2665 = phi float [ %2576, %2575 ], [ %2653, %2636 ], [ %2576, %2634 ], [ %2631, %2621 ], [ %2601, %2591 ]
  %2666 = phi float [ %2577, %2575 ], [ %2658, %2636 ], [ %2577, %2634 ], [ %2632, %2621 ], [ %2602, %2591 ]
  %2667 = phi float [ %2578, %2575 ], [ %2663, %2636 ], [ %2578, %2634 ], [ %2633, %2621 ], [ %2603, %2591 ]
  %2668 = phi float [ %2579, %2575 ], [ %2579, %2636 ], [ %2579, %2634 ], [ %2579, %2621 ], [ %2613, %2591 ]
  %2669 = phi float [ %2580, %2575 ], [ %2580, %2636 ], [ %2580, %2634 ], [ %2580, %2621 ], [ %2614, %2591 ]
  %2670 = phi float [ %2581, %2575 ], [ %2581, %2636 ], [ %2581, %2634 ], [ %2581, %2621 ], [ %2615, %2591 ]
  %2671 = phi float [ %1963, %2575 ], [ %1963, %2636 ], [ %1963, %2634 ], [ %1963, %2621 ], [ %2606, %2591 ]
  %2672 = phi float [ %1967, %2575 ], [ %1967, %2636 ], [ %1967, %2634 ], [ %1967, %2621 ], [ %2618, %2591 ]
  %2673 = and i32 %2583, 12
  %2674 = icmp eq i32 %2673, 12
  br i1 %2674, label %2781, label %2675

; <label>:2675                                    ; preds = %2664
  %2676 = and i32 %2583, 2097184
  %2677 = icmp eq i32 %2676, 2097184
  %2678 = select i1 %2677, float %2150, float 0.000000e+00
  %2679 = and i32 %2583, 4194336
  %2680 = icmp eq i32 %2679, 4194336
  %2681 = select i1 %2680, float %2150, float 0.000000e+00
  %2682 = and i32 %2583, 8388640
  %2683 = icmp eq i32 %2682, 8388640
  %2684 = select i1 %2683, float %2150, float 0.000000e+00
  %2685 = and i32 %2583, 2048
  %2686 = icmp ne i32 %2685, 0
  %2687 = select i1 %2686, float %2150, float 0.000000e+00
  %2688 = and i32 %2583, 8192
  %2689 = icmp ne i32 %2688, 0
  %2690 = select i1 %2689, float %2150, float 0.000000e+00
  %2691 = icmp eq i32 %2673, 0
  br i1 %2691, label %2692, label %2717

; <label>:2692                                    ; preds = %2675
  %2693 = fsub fast float %2451, %1952
  %2694 = fsub fast float %2452, %1953
  %2695 = fmul fast float %2678, %2693
  %2696 = fmul fast float %2678, %2694
  %2697 = fadd fast float %2695, %1952
  %2698 = fadd fast float %2696, %1953
  %2699 = fsub fast float %2453, %1965
  %2700 = fmul fast float %2681, %2699
  %2701 = fadd fast float %2700, %1965
  %2702 = fsub fast float %2450, %1964
  %2703 = fmul fast float %2684, %2702
  %2704 = fadd fast float %2703, %1964
  %2705 = fsub fast float %2553, %1966
  %2706 = fmul fast float %2687, %2705
  %2707 = fadd fast float %2706, %1966
  %2708 = fsub fast float %2550, %1960
  %2709 = fsub fast float %2551, %1961
  %2710 = fsub fast float %2552, %1962
  %2711 = fmul fast float %2690, %2708
  %2712 = fmul fast float %2690, %2709
  %2713 = fmul fast float %2690, %2710
  %2714 = fadd fast float %2711, %1960
  %2715 = fadd fast float %2712, %1961
  %2716 = fadd fast float %2713, %1962
  br label %2781

; <label>:2717                                    ; preds = %2675
  %2718 = icmp eq i32 %2673, 4
  br i1 %2718, label %2719, label %2759

; <label>:2719                                    ; preds = %2717
  %2720 = fmul fast float %2678, %2451
  %2721 = fmul fast float %2678, %2452
  %2722 = fadd fast float %2720, %1952
  %2723 = fadd fast float %2721, %1953
  %2724 = call float @dx.op.binary.f32(i32 36, float %1965, float %2453)  ; FMin(a,b)
  %2725 = fsub fast float %2724, %1965
  %2726 = fmul fast float %2725, %2681
  %2727 = fadd fast float %2726, %1965
  %2728 = fadd fast float %2450, %1964
  %2729 = fmul fast float %2728, 0x3FF337FAE0000000
  %2730 = fmul fast float %1964, %1964
  %2731 = fmul fast float %2450, %2450
  %2732 = fadd fast float %2731, %2730
  %2733 = fmul fast float %2732, 0x3FE5152B00000000
  %2734 = fmul fast float %1964, 0xBFCC1F85E0000000
  %2735 = fmul fast float %2734, %2450
  %2736 = fadd fast float %2735, 0xBFE1363700000000
  %2737 = fadd fast float %2736, %2729
  %2738 = fsub fast float %2737, %2733
  %2739 = fmul fast float %2728, 0x3FBA6F0D00000000
  %2740 = fmul fast float %2732, 0x3FD0432880000000
  %2741 = fmul fast float %1964, 0xBFEF110800000000
  %2742 = fmul fast float %2741, %2450
  %2743 = fadd fast float %2742, 1.000000e+00
  %2744 = fsub fast float %2743, %2739
  %2745 = fadd fast float %2744, %2740
  %2746 = fdiv fast float %2738, %2745
  %2747 = call float @dx.op.unary.f32(i32 7, float %2746)  ; Saturate(value)
  %2748 = fsub fast float %2747, %1964
  %2749 = fmul fast float %2748, %2684
  %2750 = fadd fast float %2749, %1964
  %2751 = fmul fast float %2687, %2553
  %2752 = fadd fast float %2751, %1966
  %2753 = fmul fast float %2690, %2550
  %2754 = fmul fast float %2690, %2551
  %2755 = fmul fast float %2690, %2552
  %2756 = fadd fast float %2753, %1960
  %2757 = fadd fast float %2754, %1961
  %2758 = fadd fast float %2755, %1962
  br label %2781

; <label>:2759                                    ; preds = %2717
  %2760 = icmp eq i32 %2673, 8
  br i1 %2760, label %2761, label %2781

; <label>:2761                                    ; preds = %2759
  %2762 = fmul fast float %2678, %2451
  %2763 = fmul fast float %2678, %2452
  %2764 = fadd fast float %2762, %1952
  %2765 = fadd fast float %2763, %1953
  %2766 = call float @dx.op.binary.f32(i32 36, float %1965, float %2453)  ; FMin(a,b)
  %2767 = fsub fast float %2766, %1965
  %2768 = fmul fast float %2767, %2681
  %2769 = fadd fast float %2768, %1965
  %2770 = fsub fast float %2450, %1964
  %2771 = fmul fast float %2684, %2770
  %2772 = fadd fast float %2771, %1964
  %2773 = fmul fast float %2687, %2553
  %2774 = fadd fast float %2773, %1966
  %2775 = fmul fast float %2690, %2550
  %2776 = fmul fast float %2690, %2551
  %2777 = fmul fast float %2690, %2552
  %2778 = fadd fast float %2775, %1960
  %2779 = fadd fast float %2776, %1961
  %2780 = fadd fast float %2777, %1962
  br label %2781

; <label>:2781                                    ; preds = %2761, %2759, %2719, %2692, %2664, %2149, %1968, %1951
  %2782 = phi float [ %1952, %2664 ], [ %1952, %2149 ], [ %1952, %1951 ], [ %2764, %2761 ], [ %1952, %2759 ], [ %2722, %2719 ], [ %2697, %2692 ], [ %1952, %1968 ]
  %2783 = phi float [ %1953, %2664 ], [ %1953, %2149 ], [ %1953, %1951 ], [ %2765, %2761 ], [ %1953, %2759 ], [ %2723, %2719 ], [ %2698, %2692 ], [ %1953, %1968 ]
  %2784 = phi float [ %2665, %2664 ], [ %1954, %2149 ], [ %1954, %1951 ], [ %2665, %2761 ], [ %2665, %2759 ], [ %2665, %2719 ], [ %2665, %2692 ], [ %1954, %1968 ]
  %2785 = phi float [ %2666, %2664 ], [ %1955, %2149 ], [ %1955, %1951 ], [ %2666, %2761 ], [ %2666, %2759 ], [ %2666, %2719 ], [ %2666, %2692 ], [ %1955, %1968 ]
  %2786 = phi float [ %2667, %2664 ], [ %1956, %2149 ], [ %1956, %1951 ], [ %2667, %2761 ], [ %2667, %2759 ], [ %2667, %2719 ], [ %2667, %2692 ], [ %1956, %1968 ]
  %2787 = phi float [ %2668, %2664 ], [ %1957, %2149 ], [ %1957, %1951 ], [ %2668, %2761 ], [ %2668, %2759 ], [ %2668, %2719 ], [ %2668, %2692 ], [ %1957, %1968 ]
  %2788 = phi float [ %2669, %2664 ], [ %1958, %2149 ], [ %1958, %1951 ], [ %2669, %2761 ], [ %2669, %2759 ], [ %2669, %2719 ], [ %2669, %2692 ], [ %1958, %1968 ]
  %2789 = phi float [ %2670, %2664 ], [ %1959, %2149 ], [ %1959, %1951 ], [ %2670, %2761 ], [ %2670, %2759 ], [ %2670, %2719 ], [ %2670, %2692 ], [ %1959, %1968 ]
  %2790 = phi float [ %1960, %2664 ], [ %1960, %2149 ], [ %1960, %1951 ], [ %2778, %2761 ], [ %1960, %2759 ], [ %2756, %2719 ], [ %2714, %2692 ], [ %1960, %1968 ]
  %2791 = phi float [ %1961, %2664 ], [ %1961, %2149 ], [ %1961, %1951 ], [ %2779, %2761 ], [ %1961, %2759 ], [ %2757, %2719 ], [ %2715, %2692 ], [ %1961, %1968 ]
  %2792 = phi float [ %1962, %2664 ], [ %1962, %2149 ], [ %1962, %1951 ], [ %2780, %2761 ], [ %1962, %2759 ], [ %2758, %2719 ], [ %2716, %2692 ], [ %1962, %1968 ]
  %2793 = phi float [ %2671, %2664 ], [ %1963, %2149 ], [ %1963, %1951 ], [ %2671, %2761 ], [ %2671, %2759 ], [ %2671, %2719 ], [ %2671, %2692 ], [ %1963, %1968 ]
  %2794 = phi float [ %1964, %2664 ], [ %1964, %2149 ], [ %1964, %1951 ], [ %2772, %2761 ], [ %1964, %2759 ], [ %2750, %2719 ], [ %2704, %2692 ], [ %1964, %1968 ]
  %2795 = phi float [ %1965, %2664 ], [ %1965, %2149 ], [ %1965, %1951 ], [ %2769, %2761 ], [ %1965, %2759 ], [ %2727, %2719 ], [ %2701, %2692 ], [ %1965, %1968 ]
  %2796 = phi float [ %1966, %2664 ], [ %1966, %2149 ], [ %1966, %1951 ], [ %2774, %2761 ], [ %1966, %2759 ], [ %2752, %2719 ], [ %2707, %2692 ], [ %1966, %1968 ]
  %2797 = phi float [ %2672, %2664 ], [ %1967, %2149 ], [ %1967, %1951 ], [ %2672, %2761 ], [ %2672, %2759 ], [ %2672, %2719 ], [ %2672, %2692 ], [ %1967, %1968 ]
  br i1 %470, label %3611, label %2798

; <label>:2798                                    ; preds = %2781
  %2799 = icmp ult i32 %524, 4
  %2800 = add i32 %43, 72
  %2801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2802 = extractvalue %dx.types.ResRet.i32 %2801, 0
  %2803 = add i32 %43, 76
  %2804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2803, i32 undef)  ; BufferLoad(srv,index,wot)
  %2805 = extractvalue %dx.types.ResRet.i32 %2804, 0
  %2806 = or i32 %2805, %2802
  %2807 = icmp eq i32 %2806, 0
  br i1 %2807, label %3611, label %2808

; <label>:2808                                    ; preds = %2798
  %2809 = and i32 %2802, 262144
  %2810 = icmp ne i32 %2809, 0
  %2811 = select i1 %2810, float %49, float 1.000000e+00
  %2812 = select i1 %2810, float %50, float 0.000000e+00
  %2813 = select i1 %2810, float %51, float 0.000000e+00
  %2814 = select i1 %2810, float %52, float 1.000000e+00
  %2815 = select i1 %2810, float %53, float %81
  %2816 = select i1 %2810, float %54, float %82
  %2817 = add i32 %43, 332
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = lshr i32 %2819, 16
  %2821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2820)  ; LegacyF16ToF32(value)
  %2822 = fmul fast float %2821, 0x3F50624DE0000000
  %2823 = add i32 %43, 136
  %2824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2825 = extractvalue %dx.types.ResRet.i32 %2824, 0
  %2826 = lshr i32 %2825, 16
  %2827 = and i32 %2826, 255
  %2828 = lshr i32 %2825, 24
  %2829 = add i32 %43, 340
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = and i32 %2831, 65535
  %2833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2832)  ; LegacyF16ToF32(value)
  %2834 = lshr i32 %2831, 16
  %2835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2834)  ; LegacyF16ToF32(value)
  %2836 = add i32 %43, 80
  %2837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2838 = extractvalue %dx.types.ResRet.i32 %2837, 0
  %2839 = lshr i32 %2838, 22
  %2840 = shl nuw nsw i32 %2839, 5
  %2841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2840)  ; LegacyF16ToF32(value)
  %2842 = shl i32 %2838, 4
  %2843 = and i32 %2842, 32752
  %2844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2843)  ; LegacyF16ToF32(value)
  %2845 = lshr i32 %2838, 7
  %2846 = and i32 %2845, 32752
  %2847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2846)  ; LegacyF16ToF32(value)
  %2848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2849 = extractvalue %dx.types.CBufRet.f32 %2848, 3
  %2850 = fmul fast float %2849, 1.000000e+03
  %2851 = fmul fast float %460, %2850
  %2852 = call float @dx.op.unary.f32(i32 22, float %2851)  ; Frc(value)
  %2853 = fadd fast float %2852, %450
  %2854 = fmul fast float %461, %2850
  %2855 = call float @dx.op.unary.f32(i32 22, float %2854)  ; Frc(value)
  %2856 = fadd fast float %2855, %452
  %2857 = fmul fast float %2822, %2850
  %2858 = call float @dx.op.unary.f32(i32 22, float %2857)  ; Frc(value)
  %2859 = fmul fast float %2858, 0x401921FB60000000
  %2860 = fadd fast float %2859, %2841
  %2861 = call float @dx.op.unary.f32(i32 13, float %2860)  ; Sin(value)
  %2862 = call float @dx.op.unary.f32(i32 12, float %2860)  ; Cos(value)
  %2863 = fsub fast float -0.000000e+00, %2861
  %2864 = fadd fast float %2815, -5.000000e-01
  %2865 = fadd fast float %2816, -5.000000e-01
  %2866 = fmul fast float %2833, %2864
  %2867 = fmul fast float %2835, %2865
  %2868 = fadd fast float %2866, 5.000000e-01
  %2869 = fadd fast float %2867, 5.000000e-01
  %2870 = fmul fast float %2844, %2868
  %2871 = fmul fast float %2847, %2869
  %2872 = fmul fast float %2862, %2870
  %2873 = call float @dx.op.tertiary.f32(i32 46, float %2863, float %2871, float %2872)  ; FMad(a,b,c)
  %2874 = fmul fast float %2861, %2870
  %2875 = call float @dx.op.tertiary.f32(i32 46, float %2862, float %2871, float %2874)  ; FMad(a,b,c)
  %2876 = fadd fast float %2853, %2873
  %2877 = fadd fast float %2856, %2875
  %2878 = icmp ugt i32 %2827, 1
  %2879 = icmp ugt i32 %2825, 33554431
  %2880 = or i1 %2879, %2878
  br i1 %2880, label %2881, label %2906

; <label>:2881                                    ; preds = %2808
  %2882 = add i32 %43, 276
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = lshr i32 %2884, 16
  %2886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2885)  ; LegacyF16ToF32(value)
  %2887 = fmul fast float %2849, %2886
  %2888 = call float @dx.op.unary.f32(i32 22, float %2887)  ; Frc(value)
  %2889 = mul nuw nsw i32 %2827, %2828
  %2890 = uitofp i32 %2889 to float
  %2891 = fmul fast float %2888, %2890
  %2892 = call float @dx.op.unary.f32(i32 27, float %2891)  ; Round_ni(value)
  %2893 = fptoui float %2892 to i32
  %2894 = urem i32 %2893, %2827
  %2895 = udiv i32 %2893, %2828
  %2896 = call float @dx.op.unary.f32(i32 22, float %2876)  ; Frc(value)
  %2897 = call float @dx.op.unary.f32(i32 22, float %2877)  ; Frc(value)
  %2898 = uitofp i32 %2894 to float
  %2899 = uitofp i32 %2895 to float
  %2900 = fadd fast float %2896, %2898
  %2901 = fadd fast float %2897, %2899
  %2902 = uitofp i32 %2827 to float
  %2903 = uitofp i32 %2828 to float
  %2904 = fdiv fast float %2900, %2902
  %2905 = fdiv fast float %2901, %2903
  br label %2906

; <label>:2906                                    ; preds = %2881, %2808
  %2907 = phi float [ %2904, %2881 ], [ %2876, %2808 ]
  %2908 = phi float [ %2905, %2881 ], [ %2877, %2808 ]
  %2909 = and i32 %2802, 256
  %2910 = icmp eq i32 %2909, 0
  br i1 %2910, label %2957, label %2911

; <label>:2911                                    ; preds = %2906
  %2912 = add i32 %43, 500
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = add i32 %2914, 0
  %2916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2917 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2916, %dx.types.Handle %96, float %2907, float %2908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2918 = extractvalue %dx.types.ResRet.f32 %2917, 0
  %2919 = add i32 %43, 148
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = shl i32 %2921, 4
  %2923 = and i32 %2922, 32752
  %2924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2923)  ; LegacyF16ToF32(value)
  %2925 = lshr i32 %2921, 7
  %2926 = and i32 %2925, 32752
  %2927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2926)  ; LegacyF16ToF32(value)
  %2928 = fsub fast float 1.000000e+00, %519
  %2929 = call float @dx.op.binary.f32(i32 35, float %2928, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2930 = bitcast float %519 to i32
  %2931 = sitofp i32 %2930 to float
  %2932 = fadd fast float %2931, 0xC1CFBF8940000000
  %2933 = fmul fast float %2927, %2932
  %2934 = fadd fast float %2933, 0x41CFBF8940000000
  %2935 = fptosi float %2934 to i32
  %2936 = bitcast i32 %2935 to float
  %2937 = bitcast float %2929 to i32
  %2938 = sitofp i32 %2937 to float
  %2939 = fadd fast float %2938, 0xC1CFBF8940000000
  %2940 = fmul fast float %2939, %2927
  %2941 = fadd fast float %2940, 0x41CFBF8940000000
  %2942 = fptosi float %2941 to i32
  %2943 = bitcast i32 %2942 to float
  %2944 = fmul fast float %2936, %2924
  %2945 = fmul fast float %2943, %2924
  %2946 = fsub fast float %2929, %2944
  %2947 = fadd fast float %2945, %2929
  %2948 = call float @dx.op.unary.f32(i32 7, float %2946)  ; Saturate(value)
  %2949 = call float @dx.op.unary.f32(i32 7, float %2947)  ; Saturate(value)
  %2950 = fsub fast float %2918, %2948
  %2951 = fsub fast float %2949, %2948
  %2952 = bitcast float %2951 to i32
  %2953 = sub nsw i32 2129859010, %2952
  %2954 = bitcast i32 %2953 to float
  %2955 = fmul fast float %2954, %2950
  %2956 = call float @dx.op.unary.f32(i32 7, float %2955)  ; Saturate(value)
  br label %2957

; <label>:2957                                    ; preds = %2911, %2906
  %2958 = phi float [ %2956, %2911 ], [ %519, %2906 ]
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = and i32 %2960, 128
  %2962 = icmp eq i32 %2961, 0
  br i1 %2962, label %2979, label %2963

; <label>:2963                                    ; preds = %2957
  %2964 = add i32 %43, 484
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = add i32 %2966, 0
  %2968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2967, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2969 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2968, %dx.types.Handle %96, float %2907, float %2908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2970 = extractvalue %dx.types.ResRet.f32 %2969, 0
  %2971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.i32 %2971, 0
  %2973 = and i32 %2972, 524288
  %2974 = icmp ne i32 %2973, 0
  %2975 = fcmp fast ogt float %2970, 0x3FE0101020000000
  %2976 = select i1 %2975, float 1.000000e+00, float 0.000000e+00
  %2977 = select i1 %2974, float %2976, float %2970
  %2978 = fmul fast float %2977, %2958
  br label %2979

; <label>:2979                                    ; preds = %2963, %2957
  %2980 = phi float [ %2978, %2963 ], [ %2958, %2957 ]
  %2981 = fcmp fast ult float %2980, 0x3F70101020000000
  br i1 %2981, label %3611, label %2982

; <label>:2982                                    ; preds = %2979
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = and i32 %2984, 16
  %2986 = icmp eq i32 %2985, 0
  br i1 %2986, label %3185, label %2987

; <label>:2987                                    ; preds = %2982
  %2988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.i32 %2988, 0
  %2990 = add i32 %43, 436
  %2991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.i32 %2991, 0
  %2993 = add i32 %2992, 0
  %2994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2995 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2994, %dx.types.Handle %95, float %2907, float %2908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2996 = extractvalue %dx.types.ResRet.f32 %2995, 0
  %2997 = extractvalue %dx.types.ResRet.f32 %2995, 1
  %2998 = extractvalue %dx.types.ResRet.f32 %2995, 2
  %2999 = extractvalue %dx.types.ResRet.f32 %2995, 3
  %3000 = and i32 %2989, 255
  %3001 = uitofp i32 %3000 to float
  %3002 = lshr i32 %2989, 8
  %3003 = and i32 %3002, 255
  %3004 = uitofp i32 %3003 to float
  %3005 = fmul fast float %2999, %3001
  %3006 = fadd fast float %3005, %3004
  %3007 = fmul fast float %3006, 0x3F70101000000000
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = and i32 %3009, 512
  %3011 = icmp eq i32 %3010, 0
  br i1 %3011, label %3020, label %3012

; <label>:3012                                    ; preds = %2987
  %3013 = add i32 %43, 516
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3013, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.i32 %3014, 0
  %3016 = add i32 %3015, 0
  %3017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3016, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3018 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3017, %dx.types.Handle %96, float %2907, float %2908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3019 = extractvalue %dx.types.ResRet.f32 %3018, 0
  br label %3020

; <label>:3020                                    ; preds = %3012, %2987
  %3021 = phi float [ %3019, %3012 ], [ 1.000000e+00, %2987 ]
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = and i32 %3023, 33554432
  %3025 = icmp eq i32 %3024, 0
  br i1 %3025, label %3132, label %3026

; <label>:3026                                    ; preds = %3020
  %3027 = add i32 %43, 272
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3027, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = and i32 %3029, 65535
  %3031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3030)  ; LegacyF16ToF32(value)
  %3032 = lshr i32 %3029, 16
  %3033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3032)  ; LegacyF16ToF32(value)
  %3034 = add i32 %43, 276
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3034, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = and i32 %3036, 65535
  %3038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3037)  ; LegacyF16ToF32(value)
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = lshr i32 %3040, 24
  %3042 = uitofp i32 %3041 to float
  %3043 = fmul fast float %3042, 0x3F70101020000000
  %3044 = and i32 %3040, 255
  %3045 = uitofp i32 %3044 to float
  %3046 = fmul fast float %3045, 0x3F70101020000000
  %3047 = lshr i32 %3040, 8
  %3048 = and i32 %3047, 255
  %3049 = uitofp i32 %3048 to float
  %3050 = fmul fast float %3049, 0x3F70101020000000
  %3051 = lshr i32 %3040, 16
  %3052 = and i32 %3051, 255
  %3053 = uitofp i32 %3052 to float
  %3054 = fmul fast float %3053, 0x3F70101020000000
  %3055 = add i32 %43, 268
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = lshr i32 %3057, 24
  %3059 = uitofp i32 %3058 to float
  %3060 = fmul fast float %3059, 0x3F70101020000000
  %3061 = and i32 %3057, 255
  %3062 = uitofp i32 %3061 to float
  %3063 = fmul fast float %3062, 0x3F70101020000000
  %3064 = lshr i32 %3057, 8
  %3065 = and i32 %3064, 255
  %3066 = uitofp i32 %3065 to float
  %3067 = fmul fast float %3066, 0x3F70101020000000
  %3068 = lshr i32 %3057, 16
  %3069 = and i32 %3068, 255
  %3070 = uitofp i32 %3069 to float
  %3071 = fmul fast float %3070, 0x3F70101020000000
  %3072 = bitcast float %2996 to i32
  %3073 = ashr i32 %3072, 1
  %3074 = sub nsw i32 1597463174, %3073
  %3075 = bitcast i32 %3074 to float
  %3076 = fmul fast float %2996, 5.000000e-01
  %3077 = fmul fast float %3075, %3075
  %3078 = fmul fast float %3077, %3076
  %3079 = fsub fast float 1.500000e+00, %3078
  %3080 = fmul fast float %3075, %2996
  %3081 = fmul fast float %3080, %3079
  %3082 = bitcast float %2997 to i32
  %3083 = ashr i32 %3082, 1
  %3084 = sub nsw i32 1597463174, %3083
  %3085 = bitcast i32 %3084 to float
  %3086 = fmul fast float %2997, 5.000000e-01
  %3087 = fmul fast float %3085, %3085
  %3088 = fmul fast float %3087, %3086
  %3089 = fsub fast float 1.500000e+00, %3088
  %3090 = fmul fast float %3085, %2997
  %3091 = fmul fast float %3090, %3089
  %3092 = bitcast float %2998 to i32
  %3093 = ashr i32 %3092, 1
  %3094 = sub nsw i32 1597463174, %3093
  %3095 = bitcast i32 %3094 to float
  %3096 = fmul fast float %2998, 5.000000e-01
  %3097 = fmul fast float %3095, %3095
  %3098 = fmul fast float %3097, %3096
  %3099 = fsub fast float 1.500000e+00, %3098
  %3100 = fmul fast float %3095, %2998
  %3101 = fmul fast float %3100, %3099
  %3102 = fsub fast float %3081, %3063
  %3103 = fsub fast float %3091, %3067
  %3104 = fsub fast float %3101, %3071
  %3105 = fmul fast float %3102, %3031
  %3106 = fmul fast float %3103, %3033
  %3107 = fmul fast float %3104, %3038
  %3108 = fadd fast float %3105, %3046
  %3109 = fadd fast float %3106, %3050
  %3110 = fadd fast float %3107, %3054
  %3111 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  %3112 = call float @dx.op.unary.f32(i32 7, float %3109)  ; Saturate(value)
  %3113 = call float @dx.op.unary.f32(i32 7, float %3110)  ; Saturate(value)
  %3114 = fmul fast float %3111, %3111
  %3115 = fmul fast float %3112, %3112
  %3116 = fmul fast float %3113, %3113
  %3117 = fsub fast float %3114, %2996
  %3118 = fsub fast float %3115, %2997
  %3119 = fsub fast float %3116, %2998
  %3120 = fmul fast float %3117, %3021
  %3121 = fmul fast float %3118, %3021
  %3122 = fmul fast float %3119, %3021
  %3123 = fadd fast float %3120, %2996
  %3124 = fadd fast float %3121, %2997
  %3125 = fadd fast float %3122, %2998
  %3126 = fadd fast float %3043, %3007
  %3127 = fsub fast float %3126, %3060
  %3128 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  %3129 = fsub fast float %3128, %3007
  %3130 = fmul fast float %3129, %3021
  %3131 = fadd fast float %3130, %3007
  br label %3185

; <label>:3132                                    ; preds = %3020
  %3133 = and i32 %3023, 134217728
  %3134 = icmp eq i32 %3133, 0
  br i1 %3134, label %3169, label %3135

; <label>:3135                                    ; preds = %3132
  %3136 = call float @dx.op.unary.f32(i32 24, float %437)  ; Sqrt(value)
  %3137 = call float @dx.op.unary.f32(i32 24, float %441)  ; Sqrt(value)
  %3138 = call float @dx.op.unary.f32(i32 24, float %445)  ; Sqrt(value)
  %3139 = fadd fast float %3136, -5.000000e-01
  %3140 = fadd fast float %3137, -5.000000e-01
  %3141 = fadd fast float %3138, -5.000000e-01
  %3142 = fmul fast float %3139, %3021
  %3143 = fmul fast float %3140, %3021
  %3144 = fmul fast float %3141, %3021
  %3145 = fadd fast float %3142, 5.000000e-01
  %3146 = fadd fast float %3143, 5.000000e-01
  %3147 = fadd fast float %3144, 5.000000e-01
  %3148 = call float @dx.op.unary.f32(i32 24, float %2996)  ; Sqrt(value)
  %3149 = call float @dx.op.unary.f32(i32 24, float %2997)  ; Sqrt(value)
  %3150 = call float @dx.op.unary.f32(i32 24, float %2998)  ; Sqrt(value)
  %3151 = fmul fast float %3145, 2.000000e+00
  %3152 = fsub fast float 1.000000e+00, %3151
  %3153 = fmul fast float %3152, %3148
  %3154 = fadd fast float %3153, %3151
  %3155 = fmul fast float %3154, %3148
  %3156 = fmul fast float %3146, 2.000000e+00
  %3157 = fsub fast float 1.000000e+00, %3156
  %3158 = fmul fast float %3157, %3149
  %3159 = fadd fast float %3158, %3156
  %3160 = fmul fast float %3159, %3149
  %3161 = fmul fast float %3147, 2.000000e+00
  %3162 = fsub fast float 1.000000e+00, %3161
  %3163 = fmul fast float %3162, %3150
  %3164 = fadd fast float %3163, %3161
  %3165 = fmul fast float %3164, %3150
  %3166 = fmul fast float %3155, %3155
  %3167 = fmul fast float %3160, %3160
  %3168 = fmul fast float %3165, %3165
  br label %3185

; <label>:3169                                    ; preds = %3132
  %3170 = fmul fast float %437, %437
  %3171 = fmul fast float %441, %441
  %3172 = fmul fast float %445, %445
  %3173 = fadd fast float %3170, -1.000000e+00
  %3174 = fadd fast float %3171, -1.000000e+00
  %3175 = fadd fast float %3172, -1.000000e+00
  %3176 = fmul fast float %3021, %3173
  %3177 = fmul fast float %3021, %3174
  %3178 = fmul fast float %3021, %3175
  %3179 = fadd fast float %3176, 1.000000e+00
  %3180 = fadd fast float %3177, 1.000000e+00
  %3181 = fadd fast float %3178, 1.000000e+00
  %3182 = fmul fast float %3179, %2996
  %3183 = fmul fast float %3180, %2997
  %3184 = fmul fast float %3181, %2998
  br label %3185

; <label>:3185                                    ; preds = %3169, %3135, %3026, %2982
  %3186 = phi float [ %3131, %3026 ], [ %3007, %3135 ], [ %3007, %3169 ], [ 0x3FA23C0BE0000000, %2982 ]
  %3187 = phi float [ %3123, %3026 ], [ %3166, %3135 ], [ %3182, %3169 ], [ 1.000000e+00, %2982 ]
  %3188 = phi float [ %3124, %3026 ], [ %3167, %3135 ], [ %3183, %3169 ], [ 1.000000e+00, %2982 ]
  %3189 = phi float [ %3125, %3026 ], [ %3168, %3135 ], [ %3184, %3169 ], [ 1.000000e+00, %2982 ]
  %3190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3191 = extractvalue %dx.types.CBufRet.i32 %3190, 1
  %3192 = and i32 %3191, 1
  %3193 = icmp ne i32 %3192, 0
  %3194 = add i32 %43, 356
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = and i32 %3196, 32
  %3198 = icmp ne i32 %3197, 0
  %3199 = and i1 %3193, %3198
  %3200 = select i1 %3199, float 1.000000e+00, float %3187
  %3201 = select i1 %3199, float 0x3FD3333340000000, float %3188
  %3202 = select i1 %3199, float 0x3FD3333340000000, float %3189
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = and i32 %3204, 32
  %3206 = icmp eq i32 %3205, 0
  br i1 %3206, label %3279, label %3207

; <label>:3207                                    ; preds = %3185
  %3208 = add i32 %43, 140
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3208, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = add i32 %43, 452
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = add i32 %3213, 0
  %3215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3216 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3215, %dx.types.Handle %95, float %2907, float %2908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3217 = extractvalue %dx.types.ResRet.f32 %3216, 0
  %3218 = extractvalue %dx.types.ResRet.f32 %3216, 1
  %3219 = extractvalue %dx.types.ResRet.f32 %3216, 2
  %3220 = extractvalue %dx.types.ResRet.f32 %3216, 3
  %3221 = and i32 %3210, 255
  %3222 = uitofp i32 %3221 to float
  %3223 = lshr i32 %3210, 8
  %3224 = and i32 %3223, 255
  %3225 = uitofp i32 %3224 to float
  %3226 = lshr i32 %3210, 16
  %3227 = and i32 %3226, 255
  %3228 = uitofp i32 %3227 to float
  %3229 = fmul fast float %3228, 0x3F70101000000000
  %3230 = fmul fast float %3217, %3222
  %3231 = fadd fast float %3230, %3225
  %3232 = fmul fast float %3231, 0x3F70101000000000
  %3233 = fadd fast float %3218, -5.000000e-01
  %3234 = fadd fast float %3220, -5.000000e-01
  %3235 = fmul fast float %3233, %3229
  %3236 = fmul fast float %3234, %3229
  %3237 = fadd fast float %3235, 5.000000e-01
  %3238 = fadd fast float %3236, 5.000000e-01
  %3239 = fmul fast float %3237, 2.000000e+00
  %3240 = fadd fast float %3239, -1.000000e+00
  %3241 = fmul fast float %3238, 2.000000e+00
  %3242 = fadd fast float %3241, -1.000000e+00
  %3243 = fadd fast float %3240, %3242
  %3244 = fmul fast float %3243, 5.000000e-01
  %3245 = fsub fast float %3240, %3242
  %3246 = fmul fast float %3245, 5.000000e-01
  %3247 = call float @dx.op.unary.f32(i32 6, float %3244)  ; FAbs(value)
  %3248 = fsub fast float 1.000000e+00, %3247
  %3249 = call float @dx.op.unary.f32(i32 6, float %3246)  ; FAbs(value)
  %3250 = fsub fast float %3248, %3249
  %3251 = call float @dx.op.dot3.f32(i32 55, float %3244, float %3246, float %3250, float %3244, float %3246, float %3250)  ; Dot3(ax,ay,az,bx,by,bz)
  %3252 = call float @dx.op.unary.f32(i32 25, float %3251)  ; Rsqrt(value)
  %3253 = fmul fast float %3244, %3252
  %3254 = fmul fast float %3246, %3252
  %3255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3256 = extractvalue %dx.types.ResRet.i32 %3255, 0
  %3257 = and i32 %3256, 67108864
  %3258 = icmp eq i32 %3257, 0
  br i1 %3258, label %3275, label %3259

; <label>:3259                                    ; preds = %3207
  %3260 = add i32 %43, 328
  %3261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3260, i32 undef)  ; BufferLoad(srv,index,wot)
  %3262 = extractvalue %dx.types.ResRet.i32 %3261, 0
  %3263 = and i32 %3262, 65535
  %3264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3263)  ; LegacyF16ToF32(value)
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = and i32 %3266, 65535
  %3268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3267)  ; LegacyF16ToF32(value)
  %3269 = lshr i32 %3262, 16
  %3270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3269)  ; LegacyF16ToF32(value)
  %3271 = fsub fast float %3232, %3270
  %3272 = fmul fast float %3271, %3264
  %3273 = fadd fast float %3272, %3268
  %3274 = call float @dx.op.unary.f32(i32 7, float %3273)  ; Saturate(value)
  br label %3275

; <label>:3275                                    ; preds = %3259, %3207
  %3276 = phi float [ %3274, %3259 ], [ %3232, %3207 ]
  %3277 = call float @dx.op.dot2.f32(i32 54, float %3253, float %3254, float %2811, float %2812)  ; Dot2(ax,ay,bx,by)
  %3278 = call float @dx.op.dot2.f32(i32 54, float %3253, float %3254, float %2813, float %2814)  ; Dot2(ax,ay,bx,by)
  br label %3279

; <label>:3279                                    ; preds = %3275, %3185
  %3280 = phi float [ %3276, %3275 ], [ 0x3FD6666660000000, %3185 ]
  %3281 = phi float [ %3277, %3275 ], [ 0.000000e+00, %3185 ]
  %3282 = phi float [ %3278, %3275 ], [ 0.000000e+00, %3185 ]
  %3283 = phi float [ %3219, %3275 ], [ 1.000000e+00, %3185 ]
  %3284 = add i32 %43, 208
  %3285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3284, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.i32 %3285, 0
  %3287 = lshr i32 %3286, 22
  %3288 = shl nuw nsw i32 %3287, 5
  %3289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3288)  ; LegacyF16ToF32(value)
  %3290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.i32 %3290, 0
  %3292 = and i32 %3291, 64
  %3293 = icmp eq i32 %3292, 0
  br i1 %3293, label %3327, label %3294

; <label>:3294                                    ; preds = %3279
  %3295 = add i32 %43, 468
  %3296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3295, i32 undef)  ; BufferLoad(srv,index,wot)
  %3297 = extractvalue %dx.types.ResRet.i32 %3296, 0
  %3298 = add i32 %3297, 0
  %3299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = and i32 %3301, 131072
  %3303 = icmp eq i32 %3302, 0
  %3304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3299, %dx.types.Handle %95, float %2907, float %2908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3305 = extractvalue %dx.types.ResRet.f32 %3304, 0
  %3306 = extractvalue %dx.types.ResRet.f32 %3304, 1
  %3307 = extractvalue %dx.types.ResRet.f32 %3304, 2
  %3308 = fmul fast float %3305, %425
  %3309 = fmul fast float %3306, %428
  %3310 = fmul fast float %3307, %431
  br i1 %3303, label %3317, label %3311

; <label>:3311                                    ; preds = %3294
  %3312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3313 = extractvalue %dx.types.CBufRet.f32 %3312, 0
  %3314 = fmul fast float %3313, %3308
  %3315 = fmul fast float %3313, %3309
  %3316 = fmul fast float %3313, %3310
  br label %3317

; <label>:3317                                    ; preds = %3311, %3294
  %3318 = phi float [ %3314, %3311 ], [ %3308, %3294 ]
  %3319 = phi float [ %3315, %3311 ], [ %3309, %3294 ]
  %3320 = phi float [ %3316, %3311 ], [ %3310, %3294 ]
  %3321 = fmul fast float %3318, %3289
  %3322 = select i1 %282, float %3321, float %3318
  %3323 = call float @dx.op.dot3.f32(i32 55, float %3322, float %3319, float %3320, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3324 = select i1 %282, float 0.000000e+00, float %3318
  %3325 = select i1 %282, float %3323, float %3319
  %3326 = select i1 %282, float 0.000000e+00, float %3320
  br label %3327

; <label>:3327                                    ; preds = %3317, %3279
  %3328 = phi float [ %3324, %3317 ], [ 0.000000e+00, %3279 ]
  %3329 = phi float [ %3325, %3317 ], [ 0.000000e+00, %3279 ]
  %3330 = phi float [ %3326, %3317 ], [ 0.000000e+00, %3279 ]
  %3331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.i32 %3331, 0
  %3333 = and i32 %3332, 10240
  %3334 = icmp eq i32 %3333, 0
  br i1 %3334, label %3379, label %3335

; <label>:3335                                    ; preds = %3327
  %3336 = add i32 %43, 532
  %3337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.i32 %3337, 0
  %3339 = add i32 %3338, 0
  %3340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3341 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3340, %dx.types.Handle %96, float %2907, float %2908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3342 = extractvalue %dx.types.ResRet.f32 %3341, 1
  %3343 = extractvalue %dx.types.ResRet.f32 %3341, 3
  %3344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.i32 %3344, 0
  %3346 = and i32 %3345, 1048576
  %3347 = icmp ne i32 %3346, 0
  %3348 = and i32 %3345, 8192
  %3349 = icmp eq i32 %3348, 0
  br i1 %3349, label %3365, label %3350

; <label>:3350                                    ; preds = %3335
  %3351 = extractvalue %dx.types.ResRet.f32 %3341, 2
  %3352 = select i1 %3347, float %3351, float %3342
  %3353 = extractvalue %dx.types.ResRet.f32 %3341, 0
  %3354 = select i1 %3347, float %3353, float %3342
  %3355 = add i32 %43, 144
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = lshr i32 %3357, 16
  %3359 = and i32 %3358, 255
  %3360 = uitofp i32 %3359 to float
  %3361 = fmul fast float %3360, 0x3F80101020000000
  %3362 = fmul fast float %3361, %3354
  %3363 = fmul fast float %3361, %3342
  %3364 = fmul fast float %3361, %3352
  br label %3365

; <label>:3365                                    ; preds = %3350, %3335
  %3366 = phi float [ %3362, %3350 ], [ 0.000000e+00, %3335 ]
  %3367 = phi float [ %3363, %3350 ], [ 0.000000e+00, %3335 ]
  %3368 = phi float [ %3364, %3350 ], [ 0.000000e+00, %3335 ]
  %3369 = and i32 %3345, 2048
  %3370 = icmp eq i32 %3369, 0
  br i1 %3370, label %3379, label %3371

; <label>:3371                                    ; preds = %3365
  %3372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3284, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = shl i32 %3373, 4
  %3375 = and i32 %3374, 32752
  %3376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3375)  ; LegacyF16ToF32(value)
  %3377 = fmul fast float %3376, %3343
  %3378 = call float @dx.op.binary.f32(i32 35, float %3377, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3379

; <label>:3379                                    ; preds = %3371, %3365, %3327
  %3380 = phi float [ %3366, %3371 ], [ %3366, %3365 ], [ 0.000000e+00, %3327 ]
  %3381 = phi float [ %3367, %3371 ], [ %3367, %3365 ], [ 0.000000e+00, %3327 ]
  %3382 = phi float [ %3368, %3371 ], [ %3368, %3365 ], [ 0.000000e+00, %3327 ]
  %3383 = phi float [ %3378, %3371 ], [ 0x3F70101020000000, %3365 ], [ 0x3F70101020000000, %3327 ]
  %3384 = add i32 %43, 144
  %3385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3384, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.i32 %3385, 0
  %3387 = and i32 %3386, 255
  %3388 = uitofp i32 %3387 to float
  %3389 = lshr i32 %3386, 8
  %3390 = and i32 %3389, 255
  %3391 = uitofp i32 %3390 to float
  %3392 = call float @dx.op.dot3.f32(i32 55, float %3200, float %3201, float %3202, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3393 = fmul fast float %3391, %3392
  %3394 = fadd fast float %3393, %3388
  %3395 = fmul fast float %3394, 0x3F70101020000000
  %3396 = call float @dx.op.unary.f32(i32 7, float %3395)  ; Saturate(value)
  br i1 %2799, label %3397, label %3405

; <label>:3397                                    ; preds = %3379
  %3398 = fsub fast float 1.000000e+00, %2980
  %3399 = fmul fast float %3398, %2784
  %3400 = fmul fast float %3398, %2785
  %3401 = fmul fast float %3398, %2786
  %3402 = fmul fast float %3398, %2787
  %3403 = fmul fast float %3398, %2788
  %3404 = fmul fast float %3398, %2789
  br label %3405

; <label>:3405                                    ; preds = %3397, %3379
  %3406 = phi float [ %3399, %3397 ], [ %2784, %3379 ]
  %3407 = phi float [ %3400, %3397 ], [ %2785, %3379 ]
  %3408 = phi float [ %3401, %3397 ], [ %2786, %3379 ]
  %3409 = phi float [ %3402, %3397 ], [ %2787, %3379 ]
  %3410 = phi float [ %3403, %3397 ], [ %2788, %3379 ]
  %3411 = phi float [ %3404, %3397 ], [ %2789, %3379 ]
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = and i32 %3413, 3
  %3415 = icmp eq i32 %3414, 3
  br i1 %3415, label %3494, label %3416

; <label>:3416                                    ; preds = %3405
  %3417 = and i32 %3413, 16
  %3418 = icmp ne i32 %3417, 0
  %3419 = select i1 %3418, float %2980, float 0.000000e+00
  %3420 = icmp eq i32 %3414, 0
  br i1 %3420, label %3421, label %3449

; <label>:3421                                    ; preds = %3416
  %3422 = and i32 %3413, 64
  %3423 = icmp ne i32 %3422, 0
  %3424 = select i1 %3423, float %2980, float 0.000000e+00
  %3425 = fsub fast float %3200, %3406
  %3426 = fsub fast float %3201, %3407
  %3427 = fsub fast float %3202, %3408
  %3428 = fmul fast float %3419, %3425
  %3429 = fmul fast float %3419, %3426
  %3430 = fmul fast float %3419, %3427
  %3431 = fadd fast float %3428, %3406
  %3432 = fadd fast float %3429, %3407
  %3433 = fadd fast float %3430, %3408
  %3434 = fsub fast float %3186, %2793
  %3435 = fmul fast float %3419, %3434
  %3436 = fadd fast float %3435, %2793
  %3437 = fsub fast float %3328, %3409
  %3438 = fsub fast float %3329, %3410
  %3439 = fsub fast float %3330, %3411
  %3440 = fmul fast float %3424, %3437
  %3441 = fmul fast float %3424, %3438
  %3442 = fmul fast float %3424, %3439
  %3443 = fadd fast float %3440, %3409
  %3444 = fadd fast float %3441, %3410
  %3445 = fadd fast float %3442, %3411
  %3446 = fsub fast float %3396, %2797
  %3447 = fmul fast float %3419, %3446
  %3448 = fadd fast float %3447, %2797
  br label %3494

; <label>:3449                                    ; preds = %3416
  %3450 = icmp eq i32 %3414, 1
  br i1 %3450, label %3451, label %3464

; <label>:3451                                    ; preds = %3449
  %3452 = fadd fast float %3200, -1.000000e+00
  %3453 = fadd fast float %3201, -1.000000e+00
  %3454 = fadd fast float %3202, -1.000000e+00
  %3455 = fmul fast float %3419, %3452
  %3456 = fmul fast float %3419, %3453
  %3457 = fmul fast float %3419, %3454
  %3458 = fadd fast float %3455, 1.000000e+00
  %3459 = fadd fast float %3456, 1.000000e+00
  %3460 = fadd fast float %3457, 1.000000e+00
  %3461 = fmul fast float %3458, %3406
  %3462 = fmul fast float %3459, %3407
  %3463 = fmul fast float %3460, %3408
  br label %3494

; <label>:3464                                    ; preds = %3449
  %3465 = icmp eq i32 %3414, 2
  br i1 %3465, label %3466, label %3494

; <label>:3466                                    ; preds = %3464
  %3467 = call float @dx.op.unary.f32(i32 24, float %3200)  ; Sqrt(value)
  %3468 = call float @dx.op.unary.f32(i32 24, float %3201)  ; Sqrt(value)
  %3469 = call float @dx.op.unary.f32(i32 24, float %3202)  ; Sqrt(value)
  %3470 = fadd fast float %3467, -5.000000e-01
  %3471 = fadd fast float %3468, -5.000000e-01
  %3472 = fadd fast float %3469, -5.000000e-01
  %3473 = fmul fast float %3470, %3419
  %3474 = fmul fast float %3471, %3419
  %3475 = fmul fast float %3472, %3419
  %3476 = fadd fast float %3473, 5.000000e-01
  %3477 = fadd fast float %3474, 5.000000e-01
  %3478 = fadd fast float %3475, 5.000000e-01
  %3479 = fmul fast float %3476, 2.000000e+00
  %3480 = fsub fast float 1.000000e+00, %3479
  %3481 = fmul fast float %3480, %3406
  %3482 = fadd fast float %3481, %3479
  %3483 = fmul fast float %3482, %3406
  %3484 = fmul fast float %3477, 2.000000e+00
  %3485 = fsub fast float 1.000000e+00, %3484
  %3486 = fmul fast float %3485, %3407
  %3487 = fadd fast float %3486, %3484
  %3488 = fmul fast float %3487, %3407
  %3489 = fmul fast float %3478, 2.000000e+00
  %3490 = fsub fast float 1.000000e+00, %3489
  %3491 = fmul fast float %3490, %3408
  %3492 = fadd fast float %3491, %3489
  %3493 = fmul fast float %3492, %3408
  br label %3494

; <label>:3494                                    ; preds = %3466, %3464, %3451, %3421, %3405
  %3495 = phi float [ %3406, %3405 ], [ %3483, %3466 ], [ %3406, %3464 ], [ %3461, %3451 ], [ %3431, %3421 ]
  %3496 = phi float [ %3407, %3405 ], [ %3488, %3466 ], [ %3407, %3464 ], [ %3462, %3451 ], [ %3432, %3421 ]
  %3497 = phi float [ %3408, %3405 ], [ %3493, %3466 ], [ %3408, %3464 ], [ %3463, %3451 ], [ %3433, %3421 ]
  %3498 = phi float [ %3409, %3405 ], [ %3409, %3466 ], [ %3409, %3464 ], [ %3409, %3451 ], [ %3443, %3421 ]
  %3499 = phi float [ %3410, %3405 ], [ %3410, %3466 ], [ %3410, %3464 ], [ %3410, %3451 ], [ %3444, %3421 ]
  %3500 = phi float [ %3411, %3405 ], [ %3411, %3466 ], [ %3411, %3464 ], [ %3411, %3451 ], [ %3445, %3421 ]
  %3501 = phi float [ %2793, %3405 ], [ %2793, %3466 ], [ %2793, %3464 ], [ %2793, %3451 ], [ %3436, %3421 ]
  %3502 = phi float [ %2797, %3405 ], [ %2797, %3466 ], [ %2797, %3464 ], [ %2797, %3451 ], [ %3448, %3421 ]
  %3503 = and i32 %3413, 12
  %3504 = icmp eq i32 %3503, 12
  br i1 %3504, label %3611, label %3505

; <label>:3505                                    ; preds = %3494
  %3506 = and i32 %3413, 2097184
  %3507 = icmp eq i32 %3506, 2097184
  %3508 = select i1 %3507, float %2980, float 0.000000e+00
  %3509 = and i32 %3413, 4194336
  %3510 = icmp eq i32 %3509, 4194336
  %3511 = select i1 %3510, float %2980, float 0.000000e+00
  %3512 = and i32 %3413, 8388640
  %3513 = icmp eq i32 %3512, 8388640
  %3514 = select i1 %3513, float %2980, float 0.000000e+00
  %3515 = and i32 %3413, 2048
  %3516 = icmp ne i32 %3515, 0
  %3517 = select i1 %3516, float %2980, float 0.000000e+00
  %3518 = and i32 %3413, 8192
  %3519 = icmp ne i32 %3518, 0
  %3520 = select i1 %3519, float %2980, float 0.000000e+00
  %3521 = icmp eq i32 %3503, 0
  br i1 %3521, label %3522, label %3547

; <label>:3522                                    ; preds = %3505
  %3523 = fsub fast float %3281, %2782
  %3524 = fsub fast float %3282, %2783
  %3525 = fmul fast float %3508, %3523
  %3526 = fmul fast float %3508, %3524
  %3527 = fadd fast float %3525, %2782
  %3528 = fadd fast float %3526, %2783
  %3529 = fsub fast float %3283, %2795
  %3530 = fmul fast float %3511, %3529
  %3531 = fadd fast float %3530, %2795
  %3532 = fsub fast float %3280, %2794
  %3533 = fmul fast float %3514, %3532
  %3534 = fadd fast float %3533, %2794
  %3535 = fsub fast float %3383, %2796
  %3536 = fmul fast float %3517, %3535
  %3537 = fadd fast float %3536, %2796
  %3538 = fsub fast float %3380, %2790
  %3539 = fsub fast float %3381, %2791
  %3540 = fsub fast float %3382, %2792
  %3541 = fmul fast float %3520, %3538
  %3542 = fmul fast float %3520, %3539
  %3543 = fmul fast float %3520, %3540
  %3544 = fadd fast float %3541, %2790
  %3545 = fadd fast float %3542, %2791
  %3546 = fadd fast float %3543, %2792
  br label %3611

; <label>:3547                                    ; preds = %3505
  %3548 = icmp eq i32 %3503, 4
  br i1 %3548, label %3549, label %3589

; <label>:3549                                    ; preds = %3547
  %3550 = fmul fast float %3508, %3281
  %3551 = fmul fast float %3508, %3282
  %3552 = fadd fast float %3550, %2782
  %3553 = fadd fast float %3551, %2783
  %3554 = call float @dx.op.binary.f32(i32 36, float %2795, float %3283)  ; FMin(a,b)
  %3555 = fsub fast float %3554, %2795
  %3556 = fmul fast float %3555, %3511
  %3557 = fadd fast float %3556, %2795
  %3558 = fadd fast float %3280, %2794
  %3559 = fmul fast float %3558, 0x3FF337FAE0000000
  %3560 = fmul fast float %2794, %2794
  %3561 = fmul fast float %3280, %3280
  %3562 = fadd fast float %3561, %3560
  %3563 = fmul fast float %3562, 0x3FE5152B00000000
  %3564 = fmul fast float %2794, 0xBFCC1F85E0000000
  %3565 = fmul fast float %3564, %3280
  %3566 = fadd fast float %3565, 0xBFE1363700000000
  %3567 = fadd fast float %3566, %3559
  %3568 = fsub fast float %3567, %3563
  %3569 = fmul fast float %3558, 0x3FBA6F0D00000000
  %3570 = fmul fast float %3562, 0x3FD0432880000000
  %3571 = fmul fast float %2794, 0xBFEF110800000000
  %3572 = fmul fast float %3571, %3280
  %3573 = fadd fast float %3572, 1.000000e+00
  %3574 = fsub fast float %3573, %3569
  %3575 = fadd fast float %3574, %3570
  %3576 = fdiv fast float %3568, %3575
  %3577 = call float @dx.op.unary.f32(i32 7, float %3576)  ; Saturate(value)
  %3578 = fsub fast float %3577, %2794
  %3579 = fmul fast float %3578, %3514
  %3580 = fadd fast float %3579, %2794
  %3581 = fmul fast float %3517, %3383
  %3582 = fadd fast float %3581, %2796
  %3583 = fmul fast float %3520, %3380
  %3584 = fmul fast float %3520, %3381
  %3585 = fmul fast float %3520, %3382
  %3586 = fadd fast float %3583, %2790
  %3587 = fadd fast float %3584, %2791
  %3588 = fadd fast float %3585, %2792
  br label %3611

; <label>:3589                                    ; preds = %3547
  %3590 = icmp eq i32 %3503, 8
  br i1 %3590, label %3591, label %3611

; <label>:3591                                    ; preds = %3589
  %3592 = fmul fast float %3508, %3281
  %3593 = fmul fast float %3508, %3282
  %3594 = fadd fast float %3592, %2782
  %3595 = fadd fast float %3593, %2783
  %3596 = call float @dx.op.binary.f32(i32 36, float %2795, float %3283)  ; FMin(a,b)
  %3597 = fsub fast float %3596, %2795
  %3598 = fmul fast float %3597, %3511
  %3599 = fadd fast float %3598, %2795
  %3600 = fsub fast float %3280, %2794
  %3601 = fmul fast float %3514, %3600
  %3602 = fadd fast float %3601, %2794
  %3603 = fmul fast float %3517, %3383
  %3604 = fadd fast float %3603, %2796
  %3605 = fmul fast float %3520, %3380
  %3606 = fmul fast float %3520, %3381
  %3607 = fmul fast float %3520, %3382
  %3608 = fadd fast float %3605, %2790
  %3609 = fadd fast float %3606, %2791
  %3610 = fadd fast float %3607, %2792
  br label %3611

; <label>:3611                                    ; preds = %3591, %3589, %3549, %3522, %3494, %2979, %2798, %2781
  %3612 = phi float [ %2782, %3494 ], [ %2782, %2979 ], [ %2782, %2781 ], [ %2782, %2798 ], [ %3527, %3522 ], [ %3552, %3549 ], [ %2782, %3589 ], [ %3594, %3591 ]
  %3613 = phi float [ %2783, %3494 ], [ %2783, %2979 ], [ %2783, %2781 ], [ %2783, %2798 ], [ %3528, %3522 ], [ %3553, %3549 ], [ %2783, %3589 ], [ %3595, %3591 ]
  %3614 = phi float [ %3495, %3494 ], [ %2784, %2979 ], [ %2784, %2781 ], [ %2784, %2798 ], [ %3495, %3522 ], [ %3495, %3549 ], [ %3495, %3589 ], [ %3495, %3591 ]
  %3615 = phi float [ %3496, %3494 ], [ %2785, %2979 ], [ %2785, %2781 ], [ %2785, %2798 ], [ %3496, %3522 ], [ %3496, %3549 ], [ %3496, %3589 ], [ %3496, %3591 ]
  %3616 = phi float [ %3497, %3494 ], [ %2786, %2979 ], [ %2786, %2781 ], [ %2786, %2798 ], [ %3497, %3522 ], [ %3497, %3549 ], [ %3497, %3589 ], [ %3497, %3591 ]
  %3617 = phi float [ %3498, %3494 ], [ %2787, %2979 ], [ %2787, %2781 ], [ %2787, %2798 ], [ %3498, %3522 ], [ %3498, %3549 ], [ %3498, %3589 ], [ %3498, %3591 ]
  %3618 = phi float [ %3499, %3494 ], [ %2788, %2979 ], [ %2788, %2781 ], [ %2788, %2798 ], [ %3499, %3522 ], [ %3499, %3549 ], [ %3499, %3589 ], [ %3499, %3591 ]
  %3619 = phi float [ %3500, %3494 ], [ %2789, %2979 ], [ %2789, %2781 ], [ %2789, %2798 ], [ %3500, %3522 ], [ %3500, %3549 ], [ %3500, %3589 ], [ %3500, %3591 ]
  %3620 = phi float [ %2790, %3494 ], [ %2790, %2979 ], [ %2790, %2781 ], [ %2790, %2798 ], [ %3544, %3522 ], [ %3586, %3549 ], [ %2790, %3589 ], [ %3608, %3591 ]
  %3621 = phi float [ %2791, %3494 ], [ %2791, %2979 ], [ %2791, %2781 ], [ %2791, %2798 ], [ %3545, %3522 ], [ %3587, %3549 ], [ %2791, %3589 ], [ %3609, %3591 ]
  %3622 = phi float [ %2792, %3494 ], [ %2792, %2979 ], [ %2792, %2781 ], [ %2792, %2798 ], [ %3546, %3522 ], [ %3588, %3549 ], [ %2792, %3589 ], [ %3610, %3591 ]
  %3623 = phi float [ %3501, %3494 ], [ %2793, %2979 ], [ %2793, %2781 ], [ %2793, %2798 ], [ %3501, %3522 ], [ %3501, %3549 ], [ %3501, %3589 ], [ %3501, %3591 ]
  %3624 = phi float [ %2794, %3494 ], [ %2794, %2979 ], [ %2794, %2781 ], [ %2794, %2798 ], [ %3534, %3522 ], [ %3580, %3549 ], [ %2794, %3589 ], [ %3602, %3591 ]
  %3625 = phi float [ %2795, %3494 ], [ %2795, %2979 ], [ %2795, %2781 ], [ %2795, %2798 ], [ %3531, %3522 ], [ %3557, %3549 ], [ %2795, %3589 ], [ %3599, %3591 ]
  %3626 = phi float [ %2796, %3494 ], [ %2796, %2979 ], [ %2796, %2781 ], [ %2796, %2798 ], [ %3537, %3522 ], [ %3582, %3549 ], [ %2796, %3589 ], [ %3604, %3591 ]
  %3627 = phi float [ %3502, %3494 ], [ %2797, %2979 ], [ %2797, %2781 ], [ %2797, %2798 ], [ %3502, %3522 ], [ %3502, %3549 ], [ %3502, %3589 ], [ %3502, %3591 ]
  %3628 = add i32 %43, 408
  %3629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.i32 %3629, 0
  %3631 = bitcast i32 %3630 to float
  %3632 = fcmp fast oge float %3631, 0.000000e+00
  %3633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3634 = extractvalue %dx.types.CBufRet.f32 %3633, 0
  %3635 = select i1 %3632, float %3631, float %3634
  %3636 = fadd fast float %3635, %191
  %3637 = and i32 %184, 65535
  %3638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3637)  ; LegacyF16ToF32(value)
  %3639 = lshr i32 %184, 16
  %3640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3639)  ; LegacyF16ToF32(value)
  %3641 = and i32 %185, 65535
  %3642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3641)  ; LegacyF16ToF32(value)
  %3643 = fmul fast float %3638, %3614
  %3644 = fmul fast float %3640, %3615
  %3645 = fmul fast float %3642, %3616
  %3646 = shl i32 %186, 4
  %3647 = and i32 %3646, 32752
  %3648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3647)  ; LegacyF16ToF32(value)
  %3649 = lshr i32 %186, 7
  %3650 = and i32 %3649, 32752
  %3651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3650)  ; LegacyF16ToF32(value)
  %3652 = lshr i32 %186, 22
  %3653 = shl nuw nsw i32 %3652, 5
  %3654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3653)  ; LegacyF16ToF32(value)
  %3655 = and i32 %187, 65535
  %3656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3655)  ; LegacyF16ToF32(value)
  %3657 = fmul fast float %3648, %3617
  %3658 = fmul fast float %3657, %3656
  %3659 = fmul fast float %3651, %3618
  %3660 = fmul fast float %3659, %3656
  %3661 = fmul fast float %3654, %3619
  %3662 = fmul fast float %3661, %3656
  %3663 = call float @dx.op.dot2.f32(i32 54, float %3612, float %3613, float %3612, float %3613)  ; Dot2(ax,ay,bx,by)
  %3664 = fmul fast float %3663, 0x3FE3333340000000
  %3665 = fsub fast float 1.000000e+00, %3664
  %3666 = call float @dx.op.dot3.f32(i32 55, float %3612, float %3613, float %3665, float %3612, float %3613, float %3665)  ; Dot3(ax,ay,az,bx,by,bz)
  %3667 = call float @dx.op.unary.f32(i32 25, float %3666)  ; Rsqrt(value)
  %3668 = fmul fast float %3667, %3612
  %3669 = fmul fast float %3667, %3613
  %3670 = fmul fast float %3665, %3667
  %3671 = fmul fast float %3670, %106
  %3672 = fmul fast float %3670, %107
  %3673 = fmul fast float %3670, %108
  %3674 = fmul fast float %3668, %74
  %3675 = fmul fast float %3668, %75
  %3676 = fmul fast float %3668, %76
  %3677 = fadd fast float %3671, %3674
  %3678 = fadd fast float %3672, %3675
  %3679 = fadd fast float %3673, %3676
  %3680 = fmul fast float %118, %3669
  %3681 = fmul fast float %119, %3669
  %3682 = fmul fast float %120, %3669
  %3683 = fadd fast float %3677, %3680
  %3684 = fadd fast float %3678, %3681
  %3685 = fadd fast float %3679, %3682
  %3686 = call float @dx.op.dot3.f32(i32 55, float %3683, float %3684, float %3685, float %3683, float %3684, float %3685)  ; Dot3(ax,ay,az,bx,by,bz)
  %3687 = call float @dx.op.unary.f32(i32 25, float %3686)  ; Rsqrt(value)
  %3688 = fmul fast float %3683, %3687
  %3689 = fmul fast float %3684, %3687
  %3690 = fmul fast float %3685, %3687
  %3691 = icmp eq i32 %45, 65535
  br i1 %3691, label %4259, label %3692

; <label>:3692                                    ; preds = %3611
  %3693 = call float @dx.op.unary.f32(i32 83, float %46)  ; DerivCoarseX(value)
  %3694 = call float @dx.op.unary.f32(i32 83, float %47)  ; DerivCoarseX(value)
  %3695 = call float @dx.op.unary.f32(i32 83, float %48)  ; DerivCoarseX(value)
  %3696 = call float @dx.op.unary.f32(i32 84, float %46)  ; DerivCoarseY(value)
  %3697 = call float @dx.op.unary.f32(i32 84, float %47)  ; DerivCoarseY(value)
  %3698 = call float @dx.op.unary.f32(i32 84, float %48)  ; DerivCoarseY(value)
  %3699 = fadd fast float %3693, %46
  %3700 = fadd fast float %3694, %47
  %3701 = fadd fast float %3695, %48
  %3702 = fadd fast float %3696, %46
  %3703 = fadd fast float %3697, %47
  %3704 = fadd fast float %3698, %48
  %3705 = mul i32 %45, 48
  %3706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3707 = extractvalue %dx.types.ResRet.f32 %3706, 0
  %3708 = extractvalue %dx.types.ResRet.f32 %3706, 1
  %3709 = extractvalue %dx.types.ResRet.f32 %3706, 2
  %3710 = add i32 %3705, 16
  %3711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3710, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.f32 %3711, 0
  %3713 = extractvalue %dx.types.ResRet.f32 %3711, 1
  %3714 = extractvalue %dx.types.ResRet.f32 %3711, 2
  %3715 = add i32 %3705, 32
  %3716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.f32 %3716, 0
  %3718 = extractvalue %dx.types.ResRet.f32 %3716, 1
  %3719 = extractvalue %dx.types.ResRet.f32 %3716, 2
  %3720 = extractvalue %dx.types.ResRet.f32 %3716, 3
  %3721 = bitcast float %3720 to i32
  %3722 = fmul fast float %3707, %46
  %3723 = fmul fast float %3708, %47
  %3724 = fmul fast float %3709, %48
  %3725 = fsub fast float %3722, %3712
  %3726 = fsub fast float %3723, %3713
  %3727 = fsub fast float %3724, %3714
  %3728 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3729 = call float @dx.op.unary.f32(i32 7, float %3726)  ; Saturate(value)
  %3730 = call float @dx.op.unary.f32(i32 7, float %3727)  ; Saturate(value)
  %3731 = fmul fast float %3728, %3717
  %3732 = fmul fast float %3729, %3718
  %3733 = fmul fast float %3730, %3719
  %3734 = fadd fast float %3717, -1.000000e+00
  %3735 = fadd fast float %3718, -1.000000e+00
  %3736 = fadd fast float %3719, -1.000000e+00
  %3737 = call float @dx.op.unary.f32(i32 27, float %3731)  ; Round_ni(value)
  %3738 = call float @dx.op.unary.f32(i32 27, float %3732)  ; Round_ni(value)
  %3739 = call float @dx.op.unary.f32(i32 27, float %3733)  ; Round_ni(value)
  %3740 = call float @dx.op.binary.f32(i32 36, float %3737, float %3734)  ; FMin(a,b)
  %3741 = call float @dx.op.binary.f32(i32 36, float %3738, float %3735)  ; FMin(a,b)
  %3742 = call float @dx.op.binary.f32(i32 36, float %3739, float %3736)  ; FMin(a,b)
  %3743 = fmul fast float %3742, %3718
  %3744 = fadd fast float %3743, %3741
  %3745 = fmul fast float %3744, %3717
  %3746 = fadd fast float %3745, %3740
  %3747 = fptosi float %3746 to i32
  %3748 = add nsw i32 %3747, %3721
  %3749 = shl nsw i32 %3748, 2
  %3750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.i32 %3750, 0
  %3752 = lshr i32 %3751, 16
  %3753 = icmp eq i32 %3752, 0
  br i1 %3753, label %4225, label %3754

; <label>:3754                                    ; preds = %3692
  br label %3755

; <label>:3755                                    ; preds = %3879, %3754
  %3756 = phi i32 [ %3781, %3879 ], [ %3752, %3754 ]
  %3757 = phi float [ %3880, %3879 ], [ 0.000000e+00, %3754 ]
  %3758 = phi float [ %3881, %3879 ], [ %3636, %3754 ]
  %3759 = phi float [ %3882, %3879 ], [ %3627, %3754 ]
  %3760 = phi float [ %3883, %3879 ], [ 0.000000e+00, %3754 ]
  %3761 = phi float [ %3884, %3879 ], [ 0.000000e+00, %3754 ]
  %3762 = phi float [ %3885, %3879 ], [ %3620, %3754 ]
  %3763 = phi float [ %3886, %3879 ], [ %3621, %3754 ]
  %3764 = phi float [ %3887, %3879 ], [ %3622, %3754 ]
  %3765 = phi float [ %3888, %3879 ], [ %3658, %3754 ]
  %3766 = phi float [ %3889, %3879 ], [ %3660, %3754 ]
  %3767 = phi float [ %3890, %3879 ], [ %3662, %3754 ]
  %3768 = phi float [ %3891, %3879 ], [ %3688, %3754 ]
  %3769 = phi float [ %3892, %3879 ], [ %3689, %3754 ]
  %3770 = phi float [ %3893, %3879 ], [ %3690, %3754 ]
  %3771 = phi float [ %3894, %3879 ], [ %3625, %3754 ]
  %3772 = phi float [ %3895, %3879 ], [ %3624, %3754 ]
  %3773 = phi float [ %3896, %3879 ], [ 0.000000e+00, %3754 ]
  %3774 = phi float [ %3897, %3879 ], [ %3623, %3754 ]
  %3775 = phi float [ %3898, %3879 ], [ %3643, %3754 ]
  %3776 = phi float [ %3899, %3879 ], [ %3644, %3754 ]
  %3777 = phi float [ %3900, %3879 ], [ %3645, %3754 ]
  %3778 = shl nuw nsw i32 %3756, 2
  %3779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3778, i32 undef)  ; BufferLoad(srv,index,wot)
  %3780 = extractvalue %dx.types.ResRet.i32 %3779, 0
  %3781 = lshr i32 %3780, 16
  %3782 = shl i32 %3780, 8
  %3783 = and i32 %3782, 16776960
  %3784 = or i32 %3783, 48
  %3785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3784, i32 undef)  ; BufferLoad(srv,index,wot)
  %3786 = extractvalue %dx.types.ResRet.f32 %3785, 0
  %3787 = extractvalue %dx.types.ResRet.f32 %3785, 1
  %3788 = extractvalue %dx.types.ResRet.f32 %3785, 2
  %3789 = or i32 %3783, 64
  %3790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3789, i32 undef)  ; BufferLoad(srv,index,wot)
  %3791 = extractvalue %dx.types.ResRet.i32 %3790, 0
  %3792 = extractvalue %dx.types.ResRet.i32 %3790, 1
  %3793 = or i32 %3783, 80
  %3794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3795 = extractvalue %dx.types.ResRet.f32 %3794, 2
  %3796 = extractvalue %dx.types.ResRet.f32 %3794, 3
  %3797 = or i32 %3783, 96
  %3798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3797, i32 undef)  ; BufferLoad(srv,index,wot)
  %3799 = extractvalue %dx.types.ResRet.f32 %3798, 0
  %3800 = extractvalue %dx.types.ResRet.f32 %3798, 1
  %3801 = extractvalue %dx.types.ResRet.f32 %3798, 2
  %3802 = extractvalue %dx.types.ResRet.f32 %3798, 3
  %3803 = or i32 %3783, 112
  %3804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 2
  %3806 = or i32 %3783, 128
  %3807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.f32 %3807, 0
  %3809 = extractvalue %dx.types.ResRet.f32 %3807, 1
  %3810 = extractvalue %dx.types.ResRet.f32 %3807, 2
  %3811 = extractvalue %dx.types.ResRet.f32 %3807, 3
  %3812 = or i32 %3783, 144
  %3813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.ResRet.f32 %3813, 1
  %3816 = extractvalue %dx.types.ResRet.f32 %3813, 2
  %3817 = extractvalue %dx.types.ResRet.f32 %3813, 3
  %3818 = or i32 %3783, 160
  %3819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3821 = extractvalue %dx.types.ResRet.f32 %3819, 1
  %3822 = extractvalue %dx.types.ResRet.f32 %3819, 2
  %3823 = extractvalue %dx.types.ResRet.f32 %3819, 3
  %3824 = or i32 %3783, 192
  %3825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3824, i32 undef)  ; BufferLoad(srv,index,wot)
  %3826 = extractvalue %dx.types.ResRet.i32 %3825, 0
  %3827 = or i32 %3783, 208
  %3828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3830 = or i32 %3783, 248
  %3831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3783, i32 undef)  ; BufferLoad(srv,index,wot)
  %3835 = extractvalue %dx.types.ResRet.f32 %3834, 0
  %3836 = extractvalue %dx.types.ResRet.f32 %3834, 1
  %3837 = extractvalue %dx.types.ResRet.f32 %3834, 2
  %3838 = extractvalue %dx.types.ResRet.f32 %3834, 3
  %3839 = call float @dx.op.dot4.f32(i32 56, float %3835, float %3836, float %3837, float %3838, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3840 = or i32 %3783, 16
  %3841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.f32 %3841, 1
  %3844 = extractvalue %dx.types.ResRet.f32 %3841, 2
  %3845 = extractvalue %dx.types.ResRet.f32 %3841, 3
  %3846 = call float @dx.op.dot4.f32(i32 56, float %3842, float %3843, float %3844, float %3845, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3847 = or i32 %3783, 32
  %3848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.ResRet.f32 %3848, 1
  %3851 = extractvalue %dx.types.ResRet.f32 %3848, 2
  %3852 = extractvalue %dx.types.ResRet.f32 %3848, 3
  %3853 = call float @dx.op.dot4.f32(i32 56, float %3849, float %3850, float %3851, float %3852, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3854 = call float @dx.op.unary.f32(i32 27, float %3839)  ; Round_ni(value)
  %3855 = call float @dx.op.unary.f32(i32 6, float %3854)  ; FAbs(value)
  %3856 = call float @dx.op.unary.f32(i32 27, float %3846)  ; Round_ni(value)
  %3857 = call float @dx.op.unary.f32(i32 6, float %3856)  ; FAbs(value)
  %3858 = call float @dx.op.unary.f32(i32 6, float %3853)  ; FAbs(value)
  %3859 = call float @dx.op.unary.f32(i32 27, float %3858)  ; Round_ni(value)
  %3860 = fadd fast float %3857, %3855
  %3861 = fadd fast float %3860, %3859
  %3862 = fcmp fast oeq float %3861, 0.000000e+00
  %3863 = call float @dx.op.dot4.f32(i32 56, float %3835, float %3836, float %3837, float %3838, float %3699, float %3700, float %3701, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3864 = call float @dx.op.dot4.f32(i32 56, float %3842, float %3843, float %3844, float %3845, float %3699, float %3700, float %3701, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3865 = call float @dx.op.dot4.f32(i32 56, float %3835, float %3836, float %3837, float %3838, float %3702, float %3703, float %3704, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3866 = call float @dx.op.dot4.f32(i32 56, float %3842, float %3843, float %3844, float %3845, float %3702, float %3703, float %3704, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3867 = fsub fast float %3863, %3839
  %3868 = fsub fast float %3865, %3839
  %3869 = fsub fast float %3864, %3846
  %3870 = fsub fast float %3866, %3846
  %3871 = call float @dx.op.dot3.f32(i32 55, float %3786, float %3787, float %3788, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %3872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3873 = extractvalue %dx.types.CBufRet.f32 %3872, 2
  %3874 = fadd fast float %3873, %3871
  %3875 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3876 = extractvalue %dx.types.CBufRet.f32 %3872, 0
  %3877 = fcmp fast ogt float %3875, %3876
  %3878 = and i1 %3862, %3877
  br i1 %3878, label %3902, label %3879

; <label>:3879                                    ; preds = %4211, %3985, %3902, %3755
  %3880 = phi float [ %3757, %3902 ], [ %3988, %3985 ], [ %3988, %4211 ], [ %3757, %3755 ]
  %3881 = phi float [ %3758, %3902 ], [ %3758, %3985 ], [ %4187, %4211 ], [ %3758, %3755 ]
  %3882 = phi float [ %3759, %3902 ], [ %3759, %3985 ], [ %4185, %4211 ], [ %3759, %3755 ]
  %3883 = phi float [ %3760, %3902 ], [ %3760, %3985 ], [ %4112, %4211 ], [ %3760, %3755 ]
  %3884 = phi float [ %3761, %3902 ], [ %3761, %3985 ], [ %4110, %4211 ], [ %3761, %3755 ]
  %3885 = phi float [ %3762, %3902 ], [ %3762, %3985 ], [ %4155, %4211 ], [ %3762, %3755 ]
  %3886 = phi float [ %3763, %3902 ], [ %3763, %3985 ], [ %4156, %4211 ], [ %3763, %3755 ]
  %3887 = phi float [ %3764, %3902 ], [ %3764, %3985 ], [ %4157, %4211 ], [ %3764, %3755 ]
  %3888 = phi float [ %3765, %3902 ], [ %3765, %3985 ], [ %4221, %4211 ], [ %3765, %3755 ]
  %3889 = phi float [ %3766, %3902 ], [ %3766, %3985 ], [ %4222, %4211 ], [ %3766, %3755 ]
  %3890 = phi float [ %3767, %3902 ], [ %3767, %3985 ], [ %4223, %4211 ], [ %3767, %3755 ]
  %3891 = phi float [ %3768, %3902 ], [ %3768, %3985 ], [ %4091, %4211 ], [ %3768, %3755 ]
  %3892 = phi float [ %3769, %3902 ], [ %3769, %3985 ], [ %4092, %4211 ], [ %3769, %3755 ]
  %3893 = phi float [ %3770, %3902 ], [ %3770, %3985 ], [ %4093, %4211 ], [ %3770, %3755 ]
  %3894 = phi float [ %3771, %3902 ], [ %3771, %3985 ], [ %4165, %4211 ], [ %3771, %3755 ]
  %3895 = phi float [ %3772, %3902 ], [ %3772, %3985 ], [ %4162, %4211 ], [ %3772, %3755 ]
  %3896 = phi float [ %3773, %3902 ], [ %3773, %3985 ], [ %4159, %4211 ], [ %3773, %3755 ]
  %3897 = phi float [ %3774, %3902 ], [ %3774, %3985 ], [ %4108, %4211 ], [ %3774, %3755 ]
  %3898 = phi float [ %3775, %3902 ], [ %3775, %3985 ], [ %4103, %4211 ], [ %3775, %3755 ]
  %3899 = phi float [ %3776, %3902 ], [ %3776, %3985 ], [ %4104, %4211 ], [ %3776, %3755 ]
  %3900 = phi float [ %3777, %3902 ], [ %3777, %3985 ], [ %4105, %4211 ], [ %3777, %3755 ]
  %3901 = icmp eq i32 %3781, 0
  br i1 %3901, label %4224, label %3755

; <label>:3902                                    ; preds = %3755
  %3903 = extractvalue %dx.types.ResRet.f32 %3785, 3
  %3904 = extractvalue %dx.types.ResRet.f32 %3804, 3
  %3905 = extractvalue %dx.types.ResRet.f32 %3804, 1
  %3906 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3907 = extractvalue %dx.types.ResRet.f32 %3794, 1
  %3908 = extractvalue %dx.types.ResRet.f32 %3794, 0
  %3909 = extractvalue %dx.types.ResRet.i32 %3790, 3
  %3910 = extractvalue %dx.types.ResRet.i32 %3790, 2
  %3911 = bitcast float %3903 to i32
  %3912 = add i32 %3909, 0
  %3913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3912, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3915 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3913, %dx.types.Handle %3914, float %3839, float %3846, float undef, float undef, i32 0, i32 0, i32 undef, float %3867, float %3869, float undef, float %3868, float %3870, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3916 = extractvalue %dx.types.ResRet.f32 %3915, 0
  %3917 = fmul fast float %3916, %3908
  %3918 = fadd fast float %3917, %3907
  %3919 = call float @dx.op.unary.f32(i32 7, float %3918)  ; Saturate(value)
  %3920 = fmul fast float %3839, %3799
  %3921 = call float @dx.op.tertiary.f32(i32 46, float %3800, float %3846, float %3920)  ; FMad(a,b,c)
  %3922 = fadd fast float %3921, %3906
  %3923 = fmul fast float %3839, %3801
  %3924 = call float @dx.op.tertiary.f32(i32 46, float %3802, float %3846, float %3923)  ; FMad(a,b,c)
  %3925 = fadd fast float %3924, %3905
  %3926 = fmul fast float %3867, %3799
  %3927 = call float @dx.op.tertiary.f32(i32 46, float %3800, float %3869, float %3926)  ; FMad(a,b,c)
  %3928 = fmul fast float %3867, %3801
  %3929 = call float @dx.op.tertiary.f32(i32 46, float %3802, float %3869, float %3928)  ; FMad(a,b,c)
  %3930 = fmul fast float %3868, %3799
  %3931 = call float @dx.op.tertiary.f32(i32 46, float %3800, float %3870, float %3930)  ; FMad(a,b,c)
  %3932 = fmul fast float %3868, %3801
  %3933 = call float @dx.op.tertiary.f32(i32 46, float %3802, float %3870, float %3932)  ; FMad(a,b,c)
  %3934 = add i32 %3910, 0
  %3935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3934, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3936 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3935, %dx.types.Handle %3914, float %3922, float %3925, float undef, float undef, i32 0, i32 0, i32 undef, float %3927, float %3929, float undef, float %3931, float %3933, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = and i32 %3911, 1024
  %3939 = icmp ne i32 %3938, 0
  %3940 = fcmp fast ogt float %3937, 0x3FE0101020000000
  %3941 = uitofp i1 %3940 to float
  %3942 = select i1 %3939, float %3941, float %3937
  %3943 = and i32 %3911, 8192
  %3944 = icmp ne i32 %3943, 0
  %3945 = select i1 %3944, float %3904, float 1.000000e+00
  %3946 = fmul fast float %3839, 2.000000e+00
  %3947 = fadd fast float %3946, -1.000000e+00
  %3948 = call float @dx.op.unary.f32(i32 6, float %3947)  ; FAbs(value)
  %3949 = fmul fast float %3948, %3832
  %3950 = fsub fast float %3949, %3832
  %3951 = call float @dx.op.unary.f32(i32 7, float %3950)  ; Saturate(value)
  %3952 = fmul fast float %3846, 2.000000e+00
  %3953 = fadd fast float %3952, -1.000000e+00
  %3954 = call float @dx.op.unary.f32(i32 6, float %3953)  ; FAbs(value)
  %3955 = fmul fast float %3954, %3833
  %3956 = fsub fast float %3955, %3833
  %3957 = call float @dx.op.unary.f32(i32 7, float %3956)  ; Saturate(value)
  %3958 = fmul fast float %3858, %3795
  %3959 = fsub fast float %3958, %3795
  %3960 = call float @dx.op.unary.f32(i32 7, float %3959)  ; Saturate(value)
  %3961 = fmul fast float %3919, %3945
  %3962 = fmul fast float %3961, %3916
  %3963 = fmul fast float %3962, %3951
  %3964 = fmul fast float %3963, %3942
  %3965 = fmul fast float %3964, %3957
  %3966 = fmul fast float %3965, %3960
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 1
  %3969 = extractvalue %dx.types.CBufRet.f32 %3967, 0
  %3970 = fsub fast float %3875, %3969
  %3971 = fmul fast float %3970, %3968
  %3972 = call float @dx.op.unary.f32(i32 7, float %3971)  ; Saturate(value)
  %3973 = fmul fast float %3966, %3796
  %3974 = fadd fast float %3966, %3796
  %3975 = fmul fast float %3974, %3805
  %3976 = fsub fast float %3975, %3805
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = and i32 %3911, 128
  %3979 = icmp ne i32 %3978, 0
  %3980 = select i1 %3979, float %3977, float %3973
  %3981 = fmul fast float %3980, %3972
  %3982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.f32 %3982, 0
  %3984 = fcmp fast ugt float %3981, %3983
  br i1 %3984, label %3985, label %3879

; <label>:3985                                    ; preds = %3902
  %3986 = select i1 %3944, float %3981, float 0.000000e+00
  %3987 = fadd fast float %3986, %3757
  %3988 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  br i1 %3944, label %3879, label %3989

; <label>:3989                                    ; preds = %3985
  %3990 = and i32 %3911, 4
  %3991 = and i32 %3911, 8
  %3992 = add i32 %3791, 0
  %3993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3992, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3995 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3993, %dx.types.Handle %3994, float %3922, float %3925, float undef, float undef, i32 0, i32 0, i32 undef, float %3927, float %3929, float undef, float %3931, float %3933, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3996 = extractvalue %dx.types.ResRet.f32 %3995, 0
  %3997 = extractvalue %dx.types.ResRet.f32 %3995, 1
  %3998 = extractvalue %dx.types.ResRet.f32 %3995, 2
  %3999 = extractvalue %dx.types.ResRet.f32 %3995, 3
  %4000 = bitcast float %3817 to i32
  %4001 = and i32 %4000, 255
  %4002 = uitofp i32 %4001 to float
  %4003 = lshr i32 %4000, 8
  %4004 = and i32 %4003, 255
  %4005 = uitofp i32 %4004 to float
  %4006 = fmul fast float %3999, %4002
  %4007 = fadd fast float %4006, %4005
  %4008 = fmul fast float %4007, 0x3F70101000000000
  %4009 = add i32 %3792, 0
  %4010 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4009, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4011 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4010, %dx.types.Handle %3994, float %3922, float %3925, float undef, float undef, i32 0, i32 0, i32 undef, float %3927, float %3929, float undef, float %3931, float %3933, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4012 = extractvalue %dx.types.ResRet.f32 %4011, 0
  %4013 = extractvalue %dx.types.ResRet.f32 %4011, 1
  %4014 = extractvalue %dx.types.ResRet.f32 %4011, 2
  %4015 = extractvalue %dx.types.ResRet.f32 %4011, 3
  %4016 = bitcast float %3811 to i32
  %4017 = and i32 %4016, 255
  %4018 = uitofp i32 %4017 to float
  %4019 = lshr i32 %4016, 8
  %4020 = and i32 %4019, 255
  %4021 = uitofp i32 %4020 to float
  %4022 = lshr i32 %4016, 16
  %4023 = and i32 %4022, 255
  %4024 = uitofp i32 %4023 to float
  %4025 = fmul fast float %4024, 0x3F70101000000000
  %4026 = fmul fast float %4012, %4018
  %4027 = fadd fast float %4026, %4021
  %4028 = fmul fast float %4027, 0x3F70101000000000
  %4029 = fadd fast float %4013, -5.000000e-01
  %4030 = fadd fast float %4015, -5.000000e-01
  %4031 = fmul fast float %4029, %4025
  %4032 = fmul fast float %4030, %4025
  %4033 = fadd fast float %4031, 5.000000e-01
  %4034 = fadd fast float %4032, 5.000000e-01
  %4035 = fmul fast float %3996, %3820
  %4036 = fmul fast float %3997, %3821
  %4037 = fmul fast float %3998, %3822
  %4038 = fmul fast float %4033, 2.000000e+00
  %4039 = fadd fast float %4038, -1.000000e+00
  %4040 = fmul fast float %4034, 2.000000e+00
  %4041 = fadd fast float %4040, -1.000000e+00
  %4042 = fadd fast float %4039, %4041
  %4043 = fmul fast float %4042, 5.000000e-01
  %4044 = fsub fast float %4039, %4041
  %4045 = fmul fast float %4044, 5.000000e-01
  %4046 = call float @dx.op.unary.f32(i32 6, float %4043)  ; FAbs(value)
  %4047 = fsub fast float 1.000000e+00, %4046
  %4048 = call float @dx.op.unary.f32(i32 6, float %4045)  ; FAbs(value)
  %4049 = fsub fast float %4047, %4048
  %4050 = call float @dx.op.dot3.f32(i32 55, float %4043, float %4045, float %4049, float %4043, float %4045, float %4049)  ; Dot3(ax,ay,az,bx,by,bz)
  %4051 = call float @dx.op.unary.f32(i32 25, float %4050)  ; Rsqrt(value)
  %4052 = fmul fast float %4043, %4051
  %4053 = fmul fast float %4045, %4051
  %4054 = fmul fast float %4051, %4049
  %4055 = fmul fast float %4054, %3786
  %4056 = fmul fast float %4054, %3787
  %4057 = fmul fast float %4054, %3788
  %4058 = fmul fast float %4052, %3808
  %4059 = fmul fast float %4052, %3809
  %4060 = fmul fast float %4052, %3810
  %4061 = fadd fast float %4058, %4055
  %4062 = fadd fast float %4059, %4056
  %4063 = fadd fast float %4060, %4057
  %4064 = fmul fast float %4053, %3814
  %4065 = fmul fast float %4053, %3815
  %4066 = fmul fast float %4053, %3816
  %4067 = fadd fast float %4061, %4064
  %4068 = fadd fast float %4062, %4065
  %4069 = fadd fast float %4063, %4066
  %4070 = call float @dx.op.dot3.f32(i32 55, float %4067, float %4068, float %4069, float %4067, float %4068, float %4069)  ; Dot3(ax,ay,az,bx,by,bz)
  %4071 = call float @dx.op.unary.f32(i32 25, float %4070)  ; Rsqrt(value)
  %4072 = fmul fast float %4067, %4071
  %4073 = fmul fast float %4068, %4071
  %4074 = fmul fast float %4069, %4071
  %4075 = icmp ne i32 %3991, 0
  %4076 = select i1 %4075, float 1.000000e+00, float 0.000000e+00
  %4077 = fmul fast float %3981, %4076
  %4078 = and i32 %3911, 1
  %4079 = icmp eq i32 %4078, 0
  br i1 %4079, label %4080, label %4084

; <label>:4080                                    ; preds = %3989
  %4081 = fsub fast float %4072, %3768
  %4082 = fsub fast float %4073, %3769
  %4083 = fsub fast float %4074, %3770
  br label %4084

; <label>:4084                                    ; preds = %4080, %3989
  %4085 = phi float [ %4081, %4080 ], [ %4072, %3989 ]
  %4086 = phi float [ %4082, %4080 ], [ %4073, %3989 ]
  %4087 = phi float [ %4083, %4080 ], [ %4074, %3989 ]
  %4088 = fmul float %4087, %4077
  %4089 = fmul float %4086, %4077
  %4090 = fmul float %4085, %4077
  %4091 = fadd fast float %4090, %3768
  %4092 = fadd fast float %4089, %3769
  %4093 = fadd fast float %4088, %3770
  %4094 = icmp ne i32 %3990, 0
  %4095 = select i1 %4094, float 1.000000e+00, float 0.000000e+00
  %4096 = fmul fast float %3981, %4095
  %4097 = fsub fast float %4035, %3775
  %4098 = fsub fast float %4036, %3776
  %4099 = fsub fast float %4037, %3777
  %4100 = fmul fast float %4097, %4096
  %4101 = fmul fast float %4098, %4096
  %4102 = fmul fast float %4099, %4096
  %4103 = fadd fast float %4100, %3775
  %4104 = fadd fast float %4101, %3776
  %4105 = fadd fast float %4102, %3777
  %4106 = fsub fast float %4008, %3774
  %4107 = fmul fast float %4106, %4096
  %4108 = fadd fast float %4107, %3774
  %4109 = fmul fast float %4096, %3761
  %4110 = fsub fast float %3761, %4109
  %4111 = fmul fast float %4096, %3760
  %4112 = fsub fast float %3760, %4111
  %4113 = bitcast float %3829 to i32
  %4114 = lshr i32 %4113, 16
  %4115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4114)  ; LegacyF16ToF32(value)
  %4116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %4117 = extractvalue %dx.types.ResRet.i32 %4116, 0
  %4118 = and i32 %4117, 1
  %4119 = icmp eq i32 %4118, 0
  br i1 %4119, label %4120, label %4145

; <label>:4120                                    ; preds = %4084
  %4121 = fadd fast float %4008, 0xBFB99999A0000000
  %4122 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4123 = fmul fast float %4122, 0x3FF1C71C80000000
  %4124 = fsub fast float 1.000000e+00, %4123
  %4125 = call float @dx.op.unary.f32(i32 7, float %4124)  ; Saturate(value)
  %4126 = fmul fast float %4125, %4035
  %4127 = fmul fast float %4125, %4036
  %4128 = fmul fast float %4125, %4037
  %4129 = call float @dx.op.unary.f32(i32 7, float %4126)  ; Saturate(value)
  %4130 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  %4131 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4132 = call float @dx.op.binary.f32(i32 35, float %4130, float %4131)  ; FMax(a,b)
  %4133 = call float @dx.op.binary.f32(i32 35, float %4129, float %4132)  ; FMax(a,b)
  %4134 = fcmp fast ogt float %4133, 0.000000e+00
  %4135 = bitcast float %4133 to i32
  %4136 = sub nsw i32 2129859010, %4135
  %4137 = bitcast i32 %4136 to float
  %4138 = select i1 %4134, float %4137, float 0.000000e+00
  %4139 = fmul fast float %4129, %4115
  %4140 = fmul fast float %4130, %4115
  %4141 = fmul fast float %4131, %4115
  %4142 = fmul fast float %4139, %4138
  %4143 = fmul fast float %4140, %4138
  %4144 = fmul fast float %4141, %4138
  br label %4145

; <label>:4145                                    ; preds = %4120, %4084
  %4146 = phi float [ %4115, %4084 ], [ %4142, %4120 ]
  %4147 = phi float [ %4115, %4084 ], [ %4143, %4120 ]
  %4148 = phi float [ %4115, %4084 ], [ %4144, %4120 ]
  %4149 = fsub fast float %4146, %3762
  %4150 = fsub fast float %4147, %3763
  %4151 = fsub fast float %4148, %3764
  %4152 = fmul fast float %4149, %4096
  %4153 = fmul fast float %4150, %4096
  %4154 = fmul fast float %4151, %4096
  %4155 = fadd fast float %4152, %3762
  %4156 = fadd fast float %4153, %3763
  %4157 = fadd fast float %4154, %3764
  %4158 = fadd fast float %3981, %3773
  %4159 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4160 = fsub fast float %4028, %3772
  %4161 = fmul fast float %4160, %4077
  %4162 = fadd fast float %4161, %3772
  %4163 = fsub fast float %4014, %3771
  %4164 = fmul fast float %4163, %4077
  %4165 = fadd fast float %4164, %3771
  %4166 = call float @dx.op.dot3.f32(i32 55, float %4035, float %4036, float %4037, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.CBufRet.f32 %4167, 1
  %4170 = fmul fast float %4169, %4166
  %4171 = fadd fast float %4170, %4168
  %4172 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4173 = bitcast float %3823 to i32
  %4174 = and i32 %4173, 65535
  %4175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4174)  ; LegacyF16ToF32(value)
  %4176 = lshr i32 %4173, 16
  %4177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4176)  ; LegacyF16ToF32(value)
  %4178 = fcmp fast oge float %4175, 0.000000e+00
  %4179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.f32 %4179, 0
  %4181 = select i1 %4178, float %4175, float %4180
  %4182 = fadd fast float %4181, %4177
  %4183 = fsub fast float %4172, %3759
  %4184 = fmul fast float %4183, %3981
  %4185 = fadd fast float %4184, %3759
  %4186 = fmul fast float %4182, %3981
  %4187 = call float @dx.op.binary.f32(i32 35, float %3758, float %4186)  ; FMax(a,b)
  %4188 = and i32 %3911, 16
  %4189 = icmp eq i32 %4188, 0
  br i1 %4189, label %4211, label %4190

; <label>:4190                                    ; preds = %4145
  %4191 = add i32 %3826, 0
  %4192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4191, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4193 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4192, %dx.types.Handle %3994, float %3922, float %3925, float undef, float undef, i32 0, i32 0, i32 undef, float %3927, float %3929, float undef, float %3931, float %3933, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4194 = extractvalue %dx.types.ResRet.f32 %4193, 0
  %4195 = extractvalue %dx.types.ResRet.f32 %4193, 1
  %4196 = extractvalue %dx.types.ResRet.f32 %4193, 2
  %4197 = and i32 %4113, 65535
  %4198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4197)  ; LegacyF16ToF32(value)
  %4199 = fmul fast float %4194, %3820
  %4200 = fmul fast float %4195, %3821
  %4201 = fmul fast float %4196, %3822
  %4202 = and i32 %3911, 16384
  %4203 = icmp ne i32 %4202, 0
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 0
  %4206 = select i1 %4203, float %4205, float 1.000000e+00
  %4207 = fmul fast float %4206, %4198
  %4208 = fmul fast float %4199, %4207
  %4209 = fmul fast float %4200, %4207
  %4210 = fmul fast float %4201, %4207
  br label %4211

; <label>:4211                                    ; preds = %4190, %4145
  %4212 = phi float [ %4208, %4190 ], [ 0.000000e+00, %4145 ]
  %4213 = phi float [ %4209, %4190 ], [ 0.000000e+00, %4145 ]
  %4214 = phi float [ %4210, %4190 ], [ 0.000000e+00, %4145 ]
  %4215 = fsub fast float %4212, %3765
  %4216 = fsub fast float %4213, %3766
  %4217 = fsub fast float %4214, %3767
  %4218 = fmul fast float %4215, %3981
  %4219 = fmul fast float %4216, %3981
  %4220 = fmul fast float %4217, %3981
  %4221 = fadd fast float %4218, %3765
  %4222 = fadd fast float %4219, %3766
  %4223 = fadd fast float %4220, %3767
  br label %3879

; <label>:4224                                    ; preds = %3879
  br label %4225

; <label>:4225                                    ; preds = %4224, %3692
  %4226 = phi float [ 0.000000e+00, %3692 ], [ %3880, %4224 ]
  %4227 = phi float [ %3636, %3692 ], [ %3881, %4224 ]
  %4228 = phi float [ %3627, %3692 ], [ %3882, %4224 ]
  %4229 = phi float [ 0.000000e+00, %3692 ], [ %3883, %4224 ]
  %4230 = phi float [ 0.000000e+00, %3692 ], [ %3884, %4224 ]
  %4231 = phi float [ %3620, %3692 ], [ %3885, %4224 ]
  %4232 = phi float [ %3621, %3692 ], [ %3886, %4224 ]
  %4233 = phi float [ %3622, %3692 ], [ %3887, %4224 ]
  %4234 = phi float [ %3658, %3692 ], [ %3888, %4224 ]
  %4235 = phi float [ %3660, %3692 ], [ %3889, %4224 ]
  %4236 = phi float [ %3662, %3692 ], [ %3890, %4224 ]
  %4237 = phi float [ %3688, %3692 ], [ %3891, %4224 ]
  %4238 = phi float [ %3689, %3692 ], [ %3892, %4224 ]
  %4239 = phi float [ %3690, %3692 ], [ %3893, %4224 ]
  %4240 = phi float [ %3625, %3692 ], [ %3894, %4224 ]
  %4241 = phi float [ %3624, %3692 ], [ %3895, %4224 ]
  %4242 = phi float [ 0.000000e+00, %3692 ], [ %3896, %4224 ]
  %4243 = phi float [ %3623, %3692 ], [ %3897, %4224 ]
  %4244 = phi float [ %3643, %3692 ], [ %3898, %4224 ]
  %4245 = phi float [ %3644, %3692 ], [ %3899, %4224 ]
  %4246 = phi float [ %3645, %3692 ], [ %3900, %4224 ]
  %4247 = call float @dx.op.dot3.f32(i32 55, float %4237, float %4238, float %4239, float %4237, float %4238, float %4239)  ; Dot3(ax,ay,az,bx,by,bz)
  %4248 = call float @dx.op.unary.f32(i32 25, float %4247)  ; Rsqrt(value)
  %4249 = fmul fast float %4248, %4237
  %4250 = fmul fast float %4248, %4238
  %4251 = fmul fast float %4248, %4239
  %4252 = fadd fast float %4242, %1133
  %4253 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4254 = call float @dx.op.dot3.f32(i32 55, float %4249, float %4250, float %4251, float %4249, float %4250, float %4251)  ; Dot3(ax,ay,az,bx,by,bz)
  %4255 = call float @dx.op.unary.f32(i32 25, float %4254)  ; Rsqrt(value)
  %4256 = fmul fast float %4255, %4249
  %4257 = fmul fast float %4255, %4250
  %4258 = fmul fast float %4255, %4251
  br label %4259

; <label>:4259                                    ; preds = %4225, %3611
  %4260 = phi float [ %4256, %4225 ], [ %3688, %3611 ]
  %4261 = phi float [ %4257, %4225 ], [ %3689, %3611 ]
  %4262 = phi float [ %4258, %4225 ], [ %3690, %3611 ]
  %4263 = phi float [ %4244, %4225 ], [ %3643, %3611 ]
  %4264 = phi float [ %4245, %4225 ], [ %3644, %3611 ]
  %4265 = phi float [ %4246, %4225 ], [ %3645, %3611 ]
  %4266 = phi float [ %4234, %4225 ], [ %3658, %3611 ]
  %4267 = phi float [ %4235, %4225 ], [ %3660, %3611 ]
  %4268 = phi float [ %4236, %4225 ], [ %3662, %3611 ]
  %4269 = phi float [ %4231, %4225 ], [ %3620, %3611 ]
  %4270 = phi float [ %4232, %4225 ], [ %3621, %3611 ]
  %4271 = phi float [ %4233, %4225 ], [ %3622, %3611 ]
  %4272 = phi float [ %4243, %4225 ], [ %3623, %3611 ]
  %4273 = phi float [ %4253, %4225 ], [ %1133, %3611 ]
  %4274 = phi float [ %4241, %4225 ], [ %3624, %3611 ]
  %4275 = phi float [ %4240, %4225 ], [ %3625, %3611 ]
  %4276 = phi float [ %4230, %4225 ], [ 0.000000e+00, %3611 ]
  %4277 = phi float [ %4229, %4225 ], [ 0.000000e+00, %3611 ]
  %4278 = phi float [ %4226, %4225 ], [ 0.000000e+00, %3611 ]
  %4279 = phi float [ %4227, %4225 ], [ %3636, %3611 ]
  %4280 = phi float [ %4228, %4225 ], [ %3627, %3611 ]
  %4281 = add i32 %43, 392
  %4282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.i32 %4282, 0
  %4284 = extractvalue %dx.types.ResRet.i32 %4282, 1
  %4285 = extractvalue %dx.types.ResRet.i32 %4282, 2
  %4286 = extractvalue %dx.types.ResRet.i32 %4282, 3
  %4287 = bitcast i32 %4283 to float
  %4288 = bitcast i32 %4284 to float
  %4289 = bitcast i32 %4285 to float
  %4290 = bitcast i32 %4286 to float
  %4291 = fsub fast float %4263, %4287
  %4292 = fsub fast float %4264, %4288
  %4293 = fsub fast float %4265, %4289
  %4294 = fmul fast float %4291, %223
  %4295 = fmul fast float %4292, %223
  %4296 = fmul fast float %4293, %223
  %4297 = fadd fast float %4294, %4287
  %4298 = fadd fast float %4295, %4288
  %4299 = fadd fast float %4296, %4289
  %4300 = fsub fast float %4273, %4290
  %4301 = fmul fast float %4300, %223
  %4302 = fadd fast float %4301, %4290
  %4303 = fadd fast float %4272, 0xBFB99999A0000000
  %4304 = call float @dx.op.unary.f32(i32 7, float %4303)  ; Saturate(value)
  %4305 = fmul fast float %4304, 0x3FF1C71C80000000
  %4306 = call float @dx.op.binary.f32(i32 36, float %4272, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4307 = fsub fast float 1.000000e+00, %4305
  %4308 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4309 = fmul fast float %4297, %4308
  %4310 = fmul fast float %4298, %4308
  %4311 = fmul fast float %4299, %4308
  %4312 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4313 = call float @dx.op.unary.f32(i32 7, float %4310)  ; Saturate(value)
  %4314 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4315 = fmul fast float %4297, %4305
  %4316 = fmul fast float %4298, %4305
  %4317 = fmul fast float %4299, %4305
  %4318 = fadd fast float %4315, %4306
  %4319 = fadd fast float %4316, %4306
  %4320 = fadd fast float %4317, %4306
  %4321 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  %4322 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  %4323 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4324 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %4326 = extractvalue %dx.types.ResRet.i32 %4325, 0
  %4327 = and i32 %4326, 1
  %4328 = icmp eq i32 %4327, 0
  br i1 %4328, label %4343, label %4329

; <label>:4329                                    ; preds = %4259
  %4330 = call float @dx.op.binary.f32(i32 35, float %4313, float %4314)  ; FMax(a,b)
  %4331 = call float @dx.op.binary.f32(i32 35, float %4312, float %4330)  ; FMax(a,b)
  %4332 = fcmp fast ogt float %4331, 0.000000e+00
  %4333 = bitcast float %4331 to i32
  %4334 = sub nsw i32 2129859010, %4333
  %4335 = bitcast i32 %4334 to float
  %4336 = select i1 %4332, float %4335, float 0.000000e+00
  %4337 = fmul fast float %4312, %4269
  %4338 = fmul fast float %4313, %4270
  %4339 = fmul fast float %4314, %4271
  %4340 = fmul fast float %4337, %4336
  %4341 = fmul fast float %4338, %4336
  %4342 = fmul fast float %4339, %4336
  br label %4343

; <label>:4343                                    ; preds = %4329, %4259
  %4344 = phi float [ %4340, %4329 ], [ %4269, %4259 ]
  %4345 = phi float [ %4341, %4329 ], [ %4270, %4259 ]
  %4346 = phi float [ %4342, %4329 ], [ %4271, %4259 ]
  %4347 = fadd fast float %4312, 0xBFD51EB860000000
  %4348 = fadd fast float %4313, 0xBFD51EB860000000
  %4349 = fadd fast float %4314, 0xBFD51EB860000000
  %4350 = fmul fast float %4347, %4347
  %4351 = fmul fast float %4348, %4348
  %4352 = fmul fast float %4349, %4349
  %4353 = fmul fast float %4350, %4350
  %4354 = fmul fast float %4353, 1.000000e+02
  %4355 = fmul fast float %4351, %4351
  %4356 = fmul fast float %4355, 1.000000e+02
  %4357 = fmul fast float %4352, %4352
  %4358 = fmul fast float %4357, 1.000000e+02
  %4359 = fadd fast float %4354, 3.500000e+00
  %4360 = fadd fast float %4356, 3.500000e+00
  %4361 = fadd fast float %4358, 3.500000e+00
  %4362 = call float @dx.op.binary.f32(i32 35, float %4344, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4363 = call float @dx.op.binary.f32(i32 35, float %4345, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4364 = call float @dx.op.binary.f32(i32 35, float %4346, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4365 = fdiv fast float %4359, %4362
  %4366 = fdiv fast float %4360, %4363
  %4367 = fdiv fast float %4361, %4364
  %4368 = fmul fast float %3626, 0xBFF7154760000000
  %4369 = fmul fast float %4368, %4365
  %4370 = call float @dx.op.unary.f32(i32 21, float %4369)  ; Exp(value)
  %4371 = fmul fast float %4370, 2.500000e-01
  %4372 = fmul fast float %3626, 0xBFDEC709E0000000
  %4373 = fmul fast float %4372, %4365
  %4374 = call float @dx.op.unary.f32(i32 21, float %4373)  ; Exp(value)
  %4375 = fmul fast float %4374, 7.500000e-01
  %4376 = fmul fast float %4368, %4366
  %4377 = call float @dx.op.unary.f32(i32 21, float %4376)  ; Exp(value)
  %4378 = fmul fast float %4377, 2.500000e-01
  %4379 = fmul fast float %4372, %4366
  %4380 = call float @dx.op.unary.f32(i32 21, float %4379)  ; Exp(value)
  %4381 = fmul fast float %4380, 7.500000e-01
  %4382 = fmul fast float %4368, %4367
  %4383 = call float @dx.op.unary.f32(i32 21, float %4382)  ; Exp(value)
  %4384 = fmul fast float %4383, 2.500000e-01
  %4385 = fmul fast float %4372, %4367
  %4386 = call float @dx.op.unary.f32(i32 21, float %4385)  ; Exp(value)
  %4387 = fmul fast float %4386, 7.500000e-01
  %4388 = fadd fast float %4371, %4375
  %4389 = fadd fast float %4378, %4381
  %4390 = fadd fast float %4384, %4387
  %4391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4392 = extractvalue %dx.types.CBufRet.i32 %4391, 3
  %4393 = and i32 %4392, 8
  %4394 = icmp ne i32 %4393, 0
  %4395 = call float @dx.op.binary.f32(i32 35, float %4312, float %4297)  ; FMax(a,b)
  %4396 = call float @dx.op.binary.f32(i32 35, float %4313, float %4297)  ; FMax(a,b)
  %4397 = call float @dx.op.binary.f32(i32 35, float %4314, float %4297)  ; FMax(a,b)
  %4398 = call float @dx.op.dot3.f32(i32 55, float %4312, float %4313, float %4314, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4399 = select i1 %282, float %4297, float %4312
  %4400 = select i1 %282, float %4398, float %4313
  %4401 = select i1 %282, float 1.000000e+00, float %4314
  %4402 = select i1 %4394, float %4395, float %4399
  %4403 = select i1 %4394, float %4396, float %4400
  %4404 = select i1 %4394, float %4397, float %4401
  %4405 = and i32 %258, 3
  %4406 = select i1 %252, i32 %4405, i32 0
  %4407 = icmp eq i32 %4406, 1
  br i1 %4407, label %4408, label %4484

; <label>:4408                                    ; preds = %4343
  %4409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4410 = extractvalue %dx.types.CBufRet.f32 %4409, 0
  %4411 = extractvalue %dx.types.CBufRet.f32 %4409, 1
  %4412 = fadd fast float %4410, %178
  %4413 = fadd fast float %4411, %179
  %4414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.f32 %4414, 0
  %4416 = extractvalue %dx.types.CBufRet.f32 %4414, 1
  %4417 = fsub fast float %4412, %4415
  %4418 = fsub fast float %4413, %4416
  %4419 = fmul fast float %4417, %4417
  %4420 = fmul fast float %4418, %4418
  %4421 = fadd fast float %4419, %4420
  %4422 = call float @dx.op.unary.f32(i32 24, float %4421)  ; Sqrt(value)
  %4423 = extractvalue %dx.types.CBufRet.f32 %4414, 2
  %4424 = fcmp fast olt float %4422, %4423
  br i1 %4424, label %4425, label %4478

; <label>:4425                                    ; preds = %4408
  %4426 = extractvalue %dx.types.CBufRet.f32 %4409, 2
  %4427 = fadd fast float %4426, %180
  %4428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.f32 %4428, 0
  %4430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.f32 %4430, 0
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.CBufRet.f32 %4428, 1
  %4435 = extractvalue %dx.types.CBufRet.f32 %4430, 1
  %4436 = extractvalue %dx.types.CBufRet.f32 %4432, 1
  %4437 = extractvalue %dx.types.CBufRet.f32 %4428, 3
  %4438 = extractvalue %dx.types.CBufRet.f32 %4430, 3
  %4439 = extractvalue %dx.types.CBufRet.f32 %4432, 3
  %4440 = fadd fast float %4437, %4412
  %4441 = fadd fast float %4438, %4413
  %4442 = fadd fast float %4427, %4439
  %4443 = fmul fast float %4440, %4429
  %4444 = call float @dx.op.tertiary.f32(i32 46, float %4441, float %4431, float %4443)  ; FMad(a,b,c)
  %4445 = call float @dx.op.tertiary.f32(i32 46, float %4442, float %4433, float %4444)  ; FMad(a,b,c)
  %4446 = fmul fast float %4440, %4434
  %4447 = call float @dx.op.tertiary.f32(i32 46, float %4441, float %4435, float %4446)  ; FMad(a,b,c)
  %4448 = call float @dx.op.tertiary.f32(i32 46, float %4442, float %4436, float %4447)  ; FMad(a,b,c)
  %4449 = fsub fast float %4445, %4437
  %4450 = fsub fast float %4448, %4438
  %4451 = fsub fast float %4449, %4415
  %4452 = fadd fast float %4451, %4423
  %4453 = fsub fast float %4450, %4416
  %4454 = fadd fast float %4453, %4423
  %4455 = extractvalue %dx.types.CBufRet.f32 %4414, 3
  %4456 = fmul fast float %4452, %4455
  %4457 = fmul fast float %4454, %4455
  %4458 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4459 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4460 = fsub fast float 1.000000e+00, %4458
  %4461 = fsub fast float 1.000000e+00, %4459
  %4462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %37, float %4460, float %4461, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4463 = extractvalue %dx.types.ResRet.f32 %4462, 0
  %4464 = fcmp fast ugt float %4463, 0.000000e+00
  br i1 %4464, label %4465, label %4478

; <label>:4465                                    ; preds = %4425
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4468 = fmul fast float %4467, %4463
  %4469 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4470 = fadd fast float %4469, %4468
  %4471 = extractvalue %dx.types.CBufRet.f32 %4432, 2
  %4472 = fadd fast float %4470, %4439
  %4473 = fmul fast float %4445, %4433
  %4474 = call float @dx.op.tertiary.f32(i32 46, float %4448, float %4436, float %4473)  ; FMad(a,b,c)
  %4475 = call float @dx.op.tertiary.f32(i32 46, float %4472, float %4471, float %4474)  ; FMad(a,b,c)
  %4476 = fsub fast float %4475, %4439
  %4477 = fsub fast float %4476, %4426
  br label %4478

; <label>:4478                                    ; preds = %4465, %4425, %4408
  %4479 = phi i1 [ true, %4465 ], [ false, %4425 ], [ false, %4408 ]
  %4480 = phi float [ %4477, %4465 ], [ -1.310720e+05, %4425 ], [ -1.310720e+05, %4408 ]
  %4481 = fsub fast float %4480, %180
  %4482 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4483 = select i1 %4479, float %4482, float 1.000000e+00
  br label %4484

; <label>:4484                                    ; preds = %4478, %4343
  %4485 = phi float [ %4483, %4478 ], [ 0.000000e+00, %4343 ]
  %4486 = icmp eq i32 %4406, 3
  %4487 = select i1 %4486, float 1.000000e+00, float %4485
  %4488 = call float @dx.op.binary.f32(i32 35, float %4278, float %4487)  ; FMax(a,b)
  %4489 = fcmp fast olt float %4487, 1.000000e+00
  %4490 = fcmp uge float %59, 0.000000e+00
  %4491 = and i1 %4490, %4489
  br i1 %4491, label %4492, label %4502

; <label>:4492                                    ; preds = %4484
  %4493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %35, float %59, float %60, float %61, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4494 = extractvalue %dx.types.ResRet.f32 %4493, 0
  %4495 = extractvalue %dx.types.ResRet.f32 %4493, 1
  %4496 = extractvalue %dx.types.ResRet.f32 %4493, 2
  %4497 = fadd fast float %4494, %4488
  %4498 = fcmp ule float %58, 0.000000e+00
  %4499 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4500 = select i1 %4498, float %4499, float 1.000000e+00
  %4501 = fmul fast float %4500, %4496
  br label %4502

; <label>:4502                                    ; preds = %4492, %4484
  %4503 = phi float [ %4497, %4492 ], [ %4488, %4484 ]
  %4504 = phi float [ %4495, %4492 ], [ 0.000000e+00, %4484 ]
  %4505 = phi float [ %4501, %4492 ], [ 0.000000e+00, %4484 ]
  %4506 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4507 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4508 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4509 = fcmp fast une float %4507, 0.000000e+00
  %4510 = fcmp fast une float %4508, 0.000000e+00
  %4511 = or i1 %4509, %4510
  br i1 %4511, label %4512, label %5071

; <label>:4512                                    ; preds = %4502
  br i1 %4509, label %4513, label %4786

; <label>:4513                                    ; preds = %4512
  %4514 = call float @dx.op.unary.f32(i32 23, float %4275)  ; Log(value)
  %4515 = fmul fast float %4514, 4.000000e+00
  %4516 = call float @dx.op.unary.f32(i32 21, float %4515)  ; Exp(value)
  %4517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.f32 %4517, 0
  %4519 = fmul fast float %4518, %46
  %4520 = fmul fast float %4518, %47
  %4521 = fmul fast float %4518, %48
  %4522 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4523 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %4524 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %4525 = call float @dx.op.unary.f32(i32 23, float %4522)  ; Log(value)
  %4526 = call float @dx.op.unary.f32(i32 23, float %4523)  ; Log(value)
  %4527 = call float @dx.op.unary.f32(i32 23, float %4524)  ; Log(value)
  %4528 = fmul fast float %4525, 4.000000e+00
  %4529 = fmul fast float %4526, 4.000000e+00
  %4530 = fmul fast float %4527, 4.000000e+00
  %4531 = call float @dx.op.unary.f32(i32 21, float %4528)  ; Exp(value)
  %4532 = call float @dx.op.unary.f32(i32 21, float %4529)  ; Exp(value)
  %4533 = call float @dx.op.unary.f32(i32 21, float %4530)  ; Exp(value)
  %4534 = fadd fast float %4532, %4531
  %4535 = fadd fast float %4534, %4533
  %4536 = fdiv fast float 1.000000e+00, %4535
  %4537 = fmul fast float %4536, %4531
  %4538 = fcmp fast ogt float %55, 0.000000e+00
  %4539 = fcmp fast ogt float %56, 0.000000e+00
  %4540 = fcmp fast ogt float %57, 0.000000e+00
  %4541 = fcmp fast olt float %55, 0.000000e+00
  %4542 = fcmp fast olt float %56, 0.000000e+00
  %4543 = fcmp fast olt float %57, 0.000000e+00
  %4544 = zext i1 %4538 to i32
  %4545 = zext i1 %4539 to i32
  %4546 = zext i1 %4540 to i32
  %4547 = zext i1 %4541 to i32
  %4548 = zext i1 %4542 to i32
  %4549 = zext i1 %4543 to i32
  %4550 = sub nsw i32 %4544, %4547
  %4551 = sub nsw i32 %4545, %4548
  %4552 = sub nsw i32 %4546, %4549
  %4553 = call float @dx.op.unary.f32(i32 83, float %4519)  ; DerivCoarseX(value)
  %4554 = call float @dx.op.unary.f32(i32 83, float %4520)  ; DerivCoarseX(value)
  %4555 = call float @dx.op.unary.f32(i32 83, float %4521)  ; DerivCoarseX(value)
  %4556 = call float @dx.op.unary.f32(i32 84, float %4519)  ; DerivCoarseY(value)
  %4557 = call float @dx.op.unary.f32(i32 84, float %4520)  ; DerivCoarseY(value)
  %4558 = call float @dx.op.unary.f32(i32 84, float %4521)  ; DerivCoarseY(value)
  %4559 = fcmp fast ole float %293, %4537
  %4560 = fmul fast float %4536, %4534
  %4561 = fcmp fast ole float %293, %4560
  %4562 = select i1 %4561, float %4521, float %4519
  %4563 = select i1 %4561, float %4519, float %4520
  %4564 = select i1 %4559, float %4520, float %4562
  %4565 = select i1 %4559, float %4521, float %4563
  %4566 = select i1 %4561, float %4555, float %4553
  %4567 = select i1 %4561, float %4553, float %4554
  %4568 = select i1 %4559, float %4554, float %4566
  %4569 = select i1 %4559, float %4555, float %4567
  %4570 = select i1 %4561, float %4558, float %4556
  %4571 = select i1 %4561, float %4556, float %4557
  %4572 = select i1 %4559, float %4557, float %4570
  %4573 = select i1 %4559, float %4558, float %4571
  %4574 = call float @dx.op.unary.f32(i32 27, float %4564)  ; Round_ni(value)
  %4575 = call float @dx.op.unary.f32(i32 27, float %4565)  ; Round_ni(value)
  %4576 = fptosi float %4574 to i32
  %4577 = fptosi float %4575 to i32
  %4578 = xor i32 %4577, %4576
  %4579 = sitofp i32 %4578 to float
  %4580 = fptosi float %4579 to i32
  %4581 = sitofp i32 %4580 to float
  %4582 = fmul fast float %4581, 0x3FE3C6EF40000000
  %4583 = frem fast float %4574, 2.560000e+02
  %4584 = frem fast float %4575, 2.560000e+02
  %4585 = fptoui float %4583 to i32
  %4586 = fptoui float %4584 to i32
  %4587 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4585, i32 %4586, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = extractvalue %dx.types.ResRet.f32 %4587, 1
  %4590 = extractvalue %dx.types.ResRet.f32 %4587, 2
  %4591 = fadd fast float %4588, %4582
  %4592 = fadd fast float %4589, %4582
  %4593 = fadd fast float %4590, %4582
  %4594 = call float @dx.op.unary.f32(i32 22, float %4591)  ; Frc(value)
  %4595 = call float @dx.op.unary.f32(i32 22, float %4592)  ; Frc(value)
  %4596 = call float @dx.op.unary.f32(i32 22, float %4593)  ; Frc(value)
  %4597 = fmul fast float %4596, 0x401921FB60000000
  %4598 = call float @dx.op.unary.f32(i32 13, float %4597)  ; Sin(value)
  %4599 = call float @dx.op.unary.f32(i32 12, float %4597)  ; Cos(value)
  %4600 = fsub fast float -0.000000e+00, %4599
  %4601 = fmul fast float %4599, %4564
  %4602 = call float @dx.op.tertiary.f32(i32 46, float %4598, float %4565, float %4601)  ; FMad(a,b,c)
  %4603 = fmul fast float %4598, %4564
  %4604 = call float @dx.op.tertiary.f32(i32 46, float %4600, float %4565, float %4603)  ; FMad(a,b,c)
  %4605 = fadd fast float %4602, %4594
  %4606 = fadd fast float %4604, %4595
  %4607 = extractvalue %dx.types.CBufRet.f32 %4517, 3
  %4608 = bitcast float %4607 to i32
  %4609 = icmp eq i32 %4608, 0
  br i1 %4609, label %4648, label %4610

; <label>:4610                                    ; preds = %4513
  %4611 = add i32 %4608, 0
  %4612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4611, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4613 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4612, %dx.types.Handle %96, float %4605, float %4606, float undef, float undef, i32 0, i32 0, i32 undef, float %4568, float %4569, float undef, float %4572, float %4573, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4614 = extractvalue %dx.types.ResRet.f32 %4613, 0
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 1
  %4617 = extractvalue %dx.types.CBufRet.f32 %4615, 2
  %4618 = fsub fast float 1.000000e+00, %4507
  %4619 = call float @dx.op.binary.f32(i32 35, float %4618, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4620 = bitcast float %4507 to i32
  %4621 = sitofp i32 %4620 to float
  %4622 = fadd fast float %4621, 0xC1CFBF8940000000
  %4623 = fmul fast float %4617, %4622
  %4624 = fadd fast float %4623, 0x41CFBF8940000000
  %4625 = fptosi float %4624 to i32
  %4626 = bitcast i32 %4625 to float
  %4627 = bitcast float %4619 to i32
  %4628 = sitofp i32 %4627 to float
  %4629 = fadd fast float %4628, 0xC1CFBF8940000000
  %4630 = fmul fast float %4629, %4617
  %4631 = fadd fast float %4630, 0x41CFBF8940000000
  %4632 = fptosi float %4631 to i32
  %4633 = bitcast i32 %4632 to float
  %4634 = fmul fast float %4626, %4616
  %4635 = fmul fast float %4633, %4616
  %4636 = fsub fast float %4619, %4634
  %4637 = fadd fast float %4635, %4619
  %4638 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4639 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4640 = fsub fast float %4614, %4638
  %4641 = fsub fast float %4639, %4638
  %4642 = bitcast float %4641 to i32
  %4643 = sub nsw i32 2129859010, %4642
  %4644 = bitcast i32 %4643 to float
  %4645 = fmul fast float %4644, %4640
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = fcmp fast olt float %4646, 0x3F70101020000000
  br i1 %4647, label %4786, label %4648

; <label>:4648                                    ; preds = %4610, %4513
  %4649 = phi float [ %4646, %4610 ], [ %4507, %4513 ]
  %4650 = fmul fast float %4649, %4516
  %4651 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4652 = extractvalue %dx.types.CBufRet.i32 %4651, 1
  %4653 = extractvalue %dx.types.CBufRet.i32 %4651, 0
  %4654 = add i32 %4653, 0
  %4655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4656 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4655, %dx.types.Handle %95, float %4605, float %4606, float undef, float undef, i32 0, i32 0, i32 undef, float %4568, float %4569, float undef, float %4572, float %4573, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4657 = extractvalue %dx.types.ResRet.f32 %4656, 0
  %4658 = extractvalue %dx.types.ResRet.f32 %4656, 1
  %4659 = extractvalue %dx.types.ResRet.f32 %4656, 2
  %4660 = extractvalue %dx.types.ResRet.f32 %4656, 3
  %4661 = and i32 %4652, 255
  %4662 = uitofp i32 %4661 to float
  %4663 = lshr i32 %4652, 8
  %4664 = and i32 %4663, 255
  %4665 = uitofp i32 %4664 to float
  %4666 = fmul fast float %4660, %4662
  %4667 = fadd fast float %4666, %4665
  %4668 = fmul fast float %4667, 0x3F70101000000000
  %4669 = fadd fast float %4668, 0xBFB99999A0000000
  %4670 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4671 = fmul fast float %4670, 0x3FF1C71C80000000
  %4672 = call float @dx.op.binary.f32(i32 36, float %4668, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4673 = fsub fast float 1.000000e+00, %4671
  %4674 = call float @dx.op.unary.f32(i32 7, float %4673)  ; Saturate(value)
  %4675 = fmul fast float %4674, %4657
  %4676 = fmul fast float %4674, %4658
  %4677 = fmul fast float %4674, %4659
  %4678 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4679 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4680 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4681 = fmul fast float %4671, %4657
  %4682 = fmul fast float %4671, %4658
  %4683 = fmul fast float %4671, %4659
  %4684 = fadd fast float %4681, %4672
  %4685 = fadd fast float %4682, %4672
  %4686 = fadd fast float %4683, %4672
  %4687 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4688 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4689 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4691 = extractvalue %dx.types.CBufRet.i32 %4690, 3
  %4692 = extractvalue %dx.types.CBufRet.i32 %4690, 2
  %4693 = add i32 %4692, 0
  %4694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4695 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4694, %dx.types.Handle %95, float %4605, float %4606, float undef, float undef, i32 0, i32 0, i32 undef, float %4568, float %4569, float undef, float %4572, float %4573, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4696 = extractvalue %dx.types.ResRet.f32 %4695, 0
  %4697 = extractvalue %dx.types.ResRet.f32 %4695, 1
  %4698 = extractvalue %dx.types.ResRet.f32 %4695, 2
  %4699 = extractvalue %dx.types.ResRet.f32 %4695, 3
  %4700 = and i32 %4691, 255
  %4701 = uitofp i32 %4700 to float
  %4702 = lshr i32 %4691, 8
  %4703 = and i32 %4702, 255
  %4704 = uitofp i32 %4703 to float
  %4705 = lshr i32 %4691, 16
  %4706 = and i32 %4705, 255
  %4707 = uitofp i32 %4706 to float
  %4708 = fmul fast float %4707, 0x3F70101000000000
  %4709 = fmul fast float %4696, %4701
  %4710 = fadd fast float %4709, %4704
  %4711 = fmul fast float %4710, 0x3F70101000000000
  %4712 = fadd fast float %4697, -5.000000e-01
  %4713 = fadd fast float %4699, -5.000000e-01
  %4714 = fmul fast float %4712, %4708
  %4715 = fmul fast float %4713, %4708
  %4716 = fadd fast float %4714, 5.000000e-01
  %4717 = fadd fast float %4715, 5.000000e-01
  %4718 = fmul fast float %4716, 2.000000e+00
  %4719 = fadd fast float %4718, -1.000000e+00
  %4720 = fmul fast float %4717, 2.000000e+00
  %4721 = fadd fast float %4720, -1.000000e+00
  %4722 = fadd fast float %4719, %4721
  %4723 = fmul fast float %4722, 5.000000e-01
  %4724 = fsub fast float %4719, %4721
  %4725 = fmul fast float %4724, 5.000000e-01
  %4726 = call float @dx.op.unary.f32(i32 6, float %4723)  ; FAbs(value)
  %4727 = fsub fast float 1.000000e+00, %4726
  %4728 = call float @dx.op.unary.f32(i32 6, float %4725)  ; FAbs(value)
  %4729 = fsub fast float %4727, %4728
  %4730 = call float @dx.op.dot3.f32(i32 55, float %4723, float %4725, float %4729, float %4723, float %4725, float %4729)  ; Dot3(ax,ay,az,bx,by,bz)
  %4731 = call float @dx.op.unary.f32(i32 25, float %4730)  ; Rsqrt(value)
  %4732 = fmul fast float %4723, %4731
  %4733 = fmul fast float %4725, %4731
  %4734 = select i1 %4561, i32 %4551, i32 %4552
  %4735 = select i1 %4559, i32 %4550, i32 %4734
  %4736 = sitofp i32 %4735 to float
  %4737 = fmul fast float %4729, %4736
  %4738 = fmul fast float %4737, %4731
  %4739 = select i1 %4561, float %4738, float %4733
  %4740 = select i1 %4561, float %4733, float %4738
  %4741 = select i1 %4559, float %4738, float %4732
  %4742 = select i1 %4559, float %4733, float %4739
  %4743 = select i1 %4559, float %4732, float %4740
  %4744 = fsub fast float %4678, %4402
  %4745 = fsub fast float %4679, %4403
  %4746 = fsub fast float %4680, %4404
  %4747 = fmul fast float %4744, %4650
  %4748 = fmul fast float %4745, %4650
  %4749 = fmul fast float %4746, %4650
  %4750 = fadd fast float %4747, %4402
  %4751 = fadd fast float %4748, %4403
  %4752 = fadd fast float %4749, %4404
  %4753 = fsub fast float %4687, %4321
  %4754 = fsub fast float %4688, %4322
  %4755 = fsub fast float %4689, %4323
  %4756 = fmul fast float %4753, %4650
  %4757 = fmul fast float %4754, %4650
  %4758 = fmul fast float %4755, %4650
  %4759 = fadd fast float %4756, %4321
  %4760 = fadd fast float %4757, %4322
  %4761 = fadd fast float %4758, %4323
  %4762 = fadd fast float %4741, %4260
  %4763 = fadd fast float %4742, %4261
  %4764 = fadd fast float %4743, %4262
  %4765 = call float @dx.op.dot3.f32(i32 55, float %4762, float %4763, float %4764, float %4762, float %4763, float %4764)  ; Dot3(ax,ay,az,bx,by,bz)
  %4766 = call float @dx.op.unary.f32(i32 25, float %4765)  ; Rsqrt(value)
  %4767 = fmul fast float %4762, %4766
  %4768 = fmul fast float %4763, %4766
  %4769 = fmul fast float %4764, %4766
  %4770 = fsub fast float %4767, %4260
  %4771 = fsub fast float %4768, %4261
  %4772 = fsub fast float %4769, %4262
  %4773 = fmul fast float %4770, %4650
  %4774 = fmul fast float %4771, %4650
  %4775 = fmul fast float %4772, %4650
  %4776 = fadd fast float %4773, %4260
  %4777 = fadd fast float %4774, %4261
  %4778 = fadd fast float %4775, %4262
  %4779 = call float @dx.op.binary.f32(i32 36, float %4275, float %4698)  ; FMin(a,b)
  %4780 = fsub fast float %4779, %4275
  %4781 = fmul fast float %4780, %4650
  %4782 = fadd fast float %4781, %4275
  %4783 = fsub fast float %4711, %4324
  %4784 = fmul fast float %4783, %4650
  %4785 = fadd fast float %4784, %4324
  br label %4786

; <label>:4786                                    ; preds = %4648, %4610, %4512
  %4787 = phi float [ %4759, %4648 ], [ %4321, %4610 ], [ %4321, %4512 ]
  %4788 = phi float [ %4760, %4648 ], [ %4322, %4610 ], [ %4322, %4512 ]
  %4789 = phi float [ %4761, %4648 ], [ %4323, %4610 ], [ %4323, %4512 ]
  %4790 = phi float [ %4750, %4648 ], [ %4402, %4610 ], [ %4402, %4512 ]
  %4791 = phi float [ %4751, %4648 ], [ %4403, %4610 ], [ %4403, %4512 ]
  %4792 = phi float [ %4752, %4648 ], [ %4404, %4610 ], [ %4404, %4512 ]
  %4793 = phi float [ %4776, %4648 ], [ %4260, %4610 ], [ %4260, %4512 ]
  %4794 = phi float [ %4777, %4648 ], [ %4261, %4610 ], [ %4261, %4512 ]
  %4795 = phi float [ %4778, %4648 ], [ %4262, %4610 ], [ %4262, %4512 ]
  %4796 = phi float [ %4785, %4648 ], [ %4324, %4610 ], [ %4324, %4512 ]
  %4797 = phi float [ %4782, %4648 ], [ %4275, %4610 ], [ %4275, %4512 ]
  br i1 %4510, label %4798, label %5071

; <label>:4798                                    ; preds = %4786
  %4799 = call float @dx.op.unary.f32(i32 23, float %4797)  ; Log(value)
  %4800 = fmul fast float %4799, 4.000000e+00
  %4801 = call float @dx.op.unary.f32(i32 21, float %4800)  ; Exp(value)
  %4802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4803 = extractvalue %dx.types.CBufRet.f32 %4802, 0
  %4804 = fmul fast float %4803, %46
  %4805 = fmul fast float %4803, %47
  %4806 = fmul fast float %4803, %48
  %4807 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4808 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %4809 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %4810 = call float @dx.op.unary.f32(i32 23, float %4807)  ; Log(value)
  %4811 = call float @dx.op.unary.f32(i32 23, float %4808)  ; Log(value)
  %4812 = call float @dx.op.unary.f32(i32 23, float %4809)  ; Log(value)
  %4813 = fmul fast float %4810, 4.000000e+00
  %4814 = fmul fast float %4811, 4.000000e+00
  %4815 = fmul fast float %4812, 4.000000e+00
  %4816 = call float @dx.op.unary.f32(i32 21, float %4813)  ; Exp(value)
  %4817 = call float @dx.op.unary.f32(i32 21, float %4814)  ; Exp(value)
  %4818 = call float @dx.op.unary.f32(i32 21, float %4815)  ; Exp(value)
  %4819 = fadd fast float %4817, %4816
  %4820 = fadd fast float %4819, %4818
  %4821 = fdiv fast float 1.000000e+00, %4820
  %4822 = fmul fast float %4821, %4816
  %4823 = fcmp fast ogt float %55, 0.000000e+00
  %4824 = fcmp fast ogt float %56, 0.000000e+00
  %4825 = fcmp fast ogt float %57, 0.000000e+00
  %4826 = fcmp fast olt float %55, 0.000000e+00
  %4827 = fcmp fast olt float %56, 0.000000e+00
  %4828 = fcmp fast olt float %57, 0.000000e+00
  %4829 = zext i1 %4823 to i32
  %4830 = zext i1 %4824 to i32
  %4831 = zext i1 %4825 to i32
  %4832 = zext i1 %4826 to i32
  %4833 = zext i1 %4827 to i32
  %4834 = zext i1 %4828 to i32
  %4835 = sub nsw i32 %4829, %4832
  %4836 = sub nsw i32 %4830, %4833
  %4837 = sub nsw i32 %4831, %4834
  %4838 = call float @dx.op.unary.f32(i32 83, float %4804)  ; DerivCoarseX(value)
  %4839 = call float @dx.op.unary.f32(i32 83, float %4805)  ; DerivCoarseX(value)
  %4840 = call float @dx.op.unary.f32(i32 83, float %4806)  ; DerivCoarseX(value)
  %4841 = call float @dx.op.unary.f32(i32 84, float %4804)  ; DerivCoarseY(value)
  %4842 = call float @dx.op.unary.f32(i32 84, float %4805)  ; DerivCoarseY(value)
  %4843 = call float @dx.op.unary.f32(i32 84, float %4806)  ; DerivCoarseY(value)
  %4844 = fcmp fast ole float %293, %4822
  %4845 = fmul fast float %4821, %4819
  %4846 = fcmp fast ole float %293, %4845
  %4847 = select i1 %4846, float %4806, float %4804
  %4848 = select i1 %4846, float %4804, float %4805
  %4849 = select i1 %4844, float %4805, float %4847
  %4850 = select i1 %4844, float %4806, float %4848
  %4851 = select i1 %4846, float %4840, float %4838
  %4852 = select i1 %4846, float %4838, float %4839
  %4853 = select i1 %4844, float %4839, float %4851
  %4854 = select i1 %4844, float %4840, float %4852
  %4855 = select i1 %4846, float %4843, float %4841
  %4856 = select i1 %4846, float %4841, float %4842
  %4857 = select i1 %4844, float %4842, float %4855
  %4858 = select i1 %4844, float %4843, float %4856
  %4859 = call float @dx.op.unary.f32(i32 27, float %4849)  ; Round_ni(value)
  %4860 = call float @dx.op.unary.f32(i32 27, float %4850)  ; Round_ni(value)
  %4861 = fptosi float %4859 to i32
  %4862 = fptosi float %4860 to i32
  %4863 = xor i32 %4862, %4861
  %4864 = sitofp i32 %4863 to float
  %4865 = fptosi float %4864 to i32
  %4866 = sitofp i32 %4865 to float
  %4867 = fmul fast float %4866, 0x3FE3C6EF40000000
  %4868 = frem fast float %4859, 2.560000e+02
  %4869 = frem fast float %4860, 2.560000e+02
  %4870 = fptoui float %4868 to i32
  %4871 = fptoui float %4869 to i32
  %4872 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4870, i32 %4871, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4873 = extractvalue %dx.types.ResRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.ResRet.f32 %4872, 1
  %4875 = extractvalue %dx.types.ResRet.f32 %4872, 2
  %4876 = fadd fast float %4873, %4867
  %4877 = fadd fast float %4874, %4867
  %4878 = fadd fast float %4875, %4867
  %4879 = call float @dx.op.unary.f32(i32 22, float %4876)  ; Frc(value)
  %4880 = call float @dx.op.unary.f32(i32 22, float %4877)  ; Frc(value)
  %4881 = call float @dx.op.unary.f32(i32 22, float %4878)  ; Frc(value)
  %4882 = fmul fast float %4881, 0x401921FB60000000
  %4883 = call float @dx.op.unary.f32(i32 13, float %4882)  ; Sin(value)
  %4884 = call float @dx.op.unary.f32(i32 12, float %4882)  ; Cos(value)
  %4885 = fsub fast float -0.000000e+00, %4884
  %4886 = fmul fast float %4884, %4849
  %4887 = call float @dx.op.tertiary.f32(i32 46, float %4883, float %4850, float %4886)  ; FMad(a,b,c)
  %4888 = fmul fast float %4883, %4849
  %4889 = call float @dx.op.tertiary.f32(i32 46, float %4885, float %4850, float %4888)  ; FMad(a,b,c)
  %4890 = fadd fast float %4887, %4879
  %4891 = fadd fast float %4889, %4880
  %4892 = extractvalue %dx.types.CBufRet.f32 %4802, 3
  %4893 = bitcast float %4892 to i32
  %4894 = icmp eq i32 %4893, 0
  br i1 %4894, label %4933, label %4895

; <label>:4895                                    ; preds = %4798
  %4896 = add i32 %4893, 0
  %4897 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4896, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4898 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4897, %dx.types.Handle %96, float %4890, float %4891, float undef, float undef, i32 0, i32 0, i32 undef, float %4853, float %4854, float undef, float %4857, float %4858, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4899 = extractvalue %dx.types.ResRet.f32 %4898, 0
  %4900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.f32 %4900, 1
  %4902 = extractvalue %dx.types.CBufRet.f32 %4900, 2
  %4903 = fsub fast float 1.000000e+00, %4508
  %4904 = call float @dx.op.binary.f32(i32 35, float %4903, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4905 = bitcast float %4508 to i32
  %4906 = sitofp i32 %4905 to float
  %4907 = fadd fast float %4906, 0xC1CFBF8940000000
  %4908 = fmul fast float %4902, %4907
  %4909 = fadd fast float %4908, 0x41CFBF8940000000
  %4910 = fptosi float %4909 to i32
  %4911 = bitcast i32 %4910 to float
  %4912 = bitcast float %4904 to i32
  %4913 = sitofp i32 %4912 to float
  %4914 = fadd fast float %4913, 0xC1CFBF8940000000
  %4915 = fmul fast float %4914, %4902
  %4916 = fadd fast float %4915, 0x41CFBF8940000000
  %4917 = fptosi float %4916 to i32
  %4918 = bitcast i32 %4917 to float
  %4919 = fmul fast float %4911, %4901
  %4920 = fmul fast float %4918, %4901
  %4921 = fsub fast float %4904, %4919
  %4922 = fadd fast float %4920, %4904
  %4923 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4924 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4925 = fsub fast float %4899, %4923
  %4926 = fsub fast float %4924, %4923
  %4927 = bitcast float %4926 to i32
  %4928 = sub nsw i32 2129859010, %4927
  %4929 = bitcast i32 %4928 to float
  %4930 = fmul fast float %4929, %4925
  %4931 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4932 = fcmp fast olt float %4931, 0x3F70101020000000
  br i1 %4932, label %5071, label %4933

; <label>:4933                                    ; preds = %4895, %4798
  %4934 = phi float [ %4931, %4895 ], [ %4508, %4798 ]
  %4935 = fmul fast float %4934, %4801
  %4936 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.i32 %4936, 1
  %4938 = extractvalue %dx.types.CBufRet.i32 %4936, 0
  %4939 = add i32 %4938, 0
  %4940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4939, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4941 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4940, %dx.types.Handle %95, float %4890, float %4891, float undef, float undef, i32 0, i32 0, i32 undef, float %4853, float %4854, float undef, float %4857, float %4858, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = extractvalue %dx.types.ResRet.f32 %4941, 1
  %4944 = extractvalue %dx.types.ResRet.f32 %4941, 2
  %4945 = extractvalue %dx.types.ResRet.f32 %4941, 3
  %4946 = and i32 %4937, 255
  %4947 = uitofp i32 %4946 to float
  %4948 = lshr i32 %4937, 8
  %4949 = and i32 %4948, 255
  %4950 = uitofp i32 %4949 to float
  %4951 = fmul fast float %4945, %4947
  %4952 = fadd fast float %4951, %4950
  %4953 = fmul fast float %4952, 0x3F70101000000000
  %4954 = fadd fast float %4953, 0xBFB99999A0000000
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4956 = fmul fast float %4955, 0x3FF1C71C80000000
  %4957 = call float @dx.op.binary.f32(i32 36, float %4953, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4958 = fsub fast float 1.000000e+00, %4956
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = fmul fast float %4959, %4942
  %4961 = fmul fast float %4959, %4943
  %4962 = fmul fast float %4959, %4944
  %4963 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4964 = call float @dx.op.unary.f32(i32 7, float %4961)  ; Saturate(value)
  %4965 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4966 = fmul fast float %4956, %4942
  %4967 = fmul fast float %4956, %4943
  %4968 = fmul fast float %4956, %4944
  %4969 = fadd fast float %4966, %4957
  %4970 = fadd fast float %4967, %4957
  %4971 = fadd fast float %4968, %4957
  %4972 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4973 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4974 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4976 = extractvalue %dx.types.CBufRet.i32 %4975, 3
  %4977 = extractvalue %dx.types.CBufRet.i32 %4975, 2
  %4978 = add i32 %4977, 0
  %4979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4980 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4979, %dx.types.Handle %95, float %4890, float %4891, float undef, float undef, i32 0, i32 0, i32 undef, float %4853, float %4854, float undef, float %4857, float %4858, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4981 = extractvalue %dx.types.ResRet.f32 %4980, 0
  %4982 = extractvalue %dx.types.ResRet.f32 %4980, 1
  %4983 = extractvalue %dx.types.ResRet.f32 %4980, 2
  %4984 = extractvalue %dx.types.ResRet.f32 %4980, 3
  %4985 = and i32 %4976, 255
  %4986 = uitofp i32 %4985 to float
  %4987 = lshr i32 %4976, 8
  %4988 = and i32 %4987, 255
  %4989 = uitofp i32 %4988 to float
  %4990 = lshr i32 %4976, 16
  %4991 = and i32 %4990, 255
  %4992 = uitofp i32 %4991 to float
  %4993 = fmul fast float %4992, 0x3F70101000000000
  %4994 = fmul fast float %4981, %4986
  %4995 = fadd fast float %4994, %4989
  %4996 = fmul fast float %4995, 0x3F70101000000000
  %4997 = fadd fast float %4982, -5.000000e-01
  %4998 = fadd fast float %4984, -5.000000e-01
  %4999 = fmul fast float %4997, %4993
  %5000 = fmul fast float %4998, %4993
  %5001 = fadd fast float %4999, 5.000000e-01
  %5002 = fadd fast float %5000, 5.000000e-01
  %5003 = fmul fast float %5001, 2.000000e+00
  %5004 = fadd fast float %5003, -1.000000e+00
  %5005 = fmul fast float %5002, 2.000000e+00
  %5006 = fadd fast float %5005, -1.000000e+00
  %5007 = fadd fast float %5004, %5006
  %5008 = fmul fast float %5007, 5.000000e-01
  %5009 = fsub fast float %5004, %5006
  %5010 = fmul fast float %5009, 5.000000e-01
  %5011 = call float @dx.op.unary.f32(i32 6, float %5008)  ; FAbs(value)
  %5012 = fsub fast float 1.000000e+00, %5011
  %5013 = call float @dx.op.unary.f32(i32 6, float %5010)  ; FAbs(value)
  %5014 = fsub fast float %5012, %5013
  %5015 = call float @dx.op.dot3.f32(i32 55, float %5008, float %5010, float %5014, float %5008, float %5010, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5016 = call float @dx.op.unary.f32(i32 25, float %5015)  ; Rsqrt(value)
  %5017 = fmul fast float %5008, %5016
  %5018 = fmul fast float %5010, %5016
  %5019 = select i1 %4846, i32 %4836, i32 %4837
  %5020 = select i1 %4844, i32 %4835, i32 %5019
  %5021 = sitofp i32 %5020 to float
  %5022 = fmul fast float %5014, %5021
  %5023 = fmul fast float %5022, %5016
  %5024 = select i1 %4846, float %5023, float %5018
  %5025 = select i1 %4846, float %5018, float %5023
  %5026 = select i1 %4844, float %5023, float %5017
  %5027 = select i1 %4844, float %5018, float %5024
  %5028 = select i1 %4844, float %5017, float %5025
  %5029 = fsub fast float %4963, %4790
  %5030 = fsub fast float %4964, %4791
  %5031 = fsub fast float %4965, %4792
  %5032 = fmul fast float %5029, %4935
  %5033 = fmul fast float %5030, %4935
  %5034 = fmul fast float %5031, %4935
  %5035 = fadd fast float %5032, %4790
  %5036 = fadd fast float %5033, %4791
  %5037 = fadd fast float %5034, %4792
  %5038 = fsub fast float %4972, %4787
  %5039 = fsub fast float %4973, %4788
  %5040 = fsub fast float %4974, %4789
  %5041 = fmul fast float %5038, %4935
  %5042 = fmul fast float %5039, %4935
  %5043 = fmul fast float %5040, %4935
  %5044 = fadd fast float %5041, %4787
  %5045 = fadd fast float %5042, %4788
  %5046 = fadd fast float %5043, %4789
  %5047 = fadd fast float %5026, %4793
  %5048 = fadd fast float %5027, %4794
  %5049 = fadd fast float %5028, %4795
  %5050 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5048, float %5049, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = call float @dx.op.unary.f32(i32 25, float %5050)  ; Rsqrt(value)
  %5052 = fmul fast float %5047, %5051
  %5053 = fmul fast float %5048, %5051
  %5054 = fmul fast float %5049, %5051
  %5055 = fsub fast float %5052, %4793
  %5056 = fsub fast float %5053, %4794
  %5057 = fsub fast float %5054, %4795
  %5058 = fmul fast float %5055, %4935
  %5059 = fmul fast float %5056, %4935
  %5060 = fmul fast float %5057, %4935
  %5061 = fadd fast float %5058, %4793
  %5062 = fadd fast float %5059, %4794
  %5063 = fadd fast float %5060, %4795
  %5064 = call float @dx.op.binary.f32(i32 36, float %4797, float %4983)  ; FMin(a,b)
  %5065 = fsub fast float %5064, %4797
  %5066 = fmul fast float %5065, %4935
  %5067 = fadd fast float %5066, %4797
  %5068 = fsub fast float %4996, %4796
  %5069 = fmul fast float %5068, %4935
  %5070 = fadd fast float %5069, %4796
  br label %5071

; <label>:5071                                    ; preds = %4933, %4895, %4786, %4502
  %5072 = phi float [ %5044, %4933 ], [ %4787, %4895 ], [ %4787, %4786 ], [ %4321, %4502 ]
  %5073 = phi float [ %5045, %4933 ], [ %4788, %4895 ], [ %4788, %4786 ], [ %4322, %4502 ]
  %5074 = phi float [ %5046, %4933 ], [ %4789, %4895 ], [ %4789, %4786 ], [ %4323, %4502 ]
  %5075 = phi float [ %5035, %4933 ], [ %4790, %4895 ], [ %4790, %4786 ], [ %4402, %4502 ]
  %5076 = phi float [ %5036, %4933 ], [ %4791, %4895 ], [ %4791, %4786 ], [ %4403, %4502 ]
  %5077 = phi float [ %5037, %4933 ], [ %4792, %4895 ], [ %4792, %4786 ], [ %4404, %4502 ]
  %5078 = phi float [ %5061, %4933 ], [ %4793, %4895 ], [ %4793, %4786 ], [ %4260, %4502 ]
  %5079 = phi float [ %5062, %4933 ], [ %4794, %4895 ], [ %4794, %4786 ], [ %4261, %4502 ]
  %5080 = phi float [ %5063, %4933 ], [ %4795, %4895 ], [ %4795, %4786 ], [ %4262, %4502 ]
  %5081 = phi float [ %5070, %4933 ], [ %4796, %4895 ], [ %4796, %4786 ], [ %4324, %4502 ]
  %5082 = phi float [ %5067, %4933 ], [ %4797, %4895 ], [ %4797, %4786 ], [ %4275, %4502 ]
  %5083 = fcmp fast une float %4506, 0.000000e+00
  %5084 = fsub fast float -0.000000e+00, %209
  %5085 = fsub fast float -0.000000e+00, %210
  %5086 = fsub fast float -0.000000e+00, %211
  br i1 %5083, label %5087, label %5248

; <label>:5087                                    ; preds = %5071
  %5088 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5085, float %5086, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5089 = fmul fast float %4506, 2.500000e+00
  %5090 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5091 = fmul fast float %4506, 0x4013FFFFE0000000
  %5092 = fadd fast float %5091, 0xBFFFFFFFE0000000
  %5093 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5094 = fmul fast float %4506, 0x4004000020000000
  %5095 = fadd fast float %5094, 0xBFF8000040000000
  %5096 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5097 = fmul fast float %4303, 1.000000e+01
  %5098 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5099 = fmul fast float %5098, 2.000000e+00
  %5100 = fsub fast float 3.000000e+00, %5099
  %5101 = fmul fast float %5098, %5098
  %5102 = fmul fast float %5101, %5100
  %5103 = fsub fast float 1.000000e+00, %5102
  %5104 = fsub fast float 0x3FE3333340000000, %5081
  %5105 = fmul fast float %5104, 0x400AAAAAA0000000
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = fmul fast float %5103, %5106
  %5108 = fmul fast float %5075, 0x3FEA2B8620000000
  %5109 = fmul fast float %5076, 0x3FEA2B8620000000
  %5110 = fmul fast float %5077, 0x3FEA2B8620000000
  %5111 = fadd fast float %5108, 0x3FC81DFBA0000000
  %5112 = fmul fast float %5111, %5075
  %5113 = fadd fast float %5112, 0x3F910E6020000000
  %5114 = fadd fast float %5109, 0x3FC81DFBA0000000
  %5115 = fmul fast float %5114, %5076
  %5116 = fadd fast float %5115, 0x3F910E6020000000
  %5117 = fadd fast float %5110, 0x3FC81DFBA0000000
  %5118 = fmul fast float %5117, %5077
  %5119 = fadd fast float %5118, 0x3F910E6020000000
  %5120 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5121 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5122 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5123 = fsub fast float %5120, %5075
  %5124 = fsub fast float %5121, %5076
  %5125 = fsub fast float %5122, %5077
  %5126 = fmul fast float %5123, %5090
  %5127 = fmul fast float %5126, %5107
  %5128 = fmul fast float %5124, %5090
  %5129 = fmul fast float %5128, %5107
  %5130 = fmul fast float %5125, %5090
  %5131 = fmul fast float %5130, %5107
  %5132 = fadd fast float %5127, %5075
  %5133 = fadd fast float %5129, %5076
  %5134 = fadd fast float %5131, %5077
  %5135 = fmul fast float %5082, %5082
  %5136 = fmul fast float %5135, %5135
  %5137 = fadd fast float %5093, 1.000000e+00
  %5138 = fsub fast float %5137, %5107
  %5139 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5140 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = fsub fast float 1.000000e+00, %5136
  %5143 = call float @dx.op.binary.f32(i32 36, float %5139, float %5142)  ; FMin(a,b)
  %5144 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5145 = call float @dx.op.binary.f32(i32 35, float %5143, float %5144)  ; FMax(a,b)
  %5146 = fadd fast float %5141, 0xBFE4CCCCC0000000
  %5147 = fmul fast float %5146, 0x4006DB6DA0000000
  %5148 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5149 = fmul fast float %5148, 2.000000e+00
  %5150 = fsub fast float 3.000000e+00, %5149
  %5151 = bitcast float %5072 to i32
  %5152 = ashr i32 %5151, 1
  %5153 = add nsw i32 %5152, 532487669
  %5154 = bitcast i32 %5153 to float
  %5155 = fsub fast float 1.000000e+00, %5154
  %5156 = bitcast float %5155 to i32
  %5157 = sub nsw i32 2129859010, %5156
  %5158 = bitcast i32 %5157 to float
  %5159 = fmul fast float %5158, 2.000000e+00
  %5160 = bitcast float %5073 to i32
  %5161 = ashr i32 %5160, 1
  %5162 = add nsw i32 %5161, 532487669
  %5163 = bitcast i32 %5162 to float
  %5164 = fsub fast float 1.000000e+00, %5163
  %5165 = bitcast float %5164 to i32
  %5166 = sub nsw i32 2129859010, %5165
  %5167 = bitcast i32 %5166 to float
  %5168 = fmul fast float %5167, 2.000000e+00
  %5169 = bitcast float %5074 to i32
  %5170 = ashr i32 %5169, 1
  %5171 = add nsw i32 %5170, 532487669
  %5172 = bitcast i32 %5171 to float
  %5173 = fsub fast float 1.000000e+00, %5172
  %5174 = bitcast float %5173 to i32
  %5175 = sub nsw i32 2129859010, %5174
  %5176 = bitcast i32 %5175 to float
  %5177 = fmul fast float %5176, 2.000000e+00
  %5178 = fsub fast float 0x4002A9FBE0000000, %5159
  %5179 = fadd fast float %5159, 0x3FD54FDF00000000
  %5180 = bitcast float %5179 to i32
  %5181 = sub nsw i32 2129859010, %5180
  %5182 = bitcast i32 %5181 to float
  %5183 = fmul fast float %5182, %5178
  %5184 = fmul fast float %5183, %5183
  %5185 = fsub fast float 0x4002A9FBE0000000, %5168
  %5186 = fadd fast float %5168, 0x3FD54FDF00000000
  %5187 = bitcast float %5186 to i32
  %5188 = sub nsw i32 2129859010, %5187
  %5189 = bitcast i32 %5188 to float
  %5190 = fmul fast float %5189, %5185
  %5191 = fmul fast float %5190, %5190
  %5192 = fsub fast float 0x4002A9FBE0000000, %5177
  %5193 = fadd fast float %5177, 0x3FD54FDF00000000
  %5194 = bitcast float %5193 to i32
  %5195 = sub nsw i32 2129859010, %5194
  %5196 = bitcast i32 %5195 to float
  %5197 = fmul fast float %5196, %5192
  %5198 = fmul fast float %5197, %5197
  %5199 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5184)  ; FMax(a,b)
  %5200 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5191)  ; FMax(a,b)
  %5201 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5198)  ; FMax(a,b)
  %5202 = fsub fast float 1.000000e+00, %5088
  %5203 = fadd fast float %5202, %5103
  %5204 = call float @dx.op.unary.f32(i32 7, float %5203)  ; Saturate(value)
  %5205 = fsub fast float 1.000000e+00, %4487
  %5206 = fmul fast float %5145, %5205
  %5207 = fmul fast float %5148, %5148
  %5208 = fmul fast float %5207, %5206
  %5209 = fmul fast float %5208, %5150
  %5210 = fmul fast float %5205, 0xBFE99999A0000000
  %5211 = fmul fast float %5210, %5090
  %5212 = fmul fast float %5211, %5107
  %5213 = fadd fast float %5212, 1.000000e+00
  %5214 = fadd fast float %5081, -1.000000e+00
  %5215 = fmul fast float %5213, %5214
  %5216 = fadd fast float %5215, 1.000000e+00
  %5217 = fsub fast float %5199, %5072
  %5218 = fsub fast float %5200, %5073
  %5219 = fsub fast float %5201, %5074
  %5220 = fmul fast float %5209, %5217
  %5221 = fmul fast float %5209, %5218
  %5222 = fmul fast float %5209, %5219
  %5223 = fadd fast float %5220, %5072
  %5224 = fadd fast float %5221, %5073
  %5225 = fadd fast float %5222, %5074
  %5226 = fsub fast float %106, %5078
  %5227 = fsub fast float %107, %5079
  %5228 = fsub fast float %108, %5080
  %5229 = fmul fast float %5209, %5226
  %5230 = fmul fast float %5209, %5227
  %5231 = fmul fast float %5209, %5228
  %5232 = fadd fast float %5229, %5078
  %5233 = fadd fast float %5230, %5079
  %5234 = fadd fast float %5231, %5080
  %5235 = fmul fast float %5209, %5204
  %5236 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5237 = fsub fast float 1.000000e+00, %5236
  %5238 = fmul fast float %5235, %5237
  %5239 = fadd fast float %5238, %5236
  %5240 = fsub fast float 1.000000e+00, %5082
  %5241 = fmul fast float %5209, %5240
  %5242 = fadd fast float %5241, %5082
  %5243 = call float @dx.op.dot3.f32(i32 55, float %5232, float %5233, float %5234, float %5232, float %5233, float %5234)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = call float @dx.op.unary.f32(i32 25, float %5243)  ; Rsqrt(value)
  %5245 = fmul fast float %5232, %5244
  %5246 = fmul fast float %5233, %5244
  %5247 = fmul fast float %5234, %5244
  br label %5248

; <label>:5248                                    ; preds = %5087, %5071
  %5249 = phi float [ %5223, %5087 ], [ %5072, %5071 ]
  %5250 = phi float [ %5224, %5087 ], [ %5073, %5071 ]
  %5251 = phi float [ %5225, %5087 ], [ %5074, %5071 ]
  %5252 = phi float [ %5132, %5087 ], [ %5075, %5071 ]
  %5253 = phi float [ %5133, %5087 ], [ %5076, %5071 ]
  %5254 = phi float [ %5134, %5087 ], [ %5077, %5071 ]
  %5255 = phi float [ %5245, %5087 ], [ %5078, %5071 ]
  %5256 = phi float [ %5246, %5087 ], [ %5079, %5071 ]
  %5257 = phi float [ %5247, %5087 ], [ %5080, %5071 ]
  %5258 = phi float [ %5239, %5087 ], [ %5081, %5071 ]
  %5259 = phi float [ %5242, %5087 ], [ %5082, %5071 ]
  %5260 = select i1 %282, float 0.000000e+00, float %5251
  %5261 = call float @dx.op.dot3.f32(i32 55, float %5255, float %5256, float %5257, float %5084, float %5085, float %5086)  ; Dot3(ax,ay,az,bx,by,bz)
  %5262 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5263 = call float @dx.op.dot3.f32(i32 55, float %209, float %210, float %211, float %5255, float %5256, float %5257)  ; Dot3(ax,ay,az,bx,by,bz)
  %5264 = fmul fast float %5263, 2.000000e+00
  %5265 = fmul fast float %5264, %5255
  %5266 = fmul fast float %5264, %5256
  %5267 = fmul fast float %5264, %5257
  %5268 = fsub fast float %209, %5265
  %5269 = fsub fast float %210, %5266
  %5270 = fsub fast float %211, %5267
  %5271 = call float @dx.op.binary.f32(i32 36, float %5259, float 1.000000e+00)  ; FMin(a,b)
  %5272 = fsub fast float 1.000000e+00, %5259
  %5273 = bitcast float %5272 to i32
  %5274 = sub nsw i32 2129859010, %5273
  %5275 = bitcast i32 %5274 to float
  %5276 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5277 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5278 = fcmp fast oeq float %5277, 0.000000e+00
  %5279 = fcmp fast oeq float %5276, 0.000000e+00
  %5280 = or i1 %5279, %5278
  br i1 %5280, label %5310, label %5281

; <label>:5281                                    ; preds = %5248
  %5282 = fsub fast float -0.000000e+00, %73
  %5283 = fsub fast float -0.000000e+00, %71
  %5284 = call float @dx.op.unary.f32(i32 24, float %5277)  ; Sqrt(value)
  %5285 = fdiv fast float %5284, %5276
  %5286 = fcmp fast ogt float %5285, 0x3FFB6F8900000000
  %5287 = select i1 %5286, float 0x3FFB6F8900000000, float %5285
  %5288 = fmul fast float %5287, 0x3FE8A23460000000
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = call float @dx.op.binary.f32(i32 35, float %5287, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5291 = fmul fast float %5289, %5276
  %5292 = fmul fast float %5290, 0x3FF279A740000000
  %5293 = fadd fast float %5292, -1.000000e+00
  %5294 = call float @dx.op.dot3.f32(i32 55, float %5282, float %5283, float %72, float %5282, float %5283, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5295 = call float @dx.op.unary.f32(i32 25, float %5294)  ; Rsqrt(value)
  %5296 = fmul fast float %5295, %5282
  %5297 = fmul fast float %5295, %5283
  %5298 = fmul fast float %5295, %72
  %5299 = fmul fast float %5293, %5293
  %5300 = fsub fast float 1.000000e+00, %5299
  %5301 = fmul fast float %5290, 0x40005F8BE0000000
  %5302 = fsub fast float 0x400C5BF8A0000000, %5301
  %5303 = fdiv fast float %5291, %5302
  %5304 = fmul fast float %5303, 0x3FEE31C3C0000000
  %5305 = fmul fast float %5304, %5300
  %5306 = fmul fast float %5290, 0x3FDACB7480000000
  %5307 = fadd fast float %5306, 0xBFD7347680000000
  %5308 = fmul fast float %5307, %5303
  %5309 = fmul fast float %5308, %5300
  br label %5310

; <label>:5310                                    ; preds = %5281, %5248
  %5311 = phi float [ %5296, %5281 ], [ 0.000000e+00, %5248 ]
  %5312 = phi float [ %5297, %5281 ], [ 0.000000e+00, %5248 ]
  %5313 = phi float [ %5298, %5281 ], [ 0.000000e+00, %5248 ]
  %5314 = phi float [ %5305, %5281 ], [ 0.000000e+00, %5248 ]
  %5315 = phi float [ %5309, %5281 ], [ 0.000000e+00, %5248 ]
  %5316 = call float @dx.op.dot3.f32(i32 55, float %5311, float %5312, float %5313, float %5255, float %5256, float %5257)  ; Dot3(ax,ay,az,bx,by,bz)
  %5317 = fmul fast float %5316, 0x3FDF454380000000
  %5318 = fmul fast float %5316, %5316
  %5319 = fmul fast float %5318, 0x3FEE471020000000
  %5320 = fadd fast float %5319, 0xBFD42F6020000000
  %5321 = fmul fast float %5276, 0x3FD20DD760000000
  %5322 = fmul fast float %5320, %5315
  %5323 = fadd fast float %5322, %5321
  %5324 = fmul fast float %5317, %5314
  %5325 = fadd fast float %5323, %5324
  %5326 = fsub fast float %5323, %5324
  %5327 = call float @dx.op.dot3.f32(i32 55, float %5311, float %5312, float %5313, float %5268, float %5269, float %5270)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = fmul fast float %5327, 0x3FDF454380000000
  %5329 = fmul fast float %5327, %5327
  %5330 = fmul fast float %5329, 0x3FEE471020000000
  %5331 = fadd fast float %5330, 0xBFD42F6020000000
  %5332 = call float @dx.op.dot3.f32(i32 55, float %5276, float %5314, float %5315, float 0x3FD20DD760000000, float %5328, float %5331)  ; Dot3(ax,ay,az,bx,by,bz)
  %5333 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %5334 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = fcmp fast oeq float %5334, 0.000000e+00
  %5336 = fcmp fast oeq float %5333, 0.000000e+00
  %5337 = or i1 %5336, %5335
  br i1 %5337, label %5367, label %5338

; <label>:5338                                    ; preds = %5310
  %5339 = fsub fast float -0.000000e+00, %69
  %5340 = fsub fast float -0.000000e+00, %67
  %5341 = call float @dx.op.unary.f32(i32 24, float %5334)  ; Sqrt(value)
  %5342 = fdiv fast float %5341, %5333
  %5343 = fcmp fast ogt float %5342, 0x3FFB6F8900000000
  %5344 = select i1 %5343, float 0x3FFB6F8900000000, float %5342
  %5345 = fmul fast float %5344, 0x3FE8A23460000000
  %5346 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  %5347 = call float @dx.op.binary.f32(i32 35, float %5344, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5348 = fmul fast float %5346, %5333
  %5349 = fmul fast float %5347, 0x3FF279A740000000
  %5350 = fadd fast float %5349, -1.000000e+00
  %5351 = call float @dx.op.dot3.f32(i32 55, float %5339, float %5340, float %68, float %5339, float %5340, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5352 = call float @dx.op.unary.f32(i32 25, float %5351)  ; Rsqrt(value)
  %5353 = fmul fast float %5352, %5339
  %5354 = fmul fast float %5352, %5340
  %5355 = fmul fast float %5352, %68
  %5356 = fmul fast float %5350, %5350
  %5357 = fsub fast float 1.000000e+00, %5356
  %5358 = fmul fast float %5347, 0x40005F8BE0000000
  %5359 = fsub fast float 0x400C5BF8A0000000, %5358
  %5360 = fdiv fast float %5348, %5359
  %5361 = fmul fast float %5360, 0x3FEE31C3C0000000
  %5362 = fmul fast float %5361, %5357
  %5363 = fmul fast float %5347, 0x3FDACB7480000000
  %5364 = fadd fast float %5363, 0xBFD7347680000000
  %5365 = fmul fast float %5364, %5360
  %5366 = fmul fast float %5365, %5357
  br label %5367

; <label>:5367                                    ; preds = %5338, %5310
  %5368 = phi float [ %5353, %5338 ], [ 0.000000e+00, %5310 ]
  %5369 = phi float [ %5354, %5338 ], [ 0.000000e+00, %5310 ]
  %5370 = phi float [ %5355, %5338 ], [ 0.000000e+00, %5310 ]
  %5371 = phi float [ %5362, %5338 ], [ 0.000000e+00, %5310 ]
  %5372 = phi float [ %5366, %5338 ], [ 0.000000e+00, %5310 ]
  %5373 = call float @dx.op.dot3.f32(i32 55, float %5368, float %5369, float %5370, float %5255, float %5256, float %5257)  ; Dot3(ax,ay,az,bx,by,bz)
  %5374 = fmul fast float %5373, 0x3FDF454380000000
  %5375 = fmul fast float %5373, %5373
  %5376 = fmul fast float %5375, 0x3FEE471020000000
  %5377 = fadd fast float %5376, 0xBFD42F6020000000
  %5378 = fmul fast float %5333, 0x3FD20DD760000000
  %5379 = fmul fast float %5377, %5372
  %5380 = fadd fast float %5379, %5378
  %5381 = fmul fast float %5374, %5371
  %5382 = fadd fast float %5380, %5381
  %5383 = fsub fast float %5380, %5381
  %5384 = call float @dx.op.dot3.f32(i32 55, float %5368, float %5369, float %5370, float %5268, float %5269, float %5270)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = fmul fast float %5384, 0x3FDF454380000000
  %5386 = fmul fast float %5384, %5384
  %5387 = fmul fast float %5386, 0x3FEE471020000000
  %5388 = fadd fast float %5387, 0xBFD42F6020000000
  %5389 = call float @dx.op.dot3.f32(i32 55, float %5333, float %5371, float %5372, float 0x3FD20DD760000000, float %5385, float %5388)  ; Dot3(ax,ay,az,bx,by,bz)
  %5390 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %5391 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5392 = fcmp fast oeq float %5391, 0.000000e+00
  %5393 = fcmp fast oeq float %5390, 0.000000e+00
  %5394 = or i1 %5393, %5392
  br i1 %5394, label %5424, label %5395

; <label>:5395                                    ; preds = %5367
  %5396 = fsub fast float -0.000000e+00, %65
  %5397 = fsub fast float -0.000000e+00, %63
  %5398 = call float @dx.op.unary.f32(i32 24, float %5391)  ; Sqrt(value)
  %5399 = fdiv fast float %5398, %5390
  %5400 = fcmp fast ogt float %5399, 0x3FFB6F8900000000
  %5401 = select i1 %5400, float 0x3FFB6F8900000000, float %5399
  %5402 = fmul fast float %5401, 0x3FE8A23460000000
  %5403 = call float @dx.op.unary.f32(i32 7, float %5402)  ; Saturate(value)
  %5404 = call float @dx.op.binary.f32(i32 35, float %5401, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5405 = fmul fast float %5403, %5390
  %5406 = fmul fast float %5404, 0x3FF279A740000000
  %5407 = fadd fast float %5406, -1.000000e+00
  %5408 = call float @dx.op.dot3.f32(i32 55, float %5396, float %5397, float %64, float %5396, float %5397, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5409 = call float @dx.op.unary.f32(i32 25, float %5408)  ; Rsqrt(value)
  %5410 = fmul fast float %5409, %5396
  %5411 = fmul fast float %5409, %5397
  %5412 = fmul fast float %5409, %64
  %5413 = fmul fast float %5407, %5407
  %5414 = fsub fast float 1.000000e+00, %5413
  %5415 = fmul fast float %5404, 0x40005F8BE0000000
  %5416 = fsub fast float 0x400C5BF8A0000000, %5415
  %5417 = fdiv fast float %5405, %5416
  %5418 = fmul fast float %5417, 0x3FEE31C3C0000000
  %5419 = fmul fast float %5418, %5414
  %5420 = fmul fast float %5404, 0x3FDACB7480000000
  %5421 = fadd fast float %5420, 0xBFD7347680000000
  %5422 = fmul fast float %5421, %5417
  %5423 = fmul fast float %5422, %5414
  br label %5424

; <label>:5424                                    ; preds = %5395, %5367
  %5425 = phi float [ %5410, %5395 ], [ 0.000000e+00, %5367 ]
  %5426 = phi float [ %5411, %5395 ], [ 0.000000e+00, %5367 ]
  %5427 = phi float [ %5412, %5395 ], [ 0.000000e+00, %5367 ]
  %5428 = phi float [ %5419, %5395 ], [ 0.000000e+00, %5367 ]
  %5429 = phi float [ %5423, %5395 ], [ 0.000000e+00, %5367 ]
  %5430 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5426, float %5427, float %5255, float %5256, float %5257)  ; Dot3(ax,ay,az,bx,by,bz)
  %5431 = fmul fast float %5430, 0x3FDF454380000000
  %5432 = fmul fast float %5430, %5430
  %5433 = fmul fast float %5432, 0x3FEE471020000000
  %5434 = fadd fast float %5433, 0xBFD42F6020000000
  %5435 = fmul fast float %5390, 0x3FD20DD760000000
  %5436 = fmul fast float %5434, %5429
  %5437 = fadd fast float %5436, %5435
  %5438 = fmul fast float %5431, %5428
  %5439 = fadd fast float %5437, %5438
  %5440 = fsub fast float %5437, %5438
  %5441 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5426, float %5427, float %5268, float %5269, float %5270)  ; Dot3(ax,ay,az,bx,by,bz)
  %5442 = fmul fast float %5441, 0x3FDF454380000000
  %5443 = fmul fast float %5441, %5441
  %5444 = fmul fast float %5443, 0x3FEE471020000000
  %5445 = fadd fast float %5444, 0xBFD42F6020000000
  %5446 = call float @dx.op.dot3.f32(i32 55, float %5390, float %5428, float %5429, float 0x3FD20DD760000000, float %5442, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = call float @dx.op.binary.f32(i32 35, float %5325, float 0.000000e+00)  ; FMax(a,b)
  %5448 = call float @dx.op.binary.f32(i32 35, float %5382, float 0.000000e+00)  ; FMax(a,b)
  %5449 = call float @dx.op.binary.f32(i32 35, float %5439, float 0.000000e+00)  ; FMax(a,b)
  %5450 = call float @dx.op.binary.f32(i32 35, float %5326, float 0.000000e+00)  ; FMax(a,b)
  %5451 = call float @dx.op.binary.f32(i32 35, float %5383, float 0.000000e+00)  ; FMax(a,b)
  %5452 = call float @dx.op.binary.f32(i32 35, float %5440, float 0.000000e+00)  ; FMax(a,b)
  %5453 = call float @dx.op.binary.f32(i32 35, float %5332, float 0.000000e+00)  ; FMax(a,b)
  %5454 = call float @dx.op.binary.f32(i32 35, float %5389, float 0.000000e+00)  ; FMax(a,b)
  %5455 = call float @dx.op.binary.f32(i32 35, float %5446, float 0.000000e+00)  ; FMax(a,b)
  %5456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5457 = extractvalue %dx.types.CBufRet.f32 %5456, 0
  %5458 = call float @dx.op.binary.f32(i32 36, float %5252, float %5457)  ; FMin(a,b)
  %5459 = fsub fast float 1.000000e+00, %5271
  %5460 = fmul fast float %5458, %5459
  %5461 = fsub fast float 1.000000e+00, %5460
  %5462 = bitcast float %5461 to i32
  %5463 = sub nsw i32 2129859010, %5462
  %5464 = bitcast i32 %5463 to float
  %5465 = call float @dx.op.binary.f32(i32 36, float %5253, float %5457)  ; FMin(a,b)
  %5466 = fmul fast float %5465, %5459
  %5467 = fsub fast float 1.000000e+00, %5466
  %5468 = bitcast float %5467 to i32
  %5469 = sub nsw i32 2129859010, %5468
  %5470 = bitcast i32 %5469 to float
  %5471 = call float @dx.op.binary.f32(i32 36, float %5254, float %5457)  ; FMin(a,b)
  %5472 = fmul fast float %5471, %5459
  %5473 = fsub fast float 1.000000e+00, %5472
  %5474 = bitcast float %5473 to i32
  %5475 = sub nsw i32 2129859010, %5474
  %5476 = bitcast i32 %5475 to float
  %5477 = fmul fast float %5447, %5271
  %5478 = fmul fast float %5477, %5464
  %5479 = fmul fast float %5448, %5271
  %5480 = fmul fast float %5479, %5470
  %5481 = fmul fast float %5449, %5271
  %5482 = fmul fast float %5481, %5476
  %5483 = call float @dx.op.binary.f32(i32 36, float %5249, float %5457)  ; FMin(a,b)
  %5484 = fmul fast float %5483, %5459
  %5485 = fsub fast float 1.000000e+00, %5484
  %5486 = bitcast float %5485 to i32
  %5487 = sub nsw i32 2129859010, %5486
  %5488 = bitcast i32 %5487 to float
  %5489 = call float @dx.op.binary.f32(i32 36, float %5250, float %5457)  ; FMin(a,b)
  %5490 = fmul fast float %5489, %5459
  %5491 = fsub fast float 1.000000e+00, %5490
  %5492 = bitcast float %5491 to i32
  %5493 = sub nsw i32 2129859010, %5492
  %5494 = bitcast i32 %5493 to float
  %5495 = call float @dx.op.binary.f32(i32 36, float %5260, float %5457)  ; FMin(a,b)
  %5496 = fmul fast float %5495, %5459
  %5497 = fsub fast float 1.000000e+00, %5496
  %5498 = bitcast float %5497 to i32
  %5499 = sub nsw i32 2129859010, %5498
  %5500 = bitcast i32 %5499 to float
  %5501 = fmul fast float %5453, %5271
  %5502 = fmul fast float %5501, %5488
  %5503 = fmul fast float %5454, %5271
  %5504 = fmul fast float %5503, %5494
  %5505 = fmul fast float %5455, %5271
  %5506 = fmul fast float %5505, %5500
  %5507 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5480, float %5482, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5508 = select i1 %282, float 0.000000e+00, float %5478
  %5509 = select i1 %282, float %5507, float %5480
  %5510 = select i1 %282, float 0.000000e+00, float %5482
  %5511 = call float @dx.op.dot3.f32(i32 55, float %5450, float %5451, float %5452, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5512 = select i1 %282, float 0.000000e+00, float %5450
  %5513 = select i1 %282, float %5511, float %5451
  %5514 = select i1 %282, float 0.000000e+00, float %5452
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5502, float %5504, float %5506, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = select i1 %282, float 0.000000e+00, float %5502
  %5517 = select i1 %282, float %5515, float %5504
  %5518 = select i1 %282, float 0.000000e+00, float %5506
  %5519 = fmul fast float %5262, 9.843750e-01
  %5520 = fmul fast float %5258, 9.843750e-01
  %5521 = fadd fast float %5519, 7.812500e-03
  %5522 = fadd fast float %5520, 7.812500e-03
  %5523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %5521, float %5522, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5524 = extractvalue %dx.types.ResRet.f32 %5523, 2
  %5525 = extractvalue %dx.types.ResRet.f32 %5523, 3
  %5526 = fmul fast float %5524, %5249
  %5527 = fmul fast float %5524, %5250
  %5528 = fmul fast float %5524, %5260
  %5529 = fadd fast float %5526, %5525
  %5530 = fadd fast float %5527, %5525
  %5531 = fadd fast float %5528, %5525
  %5532 = fcmp fast ogt float %4276, 0.000000e+00
  br i1 %5532, label %5533, label %5559

; <label>:5533                                    ; preds = %5424
  %5534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4276, float %5262, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5535 = extractvalue %dx.types.ResRet.f32 %5534, 0
  %5536 = extractvalue %dx.types.ResRet.f32 %5534, 1
  %5537 = extractvalue %dx.types.ResRet.f32 %5534, 2
  %5538 = fadd fast float %5535, -5.000000e-01
  %5539 = fadd fast float %5536, -5.000000e-01
  %5540 = fadd fast float %5537, -5.000000e-01
  %5541 = fsub fast float 1.000000e+00, %5249
  %5542 = fsub fast float 1.000000e+00, %5250
  %5543 = fsub fast float 1.000000e+00, %5260
  %5544 = fmul fast float %5249, 4.000000e+00
  %5545 = fmul fast float %5544, %5541
  %5546 = fmul fast float %5545, %5538
  %5547 = fmul fast float %5250, 4.000000e+00
  %5548 = fmul fast float %5547, %5542
  %5549 = fmul fast float %5548, %5539
  %5550 = fmul fast float %5260, 4.000000e+00
  %5551 = fmul fast float %5550, %5543
  %5552 = fmul fast float %5551, %5540
  %5553 = fadd fast float %5546, %5529
  %5554 = fadd fast float %5549, %5530
  %5555 = fadd fast float %5552, %5531
  %5556 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5557 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5558 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  br label %5559

; <label>:5559                                    ; preds = %5533, %5424
  %5560 = phi float [ %5556, %5533 ], [ %5529, %5424 ]
  %5561 = phi float [ %5557, %5533 ], [ %5530, %5424 ]
  %5562 = phi float [ %5558, %5533 ], [ %5531, %5424 ]
  %5563 = call float @dx.op.binary.f32(i32 35, float %5561, float %5562)  ; FMax(a,b)
  %5564 = call float @dx.op.binary.f32(i32 35, float %5560, float %5563)  ; FMax(a,b)
  %5565 = fsub fast float 1.000000e+00, %5564
  %5566 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5253, float %5254, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5567 = fcmp fast ogt float %5566, 0x3E7FF19E20000000
  %5568 = fdiv fast float 1.000000e+00, %5566
  %5569 = select i1 %5567, float %5568, float 0.000000e+00
  %5570 = fmul fast float %5569, %5252
  %5571 = fmul fast float %5569, %5253
  %5572 = fmul fast float %5569, %5254
  %5573 = fadd fast float %5570, -1.000000e+00
  %5574 = fadd fast float %5571, -1.000000e+00
  %5575 = fadd fast float %5572, -1.000000e+00
  %5576 = fmul fast float %5573, 5.000000e-01
  %5577 = fmul fast float %5574, 5.000000e-01
  %5578 = fmul fast float %5575, 5.000000e-01
  %5579 = fadd fast float %5576, 1.000000e+00
  %5580 = fadd fast float %5577, 1.000000e+00
  %5581 = fadd fast float %5578, 1.000000e+00
  %5582 = fmul fast float %5565, %4388
  %5583 = fmul fast float %5565, %4389
  %5584 = fmul fast float %5565, %4390
  %5585 = fadd fast float %5582, -1.000000e+00
  %5586 = fadd fast float %5583, -1.000000e+00
  %5587 = fadd fast float %5584, -1.000000e+00
  %5588 = fmul fast float %5585, %4302
  %5589 = fmul fast float %5586, %4302
  %5590 = fmul fast float %5587, %4302
  %5591 = fmul fast float %5560, %5516
  %5592 = fmul fast float %5561, %5517
  %5593 = fmul fast float %5562, %5518
  %5594 = fsub fast float 1.000000e+00, %5262
  %5595 = bitcast float %5594 to i32
  %5596 = sitofp i32 %5595 to float
  %5597 = fmul fast float %5596, 5.000000e+00
  %5598 = fadd fast float %5597, 0xC1EFBF8940000000
  %5599 = fptosi float %5598 to i32
  %5600 = bitcast i32 %5599 to float
  %5601 = fmul fast float %5600, %4277
  %5602 = fmul fast float %5508, %5601
  %5603 = fmul fast float %5602, %5565
  %5604 = fmul fast float %5603, %5579
  %5605 = fmul fast float %5509, %5601
  %5606 = fmul fast float %5605, %5565
  %5607 = fmul fast float %5606, %5580
  %5608 = fmul fast float %5510, %5601
  %5609 = fmul fast float %5608, %5565
  %5610 = fmul fast float %5609, %5581
  %5611 = fadd fast float %5591, %4266
  %5612 = fadd fast float %5611, %5604
  %5613 = fmul fast float %5612, %4302
  %5614 = fadd fast float %5592, %4267
  %5615 = fadd fast float %5614, %5607
  %5616 = fmul fast float %5615, %4302
  %5617 = fadd fast float %5593, %4268
  %5618 = fadd fast float %5617, %5610
  %5619 = fmul fast float %5618, %4302
  %5620 = fadd fast float %5590, 1.000000e+00
  %5621 = fadd fast float %5589, 1.000000e+00
  %5622 = fadd fast float %5588, 1.000000e+00
  %5623 = fmul fast float %5565, %5510
  %5624 = fmul fast float %5565, %5509
  %5625 = fmul fast float %5565, %5508
  %5626 = fmul fast float %5622, %5512
  %5627 = fmul fast float %5621, %5513
  %5628 = fmul fast float %5620, %5514
  %5629 = fadd fast float %5626, %5625
  %5630 = fmul fast float %5629, %4302
  %5631 = fadd fast float %5627, %5624
  %5632 = fmul fast float %5631, %4302
  %5633 = fadd fast float %5628, %5623
  %5634 = fmul fast float %5633, %4302
  %5635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5636 = extractvalue %dx.types.CBufRet.f32 %5635, 3
  %5637 = fcmp fast oeq float %5636, 0.000000e+00
  br i1 %5637, label %6701, label %5638

; <label>:5638                                    ; preds = %5559
  %5639 = extractvalue %dx.types.CBufRet.f32 %5635, 0
  %5640 = extractvalue %dx.types.CBufRet.f32 %5635, 1
  %5641 = extractvalue %dx.types.CBufRet.f32 %5635, 2
  %5642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5643 = extractvalue %dx.types.CBufRet.f32 %5642, 0
  %5644 = extractvalue %dx.types.CBufRet.f32 %5642, 1
  %5645 = extractvalue %dx.types.CBufRet.f32 %5642, 2
  %5646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5647 = extractvalue %dx.types.CBufRet.f32 %5646, 0
  %5648 = extractvalue %dx.types.CBufRet.f32 %5646, 1
  %5649 = call float @dx.op.dot3.f32(i32 55, float %5643, float %5644, float %5645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5650 = select i1 %282, float %5647, float %5643
  %5651 = select i1 %282, float %5649, float %5644
  %5652 = select i1 %282, float %5648, float %5645
  %5653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5654 = extractvalue %dx.types.CBufRet.f32 %5653, 2
  %5655 = fmul fast float %5654, %106
  %5656 = fmul fast float %5654, %107
  %5657 = fmul fast float %5654, %108
  %5658 = fadd fast float %5655, %178
  %5659 = fadd fast float %5656, %179
  %5660 = fadd fast float %5657, %180
  %5661 = fcmp fast olt float %5636, 0.000000e+00
  br i1 %5661, label %6301, label %5662

; <label>:5662                                    ; preds = %5638
  %5663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5663, 0
  %5665 = extractvalue %dx.types.CBufRet.f32 %5663, 1
  %5666 = extractvalue %dx.types.CBufRet.f32 %5663, 2
  %5667 = extractvalue %dx.types.CBufRet.f32 %5663, 3
  %5668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5669 = extractvalue %dx.types.CBufRet.f32 %5668, 0
  %5670 = extractvalue %dx.types.CBufRet.f32 %5668, 1
  %5671 = extractvalue %dx.types.CBufRet.f32 %5668, 2
  %5672 = extractvalue %dx.types.CBufRet.f32 %5668, 3
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 0
  %5675 = extractvalue %dx.types.CBufRet.f32 %5673, 1
  %5676 = extractvalue %dx.types.CBufRet.f32 %5673, 2
  %5677 = extractvalue %dx.types.CBufRet.f32 %5673, 3
  %5678 = fmul fast float %5664, %5658
  %5679 = call float @dx.op.tertiary.f32(i32 46, float %5659, float %5665, float %5678)  ; FMad(a,b,c)
  %5680 = call float @dx.op.tertiary.f32(i32 46, float %5660, float %5666, float %5679)  ; FMad(a,b,c)
  %5681 = fadd fast float %5680, %5667
  %5682 = fmul fast float %5669, %5658
  %5683 = call float @dx.op.tertiary.f32(i32 46, float %5659, float %5670, float %5682)  ; FMad(a,b,c)
  %5684 = call float @dx.op.tertiary.f32(i32 46, float %5660, float %5671, float %5683)  ; FMad(a,b,c)
  %5685 = fadd fast float %5684, %5672
  %5686 = fmul fast float %5674, %5658
  %5687 = call float @dx.op.tertiary.f32(i32 46, float %5659, float %5675, float %5686)  ; FMad(a,b,c)
  %5688 = call float @dx.op.tertiary.f32(i32 46, float %5660, float %5676, float %5687)  ; FMad(a,b,c)
  %5689 = fadd fast float %5688, %5677
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 0
  %5692 = fcmp fast une float %5691, 0.000000e+00
  %5693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5694 = extractvalue %dx.types.CBufRet.f32 %5693, 0
  %5695 = extractvalue %dx.types.CBufRet.f32 %5693, 1
  %5696 = extractvalue %dx.types.CBufRet.f32 %5693, 3
  %5697 = fmul fast float %5696, %5681
  %5698 = fmul fast float %5696, %5685
  %5699 = fadd fast float %5697, %5694
  %5700 = fadd fast float %5698, %5695
  %5701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5702 = extractvalue %dx.types.CBufRet.f32 %5701, 0
  %5703 = extractvalue %dx.types.CBufRet.f32 %5701, 1
  %5704 = extractvalue %dx.types.CBufRet.f32 %5701, 3
  %5705 = fmul fast float %5704, %5681
  %5706 = fmul fast float %5704, %5685
  %5707 = fadd fast float %5705, %5702
  %5708 = fadd fast float %5706, %5703
  %5709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5710 = extractvalue %dx.types.CBufRet.f32 %5709, 1
  %5711 = fsub fast float %5710, %5689
  %5712 = extractvalue %dx.types.CBufRet.f32 %5709, 2
  %5713 = fmul fast float %5711, %5712
  %5714 = fsub fast float 1.000000e+00, %5713
  %5715 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  br i1 %5692, label %5776, label %5716

; <label>:5716                                    ; preds = %5662
  %5717 = extractvalue %dx.types.CBufRet.f32 %5701, 2
  %5718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.f32 %5718, 2
  %5720 = fadd fast float %5719, %5717
  %5721 = fcmp fast ogt float %5720, 0.000000e+00
  br i1 %5721, label %5722, label %5746

; <label>:5722                                    ; preds = %5716
  %5723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5724 = extractvalue %dx.types.CBufRet.f32 %5723, 0
  %5725 = extractvalue %dx.types.CBufRet.f32 %5723, 1
  %5726 = fsub fast float %5707, %5724
  %5727 = fsub fast float %5708, %5725
  %5728 = fcmp fast olt float %5726, 0.000000e+00
  %5729 = fcmp fast olt float %5727, 0.000000e+00
  %5730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5731 = extractvalue %dx.types.CBufRet.f32 %5730, 0
  %5732 = extractvalue %dx.types.CBufRet.f32 %5730, 1
  %5733 = extractvalue %dx.types.CBufRet.f32 %5730, 2
  %5734 = extractvalue %dx.types.CBufRet.f32 %5730, 3
  %5735 = select i1 %5728, float %5731, float %5733
  %5736 = select i1 %5729, float %5732, float %5734
  %5737 = fmul fast float %5735, %5726
  %5738 = fmul fast float %5736, %5727
  %5739 = call float @dx.op.unary.f32(i32 6, float %5737)  ; FAbs(value)
  %5740 = call float @dx.op.unary.f32(i32 6, float %5738)  ; FAbs(value)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5653, 0
  %5742 = call float @dx.op.binary.f32(i32 35, float %5739, float %5740)  ; FMax(a,b)
  %5743 = fsub fast float %5741, %5742
  %5744 = call float @dx.op.unary.f32(i32 7, float %5743)  ; Saturate(value)
  %5745 = fmul fast float %5744, %5715
  br label %5746

; <label>:5746                                    ; preds = %5722, %5716
  %5747 = phi float [ %5745, %5722 ], [ 0.000000e+00, %5716 ]
  %5748 = extractvalue %dx.types.CBufRet.f32 %5693, 2
  %5749 = extractvalue %dx.types.CBufRet.f32 %5718, 1
  %5750 = fadd fast float %5749, %5748
  %5751 = fcmp fast ogt float %5750, 0.000000e+00
  br i1 %5751, label %5752, label %5776

; <label>:5752                                    ; preds = %5746
  %5753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5754 = extractvalue %dx.types.CBufRet.f32 %5753, 0
  %5755 = extractvalue %dx.types.CBufRet.f32 %5753, 1
  %5756 = fsub fast float %5699, %5754
  %5757 = fsub fast float %5700, %5755
  %5758 = fcmp fast olt float %5756, 0.000000e+00
  %5759 = fcmp fast olt float %5757, 0.000000e+00
  %5760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5761 = extractvalue %dx.types.CBufRet.f32 %5760, 0
  %5762 = extractvalue %dx.types.CBufRet.f32 %5760, 1
  %5763 = extractvalue %dx.types.CBufRet.f32 %5760, 2
  %5764 = extractvalue %dx.types.CBufRet.f32 %5760, 3
  %5765 = select i1 %5758, float %5761, float %5763
  %5766 = select i1 %5759, float %5762, float %5764
  %5767 = fmul fast float %5765, %5756
  %5768 = fmul fast float %5766, %5757
  %5769 = call float @dx.op.unary.f32(i32 6, float %5767)  ; FAbs(value)
  %5770 = call float @dx.op.unary.f32(i32 6, float %5768)  ; FAbs(value)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5653, 0
  %5772 = call float @dx.op.binary.f32(i32 35, float %5769, float %5770)  ; FMax(a,b)
  %5773 = fsub fast float %5771, %5772
  %5774 = call float @dx.op.unary.f32(i32 7, float %5773)  ; Saturate(value)
  %5775 = fmul fast float %5774, %5715
  br label %5776

; <label>:5776                                    ; preds = %5752, %5746, %5662
  %5777 = phi float [ 0.000000e+00, %5662 ], [ %5775, %5752 ], [ 0.000000e+00, %5746 ]
  %5778 = phi float [ 0.000000e+00, %5662 ], [ %5747, %5752 ], [ %5747, %5746 ]
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5781 = call float @dx.op.unary.f32(i32 7, float %5780)  ; Saturate(value)
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5784 = extractvalue %dx.types.CBufRet.f32 %5782, 1
  %5785 = fsub fast float %5681, %5783
  %5786 = fsub fast float %5685, %5784
  %5787 = fcmp fast olt float %5785, 0.000000e+00
  %5788 = fcmp fast olt float %5786, 0.000000e+00
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 0
  %5791 = extractvalue %dx.types.CBufRet.f32 %5789, 1
  %5792 = extractvalue %dx.types.CBufRet.f32 %5789, 2
  %5793 = extractvalue %dx.types.CBufRet.f32 %5789, 3
  %5794 = select i1 %5787, float %5790, float %5792
  %5795 = select i1 %5788, float %5791, float %5793
  %5796 = fmul fast float %5794, %5785
  %5797 = fmul fast float %5795, %5786
  %5798 = call float @dx.op.unary.f32(i32 6, float %5796)  ; FAbs(value)
  %5799 = call float @dx.op.unary.f32(i32 6, float %5797)  ; FAbs(value)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5653, 0
  %5801 = call float @dx.op.binary.f32(i32 35, float %5798, float %5799)  ; FMax(a,b)
  %5802 = fsub fast float %5800, %5801
  %5803 = call float @dx.op.unary.f32(i32 7, float %5802)  ; Saturate(value)
  %5804 = call float @dx.op.binary.f32(i32 36, float %5803, float %5781)  ; FMin(a,b)
  %5805 = fmul fast float %5804, %5715
  %5806 = fsub fast float %5777, %5805
  %5807 = fsub fast float %5778, %5777
  %5808 = fsub fast float %5807, %5805
  %5809 = call float @dx.op.binary.f32(i32 35, float %5777, float %5778)  ; FMax(a,b)
  %5810 = call float @dx.op.binary.f32(i32 35, float %5805, float %5809)  ; FMax(a,b)
  %5811 = fcmp fast olt float %5810, 1.000000e+00
  br i1 %5811, label %5812, label %6210, !dx.controlflow.hints !86

; <label>:5812                                    ; preds = %5776
  %5813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5814 = extractvalue %dx.types.CBufRet.f32 %5813, 0
  %5815 = fcmp fast une float %5814, 0.000000e+00
  br i1 %5815, label %5816, label %6210, !dx.controlflow.hints !87

; <label>:5816                                    ; preds = %5812
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 0
  %5819 = extractvalue %dx.types.CBufRet.f32 %5817, 1
  %5820 = extractvalue %dx.types.CBufRet.f32 %5817, 2
  %5821 = extractvalue %dx.types.CBufRet.f32 %5817, 3
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 0
  %5824 = extractvalue %dx.types.CBufRet.f32 %5822, 1
  %5825 = extractvalue %dx.types.CBufRet.f32 %5822, 2
  %5826 = extractvalue %dx.types.CBufRet.f32 %5822, 3
  %5827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5827, 0
  %5829 = extractvalue %dx.types.CBufRet.f32 %5827, 1
  %5830 = extractvalue %dx.types.CBufRet.f32 %5827, 2
  %5831 = extractvalue %dx.types.CBufRet.f32 %5827, 3
  %5832 = fmul fast float %5818, %5658
  %5833 = call float @dx.op.tertiary.f32(i32 46, float %5659, float %5819, float %5832)  ; FMad(a,b,c)
  %5834 = call float @dx.op.tertiary.f32(i32 46, float %5660, float %5820, float %5833)  ; FMad(a,b,c)
  %5835 = fadd fast float %5834, %5821
  %5836 = fmul fast float %5823, %5658
  %5837 = call float @dx.op.tertiary.f32(i32 46, float %5659, float %5824, float %5836)  ; FMad(a,b,c)
  %5838 = call float @dx.op.tertiary.f32(i32 46, float %5660, float %5825, float %5837)  ; FMad(a,b,c)
  %5839 = fadd fast float %5838, %5826
  %5840 = fmul fast float %5828, %5658
  %5841 = call float @dx.op.tertiary.f32(i32 46, float %5659, float %5829, float %5840)  ; FMad(a,b,c)
  %5842 = call float @dx.op.tertiary.f32(i32 46, float %5660, float %5830, float %5841)  ; FMad(a,b,c)
  %5843 = fadd fast float %5842, %5831
  %5844 = fcmp fast oge float %5835, 1.000000e+00
  %5845 = fcmp fast oge float %5839, 1.000000e+00
  %5846 = or i1 %5844, %5845
  %5847 = fcmp fast olt float %5835, 0.000000e+00
  %5848 = fcmp fast olt float %5839, 0.000000e+00
  %5849 = or i1 %5847, %5848
  %5850 = or i1 %5846, %5849
  br i1 %5850, label %6210, label %5851, !dx.controlflow.hints !88

; <label>:5851                                    ; preds = %5816
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5855 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5856 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5857 = extractvalue %dx.types.CBufRet.i32 %5856, 2
  %5858 = uitofp i32 %5857 to float
  %5859 = extractvalue %dx.types.CBufRet.i32 %5856, 3
  %5860 = uitofp i32 %5859 to float
  %5861 = extractvalue %dx.types.CBufRet.f32 %5852, 3
  %5862 = fmul fast float %5861, 2.000000e+00
  %5863 = fsub fast float %5835, %5853
  %5864 = fsub fast float %5839, %5854
  %5865 = fmul fast float %5862, %5863
  %5866 = fmul fast float %5862, %5864
  %5867 = fdiv fast float 1.000000e+00, %5641
  %5868 = fmul fast float %5866, %5867
  %5869 = call float @dx.op.unary.f32(i32 6, float %5868)  ; FAbs(value)
  %5870 = fmul fast float %5855, %5660
  %5871 = fmul fast float %5870, %5862
  %5872 = call float @dx.op.unary.f32(i32 6, float %5871)  ; FAbs(value)
  %5873 = call float @dx.op.unary.f32(i32 6, float %5865)  ; FAbs(value)
  %5874 = call float @dx.op.binary.f32(i32 35, float %5872, float %5869)  ; FMax(a,b)
  %5875 = call float @dx.op.binary.f32(i32 35, float %5873, float %5874)  ; FMax(a,b)
  %5876 = fmul fast float %5875, 2.000000e+00
  %5877 = call float @dx.op.unary.f32(i32 23, float %5876)  ; Log(value)
  %5878 = call float @dx.op.binary.f32(i32 35, float %5877, float %5858)  ; FMax(a,b)
  %5879 = call float @dx.op.unary.f32(i32 22, float %5878)  ; Frc(value)
  %5880 = fadd fast float %5879, 0xBFEA666660000000
  %5881 = fmul fast float %5880, 8.000000e+00
  %5882 = call float @dx.op.unary.f32(i32 7, float %5881)  ; Saturate(value)
  %5883 = call float @dx.op.unary.f32(i32 27, float %5878)  ; Round_ni(value)
  %5884 = fadd fast float %5883, %5882
  %5885 = call float @dx.op.binary.f32(i32 36, float %5884, float %5860)  ; FMin(a,b)
  %5886 = call float @dx.op.unary.f32(i32 27, float %5885)  ; Round_ni(value)
  %5887 = fsub fast float -0.000000e+00, %5886
  %5888 = call float @dx.op.unary.f32(i32 21, float %5887)  ; Exp(value)
  %5889 = fmul fast float %5888, %5862
  %5890 = fmul fast float %5889, %5835
  %5891 = fmul fast float %5889, %5839
  %5892 = fmul fast float %5890, 2.500000e-01
  %5893 = fmul fast float %5891, 2.500000e-01
  %5894 = fadd fast float %5892, 5.000000e-01
  %5895 = fadd fast float %5893, 5.000000e-01
  %5896 = fsub fast float %5860, %5858
  %5897 = fptoui float %5896 to i32
  %5898 = add i32 %5897, 320
  %5899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %5898)  ; CBufferLoadLegacy(handle,regIndex)
  %5900 = extractvalue %dx.types.CBufRet.f32 %5899, 0
  %5901 = extractvalue %dx.types.CBufRet.f32 %5899, 1
  %5902 = fcmp fast une float %5885, %5860
  %5903 = fsub fast float %5835, %5900
  %5904 = fsub fast float %5839, %5901
  %5905 = call float @dx.op.unary.f32(i32 6, float %5903)  ; FAbs(value)
  %5906 = call float @dx.op.unary.f32(i32 6, float %5904)  ; FAbs(value)
  %5907 = fmul fast float %5905, %5889
  %5908 = fmul fast float %5906, %5889
  %5909 = fcmp fast olt float %5907, 1.000000e+00
  %5910 = fcmp fast olt float %5908, 1.000000e+00
  %5911 = and i1 %5909, %5910
  %5912 = or i1 %5902, %5911
  br i1 %5912, label %5913, label %6210, !dx.controlflow.hints !89

; <label>:5913                                    ; preds = %5851
  %5914 = fmul fast float %5891, 5.000000e-01
  %5915 = fmul fast float %5890, 5.000000e-01
  %5916 = fadd fast float %5914, 5.000000e-01
  %5917 = fadd fast float %5915, 5.000000e-01
  %5918 = sitofp i32 %5857 to float
  %5919 = fsub fast float %5885, %5918
  %5920 = call float @dx.op.unary.f32(i32 27, float %5919)  ; Round_ni(value)
  %5921 = call float @dx.op.unary.f32(i32 22, float %5885)  ; Frc(value)
  %5922 = call float @dx.op.unary.f32(i32 22, float %5917)  ; Frc(value)
  %5923 = call float @dx.op.unary.f32(i32 22, float %5916)  ; Frc(value)
  %5924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %36, float %5922, float %5923, float %5920, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5925 = extractvalue %dx.types.ResRet.f32 %5924, 0
  %5926 = extractvalue %dx.types.ResRet.f32 %5924, 1
  %5927 = extractvalue %dx.types.ResRet.f32 %5924, 2
  %5928 = extractvalue %dx.types.ResRet.f32 %5924, 3
  %5929 = fcmp fast ogt float %5921, 0.000000e+00
  br i1 %5929, label %5930, label %5951, !dx.controlflow.hints !90

; <label>:5930                                    ; preds = %5913
  %5931 = fadd fast float %5920, 1.000000e+00
  %5932 = call float @dx.op.unary.f32(i32 22, float %5894)  ; Frc(value)
  %5933 = call float @dx.op.unary.f32(i32 22, float %5895)  ; Frc(value)
  %5934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %36, float %5932, float %5933, float %5931, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5935 = extractvalue %dx.types.ResRet.f32 %5934, 0
  %5936 = extractvalue %dx.types.ResRet.f32 %5934, 1
  %5937 = extractvalue %dx.types.ResRet.f32 %5934, 2
  %5938 = extractvalue %dx.types.ResRet.f32 %5934, 3
  %5939 = fsub fast float %5935, %5925
  %5940 = fsub fast float %5936, %5926
  %5941 = fsub fast float %5937, %5927
  %5942 = fsub fast float %5938, %5928
  %5943 = fmul fast float %5939, %5921
  %5944 = fmul fast float %5940, %5921
  %5945 = fmul fast float %5941, %5921
  %5946 = fmul fast float %5942, %5921
  %5947 = fadd fast float %5943, %5925
  %5948 = fadd fast float %5944, %5926
  %5949 = fadd fast float %5945, %5927
  %5950 = fadd fast float %5946, %5928
  br label %5951

; <label>:5951                                    ; preds = %5930, %5913
  %5952 = phi float [ %5947, %5930 ], [ %5925, %5913 ]
  %5953 = phi float [ %5948, %5930 ], [ %5926, %5913 ]
  %5954 = phi float [ %5949, %5930 ], [ %5927, %5913 ]
  %5955 = phi float [ %5950, %5930 ], [ %5928, %5913 ]
  %5956 = fadd fast float %5952, -5.000000e-01
  %5957 = fadd fast float %5954, -5.000000e-01
  %5958 = fmul fast float %5956, 0xBFD5555560000000
  %5959 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5957, float %5958)  ; FMad(a,b,c)
  %5960 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5953, float 0.000000e+00)  ; FMad(a,b,c)
  %5961 = fadd fast float %5960, %5955
  %5962 = fmul fast float %5956, -7.500000e-01
  %5963 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5957, float %5962)  ; FMad(a,b,c)
  %5964 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5953, float 0.000000e+00)  ; FMad(a,b,c)
  %5965 = fadd fast float %5964, %5955
  %5966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5966, 0
  %5968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5969 = extractvalue %dx.types.CBufRet.f32 %5968, 0
  %5970 = extractvalue %dx.types.CBufRet.f32 %5968, 1
  %5971 = extractvalue %dx.types.CBufRet.f32 %5968, 2
  %5972 = extractvalue %dx.types.CBufRet.f32 %5968, 3
  %5973 = fsub fast float %5969, %5959
  %5974 = fsub fast float %5970, %5961
  %5975 = fsub fast float %5971, %5963
  %5976 = fsub fast float %5972, %5965
  %5977 = fmul fast float %5973, %5967
  %5978 = fmul fast float %5974, %5967
  %5979 = fmul fast float %5975, %5967
  %5980 = fmul fast float %5976, %5967
  %5981 = fadd fast float %5977, %5959
  %5982 = fadd fast float %5978, %5961
  %5983 = fadd fast float %5979, %5963
  %5984 = fadd fast float %5980, %5965
  %5985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5986 = extractvalue %dx.types.ResRet.i32 %5985, 0
  %5987 = and i32 %5986, 536870911
  %5988 = uitofp i32 %5987 to float
  %5989 = fmul fast float %5988, %5835
  %5990 = fmul fast float %5988, %5839
  %5991 = fptoui float %5989 to i32
  %5992 = fptoui float %5990 to i32
  %5993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5994 = extractvalue %dx.types.ResRet.i32 %5993, 0
  %5995 = and i32 %5994, 31
  %5996 = lshr i32 %5991, %5995
  %5997 = lshr i32 %5992, %5995
  %5998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5999 = extractvalue %dx.types.ResRet.i32 %5998, 0
  %6000 = and i32 %5999, 31
  %6001 = shl i32 1, %6000
  %6002 = call i32 @dx.op.binary.i32(i32 40, i32 %6001, i32 4)  ; UMin(a,b)
  %6003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6004 = extractvalue %dx.types.ResRet.i32 %6003, 0
  %6005 = extractvalue %dx.types.ResRet.i32 %6003, 1
  %6006 = icmp eq i32 %6002, 0
  br i1 %6006, label %6048, label %6007

; <label>:6007                                    ; preds = %5951
  br label %6008

; <label>:6008                                    ; preds = %6036, %6007
  %6009 = phi i32 [ %6039, %6036 ], [ 0, %6007 ]
  %6010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6011 = extractvalue %dx.types.ResRet.i32 %6010, 0
  %6012 = lshr i32 %6011, 16
  %6013 = and i32 %6012, 31
  %6014 = shl i32 %5997, %6013
  %6015 = add i32 %6014, %5996
  %6016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6017 = extractvalue %dx.types.ResRet.i32 %6016, 0
  %6018 = and i32 %6017, 31
  %6019 = shl i32 %6015, %6018
  %6020 = add i32 %6019, %6009
  %6021 = shl i32 %6020, 2
  %6022 = add i32 %6021, 32
  %6023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6022, i32 undef)  ; BufferLoad(srv,index,wot)
  %6024 = extractvalue %dx.types.ResRet.i32 %6023, 0
  %6025 = icmp slt i32 %6024, 0
  %6026 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6009
  %6027 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6009
  %6028 = bitcast float* %6026 to i32*
  %6029 = bitcast float* %6027 to i32*
  br i1 %6025, label %6030, label %6036

; <label>:6030                                    ; preds = %6008
  %6031 = and i32 %6024, 1073741823
  %6032 = add nuw nsw i32 %6031, 20
  %6033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6032, i32 undef)  ; BufferLoad(srv,index,wot)
  %6034 = extractvalue %dx.types.ResRet.i32 %6033, 0
  %6035 = extractvalue %dx.types.ResRet.i32 %6033, 1
  br label %6036

; <label>:6036                                    ; preds = %6030, %6008
  %6037 = phi i32 [ %6034, %6030 ], [ %6004, %6008 ]
  %6038 = phi i32 [ %6035, %6030 ], [ %6005, %6008 ]
  store i32 %6037, i32* %6028, align 4
  store i32 %6038, i32* %6029, align 4
  %6039 = add nuw i32 %6009, 1
  %6040 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6041 = extractvalue %dx.types.CBufRet.i32 %6040, 2
  %6042 = icmp eq i32 %6041, 0
  %6043 = icmp ugt i32 %6024, -1073741825
  %6044 = and i1 %6043, %6042
  %6045 = icmp ult i32 %6039, %6002
  %6046 = and i1 %6044, %6045
  br i1 %6046, label %6008, label %6047

; <label>:6047                                    ; preds = %6036
  br label %6048

; <label>:6048                                    ; preds = %6047, %5951
  %6049 = phi i32 [ 0, %5951 ], [ %6039, %6047 ]
  %6050 = extractvalue %dx.types.CBufRet.f32 %5813, 2
  %6051 = fptoui float %6050 to i32
  %6052 = icmp eq i32 %6051, 0
  br i1 %6052, label %6104, label %6053

; <label>:6053                                    ; preds = %6048
  br label %6054

; <label>:6054                                    ; preds = %6099, %6053
  %6055 = phi i32 [ %6100, %6099 ], [ %6049, %6053 ]
  %6056 = phi i32 [ %6101, %6099 ], [ 0, %6053 ]
  %6057 = lshr i32 %6056, 2
  %6058 = and i32 %6056, 3
  %6059 = add nuw nsw i32 %6057, 83
  %6060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 %6059)  ; CBufferLoadLegacy(handle,regIndex)
  %6061 = extractvalue %dx.types.CBufRet.i32 %6060, 0
  %6062 = extractvalue %dx.types.CBufRet.i32 %6060, 1
  %6063 = extractvalue %dx.types.CBufRet.i32 %6060, 2
  %6064 = extractvalue %dx.types.CBufRet.i32 %6060, 3
  %6065 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 0
  store i32 %6061, i32* %6065, align 4
  %6066 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 1
  store i32 %6062, i32* %6066, align 4
  %6067 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 2
  store i32 %6063, i32* %6067, align 4
  %6068 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 3
  store i32 %6064, i32* %6068, align 4
  %6069 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 %6058
  %6070 = load i32, i32* %6069, align 4, !tbaa !91, !noalias !95
  %6071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6072 = extractvalue %dx.types.ResRet.i32 %6071, 0
  %6073 = lshr i32 %6072, 16
  %6074 = and i32 %6073, 31
  %6075 = shl i32 %5997, %6074
  %6076 = add i32 %6075, %5996
  %6077 = shl i32 %6076, 2
  %6078 = add i32 %6077, %6070
  %6079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6078, i32 undef)  ; BufferLoad(srv,index,wot)
  %6080 = extractvalue %dx.types.ResRet.i32 %6079, 0
  %6081 = icmp eq i32 %6080, 0
  br i1 %6081, label %6099, label %6082

; <label>:6082                                    ; preds = %6054
  %6083 = icmp slt i32 %6080, 0
  %6084 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6055
  %6085 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6055
  %6086 = bitcast float* %6084 to i32*
  %6087 = bitcast float* %6085 to i32*
  br i1 %6083, label %6088, label %6095

; <label>:6088                                    ; preds = %6082
  %6089 = and i32 %6080, 1073741823
  %6090 = add i32 %6070, 20
  %6091 = add i32 %6090, %6089
  %6092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6091, i32 undef)  ; BufferLoad(srv,index,wot)
  %6093 = extractvalue %dx.types.ResRet.i32 %6092, 0
  %6094 = extractvalue %dx.types.ResRet.i32 %6092, 1
  br label %6095

; <label>:6095                                    ; preds = %6088, %6082
  %6096 = phi i32 [ %6093, %6088 ], [ %6004, %6082 ]
  %6097 = phi i32 [ %6094, %6088 ], [ %6005, %6082 ]
  store i32 %6096, i32* %6086, align 4
  store i32 %6097, i32* %6087, align 4
  %6098 = add i32 %6055, 1
  br label %6099

; <label>:6099                                    ; preds = %6095, %6054
  %6100 = phi i32 [ %6055, %6054 ], [ %6098, %6095 ]
  %6101 = add nuw i32 %6056, 1
  %6102 = icmp eq i32 %6101, %6051
  br i1 %6102, label %6103, label %6054

; <label>:6103                                    ; preds = %6099
  br label %6104

; <label>:6104                                    ; preds = %6103, %6048
  %6105 = phi i32 [ %6049, %6048 ], [ %6100, %6103 ]
  %6106 = icmp eq i32 %6105, 1
  %6107 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  %6108 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  br i1 %6106, label %6109, label %6112

; <label>:6109                                    ; preds = %6104
  %6110 = load float, float* %6107, align 4
  %6111 = load float, float* %6108, align 4
  br label %6139

; <label>:6112                                    ; preds = %6104
  %6113 = load float, float* %6107, align 4
  %6114 = load float, float* %6108, align 4
  %6115 = fdiv fast float 1.000000e+00, %6114
  %6116 = fsub fast float %6113, %6115
  %6117 = icmp ugt i32 %6105, 1
  br i1 %6117, label %6118, label %6134

; <label>:6118                                    ; preds = %6112
  br label %6119

; <label>:6119                                    ; preds = %6119, %6118
  %6120 = phi float [ %6129, %6119 ], [ %6116, %6118 ]
  %6121 = phi float [ %6130, %6119 ], [ %6113, %6118 ]
  %6122 = phi i32 [ %6131, %6119 ], [ 1, %6118 ]
  %6123 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6122
  %6124 = load float, float* %6123, align 4
  %6125 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6122
  %6126 = load float, float* %6125, align 4
  %6127 = fdiv fast float 1.000000e+00, %6126
  %6128 = fsub fast float %6124, %6127
  %6129 = call float @dx.op.binary.f32(i32 36, float %6120, float %6128)  ; FMin(a,b)
  %6130 = call float @dx.op.binary.f32(i32 35, float %6121, float %6124)  ; FMax(a,b)
  %6131 = add nuw i32 %6122, 1
  %6132 = icmp eq i32 %6131, %6105
  br i1 %6132, label %6133, label %6119

; <label>:6133                                    ; preds = %6119
  br label %6134

; <label>:6134                                    ; preds = %6133, %6112
  %6135 = phi float [ %6116, %6112 ], [ %6129, %6133 ]
  %6136 = phi float [ %6113, %6112 ], [ %6130, %6133 ]
  %6137 = fsub fast float %6136, %6135
  %6138 = fdiv fast float 1.000000e+00, %6137
  br label %6139

; <label>:6139                                    ; preds = %6134, %6109
  %6140 = phi float [ %6110, %6109 ], [ %6136, %6134 ]
  %6141 = phi float [ %6111, %6109 ], [ %6138, %6134 ]
  %6142 = fadd fast float %5843, %6140
  %6143 = fmul fast float %6142, %6141
  %6144 = call float @dx.op.unary.f32(i32 7, float %6143)  ; Saturate(value)
  %6145 = fmul fast float %6144, 2.000000e+00
  %6146 = fsub fast float 1.000000e+00, %6145
  %6147 = fmul fast float %5981, %5981
  %6148 = fsub fast float %5982, %6147
  %6149 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6148)  ; FMax(a,b)
  %6150 = fdiv fast float 1.000000e+00, %6149
  %6151 = fmul fast float %5982, %5981
  %6152 = fsub fast float %5983, %6151
  %6153 = fsub fast float %6146, %5981
  %6154 = fmul fast float %6146, %6146
  %6155 = fsub fast float %6154, %5982
  %6156 = fmul fast float %6150, %6152
  %6157 = fmul fast float %6156, %6153
  %6158 = fsub fast float %6155, %6157
  %6159 = fmul fast float %5982, %5982
  %6160 = fsub fast float %5984, %6159
  %6161 = fmul fast float %6152, %6152
  %6162 = fmul fast float %6161, %6150
  %6163 = fsub fast float %6160, %6162
  %6164 = fdiv fast float %6158, %6163
  %6165 = fmul fast float %6164, %6152
  %6166 = fsub fast float %6153, %6165
  %6167 = fmul fast float %6166, %6150
  %6168 = fmul fast float %6167, %5981
  %6169 = fsub fast float 1.000000e+00, %6168
  %6170 = fmul fast float %6164, %5982
  %6171 = fsub fast float %6169, %6170
  %6172 = fmul fast float %6167, %6167
  %6173 = fmul fast float %6164, 4.000000e+00
  %6174 = fmul fast float %6173, %6171
  %6175 = fsub fast float %6172, %6174
  %6176 = call float @dx.op.unary.f32(i32 24, float %6175)  ; Sqrt(value)
  %6177 = fcmp fast oge float %6167, 0.000000e+00
  %6178 = fsub fast float -0.000000e+00, %6176
  %6179 = select i1 %6177, float %6178, float %6176
  %6180 = fsub fast float %6179, %6167
  %6181 = fdiv fast float %6180, %6164
  %6182 = fdiv fast float %6171, %6180
  %6183 = fmul fast float %6181, 5.000000e-01
  %6184 = fmul fast float %6182, 2.000000e+00
  %6185 = select i1 %6177, float %6183, float %6184
  %6186 = select i1 %6177, float %6184, float %6183
  %6187 = call float @dx.op.binary.f32(i32 35, float %6185, float %6186)  ; FMax(a,b)
  %6188 = call float @dx.op.binary.f32(i32 36, float %6185, float %6186)  ; FMin(a,b)
  %6189 = fcmp fast ogt float %6146, %6187
  %6190 = fsub fast float %6146, %6188
  %6191 = fsub fast float %6146, %6187
  %6192 = fsub fast float %6187, %6188
  %6193 = select i1 %6189, float %6191, float %6192
  %6194 = fmul float %6190, %6193
  %6195 = select i1 %6189, float %6188, float %6146
  %6196 = fcmp fast ogt float %6146, %6188
  %6197 = fmul fast float %6195, %6187
  %6198 = fadd fast float %6195, %6187
  %6199 = fmul fast float %6198, %5981
  %6200 = fadd fast float %6197, %5982
  %6201 = fsub fast float %6200, %6199
  %6202 = fdiv fast float %6201, %6194
  %6203 = select i1 %6196, float %6202, float 0.000000e+00
  %6204 = fsub fast float 1.000000e+00, %6203
  %6205 = select i1 %6189, float %6204, float %6203
  %6206 = call float @dx.op.unary.f32(i32 7, float %6205)  ; Saturate(value)
  %6207 = extractvalue %dx.types.CBufRet.f32 %5966, 3
  %6208 = fmul fast float %6207, %6206
  %6209 = fsub fast float 1.000000e+00, %6208
  br label %6210

; <label>:6210                                    ; preds = %6139, %5851, %5816, %5812, %5776
  %6211 = phi float [ 1.000000e+00, %5776 ], [ %6209, %6139 ], [ 1.000000e+00, %5816 ], [ 1.000000e+00, %5851 ], [ 1.000000e+00, %5812 ]
  %6212 = fcmp fast ogt float %5808, 0.000000e+00
  br i1 %6212, label %6213, label %6221, !dx.controlflow.hints !104

; <label>:6213                                    ; preds = %6210
  %6214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6215 = extractvalue %dx.types.CBufRet.f32 %6214, 2
  %6216 = fadd fast float %6215, %5689
  %6217 = call float @dx.op.binary.f32(i32 35, float %6216, float 0.000000e+00)  ; FMax(a,b)
  %6218 = fadd fast float %6217, 0x3F10000000000000
  %6219 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %39, float %5707, float %5708, float undef, float undef, i32 0, i32 0, i32 undef, float %6218)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6220 = extractvalue %dx.types.ResRet.f32 %6219, 0
  br label %6221

; <label>:6221                                    ; preds = %6213, %6210
  %6222 = phi float [ %6220, %6213 ], [ 1.000000e+00, %6210 ]
  %6223 = fcmp fast ogt float %5806, 0.000000e+00
  br i1 %6223, label %6224, label %6232, !dx.controlflow.hints !105

; <label>:6224                                    ; preds = %6221
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 1
  %6227 = fadd fast float %6226, %5689
  %6228 = call float @dx.op.binary.f32(i32 35, float %6227, float 0.000000e+00)  ; FMax(a,b)
  %6229 = fadd fast float %6228, 0x3F10000000000000
  %6230 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %39, float %5699, float %5700, float undef, float undef, i32 0, i32 0, i32 undef, float %6229)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6231 = extractvalue %dx.types.ResRet.f32 %6230, 0
  br label %6232

; <label>:6232                                    ; preds = %6224, %6221
  %6233 = phi float [ %6231, %6224 ], [ 1.000000e+00, %6221 ]
  %6234 = fcmp fast ogt float %5805, 0.000000e+00
  br i1 %6234, label %6235, label %6247, !dx.controlflow.hints !106

; <label>:6235                                    ; preds = %6232
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 0
  %6238 = fadd fast float %6237, %5689
  %6239 = call float @dx.op.binary.f32(i32 35, float %6238, float 0.000000e+00)  ; FMax(a,b)
  %6240 = fadd fast float %6239, 0x3F10000000000000
  br i1 %5692, label %6241, label %6244, !dx.controlflow.hints !107

; <label>:6241                                    ; preds = %6235
  %6242 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %39, float %5681, float %5685, float undef, float undef, i32 0, i32 0, i32 undef, float %6240)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6243 = extractvalue %dx.types.ResRet.f32 %6242, 0
  br label %6247

; <label>:6244                                    ; preds = %6235
  %6245 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %39, float %5681, float %5685, float undef, float undef, i32 0, i32 0, i32 undef, float %6240)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6246 = extractvalue %dx.types.ResRet.f32 %6245, 0
  br label %6247

; <label>:6247                                    ; preds = %6244, %6241, %6232
  %6248 = phi float [ %6243, %6241 ], [ %6246, %6244 ], [ 1.000000e+00, %6232 ]
  %6249 = fsub fast float %6222, %6211
  %6250 = fmul fast float %6249, %5778
  %6251 = fadd fast float %6250, %6211
  %6252 = fsub fast float %6233, %6251
  %6253 = fmul fast float %6252, %5777
  %6254 = fadd fast float %6253, %6251
  %6255 = fsub fast float %6248, %6254
  %6256 = fmul fast float %6255, %5805
  %6257 = fadd fast float %6256, %6254
  %6258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6259 = extractvalue %dx.types.CBufRet.f32 %6258, 2
  %6260 = fcmp fast ogt float %6259, 0.000000e+00
  br i1 %6260, label %6261, label %6301, !dx.controlflow.hints !108

; <label>:6261                                    ; preds = %6247
  %6262 = fcmp fast ugt float %6259, 0.000000e+00
  br i1 %6262, label %6263, label %6298

; <label>:6263                                    ; preds = %6261
  %6264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6265 = extractvalue %dx.types.CBufRet.f32 %6264, 0
  %6266 = extractvalue %dx.types.CBufRet.f32 %6264, 1
  %6267 = extractvalue %dx.types.CBufRet.f32 %6264, 2
  %6268 = extractvalue %dx.types.CBufRet.f32 %6264, 3
  %6269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6270 = extractvalue %dx.types.CBufRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.CBufRet.f32 %6269, 1
  %6272 = extractvalue %dx.types.CBufRet.f32 %6269, 2
  %6273 = extractvalue %dx.types.CBufRet.f32 %6269, 3
  %6274 = extractvalue %dx.types.CBufRet.f32 %6258, 0
  %6275 = extractvalue %dx.types.CBufRet.f32 %6258, 1
  %6276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6277 = extractvalue %dx.types.CBufRet.f32 %6276, 0
  %6278 = extractvalue %dx.types.CBufRet.f32 %6276, 1
  %6279 = extractvalue %dx.types.CBufRet.f32 %6276, 2
  %6280 = fadd fast float %6277, %5658
  %6281 = fadd fast float %6278, %5659
  %6282 = fadd fast float %6279, %5660
  %6283 = fmul fast float %6280, %6265
  %6284 = call float @dx.op.tertiary.f32(i32 46, float %6266, float %6281, float %6283)  ; FMad(a,b,c)
  %6285 = call float @dx.op.tertiary.f32(i32 46, float %6267, float %6282, float %6284)  ; FMad(a,b,c)
  %6286 = fadd fast float %6285, %6268
  %6287 = fmul fast float %6280, %6270
  %6288 = call float @dx.op.tertiary.f32(i32 46, float %6271, float %6281, float %6287)  ; FMad(a,b,c)
  %6289 = call float @dx.op.tertiary.f32(i32 46, float %6272, float %6282, float %6288)  ; FMad(a,b,c)
  %6290 = fadd fast float %6289, %6273
  %6291 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %34, float %6286, float %6290, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6292 = extractvalue %dx.types.ResRet.f32 %6291, 0
  %6293 = fmul fast float %6292, %6275
  %6294 = fadd fast float %6293, %6274
  %6295 = call float @dx.op.unary.f32(i32 7, float %6294)  ; Saturate(value)
  %6296 = fmul fast float %6295, %6259
  %6297 = fsub fast float 1.000000e+00, %6296
  br label %6298

; <label>:6298                                    ; preds = %6263, %6261
  %6299 = phi float [ %6297, %6263 ], [ 1.000000e+00, %6261 ]
  %6300 = fmul fast float %6299, %6257
  br label %6301

; <label>:6301                                    ; preds = %6298, %6247, %5638
  %6302 = phi float [ 1.000000e+00, %5638 ], [ %6300, %6298 ], [ %6257, %6247 ]
  %6303 = call float @dx.op.binary.f32(i32 36, float %6302, float %6302)  ; FMin(a,b)
  %6304 = call float @dx.op.binary.f32(i32 36, float %6302, float %6303)  ; FMin(a,b)
  %6305 = fcmp fast ogt float %6304, 0.000000e+00
  br i1 %6305, label %6306, label %6467, !dx.controlflow.hints !109

; <label>:6306                                    ; preds = %6301
  %6307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6308 = extractvalue %dx.types.CBufRet.f32 %6307, 0
  %6309 = extractvalue %dx.types.CBufRet.f32 %6307, 1
  %6310 = extractvalue %dx.types.CBufRet.f32 %6307, 2
  %6311 = extractvalue %dx.types.CBufRet.f32 %6307, 3
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 0
  %6314 = extractvalue %dx.types.CBufRet.f32 %6312, 1
  %6315 = extractvalue %dx.types.CBufRet.f32 %6312, 2
  %6316 = extractvalue %dx.types.CBufRet.f32 %6312, 3
  %6317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.f32 %6317, 0
  %6319 = extractvalue %dx.types.CBufRet.f32 %6317, 1
  %6320 = extractvalue %dx.types.CBufRet.f32 %6317, 2
  %6321 = extractvalue %dx.types.CBufRet.f32 %6317, 3
  %6322 = fmul fast float %6308, %5658
  %6323 = call float @dx.op.tertiary.f32(i32 46, float %5659, float %6309, float %6322)  ; FMad(a,b,c)
  %6324 = call float @dx.op.tertiary.f32(i32 46, float %5660, float %6310, float %6323)  ; FMad(a,b,c)
  %6325 = fadd fast float %6324, %6311
  %6326 = fmul fast float %6313, %5658
  %6327 = call float @dx.op.tertiary.f32(i32 46, float %5659, float %6314, float %6326)  ; FMad(a,b,c)
  %6328 = call float @dx.op.tertiary.f32(i32 46, float %5660, float %6315, float %6327)  ; FMad(a,b,c)
  %6329 = fadd fast float %6328, %6316
  %6330 = fmul fast float %6318, %5658
  %6331 = call float @dx.op.tertiary.f32(i32 46, float %5659, float %6319, float %6330)  ; FMad(a,b,c)
  %6332 = call float @dx.op.tertiary.f32(i32 46, float %5660, float %6320, float %6331)  ; FMad(a,b,c)
  %6333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6334 = extractvalue %dx.types.CBufRet.f32 %6333, 0
  %6335 = extractvalue %dx.types.CBufRet.f32 %6333, 1
  %6336 = extractvalue %dx.types.CBufRet.f32 %6333, 3
  %6337 = fmul fast float %6336, %6325
  %6338 = fmul fast float %6336, %6329
  %6339 = fadd fast float %6337, %6334
  %6340 = fadd fast float %6338, %6335
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 0
  %6343 = extractvalue %dx.types.CBufRet.f32 %6341, 1
  %6344 = fsub fast float %6339, %6342
  %6345 = fsub fast float %6340, %6343
  %6346 = fcmp fast olt float %6344, 0.000000e+00
  %6347 = fcmp fast olt float %6345, 0.000000e+00
  %6348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6349 = extractvalue %dx.types.CBufRet.f32 %6348, 0
  %6350 = extractvalue %dx.types.CBufRet.f32 %6348, 1
  %6351 = extractvalue %dx.types.CBufRet.f32 %6348, 2
  %6352 = extractvalue %dx.types.CBufRet.f32 %6348, 3
  %6353 = select i1 %6346, float %6349, float %6351
  %6354 = select i1 %6347, float %6350, float %6352
  %6355 = fmul fast float %6353, %6344
  %6356 = fmul fast float %6354, %6345
  %6357 = call float @dx.op.unary.f32(i32 6, float %6355)  ; FAbs(value)
  %6358 = call float @dx.op.unary.f32(i32 6, float %6356)  ; FAbs(value)
  %6359 = extractvalue %dx.types.CBufRet.f32 %5653, 0
  %6360 = call float @dx.op.binary.f32(i32 35, float %6357, float %6358)  ; FMax(a,b)
  %6361 = fsub fast float %6359, %6360
  %6362 = call float @dx.op.unary.f32(i32 7, float %6361)  ; Saturate(value)
  %6363 = fcmp fast ogt float %6362, 0.000000e+00
  br i1 %6363, label %6364, label %6405, !dx.controlflow.hints !110

; <label>:6364                                    ; preds = %6306
  %6365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %37, float %6339, float %6340, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6366 = extractvalue %dx.types.ResRet.f32 %6365, 1
  %6367 = fcmp fast ogt float %6366, 0.000000e+00
  br i1 %6367, label %6368, label %6400

; <label>:6368                                    ; preds = %6364
  %6369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %6339, float %6340, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6370 = extractvalue %dx.types.ResRet.f32 %6369, 0
  %6371 = extractvalue %dx.types.ResRet.f32 %6369, 1
  %6372 = extractvalue %dx.types.ResRet.f32 %6369, 2
  %6373 = extractvalue %dx.types.ResRet.f32 %6369, 3
  %6374 = fsub fast float 1.000000e+00, %6321
  %6375 = fsub fast float %6374, %6332
  %6376 = fmul fast float %6375, 0x400921FB60000000
  %6377 = fadd fast float %6376, 0x3FF921FB60000000
  %6378 = call float @dx.op.unary.f32(i32 13, float %6377)  ; Sin(value)
  %6379 = fadd fast float %6378, -1.000000e+00
  %6380 = fmul fast float %6379, 0x3FD45F3060000000
  %6381 = fmul fast float %6375, 0x401921FB60000000
  %6382 = fadd fast float %6381, 0x400921FB60000000
  %6383 = call float @dx.op.unary.f32(i32 13, float %6382)  ; Sin(value)
  %6384 = fadd fast float %6383, 0x3E7777A5C0000000
  %6385 = fmul fast float %6384, 0x3FC45F3060000000
  %6386 = fmul fast float %6375, 0x4022D97C80000000
  %6387 = fadd fast float %6386, 0x4012D97C80000000
  %6388 = call float @dx.op.unary.f32(i32 13, float %6387)  ; Sin(value)
  %6389 = fadd fast float %6388, 1.000000e+00
  %6390 = fmul fast float %6389, 0x3FBB2995E0000000
  %6391 = fmul fast float %6375, 0x402921FB60000000
  %6392 = fadd fast float %6391, 0x401921FB60000000
  %6393 = call float @dx.op.unary.f32(i32 13, float %6392)  ; Sin(value)
  %6394 = fadd fast float %6393, 0xBE8777A5C0000000
  %6395 = fmul fast float %6394, 0x3FB45F3060000000
  %6396 = call float @dx.op.dot4.f32(i32 56, float %6370, float %6371, float %6372, float %6373, float %6380, float %6385, float %6390, float %6395)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6397 = fmul fast float %6396, 0xBFF7154760000000
  %6398 = call float @dx.op.unary.f32(i32 21, float %6397)  ; Exp(value)
  %6399 = call float @dx.op.unary.f32(i32 7, float %6398)  ; Saturate(value)
  br label %6400

; <label>:6400                                    ; preds = %6368, %6364
  %6401 = phi float [ %6399, %6368 ], [ 1.000000e+00, %6364 ]
  %6402 = fadd fast float %6401, -1.000000e+00
  %6403 = fmul fast float %6402, %6362
  %6404 = fadd fast float %6403, 1.000000e+00
  br label %6405

; <label>:6405                                    ; preds = %6400, %6306
  %6406 = phi float [ %6404, %6400 ], [ 1.000000e+00, %6306 ]
  %6407 = fmul fast float %6406, %6302
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 0
  %6410 = extractvalue %dx.types.CBufRet.f32 %6408, 1
  %6411 = extractvalue %dx.types.CBufRet.f32 %6408, 2
  %6412 = fadd fast float %6409, %178
  %6413 = fadd fast float %6410, %179
  %6414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6415 = extractvalue %dx.types.CBufRet.f32 %6414, 1
  %6416 = fsub fast float -0.000000e+00, %6412
  %6417 = fsub fast float -0.000000e+00, %6413
  %6418 = fsub fast float -0.000000e+00, %180
  %6419 = fsub fast float %6418, %6411
  %6420 = fadd fast float %6419, %6415
  %6421 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6416, float %6417, float %6420)  ; Dot3(ax,ay,az,bx,by,bz)
  %6422 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5639, float %5640, float %5641)  ; Dot3(ax,ay,az,bx,by,bz)
  %6423 = fdiv fast float 1.000000e+00, %6422
  %6424 = fmul fast float %6423, %6421
  %6425 = fmul fast float %5639, %6424
  %6426 = fmul fast float %5640, %6424
  %6427 = fadd fast float %6425, %6412
  %6428 = fadd fast float %6426, %6413
  %6429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6429, 0
  %6431 = extractvalue %dx.types.CBufRet.f32 %6429, 1
  %6432 = fsub fast float %6427, %6430
  %6433 = fsub fast float %6428, %6431
  %6434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.f32 %6434, 2
  %6436 = extractvalue %dx.types.CBufRet.f32 %6434, 3
  %6437 = fmul fast float %6432, %6435
  %6438 = fmul fast float %6433, %6436
  %6439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6440 = extractvalue %dx.types.CBufRet.i32 %6439, 3
  %6441 = icmp eq i32 %6440, 0
  br i1 %6441, label %6447, label %6442

; <label>:6442                                    ; preds = %6405
  %6443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %36, float %6437, float %6438, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6444 = extractvalue %dx.types.ResRet.f32 %6443, 0
  %6445 = extractvalue %dx.types.ResRet.f32 %6443, 1
  %6446 = extractvalue %dx.types.ResRet.f32 %6443, 2
  br label %6452

; <label>:6447                                    ; preds = %6405
  %6448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %6437, float %6438, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6449 = extractvalue %dx.types.ResRet.f32 %6448, 0
  %6450 = extractvalue %dx.types.ResRet.f32 %6448, 1
  %6451 = extractvalue %dx.types.ResRet.f32 %6448, 2
  br label %6452

; <label>:6452                                    ; preds = %6447, %6442
  %6453 = phi float [ %6444, %6442 ], [ %6449, %6447 ]
  %6454 = phi float [ %6445, %6442 ], [ %6450, %6447 ]
  %6455 = phi float [ %6446, %6442 ], [ %6451, %6447 ]
  %6456 = extractvalue %dx.types.CBufRet.f32 %6414, 2
  %6457 = fmul fast float %6456, %6453
  %6458 = extractvalue %dx.types.CBufRet.f32 %6414, 0
  %6459 = fsub fast float %6424, %6458
  %6460 = fsub fast float %6459, %6457
  %6461 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6460)  ; FMax(a,b)
  %6462 = fmul fast float %6461, %6454
  %6463 = call float @dx.op.binary.f32(i32 36, float %6455, float %6462)  ; FMin(a,b)
  %6464 = fmul fast float %6463, 0xBFF7154760000000
  %6465 = call float @dx.op.unary.f32(i32 21, float %6464)  ; Exp(value)
  %6466 = fmul fast float %6407, %6465
  br label %6467

; <label>:6467                                    ; preds = %6452, %6301
  %6468 = phi float [ %6466, %6452 ], [ %6302, %6301 ]
  %6469 = call float @dx.op.binary.f32(i32 36, float %6468, float %6468)  ; FMin(a,b)
  %6470 = call float @dx.op.binary.f32(i32 36, float %6468, float %6469)  ; FMin(a,b)
  %6471 = fcmp fast ogt float %6470, 0.000000e+00
  br i1 %6471, label %6472, label %6701, !dx.controlflow.hints !111

; <label>:6472                                    ; preds = %6467
  %6473 = fmul fast float %6468, %5650
  %6474 = fmul fast float %6468, %5651
  %6475 = fmul fast float %6468, %5652
  %6476 = fsub fast float %5639, %209
  %6477 = fsub fast float %5640, %210
  %6478 = fsub fast float %5641, %211
  %6479 = call float @dx.op.dot3.f32(i32 55, float %6476, float %6477, float %6478, float %6476, float %6477, float %6478)  ; Dot3(ax,ay,az,bx,by,bz)
  %6480 = call float @dx.op.unary.f32(i32 25, float %6479)  ; Rsqrt(value)
  %6481 = fmul fast float %6480, %6476
  %6482 = fmul fast float %6480, %6477
  %6483 = fmul fast float %6480, %6478
  %6484 = call float @dx.op.dot3.f32(i32 55, float %5639, float %5640, float %5641, float %5255, float %5256, float %5257)  ; Dot3(ax,ay,az,bx,by,bz)
  %6485 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5085, float %5086, float %6481, float %6482, float %6483)  ; Dot3(ax,ay,az,bx,by,bz)
  %6486 = call float @dx.op.unary.f32(i32 7, float %6484)  ; Saturate(value)
  %6487 = fmul fast float %6486, %6486
  %6488 = fmul fast float %6487, %5275
  %6489 = call float @dx.op.unary.f32(i32 7, float %6488)  ; Saturate(value)
  %6490 = fmul fast float %6489, %6486
  %6491 = call float @dx.op.dot3.f32(i32 55, float %5255, float %5256, float %5257, float %6481, float %6482, float %6483)  ; Dot3(ax,ay,az,bx,by,bz)
  %6492 = fmul fast float %6491, %6491
  %6493 = call float @dx.op.unary.f32(i32 6, float %6484)  ; FAbs(value)
  %6494 = fsub fast float 1.000000e+00, %5258
  %6495 = call float @dx.op.binary.f32(i32 35, float %6494, float 0x3F847AE140000000)  ; FMax(a,b)
  %6496 = fmul fast float %6495, %6495
  %6497 = fmul fast float %6496, %6496
  %6498 = fsub fast float 1.000000e+00, %6497
  %6499 = fmul fast float %5262, %5262
  %6500 = fmul fast float %6499, %6498
  %6501 = fadd fast float %6500, %6497
  %6502 = bitcast float %6501 to i32
  %6503 = ashr i32 %6502, 1
  %6504 = add nsw i32 %6503, 532487669
  %6505 = bitcast i32 %6504 to float
  %6506 = fadd fast float %6505, %5262
  %6507 = fmul fast float %6497, %6492
  %6508 = fsub fast float 1.000000e+00, %6492
  %6509 = fadd fast float %6508, %6507
  %6510 = fmul fast float %6493, %6493
  %6511 = fmul fast float %6510, %6498
  %6512 = fadd fast float %6511, %6497
  %6513 = bitcast float %6512 to i32
  %6514 = ashr i32 %6513, 1
  %6515 = add nsw i32 %6514, 532487669
  %6516 = bitcast i32 %6515 to float
  %6517 = fadd fast float %6516, %6493
  %6518 = fmul fast float %6509, %6509
  %6519 = fmul fast float %6518, %6506
  %6520 = fmul fast float %6519, %6517
  %6521 = fdiv fast float 0x3FF0A00000000000, %6520
  %6522 = fmul fast float %6521, %6497
  %6523 = call float @dx.op.unary.f32(i32 6, float %6485)  ; FAbs(value)
  %6524 = fsub fast float 1.000000e+00, %6523
  %6525 = bitcast float %6524 to i32
  %6526 = sitofp i32 %6525 to float
  %6527 = fmul fast float %6526, 5.000000e+00
  %6528 = fadd fast float %6527, 0xC1EFBF8940000000
  %6529 = fptosi float %6528 to i32
  %6530 = bitcast i32 %6529 to float
  %6531 = fsub fast float 1.000000e+00, %5249
  %6532 = fsub fast float 1.000000e+00, %5250
  %6533 = fsub fast float 1.000000e+00, %5260
  %6534 = fmul fast float %6530, %6531
  %6535 = fmul fast float %6530, %6532
  %6536 = fmul fast float %6530, %6533
  %6537 = fadd fast float %6534, %5249
  %6538 = fadd fast float %6535, %5250
  %6539 = fadd fast float %6536, %5260
  br i1 %5532, label %6540, label %6563

; <label>:6540                                    ; preds = %6472
  %6541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4276, float %6523, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6542 = extractvalue %dx.types.ResRet.f32 %6541, 0
  %6543 = extractvalue %dx.types.ResRet.f32 %6541, 1
  %6544 = extractvalue %dx.types.ResRet.f32 %6541, 2
  %6545 = fadd fast float %6542, -5.000000e-01
  %6546 = fadd fast float %6543, -5.000000e-01
  %6547 = fadd fast float %6544, -5.000000e-01
  %6548 = fmul fast float %5249, 4.000000e+00
  %6549 = fmul fast float %6548, %6531
  %6550 = fmul fast float %6549, %6545
  %6551 = fmul fast float %5250, 4.000000e+00
  %6552 = fmul fast float %6551, %6532
  %6553 = fmul fast float %6552, %6546
  %6554 = fmul fast float %5260, 4.000000e+00
  %6555 = fmul fast float %6554, %6533
  %6556 = fmul fast float %6555, %6547
  %6557 = fadd fast float %6550, %6537
  %6558 = fadd fast float %6553, %6538
  %6559 = fadd fast float %6556, %6539
  %6560 = call float @dx.op.unary.f32(i32 7, float %6557)  ; Saturate(value)
  %6561 = call float @dx.op.unary.f32(i32 7, float %6558)  ; Saturate(value)
  %6562 = call float @dx.op.unary.f32(i32 7, float %6559)  ; Saturate(value)
  br label %6563

; <label>:6563                                    ; preds = %6540, %6472
  %6564 = phi float [ %6560, %6540 ], [ %6537, %6472 ]
  %6565 = phi float [ %6561, %6540 ], [ %6538, %6472 ]
  %6566 = phi float [ %6562, %6540 ], [ %6539, %6472 ]
  %6567 = fmul fast float %6484, 9.843750e-01
  %6568 = fadd fast float %6567, 7.812500e-03
  %6569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %6568, float %5522, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6570 = extractvalue %dx.types.ResRet.f32 %6569, 2
  %6571 = extractvalue %dx.types.ResRet.f32 %6569, 3
  %6572 = fmul fast float %6570, %5249
  %6573 = fmul fast float %6570, %5250
  %6574 = fmul fast float %6570, %5260
  %6575 = fadd fast float %6572, %6571
  %6576 = fadd fast float %6573, %6571
  %6577 = fadd fast float %6574, %6571
  br i1 %5532, label %6578, label %6601

; <label>:6578                                    ; preds = %6563
  %6579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4276, float %6484, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6580 = extractvalue %dx.types.ResRet.f32 %6579, 0
  %6581 = extractvalue %dx.types.ResRet.f32 %6579, 1
  %6582 = extractvalue %dx.types.ResRet.f32 %6579, 2
  %6583 = fadd fast float %6580, -5.000000e-01
  %6584 = fadd fast float %6581, -5.000000e-01
  %6585 = fadd fast float %6582, -5.000000e-01
  %6586 = fmul fast float %5249, 4.000000e+00
  %6587 = fmul fast float %6586, %6531
  %6588 = fmul fast float %6587, %6583
  %6589 = fmul fast float %5250, 4.000000e+00
  %6590 = fmul fast float %6589, %6532
  %6591 = fmul fast float %6590, %6584
  %6592 = fmul fast float %5260, 4.000000e+00
  %6593 = fmul fast float %6592, %6533
  %6594 = fmul fast float %6593, %6585
  %6595 = fadd fast float %6588, %6575
  %6596 = fadd fast float %6591, %6576
  %6597 = fadd fast float %6594, %6577
  %6598 = call float @dx.op.unary.f32(i32 7, float %6595)  ; Saturate(value)
  %6599 = call float @dx.op.unary.f32(i32 7, float %6596)  ; Saturate(value)
  %6600 = call float @dx.op.unary.f32(i32 7, float %6597)  ; Saturate(value)
  br label %6601

; <label>:6601                                    ; preds = %6578, %6563
  %6602 = phi float [ %6598, %6578 ], [ %6575, %6563 ]
  %6603 = phi float [ %6599, %6578 ], [ %6576, %6563 ]
  %6604 = phi float [ %6600, %6578 ], [ %6577, %6563 ]
  %6605 = call float @dx.op.binary.f32(i32 35, float %6603, float %6604)  ; FMax(a,b)
  %6606 = call float @dx.op.binary.f32(i32 35, float %6602, float %6605)  ; FMax(a,b)
  %6607 = fsub fast float 1.000000e+00, %6606
  %6608 = fsub fast float -0.000000e+00, %5255
  %6609 = fsub fast float -0.000000e+00, %5256
  %6610 = fsub fast float -0.000000e+00, %5257
  %6611 = call float @dx.op.dot3.f32(i32 55, float %5639, float %5640, float %5641, float %6608, float %6609, float %6610)  ; Dot3(ax,ay,az,bx,by,bz)
  %6612 = call float @dx.op.unary.f32(i32 7, float %6611)  ; Saturate(value)
  %6613 = fmul fast float %6612, 9.843750e-01
  %6614 = fadd fast float %6613, 7.812500e-03
  %6615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %6614, float %5522, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6616 = extractvalue %dx.types.ResRet.f32 %6615, 2
  %6617 = extractvalue %dx.types.ResRet.f32 %6615, 3
  %6618 = fmul fast float %6616, %5249
  %6619 = fmul fast float %6616, %5250
  %6620 = fmul fast float %6616, %5260
  %6621 = fadd fast float %6618, %6617
  %6622 = fadd fast float %6619, %6617
  %6623 = fadd fast float %6620, %6617
  br i1 %5532, label %6624, label %6647

; <label>:6624                                    ; preds = %6601
  %6625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4276, float %6612, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6626 = extractvalue %dx.types.ResRet.f32 %6625, 0
  %6627 = extractvalue %dx.types.ResRet.f32 %6625, 1
  %6628 = extractvalue %dx.types.ResRet.f32 %6625, 2
  %6629 = fadd fast float %6626, -5.000000e-01
  %6630 = fadd fast float %6627, -5.000000e-01
  %6631 = fadd fast float %6628, -5.000000e-01
  %6632 = fmul fast float %5249, 4.000000e+00
  %6633 = fmul fast float %6632, %6531
  %6634 = fmul fast float %6633, %6629
  %6635 = fmul fast float %5250, 4.000000e+00
  %6636 = fmul fast float %6635, %6532
  %6637 = fmul fast float %6636, %6630
  %6638 = fmul fast float %5260, 4.000000e+00
  %6639 = fmul fast float %6638, %6533
  %6640 = fmul fast float %6639, %6631
  %6641 = fadd fast float %6634, %6621
  %6642 = fadd fast float %6637, %6622
  %6643 = fadd fast float %6640, %6623
  %6644 = call float @dx.op.unary.f32(i32 7, float %6641)  ; Saturate(value)
  %6645 = call float @dx.op.unary.f32(i32 7, float %6642)  ; Saturate(value)
  %6646 = call float @dx.op.unary.f32(i32 7, float %6643)  ; Saturate(value)
  br label %6647

; <label>:6647                                    ; preds = %6624, %6601
  %6648 = phi float [ %6644, %6624 ], [ %6621, %6601 ]
  %6649 = phi float [ %6645, %6624 ], [ %6622, %6601 ]
  %6650 = phi float [ %6646, %6624 ], [ %6623, %6601 ]
  %6651 = call float @dx.op.binary.f32(i32 35, float %6649, float %6650)  ; FMax(a,b)
  %6652 = call float @dx.op.binary.f32(i32 35, float %6648, float %6651)  ; FMax(a,b)
  %6653 = fsub fast float 1.000000e+00, %6652
  %6654 = fmul fast float %6653, %6612
  %6655 = fmul fast float %6654, %4388
  %6656 = fmul fast float %6654, %4389
  %6657 = fmul fast float %6654, %4390
  %6658 = fmul fast float %6564, %6522
  %6659 = fmul fast float %6565, %6522
  %6660 = fmul fast float %6566, %6522
  %6661 = fsub fast float 1.000000e+00, %6485
  %6662 = bitcast float %6661 to i32
  %6663 = sitofp i32 %6662 to float
  %6664 = fmul fast float %6663, 5.000000e+00
  %6665 = fadd fast float %6664, 0xC1EFBF8940000000
  %6666 = fptosi float %6665 to i32
  %6667 = bitcast i32 %6666 to float
  %6668 = fmul fast float %6667, %4277
  %6669 = fmul fast float %6607, %6668
  %6670 = fmul fast float %6669, %5579
  %6671 = fmul fast float %6669, %5580
  %6672 = fmul fast float %6669, %5581
  %6673 = fmul fast float %6607, %6490
  %6674 = fadd fast float %6670, %6658
  %6675 = fadd fast float %6671, %6659
  %6676 = fadd fast float %6672, %6660
  %6677 = fadd fast float %6655, %6673
  %6678 = fadd fast float %6656, %6673
  %6679 = fadd fast float %6657, %6673
  %6680 = fmul fast float %6677, %6473
  %6681 = fmul fast float %6678, %6474
  %6682 = fmul fast float %6679, %6475
  %6683 = fmul fast float %6490, %6473
  %6684 = fmul fast float %6683, %6674
  %6685 = fmul fast float %6490, %6474
  %6686 = fmul fast float %6685, %6675
  %6687 = fmul fast float %6490, %6475
  %6688 = fmul fast float %6687, %6676
  %6689 = fadd fast float %6680, %5629
  %6690 = fmul fast float %6689, %4302
  %6691 = fadd fast float %6681, %5631
  %6692 = fmul fast float %6691, %4302
  %6693 = fadd fast float %6682, %5633
  %6694 = fmul fast float %6693, %4302
  %6695 = fadd fast float %6684, %5612
  %6696 = fmul fast float %6695, %4302
  %6697 = fadd fast float %6686, %5615
  %6698 = fmul fast float %6697, %4302
  %6699 = fadd fast float %6688, %5618
  %6700 = fmul fast float %6699, %4302
  br label %6701

; <label>:6701                                    ; preds = %6647, %6467, %5559
  %6702 = phi float [ %5613, %5559 ], [ %5613, %6467 ], [ %6696, %6647 ]
  %6703 = phi float [ %5616, %5559 ], [ %5616, %6467 ], [ %6698, %6647 ]
  %6704 = phi float [ %5619, %5559 ], [ %5619, %6467 ], [ %6700, %6647 ]
  %6705 = phi float [ %5630, %5559 ], [ %5630, %6467 ], [ %6690, %6647 ]
  %6706 = phi float [ %5632, %5559 ], [ %5632, %6467 ], [ %6692, %6647 ]
  %6707 = phi float [ %5634, %5559 ], [ %5634, %6467 ], [ %6694, %6647 ]
  %6708 = fmul fast float %4302, %5588
  %6709 = fsub fast float -0.000000e+00, %6708
  %6710 = fmul fast float %4302, %5589
  %6711 = fsub fast float -0.000000e+00, %6710
  %6712 = fmul fast float %4302, %5590
  %6713 = fsub fast float -0.000000e+00, %6712
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 0
  %6716 = fmul fast float %6715, %5594
  %6717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.f32 %6717, 3
  %6719 = fsub fast float 1.000000e+00, %4280
  %6720 = call float @dx.op.unary.f32(i32 7, float %6719)  ; Saturate(value)
  %6721 = fadd fast float %6707, %4279
  %6722 = fmul fast float %6721, %4280
  %6723 = fmul fast float %6720, %6718
  %6724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %6725 = extractvalue %dx.types.ResRet.i32 %6724, 3
  %6726 = bitcast i32 %6725 to float
  %6727 = fsub fast float %6709, %6726
  %6728 = fsub fast float %6711, %6726
  %6729 = fsub fast float %6713, %6726
  %6730 = fmul fast float %6727, %223
  %6731 = fmul fast float %6728, %223
  %6732 = fmul fast float %6729, %223
  %6733 = fadd fast float %6730, %6726
  %6734 = fadd fast float %6731, %6726
  %6735 = fadd fast float %6732, %6726
  %6736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6737 = extractvalue %dx.types.CBufRet.f32 %6736, 3
  %6738 = fmul fast float %6705, %5252
  %6739 = fmul fast float %6706, %5253
  %6740 = fmul fast float %6707, %5254
  %6741 = fcmp fast ogt float %90, %243
  %6742 = and i1 %6741, %4407
  %6743 = or i1 %4486, %6742
  %6744 = icmp eq i32 %4406, 2
  %6745 = fcmp fast ole float %90, %243
  %6746 = and i1 %6745, %6744
  %6747 = or i1 %6746, %6743
  br i1 %6742, label %6748, label %7005

; <label>:6748                                    ; preds = %6701
  %6749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6750 = extractvalue %dx.types.CBufRet.f32 %6749, 2
  %6751 = extractvalue %dx.types.CBufRet.f32 %6749, 3
  %6752 = fmul fast float %6750, %99
  %6753 = fmul fast float %6751, %100
  %6754 = call float @dx.op.unary.f32(i32 7, float %6752)  ; Saturate(value)
  %6755 = call float @dx.op.unary.f32(i32 7, float %6753)  ; Saturate(value)
  %6756 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %6754, float %6755, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6757 = extractvalue %dx.types.ResRet.f32 %6756, 0
  %6758 = extractvalue %dx.types.ResRet.f32 %6756, 1
  %6759 = extractvalue %dx.types.ResRet.f32 %6756, 2
  %6760 = extractvalue %dx.types.ResRet.f32 %6756, 3
  %6761 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %6754, float %6755, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6762 = extractvalue %dx.types.ResRet.f32 %6761, 0
  %6763 = extractvalue %dx.types.ResRet.f32 %6761, 1
  %6764 = extractvalue %dx.types.ResRet.f32 %6761, 2
  %6765 = extractvalue %dx.types.ResRet.f32 %6761, 3
  %6766 = call float @dx.op.binary.f32(i32 35, float %6758, float %6759)  ; FMax(a,b)
  %6767 = call float @dx.op.binary.f32(i32 35, float %6757, float %6766)  ; FMax(a,b)
  %6768 = call float @dx.op.binary.f32(i32 35, float %6767, float %6760)  ; FMax(a,b)
  %6769 = call float @dx.op.binary.f32(i32 36, float %6763, float %6764)  ; FMin(a,b)
  %6770 = call float @dx.op.binary.f32(i32 36, float %6762, float %6769)  ; FMin(a,b)
  %6771 = call float @dx.op.binary.f32(i32 36, float %6770, float %6765)  ; FMin(a,b)
  %6772 = fmul fast float %6768, 2.550000e+02
  %6773 = fadd fast float %6772, 0x3F70101020000000
  %6774 = fptoui float %6773 to i32
  %6775 = fmul fast float %6771, 2.550000e+02
  %6776 = fadd fast float %6775, 0x3F70101020000000
  %6777 = fptoui float %6776 to i32
  %6778 = icmp ult i32 %6774, %6777
  br i1 %6778, label %6779, label %6947

; <label>:6779                                    ; preds = %6748
  %6780 = fcmp fast ogt float %89, 9.843750e-01
  %6781 = fadd fast float %90, -4.000000e+00
  %6782 = select i1 %6780, float -4.000000e+00, float %6781
  %6783 = call float @dx.op.binary.f32(i32 35, float %6782, float 0.000000e+00)  ; FMax(a,b)
  %6784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6785 = extractvalue %dx.types.CBufRet.f32 %6784, 0
  %6786 = fadd fast float %6785, %6783
  %6787 = extractvalue %dx.types.CBufRet.f32 %6784, 2
  %6788 = fmul fast float %6786, %6787
  %6789 = call float @dx.op.unary.f32(i32 23, float %6788)  ; Log(value)
  %6790 = extractvalue %dx.types.CBufRet.f32 %6784, 3
  %6791 = fmul fast float %6790, %6789
  %6792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6793 = extractvalue %dx.types.CBufRet.f32 %6792, 2
  %6794 = fmul fast float %6791, %6793
  %6795 = call float @dx.op.unary.f32(i32 7, float %6794)  ; Saturate(value)
  %6796 = uitofp i32 %6774 to float
  %6797 = uitofp i32 %6777 to float
  %6798 = fadd fast float %6796, 5.000000e-01
  %6799 = fadd fast float %6797, 5.000000e-01
  %6800 = fmul fast float %6793, %6798
  %6801 = fmul fast float %6793, %6799
  %6802 = fadd fast float %6800, 0x3F0FFB4800000000
  %6803 = fadd fast float %6801, 0xBF0FFB4800000000
  %6804 = call float @dx.op.binary.f32(i32 35, float %6795, float %6802)  ; FMax(a,b)
  %6805 = call float @dx.op.binary.f32(i32 36, float %6804, float %6803)  ; FMin(a,b)
  %6806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6807 = extractvalue %dx.types.CBufRet.f32 %6806, 1
  %6808 = extractvalue %dx.types.CBufRet.f32 %6806, 2
  %6809 = extractvalue %dx.types.CBufRet.f32 %6806, 0
  %6810 = fmul fast float %6807, %6805
  %6811 = fadd fast float %6809, %6810
  %6812 = fadd fast float %6809, %6808
  %6813 = fsub fast float %6807, %6808
  %6814 = fadd fast float %6813, %6809
  %6815 = call float @dx.op.binary.f32(i32 35, float %6811, float %6812)  ; FMax(a,b)
  %6816 = call float @dx.op.binary.f32(i32 36, float %6815, float %6814)  ; FMin(a,b)
  %6817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %6754, float %6755, float %6816, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6818 = extractvalue %dx.types.ResRet.f32 %6817, 0
  %6819 = extractvalue %dx.types.ResRet.f32 %6817, 1
  %6820 = extractvalue %dx.types.ResRet.f32 %6817, 2
  %6821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6822 = extractvalue %dx.types.CBufRet.i32 %6821, 0
  %6823 = extractvalue %dx.types.CBufRet.i32 %6821, 1
  %6824 = uitofp i32 %6822 to float
  %6825 = uitofp i32 %6823 to float
  %6826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.f32 %6826, 0
  %6828 = extractvalue %dx.types.CBufRet.f32 %6826, 1
  %6829 = fmul fast float %6824, %6754
  %6830 = fmul fast float %6825, %6755
  %6831 = fadd fast float %6829, -5.000000e-01
  %6832 = fadd fast float %6830, -5.000000e-01
  %6833 = call float @dx.op.unary.f32(i32 22, float %6831)  ; Frc(value)
  %6834 = call float @dx.op.unary.f32(i32 22, float %6832)  ; Frc(value)
  %6835 = fmul fast float %6833, %6833
  %6836 = fmul fast float %6835, %6833
  %6837 = fsub fast float 3.000000e+00, %6833
  %6838 = fmul fast float %6835, %6837
  %6839 = fmul fast float %6833, 3.000000e+00
  %6840 = fmul fast float %6836, 3.000000e+00
  %6841 = fmul fast float %6835, 6.000000e+00
  %6842 = fsub fast float %6840, %6841
  %6843 = fadd fast float %6842, 4.000000e+00
  %6844 = fmul fast float %6843, 0x3FC5555560000000
  %6845 = fmul fast float %6836, -3.000000e+00
  %6846 = fadd fast float %6835, %6833
  %6847 = fmul fast float %6846, 3.000000e+00
  %6848 = fadd fast float %6845, 1.000000e+00
  %6849 = fadd fast float %6848, %6847
  %6850 = fmul fast float %6836, 0x3FC5555560000000
  %6851 = fmul fast float %6834, %6834
  %6852 = fmul fast float %6851, %6834
  %6853 = fsub fast float 3.000000e+00, %6834
  %6854 = fmul fast float %6851, %6853
  %6855 = fmul fast float %6834, 3.000000e+00
  %6856 = fmul fast float %6852, 3.000000e+00
  %6857 = fmul fast float %6851, 6.000000e+00
  %6858 = fsub fast float %6856, %6857
  %6859 = fadd fast float %6858, 4.000000e+00
  %6860 = fmul fast float %6859, 0x3FC5555560000000
  %6861 = fmul fast float %6852, -3.000000e+00
  %6862 = fadd fast float %6851, %6834
  %6863 = fmul fast float %6862, 3.000000e+00
  %6864 = fadd fast float %6861, 1.000000e+00
  %6865 = fadd fast float %6864, %6863
  %6866 = fmul fast float %6852, 0x3FC5555560000000
  %6867 = fadd fast float %6833, 1.000000e+00
  %6868 = fsub fast float 1.000000e+00, %6839
  %6869 = fadd fast float %6868, %6838
  %6870 = fadd fast float %6869, %6843
  %6871 = fmul fast float %6870, 0x3FC5555560000000
  %6872 = fdiv fast float %6844, %6871
  %6873 = fsub fast float %6867, %6872
  %6874 = fsub fast float 1.000000e+00, %6833
  %6875 = fadd fast float %6849, %6836
  %6876 = fmul fast float %6875, 0x3FC5555560000000
  %6877 = fdiv fast float %6850, %6876
  %6878 = fadd fast float %6874, %6877
  %6879 = fadd fast float %6834, 1.000000e+00
  %6880 = fsub fast float 1.000000e+00, %6855
  %6881 = fadd fast float %6880, %6854
  %6882 = fadd fast float %6881, %6859
  %6883 = fmul fast float %6882, 0x3FC5555560000000
  %6884 = fdiv fast float %6860, %6883
  %6885 = fsub fast float %6879, %6884
  %6886 = fsub fast float 1.000000e+00, %6834
  %6887 = fadd fast float %6865, %6852
  %6888 = fmul fast float %6887, 0x3FC5555560000000
  %6889 = fdiv fast float %6866, %6888
  %6890 = fadd fast float %6889, %6886
  %6891 = fmul fast float %6873, %6827
  %6892 = fsub fast float %6754, %6891
  %6893 = fmul fast float %6878, %6827
  %6894 = fadd fast float %6893, %6754
  %6895 = fmul fast float %6890, %6828
  %6896 = fadd fast float %6895, %6755
  %6897 = fmul fast float %6885, %6828
  %6898 = fsub fast float %6755, %6897
  %6899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %6892, float %6898, float %6816, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6900 = extractvalue %dx.types.ResRet.f32 %6899, 0
  %6901 = extractvalue %dx.types.ResRet.f32 %6899, 1
  %6902 = extractvalue %dx.types.ResRet.f32 %6899, 2
  %6903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %6894, float %6898, float %6816, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6904 = extractvalue %dx.types.ResRet.f32 %6903, 0
  %6905 = extractvalue %dx.types.ResRet.f32 %6903, 1
  %6906 = extractvalue %dx.types.ResRet.f32 %6903, 2
  %6907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %6892, float %6896, float %6816, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6908 = extractvalue %dx.types.ResRet.f32 %6907, 0
  %6909 = extractvalue %dx.types.ResRet.f32 %6907, 1
  %6910 = extractvalue %dx.types.ResRet.f32 %6907, 2
  %6911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %6894, float %6896, float %6816, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6912 = extractvalue %dx.types.ResRet.f32 %6911, 0
  %6913 = extractvalue %dx.types.ResRet.f32 %6911, 1
  %6914 = extractvalue %dx.types.ResRet.f32 %6911, 2
  %6915 = fsub fast float %6908, %6900
  %6916 = fsub fast float %6909, %6901
  %6917 = fsub fast float %6910, %6902
  %6918 = fmul fast float %6915, %6888
  %6919 = fmul fast float %6916, %6888
  %6920 = fmul fast float %6917, %6888
  %6921 = fadd fast float %6918, %6900
  %6922 = fadd fast float %6919, %6901
  %6923 = fadd fast float %6920, %6902
  %6924 = fsub fast float %6912, %6904
  %6925 = fsub fast float %6913, %6905
  %6926 = fsub fast float %6914, %6906
  %6927 = fmul fast float %6924, %6888
  %6928 = fmul fast float %6925, %6888
  %6929 = fmul fast float %6926, %6888
  %6930 = fsub fast float %6904, %6921
  %6931 = fadd fast float %6930, %6927
  %6932 = fsub fast float %6905, %6922
  %6933 = fadd fast float %6932, %6928
  %6934 = fsub fast float %6906, %6923
  %6935 = fadd fast float %6934, %6929
  %6936 = fmul fast float %6931, %6876
  %6937 = fmul fast float %6933, %6876
  %6938 = fmul fast float %6935, %6876
  %6939 = fadd fast float %6936, %6921
  %6940 = fadd fast float %6937, %6922
  %6941 = fadd fast float %6938, %6923
  %6942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6943 = extractvalue %dx.types.CBufRet.f32 %6942, 1
  %6944 = fmul fast float %6939, %6943
  %6945 = fmul fast float %6940, %6943
  %6946 = fmul fast float %6941, %6943
  br label %6947

; <label>:6947                                    ; preds = %6779, %6748
  %6948 = phi float [ %6818, %6779 ], [ 1.000000e+00, %6748 ]
  %6949 = phi float [ %6819, %6779 ], [ 1.000000e+00, %6748 ]
  %6950 = phi float [ %6820, %6779 ], [ 1.000000e+00, %6748 ]
  %6951 = phi float [ %6944, %6779 ], [ 0.000000e+00, %6748 ]
  %6952 = phi float [ %6945, %6779 ], [ 0.000000e+00, %6748 ]
  %6953 = phi float [ %6946, %6779 ], [ 0.000000e+00, %6748 ]
  %6954 = fmul fast float %6951, %6733
  %6955 = fmul fast float %6952, %6734
  %6956 = fmul fast float %6953, %6735
  %6957 = call float @dx.op.dot3.f32(i32 55, float %6948, float %6949, float %6950, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6958 = call float @dx.op.dot3.f32(i32 55, float %6954, float %6955, float %6956, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6959 = select i1 %282, float %6957, float %6948
  %6960 = select i1 %282, float %6957, float %6949
  %6961 = select i1 %282, float 1.000000e+00, float %6950
  %6962 = select i1 %282, float %6958, float %6954
  %6963 = select i1 %282, float 0.000000e+00, float %6955
  %6964 = select i1 %282, float 0.000000e+00, float %6956
  %6965 = fmul fast float %6959, %6738
  %6966 = fmul fast float %6960, %6739
  %6967 = fmul fast float %6961, %6740
  %6968 = fadd fast float %6965, %6962
  %6969 = fadd fast float %6966, %6963
  %6970 = fadd fast float %6964, %6967
  %6971 = fmul fast float %6959, %6702
  %6972 = fmul fast float %6960, %6703
  %6973 = fmul fast float %6961, %6704
  %6974 = fmul fast float %127, %6750
  %6975 = fmul fast float %129, %6751
  %6976 = fsub fast float 1.000000e+00, %6974
  %6977 = fsub fast float 1.000000e+00, %6975
  %6978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6979 = extractvalue %dx.types.CBufRet.f32 %6978, 0
  %6980 = extractvalue %dx.types.CBufRet.f32 %6978, 1
  %6981 = extractvalue %dx.types.CBufRet.f32 %6978, 2
  %6982 = fmul fast float %6976, %6979
  %6983 = fmul fast float %6976, %6980
  %6984 = fmul fast float %6976, %6981
  %6985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6986 = extractvalue %dx.types.CBufRet.f32 %6985, 0
  %6987 = extractvalue %dx.types.CBufRet.f32 %6985, 1
  %6988 = extractvalue %dx.types.CBufRet.f32 %6985, 2
  %6989 = fmul fast float %6977, %6986
  %6990 = fmul fast float %6977, %6987
  %6991 = fmul fast float %6977, %6988
  %6992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6993 = extractvalue %dx.types.CBufRet.f32 %6992, 0
  %6994 = extractvalue %dx.types.CBufRet.f32 %6992, 1
  %6995 = extractvalue %dx.types.CBufRet.f32 %6992, 2
  %6996 = fadd fast float %6989, %6993
  %6997 = fadd fast float %6996, %6982
  %6998 = fadd fast float %6990, %6994
  %6999 = fadd fast float %6998, %6983
  %7000 = fadd fast float %6991, %6995
  %7001 = fadd fast float %7000, %6984
  %7002 = fmul fast float %6997, %243
  %7003 = fmul fast float %6999, %243
  %7004 = fmul fast float %7001, %243
  br label %7005

; <label>:7005                                    ; preds = %6947, %6701
  %7006 = phi float [ %7002, %6947 ], [ %178, %6701 ]
  %7007 = phi float [ %7003, %6947 ], [ %179, %6701 ]
  %7008 = phi float [ %7004, %6947 ], [ %180, %6701 ]
  %7009 = phi float [ %243, %6947 ], [ %90, %6701 ]
  %7010 = phi float [ %6968, %6947 ], [ %6738, %6701 ]
  %7011 = phi float [ %6969, %6947 ], [ %6739, %6701 ]
  %7012 = phi float [ %6970, %6947 ], [ %6740, %6701 ]
  %7013 = phi float [ %6971, %6947 ], [ %6702, %6701 ]
  %7014 = phi float [ %6972, %6947 ], [ %6703, %6701 ]
  %7015 = phi float [ %6973, %6947 ], [ %6704, %6701 ]
  %7016 = phi float [ %6948, %6947 ], [ 1.000000e+00, %6701 ]
  br i1 %6747, label %8171, label %7017

; <label>:7017                                    ; preds = %7005
  %7018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7019 = extractvalue %dx.types.CBufRet.f32 %7018, 0
  %7020 = extractvalue %dx.types.CBufRet.f32 %7018, 1
  %7021 = extractvalue %dx.types.CBufRet.f32 %7018, 2
  %7022 = extractvalue %dx.types.CBufRet.f32 %7018, 3
  %7023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7024 = extractvalue %dx.types.CBufRet.f32 %7023, 0
  %7025 = extractvalue %dx.types.CBufRet.f32 %7023, 1
  %7026 = extractvalue %dx.types.CBufRet.f32 %7023, 2
  %7027 = extractvalue %dx.types.CBufRet.f32 %7023, 3
  %7028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7029 = extractvalue %dx.types.CBufRet.f32 %7028, 0
  %7030 = extractvalue %dx.types.CBufRet.f32 %7028, 1
  %7031 = extractvalue %dx.types.CBufRet.f32 %7028, 2
  %7032 = extractvalue %dx.types.CBufRet.f32 %7028, 3
  %7033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7034 = extractvalue %dx.types.CBufRet.f32 %7033, 0
  %7035 = extractvalue %dx.types.CBufRet.f32 %7033, 1
  %7036 = extractvalue %dx.types.CBufRet.f32 %7033, 2
  %7037 = extractvalue %dx.types.CBufRet.f32 %7033, 3
  %7038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7039 = extractvalue %dx.types.CBufRet.f32 %7038, 3
  %7040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7041 = extractvalue %dx.types.CBufRet.f32 %7040, 3
  %7042 = extractvalue %dx.types.CBufRet.f32 %7040, 0
  %7043 = extractvalue %dx.types.CBufRet.f32 %7040, 1
  %7044 = extractvalue %dx.types.CBufRet.f32 %7040, 2
  %7045 = fcmp fast olt float %7044, -5.000000e-01
  %7046 = call float @dx.op.dot3.f32(i32 55, float %7006, float %7007, float %7008, float %7006, float %7007, float %7008)  ; Dot3(ax,ay,az,bx,by,bz)
  %7047 = call float @dx.op.unary.f32(i32 25, float %7046)  ; Rsqrt(value)
  %7048 = fmul fast float %7047, %7046
  %7049 = fmul fast float %7047, %7006
  %7050 = fmul fast float %7047, %7007
  %7051 = fmul fast float %7047, %7008
  %7052 = fadd fast float %7048, %7022
  %7053 = call float @dx.op.dot3.f32(i32 55, float %7049, float %7050, float %7051, float %7019, float %7020, float %7021)  ; Dot3(ax,ay,az,bx,by,bz)
  %7054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7055 = extractvalue %dx.types.CBufRet.i32 %7054, 1
  %7056 = and i32 %7055, 1
  %7057 = icmp ne i32 %7056, 0
  %7058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7059 = extractvalue %dx.types.CBufRet.f32 %7058, 2
  %7060 = fcmp fast ogt float %7059, 0.000000e+00
  %7061 = and i1 %7057, %7060
  br i1 %7061, label %7062, label %7468, !dx.controlflow.hints !112

; <label>:7062                                    ; preds = %7017
  %7063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7064 = extractvalue %dx.types.CBufRet.f32 %7063, 3
  %7065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7066 = extractvalue %dx.types.CBufRet.f32 %7065, 2
  %7067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7068 = extractvalue %dx.types.CBufRet.f32 %7067, 2
  %7069 = fsub fast float %7066, %7068
  %7070 = and i32 %7055, 2
  %7071 = extractvalue %dx.types.CBufRet.i32 %7054, 0
  %7072 = call i32 @dx.op.binary.i32(i32 40, i32 %7071, i32 3)  ; UMin(a,b)
  %7073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7074 = extractvalue %dx.types.CBufRet.f32 %7073, 0
  %7075 = extractvalue %dx.types.CBufRet.f32 %7073, 1
  %7076 = extractvalue %dx.types.CBufRet.f32 %7067, 0
  %7077 = extractvalue %dx.types.CBufRet.f32 %7067, 1
  %7078 = fsub fast float %7074, %7076
  %7079 = fsub fast float %7075, %7077
  %7080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7081 = extractvalue %dx.types.CBufRet.f32 %7080, 0
  %7082 = fcmp fast ogt float %7081, 0.000000e+00
  %7083 = fsub fast float -0.000000e+00, %7078
  %7084 = fsub fast float -0.000000e+00, %7079
  %7085 = call float @dx.op.dot2.f32(i32 54, float %7049, float %7050, float %7049, float %7050)  ; Dot2(ax,ay,bx,by)
  %7086 = call float @dx.op.dot2.f32(i32 54, float %7049, float %7050, float %7083, float %7084)  ; Dot2(ax,ay,bx,by)
  %7087 = fmul fast float %7086, 2.000000e+00
  %7088 = call float @dx.op.dot2.f32(i32 54, float %7083, float %7084, float %7083, float %7084)  ; Dot2(ax,ay,bx,by)
  %7089 = fmul fast float %7081, %7081
  %7090 = fsub fast float %7088, %7089
  %7091 = fmul fast float %7087, %7087
  %7092 = fmul fast float %7085, 4.000000e+00
  %7093 = fmul fast float %7092, %7090
  %7094 = fsub fast float %7091, %7093
  %7095 = fcmp fast ogt float %7094, 0.000000e+00
  br i1 %7095, label %7096, label %7111

; <label>:7096                                    ; preds = %7062
  %7097 = fcmp fast ogt float %7087, 0.000000e+00
  %7098 = call float @dx.op.unary.f32(i32 24, float %7094)  ; Sqrt(value)
  %7099 = fsub fast float -0.000000e+00, %7098
  %7100 = select i1 %7097, float %7098, float %7099
  %7101 = fadd fast float %7100, %7087
  %7102 = fmul float %7101, -5.000000e-01
  %7103 = fdiv fast float %7102, %7085
  %7104 = call float @dx.op.binary.f32(i32 35, float %7103, float 0.000000e+00)  ; FMax(a,b)
  %7105 = call float @dx.op.binary.f32(i32 36, float %7048, float %7104)  ; FMin(a,b)
  %7106 = fdiv fast float %7090, %7102
  %7107 = call float @dx.op.binary.f32(i32 35, float %7106, float 0.000000e+00)  ; FMax(a,b)
  %7108 = call float @dx.op.binary.f32(i32 36, float %7048, float %7107)  ; FMin(a,b)
  %7109 = call float @dx.op.binary.f32(i32 36, float %7105, float %7108)  ; FMin(a,b)
  %7110 = call float @dx.op.binary.f32(i32 35, float %7105, float %7108)  ; FMax(a,b)
  br label %7111

; <label>:7111                                    ; preds = %7096, %7062
  %7112 = phi float [ %7110, %7096 ], [ -1.000000e+00, %7062 ]
  %7113 = phi float [ %7109, %7096 ], [ -1.000000e+00, %7062 ]
  %7114 = phi i1 [ true, %7096 ], [ false, %7062 ]
  %7115 = and i1 %7082, %7114
  br i1 %7115, label %7116, label %7118

; <label>:7116                                    ; preds = %7111
  %7117 = fcmp fast oeq float %7113, %7112
  br i1 %7117, label %7421, label %7119

; <label>:7118                                    ; preds = %7111
  br i1 %7082, label %7421, label %7119

; <label>:7119                                    ; preds = %7118, %7116
  %7120 = phi float [ %7048, %7118 ], [ %7112, %7116 ]
  %7121 = phi float [ 0.000000e+00, %7118 ], [ %7113, %7116 ]
  %7122 = icmp ne i32 %7070, 0
  %7123 = fmul fast float %7120, %7051
  %7124 = fadd fast float %7123, %7064
  %7125 = fmul fast float %7124, %7120
  %7126 = select i1 %7122, float 0.000000e+00, float %7125
  %7127 = fcmp fast oeq float %7051, 0.000000e+00
  %7128 = fdiv fast float %7069, %7051
  %7129 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7128)  ; FMax(a,b)
  %7130 = select i1 %7127, float %7120, float %7129
  %7131 = call float @dx.op.binary.f32(i32 36, float %7120, float %7130)  ; FMin(a,b)
  %7132 = fcmp fast ogt float %7051, 0.000000e+00
  %7133 = fcmp fast olt float %7069, 0.000000e+00
  br i1 %7132, label %7134, label %7191

; <label>:7134                                    ; preds = %7119
  %7135 = icmp eq i32 %7070, 0
  br i1 %7133, label %7136, label %7180

; <label>:7136                                    ; preds = %7134
  %7137 = select i1 %7135, float %7120, float 0.000000e+00
  %7138 = fsub fast float -0.000000e+00, %7137
  %7139 = call float @dx.op.unary.f32(i32 6, float %7138)  ; FAbs(value)
  %7140 = fmul fast float %7137, %7051
  %7141 = fadd fast float %7140, %7064
  %7142 = fmul fast float %7139, %7141
  %7143 = fsub fast float %7126, %7142
  %7144 = fsub fast float %7120, %7139
  %7145 = select i1 %7135, float %7144, float 0.000000e+00
  %7146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7147 = extractvalue %dx.types.CBufRet.f32 %7146, 0
  %7148 = extractvalue %dx.types.CBufRet.f32 %7146, 1
  %7149 = extractvalue %dx.types.CBufRet.f32 %7146, 2
  %7150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7151 = extractvalue %dx.types.CBufRet.f32 %7150, 0
  %7152 = extractvalue %dx.types.CBufRet.f32 %7150, 1
  %7153 = extractvalue %dx.types.CBufRet.f32 %7150, 2
  %7154 = extractvalue %dx.types.CBufRet.f32 %7150, 3
  %7155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7156 = extractvalue %dx.types.CBufRet.f32 %7155, 3
  %7157 = call float @dx.op.binary.f32(i32 36, float %7143, float %7156)  ; FMin(a,b)
  %7158 = fmul fast float %7154, %7145
  %7159 = call float @dx.op.unary.f32(i32 7, float %7158)  ; Saturate(value)
  %7160 = fsub fast float %7151, %7147
  %7161 = fsub fast float %7152, %7148
  %7162 = fsub fast float %7153, %7149
  %7163 = fmul fast float %7159, %7160
  %7164 = fmul fast float %7159, %7161
  %7165 = fmul fast float %7159, %7162
  %7166 = fadd fast float %7163, %7147
  %7167 = fadd fast float %7164, %7148
  %7168 = fadd fast float %7165, %7149
  %7169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7170 = extractvalue %dx.types.CBufRet.f32 %7169, 0
  %7171 = extractvalue %dx.types.CBufRet.f32 %7169, 1
  %7172 = fadd fast float %7171, %7170
  %7173 = call float @dx.op.unary.f32(i32 7, float %7172)  ; Saturate(value)
  %7174 = extractvalue %dx.types.CBufRet.f32 %7169, 2
  %7175 = extractvalue %dx.types.CBufRet.f32 %7169, 3
  %7176 = fadd fast float %7175, %7174
  %7177 = call float @dx.op.unary.f32(i32 7, float %7176)  ; Saturate(value)
  %7178 = fmul fast float %7173, %7157
  %7179 = fmul fast float %7178, %7177
  br label %7421

; <label>:7180                                    ; preds = %7134
  br i1 %7135, label %7181, label %7202

; <label>:7181                                    ; preds = %7180
  %7182 = call float @dx.op.binary.f32(i32 36, float %7131, float %7121)  ; FMin(a,b)
  %7183 = fsub fast float %7131, %7182
  %7184 = fsub fast float %7183, %7120
  %7185 = call float @dx.op.unary.f32(i32 6, float %7184)  ; FAbs(value)
  %7186 = fadd fast float %7183, %7120
  %7187 = fmul fast float %7186, %7051
  %7188 = fadd fast float %7187, %7064
  %7189 = fmul fast float %7188, %7185
  %7190 = fsub fast float %7126, %7189
  br label %7202

; <label>:7191                                    ; preds = %7119
  br i1 %7133, label %7192, label %7202

; <label>:7192                                    ; preds = %7191
  %7193 = call float @dx.op.binary.f32(i32 35, float %7121, float %7131)  ; FMax(a,b)
  %7194 = icmp eq i32 %7070, 0
  %7195 = select i1 %7194, float %7131, float 0.000000e+00
  %7196 = fsub fast float -0.000000e+00, %7195
  %7197 = call float @dx.op.unary.f32(i32 6, float %7196)  ; FAbs(value)
  %7198 = fmul fast float %7195, %7051
  %7199 = fadd fast float %7198, %7064
  %7200 = fmul fast float %7197, %7199
  %7201 = fsub fast float %7126, %7200
  br label %7202

; <label>:7202                                    ; preds = %7192, %7191, %7181, %7180
  %7203 = phi float [ %7121, %7180 ], [ %7121, %7181 ], [ %7193, %7192 ], [ %7121, %7191 ]
  %7204 = phi float [ 0.000000e+00, %7180 ], [ %7185, %7181 ], [ %7197, %7192 ], [ 0.000000e+00, %7191 ]
  %7205 = phi float [ %7126, %7180 ], [ %7190, %7181 ], [ %7201, %7192 ], [ %7126, %7191 ]
  %7206 = phi float [ %7131, %7180 ], [ %7131, %7181 ], [ %7120, %7192 ], [ %7120, %7191 ]
  %7207 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %7207, align 4, !tbaa !113, !noalias !115
  %7208 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %7208, align 4, !tbaa !113, !noalias !115
  %7209 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %7209, align 4, !tbaa !113, !noalias !115
  %7210 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %7210, align 4, !tbaa !113, !noalias !115
  %7211 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %7211, align 4, !tbaa !113, !noalias !115
  %7212 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %7212, align 4, !tbaa !113, !noalias !115
  %7213 = icmp sgt i32 %7072, 0
  br i1 %7213, label %7214, label %7275

; <label>:7214                                    ; preds = %7202
  br label %7215

; <label>:7215                                    ; preds = %7264, %7214
  %7216 = phi i32 [ %7265, %7264 ], [ 0, %7214 ]
  %7217 = phi i32 [ %7266, %7264 ], [ 0, %7214 ]
  %7218 = add nuw i32 %7217, 171
  %7219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %7218)  ; CBufferLoadLegacy(handle,regIndex)
  %7220 = extractvalue %dx.types.CBufRet.f32 %7219, 0
  %7221 = extractvalue %dx.types.CBufRet.f32 %7219, 1
  %7222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7223 = extractvalue %dx.types.CBufRet.f32 %7222, 0
  %7224 = extractvalue %dx.types.CBufRet.f32 %7222, 1
  %7225 = fsub fast float %7220, %7223
  %7226 = fsub fast float %7221, %7224
  %7227 = extractvalue %dx.types.CBufRet.f32 %7219, 2
  %7228 = fsub fast float -0.000000e+00, %7225
  %7229 = fsub fast float -0.000000e+00, %7226
  %7230 = call float @dx.op.dot2.f32(i32 54, float %7049, float %7050, float %7228, float %7229)  ; Dot2(ax,ay,bx,by)
  %7231 = fmul fast float %7230, 2.000000e+00
  %7232 = call float @dx.op.dot2.f32(i32 54, float %7228, float %7229, float %7228, float %7229)  ; Dot2(ax,ay,bx,by)
  %7233 = fmul fast float %7227, %7227
  %7234 = fsub fast float %7232, %7233
  %7235 = fmul fast float %7231, %7231
  %7236 = fmul fast float %7092, %7234
  %7237 = fsub fast float %7235, %7236
  %7238 = fcmp fast ogt float %7237, 0.000000e+00
  br i1 %7238, label %7239, label %7254

; <label>:7239                                    ; preds = %7215
  %7240 = fcmp fast ogt float %7231, 0.000000e+00
  %7241 = call float @dx.op.unary.f32(i32 24, float %7237)  ; Sqrt(value)
  %7242 = fsub fast float -0.000000e+00, %7241
  %7243 = select i1 %7240, float %7241, float %7242
  %7244 = fadd fast float %7243, %7231
  %7245 = fmul float %7244, -5.000000e-01
  %7246 = fdiv fast float %7245, %7085
  %7247 = call float @dx.op.binary.f32(i32 35, float %7246, float 0.000000e+00)  ; FMax(a,b)
  %7248 = call float @dx.op.binary.f32(i32 36, float %7120, float %7247)  ; FMin(a,b)
  %7249 = fdiv fast float %7234, %7245
  %7250 = call float @dx.op.binary.f32(i32 35, float %7249, float 0.000000e+00)  ; FMax(a,b)
  %7251 = call float @dx.op.binary.f32(i32 36, float %7120, float %7250)  ; FMin(a,b)
  %7252 = call float @dx.op.binary.f32(i32 36, float %7248, float %7251)  ; FMin(a,b)
  %7253 = call float @dx.op.binary.f32(i32 35, float %7248, float %7251)  ; FMax(a,b)
  br label %7254

; <label>:7254                                    ; preds = %7239, %7215
  %7255 = phi float [ %7253, %7239 ], [ -1.000000e+00, %7215 ]
  %7256 = phi float [ %7252, %7239 ], [ -1.000000e+00, %7215 ]
  %7257 = phi i1 [ true, %7239 ], [ false, %7215 ]
  br i1 %7257, label %7258, label %7264

; <label>:7258                                    ; preds = %7254
  %7259 = call float @dx.op.binary.f32(i32 35, float %7203, float %7256)  ; FMax(a,b)
  %7260 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7217
  store float %7259, float* %7260, align 4, !tbaa !113, !noalias !115
  %7261 = call float @dx.op.binary.f32(i32 35, float %7203, float %7255)  ; FMax(a,b)
  %7262 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7217
  store float %7261, float* %7262, align 4, !tbaa !113, !noalias !115
  %7263 = add nsw i32 %7216, 1
  br label %7264

; <label>:7264                                    ; preds = %7258, %7254
  %7265 = phi i32 [ %7263, %7258 ], [ %7216, %7254 ]
  %7266 = add nuw nsw i32 %7217, 1
  %7267 = icmp eq i32 %7266, %7072
  br i1 %7267, label %7268, label %7215

; <label>:7268                                    ; preds = %7264
  %7269 = load float, float* %7209, align 4, !tbaa !113, !alias.scope !131, !noalias !134
  %7270 = load float, float* %7208, align 4, !tbaa !113, !alias.scope !137, !noalias !138
  %7271 = load float, float* %7207, align 4, !tbaa !113, !alias.scope !139, !noalias !140
  %7272 = load float, float* %7212, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %7273 = load float, float* %7211, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  %7274 = load float, float* %7210, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  br label %7275

; <label>:7275                                    ; preds = %7268, %7202
  %7276 = phi float [ -1.000000e+00, %7202 ], [ %7274, %7268 ]
  %7277 = phi float [ -1.000000e+00, %7202 ], [ %7273, %7268 ]
  %7278 = phi float [ -1.000000e+00, %7202 ], [ %7272, %7268 ]
  %7279 = phi float [ -1.000000e+00, %7202 ], [ %7271, %7268 ]
  %7280 = phi float [ -1.000000e+00, %7202 ], [ %7270, %7268 ]
  %7281 = phi float [ -1.000000e+00, %7202 ], [ %7269, %7268 ]
  %7282 = phi i32 [ 0, %7202 ], [ %7265, %7268 ]
  %7283 = call float @dx.op.binary.f32(i32 36, float %7280, float %7281)  ; FMin(a,b)
  %7284 = call float @dx.op.binary.f32(i32 36, float %7279, float %7283)  ; FMin(a,b)
  %7285 = call float @dx.op.binary.f32(i32 35, float %7279, float %7280)  ; FMax(a,b)
  %7286 = call float @dx.op.binary.f32(i32 36, float %7285, float %7281)  ; FMin(a,b)
  %7287 = call float @dx.op.binary.f32(i32 36, float %7279, float %7280)  ; FMin(a,b)
  %7288 = call float @dx.op.binary.f32(i32 35, float %7287, float %7286)  ; FMax(a,b)
  %7289 = call float @dx.op.binary.f32(i32 35, float %7280, float %7281)  ; FMax(a,b)
  %7290 = call float @dx.op.binary.f32(i32 35, float %7279, float %7289)  ; FMax(a,b)
  store float %7284, float* %7207, align 4, !tbaa !113, !alias.scope !139, !noalias !140
  store float %7288, float* %7208, align 4, !tbaa !113, !alias.scope !137, !noalias !138
  store float %7290, float* %7209, align 4, !tbaa !113, !alias.scope !131, !noalias !134
  %7291 = call float @dx.op.binary.f32(i32 36, float %7277, float %7278)  ; FMin(a,b)
  %7292 = call float @dx.op.binary.f32(i32 36, float %7276, float %7291)  ; FMin(a,b)
  %7293 = call float @dx.op.binary.f32(i32 35, float %7276, float %7277)  ; FMax(a,b)
  %7294 = call float @dx.op.binary.f32(i32 36, float %7293, float %7278)  ; FMin(a,b)
  %7295 = call float @dx.op.binary.f32(i32 36, float %7276, float %7277)  ; FMin(a,b)
  %7296 = call float @dx.op.binary.f32(i32 35, float %7295, float %7294)  ; FMax(a,b)
  %7297 = call float @dx.op.binary.f32(i32 35, float %7277, float %7278)  ; FMax(a,b)
  %7298 = call float @dx.op.binary.f32(i32 35, float %7276, float %7297)  ; FMax(a,b)
  store float %7292, float* %7210, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  store float %7296, float* %7211, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  store float %7298, float* %7212, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %7299 = sub nsw i32 3, %7282
  %7300 = icmp sgt i32 %7299, 2
  br i1 %7300, label %7301, label %7339

; <label>:7301                                    ; preds = %7275
  %7302 = icmp eq i32 %7070, 0
  %7303 = fsub fast float %7120, %7204
  %7304 = select i1 %7302, float %7303, float %7204
  %7305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7306 = extractvalue %dx.types.CBufRet.f32 %7305, 0
  %7307 = extractvalue %dx.types.CBufRet.f32 %7305, 1
  %7308 = extractvalue %dx.types.CBufRet.f32 %7305, 2
  %7309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7310 = extractvalue %dx.types.CBufRet.f32 %7309, 0
  %7311 = extractvalue %dx.types.CBufRet.f32 %7309, 1
  %7312 = extractvalue %dx.types.CBufRet.f32 %7309, 2
  %7313 = extractvalue %dx.types.CBufRet.f32 %7309, 3
  %7314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7315 = extractvalue %dx.types.CBufRet.f32 %7314, 3
  %7316 = call float @dx.op.binary.f32(i32 36, float %7205, float %7315)  ; FMin(a,b)
  %7317 = fmul fast float %7313, %7304
  %7318 = call float @dx.op.unary.f32(i32 7, float %7317)  ; Saturate(value)
  %7319 = fsub fast float %7310, %7306
  %7320 = fsub fast float %7311, %7307
  %7321 = fsub fast float %7312, %7308
  %7322 = fmul fast float %7318, %7319
  %7323 = fmul fast float %7318, %7320
  %7324 = fmul fast float %7318, %7321
  %7325 = fadd fast float %7322, %7306
  %7326 = fadd fast float %7323, %7307
  %7327 = fadd fast float %7324, %7308
  %7328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7329 = extractvalue %dx.types.CBufRet.f32 %7328, 0
  %7330 = extractvalue %dx.types.CBufRet.f32 %7328, 1
  %7331 = fadd fast float %7330, %7329
  %7332 = call float @dx.op.unary.f32(i32 7, float %7331)  ; Saturate(value)
  %7333 = extractvalue %dx.types.CBufRet.f32 %7328, 2
  %7334 = extractvalue %dx.types.CBufRet.f32 %7328, 3
  %7335 = fadd fast float %7334, %7333
  %7336 = call float @dx.op.unary.f32(i32 7, float %7335)  ; Saturate(value)
  %7337 = fmul fast float %7332, %7316
  %7338 = fmul fast float %7337, %7336
  br label %7421

; <label>:7339                                    ; preds = %7275
  %7340 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7299
  %7341 = load float, float* %7340, align 4, !tbaa !113, !noalias !115
  %7342 = fcmp fast olt float %7341, %7206
  %7343 = icmp sgt i32 %7282, 0
  %7344 = and i1 %7343, %7342
  br i1 %7344, label %7345, label %7382

; <label>:7345                                    ; preds = %7339
  br label %7346

; <label>:7346                                    ; preds = %7375, %7345
  %7347 = phi float [ %7376, %7375 ], [ %7204, %7345 ]
  %7348 = phi float [ %7377, %7375 ], [ %7205, %7345 ]
  %7349 = phi float [ %7357, %7375 ], [ %7341, %7345 ]
  %7350 = phi i32 [ %7354, %7375 ], [ %7299, %7345 ]
  %7351 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7350
  %7352 = load float, float* %7351, align 4, !tbaa !113, !noalias !115
  %7353 = icmp slt i32 %7350, 2
  %7354 = add nsw i32 %7350, 1
  %7355 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7354
  %7356 = load float, float* %7355, align 4, !tbaa !113, !noalias !115
  %7357 = select i1 %7353, float %7356, float %7120
  %7358 = call float @dx.op.binary.f32(i32 36, float %7357, float %7352)  ; FMin(a,b)
  %7359 = call float @dx.op.binary.f32(i32 36, float %7206, float %7358)  ; FMin(a,b)
  %7360 = icmp eq i32 %7070, 0
  %7361 = fadd fast float %7359, %7349
  %7362 = fmul fast float %7361, %7051
  %7363 = fadd fast float %7362, %7064
  br i1 %7360, label %7369, label %7364

; <label>:7364                                    ; preds = %7346
  %7365 = fsub fast float %7359, %7349
  %7366 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7365)  ; FMax(a,b)
  %7367 = fmul fast float %7366, %7363
  %7368 = fadd fast float %7367, %7348
  br label %7375

; <label>:7369                                    ; preds = %7346
  %7370 = fsub fast float %7349, %7359
  %7371 = call float @dx.op.unary.f32(i32 6, float %7370)  ; FAbs(value)
  %7372 = fadd fast float %7371, %7347
  %7373 = fmul fast float %7371, %7363
  %7374 = fsub fast float %7348, %7373
  br label %7375

; <label>:7375                                    ; preds = %7369, %7364
  %7376 = phi float [ %7366, %7364 ], [ %7372, %7369 ]
  %7377 = phi float [ %7368, %7364 ], [ %7374, %7369 ]
  %7378 = fcmp fast olt float %7357, %7206
  %7379 = icmp slt i32 %7354, 3
  %7380 = and i1 %7379, %7378
  br i1 %7380, label %7346, label %7381

; <label>:7381                                    ; preds = %7375
  br label %7382

; <label>:7382                                    ; preds = %7381, %7339
  %7383 = phi float [ %7204, %7339 ], [ %7376, %7381 ]
  %7384 = phi float [ %7205, %7339 ], [ %7377, %7381 ]
  %7385 = fsub fast float %7120, %7383
  %7386 = select i1 %7122, float %7383, float %7385
  %7387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7388 = extractvalue %dx.types.CBufRet.f32 %7387, 0
  %7389 = extractvalue %dx.types.CBufRet.f32 %7387, 1
  %7390 = extractvalue %dx.types.CBufRet.f32 %7387, 2
  %7391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7392 = extractvalue %dx.types.CBufRet.f32 %7391, 0
  %7393 = extractvalue %dx.types.CBufRet.f32 %7391, 1
  %7394 = extractvalue %dx.types.CBufRet.f32 %7391, 2
  %7395 = extractvalue %dx.types.CBufRet.f32 %7391, 3
  %7396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7397 = extractvalue %dx.types.CBufRet.f32 %7396, 3
  %7398 = call float @dx.op.binary.f32(i32 36, float %7384, float %7397)  ; FMin(a,b)
  %7399 = fmul fast float %7395, %7386
  %7400 = call float @dx.op.unary.f32(i32 7, float %7399)  ; Saturate(value)
  %7401 = fsub fast float %7392, %7388
  %7402 = fsub fast float %7393, %7389
  %7403 = fsub fast float %7394, %7390
  %7404 = fmul fast float %7400, %7401
  %7405 = fmul fast float %7400, %7402
  %7406 = fmul fast float %7400, %7403
  %7407 = fadd fast float %7404, %7388
  %7408 = fadd fast float %7405, %7389
  %7409 = fadd fast float %7406, %7390
  %7410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7411 = extractvalue %dx.types.CBufRet.f32 %7410, 0
  %7412 = extractvalue %dx.types.CBufRet.f32 %7410, 1
  %7413 = fadd fast float %7412, %7411
  %7414 = call float @dx.op.unary.f32(i32 7, float %7413)  ; Saturate(value)
  %7415 = extractvalue %dx.types.CBufRet.f32 %7410, 2
  %7416 = extractvalue %dx.types.CBufRet.f32 %7410, 3
  %7417 = fadd fast float %7416, %7415
  %7418 = call float @dx.op.unary.f32(i32 7, float %7417)  ; Saturate(value)
  %7419 = fmul fast float %7414, %7398
  %7420 = fmul fast float %7419, %7418
  br label %7421

; <label>:7421                                    ; preds = %7382, %7301, %7136, %7118, %7116
  %7422 = phi float [ %7145, %7136 ], [ %7304, %7301 ], [ %7386, %7382 ], [ 0.000000e+00, %7116 ], [ 0.000000e+00, %7118 ]
  %7423 = phi float [ %7179, %7136 ], [ %7338, %7301 ], [ %7420, %7382 ], [ 0.000000e+00, %7116 ], [ 0.000000e+00, %7118 ]
  %7424 = phi float [ %7166, %7136 ], [ %7325, %7301 ], [ %7407, %7382 ], [ 0.000000e+00, %7116 ], [ 0.000000e+00, %7118 ]
  %7425 = phi float [ %7167, %7136 ], [ %7326, %7301 ], [ %7408, %7382 ], [ 0.000000e+00, %7116 ], [ 0.000000e+00, %7118 ]
  %7426 = phi float [ %7168, %7136 ], [ %7327, %7301 ], [ %7409, %7382 ], [ 0.000000e+00, %7116 ], [ 0.000000e+00, %7118 ]
  %7427 = fmul fast float %7059, %7423
  %7428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7429 = extractvalue %dx.types.CBufRet.f32 %7428, 2
  %7430 = fsub fast float %7066, %7429
  %7431 = fcmp fast olt float %7427, -2.000000e+01
  %7432 = call float @dx.op.unary.f32(i32 21, float %7427)  ; Exp(value)
  %7433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7434 = extractvalue %dx.types.CBufRet.f32 %7433, 2
  %7435 = extractvalue %dx.types.CBufRet.f32 %7433, 3
  %7436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7437 = extractvalue %dx.types.CBufRet.f32 %7436, 2
  %7438 = fmul fast float %7435, %7430
  %7439 = call float @dx.op.unary.f32(i32 7, float %7438)  ; Saturate(value)
  %7440 = fsub fast float 1.000000e+00, %7439
  %7441 = fmul fast float %7051, 5.000000e-01
  %7442 = fadd fast float %7441, 5.000000e-01
  %7443 = call float @dx.op.unary.f32(i32 7, float %7442)  ; Saturate(value)
  %7444 = fsub fast float 1.000000e+00, %7443
  %7445 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7440)  ; FMax(a,b)
  %7446 = fdiv fast float %7444, %7445
  %7447 = fsub fast float %7430, %7008
  %7448 = call float @dx.op.unary.f32(i32 6, float %7447)  ; FAbs(value)
  %7449 = fmul fast float %7448, %7434
  %7450 = call float @dx.op.unary.f32(i32 7, float %7446)  ; Saturate(value)
  %7451 = fsub fast float 1.000000e+00, %7449
  %7452 = fmul fast float %7451, %7450
  %7453 = fadd fast float %7452, %7449
  %7454 = fmul fast float %7437, %7430
  %7455 = call float @dx.op.unary.f32(i32 7, float %7454)  ; Saturate(value)
  %7456 = fsub fast float 1.000000e+00, %7453
  %7457 = fmul fast float %7456, %7455
  %7458 = fadd fast float %7457, %7453
  %7459 = call float @dx.op.unary.f32(i32 7, float %7458)  ; Saturate(value)
  %7460 = fadd fast float %7432, -1.000000e+00
  %7461 = select i1 %7431, float -1.000000e+00, float %7460
  %7462 = fmul fast float %7459, %7461
  %7463 = fadd fast float %7462, 1.000000e+00
  %7464 = fsub fast float -0.000000e+00, %7462
  %7465 = fmul fast float %7424, %7464
  %7466 = fmul fast float %7425, %7464
  %7467 = fmul fast float %7426, %7464
  br label %7468

; <label>:7468                                    ; preds = %7421, %7017
  %7469 = phi float [ %7422, %7421 ], [ 0.000000e+00, %7017 ]
  %7470 = phi float [ %7463, %7421 ], [ 1.000000e+00, %7017 ]
  %7471 = phi float [ %7465, %7421 ], [ 0.000000e+00, %7017 ]
  %7472 = phi float [ %7466, %7421 ], [ 0.000000e+00, %7017 ]
  %7473 = phi float [ %7467, %7421 ], [ 0.000000e+00, %7017 ]
  %7474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7475 = extractvalue %dx.types.CBufRet.f32 %7474, 1
  %7476 = fsub fast float 1.000000e+00, %7470
  %7477 = fmul fast float %7476, %7052
  %7478 = fmul fast float %7477, %7475
  %7479 = fsub fast float %7052, %7478
  br i1 %7045, label %7480, label %7509, !dx.controlflow.hints !151

; <label>:7480                                    ; preds = %7468
  %7481 = fmul fast float %7053, %7042
  %7482 = fadd fast float %7481, %7043
  %7483 = call float @dx.op.unary.f32(i32 7, float %7482)  ; Saturate(value)
  %7484 = fmul fast float %7024, %7479
  %7485 = fsub fast float -0.000000e+00, %7484
  %7486 = fmul fast float %7025, %7479
  %7487 = fsub fast float -0.000000e+00, %7486
  %7488 = call float @dx.op.unary.f32(i32 21, float %7485)  ; Exp(value)
  %7489 = call float @dx.op.unary.f32(i32 21, float %7487)  ; Exp(value)
  %7490 = call float @dx.op.binary.f32(i32 35, float %7032, float %7488)  ; FMax(a,b)
  %7491 = call float @dx.op.binary.f32(i32 35, float %7032, float %7489)  ; FMax(a,b)
  %7492 = fsub fast float %7491, %7490
  %7493 = fmul fast float %7492, %7483
  %7494 = fadd fast float %7493, %7490
  %7495 = call float @dx.op.unary.f32(i32 7, float %7494)  ; Saturate(value)
  %7496 = fsub fast float %7029, %7034
  %7497 = fsub fast float %7030, %7035
  %7498 = fsub fast float %7031, %7036
  %7499 = fmul fast float %7483, %7496
  %7500 = fmul fast float %7483, %7497
  %7501 = fmul fast float %7483, %7498
  %7502 = fadd fast float %7499, %7034
  %7503 = fadd fast float %7500, %7035
  %7504 = fadd fast float %7501, %7036
  %7505 = fsub fast float 1.000000e+00, %7495
  %7506 = fmul fast float %7505, %7502
  %7507 = fmul fast float %7505, %7503
  %7508 = fmul fast float %7505, %7504
  br label %7568

; <label>:7509                                    ; preds = %7468
  %7510 = fmul fast float %7479, %7041
  %7511 = call float @dx.op.unary.f32(i32 7, float %7510)  ; Saturate(value)
  %7512 = fsub fast float 2.000000e+00, %7511
  %7513 = fmul fast float %7511, 9.921875e-01
  %7514 = fmul fast float %7513, %7512
  %7515 = fadd fast float %7514, 3.906250e-03
  %7516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %37, float %7515, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7517 = extractvalue %dx.types.ResRet.f32 %7516, 0
  %7518 = fsub fast float %7511, %7517
  %7519 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7518)  ; FMax(a,b)
  %7520 = fmul fast float %7027, %7008
  %7521 = call float @dx.op.unary.f32(i32 6, float %7520)  ; FAbs(value)
  %7522 = fcmp fast ogt float %7521, 0x3EB0C6F7A0000000
  br i1 %7522, label %7523, label %7529, !dx.controlflow.hints !152

; <label>:7523                                    ; preds = %7509
  %7524 = fmul fast float %7520, 0xBFF7154760000000
  %7525 = call float @dx.op.unary.f32(i32 21, float %7524)  ; Exp(value)
  %7526 = fsub fast float 1.000000e+00, %7525
  %7527 = fdiv fast float %7526, %7520
  %7528 = fmul fast float %7527, %7037
  br label %7529

; <label>:7529                                    ; preds = %7523, %7509
  %7530 = phi float [ %7528, %7523 ], [ %7037, %7509 ]
  %7531 = fadd fast float %7530, %7039
  %7532 = fmul fast float %7531, %7519
  %7533 = fmul fast float %7024, %7532
  %7534 = fsub fast float -0.000000e+00, %7533
  %7535 = fmul fast float %7025, %7532
  %7536 = fsub fast float -0.000000e+00, %7535
  %7537 = fmul fast float %7026, %7532
  %7538 = fsub fast float -0.000000e+00, %7537
  %7539 = call float @dx.op.unary.f32(i32 21, float %7534)  ; Exp(value)
  %7540 = call float @dx.op.unary.f32(i32 21, float %7536)  ; Exp(value)
  %7541 = call float @dx.op.unary.f32(i32 21, float %7538)  ; Exp(value)
  %7542 = fmul fast float %7053, %7053
  %7543 = fadd fast float %7542, 1.000000e+00
  %7544 = fmul fast float %7543, 0x3FAE8EC8A0000000
  %7545 = fmul fast float %7544, %7034
  %7546 = fmul fast float %7544, %7035
  %7547 = fmul fast float %7544, %7036
  %7548 = fmul fast float %7053, %7032
  %7549 = fsub fast float 1.000000e+00, %7548
  %7550 = fmul fast float %7032, %7032
  %7551 = fsub fast float 1.000000e+00, %7550
  %7552 = fmul fast float %7551, 0x3FB45F3060000000
  %7553 = fmul fast float %7549, %7549
  %7554 = fdiv fast float 1.000000e+00, %7553
  %7555 = fmul fast float %7552, %7554
  %7556 = fmul fast float %7555, %7029
  %7557 = fmul fast float %7555, %7030
  %7558 = fmul fast float %7555, %7031
  %7559 = fadd fast float %7556, %7545
  %7560 = fadd fast float %7557, %7546
  %7561 = fadd fast float %7558, %7547
  %7562 = fsub fast float 1.000000e+00, %7539
  %7563 = fsub fast float 1.000000e+00, %7540
  %7564 = fsub fast float 1.000000e+00, %7541
  %7565 = fmul fast float %7559, %7562
  %7566 = fmul fast float %7560, %7563
  %7567 = fmul fast float %7561, %7564
  br label %7568

; <label>:7568                                    ; preds = %7529, %7480
  %7569 = phi float [ %7506, %7480 ], [ %7565, %7529 ]
  %7570 = phi float [ %7507, %7480 ], [ %7566, %7529 ]
  %7571 = phi float [ %7508, %7480 ], [ %7567, %7529 ]
  %7572 = phi float [ %7495, %7480 ], [ %7539, %7529 ]
  %7573 = phi float [ %7495, %7480 ], [ %7540, %7529 ]
  %7574 = phi float [ %7495, %7480 ], [ %7541, %7529 ]
  br i1 %7061, label %7575, label %7773, !dx.controlflow.hints !153

; <label>:7575                                    ; preds = %7568
  %7576 = extractvalue %dx.types.CBufRet.f32 %7474, 0
  %7577 = fmul fast float %7576, %7476
  %7578 = fsub fast float %7471, %7569
  %7579 = fsub fast float %7472, %7570
  %7580 = fsub fast float %7473, %7571
  %7581 = fmul fast float %7577, %7578
  %7582 = fmul fast float %7577, %7579
  %7583 = fmul fast float %7577, %7580
  %7584 = fadd fast float %7581, %7569
  %7585 = fadd fast float %7582, %7570
  %7586 = fadd fast float %7583, %7571
  %7587 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7572)  ; FMax(a,b)
  %7588 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7573)  ; FMax(a,b)
  %7589 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7574)  ; FMax(a,b)
  %7590 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7470)  ; FMax(a,b)
  %7591 = call float @dx.op.binary.f32(i32 35, float %7469, float %7479)  ; FMax(a,b)
  %7592 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7591)  ; FMax(a,b)
  %7593 = fdiv fast float %7469, %7592
  %7594 = call float @dx.op.unary.f32(i32 7, float %7593)  ; Saturate(value)
  %7595 = fdiv fast float %7479, %7592
  %7596 = call float @dx.op.unary.f32(i32 7, float %7595)  ; Saturate(value)
  %7597 = fcmp fast une float %7590, 1.000000e+00
  br i1 %7597, label %7598, label %7611, !dx.controlflow.hints !154

; <label>:7598                                    ; preds = %7575
  %7599 = call float @dx.op.unary.f32(i32 23, float %7590)  ; Log(value)
  %7600 = fmul fast float %7599, 0x3FE62E4300000000
  %7601 = fmul fast float %7471, %7600
  %7602 = fsub fast float -0.000000e+00, %7601
  %7603 = fmul fast float %7472, %7600
  %7604 = fsub fast float -0.000000e+00, %7603
  %7605 = fmul fast float %7473, %7600
  %7606 = fsub fast float -0.000000e+00, %7605
  %7607 = fsub fast float 1.000000e+00, %7590
  %7608 = fdiv fast float %7602, %7607
  %7609 = fdiv fast float %7604, %7607
  %7610 = fdiv fast float %7606, %7607
  br label %7611

; <label>:7611                                    ; preds = %7598, %7575
  %7612 = phi float [ %7608, %7598 ], [ %7471, %7575 ]
  %7613 = phi float [ %7609, %7598 ], [ %7472, %7575 ]
  %7614 = phi float [ %7610, %7598 ], [ %7473, %7575 ]
  %7615 = phi float [ %7600, %7598 ], [ 0.000000e+00, %7575 ]
  %7616 = fcmp fast une float %7587, 1.000000e+00
  br i1 %7616, label %7617, label %7624, !dx.controlflow.hints !155

; <label>:7617                                    ; preds = %7611
  %7618 = call float @dx.op.unary.f32(i32 23, float %7587)  ; Log(value)
  %7619 = fmul fast float %7618, 0x3FE62E4300000000
  %7620 = fmul fast float %7584, %7619
  %7621 = fsub fast float -0.000000e+00, %7620
  %7622 = fsub fast float 1.000000e+00, %7587
  %7623 = fdiv fast float %7621, %7622
  br label %7624

; <label>:7624                                    ; preds = %7617, %7611
  %7625 = phi float [ %7623, %7617 ], [ %7584, %7611 ]
  %7626 = phi float [ %7619, %7617 ], [ 0.000000e+00, %7611 ]
  %7627 = fcmp fast une float %7588, 1.000000e+00
  br i1 %7627, label %7628, label %7635, !dx.controlflow.hints !155

; <label>:7628                                    ; preds = %7624
  %7629 = call float @dx.op.unary.f32(i32 23, float %7588)  ; Log(value)
  %7630 = fmul fast float %7629, 0x3FE62E4300000000
  %7631 = fmul fast float %7585, %7630
  %7632 = fsub fast float -0.000000e+00, %7631
  %7633 = fsub fast float 1.000000e+00, %7588
  %7634 = fdiv fast float %7632, %7633
  br label %7635

; <label>:7635                                    ; preds = %7628, %7624
  %7636 = phi float [ %7634, %7628 ], [ %7585, %7624 ]
  %7637 = phi float [ %7630, %7628 ], [ 0.000000e+00, %7624 ]
  %7638 = fcmp fast une float %7589, 1.000000e+00
  br i1 %7638, label %7639, label %7646, !dx.controlflow.hints !155

; <label>:7639                                    ; preds = %7635
  %7640 = call float @dx.op.unary.f32(i32 23, float %7589)  ; Log(value)
  %7641 = fmul fast float %7640, 0x3FE62E4300000000
  %7642 = fmul fast float %7586, %7641
  %7643 = fsub fast float -0.000000e+00, %7642
  %7644 = fsub fast float 1.000000e+00, %7589
  %7645 = fdiv fast float %7643, %7644
  br label %7646

; <label>:7646                                    ; preds = %7639, %7635
  %7647 = phi float [ %7645, %7639 ], [ %7586, %7635 ]
  %7648 = phi float [ %7641, %7639 ], [ 0.000000e+00, %7635 ]
  %7649 = fmul fast float %7612, %7596
  %7650 = fmul fast float %7613, %7596
  %7651 = fmul fast float %7614, %7596
  %7652 = fmul fast float %7615, %7596
  %7653 = fmul fast float %7625, %7594
  %7654 = fmul fast float %7636, %7594
  %7655 = fmul fast float %7647, %7594
  %7656 = fmul fast float %7626, %7594
  %7657 = fmul fast float %7637, %7594
  %7658 = fmul fast float %7648, %7594
  %7659 = fadd fast float %7653, %7649
  %7660 = fadd fast float %7654, %7650
  %7661 = fadd fast float %7655, %7651
  %7662 = fadd fast float %7656, %7652
  %7663 = fadd fast float %7657, %7652
  %7664 = fadd fast float %7658, %7652
  %7665 = fcmp fast une float %7662, 0.000000e+00
  br i1 %7665, label %7666, label %7673, !dx.controlflow.hints !156

; <label>:7666                                    ; preds = %7646
  %7667 = fmul fast float %7662, 0x3FF7154760000000
  %7668 = call float @dx.op.unary.f32(i32 21, float %7667)  ; Exp(value)
  %7669 = fsub fast float 1.000000e+00, %7668
  %7670 = fmul fast float %7659, %7669
  %7671 = fsub fast float -0.000000e+00, %7670
  %7672 = fdiv fast float %7671, %7662
  br label %7673

; <label>:7673                                    ; preds = %7666, %7646
  %7674 = phi float [ %7668, %7666 ], [ 1.000000e+00, %7646 ]
  %7675 = phi float [ %7672, %7666 ], [ %7659, %7646 ]
  %7676 = fcmp fast une float %7663, 0.000000e+00
  br i1 %7676, label %7677, label %7684, !dx.controlflow.hints !156

; <label>:7677                                    ; preds = %7673
  %7678 = fmul fast float %7663, 0x3FF7154760000000
  %7679 = call float @dx.op.unary.f32(i32 21, float %7678)  ; Exp(value)
  %7680 = fsub fast float 1.000000e+00, %7679
  %7681 = fmul fast float %7660, %7680
  %7682 = fsub fast float -0.000000e+00, %7681
  %7683 = fdiv fast float %7682, %7663
  br label %7684

; <label>:7684                                    ; preds = %7677, %7673
  %7685 = phi float [ %7679, %7677 ], [ 1.000000e+00, %7673 ]
  %7686 = phi float [ %7683, %7677 ], [ %7660, %7673 ]
  %7687 = fcmp fast une float %7664, 0.000000e+00
  br i1 %7687, label %7688, label %7695, !dx.controlflow.hints !156

; <label>:7688                                    ; preds = %7684
  %7689 = fmul fast float %7664, 0x3FF7154760000000
  %7690 = call float @dx.op.unary.f32(i32 21, float %7689)  ; Exp(value)
  %7691 = fsub fast float 1.000000e+00, %7690
  %7692 = fmul fast float %7661, %7691
  %7693 = fsub fast float -0.000000e+00, %7692
  %7694 = fdiv fast float %7693, %7664
  br label %7695

; <label>:7695                                    ; preds = %7688, %7684
  %7696 = phi float [ %7690, %7688 ], [ 1.000000e+00, %7684 ]
  %7697 = phi float [ %7694, %7688 ], [ %7661, %7684 ]
  %7698 = fcmp fast ogt float %7594, %7596
  br i1 %7698, label %7699, label %7719

; <label>:7699                                    ; preds = %7695
  %7700 = fsub fast float 1.000000e+00, %7596
  %7701 = fmul fast float %7612, %7700
  %7702 = fmul fast float %7613, %7700
  %7703 = fmul fast float %7614, %7700
  %7704 = fmul fast float %7615, %7700
  %7705 = fcmp fast une float %7704, 0.000000e+00
  br i1 %7705, label %7706, label %7757, !dx.controlflow.hints !157

; <label>:7706                                    ; preds = %7699
  %7707 = fmul fast float %7704, 0x3FF7154760000000
  %7708 = call float @dx.op.unary.f32(i32 21, float %7707)  ; Exp(value)
  %7709 = fsub fast float 1.000000e+00, %7708
  %7710 = fmul fast float %7701, %7709
  %7711 = fsub fast float -0.000000e+00, %7710
  %7712 = fmul fast float %7702, %7709
  %7713 = fsub fast float -0.000000e+00, %7712
  %7714 = fmul fast float %7703, %7709
  %7715 = fsub fast float -0.000000e+00, %7714
  %7716 = fdiv fast float %7711, %7704
  %7717 = fdiv fast float %7713, %7704
  %7718 = fdiv fast float %7715, %7704
  br label %7757

; <label>:7719                                    ; preds = %7695
  %7720 = fsub fast float 1.000000e+00, %7594
  %7721 = fmul fast float %7625, %7720
  %7722 = fmul fast float %7636, %7720
  %7723 = fmul fast float %7647, %7720
  %7724 = fmul fast float %7626, %7720
  %7725 = fmul fast float %7637, %7720
  %7726 = fmul fast float %7648, %7720
  %7727 = fcmp fast une float %7724, 0.000000e+00
  br i1 %7727, label %7728, label %7735, !dx.controlflow.hints !156

; <label>:7728                                    ; preds = %7719
  %7729 = fmul fast float %7724, 0x3FF7154760000000
  %7730 = call float @dx.op.unary.f32(i32 21, float %7729)  ; Exp(value)
  %7731 = fsub fast float 1.000000e+00, %7730
  %7732 = fmul fast float %7721, %7731
  %7733 = fsub fast float -0.000000e+00, %7732
  %7734 = fdiv fast float %7733, %7724
  br label %7735

; <label>:7735                                    ; preds = %7728, %7719
  %7736 = phi float [ %7734, %7728 ], [ %7721, %7719 ]
  %7737 = phi float [ %7730, %7728 ], [ 1.000000e+00, %7719 ]
  %7738 = fcmp fast une float %7725, 0.000000e+00
  br i1 %7738, label %7739, label %7746, !dx.controlflow.hints !156

; <label>:7739                                    ; preds = %7735
  %7740 = fmul fast float %7725, 0x3FF7154760000000
  %7741 = call float @dx.op.unary.f32(i32 21, float %7740)  ; Exp(value)
  %7742 = fsub fast float 1.000000e+00, %7741
  %7743 = fmul fast float %7722, %7742
  %7744 = fsub fast float -0.000000e+00, %7743
  %7745 = fdiv fast float %7744, %7725
  br label %7746

; <label>:7746                                    ; preds = %7739, %7735
  %7747 = phi float [ %7745, %7739 ], [ %7722, %7735 ]
  %7748 = phi float [ %7741, %7739 ], [ 1.000000e+00, %7735 ]
  %7749 = fcmp fast une float %7726, 0.000000e+00
  br i1 %7749, label %7750, label %7757, !dx.controlflow.hints !156

; <label>:7750                                    ; preds = %7746
  %7751 = fmul fast float %7726, 0x3FF7154760000000
  %7752 = call float @dx.op.unary.f32(i32 21, float %7751)  ; Exp(value)
  %7753 = fsub fast float 1.000000e+00, %7752
  %7754 = fmul fast float %7723, %7753
  %7755 = fsub fast float -0.000000e+00, %7754
  %7756 = fdiv fast float %7755, %7726
  br label %7757

; <label>:7757                                    ; preds = %7750, %7746, %7706, %7699
  %7758 = phi float [ %7756, %7750 ], [ %7718, %7706 ], [ %7703, %7699 ], [ %7723, %7746 ]
  %7759 = phi float [ %7747, %7750 ], [ %7717, %7706 ], [ %7702, %7699 ], [ %7747, %7746 ]
  %7760 = phi float [ %7736, %7750 ], [ %7716, %7706 ], [ %7701, %7699 ], [ %7736, %7746 ]
  %7761 = phi float [ %7752, %7750 ], [ %7708, %7706 ], [ 1.000000e+00, %7699 ], [ 1.000000e+00, %7746 ]
  %7762 = phi float [ %7748, %7750 ], [ %7708, %7706 ], [ 1.000000e+00, %7699 ], [ %7748, %7746 ]
  %7763 = phi float [ %7737, %7750 ], [ %7708, %7706 ], [ 1.000000e+00, %7699 ], [ %7737, %7746 ]
  %7764 = fmul fast float %7763, %7675
  %7765 = fmul fast float %7762, %7686
  %7766 = fmul fast float %7761, %7697
  %7767 = fadd fast float %7764, %7760
  %7768 = fadd fast float %7765, %7759
  %7769 = fadd fast float %7766, %7758
  %7770 = fmul fast float %7763, %7674
  %7771 = fmul fast float %7762, %7685
  %7772 = fmul fast float %7761, %7696
  br label %7773

; <label>:7773                                    ; preds = %7757, %7568
  %7774 = phi float [ %7772, %7757 ], [ %7574, %7568 ]
  %7775 = phi float [ %7771, %7757 ], [ %7573, %7568 ]
  %7776 = phi float [ %7770, %7757 ], [ %7572, %7568 ]
  %7777 = phi float [ %7769, %7757 ], [ %7571, %7568 ]
  %7778 = phi float [ %7768, %7757 ], [ %7570, %7568 ]
  %7779 = phi float [ %7767, %7757 ], [ %7569, %7568 ]
  %7780 = fmul fast float %7779, %6733
  %7781 = fmul fast float %7778, %6734
  %7782 = fmul fast float %7777, %6735
  %7783 = fmul fast float %7776, %7016
  %7784 = call float @dx.op.dot3.f32(i32 55, float %7776, float %7775, float %7774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7785 = call float @dx.op.dot3.f32(i32 55, float %7780, float %7781, float %7782, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7786 = select i1 %282, float %7784, float %7776
  %7787 = select i1 %282, float %7784, float %7775
  %7788 = select i1 %282, float 1.000000e+00, float %7774
  %7789 = select i1 %282, float %7785, float %7780
  %7790 = select i1 %282, float 0.000000e+00, float %7781
  %7791 = select i1 %282, float 0.000000e+00, float %7782
  %7792 = fmul fast float %7786, %7010
  %7793 = fmul fast float %7787, %7011
  %7794 = fmul fast float %7788, %7012
  %7795 = fadd fast float %7792, %7789
  %7796 = fadd fast float %7793, %7790
  %7797 = fadd fast float %7791, %7794
  %7798 = fmul fast float %7786, %7013
  %7799 = fmul fast float %7787, %7014
  %7800 = fmul fast float %7788, %7015
  %7801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7802 = extractvalue %dx.types.CBufRet.i32 %7801, 0
  %7803 = icmp eq i32 %7802, 0
  br i1 %7803, label %8171, label %7804, !dx.controlflow.hints !158

; <label>:7804                                    ; preds = %7773
  %7805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7806 = extractvalue %dx.types.CBufRet.f32 %7805, 2
  %7807 = extractvalue %dx.types.CBufRet.f32 %7805, 3
  %7808 = fmul fast float %7806, %99
  %7809 = fmul fast float %7807, %100
  %7810 = fmul fast float %7808, 2.000000e+00
  %7811 = fmul fast float %7809, 2.000000e+00
  %7812 = fsub fast float 1.000000e+00, %7810
  %7813 = fsub fast float 1.000000e+00, %7811
  %7814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.f32 %7814, 0
  %7816 = extractvalue %dx.types.CBufRet.f32 %7814, 1
  %7817 = extractvalue %dx.types.CBufRet.f32 %7814, 2
  %7818 = fmul fast float %7812, %7815
  %7819 = fmul fast float %7812, %7816
  %7820 = fmul fast float %7812, %7817
  %7821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.f32 %7821, 0
  %7823 = extractvalue %dx.types.CBufRet.f32 %7821, 1
  %7824 = extractvalue %dx.types.CBufRet.f32 %7821, 2
  %7825 = fmul fast float %7813, %7822
  %7826 = fmul fast float %7813, %7823
  %7827 = fmul fast float %7813, %7824
  %7828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7829 = extractvalue %dx.types.CBufRet.f32 %7828, 0
  %7830 = extractvalue %dx.types.CBufRet.f32 %7828, 1
  %7831 = extractvalue %dx.types.CBufRet.f32 %7828, 2
  %7832 = fadd fast float %7825, %7829
  %7833 = fadd fast float %7832, %7818
  %7834 = fadd fast float %7826, %7830
  %7835 = fadd fast float %7834, %7819
  %7836 = fadd fast float %7827, %7831
  %7837 = fadd fast float %7836, %7820
  %7838 = fmul fast float %7833, %7009
  %7839 = fmul fast float %7835, %7009
  %7840 = fmul fast float %7837, %7009
  %7841 = fmul fast float %7838, %7838
  %7842 = fmul fast float %7839, %7839
  %7843 = fadd fast float %7841, %7842
  %7844 = fmul fast float %7840, %7840
  %7845 = fadd fast float %7843, %7844
  %7846 = call float @dx.op.unary.f32(i32 24, float %7845)  ; Sqrt(value)
  %7847 = extractvalue %dx.types.CBufRet.f32 %6736, 0
  %7848 = fsub fast float %7846, %7847
  %7849 = extractvalue %dx.types.CBufRet.f32 %6736, 2
  %7850 = fmul fast float %7848, %7849
  %7851 = call float @dx.op.unary.f32(i32 7, float %7850)  ; Saturate(value)
  %7852 = fadd fast float %7851, -5.000000e-01
  %7853 = fmul fast float %7852, 2.000000e+00
  %7854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7855 = extractvalue %dx.types.CBufRet.f32 %7854, 2
  %7856 = call float @dx.op.binary.f32(i32 36, float %7855, float %7853)  ; FMin(a,b)
  %7857 = fsub fast float -0.000000e+00, %7855
  %7858 = fcmp fast ogt float %7856, %7857
  br i1 %7858, label %7859, label %8171, !dx.controlflow.hints !159

; <label>:7859                                    ; preds = %7804
  %7860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7861 = extractvalue %dx.types.CBufRet.f32 %7860, 3
  %7862 = fcmp fast ogt float %7861, 0.000000e+00
  br i1 %7862, label %7863, label %7938, !dx.controlflow.hints !160

; <label>:7863                                    ; preds = %7859
  %7864 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %7865 = extractvalue %dx.types.Dimensions %7864, 0
  %7866 = sitofp i32 %7865 to float
  %7867 = extractvalue %dx.types.Dimensions %7864, 1
  %7868 = sitofp i32 %7867 to float
  %7869 = fmul fast float %7808, %7866
  %7870 = fmul fast float %7809, %7868
  %7871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7872 = extractvalue %dx.types.CBufRet.f32 %7871, 1
  %7873 = fsub fast float -0.000000e+00, %7872
  %7874 = fptoui float %7873 to i32
  %7875 = fptoui float %7869 to i32
  %7876 = fptoui float %7870 to i32
  %7877 = and i32 %7874, 31
  %7878 = lshr i32 %7875, %7877
  %7879 = lshr i32 %7876, %7877
  %7880 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 %7874, i32 %7878, i32 %7879, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7881 = extractvalue %dx.types.ResRet.f32 %7880, 0
  %7882 = fcmp fast olt float %7881, -1.000000e+00
  %7883 = fcmp fast ogt float %7881, -1.000000e+00
  %7884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7885 = extractvalue %dx.types.CBufRet.f32 %7884, 1
  %7886 = select i1 %7883, float %7885, float 1.000000e+00
  %7887 = fadd fast float %7881, 1.000000e+00
  %7888 = fmul fast float %7886, %7887
  %7889 = call float @dx.op.unary.f32(i32 6, float %7888)  ; FAbs(value)
  %7890 = extractvalue %dx.types.CBufRet.f32 %7884, 3
  %7891 = fcmp fast oge float %7889, %7890
  %7892 = select i1 %7891, float 0x4197782600000000, float %7889
  %7893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7894 = extractvalue %dx.types.CBufRet.f32 %7893, 0
  %7895 = extractvalue %dx.types.CBufRet.f32 %7893, 1
  %7896 = extractvalue %dx.types.CBufRet.f32 %7893, 2
  %7897 = select i1 %7882, float %7894, float %7815
  %7898 = select i1 %7882, float %7895, float %7816
  %7899 = select i1 %7882, float %7896, float %7817
  %7900 = fmul fast float %7897, %7812
  %7901 = fmul fast float %7898, %7812
  %7902 = fmul fast float %7899, %7812
  %7903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7904 = extractvalue %dx.types.CBufRet.f32 %7903, 0
  %7905 = extractvalue %dx.types.CBufRet.f32 %7903, 1
  %7906 = extractvalue %dx.types.CBufRet.f32 %7903, 2
  %7907 = select i1 %7882, float %7904, float %7822
  %7908 = select i1 %7882, float %7905, float %7823
  %7909 = select i1 %7882, float %7906, float %7824
  %7910 = fmul fast float %7907, %7813
  %7911 = fmul fast float %7908, %7813
  %7912 = fmul fast float %7909, %7813
  %7913 = fadd fast float %7910, %7900
  %7914 = fadd fast float %7911, %7901
  %7915 = fadd fast float %7912, %7902
  %7916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7917 = extractvalue %dx.types.CBufRet.f32 %7916, 0
  %7918 = extractvalue %dx.types.CBufRet.f32 %7916, 1
  %7919 = extractvalue %dx.types.CBufRet.f32 %7916, 2
  %7920 = select i1 %7882, float %7917, float %7829
  %7921 = select i1 %7882, float %7918, float %7830
  %7922 = select i1 %7882, float %7919, float %7831
  %7923 = fadd fast float %7913, %7920
  %7924 = fadd fast float %7914, %7921
  %7925 = fadd fast float %7915, %7922
  %7926 = fmul fast float %7923, %7892
  %7927 = fmul fast float %7924, %7892
  %7928 = fmul fast float %7925, %7892
  %7929 = fmul fast float %7926, %7926
  %7930 = fmul fast float %7927, %7927
  %7931 = fadd fast float %7929, %7930
  %7932 = fmul fast float %7928, %7928
  %7933 = fadd fast float %7931, %7932
  %7934 = call float @dx.op.unary.f32(i32 24, float %7933)  ; Sqrt(value)
  %7935 = fsub fast float %7934, %7847
  %7936 = fmul fast float %7935, %7849
  %7937 = call float @dx.op.unary.f32(i32 7, float %7936)  ; Saturate(value)
  br label %7938

; <label>:7938                                    ; preds = %7863, %7859
  %7939 = phi float [ %7937, %7863 ], [ 1.000000e+00, %7859 ]
  %7940 = fmul fast float %7856, 5.000000e-01
  %7941 = fadd fast float %7940, 5.000000e-01
  %7942 = call float @dx.op.unary.f32(i32 22, float %7941)  ; Frc(value)
  %7943 = call float @dx.op.unary.f32(i32 27, float %7942)  ; Round_ni(value)
  %7944 = call float @dx.op.unary.f32(i32 22, float %7942)  ; Frc(value)
  %7945 = fmul fast float %7944, 2.000000e+00
  %7946 = fadd fast float %7945, -1.000000e+00
  %7947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %37, float %7808, float %7809, float %7943, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7948 = extractvalue %dx.types.ResRet.f32 %7947, 0
  %7949 = extractvalue %dx.types.ResRet.f32 %7947, 1
  %7950 = extractvalue %dx.types.ResRet.f32 %7947, 2
  %7951 = extractvalue %dx.types.ResRet.f32 %7947, 3
  %7952 = fadd fast float %7948, -5.000000e-01
  %7953 = fadd fast float %7950, -5.000000e-01
  %7954 = fmul fast float %7952, 0xBFD5555560000000
  %7955 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7953, float %7954)  ; FMad(a,b,c)
  %7956 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7949, float 0.000000e+00)  ; FMad(a,b,c)
  %7957 = fadd fast float %7956, %7951
  %7958 = fmul fast float %7952, -7.500000e-01
  %7959 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7953, float %7958)  ; FMad(a,b,c)
  %7960 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7949, float 0.000000e+00)  ; FMad(a,b,c)
  %7961 = fadd fast float %7960, %7951
  %7962 = call float @dx.op.binary.f32(i32 35, float %7955, float -1.000000e+00)  ; FMax(a,b)
  %7963 = call float @dx.op.binary.f32(i32 35, float %7957, float -1.000000e+00)  ; FMax(a,b)
  %7964 = call float @dx.op.binary.f32(i32 35, float %7959, float -1.000000e+00)  ; FMax(a,b)
  %7965 = call float @dx.op.binary.f32(i32 35, float %7961, float -1.000000e+00)  ; FMax(a,b)
  %7966 = call float @dx.op.binary.f32(i32 36, float %7962, float 1.000000e+00)  ; FMin(a,b)
  %7967 = call float @dx.op.binary.f32(i32 36, float %7963, float 1.000000e+00)  ; FMin(a,b)
  %7968 = call float @dx.op.binary.f32(i32 36, float %7964, float 1.000000e+00)  ; FMin(a,b)
  %7969 = call float @dx.op.binary.f32(i32 36, float %7965, float 1.000000e+00)  ; FMin(a,b)
  %7970 = fcmp fast olt float %7966, 0x3FEFFF8020000000
  br i1 %7970, label %7971, label %8086, !dx.controlflow.hints !161

; <label>:7971                                    ; preds = %7938
  %7972 = extractvalue %dx.types.CBufRet.f32 %7854, 3
  %7973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7974 = extractvalue %dx.types.CBufRet.f32 %7973, 0
  %7975 = extractvalue %dx.types.CBufRet.f32 %7973, 1
  %7976 = extractvalue %dx.types.CBufRet.f32 %7973, 2
  %7977 = extractvalue %dx.types.CBufRet.f32 %7973, 3
  %7978 = fsub fast float %7974, %7966
  %7979 = fsub fast float %7975, %7967
  %7980 = fsub fast float %7976, %7968
  %7981 = fsub fast float %7977, %7969
  %7982 = fmul fast float %7978, %7972
  %7983 = fmul fast float %7979, %7972
  %7984 = fmul fast float %7980, %7972
  %7985 = fmul fast float %7981, %7972
  %7986 = fadd fast float %7982, %7966
  %7987 = fadd fast float %7983, %7967
  %7988 = fsub fast float -0.000000e+00, %7987
  %7989 = fadd fast float %7984, %7968
  %7990 = fadd fast float %7985, %7969
  %7991 = fmul fast float %7986, %7986
  %7992 = fsub fast float %7987, %7991
  %7993 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7992)  ; FMax(a,b)
  %7994 = fdiv fast float 1.000000e+00, %7993
  %7995 = fmul fast float %7987, %7986
  %7996 = fsub fast float %7989, %7995
  %7997 = fsub fast float %7946, %7986
  %7998 = fmul fast float %7946, %7946
  %7999 = fsub fast float %7998, %7987
  %8000 = fmul fast float %7997, %7994
  %8001 = fmul fast float %8000, %7996
  %8002 = fsub fast float %7999, %8001
  %8003 = fmul fast float %7987, %7987
  %8004 = fsub fast float %7990, %8003
  %8005 = fmul fast float %7996, %7996
  %8006 = fmul fast float %8005, %7994
  %8007 = fsub fast float %8004, %8006
  %8008 = fdiv fast float %8002, %8007
  %8009 = fmul fast float %7996, %8008
  %8010 = fsub fast float %7997, %8009
  %8011 = fmul fast float %8010, %7994
  %8012 = fmul fast float %8011, %7986
  %8013 = fsub fast float 1.000000e+00, %8012
  %8014 = fmul fast float %7987, %8008
  %8015 = fsub fast float %8013, %8014
  %8016 = fmul fast float %8011, %8011
  %8017 = fmul fast float %8008, 4.000000e+00
  %8018 = fmul fast float %8017, %8015
  %8019 = fsub fast float %8016, %8018
  %8020 = call float @dx.op.unary.f32(i32 24, float %8019)  ; Sqrt(value)
  %8021 = fcmp fast oge float %8011, 0.000000e+00
  %8022 = fsub fast float -0.000000e+00, %8020
  %8023 = select i1 %8021, float %8022, float %8020
  %8024 = fsub fast float %8023, %8011
  %8025 = fdiv fast float %8024, %8008
  %8026 = fdiv fast float %8015, %8024
  %8027 = fmul fast float %8025, 5.000000e-01
  %8028 = fmul fast float %8026, 2.000000e+00
  %8029 = select i1 %8021, float %8027, float %8028
  %8030 = select i1 %8021, float %8028, float %8027
  %8031 = call float @dx.op.binary.f32(i32 35, float %8029, float %8030)  ; FMax(a,b)
  %8032 = call float @dx.op.binary.f32(i32 36, float %8029, float %8030)  ; FMin(a,b)
  %8033 = fcmp fast ogt float %7946, %8032
  br i1 %8033, label %8034, label %8044

; <label>:8034                                    ; preds = %7971
  %8035 = fsub fast float %7946, %8032
  %8036 = fsub fast float %8031, %8032
  %8037 = fmul fast float %8035, %8036
  %8038 = fmul fast float %8031, %7946
  %8039 = fadd fast float %8031, %7946
  %8040 = fmul fast float %8039, %7986
  %8041 = fadd fast float %8038, %7987
  %8042 = fsub fast float %8041, %8040
  %8043 = fdiv fast float %8042, %8037
  br label %8044

; <label>:8044                                    ; preds = %8034, %7971
  %8045 = phi float [ %8043, %8034 ], [ 0.000000e+00, %7971 ]
  %8046 = fcmp fast ogt float %7946, %8031
  %8047 = fsub fast float %7946, %8031
  br i1 %8046, label %8048, label %8058

; <label>:8048                                    ; preds = %8044
  %8049 = fsub fast float %8031, %8032
  %8050 = fmul fast float %8049, %8047
  %8051 = fmul fast float %8032, %7946
  %8052 = fadd fast float %8032, %7946
  %8053 = fmul fast float %8052, %7986
  %8054 = fsub fast float %7988, %8051
  %8055 = fadd fast float %8054, %8053
  %8056 = fdiv fast float %8055, %8050
  %8057 = fadd fast float %8056, %8045
  br label %8058

; <label>:8058                                    ; preds = %8048, %8044
  %8059 = phi float [ %8057, %8048 ], [ %8045, %8044 ]
  %8060 = fsub fast float %7946, %8032
  %8061 = fmul fast float %8060, %8047
  %8062 = fmul fast float %8032, %8031
  %8063 = fadd fast float %8032, %8031
  %8064 = fmul fast float %8063, %7986
  %8065 = fadd fast float %8062, %7987
  %8066 = fsub fast float %8065, %8064
  %8067 = fdiv fast float %8066, %8061
  %8068 = call float @dx.op.unary.f32(i32 7, float %8059)  ; Saturate(value)
  %8069 = fcmp fast oeq float %6737, 0.000000e+00
  %8070 = extractvalue %dx.types.CBufRet.f32 %7854, 0
  %8071 = fcmp fast oeq float %8070, 0.000000e+00
  %8072 = or i1 %8069, %8071
  %8073 = fmul fast float %8070, 2.000000e+00
  %8074 = fadd fast float %7855, %7856
  %8075 = fdiv fast float %8074, %8073
  %8076 = call float @dx.op.unary.f32(i32 7, float %8075)  ; Saturate(value)
  %8077 = fmul fast float %8076, 2.000000e+00
  %8078 = fsub fast float 3.000000e+00, %8077
  %8079 = fmul fast float %8076, %8076
  %8080 = fmul fast float %8079, %8078
  %8081 = select i1 %8072, float 1.000000e+00, float %8080
  %8082 = fmul fast float %8067, %6737
  %8083 = fadd fast float %8068, %8082
  %8084 = call float @dx.op.unary.f32(i32 7, float %8083)  ; Saturate(value)
  %8085 = fmul fast float %8081, %8084
  br label %8086

; <label>:8086                                    ; preds = %8058, %7938
  %8087 = phi float [ %8085, %8058 ], [ 0.000000e+00, %7938 ]
  %8088 = fsub fast float 1.000000e+00, %8087
  %8089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %37, float %7808, float %7809, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8090 = extractvalue %dx.types.ResRet.f32 %8089, 0
  %8091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8092 = extractvalue %dx.types.CBufRet.i32 %8091, 2
  %8093 = icmp eq i32 %8092, 0
  br i1 %8093, label %8099, label %8094

; <label>:8094                                    ; preds = %8086
  %8095 = call float @dx.op.unary.f32(i32 7, float %8087)  ; Saturate(value)
  %8096 = fadd fast float %8090, -1.000000e+00
  %8097 = fmul fast float %8095, %8096
  %8098 = fadd fast float %8097, 1.000000e+00
  br label %8099

; <label>:8099                                    ; preds = %8094, %8086
  %8100 = phi float [ %8098, %8094 ], [ %8088, %8086 ]
  br i1 %7862, label %8101, label %8119

; <label>:8101                                    ; preds = %8099
  %8102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8103 = extractvalue %dx.types.CBufRet.f32 %8102, 1
  %8104 = fsub fast float %7939, %8103
  %8105 = call float @dx.op.unary.f32(i32 7, float %8104)  ; Saturate(value)
  %8106 = fsub fast float %7939, %7861
  %8107 = call float @dx.op.unary.f32(i32 7, float %8106)  ; Saturate(value)
  %8108 = fsub fast float %8105, %8107
  %8109 = fsub fast float %7941, %8107
  %8110 = fdiv fast float %8109, %8108
  %8111 = call float @dx.op.unary.f32(i32 7, float %8110)  ; Saturate(value)
  %8112 = fmul fast float %8111, 2.000000e+00
  %8113 = fsub fast float 3.000000e+00, %8112
  %8114 = fsub fast float %8090, %8100
  %8115 = fmul fast float %8111, %8111
  %8116 = fmul fast float %8115, %8114
  %8117 = fmul fast float %8116, %8113
  %8118 = fadd fast float %8117, %8100
  br label %8119

; <label>:8119                                    ; preds = %8101, %8099
  %8120 = phi float [ %8118, %8101 ], [ %8100, %8099 ]
  %8121 = call float @dx.op.binary.f32(i32 35, float %8090, float %8120)  ; FMax(a,b)
  %8122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8123 = extractvalue %dx.types.CBufRet.i32 %8122, 2
  %8124 = and i32 %8123, 1
  %8125 = icmp eq i32 %8124, 0
  %8126 = fcmp fast une float %8121, 1.000000e+00
  %8127 = and i1 %8126, %8125
  br i1 %8127, label %8128, label %8147

; <label>:8128                                    ; preds = %8119
  %8129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %37, float %7808, float %7809, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8130 = extractvalue %dx.types.ResRet.f32 %8129, 0
  %8131 = extractvalue %dx.types.ResRet.f32 %8129, 1
  %8132 = extractvalue %dx.types.ResRet.f32 %8129, 2
  %8133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8134 = extractvalue %dx.types.CBufRet.f32 %8133, 1
  %8135 = fmul fast float %8134, %8130
  %8136 = fmul fast float %8134, %8131
  %8137 = fmul fast float %8134, %8132
  %8138 = fcmp fast ogt float %8090, 0x3FEFFF2E40000000
  %8139 = fsub fast float 1.000000e+00, %8121
  %8140 = fsub fast float 1.000000e+00, %8090
  %8141 = fdiv fast float %8139, %8140
  %8142 = call float @dx.op.unary.f32(i32 7, float %8141)  ; Saturate(value)
  %8143 = select i1 %8138, float 0.000000e+00, float %8142
  %8144 = fmul fast float %8135, %8143
  %8145 = fmul fast float %8136, %8143
  %8146 = fmul fast float %8137, %8143
  br label %8147

; <label>:8147                                    ; preds = %8128, %8119
  %8148 = phi float [ 0.000000e+00, %8119 ], [ %8144, %8128 ]
  %8149 = phi float [ 0.000000e+00, %8119 ], [ %8145, %8128 ]
  %8150 = phi float [ 0.000000e+00, %8119 ], [ %8146, %8128 ]
  %8151 = fmul fast float %8148, %6733
  %8152 = fmul fast float %8149, %6734
  %8153 = fmul fast float %8150, %6735
  %8154 = fmul fast float %8121, %7783
  %8155 = call float @dx.op.dot3.f32(i32 55, float %8121, float %8121, float %8121, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8156 = call float @dx.op.dot3.f32(i32 55, float %8151, float %8152, float %8153, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8157 = select i1 %282, float %8155, float %8121
  %8158 = select i1 %282, float 1.000000e+00, float %8121
  %8159 = select i1 %282, float %8156, float %8151
  %8160 = select i1 %282, float 0.000000e+00, float %8152
  %8161 = select i1 %282, float 0.000000e+00, float %8153
  %8162 = fmul fast float %8157, %7795
  %8163 = fmul fast float %8157, %7796
  %8164 = fmul fast float %8158, %7797
  %8165 = fadd fast float %8162, %8159
  %8166 = fadd fast float %8163, %8160
  %8167 = fadd fast float %8161, %8164
  %8168 = fmul fast float %8157, %7798
  %8169 = fmul fast float %8157, %7799
  %8170 = fmul fast float %8158, %7800
  br label %8171

; <label>:8171                                    ; preds = %8147, %7804, %7773, %7005
  %8172 = phi float [ %7010, %7005 ], [ %7795, %7773 ], [ %8165, %8147 ], [ %7795, %7804 ]
  %8173 = phi float [ %7011, %7005 ], [ %7796, %7773 ], [ %8166, %8147 ], [ %7796, %7804 ]
  %8174 = phi float [ %7012, %7005 ], [ %7797, %7773 ], [ %8167, %8147 ], [ %7797, %7804 ]
  %8175 = phi float [ %7013, %7005 ], [ %7798, %7773 ], [ %8168, %8147 ], [ %7798, %7804 ]
  %8176 = phi float [ %7014, %7005 ], [ %7799, %7773 ], [ %8169, %8147 ], [ %7799, %7804 ]
  %8177 = phi float [ %7015, %7005 ], [ %7800, %7773 ], [ %8170, %8147 ], [ %7800, %7804 ]
  %8178 = phi float [ %7016, %7005 ], [ %7783, %7773 ], [ %8154, %8147 ], [ %7783, %7804 ]
  %8179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8180 = extractvalue %dx.types.CBufRet.f32 %8179, 2
  %8181 = extractvalue %dx.types.CBufRet.f32 %8179, 3
  %8182 = fmul fast float %8180, %99
  %8183 = fmul fast float %8181, %100
  %8184 = call float @dx.op.unary.f32(i32 7, float %8182)  ; Saturate(value)
  %8185 = call float @dx.op.unary.f32(i32 7, float %8183)  ; Saturate(value)
  %8186 = select i1 %6747, i32 2, i32 0
  %8187 = or i32 %8186, 1
  %8188 = uitofp i32 %8187 to float
  %8189 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %8184, float %8185, float %8188, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8190 = extractvalue %dx.types.ResRet.f32 %8189, 0
  %8191 = extractvalue %dx.types.ResRet.f32 %8189, 1
  %8192 = extractvalue %dx.types.ResRet.f32 %8189, 2
  %8193 = extractvalue %dx.types.ResRet.f32 %8189, 3
  %8194 = add nuw nsw i32 %8186, 2
  %8195 = uitofp i32 %8194 to float
  %8196 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %8184, float %8185, float %8195, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8197 = extractvalue %dx.types.ResRet.f32 %8196, 0
  %8198 = extractvalue %dx.types.ResRet.f32 %8196, 1
  %8199 = extractvalue %dx.types.ResRet.f32 %8196, 2
  %8200 = extractvalue %dx.types.ResRet.f32 %8196, 3
  %8201 = call float @dx.op.binary.f32(i32 35, float %8191, float %8192)  ; FMax(a,b)
  %8202 = call float @dx.op.binary.f32(i32 35, float %8190, float %8201)  ; FMax(a,b)
  %8203 = call float @dx.op.binary.f32(i32 35, float %8202, float %8193)  ; FMax(a,b)
  %8204 = call float @dx.op.binary.f32(i32 36, float %8198, float %8199)  ; FMin(a,b)
  %8205 = call float @dx.op.binary.f32(i32 36, float %8197, float %8204)  ; FMin(a,b)
  %8206 = call float @dx.op.binary.f32(i32 36, float %8205, float %8200)  ; FMin(a,b)
  %8207 = fmul fast float %8203, 2.550000e+02
  %8208 = fadd fast float %8207, 0x3F70101020000000
  %8209 = fptoui float %8208 to i32
  %8210 = fmul fast float %8206, 2.550000e+02
  %8211 = fadd fast float %8210, 0x3F70101020000000
  %8212 = fptoui float %8211 to i32
  %8213 = icmp ult i32 %8209, %8212
  br i1 %8213, label %8214, label %8383

; <label>:8214                                    ; preds = %8171
  %8215 = fcmp fast ogt float %89, 9.843750e-01
  %8216 = fadd fast float %7009, -4.000000e+00
  %8217 = select i1 %8215, float -4.000000e+00, float %8216
  %8218 = call float @dx.op.binary.f32(i32 35, float %8217, float 0.000000e+00)  ; FMax(a,b)
  %8219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8220 = extractvalue %dx.types.CBufRet.f32 %8219, 0
  %8221 = fadd fast float %8220, %8218
  %8222 = extractvalue %dx.types.CBufRet.f32 %8219, 2
  %8223 = fmul fast float %8221, %8222
  %8224 = call float @dx.op.unary.f32(i32 23, float %8223)  ; Log(value)
  %8225 = extractvalue %dx.types.CBufRet.f32 %8219, 3
  %8226 = fmul fast float %8225, %8224
  %8227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8228 = extractvalue %dx.types.CBufRet.f32 %8227, 2
  %8229 = fmul fast float %8226, %8228
  %8230 = call float @dx.op.unary.f32(i32 7, float %8229)  ; Saturate(value)
  %8231 = uitofp i32 %8209 to float
  %8232 = uitofp i32 %8212 to float
  %8233 = fadd fast float %8231, 5.000000e-01
  %8234 = fadd fast float %8232, 5.000000e-01
  %8235 = fmul fast float %8228, %8233
  %8236 = fmul fast float %8228, %8234
  %8237 = fadd fast float %8235, 0x3F0FFB4800000000
  %8238 = fadd fast float %8236, 0xBF0FFB4800000000
  %8239 = call float @dx.op.binary.f32(i32 35, float %8230, float %8237)  ; FMax(a,b)
  %8240 = call float @dx.op.binary.f32(i32 36, float %8239, float %8238)  ; FMin(a,b)
  %8241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8242 = extractvalue %dx.types.CBufRet.f32 %8241, 1
  %8243 = extractvalue %dx.types.CBufRet.f32 %8241, 2
  %8244 = extractvalue %dx.types.CBufRet.f32 %8241, 0
  %8245 = select i1 %6747, float %8244, float 0.000000e+00
  %8246 = fmul fast float %8242, %8240
  %8247 = fadd fast float %8245, %8246
  %8248 = fadd fast float %8245, %8243
  %8249 = fsub fast float %8242, %8243
  %8250 = fadd fast float %8249, %8245
  %8251 = call float @dx.op.binary.f32(i32 35, float %8247, float %8248)  ; FMax(a,b)
  %8252 = call float @dx.op.binary.f32(i32 36, float %8251, float %8250)  ; FMin(a,b)
  %8253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %8184, float %8185, float %8252, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8254 = extractvalue %dx.types.ResRet.f32 %8253, 0
  %8255 = extractvalue %dx.types.ResRet.f32 %8253, 1
  %8256 = extractvalue %dx.types.ResRet.f32 %8253, 2
  %8257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8258 = extractvalue %dx.types.CBufRet.i32 %8257, 0
  %8259 = extractvalue %dx.types.CBufRet.i32 %8257, 1
  %8260 = uitofp i32 %8258 to float
  %8261 = uitofp i32 %8259 to float
  %8262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8263 = extractvalue %dx.types.CBufRet.f32 %8262, 0
  %8264 = extractvalue %dx.types.CBufRet.f32 %8262, 1
  %8265 = fmul fast float %8260, %8184
  %8266 = fmul fast float %8261, %8185
  %8267 = fadd fast float %8265, -5.000000e-01
  %8268 = fadd fast float %8266, -5.000000e-01
  %8269 = call float @dx.op.unary.f32(i32 22, float %8267)  ; Frc(value)
  %8270 = call float @dx.op.unary.f32(i32 22, float %8268)  ; Frc(value)
  %8271 = fmul fast float %8269, %8269
  %8272 = fmul fast float %8271, %8269
  %8273 = fsub fast float 3.000000e+00, %8269
  %8274 = fmul fast float %8271, %8273
  %8275 = fmul fast float %8269, 3.000000e+00
  %8276 = fmul fast float %8272, 3.000000e+00
  %8277 = fmul fast float %8271, 6.000000e+00
  %8278 = fsub fast float %8276, %8277
  %8279 = fadd fast float %8278, 4.000000e+00
  %8280 = fmul fast float %8279, 0x3FC5555560000000
  %8281 = fmul fast float %8272, -3.000000e+00
  %8282 = fadd fast float %8271, %8269
  %8283 = fmul fast float %8282, 3.000000e+00
  %8284 = fadd fast float %8281, 1.000000e+00
  %8285 = fadd fast float %8284, %8283
  %8286 = fmul fast float %8272, 0x3FC5555560000000
  %8287 = fmul fast float %8270, %8270
  %8288 = fmul fast float %8287, %8270
  %8289 = fsub fast float 3.000000e+00, %8270
  %8290 = fmul fast float %8287, %8289
  %8291 = fmul fast float %8270, 3.000000e+00
  %8292 = fmul fast float %8288, 3.000000e+00
  %8293 = fmul fast float %8287, 6.000000e+00
  %8294 = fsub fast float %8292, %8293
  %8295 = fadd fast float %8294, 4.000000e+00
  %8296 = fmul fast float %8295, 0x3FC5555560000000
  %8297 = fmul fast float %8288, -3.000000e+00
  %8298 = fadd fast float %8287, %8270
  %8299 = fmul fast float %8298, 3.000000e+00
  %8300 = fadd fast float %8297, 1.000000e+00
  %8301 = fadd fast float %8300, %8299
  %8302 = fmul fast float %8288, 0x3FC5555560000000
  %8303 = fadd fast float %8269, 1.000000e+00
  %8304 = fsub fast float 1.000000e+00, %8275
  %8305 = fadd fast float %8304, %8274
  %8306 = fadd fast float %8305, %8279
  %8307 = fmul fast float %8306, 0x3FC5555560000000
  %8308 = fdiv fast float %8280, %8307
  %8309 = fsub fast float %8303, %8308
  %8310 = fsub fast float 1.000000e+00, %8269
  %8311 = fadd fast float %8285, %8272
  %8312 = fmul fast float %8311, 0x3FC5555560000000
  %8313 = fdiv fast float %8286, %8312
  %8314 = fadd fast float %8310, %8313
  %8315 = fadd fast float %8270, 1.000000e+00
  %8316 = fsub fast float 1.000000e+00, %8291
  %8317 = fadd fast float %8316, %8290
  %8318 = fadd fast float %8317, %8295
  %8319 = fmul fast float %8318, 0x3FC5555560000000
  %8320 = fdiv fast float %8296, %8319
  %8321 = fsub fast float %8315, %8320
  %8322 = fsub fast float 1.000000e+00, %8270
  %8323 = fadd fast float %8301, %8288
  %8324 = fmul fast float %8323, 0x3FC5555560000000
  %8325 = fdiv fast float %8302, %8324
  %8326 = fadd fast float %8325, %8322
  %8327 = fmul fast float %8309, %8263
  %8328 = fsub fast float %8184, %8327
  %8329 = fmul fast float %8314, %8263
  %8330 = fadd fast float %8329, %8184
  %8331 = fmul fast float %8326, %8264
  %8332 = fadd fast float %8331, %8185
  %8333 = fmul fast float %8321, %8264
  %8334 = fsub fast float %8185, %8333
  %8335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8328, float %8334, float %8252, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8336 = extractvalue %dx.types.ResRet.f32 %8335, 0
  %8337 = extractvalue %dx.types.ResRet.f32 %8335, 1
  %8338 = extractvalue %dx.types.ResRet.f32 %8335, 2
  %8339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8330, float %8334, float %8252, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8340 = extractvalue %dx.types.ResRet.f32 %8339, 0
  %8341 = extractvalue %dx.types.ResRet.f32 %8339, 1
  %8342 = extractvalue %dx.types.ResRet.f32 %8339, 2
  %8343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8328, float %8332, float %8252, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8344 = extractvalue %dx.types.ResRet.f32 %8343, 0
  %8345 = extractvalue %dx.types.ResRet.f32 %8343, 1
  %8346 = extractvalue %dx.types.ResRet.f32 %8343, 2
  %8347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8330, float %8332, float %8252, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8348 = extractvalue %dx.types.ResRet.f32 %8347, 0
  %8349 = extractvalue %dx.types.ResRet.f32 %8347, 1
  %8350 = extractvalue %dx.types.ResRet.f32 %8347, 2
  %8351 = fsub fast float %8344, %8336
  %8352 = fsub fast float %8345, %8337
  %8353 = fsub fast float %8346, %8338
  %8354 = fmul fast float %8351, %8324
  %8355 = fmul fast float %8352, %8324
  %8356 = fmul fast float %8353, %8324
  %8357 = fadd fast float %8354, %8336
  %8358 = fadd fast float %8355, %8337
  %8359 = fadd fast float %8356, %8338
  %8360 = fsub fast float %8348, %8340
  %8361 = fsub fast float %8349, %8341
  %8362 = fsub fast float %8350, %8342
  %8363 = fmul fast float %8360, %8324
  %8364 = fmul fast float %8361, %8324
  %8365 = fmul fast float %8362, %8324
  %8366 = fsub fast float %8340, %8357
  %8367 = fadd fast float %8366, %8363
  %8368 = fsub fast float %8341, %8358
  %8369 = fadd fast float %8368, %8364
  %8370 = fsub fast float %8342, %8359
  %8371 = fadd fast float %8370, %8365
  %8372 = fmul fast float %8367, %8312
  %8373 = fmul fast float %8369, %8312
  %8374 = fmul fast float %8371, %8312
  %8375 = fadd fast float %8372, %8357
  %8376 = fadd fast float %8373, %8358
  %8377 = fadd fast float %8374, %8359
  %8378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8379 = extractvalue %dx.types.CBufRet.f32 %8378, 1
  %8380 = fmul fast float %8375, %8379
  %8381 = fmul fast float %8376, %8379
  %8382 = fmul fast float %8377, %8379
  br label %8383

; <label>:8383                                    ; preds = %8214, %8171
  %8384 = phi float [ %8254, %8214 ], [ 1.000000e+00, %8171 ]
  %8385 = phi float [ %8255, %8214 ], [ 1.000000e+00, %8171 ]
  %8386 = phi float [ %8256, %8214 ], [ 1.000000e+00, %8171 ]
  %8387 = phi float [ %8380, %8214 ], [ 0.000000e+00, %8171 ]
  %8388 = phi float [ %8381, %8214 ], [ 0.000000e+00, %8171 ]
  %8389 = phi float [ %8382, %8214 ], [ 0.000000e+00, %8171 ]
  %8390 = fmul fast float %8387, %6733
  %8391 = fmul fast float %8388, %6734
  %8392 = fmul fast float %8389, %6735
  %8393 = fmul fast float %8384, %8178
  %8394 = call float @dx.op.dot3.f32(i32 55, float %8384, float %8385, float %8386, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8395 = call float @dx.op.dot3.f32(i32 55, float %8390, float %8391, float %8392, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8396 = select i1 %282, float %8394, float %8384
  %8397 = select i1 %282, float %8394, float %8385
  %8398 = select i1 %282, float 1.000000e+00, float %8386
  %8399 = select i1 %282, float %8395, float %8390
  %8400 = select i1 %282, float 0.000000e+00, float %8391
  %8401 = select i1 %282, float 0.000000e+00, float %8392
  %8402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.i32 %8402, 3
  %8404 = and i32 %8403, 3
  %8405 = icmp ne i32 %8404, 0
  %8406 = and i32 %8403, 4
  %8407 = icmp ne i32 %8406, 0
  %8408 = and i1 %8405, %8407
  %8409 = and i1 %282, %8408
  br i1 %8409, label %8410, label %8416

; <label>:8410                                    ; preds = %8383
  %8411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8411, 1
  %8413 = fadd fast float %8393, -1.000000e+00
  %8414 = fmul fast float %8412, %8413
  %8415 = fadd fast float %8414, 1.000000e+00
  br label %8416

; <label>:8416                                    ; preds = %8410, %8383
  %8417 = phi float [ %8415, %8410 ], [ %8393, %8383 ]
  %8418 = fadd fast float %8175, %8172
  %8419 = fmul fast float %8396, %8418
  %8420 = fadd fast float %8419, %8399
  %8421 = fadd fast float %8176, %8173
  %8422 = fmul fast float %8397, %8421
  %8423 = fadd fast float %8422, %8400
  %8424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8425 = extractvalue %dx.types.CBufRet.f32 %8424, 0
  br i1 %282, label %8426, label %8441

; <label>:8426                                    ; preds = %8416
  %8427 = fadd fast float %8420, %8423
  %8428 = fmul fast float %8425, %8427
  %8429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8430 = extractvalue %dx.types.CBufRet.f32 %8429, 3
  %8431 = extractvalue %dx.types.CBufRet.f32 %6717, 1
  %8432 = fsub fast float %6722, %6716
  %8433 = fadd fast float %8432, %6723
  %8434 = fsub fast float %8433, %8431
  %8435 = extractvalue %dx.types.CBufRet.f32 %6717, 2
  %8436 = fmul fast float %8434, %8435
  %8437 = call float @dx.op.unary.f32(i32 7, float %8436)  ; Saturate(value)
  %8438 = fsub fast float %8437, %8430
  %8439 = fmul fast float %8438, %8417
  %8440 = fadd fast float %8439, %8430
  br label %8467

; <label>:8441                                    ; preds = %8416
  %8442 = fadd fast float %8177, %8174
  %8443 = fmul fast float %8398, %8442
  %8444 = fadd fast float %8443, %8401
  %8445 = fmul fast float %8425, %8420
  %8446 = fmul fast float %8425, %8423
  %8447 = fmul fast float %8425, %8444
  %8448 = call float @dx.op.binary.f32(i32 35, float %8446, float %8447)  ; FMax(a,b)
  %8449 = call float @dx.op.binary.f32(i32 35, float %8445, float %8448)  ; FMax(a,b)
  %8450 = call float @dx.op.binary.f32(i32 35, float %6734, float %6735)  ; FMax(a,b)
  %8451 = call float @dx.op.binary.f32(i32 35, float %6733, float %8450)  ; FMax(a,b)
  %8452 = call float @dx.op.binary.f32(i32 35, float %8449, float %8451)  ; FMax(a,b)
  %8453 = fcmp fast ugt float %8452, 0x3F10000000000000
  br i1 %8453, label %8455, label %8454

; <label>:8454                                    ; preds = %8441
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8455

; <label>:8455                                    ; preds = %8454, %8441
  %8456 = add i32 %43, 356
  %8457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %8456, i32 undef)  ; BufferLoad(srv,index,wot)
  %8458 = extractvalue %dx.types.ResRet.i32 %8457, 0
  %8459 = and i32 %8458, 32
  %8460 = icmp eq i32 %8459, 0
  br i1 %8460, label %8467, label %8461

; <label>:8461                                    ; preds = %8455
  %8462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8463 = extractvalue %dx.types.CBufRet.f32 %8462, 0
  %8464 = fmul fast float %8463, 0x3FE99999A0000000
  %8465 = fadd fast float %8463, %8445
  %8466 = fadd fast float %8464, %8447
  br label %8467

; <label>:8467                                    ; preds = %8461, %8455, %8426
  %8468 = phi float [ 1.000000e+00, %8426 ], [ %6734, %8461 ], [ %6734, %8455 ]
  %8469 = phi float [ 1.000000e+00, %8426 ], [ %6735, %8461 ], [ %6735, %8455 ]
  %8470 = phi float [ %8428, %8426 ], [ %8465, %8461 ], [ %8445, %8455 ]
  %8471 = phi float [ %8440, %8426 ], [ %8446, %8461 ], [ %8446, %8455 ]
  %8472 = phi float [ 1.000000e+00, %8426 ], [ %8466, %8461 ], [ %8447, %8455 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8473 = call float @dx.op.binary.f32(i32 36, float %8470, float 3.225500e+04)  ; FMin(a,b)
  %8474 = call float @dx.op.binary.f32(i32 36, float %8471, float 3.225500e+04)  ; FMin(a,b)
  %8475 = call float @dx.op.binary.f32(i32 36, float %8472, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8473)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8474)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8475)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8476 = call float @dx.op.binary.f32(i32 36, float %6733, float 3.225500e+04)  ; FMin(a,b)
  %8477 = call float @dx.op.binary.f32(i32 36, float %8468, float 3.225500e+04)  ; FMin(a,b)
  %8478 = call float @dx.op.binary.f32(i32 36, float %8469, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8476)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8477)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8478)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!55 = !{[62 x i32] [i32 60, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!56 = !{void ()* @ps_main, !"ps_main", !57, !4, !85}
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
!81 = !{!82, !83}
!82 = !{i32 0, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!83 = !{i32 1, !"SV_Target", i8 9, i8 16, !84, i8 0, i32 1, i8 4, i32 1, i8 0, !61}
!84 = !{i32 1}
!85 = !{i32 0, i64 16}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = !{!92, !92, i64 0}
!92 = !{!"int", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !{!96, !98, !100, !102}
!96 = distinct !{!96, !97, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!97 = distinct !{!97, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!98 = distinct !{!98, !99, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!99 = distinct !{!99, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!100 = distinct !{!100, !101, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!101 = distinct !{!101, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!102 = distinct !{!102, !103, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!103 = distinct !{!103, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = !{!114, !114, i64 0}
!114 = !{!"float", !93, i64 0}
!115 = !{!116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!116 = distinct !{!116, !117, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!117 = distinct !{!117, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!118 = distinct !{!118, !119, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!119 = distinct !{!119, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!120 = distinct !{!120, !119, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!121 = distinct !{!121, !122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!122 = distinct !{!122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!123 = distinct !{!123, !122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!124 = distinct !{!124, !122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!125 = distinct !{!125, !126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!126 = distinct !{!126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!127 = distinct !{!127, !126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!128 = distinct !{!128, !126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!129 = distinct !{!129, !130, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!130 = distinct !{!130, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"\01?sort@@YAXAIAM00@Z: %c"}
!133 = distinct !{!133, !"\01?sort@@YAXAIAM00@Z"}
!134 = !{!135, !136, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!135 = distinct !{!135, !133, !"\01?sort@@YAXAIAM00@Z: %a"}
!136 = distinct !{!136, !133, !"\01?sort@@YAXAIAM00@Z: %b"}
!137 = !{!136}
!138 = !{!135, !132, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!139 = !{!135}
!140 = !{!136, !132, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!141 = !{!142}
!142 = distinct !{!142, !143, !"\01?sort@@YAXAIAM00@Z: %c"}
!143 = distinct !{!143, !"\01?sort@@YAXAIAM00@Z"}
!144 = !{!145, !146, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!145 = distinct !{!145, !143, !"\01?sort@@YAXAIAM00@Z: %a"}
!146 = distinct !{!146, !143, !"\01?sort@@YAXAIAM00@Z: %b"}
!147 = !{!146}
!148 = !{!145, !142, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!149 = !{!145}
!150 = !{!146, !142, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 2}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}

