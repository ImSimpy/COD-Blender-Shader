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
; shader hash: ebe76e12a40ea3849f5e5b1b06d195b2
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
  %4016 = and i32 %184, 65535
  %4017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4016)  ; LegacyF16ToF32(value)
  %4018 = lshr i32 %184, 16
  %4019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4018)  ; LegacyF16ToF32(value)
  %4020 = and i32 %185, 65535
  %4021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4020)  ; LegacyF16ToF32(value)
  %4022 = fmul fast float %4017, %3978
  %4023 = fmul fast float %4019, %3979
  %4024 = fmul fast float %4021, %3980
  %4025 = shl i32 %186, 4
  %4026 = and i32 %4025, 32752
  %4027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4026)  ; LegacyF16ToF32(value)
  %4028 = lshr i32 %186, 7
  %4029 = and i32 %4028, 32752
  %4030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4029)  ; LegacyF16ToF32(value)
  %4031 = lshr i32 %186, 22
  %4032 = shl nuw nsw i32 %4031, 5
  %4033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4032)  ; LegacyF16ToF32(value)
  %4034 = and i32 %187, 65535
  %4035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4034)  ; LegacyF16ToF32(value)
  %4036 = fmul fast float %4027, %3981
  %4037 = fmul fast float %4036, %4035
  %4038 = fmul fast float %4030, %3982
  %4039 = fmul fast float %4038, %4035
  %4040 = fmul fast float %4033, %3983
  %4041 = fmul fast float %4040, %4035
  %4042 = call float @dx.op.dot2.f32(i32 54, float %3976, float %3977, float %3976, float %3977)  ; Dot2(ax,ay,bx,by)
  %4043 = fmul fast float %4042, 0x3FE3333340000000
  %4044 = fsub fast float 1.000000e+00, %4043
  %4045 = call float @dx.op.dot3.f32(i32 55, float %3976, float %3977, float %4044, float %3976, float %3977, float %4044)  ; Dot3(ax,ay,az,bx,by,bz)
  %4046 = call float @dx.op.unary.f32(i32 25, float %4045)  ; Rsqrt(value)
  %4047 = fmul fast float %4046, %3976
  %4048 = fmul fast float %4046, %3977
  %4049 = fmul fast float %4044, %4046
  %4050 = fmul fast float %4049, %106
  %4051 = fmul fast float %4049, %107
  %4052 = fmul fast float %4049, %108
  %4053 = fmul fast float %4047, %74
  %4054 = fmul fast float %4047, %75
  %4055 = fmul fast float %4047, %76
  %4056 = fadd fast float %4050, %4053
  %4057 = fadd fast float %4051, %4054
  %4058 = fadd fast float %4052, %4055
  %4059 = fmul fast float %118, %4048
  %4060 = fmul fast float %119, %4048
  %4061 = fmul fast float %120, %4048
  %4062 = fadd fast float %4056, %4059
  %4063 = fadd fast float %4057, %4060
  %4064 = fadd fast float %4058, %4061
  %4065 = call float @dx.op.dot3.f32(i32 55, float %4062, float %4063, float %4064, float %4062, float %4063, float %4064)  ; Dot3(ax,ay,az,bx,by,bz)
  %4066 = call float @dx.op.unary.f32(i32 25, float %4065)  ; Rsqrt(value)
  %4067 = fmul fast float %4062, %4066
  %4068 = fmul fast float %4063, %4066
  %4069 = fmul fast float %4064, %4066
  %4070 = icmp eq i32 %45, 65535
  br i1 %4070, label %4669, label %4071

; <label>:4071                                    ; preds = %3975
  %4072 = call float @dx.op.unary.f32(i32 83, float %46)  ; DerivCoarseX(value)
  %4073 = call float @dx.op.unary.f32(i32 83, float %47)  ; DerivCoarseX(value)
  %4074 = call float @dx.op.unary.f32(i32 83, float %48)  ; DerivCoarseX(value)
  %4075 = call float @dx.op.unary.f32(i32 84, float %46)  ; DerivCoarseY(value)
  %4076 = call float @dx.op.unary.f32(i32 84, float %47)  ; DerivCoarseY(value)
  %4077 = call float @dx.op.unary.f32(i32 84, float %48)  ; DerivCoarseY(value)
  %4078 = fadd fast float %4072, %46
  %4079 = fadd fast float %4073, %47
  %4080 = fadd fast float %4074, %48
  %4081 = fadd fast float %4075, %46
  %4082 = fadd fast float %4076, %47
  %4083 = fadd fast float %4077, %48
  %4084 = mul i32 %45, 48
  %4085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4084, i32 undef)  ; BufferLoad(srv,index,wot)
  %4086 = extractvalue %dx.types.ResRet.f32 %4085, 0
  %4087 = extractvalue %dx.types.ResRet.f32 %4085, 1
  %4088 = extractvalue %dx.types.ResRet.f32 %4085, 2
  %4089 = add i32 %4084, 16
  %4090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.f32 %4090, 0
  %4092 = extractvalue %dx.types.ResRet.f32 %4090, 1
  %4093 = extractvalue %dx.types.ResRet.f32 %4090, 2
  %4094 = add i32 %4084, 32
  %4095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = extractvalue %dx.types.ResRet.f32 %4095, 1
  %4098 = extractvalue %dx.types.ResRet.f32 %4095, 2
  %4099 = extractvalue %dx.types.ResRet.f32 %4095, 3
  %4100 = bitcast float %4099 to i32
  %4101 = fmul fast float %4086, %46
  %4102 = fmul fast float %4087, %47
  %4103 = fmul fast float %4088, %48
  %4104 = fsub fast float %4101, %4091
  %4105 = fsub fast float %4102, %4092
  %4106 = fsub fast float %4103, %4093
  %4107 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  %4108 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4109 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4110 = fmul fast float %4107, %4096
  %4111 = fmul fast float %4108, %4097
  %4112 = fmul fast float %4109, %4098
  %4113 = fadd fast float %4096, -1.000000e+00
  %4114 = fadd fast float %4097, -1.000000e+00
  %4115 = fadd fast float %4098, -1.000000e+00
  %4116 = call float @dx.op.unary.f32(i32 27, float %4110)  ; Round_ni(value)
  %4117 = call float @dx.op.unary.f32(i32 27, float %4111)  ; Round_ni(value)
  %4118 = call float @dx.op.unary.f32(i32 27, float %4112)  ; Round_ni(value)
  %4119 = call float @dx.op.binary.f32(i32 36, float %4116, float %4113)  ; FMin(a,b)
  %4120 = call float @dx.op.binary.f32(i32 36, float %4117, float %4114)  ; FMin(a,b)
  %4121 = call float @dx.op.binary.f32(i32 36, float %4118, float %4115)  ; FMin(a,b)
  %4122 = fmul fast float %4121, %4097
  %4123 = fadd fast float %4122, %4120
  %4124 = fmul fast float %4123, %4096
  %4125 = fadd fast float %4124, %4119
  %4126 = fptosi float %4125 to i32
  %4127 = add nsw i32 %4126, %4100
  %4128 = shl nsw i32 %4127, 2
  %4129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4128, i32 undef)  ; BufferLoad(srv,index,wot)
  %4130 = extractvalue %dx.types.ResRet.i32 %4129, 0
  %4131 = lshr i32 %4130, 16
  %4132 = icmp eq i32 %4131, 0
  br i1 %4132, label %4632, label %4133

; <label>:4133                                    ; preds = %4071
  br label %4134

; <label>:4134                                    ; preds = %4261, %4133
  %4135 = phi i32 [ %4163, %4261 ], [ %4131, %4133 ]
  %4136 = phi float [ %4262, %4261 ], [ 0.000000e+00, %4133 ]
  %4137 = phi float [ %4263, %4261 ], [ %4015, %4133 ]
  %4138 = phi float [ %4264, %4261 ], [ %3994, %4133 ]
  %4139 = phi float [ %4265, %4261 ], [ %3984, %4133 ]
  %4140 = phi float [ %4266, %4261 ], [ %3985, %4133 ]
  %4141 = phi float [ %4267, %4261 ], [ %3986, %4133 ]
  %4142 = phi float [ %4268, %4261 ], [ 0.000000e+00, %4133 ]
  %4143 = phi float [ %4269, %4261 ], [ 0.000000e+00, %4133 ]
  %4144 = phi float [ %4270, %4261 ], [ %3987, %4133 ]
  %4145 = phi float [ %4271, %4261 ], [ %3988, %4133 ]
  %4146 = phi float [ %4272, %4261 ], [ %3989, %4133 ]
  %4147 = phi float [ %4273, %4261 ], [ %4037, %4133 ]
  %4148 = phi float [ %4274, %4261 ], [ %4039, %4133 ]
  %4149 = phi float [ %4275, %4261 ], [ %4041, %4133 ]
  %4150 = phi float [ %4276, %4261 ], [ %4067, %4133 ]
  %4151 = phi float [ %4277, %4261 ], [ %4068, %4133 ]
  %4152 = phi float [ %4278, %4261 ], [ %4069, %4133 ]
  %4153 = phi float [ %4279, %4261 ], [ %3992, %4133 ]
  %4154 = phi float [ %4280, %4261 ], [ %3991, %4133 ]
  %4155 = phi float [ %4281, %4261 ], [ 0.000000e+00, %4133 ]
  %4156 = phi float [ %4282, %4261 ], [ %3990, %4133 ]
  %4157 = phi float [ %4283, %4261 ], [ %4022, %4133 ]
  %4158 = phi float [ %4284, %4261 ], [ %4023, %4133 ]
  %4159 = phi float [ %4285, %4261 ], [ %4024, %4133 ]
  %4160 = shl nuw nsw i32 %4135, 2
  %4161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4160, i32 undef)  ; BufferLoad(srv,index,wot)
  %4162 = extractvalue %dx.types.ResRet.i32 %4161, 0
  %4163 = lshr i32 %4162, 16
  %4164 = shl i32 %4162, 8
  %4165 = and i32 %4164, 16776960
  %4166 = or i32 %4165, 48
  %4167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4166, i32 undef)  ; BufferLoad(srv,index,wot)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.ResRet.f32 %4167, 1
  %4170 = extractvalue %dx.types.ResRet.f32 %4167, 2
  %4171 = or i32 %4165, 64
  %4172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4171, i32 undef)  ; BufferLoad(srv,index,wot)
  %4173 = extractvalue %dx.types.ResRet.i32 %4172, 0
  %4174 = extractvalue %dx.types.ResRet.i32 %4172, 1
  %4175 = or i32 %4165, 80
  %4176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4175, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.f32 %4176, 2
  %4178 = extractvalue %dx.types.ResRet.f32 %4176, 3
  %4179 = or i32 %4165, 96
  %4180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4179, i32 undef)  ; BufferLoad(srv,index,wot)
  %4181 = extractvalue %dx.types.ResRet.f32 %4180, 0
  %4182 = extractvalue %dx.types.ResRet.f32 %4180, 1
  %4183 = extractvalue %dx.types.ResRet.f32 %4180, 2
  %4184 = extractvalue %dx.types.ResRet.f32 %4180, 3
  %4185 = or i32 %4165, 112
  %4186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4185, i32 undef)  ; BufferLoad(srv,index,wot)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 2
  %4188 = or i32 %4165, 128
  %4189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4188, i32 undef)  ; BufferLoad(srv,index,wot)
  %4190 = extractvalue %dx.types.ResRet.f32 %4189, 0
  %4191 = extractvalue %dx.types.ResRet.f32 %4189, 1
  %4192 = extractvalue %dx.types.ResRet.f32 %4189, 2
  %4193 = extractvalue %dx.types.ResRet.f32 %4189, 3
  %4194 = or i32 %4165, 144
  %4195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4194, i32 undef)  ; BufferLoad(srv,index,wot)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.ResRet.f32 %4195, 1
  %4198 = extractvalue %dx.types.ResRet.f32 %4195, 2
  %4199 = extractvalue %dx.types.ResRet.f32 %4195, 3
  %4200 = or i32 %4165, 160
  %4201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4200, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.f32 %4201, 0
  %4203 = extractvalue %dx.types.ResRet.f32 %4201, 1
  %4204 = extractvalue %dx.types.ResRet.f32 %4201, 2
  %4205 = extractvalue %dx.types.ResRet.f32 %4201, 3
  %4206 = or i32 %4165, 192
  %4207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.i32 %4207, 0
  %4209 = or i32 %4165, 208
  %4210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4209, i32 undef)  ; BufferLoad(srv,index,wot)
  %4211 = extractvalue %dx.types.ResRet.f32 %4210, 0
  %4212 = or i32 %4165, 248
  %4213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = extractvalue %dx.types.ResRet.f32 %4213, 1
  %4216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4165, i32 undef)  ; BufferLoad(srv,index,wot)
  %4217 = extractvalue %dx.types.ResRet.f32 %4216, 0
  %4218 = extractvalue %dx.types.ResRet.f32 %4216, 1
  %4219 = extractvalue %dx.types.ResRet.f32 %4216, 2
  %4220 = extractvalue %dx.types.ResRet.f32 %4216, 3
  %4221 = call float @dx.op.dot4.f32(i32 56, float %4217, float %4218, float %4219, float %4220, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4222 = or i32 %4165, 16
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = extractvalue %dx.types.ResRet.f32 %4223, 1
  %4226 = extractvalue %dx.types.ResRet.f32 %4223, 2
  %4227 = extractvalue %dx.types.ResRet.f32 %4223, 3
  %4228 = call float @dx.op.dot4.f32(i32 56, float %4224, float %4225, float %4226, float %4227, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4229 = or i32 %4165, 32
  %4230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4229, i32 undef)  ; BufferLoad(srv,index,wot)
  %4231 = extractvalue %dx.types.ResRet.f32 %4230, 0
  %4232 = extractvalue %dx.types.ResRet.f32 %4230, 1
  %4233 = extractvalue %dx.types.ResRet.f32 %4230, 2
  %4234 = extractvalue %dx.types.ResRet.f32 %4230, 3
  %4235 = call float @dx.op.dot4.f32(i32 56, float %4231, float %4232, float %4233, float %4234, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4236 = call float @dx.op.unary.f32(i32 27, float %4221)  ; Round_ni(value)
  %4237 = call float @dx.op.unary.f32(i32 6, float %4236)  ; FAbs(value)
  %4238 = call float @dx.op.unary.f32(i32 27, float %4228)  ; Round_ni(value)
  %4239 = call float @dx.op.unary.f32(i32 6, float %4238)  ; FAbs(value)
  %4240 = call float @dx.op.unary.f32(i32 6, float %4235)  ; FAbs(value)
  %4241 = call float @dx.op.unary.f32(i32 27, float %4240)  ; Round_ni(value)
  %4242 = fadd fast float %4239, %4237
  %4243 = fadd fast float %4242, %4241
  %4244 = fcmp fast oeq float %4243, 0.000000e+00
  %4245 = call float @dx.op.dot4.f32(i32 56, float %4217, float %4218, float %4219, float %4220, float %4078, float %4079, float %4080, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4246 = call float @dx.op.dot4.f32(i32 56, float %4224, float %4225, float %4226, float %4227, float %4078, float %4079, float %4080, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4247 = call float @dx.op.dot4.f32(i32 56, float %4217, float %4218, float %4219, float %4220, float %4081, float %4082, float %4083, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4248 = call float @dx.op.dot4.f32(i32 56, float %4224, float %4225, float %4226, float %4227, float %4081, float %4082, float %4083, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4249 = fsub fast float %4245, %4221
  %4250 = fsub fast float %4247, %4221
  %4251 = fsub fast float %4246, %4228
  %4252 = fsub fast float %4248, %4228
  %4253 = call float @dx.op.dot3.f32(i32 55, float %4168, float %4169, float %4170, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %4254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4255 = extractvalue %dx.types.CBufRet.f32 %4254, 2
  %4256 = fadd fast float %4255, %4253
  %4257 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4258 = extractvalue %dx.types.CBufRet.f32 %4254, 0
  %4259 = fcmp fast ogt float %4257, %4258
  %4260 = and i1 %4244, %4259
  br i1 %4260, label %4287, label %4261

; <label>:4261                                    ; preds = %4618, %4370, %4287, %4134
  %4262 = phi float [ %4136, %4287 ], [ %4373, %4370 ], [ %4373, %4618 ], [ %4136, %4134 ]
  %4263 = phi float [ %4137, %4287 ], [ %4137, %4370 ], [ %4594, %4618 ], [ %4137, %4134 ]
  %4264 = phi float [ %4138, %4287 ], [ %4138, %4370 ], [ %4592, %4618 ], [ %4138, %4134 ]
  %4265 = phi float [ %4139, %4287 ], [ %4139, %4370 ], [ %4570, %4618 ], [ %4139, %4134 ]
  %4266 = phi float [ %4140, %4287 ], [ %4140, %4370 ], [ %4571, %4618 ], [ %4140, %4134 ]
  %4267 = phi float [ %4141, %4287 ], [ %4141, %4370 ], [ %4572, %4618 ], [ %4141, %4134 ]
  %4268 = phi float [ %4142, %4287 ], [ %4142, %4370 ], [ %4497, %4618 ], [ %4142, %4134 ]
  %4269 = phi float [ %4143, %4287 ], [ %4143, %4370 ], [ %4495, %4618 ], [ %4143, %4134 ]
  %4270 = phi float [ %4144, %4287 ], [ %4144, %4370 ], [ %4540, %4618 ], [ %4144, %4134 ]
  %4271 = phi float [ %4145, %4287 ], [ %4145, %4370 ], [ %4541, %4618 ], [ %4145, %4134 ]
  %4272 = phi float [ %4146, %4287 ], [ %4146, %4370 ], [ %4542, %4618 ], [ %4146, %4134 ]
  %4273 = phi float [ %4147, %4287 ], [ %4147, %4370 ], [ %4628, %4618 ], [ %4147, %4134 ]
  %4274 = phi float [ %4148, %4287 ], [ %4148, %4370 ], [ %4629, %4618 ], [ %4148, %4134 ]
  %4275 = phi float [ %4149, %4287 ], [ %4149, %4370 ], [ %4630, %4618 ], [ %4149, %4134 ]
  %4276 = phi float [ %4150, %4287 ], [ %4150, %4370 ], [ %4476, %4618 ], [ %4150, %4134 ]
  %4277 = phi float [ %4151, %4287 ], [ %4151, %4370 ], [ %4477, %4618 ], [ %4151, %4134 ]
  %4278 = phi float [ %4152, %4287 ], [ %4152, %4370 ], [ %4478, %4618 ], [ %4152, %4134 ]
  %4279 = phi float [ %4153, %4287 ], [ %4153, %4370 ], [ %4550, %4618 ], [ %4153, %4134 ]
  %4280 = phi float [ %4154, %4287 ], [ %4154, %4370 ], [ %4547, %4618 ], [ %4154, %4134 ]
  %4281 = phi float [ %4155, %4287 ], [ %4155, %4370 ], [ %4544, %4618 ], [ %4155, %4134 ]
  %4282 = phi float [ %4156, %4287 ], [ %4156, %4370 ], [ %4493, %4618 ], [ %4156, %4134 ]
  %4283 = phi float [ %4157, %4287 ], [ %4157, %4370 ], [ %4488, %4618 ], [ %4157, %4134 ]
  %4284 = phi float [ %4158, %4287 ], [ %4158, %4370 ], [ %4489, %4618 ], [ %4158, %4134 ]
  %4285 = phi float [ %4159, %4287 ], [ %4159, %4370 ], [ %4490, %4618 ], [ %4159, %4134 ]
  %4286 = icmp eq i32 %4163, 0
  br i1 %4286, label %4631, label %4134

; <label>:4287                                    ; preds = %4134
  %4288 = extractvalue %dx.types.ResRet.f32 %4167, 3
  %4289 = extractvalue %dx.types.ResRet.f32 %4186, 3
  %4290 = extractvalue %dx.types.ResRet.f32 %4186, 1
  %4291 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4292 = extractvalue %dx.types.ResRet.f32 %4176, 1
  %4293 = extractvalue %dx.types.ResRet.f32 %4176, 0
  %4294 = extractvalue %dx.types.ResRet.i32 %4172, 3
  %4295 = extractvalue %dx.types.ResRet.i32 %4172, 2
  %4296 = bitcast float %4288 to i32
  %4297 = add i32 %4294, 0
  %4298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4297, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4300 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4298, %dx.types.Handle %4299, float %4221, float %4228, float undef, float undef, i32 0, i32 0, i32 undef, float %4249, float %4251, float undef, float %4250, float %4252, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = fmul fast float %4301, %4293
  %4303 = fadd fast float %4302, %4292
  %4304 = call float @dx.op.unary.f32(i32 7, float %4303)  ; Saturate(value)
  %4305 = fmul fast float %4221, %4181
  %4306 = call float @dx.op.tertiary.f32(i32 46, float %4182, float %4228, float %4305)  ; FMad(a,b,c)
  %4307 = fadd fast float %4306, %4291
  %4308 = fmul fast float %4221, %4183
  %4309 = call float @dx.op.tertiary.f32(i32 46, float %4184, float %4228, float %4308)  ; FMad(a,b,c)
  %4310 = fadd fast float %4309, %4290
  %4311 = fmul fast float %4249, %4181
  %4312 = call float @dx.op.tertiary.f32(i32 46, float %4182, float %4251, float %4311)  ; FMad(a,b,c)
  %4313 = fmul fast float %4249, %4183
  %4314 = call float @dx.op.tertiary.f32(i32 46, float %4184, float %4251, float %4313)  ; FMad(a,b,c)
  %4315 = fmul fast float %4250, %4181
  %4316 = call float @dx.op.tertiary.f32(i32 46, float %4182, float %4252, float %4315)  ; FMad(a,b,c)
  %4317 = fmul fast float %4250, %4183
  %4318 = call float @dx.op.tertiary.f32(i32 46, float %4184, float %4252, float %4317)  ; FMad(a,b,c)
  %4319 = add i32 %4295, 0
  %4320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4319, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4321 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4320, %dx.types.Handle %4299, float %4307, float %4310, float undef, float undef, i32 0, i32 0, i32 undef, float %4312, float %4314, float undef, float %4316, float %4318, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = and i32 %4296, 1024
  %4324 = icmp ne i32 %4323, 0
  %4325 = fcmp fast ogt float %4322, 0x3FE0101020000000
  %4326 = uitofp i1 %4325 to float
  %4327 = select i1 %4324, float %4326, float %4322
  %4328 = and i32 %4296, 8192
  %4329 = icmp ne i32 %4328, 0
  %4330 = select i1 %4329, float %4289, float 1.000000e+00
  %4331 = fmul fast float %4221, 2.000000e+00
  %4332 = fadd fast float %4331, -1.000000e+00
  %4333 = call float @dx.op.unary.f32(i32 6, float %4332)  ; FAbs(value)
  %4334 = fmul fast float %4333, %4214
  %4335 = fsub fast float %4334, %4214
  %4336 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4337 = fmul fast float %4228, 2.000000e+00
  %4338 = fadd fast float %4337, -1.000000e+00
  %4339 = call float @dx.op.unary.f32(i32 6, float %4338)  ; FAbs(value)
  %4340 = fmul fast float %4339, %4215
  %4341 = fsub fast float %4340, %4215
  %4342 = call float @dx.op.unary.f32(i32 7, float %4341)  ; Saturate(value)
  %4343 = fmul fast float %4240, %4177
  %4344 = fsub fast float %4343, %4177
  %4345 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4346 = fmul fast float %4304, %4330
  %4347 = fmul fast float %4346, %4301
  %4348 = fmul fast float %4347, %4336
  %4349 = fmul fast float %4348, %4327
  %4350 = fmul fast float %4349, %4342
  %4351 = fmul fast float %4350, %4345
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 1
  %4354 = extractvalue %dx.types.CBufRet.f32 %4352, 0
  %4355 = fsub fast float %4257, %4354
  %4356 = fmul fast float %4355, %4353
  %4357 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4358 = fmul fast float %4351, %4178
  %4359 = fadd fast float %4351, %4178
  %4360 = fmul fast float %4359, %4187
  %4361 = fsub fast float %4360, %4187
  %4362 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4363 = and i32 %4296, 128
  %4364 = icmp ne i32 %4363, 0
  %4365 = select i1 %4364, float %4362, float %4358
  %4366 = fmul fast float %4365, %4357
  %4367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4367, 0
  %4369 = fcmp fast ugt float %4366, %4368
  br i1 %4369, label %4370, label %4261

; <label>:4370                                    ; preds = %4287
  %4371 = select i1 %4329, float %4366, float 0.000000e+00
  %4372 = fadd fast float %4371, %4136
  %4373 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  br i1 %4329, label %4261, label %4374

; <label>:4374                                    ; preds = %4370
  %4375 = and i32 %4296, 4
  %4376 = and i32 %4296, 8
  %4377 = add i32 %4173, 0
  %4378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4377, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4380 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4378, %dx.types.Handle %4379, float %4307, float %4310, float undef, float undef, i32 0, i32 0, i32 undef, float %4312, float %4314, float undef, float %4316, float %4318, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4381 = extractvalue %dx.types.ResRet.f32 %4380, 0
  %4382 = extractvalue %dx.types.ResRet.f32 %4380, 1
  %4383 = extractvalue %dx.types.ResRet.f32 %4380, 2
  %4384 = extractvalue %dx.types.ResRet.f32 %4380, 3
  %4385 = bitcast float %4199 to i32
  %4386 = and i32 %4385, 255
  %4387 = uitofp i32 %4386 to float
  %4388 = lshr i32 %4385, 8
  %4389 = and i32 %4388, 255
  %4390 = uitofp i32 %4389 to float
  %4391 = fmul fast float %4384, %4387
  %4392 = fadd fast float %4391, %4390
  %4393 = fmul fast float %4392, 0x3F70101000000000
  %4394 = add i32 %4174, 0
  %4395 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4394, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4396 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4395, %dx.types.Handle %4379, float %4307, float %4310, float undef, float undef, i32 0, i32 0, i32 undef, float %4312, float %4314, float undef, float %4316, float %4318, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4398 = extractvalue %dx.types.ResRet.f32 %4396, 1
  %4399 = extractvalue %dx.types.ResRet.f32 %4396, 2
  %4400 = extractvalue %dx.types.ResRet.f32 %4396, 3
  %4401 = bitcast float %4193 to i32
  %4402 = and i32 %4401, 255
  %4403 = uitofp i32 %4402 to float
  %4404 = lshr i32 %4401, 8
  %4405 = and i32 %4404, 255
  %4406 = uitofp i32 %4405 to float
  %4407 = lshr i32 %4401, 16
  %4408 = and i32 %4407, 255
  %4409 = uitofp i32 %4408 to float
  %4410 = fmul fast float %4409, 0x3F70101000000000
  %4411 = fmul fast float %4397, %4403
  %4412 = fadd fast float %4411, %4406
  %4413 = fmul fast float %4412, 0x3F70101000000000
  %4414 = fadd fast float %4398, -5.000000e-01
  %4415 = fadd fast float %4400, -5.000000e-01
  %4416 = fmul fast float %4414, %4410
  %4417 = fmul fast float %4415, %4410
  %4418 = fadd fast float %4416, 5.000000e-01
  %4419 = fadd fast float %4417, 5.000000e-01
  %4420 = fmul fast float %4381, %4202
  %4421 = fmul fast float %4382, %4203
  %4422 = fmul fast float %4383, %4204
  %4423 = fmul fast float %4418, 2.000000e+00
  %4424 = fadd fast float %4423, -1.000000e+00
  %4425 = fmul fast float %4419, 2.000000e+00
  %4426 = fadd fast float %4425, -1.000000e+00
  %4427 = fadd fast float %4424, %4426
  %4428 = fmul fast float %4427, 5.000000e-01
  %4429 = fsub fast float %4424, %4426
  %4430 = fmul fast float %4429, 5.000000e-01
  %4431 = call float @dx.op.unary.f32(i32 6, float %4428)  ; FAbs(value)
  %4432 = fsub fast float 1.000000e+00, %4431
  %4433 = call float @dx.op.unary.f32(i32 6, float %4430)  ; FAbs(value)
  %4434 = fsub fast float %4432, %4433
  %4435 = call float @dx.op.dot3.f32(i32 55, float %4428, float %4430, float %4434, float %4428, float %4430, float %4434)  ; Dot3(ax,ay,az,bx,by,bz)
  %4436 = call float @dx.op.unary.f32(i32 25, float %4435)  ; Rsqrt(value)
  %4437 = fmul fast float %4428, %4436
  %4438 = fmul fast float %4430, %4436
  %4439 = fmul fast float %4436, %4434
  %4440 = fmul fast float %4439, %4168
  %4441 = fmul fast float %4439, %4169
  %4442 = fmul fast float %4439, %4170
  %4443 = fmul fast float %4437, %4190
  %4444 = fmul fast float %4437, %4191
  %4445 = fmul fast float %4437, %4192
  %4446 = fadd fast float %4443, %4440
  %4447 = fadd fast float %4444, %4441
  %4448 = fadd fast float %4445, %4442
  %4449 = fmul fast float %4438, %4196
  %4450 = fmul fast float %4438, %4197
  %4451 = fmul fast float %4438, %4198
  %4452 = fadd fast float %4446, %4449
  %4453 = fadd fast float %4447, %4450
  %4454 = fadd fast float %4448, %4451
  %4455 = call float @dx.op.dot3.f32(i32 55, float %4452, float %4453, float %4454, float %4452, float %4453, float %4454)  ; Dot3(ax,ay,az,bx,by,bz)
  %4456 = call float @dx.op.unary.f32(i32 25, float %4455)  ; Rsqrt(value)
  %4457 = fmul fast float %4452, %4456
  %4458 = fmul fast float %4453, %4456
  %4459 = fmul fast float %4454, %4456
  %4460 = icmp ne i32 %4376, 0
  %4461 = select i1 %4460, float 1.000000e+00, float 0.000000e+00
  %4462 = fmul fast float %4366, %4461
  %4463 = and i32 %4296, 1
  %4464 = icmp eq i32 %4463, 0
  br i1 %4464, label %4465, label %4469

; <label>:4465                                    ; preds = %4374
  %4466 = fsub fast float %4457, %4150
  %4467 = fsub fast float %4458, %4151
  %4468 = fsub fast float %4459, %4152
  br label %4469

; <label>:4469                                    ; preds = %4465, %4374
  %4470 = phi float [ %4466, %4465 ], [ %4457, %4374 ]
  %4471 = phi float [ %4467, %4465 ], [ %4458, %4374 ]
  %4472 = phi float [ %4468, %4465 ], [ %4459, %4374 ]
  %4473 = fmul float %4472, %4462
  %4474 = fmul float %4471, %4462
  %4475 = fmul float %4470, %4462
  %4476 = fadd fast float %4475, %4150
  %4477 = fadd fast float %4474, %4151
  %4478 = fadd fast float %4473, %4152
  %4479 = icmp ne i32 %4375, 0
  %4480 = select i1 %4479, float 1.000000e+00, float 0.000000e+00
  %4481 = fmul fast float %4366, %4480
  %4482 = fsub fast float %4420, %4157
  %4483 = fsub fast float %4421, %4158
  %4484 = fsub fast float %4422, %4159
  %4485 = fmul fast float %4482, %4481
  %4486 = fmul fast float %4483, %4481
  %4487 = fmul fast float %4484, %4481
  %4488 = fadd fast float %4485, %4157
  %4489 = fadd fast float %4486, %4158
  %4490 = fadd fast float %4487, %4159
  %4491 = fsub fast float %4393, %4156
  %4492 = fmul fast float %4491, %4481
  %4493 = fadd fast float %4492, %4156
  %4494 = fmul fast float %4481, %4143
  %4495 = fsub fast float %4143, %4494
  %4496 = fmul fast float %4481, %4142
  %4497 = fsub fast float %4142, %4496
  %4498 = bitcast float %4211 to i32
  %4499 = lshr i32 %4498, 16
  %4500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4499)  ; LegacyF16ToF32(value)
  %4501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %4502 = extractvalue %dx.types.ResRet.i32 %4501, 0
  %4503 = and i32 %4502, 1
  %4504 = icmp eq i32 %4503, 0
  br i1 %4504, label %4505, label %4530

; <label>:4505                                    ; preds = %4469
  %4506 = fadd fast float %4393, 0xBFB99999A0000000
  %4507 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4508 = fmul fast float %4507, 0x3FF1C71C80000000
  %4509 = fsub fast float 1.000000e+00, %4508
  %4510 = call float @dx.op.unary.f32(i32 7, float %4509)  ; Saturate(value)
  %4511 = fmul fast float %4510, %4420
  %4512 = fmul fast float %4510, %4421
  %4513 = fmul fast float %4510, %4422
  %4514 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4515 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4516 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4517 = call float @dx.op.binary.f32(i32 35, float %4515, float %4516)  ; FMax(a,b)
  %4518 = call float @dx.op.binary.f32(i32 35, float %4514, float %4517)  ; FMax(a,b)
  %4519 = fcmp fast ogt float %4518, 0.000000e+00
  %4520 = bitcast float %4518 to i32
  %4521 = sub nsw i32 2129859010, %4520
  %4522 = bitcast i32 %4521 to float
  %4523 = select i1 %4519, float %4522, float 0.000000e+00
  %4524 = fmul fast float %4514, %4500
  %4525 = fmul fast float %4515, %4500
  %4526 = fmul fast float %4516, %4500
  %4527 = fmul fast float %4524, %4523
  %4528 = fmul fast float %4525, %4523
  %4529 = fmul fast float %4526, %4523
  br label %4530

; <label>:4530                                    ; preds = %4505, %4469
  %4531 = phi float [ %4500, %4469 ], [ %4527, %4505 ]
  %4532 = phi float [ %4500, %4469 ], [ %4528, %4505 ]
  %4533 = phi float [ %4500, %4469 ], [ %4529, %4505 ]
  %4534 = fsub fast float %4531, %4144
  %4535 = fsub fast float %4532, %4145
  %4536 = fsub fast float %4533, %4146
  %4537 = fmul fast float %4534, %4481
  %4538 = fmul fast float %4535, %4481
  %4539 = fmul fast float %4536, %4481
  %4540 = fadd fast float %4537, %4144
  %4541 = fadd fast float %4538, %4145
  %4542 = fadd fast float %4539, %4146
  %4543 = fadd fast float %4366, %4155
  %4544 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4545 = fsub fast float %4413, %4154
  %4546 = fmul fast float %4545, %4462
  %4547 = fadd fast float %4546, %4154
  %4548 = fsub fast float %4399, %4153
  %4549 = fmul fast float %4548, %4462
  %4550 = fadd fast float %4549, %4153
  br i1 %4464, label %4559, label %4551

; <label>:4551                                    ; preds = %4530
  %4552 = and i32 %4296, 32768
  %4553 = icmp eq i32 %4552, 0
  br i1 %4553, label %4569, label %4554

; <label>:4554                                    ; preds = %4551
  %4555 = fmul fast float %4462, 1.270000e+02
  %4556 = fadd fast float %4555, %4139
  %4557 = fadd fast float %4555, %4140
  %4558 = fadd fast float %4555, %4141
  br label %4569

; <label>:4559                                    ; preds = %4530
  %4560 = fsub fast float 1.270000e+02, %4139
  %4561 = fsub fast float 1.270000e+02, %4140
  %4562 = fsub fast float 1.270000e+02, %4141
  %4563 = fmul fast float %4462, %4560
  %4564 = fmul fast float %4462, %4561
  %4565 = fmul fast float %4462, %4562
  %4566 = fadd fast float %4563, %4139
  %4567 = fadd fast float %4564, %4140
  %4568 = fadd fast float %4565, %4141
  br label %4569

; <label>:4569                                    ; preds = %4559, %4554, %4551
  %4570 = phi float [ %4556, %4554 ], [ %4139, %4551 ], [ %4566, %4559 ]
  %4571 = phi float [ %4557, %4554 ], [ %4140, %4551 ], [ %4567, %4559 ]
  %4572 = phi float [ %4558, %4554 ], [ %4141, %4551 ], [ %4568, %4559 ]
  %4573 = call float @dx.op.dot3.f32(i32 55, float %4420, float %4421, float %4422, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4575 = extractvalue %dx.types.CBufRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.CBufRet.f32 %4574, 1
  %4577 = fmul fast float %4576, %4573
  %4578 = fadd fast float %4577, %4575
  %4579 = call float @dx.op.unary.f32(i32 7, float %4578)  ; Saturate(value)
  %4580 = bitcast float %4205 to i32
  %4581 = and i32 %4580, 65535
  %4582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4581)  ; LegacyF16ToF32(value)
  %4583 = lshr i32 %4580, 16
  %4584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4583)  ; LegacyF16ToF32(value)
  %4585 = fcmp fast oge float %4582, 0.000000e+00
  %4586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.f32 %4586, 0
  %4588 = select i1 %4585, float %4582, float %4587
  %4589 = fadd fast float %4588, %4584
  %4590 = fsub fast float %4579, %4138
  %4591 = fmul fast float %4590, %4366
  %4592 = fadd fast float %4591, %4138
  %4593 = fmul fast float %4589, %4366
  %4594 = call float @dx.op.binary.f32(i32 35, float %4137, float %4593)  ; FMax(a,b)
  %4595 = and i32 %4296, 16
  %4596 = icmp eq i32 %4595, 0
  br i1 %4596, label %4618, label %4597

; <label>:4597                                    ; preds = %4569
  %4598 = add i32 %4208, 0
  %4599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4598, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4600 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4599, %dx.types.Handle %4379, float %4307, float %4310, float undef, float undef, i32 0, i32 0, i32 undef, float %4312, float %4314, float undef, float %4316, float %4318, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4601 = extractvalue %dx.types.ResRet.f32 %4600, 0
  %4602 = extractvalue %dx.types.ResRet.f32 %4600, 1
  %4603 = extractvalue %dx.types.ResRet.f32 %4600, 2
  %4604 = and i32 %4498, 65535
  %4605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4604)  ; LegacyF16ToF32(value)
  %4606 = fmul fast float %4601, %4202
  %4607 = fmul fast float %4602, %4203
  %4608 = fmul fast float %4603, %4204
  %4609 = and i32 %4296, 16384
  %4610 = icmp ne i32 %4609, 0
  %4611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4612 = extractvalue %dx.types.CBufRet.f32 %4611, 0
  %4613 = select i1 %4610, float %4612, float 1.000000e+00
  %4614 = fmul fast float %4613, %4605
  %4615 = fmul fast float %4606, %4614
  %4616 = fmul fast float %4607, %4614
  %4617 = fmul fast float %4608, %4614
  br label %4618

; <label>:4618                                    ; preds = %4597, %4569
  %4619 = phi float [ %4615, %4597 ], [ 0.000000e+00, %4569 ]
  %4620 = phi float [ %4616, %4597 ], [ 0.000000e+00, %4569 ]
  %4621 = phi float [ %4617, %4597 ], [ 0.000000e+00, %4569 ]
  %4622 = fsub fast float %4619, %4147
  %4623 = fsub fast float %4620, %4148
  %4624 = fsub fast float %4621, %4149
  %4625 = fmul fast float %4622, %4366
  %4626 = fmul fast float %4623, %4366
  %4627 = fmul fast float %4624, %4366
  %4628 = fadd fast float %4625, %4147
  %4629 = fadd fast float %4626, %4148
  %4630 = fadd fast float %4627, %4149
  br label %4261

; <label>:4631                                    ; preds = %4261
  br label %4632

; <label>:4632                                    ; preds = %4631, %4071
  %4633 = phi float [ 0.000000e+00, %4071 ], [ %4262, %4631 ]
  %4634 = phi float [ %4015, %4071 ], [ %4263, %4631 ]
  %4635 = phi float [ %3994, %4071 ], [ %4264, %4631 ]
  %4636 = phi float [ %3984, %4071 ], [ %4265, %4631 ]
  %4637 = phi float [ %3985, %4071 ], [ %4266, %4631 ]
  %4638 = phi float [ %3986, %4071 ], [ %4267, %4631 ]
  %4639 = phi float [ 0.000000e+00, %4071 ], [ %4268, %4631 ]
  %4640 = phi float [ 0.000000e+00, %4071 ], [ %4269, %4631 ]
  %4641 = phi float [ %3987, %4071 ], [ %4270, %4631 ]
  %4642 = phi float [ %3988, %4071 ], [ %4271, %4631 ]
  %4643 = phi float [ %3989, %4071 ], [ %4272, %4631 ]
  %4644 = phi float [ %4037, %4071 ], [ %4273, %4631 ]
  %4645 = phi float [ %4039, %4071 ], [ %4274, %4631 ]
  %4646 = phi float [ %4041, %4071 ], [ %4275, %4631 ]
  %4647 = phi float [ %4067, %4071 ], [ %4276, %4631 ]
  %4648 = phi float [ %4068, %4071 ], [ %4277, %4631 ]
  %4649 = phi float [ %4069, %4071 ], [ %4278, %4631 ]
  %4650 = phi float [ %3992, %4071 ], [ %4279, %4631 ]
  %4651 = phi float [ %3991, %4071 ], [ %4280, %4631 ]
  %4652 = phi float [ 0.000000e+00, %4071 ], [ %4281, %4631 ]
  %4653 = phi float [ %3990, %4071 ], [ %4282, %4631 ]
  %4654 = phi float [ %4022, %4071 ], [ %4283, %4631 ]
  %4655 = phi float [ %4023, %4071 ], [ %4284, %4631 ]
  %4656 = phi float [ %4024, %4071 ], [ %4285, %4631 ]
  %4657 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4648, float %4649, float %4647, float %4648, float %4649)  ; Dot3(ax,ay,az,bx,by,bz)
  %4658 = call float @dx.op.unary.f32(i32 25, float %4657)  ; Rsqrt(value)
  %4659 = fmul fast float %4658, %4647
  %4660 = fmul fast float %4658, %4648
  %4661 = fmul fast float %4658, %4649
  %4662 = fadd fast float %4652, %1164
  %4663 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4664 = call float @dx.op.dot3.f32(i32 55, float %4659, float %4660, float %4661, float %4659, float %4660, float %4661)  ; Dot3(ax,ay,az,bx,by,bz)
  %4665 = call float @dx.op.unary.f32(i32 25, float %4664)  ; Rsqrt(value)
  %4666 = fmul fast float %4665, %4659
  %4667 = fmul fast float %4665, %4660
  %4668 = fmul fast float %4665, %4661
  br label %4669

; <label>:4669                                    ; preds = %4632, %3975
  %4670 = phi float [ %4666, %4632 ], [ %4067, %3975 ]
  %4671 = phi float [ %4667, %4632 ], [ %4068, %3975 ]
  %4672 = phi float [ %4668, %4632 ], [ %4069, %3975 ]
  %4673 = phi float [ %4654, %4632 ], [ %4022, %3975 ]
  %4674 = phi float [ %4655, %4632 ], [ %4023, %3975 ]
  %4675 = phi float [ %4656, %4632 ], [ %4024, %3975 ]
  %4676 = phi float [ %4641, %4632 ], [ %3987, %3975 ]
  %4677 = phi float [ %4642, %4632 ], [ %3988, %3975 ]
  %4678 = phi float [ %4643, %4632 ], [ %3989, %3975 ]
  %4679 = phi float [ %4644, %4632 ], [ %4037, %3975 ]
  %4680 = phi float [ %4645, %4632 ], [ %4039, %3975 ]
  %4681 = phi float [ %4646, %4632 ], [ %4041, %3975 ]
  %4682 = phi float [ %4636, %4632 ], [ %3984, %3975 ]
  %4683 = phi float [ %4637, %4632 ], [ %3985, %3975 ]
  %4684 = phi float [ %4638, %4632 ], [ %3986, %3975 ]
  %4685 = phi float [ %4653, %4632 ], [ %3990, %3975 ]
  %4686 = phi float [ %4663, %4632 ], [ %1164, %3975 ]
  %4687 = phi float [ %4651, %4632 ], [ %3991, %3975 ]
  %4688 = phi float [ %4650, %4632 ], [ %3992, %3975 ]
  %4689 = phi float [ %4640, %4632 ], [ 0.000000e+00, %3975 ]
  %4690 = phi float [ %4639, %4632 ], [ 0.000000e+00, %3975 ]
  %4691 = phi float [ %4633, %4632 ], [ 0.000000e+00, %3975 ]
  %4692 = phi float [ %4634, %4632 ], [ %4015, %3975 ]
  %4693 = phi float [ %4635, %4632 ], [ %3994, %3975 ]
  %4694 = fadd fast float %4685, 0xBFB99999A0000000
  %4695 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4696 = fmul fast float %4695, 0x3FF1C71C80000000
  %4697 = call float @dx.op.binary.f32(i32 36, float %4685, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4698 = fsub fast float 1.000000e+00, %4696
  %4699 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4700 = fmul fast float %4699, %4673
  %4701 = fmul fast float %4699, %4674
  %4702 = fmul fast float %4699, %4675
  %4703 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4704 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4705 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4706 = fmul fast float %4696, %4673
  %4707 = fmul fast float %4696, %4674
  %4708 = fmul fast float %4696, %4675
  %4709 = fadd fast float %4706, %4697
  %4710 = fadd fast float %4707, %4697
  %4711 = fadd fast float %4708, %4697
  %4712 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4713 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4714 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4715 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %4717 = extractvalue %dx.types.ResRet.i32 %4716, 0
  %4718 = and i32 %4717, 1
  %4719 = icmp eq i32 %4718, 0
  br i1 %4719, label %4734, label %4720

; <label>:4720                                    ; preds = %4669
  %4721 = call float @dx.op.binary.f32(i32 35, float %4704, float %4705)  ; FMax(a,b)
  %4722 = call float @dx.op.binary.f32(i32 35, float %4703, float %4721)  ; FMax(a,b)
  %4723 = fcmp fast ogt float %4722, 0.000000e+00
  %4724 = bitcast float %4722 to i32
  %4725 = sub nsw i32 2129859010, %4724
  %4726 = bitcast i32 %4725 to float
  %4727 = select i1 %4723, float %4726, float 0.000000e+00
  %4728 = fmul fast float %4703, %4676
  %4729 = fmul fast float %4704, %4677
  %4730 = fmul fast float %4705, %4678
  %4731 = fmul fast float %4728, %4727
  %4732 = fmul fast float %4729, %4727
  %4733 = fmul fast float %4730, %4727
  br label %4734

; <label>:4734                                    ; preds = %4720, %4669
  %4735 = phi float [ %4731, %4720 ], [ %4676, %4669 ]
  %4736 = phi float [ %4732, %4720 ], [ %4677, %4669 ]
  %4737 = phi float [ %4733, %4720 ], [ %4678, %4669 ]
  %4738 = call float @dx.op.binary.f32(i32 36, float %4682, float 1.270000e+02)  ; FMin(a,b)
  %4739 = call float @dx.op.binary.f32(i32 36, float %4683, float 1.270000e+02)  ; FMin(a,b)
  %4740 = call float @dx.op.binary.f32(i32 36, float %4684, float 1.270000e+02)  ; FMin(a,b)
  %4741 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = extractvalue %dx.types.CBufRet.i32 %4741, 3
  %4743 = and i32 %4742, 8
  %4744 = icmp ne i32 %4743, 0
  %4745 = call float @dx.op.binary.f32(i32 35, float %4703, float %4673)  ; FMax(a,b)
  %4746 = call float @dx.op.binary.f32(i32 35, float %4704, float %4673)  ; FMax(a,b)
  %4747 = call float @dx.op.binary.f32(i32 35, float %4705, float %4673)  ; FMax(a,b)
  %4748 = call float @dx.op.dot3.f32(i32 55, float %4703, float %4704, float %4705, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4749 = select i1 %252, float %4673, float %4703
  %4750 = select i1 %252, float %4748, float %4704
  %4751 = select i1 %252, float 1.000000e+00, float %4705
  %4752 = select i1 %4744, float %4745, float %4749
  %4753 = select i1 %4744, float %4746, float %4750
  %4754 = select i1 %4744, float %4747, float %4751
  %4755 = call float @dx.op.dot3.f32(i32 55, float %4735, float %4736, float %4737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4756 = select i1 %252, float %4755, float %4735
  %4757 = select i1 %252, float %4755, float %4736
  %4758 = select i1 %252, float %4755, float %4737
  %4759 = and i32 %228, 3
  %4760 = select i1 %222, i32 %4759, i32 0
  %4761 = icmp eq i32 %4760, 1
  br i1 %4761, label %4762, label %4838

; <label>:4762                                    ; preds = %4734
  %4763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4763, 0
  %4765 = extractvalue %dx.types.CBufRet.f32 %4763, 1
  %4766 = fadd fast float %4764, %178
  %4767 = fadd fast float %4765, %179
  %4768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4769 = extractvalue %dx.types.CBufRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.CBufRet.f32 %4768, 1
  %4771 = fsub fast float %4766, %4769
  %4772 = fsub fast float %4767, %4770
  %4773 = fmul fast float %4771, %4771
  %4774 = fmul fast float %4772, %4772
  %4775 = fadd fast float %4773, %4774
  %4776 = call float @dx.op.unary.f32(i32 24, float %4775)  ; Sqrt(value)
  %4777 = extractvalue %dx.types.CBufRet.f32 %4768, 2
  %4778 = fcmp fast olt float %4776, %4777
  br i1 %4778, label %4779, label %4832

; <label>:4779                                    ; preds = %4762
  %4780 = extractvalue %dx.types.CBufRet.f32 %4763, 2
  %4781 = fadd fast float %4780, %180
  %4782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4783 = extractvalue %dx.types.CBufRet.f32 %4782, 0
  %4784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4785 = extractvalue %dx.types.CBufRet.f32 %4784, 0
  %4786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.f32 %4786, 0
  %4788 = extractvalue %dx.types.CBufRet.f32 %4782, 1
  %4789 = extractvalue %dx.types.CBufRet.f32 %4784, 1
  %4790 = extractvalue %dx.types.CBufRet.f32 %4786, 1
  %4791 = extractvalue %dx.types.CBufRet.f32 %4782, 3
  %4792 = extractvalue %dx.types.CBufRet.f32 %4784, 3
  %4793 = extractvalue %dx.types.CBufRet.f32 %4786, 3
  %4794 = fadd fast float %4791, %4766
  %4795 = fadd fast float %4792, %4767
  %4796 = fadd fast float %4781, %4793
  %4797 = fmul fast float %4794, %4783
  %4798 = call float @dx.op.tertiary.f32(i32 46, float %4795, float %4785, float %4797)  ; FMad(a,b,c)
  %4799 = call float @dx.op.tertiary.f32(i32 46, float %4796, float %4787, float %4798)  ; FMad(a,b,c)
  %4800 = fmul fast float %4794, %4788
  %4801 = call float @dx.op.tertiary.f32(i32 46, float %4795, float %4789, float %4800)  ; FMad(a,b,c)
  %4802 = call float @dx.op.tertiary.f32(i32 46, float %4796, float %4790, float %4801)  ; FMad(a,b,c)
  %4803 = fsub fast float %4799, %4791
  %4804 = fsub fast float %4802, %4792
  %4805 = fsub fast float %4803, %4769
  %4806 = fadd fast float %4805, %4777
  %4807 = fsub fast float %4804, %4770
  %4808 = fadd fast float %4807, %4777
  %4809 = extractvalue %dx.types.CBufRet.f32 %4768, 3
  %4810 = fmul fast float %4806, %4809
  %4811 = fmul fast float %4808, %4809
  %4812 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4813 = call float @dx.op.unary.f32(i32 7, float %4811)  ; Saturate(value)
  %4814 = fsub fast float 1.000000e+00, %4812
  %4815 = fsub fast float 1.000000e+00, %4813
  %4816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %37, float %4814, float %4815, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4817 = extractvalue %dx.types.ResRet.f32 %4816, 0
  %4818 = fcmp fast ugt float %4817, 0.000000e+00
  br i1 %4818, label %4819, label %4832

; <label>:4819                                    ; preds = %4779
  %4820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4821 = extractvalue %dx.types.CBufRet.f32 %4820, 2
  %4822 = fmul fast float %4821, %4817
  %4823 = extractvalue %dx.types.CBufRet.f32 %4820, 3
  %4824 = fadd fast float %4823, %4822
  %4825 = extractvalue %dx.types.CBufRet.f32 %4786, 2
  %4826 = fadd fast float %4824, %4793
  %4827 = fmul fast float %4799, %4787
  %4828 = call float @dx.op.tertiary.f32(i32 46, float %4802, float %4790, float %4827)  ; FMad(a,b,c)
  %4829 = call float @dx.op.tertiary.f32(i32 46, float %4826, float %4825, float %4828)  ; FMad(a,b,c)
  %4830 = fsub fast float %4829, %4793
  %4831 = fsub fast float %4830, %4780
  br label %4832

; <label>:4832                                    ; preds = %4819, %4779, %4762
  %4833 = phi i1 [ true, %4819 ], [ false, %4779 ], [ false, %4762 ]
  %4834 = phi float [ %4831, %4819 ], [ -1.310720e+05, %4779 ], [ -1.310720e+05, %4762 ]
  %4835 = fsub fast float %4834, %180
  %4836 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4837 = select i1 %4833, float %4836, float 1.000000e+00
  br label %4838

; <label>:4838                                    ; preds = %4832, %4734
  %4839 = phi float [ %4837, %4832 ], [ 0.000000e+00, %4734 ]
  %4840 = icmp eq i32 %4760, 3
  %4841 = select i1 %4840, float 1.000000e+00, float %4839
  %4842 = call float @dx.op.binary.f32(i32 35, float %4691, float %4841)  ; FMax(a,b)
  %4843 = fcmp fast olt float %4841, 1.000000e+00
  %4844 = fcmp uge float %59, 0.000000e+00
  %4845 = and i1 %4844, %4843
  br i1 %4845, label %4846, label %4856

; <label>:4846                                    ; preds = %4838
  %4847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %35, float %59, float %60, float %61, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4848 = extractvalue %dx.types.ResRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.ResRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.ResRet.f32 %4847, 2
  %4851 = fadd fast float %4848, %4842
  %4852 = fcmp ule float %58, 0.000000e+00
  %4853 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4854 = select i1 %4852, float %4853, float 1.000000e+00
  %4855 = fmul fast float %4854, %4850
  br label %4856

; <label>:4856                                    ; preds = %4846, %4838
  %4857 = phi float [ %4851, %4846 ], [ %4842, %4838 ]
  %4858 = phi float [ %4849, %4846 ], [ 0.000000e+00, %4838 ]
  %4859 = phi float [ %4855, %4846 ], [ 0.000000e+00, %4838 ]
  %4860 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4861 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4862 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4863 = fcmp fast une float %4861, 0.000000e+00
  %4864 = fcmp fast une float %4862, 0.000000e+00
  %4865 = or i1 %4863, %4864
  br i1 %4865, label %4866, label %5441

; <label>:4866                                    ; preds = %4856
  br i1 %4863, label %4867, label %5140

; <label>:4867                                    ; preds = %4866
  %4868 = call float @dx.op.unary.f32(i32 23, float %4688)  ; Log(value)
  %4869 = fmul fast float %4868, 4.000000e+00
  %4870 = call float @dx.op.unary.f32(i32 21, float %4869)  ; Exp(value)
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 0
  %4873 = fmul fast float %4872, %46
  %4874 = fmul fast float %4872, %47
  %4875 = fmul fast float %4872, %48
  %4876 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4877 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %4878 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %4879 = call float @dx.op.unary.f32(i32 23, float %4876)  ; Log(value)
  %4880 = call float @dx.op.unary.f32(i32 23, float %4877)  ; Log(value)
  %4881 = call float @dx.op.unary.f32(i32 23, float %4878)  ; Log(value)
  %4882 = fmul fast float %4879, 4.000000e+00
  %4883 = fmul fast float %4880, 4.000000e+00
  %4884 = fmul fast float %4881, 4.000000e+00
  %4885 = call float @dx.op.unary.f32(i32 21, float %4882)  ; Exp(value)
  %4886 = call float @dx.op.unary.f32(i32 21, float %4883)  ; Exp(value)
  %4887 = call float @dx.op.unary.f32(i32 21, float %4884)  ; Exp(value)
  %4888 = fadd fast float %4886, %4885
  %4889 = fadd fast float %4888, %4887
  %4890 = fdiv fast float 1.000000e+00, %4889
  %4891 = fmul fast float %4890, %4885
  %4892 = fcmp fast ogt float %55, 0.000000e+00
  %4893 = fcmp fast ogt float %56, 0.000000e+00
  %4894 = fcmp fast ogt float %57, 0.000000e+00
  %4895 = fcmp fast olt float %55, 0.000000e+00
  %4896 = fcmp fast olt float %56, 0.000000e+00
  %4897 = fcmp fast olt float %57, 0.000000e+00
  %4898 = zext i1 %4892 to i32
  %4899 = zext i1 %4893 to i32
  %4900 = zext i1 %4894 to i32
  %4901 = zext i1 %4895 to i32
  %4902 = zext i1 %4896 to i32
  %4903 = zext i1 %4897 to i32
  %4904 = sub nsw i32 %4898, %4901
  %4905 = sub nsw i32 %4899, %4902
  %4906 = sub nsw i32 %4900, %4903
  %4907 = call float @dx.op.unary.f32(i32 83, float %4873)  ; DerivCoarseX(value)
  %4908 = call float @dx.op.unary.f32(i32 83, float %4874)  ; DerivCoarseX(value)
  %4909 = call float @dx.op.unary.f32(i32 83, float %4875)  ; DerivCoarseX(value)
  %4910 = call float @dx.op.unary.f32(i32 84, float %4873)  ; DerivCoarseY(value)
  %4911 = call float @dx.op.unary.f32(i32 84, float %4874)  ; DerivCoarseY(value)
  %4912 = call float @dx.op.unary.f32(i32 84, float %4875)  ; DerivCoarseY(value)
  %4913 = fcmp fast ole float %263, %4891
  %4914 = fmul fast float %4890, %4888
  %4915 = fcmp fast ole float %263, %4914
  %4916 = select i1 %4915, float %4875, float %4873
  %4917 = select i1 %4915, float %4873, float %4874
  %4918 = select i1 %4913, float %4874, float %4916
  %4919 = select i1 %4913, float %4875, float %4917
  %4920 = select i1 %4915, float %4909, float %4907
  %4921 = select i1 %4915, float %4907, float %4908
  %4922 = select i1 %4913, float %4908, float %4920
  %4923 = select i1 %4913, float %4909, float %4921
  %4924 = select i1 %4915, float %4912, float %4910
  %4925 = select i1 %4915, float %4910, float %4911
  %4926 = select i1 %4913, float %4911, float %4924
  %4927 = select i1 %4913, float %4912, float %4925
  %4928 = call float @dx.op.unary.f32(i32 27, float %4918)  ; Round_ni(value)
  %4929 = call float @dx.op.unary.f32(i32 27, float %4919)  ; Round_ni(value)
  %4930 = fptosi float %4928 to i32
  %4931 = fptosi float %4929 to i32
  %4932 = xor i32 %4931, %4930
  %4933 = sitofp i32 %4932 to float
  %4934 = fptosi float %4933 to i32
  %4935 = sitofp i32 %4934 to float
  %4936 = fmul fast float %4935, 0x3FE3C6EF40000000
  %4937 = frem fast float %4928, 2.560000e+02
  %4938 = frem fast float %4929, 2.560000e+02
  %4939 = fptoui float %4937 to i32
  %4940 = fptoui float %4938 to i32
  %4941 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4939, i32 %4940, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = extractvalue %dx.types.ResRet.f32 %4941, 1
  %4944 = extractvalue %dx.types.ResRet.f32 %4941, 2
  %4945 = fadd fast float %4942, %4936
  %4946 = fadd fast float %4943, %4936
  %4947 = fadd fast float %4944, %4936
  %4948 = call float @dx.op.unary.f32(i32 22, float %4945)  ; Frc(value)
  %4949 = call float @dx.op.unary.f32(i32 22, float %4946)  ; Frc(value)
  %4950 = call float @dx.op.unary.f32(i32 22, float %4947)  ; Frc(value)
  %4951 = fmul fast float %4950, 0x401921FB60000000
  %4952 = call float @dx.op.unary.f32(i32 13, float %4951)  ; Sin(value)
  %4953 = call float @dx.op.unary.f32(i32 12, float %4951)  ; Cos(value)
  %4954 = fsub fast float -0.000000e+00, %4953
  %4955 = fmul fast float %4953, %4918
  %4956 = call float @dx.op.tertiary.f32(i32 46, float %4952, float %4919, float %4955)  ; FMad(a,b,c)
  %4957 = fmul fast float %4952, %4918
  %4958 = call float @dx.op.tertiary.f32(i32 46, float %4954, float %4919, float %4957)  ; FMad(a,b,c)
  %4959 = fadd fast float %4956, %4948
  %4960 = fadd fast float %4958, %4949
  %4961 = extractvalue %dx.types.CBufRet.f32 %4871, 3
  %4962 = bitcast float %4961 to i32
  %4963 = icmp eq i32 %4962, 0
  br i1 %4963, label %5002, label %4964

; <label>:4964                                    ; preds = %4867
  %4965 = add i32 %4962, 0
  %4966 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4965, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4967 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4966, %dx.types.Handle %96, float %4959, float %4960, float undef, float undef, i32 0, i32 0, i32 undef, float %4922, float %4923, float undef, float %4926, float %4927, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4968 = extractvalue %dx.types.ResRet.f32 %4967, 0
  %4969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.f32 %4969, 1
  %4971 = extractvalue %dx.types.CBufRet.f32 %4969, 2
  %4972 = fsub fast float 1.000000e+00, %4861
  %4973 = call float @dx.op.binary.f32(i32 35, float %4972, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4974 = bitcast float %4861 to i32
  %4975 = sitofp i32 %4974 to float
  %4976 = fadd fast float %4975, 0xC1CFBF8940000000
  %4977 = fmul fast float %4971, %4976
  %4978 = fadd fast float %4977, 0x41CFBF8940000000
  %4979 = fptosi float %4978 to i32
  %4980 = bitcast i32 %4979 to float
  %4981 = bitcast float %4973 to i32
  %4982 = sitofp i32 %4981 to float
  %4983 = fadd fast float %4982, 0xC1CFBF8940000000
  %4984 = fmul fast float %4983, %4971
  %4985 = fadd fast float %4984, 0x41CFBF8940000000
  %4986 = fptosi float %4985 to i32
  %4987 = bitcast i32 %4986 to float
  %4988 = fmul fast float %4980, %4970
  %4989 = fmul fast float %4987, %4970
  %4990 = fsub fast float %4973, %4988
  %4991 = fadd fast float %4989, %4973
  %4992 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %4994 = fsub fast float %4968, %4992
  %4995 = fsub fast float %4993, %4992
  %4996 = bitcast float %4995 to i32
  %4997 = sub nsw i32 2129859010, %4996
  %4998 = bitcast i32 %4997 to float
  %4999 = fmul fast float %4998, %4994
  %5000 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5001 = fcmp fast olt float %5000, 0x3F70101020000000
  br i1 %5001, label %5140, label %5002

; <label>:5002                                    ; preds = %4964, %4867
  %5003 = phi float [ %5000, %4964 ], [ %4861, %4867 ]
  %5004 = fmul fast float %5003, %4870
  %5005 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.i32 %5005, 1
  %5007 = extractvalue %dx.types.CBufRet.i32 %5005, 0
  %5008 = add i32 %5007, 0
  %5009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5008, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5010 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5009, %dx.types.Handle %95, float %4959, float %4960, float undef, float undef, i32 0, i32 0, i32 undef, float %4922, float %4923, float undef, float %4926, float %4927, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5011 = extractvalue %dx.types.ResRet.f32 %5010, 0
  %5012 = extractvalue %dx.types.ResRet.f32 %5010, 1
  %5013 = extractvalue %dx.types.ResRet.f32 %5010, 2
  %5014 = extractvalue %dx.types.ResRet.f32 %5010, 3
  %5015 = and i32 %5006, 255
  %5016 = uitofp i32 %5015 to float
  %5017 = lshr i32 %5006, 8
  %5018 = and i32 %5017, 255
  %5019 = uitofp i32 %5018 to float
  %5020 = fmul fast float %5014, %5016
  %5021 = fadd fast float %5020, %5019
  %5022 = fmul fast float %5021, 0x3F70101000000000
  %5023 = fadd fast float %5022, 0xBFB99999A0000000
  %5024 = call float @dx.op.unary.f32(i32 7, float %5023)  ; Saturate(value)
  %5025 = fmul fast float %5024, 0x3FF1C71C80000000
  %5026 = call float @dx.op.binary.f32(i32 36, float %5022, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5027 = fsub fast float 1.000000e+00, %5025
  %5028 = call float @dx.op.unary.f32(i32 7, float %5027)  ; Saturate(value)
  %5029 = fmul fast float %5028, %5011
  %5030 = fmul fast float %5028, %5012
  %5031 = fmul fast float %5028, %5013
  %5032 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5033 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5034 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  %5035 = fmul fast float %5025, %5011
  %5036 = fmul fast float %5025, %5012
  %5037 = fmul fast float %5025, %5013
  %5038 = fadd fast float %5035, %5026
  %5039 = fadd fast float %5036, %5026
  %5040 = fadd fast float %5037, %5026
  %5041 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5042 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5043 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5044 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5045 = extractvalue %dx.types.CBufRet.i32 %5044, 3
  %5046 = extractvalue %dx.types.CBufRet.i32 %5044, 2
  %5047 = add i32 %5046, 0
  %5048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5049 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5048, %dx.types.Handle %95, float %4959, float %4960, float undef, float undef, i32 0, i32 0, i32 undef, float %4922, float %4923, float undef, float %4926, float %4927, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5050 = extractvalue %dx.types.ResRet.f32 %5049, 0
  %5051 = extractvalue %dx.types.ResRet.f32 %5049, 1
  %5052 = extractvalue %dx.types.ResRet.f32 %5049, 2
  %5053 = extractvalue %dx.types.ResRet.f32 %5049, 3
  %5054 = and i32 %5045, 255
  %5055 = uitofp i32 %5054 to float
  %5056 = lshr i32 %5045, 8
  %5057 = and i32 %5056, 255
  %5058 = uitofp i32 %5057 to float
  %5059 = lshr i32 %5045, 16
  %5060 = and i32 %5059, 255
  %5061 = uitofp i32 %5060 to float
  %5062 = fmul fast float %5061, 0x3F70101000000000
  %5063 = fmul fast float %5050, %5055
  %5064 = fadd fast float %5063, %5058
  %5065 = fmul fast float %5064, 0x3F70101000000000
  %5066 = fadd fast float %5051, -5.000000e-01
  %5067 = fadd fast float %5053, -5.000000e-01
  %5068 = fmul fast float %5066, %5062
  %5069 = fmul fast float %5067, %5062
  %5070 = fadd fast float %5068, 5.000000e-01
  %5071 = fadd fast float %5069, 5.000000e-01
  %5072 = fmul fast float %5070, 2.000000e+00
  %5073 = fadd fast float %5072, -1.000000e+00
  %5074 = fmul fast float %5071, 2.000000e+00
  %5075 = fadd fast float %5074, -1.000000e+00
  %5076 = fadd fast float %5073, %5075
  %5077 = fmul fast float %5076, 5.000000e-01
  %5078 = fsub fast float %5073, %5075
  %5079 = fmul fast float %5078, 5.000000e-01
  %5080 = call float @dx.op.unary.f32(i32 6, float %5077)  ; FAbs(value)
  %5081 = fsub fast float 1.000000e+00, %5080
  %5082 = call float @dx.op.unary.f32(i32 6, float %5079)  ; FAbs(value)
  %5083 = fsub fast float %5081, %5082
  %5084 = call float @dx.op.dot3.f32(i32 55, float %5077, float %5079, float %5083, float %5077, float %5079, float %5083)  ; Dot3(ax,ay,az,bx,by,bz)
  %5085 = call float @dx.op.unary.f32(i32 25, float %5084)  ; Rsqrt(value)
  %5086 = fmul fast float %5077, %5085
  %5087 = fmul fast float %5079, %5085
  %5088 = select i1 %4915, i32 %4905, i32 %4906
  %5089 = select i1 %4913, i32 %4904, i32 %5088
  %5090 = sitofp i32 %5089 to float
  %5091 = fmul fast float %5083, %5090
  %5092 = fmul fast float %5091, %5085
  %5093 = select i1 %4915, float %5092, float %5087
  %5094 = select i1 %4915, float %5087, float %5092
  %5095 = select i1 %4913, float %5092, float %5086
  %5096 = select i1 %4913, float %5087, float %5093
  %5097 = select i1 %4913, float %5086, float %5094
  %5098 = fsub fast float %5032, %4752
  %5099 = fsub fast float %5033, %4753
  %5100 = fsub fast float %5034, %4754
  %5101 = fmul fast float %5098, %5004
  %5102 = fmul fast float %5099, %5004
  %5103 = fmul fast float %5100, %5004
  %5104 = fadd fast float %5101, %4752
  %5105 = fadd fast float %5102, %4753
  %5106 = fadd fast float %5103, %4754
  %5107 = fsub fast float %5041, %4712
  %5108 = fsub fast float %5042, %4713
  %5109 = fsub fast float %5043, %4714
  %5110 = fmul fast float %5107, %5004
  %5111 = fmul fast float %5108, %5004
  %5112 = fmul fast float %5109, %5004
  %5113 = fadd fast float %5110, %4712
  %5114 = fadd fast float %5111, %4713
  %5115 = fadd fast float %5112, %4714
  %5116 = fadd fast float %5095, %4670
  %5117 = fadd fast float %5096, %4671
  %5118 = fadd fast float %5097, %4672
  %5119 = call float @dx.op.dot3.f32(i32 55, float %5116, float %5117, float %5118, float %5116, float %5117, float %5118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5120 = call float @dx.op.unary.f32(i32 25, float %5119)  ; Rsqrt(value)
  %5121 = fmul fast float %5116, %5120
  %5122 = fmul fast float %5117, %5120
  %5123 = fmul fast float %5118, %5120
  %5124 = fsub fast float %5121, %4670
  %5125 = fsub fast float %5122, %4671
  %5126 = fsub fast float %5123, %4672
  %5127 = fmul fast float %5124, %5004
  %5128 = fmul fast float %5125, %5004
  %5129 = fmul fast float %5126, %5004
  %5130 = fadd fast float %5127, %4670
  %5131 = fadd fast float %5128, %4671
  %5132 = fadd fast float %5129, %4672
  %5133 = call float @dx.op.binary.f32(i32 36, float %4688, float %5052)  ; FMin(a,b)
  %5134 = fsub fast float %5133, %4688
  %5135 = fmul fast float %5134, %5004
  %5136 = fadd fast float %5135, %4688
  %5137 = fsub fast float %5065, %4715
  %5138 = fmul fast float %5137, %5004
  %5139 = fadd fast float %5138, %4715
  br label %5140

; <label>:5140                                    ; preds = %5002, %4964, %4866
  %5141 = phi float [ %5104, %5002 ], [ %4752, %4964 ], [ %4752, %4866 ]
  %5142 = phi float [ %5105, %5002 ], [ %4753, %4964 ], [ %4753, %4866 ]
  %5143 = phi float [ %5106, %5002 ], [ %4754, %4964 ], [ %4754, %4866 ]
  %5144 = phi float [ %5130, %5002 ], [ %4670, %4964 ], [ %4670, %4866 ]
  %5145 = phi float [ %5131, %5002 ], [ %4671, %4964 ], [ %4671, %4866 ]
  %5146 = phi float [ %5132, %5002 ], [ %4672, %4964 ], [ %4672, %4866 ]
  %5147 = phi float [ %5113, %5002 ], [ %4712, %4964 ], [ %4712, %4866 ]
  %5148 = phi float [ %5114, %5002 ], [ %4713, %4964 ], [ %4713, %4866 ]
  %5149 = phi float [ %5115, %5002 ], [ %4714, %4964 ], [ %4714, %4866 ]
  %5150 = phi float [ %5139, %5002 ], [ %4715, %4964 ], [ %4715, %4866 ]
  %5151 = phi float [ %5136, %5002 ], [ %4688, %4964 ], [ %4688, %4866 ]
  br i1 %4864, label %5152, label %5441

; <label>:5152                                    ; preds = %5140
  %5153 = call float @dx.op.unary.f32(i32 23, float %5151)  ; Log(value)
  %5154 = fmul fast float %5153, 4.000000e+00
  %5155 = call float @dx.op.unary.f32(i32 21, float %5154)  ; Exp(value)
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5158 = fmul fast float %5157, %46
  %5159 = fmul fast float %5157, %47
  %5160 = fmul fast float %5157, %48
  %5161 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %5162 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %5163 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %5164 = call float @dx.op.unary.f32(i32 23, float %5161)  ; Log(value)
  %5165 = call float @dx.op.unary.f32(i32 23, float %5162)  ; Log(value)
  %5166 = call float @dx.op.unary.f32(i32 23, float %5163)  ; Log(value)
  %5167 = fmul fast float %5164, 4.000000e+00
  %5168 = fmul fast float %5165, 4.000000e+00
  %5169 = fmul fast float %5166, 4.000000e+00
  %5170 = call float @dx.op.unary.f32(i32 21, float %5167)  ; Exp(value)
  %5171 = call float @dx.op.unary.f32(i32 21, float %5168)  ; Exp(value)
  %5172 = call float @dx.op.unary.f32(i32 21, float %5169)  ; Exp(value)
  %5173 = fadd fast float %5171, %5170
  %5174 = fadd fast float %5173, %5172
  %5175 = fdiv fast float 1.000000e+00, %5174
  %5176 = fmul fast float %5175, %5170
  %5177 = fcmp fast ogt float %55, 0.000000e+00
  %5178 = fcmp fast ogt float %56, 0.000000e+00
  %5179 = fcmp fast ogt float %57, 0.000000e+00
  %5180 = fcmp fast olt float %55, 0.000000e+00
  %5181 = fcmp fast olt float %56, 0.000000e+00
  %5182 = fcmp fast olt float %57, 0.000000e+00
  %5183 = zext i1 %5177 to i32
  %5184 = zext i1 %5178 to i32
  %5185 = zext i1 %5179 to i32
  %5186 = zext i1 %5180 to i32
  %5187 = zext i1 %5181 to i32
  %5188 = zext i1 %5182 to i32
  %5189 = sub nsw i32 %5183, %5186
  %5190 = sub nsw i32 %5184, %5187
  %5191 = sub nsw i32 %5185, %5188
  %5192 = call float @dx.op.unary.f32(i32 83, float %5158)  ; DerivCoarseX(value)
  %5193 = call float @dx.op.unary.f32(i32 83, float %5159)  ; DerivCoarseX(value)
  %5194 = call float @dx.op.unary.f32(i32 83, float %5160)  ; DerivCoarseX(value)
  %5195 = call float @dx.op.unary.f32(i32 84, float %5158)  ; DerivCoarseY(value)
  %5196 = call float @dx.op.unary.f32(i32 84, float %5159)  ; DerivCoarseY(value)
  %5197 = call float @dx.op.unary.f32(i32 84, float %5160)  ; DerivCoarseY(value)
  %5198 = fcmp fast ole float %263, %5176
  %5199 = fmul fast float %5175, %5173
  %5200 = fcmp fast ole float %263, %5199
  %5201 = select i1 %5200, float %5160, float %5158
  %5202 = select i1 %5200, float %5158, float %5159
  %5203 = select i1 %5198, float %5159, float %5201
  %5204 = select i1 %5198, float %5160, float %5202
  %5205 = select i1 %5200, float %5194, float %5192
  %5206 = select i1 %5200, float %5192, float %5193
  %5207 = select i1 %5198, float %5193, float %5205
  %5208 = select i1 %5198, float %5194, float %5206
  %5209 = select i1 %5200, float %5197, float %5195
  %5210 = select i1 %5200, float %5195, float %5196
  %5211 = select i1 %5198, float %5196, float %5209
  %5212 = select i1 %5198, float %5197, float %5210
  %5213 = call float @dx.op.unary.f32(i32 27, float %5203)  ; Round_ni(value)
  %5214 = call float @dx.op.unary.f32(i32 27, float %5204)  ; Round_ni(value)
  %5215 = fptosi float %5213 to i32
  %5216 = fptosi float %5214 to i32
  %5217 = xor i32 %5216, %5215
  %5218 = sitofp i32 %5217 to float
  %5219 = fptosi float %5218 to i32
  %5220 = sitofp i32 %5219 to float
  %5221 = fmul fast float %5220, 0x3FE3C6EF40000000
  %5222 = frem fast float %5213, 2.560000e+02
  %5223 = frem fast float %5214, 2.560000e+02
  %5224 = fptoui float %5222 to i32
  %5225 = fptoui float %5223 to i32
  %5226 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %5224, i32 %5225, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5227 = extractvalue %dx.types.ResRet.f32 %5226, 0
  %5228 = extractvalue %dx.types.ResRet.f32 %5226, 1
  %5229 = extractvalue %dx.types.ResRet.f32 %5226, 2
  %5230 = fadd fast float %5227, %5221
  %5231 = fadd fast float %5228, %5221
  %5232 = fadd fast float %5229, %5221
  %5233 = call float @dx.op.unary.f32(i32 22, float %5230)  ; Frc(value)
  %5234 = call float @dx.op.unary.f32(i32 22, float %5231)  ; Frc(value)
  %5235 = call float @dx.op.unary.f32(i32 22, float %5232)  ; Frc(value)
  %5236 = fmul fast float %5235, 0x401921FB60000000
  %5237 = call float @dx.op.unary.f32(i32 13, float %5236)  ; Sin(value)
  %5238 = call float @dx.op.unary.f32(i32 12, float %5236)  ; Cos(value)
  %5239 = fsub fast float -0.000000e+00, %5238
  %5240 = fmul fast float %5238, %5203
  %5241 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5204, float %5240)  ; FMad(a,b,c)
  %5242 = fmul fast float %5237, %5203
  %5243 = call float @dx.op.tertiary.f32(i32 46, float %5239, float %5204, float %5242)  ; FMad(a,b,c)
  %5244 = fadd fast float %5241, %5233
  %5245 = fadd fast float %5243, %5234
  %5246 = extractvalue %dx.types.CBufRet.f32 %5156, 3
  %5247 = bitcast float %5246 to i32
  %5248 = icmp eq i32 %5247, 0
  br i1 %5248, label %5287, label %5249

; <label>:5249                                    ; preds = %5152
  %5250 = add i32 %5247, 0
  %5251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5252 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5251, %dx.types.Handle %96, float %5244, float %5245, float undef, float undef, i32 0, i32 0, i32 undef, float %5207, float %5208, float undef, float %5211, float %5212, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5253 = extractvalue %dx.types.ResRet.f32 %5252, 0
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 1
  %5256 = extractvalue %dx.types.CBufRet.f32 %5254, 2
  %5257 = fsub fast float 1.000000e+00, %4862
  %5258 = call float @dx.op.binary.f32(i32 35, float %5257, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5259 = bitcast float %4862 to i32
  %5260 = sitofp i32 %5259 to float
  %5261 = fadd fast float %5260, 0xC1CFBF8940000000
  %5262 = fmul fast float %5256, %5261
  %5263 = fadd fast float %5262, 0x41CFBF8940000000
  %5264 = fptosi float %5263 to i32
  %5265 = bitcast i32 %5264 to float
  %5266 = bitcast float %5258 to i32
  %5267 = sitofp i32 %5266 to float
  %5268 = fadd fast float %5267, 0xC1CFBF8940000000
  %5269 = fmul fast float %5268, %5256
  %5270 = fadd fast float %5269, 0x41CFBF8940000000
  %5271 = fptosi float %5270 to i32
  %5272 = bitcast i32 %5271 to float
  %5273 = fmul fast float %5265, %5255
  %5274 = fmul fast float %5272, %5255
  %5275 = fsub fast float %5258, %5273
  %5276 = fadd fast float %5274, %5258
  %5277 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5278 = call float @dx.op.unary.f32(i32 7, float %5276)  ; Saturate(value)
  %5279 = fsub fast float %5253, %5277
  %5280 = fsub fast float %5278, %5277
  %5281 = bitcast float %5280 to i32
  %5282 = sub nsw i32 2129859010, %5281
  %5283 = bitcast i32 %5282 to float
  %5284 = fmul fast float %5283, %5279
  %5285 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5286 = fcmp fast olt float %5285, 0x3F70101020000000
  br i1 %5286, label %5441, label %5287

; <label>:5287                                    ; preds = %5249, %5152
  %5288 = phi float [ %5285, %5249 ], [ %4862, %5152 ]
  %5289 = fmul fast float %5288, %5155
  %5290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5291 = extractvalue %dx.types.CBufRet.i32 %5290, 1
  %5292 = extractvalue %dx.types.CBufRet.i32 %5290, 0
  %5293 = add i32 %5292, 0
  %5294 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5293, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5295 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5294, %dx.types.Handle %95, float %5244, float %5245, float undef, float undef, i32 0, i32 0, i32 undef, float %5207, float %5208, float undef, float %5211, float %5212, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5296 = extractvalue %dx.types.ResRet.f32 %5295, 0
  %5297 = extractvalue %dx.types.ResRet.f32 %5295, 1
  %5298 = extractvalue %dx.types.ResRet.f32 %5295, 2
  %5299 = extractvalue %dx.types.ResRet.f32 %5295, 3
  %5300 = and i32 %5291, 255
  %5301 = uitofp i32 %5300 to float
  %5302 = lshr i32 %5291, 8
  %5303 = and i32 %5302, 255
  %5304 = uitofp i32 %5303 to float
  %5305 = fmul fast float %5299, %5301
  %5306 = fadd fast float %5305, %5304
  %5307 = fmul fast float %5306, 0x3F70101000000000
  %5308 = fadd fast float %5307, 0xBFB99999A0000000
  %5309 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  %5310 = fmul fast float %5309, 0x3FF1C71C80000000
  %5311 = call float @dx.op.binary.f32(i32 36, float %5307, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5312 = fsub fast float 1.000000e+00, %5310
  %5313 = call float @dx.op.unary.f32(i32 7, float %5312)  ; Saturate(value)
  %5314 = fmul fast float %5313, %5296
  %5315 = fmul fast float %5313, %5297
  %5316 = fmul fast float %5313, %5298
  %5317 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5318 = call float @dx.op.unary.f32(i32 7, float %5315)  ; Saturate(value)
  %5319 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5320 = fmul fast float %5310, %5296
  %5321 = fmul fast float %5310, %5297
  %5322 = fmul fast float %5310, %5298
  %5323 = fadd fast float %5320, %5311
  %5324 = fadd fast float %5321, %5311
  %5325 = fadd fast float %5322, %5311
  %5326 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5327 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  %5328 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  %5329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5330 = extractvalue %dx.types.CBufRet.i32 %5329, 3
  %5331 = extractvalue %dx.types.CBufRet.i32 %5329, 2
  %5332 = add i32 %5331, 0
  %5333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5332, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5334 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5333, %dx.types.Handle %95, float %5244, float %5245, float undef, float undef, i32 0, i32 0, i32 undef, float %5207, float %5208, float undef, float %5211, float %5212, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5335 = extractvalue %dx.types.ResRet.f32 %5334, 0
  %5336 = extractvalue %dx.types.ResRet.f32 %5334, 1
  %5337 = extractvalue %dx.types.ResRet.f32 %5334, 2
  %5338 = extractvalue %dx.types.ResRet.f32 %5334, 3
  %5339 = and i32 %5330, 255
  %5340 = uitofp i32 %5339 to float
  %5341 = lshr i32 %5330, 8
  %5342 = and i32 %5341, 255
  %5343 = uitofp i32 %5342 to float
  %5344 = lshr i32 %5330, 16
  %5345 = and i32 %5344, 255
  %5346 = uitofp i32 %5345 to float
  %5347 = fmul fast float %5346, 0x3F70101000000000
  %5348 = fmul fast float %5335, %5340
  %5349 = fadd fast float %5348, %5343
  %5350 = fmul fast float %5349, 0x3F70101000000000
  %5351 = fadd fast float %5336, -5.000000e-01
  %5352 = fadd fast float %5338, -5.000000e-01
  %5353 = fmul fast float %5351, %5347
  %5354 = fmul fast float %5352, %5347
  %5355 = fadd fast float %5353, 5.000000e-01
  %5356 = fadd fast float %5354, 5.000000e-01
  %5357 = fmul fast float %5355, 2.000000e+00
  %5358 = fadd fast float %5357, -1.000000e+00
  %5359 = fmul fast float %5356, 2.000000e+00
  %5360 = fadd fast float %5359, -1.000000e+00
  %5361 = fadd fast float %5358, %5360
  %5362 = fmul fast float %5361, 5.000000e-01
  %5363 = fsub fast float %5358, %5360
  %5364 = fmul fast float %5363, 5.000000e-01
  %5365 = call float @dx.op.unary.f32(i32 6, float %5362)  ; FAbs(value)
  %5366 = fsub fast float 1.000000e+00, %5365
  %5367 = call float @dx.op.unary.f32(i32 6, float %5364)  ; FAbs(value)
  %5368 = fsub fast float %5366, %5367
  %5369 = call float @dx.op.dot3.f32(i32 55, float %5362, float %5364, float %5368, float %5362, float %5364, float %5368)  ; Dot3(ax,ay,az,bx,by,bz)
  %5370 = call float @dx.op.unary.f32(i32 25, float %5369)  ; Rsqrt(value)
  %5371 = fmul fast float %5362, %5370
  %5372 = fmul fast float %5364, %5370
  %5373 = select i1 %5200, i32 %5190, i32 %5191
  %5374 = select i1 %5198, i32 %5189, i32 %5373
  %5375 = sitofp i32 %5374 to float
  %5376 = fmul fast float %5368, %5375
  %5377 = fmul fast float %5376, %5370
  %5378 = select i1 %5200, float %5377, float %5372
  %5379 = select i1 %5200, float %5372, float %5377
  %5380 = select i1 %5198, float %5377, float %5371
  %5381 = select i1 %5198, float %5372, float %5378
  %5382 = select i1 %5198, float %5371, float %5379
  %5383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.f32 %5383, 0
  %5385 = fptoui float %5384 to i32
  %5386 = add i32 %5385, 0
  %5387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5388 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5387, %dx.types.Handle %95, float %5244, float %5245, float undef, float undef, i32 0, i32 0, i32 undef, float %5207, float %5208, float undef, float %5211, float %5212, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5389 = extractvalue %dx.types.ResRet.f32 %5388, 0
  %5390 = fsub fast float %5317, %5141
  %5391 = fsub fast float %5318, %5142
  %5392 = fsub fast float %5319, %5143
  %5393 = fmul fast float %5390, %5289
  %5394 = fmul fast float %5391, %5289
  %5395 = fmul fast float %5392, %5289
  %5396 = fadd fast float %5393, %5141
  %5397 = fadd fast float %5394, %5142
  %5398 = fadd fast float %5395, %5143
  %5399 = fsub fast float %5326, %5147
  %5400 = fsub fast float %5327, %5148
  %5401 = fsub fast float %5328, %5149
  %5402 = fmul fast float %5399, %5289
  %5403 = fmul fast float %5400, %5289
  %5404 = fmul fast float %5401, %5289
  %5405 = fadd fast float %5402, %5147
  %5406 = fadd fast float %5403, %5148
  %5407 = fadd fast float %5404, %5149
  %5408 = fadd fast float %5380, %5144
  %5409 = fadd fast float %5381, %5145
  %5410 = fadd fast float %5382, %5146
  %5411 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5412 = call float @dx.op.unary.f32(i32 25, float %5411)  ; Rsqrt(value)
  %5413 = fmul fast float %5412, %5408
  %5414 = fmul fast float %5412, %5409
  %5415 = fmul fast float %5412, %5410
  %5416 = fsub fast float %5413, %5144
  %5417 = fsub fast float %5414, %5145
  %5418 = fsub fast float %5415, %5146
  %5419 = fmul fast float %5416, %5289
  %5420 = fmul fast float %5417, %5289
  %5421 = fmul fast float %5418, %5289
  %5422 = fadd fast float %5419, %5144
  %5423 = fadd fast float %5420, %5145
  %5424 = fadd fast float %5421, %5146
  %5425 = call float @dx.op.binary.f32(i32 36, float %5151, float %5337)  ; FMin(a,b)
  %5426 = fsub fast float %5425, %5151
  %5427 = fmul fast float %5426, %5289
  %5428 = fadd fast float %5427, %5151
  %5429 = fsub fast float %5350, %5150
  %5430 = fmul fast float %5429, %5289
  %5431 = fadd fast float %5430, %5150
  %5432 = fsub fast float %5389, %4756
  %5433 = fsub fast float %5389, %4757
  %5434 = fsub fast float %5389, %4758
  %5435 = fmul fast float %5432, %5289
  %5436 = fmul fast float %5433, %5289
  %5437 = fmul fast float %5434, %5289
  %5438 = fadd fast float %5435, %4756
  %5439 = fadd fast float %5436, %4757
  %5440 = fadd fast float %5437, %4758
  br label %5441

; <label>:5441                                    ; preds = %5287, %5249, %5140, %4856
  %5442 = phi float [ %5396, %5287 ], [ %5141, %5249 ], [ %5141, %5140 ], [ %4752, %4856 ]
  %5443 = phi float [ %5397, %5287 ], [ %5142, %5249 ], [ %5142, %5140 ], [ %4753, %4856 ]
  %5444 = phi float [ %5398, %5287 ], [ %5143, %5249 ], [ %5143, %5140 ], [ %4754, %4856 ]
  %5445 = phi float [ %5422, %5287 ], [ %5144, %5249 ], [ %5144, %5140 ], [ %4670, %4856 ]
  %5446 = phi float [ %5423, %5287 ], [ %5145, %5249 ], [ %5145, %5140 ], [ %4671, %4856 ]
  %5447 = phi float [ %5424, %5287 ], [ %5146, %5249 ], [ %5146, %5140 ], [ %4672, %4856 ]
  %5448 = phi float [ %5438, %5287 ], [ %4756, %5249 ], [ %4756, %5140 ], [ %4756, %4856 ]
  %5449 = phi float [ %5439, %5287 ], [ %4757, %5249 ], [ %4757, %5140 ], [ %4757, %4856 ]
  %5450 = phi float [ %5440, %5287 ], [ %4758, %5249 ], [ %4758, %5140 ], [ %4758, %4856 ]
  %5451 = phi float [ %5405, %5287 ], [ %5147, %5249 ], [ %5147, %5140 ], [ %4712, %4856 ]
  %5452 = phi float [ %5406, %5287 ], [ %5148, %5249 ], [ %5148, %5140 ], [ %4713, %4856 ]
  %5453 = phi float [ %5407, %5287 ], [ %5149, %5249 ], [ %5149, %5140 ], [ %4714, %4856 ]
  %5454 = phi float [ %5431, %5287 ], [ %5150, %5249 ], [ %5150, %5140 ], [ %4715, %4856 ]
  %5455 = phi float [ %5428, %5287 ], [ %5151, %5249 ], [ %5151, %5140 ], [ %4688, %4856 ]
  %5456 = fcmp fast une float %4860, 0.000000e+00
  %5457 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %5458 = call float @dx.op.unary.f32(i32 25, float %5457)  ; Rsqrt(value)
  br i1 %5456, label %5466, label %5459

; <label>:5459                                    ; preds = %5441
  %5460 = fmul fast float %5458, %178
  %5461 = fmul fast float %5458, %179
  %5462 = fmul fast float %5458, %180
  %5463 = fsub fast float -0.000000e+00, %5460
  %5464 = fsub fast float -0.000000e+00, %5461
  %5465 = fsub fast float -0.000000e+00, %5462
  br label %5633

; <label>:5466                                    ; preds = %5441
  %5467 = fmul fast float %178, %5458
  %5468 = fsub fast float -0.000000e+00, %5467
  %5469 = fmul fast float %179, %5458
  %5470 = fsub fast float -0.000000e+00, %5469
  %5471 = fmul fast float %180, %5458
  %5472 = fsub fast float -0.000000e+00, %5471
  %5473 = call float @dx.op.dot3.f32(i32 55, float %5468, float %5470, float %5472, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = fmul fast float %4860, 2.500000e+00
  %5475 = call float @dx.op.unary.f32(i32 7, float %5474)  ; Saturate(value)
  %5476 = fmul fast float %4860, 0x4013FFFFE0000000
  %5477 = fadd fast float %5476, 0xBFFFFFFFE0000000
  %5478 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  %5479 = fmul fast float %4860, 0x4004000020000000
  %5480 = fadd fast float %5479, 0xBFF8000040000000
  %5481 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5482 = fmul fast float %4694, 1.000000e+01
  %5483 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5484 = fmul fast float %5483, 2.000000e+00
  %5485 = fsub fast float 3.000000e+00, %5484
  %5486 = fmul fast float %5483, %5483
  %5487 = fmul fast float %5486, %5485
  %5488 = fsub fast float 1.000000e+00, %5487
  %5489 = fsub fast float 0x3FE3333340000000, %5454
  %5490 = fmul fast float %5489, 0x400AAAAAA0000000
  %5491 = call float @dx.op.unary.f32(i32 7, float %5490)  ; Saturate(value)
  %5492 = fmul fast float %5488, %5491
  %5493 = fmul fast float %5442, 0x3FEA2B8620000000
  %5494 = fmul fast float %5443, 0x3FEA2B8620000000
  %5495 = fmul fast float %5444, 0x3FEA2B8620000000
  %5496 = fadd fast float %5493, 0x3FC81DFBA0000000
  %5497 = fmul fast float %5496, %5442
  %5498 = fadd fast float %5497, 0x3F910E6020000000
  %5499 = fadd fast float %5494, 0x3FC81DFBA0000000
  %5500 = fmul fast float %5499, %5443
  %5501 = fadd fast float %5500, 0x3F910E6020000000
  %5502 = fadd fast float %5495, 0x3FC81DFBA0000000
  %5503 = fmul fast float %5502, %5444
  %5504 = fadd fast float %5503, 0x3F910E6020000000
  %5505 = call float @dx.op.unary.f32(i32 7, float %5498)  ; Saturate(value)
  %5506 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5507 = call float @dx.op.unary.f32(i32 7, float %5504)  ; Saturate(value)
  %5508 = fsub fast float %5505, %5442
  %5509 = fsub fast float %5506, %5443
  %5510 = fsub fast float %5507, %5444
  %5511 = fmul fast float %5508, %5475
  %5512 = fmul fast float %5511, %5492
  %5513 = fmul fast float %5509, %5475
  %5514 = fmul fast float %5513, %5492
  %5515 = fmul fast float %5510, %5475
  %5516 = fmul fast float %5515, %5492
  %5517 = fadd fast float %5512, %5442
  %5518 = fadd fast float %5514, %5443
  %5519 = fadd fast float %5516, %5444
  %5520 = fmul fast float %5455, %5455
  %5521 = fmul fast float %5520, %5520
  %5522 = fadd fast float %5478, 1.000000e+00
  %5523 = fsub fast float %5522, %5492
  %5524 = call float @dx.op.unary.f32(i32 7, float %5523)  ; Saturate(value)
  %5525 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5526 = call float @dx.op.unary.f32(i32 7, float %5525)  ; Saturate(value)
  %5527 = fsub fast float 1.000000e+00, %5521
  %5528 = call float @dx.op.binary.f32(i32 36, float %5524, float %5527)  ; FMin(a,b)
  %5529 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5530 = call float @dx.op.binary.f32(i32 35, float %5528, float %5529)  ; FMax(a,b)
  %5531 = fadd fast float %5526, 0xBFE4CCCCC0000000
  %5532 = fmul fast float %5531, 0x4006DB6DA0000000
  %5533 = call float @dx.op.unary.f32(i32 7, float %5532)  ; Saturate(value)
  %5534 = fmul fast float %5533, 2.000000e+00
  %5535 = fsub fast float 3.000000e+00, %5534
  %5536 = bitcast float %5451 to i32
  %5537 = ashr i32 %5536, 1
  %5538 = add nsw i32 %5537, 532487669
  %5539 = bitcast i32 %5538 to float
  %5540 = fsub fast float 1.000000e+00, %5539
  %5541 = bitcast float %5540 to i32
  %5542 = sub nsw i32 2129859010, %5541
  %5543 = bitcast i32 %5542 to float
  %5544 = fmul fast float %5543, 2.000000e+00
  %5545 = bitcast float %5452 to i32
  %5546 = ashr i32 %5545, 1
  %5547 = add nsw i32 %5546, 532487669
  %5548 = bitcast i32 %5547 to float
  %5549 = fsub fast float 1.000000e+00, %5548
  %5550 = bitcast float %5549 to i32
  %5551 = sub nsw i32 2129859010, %5550
  %5552 = bitcast i32 %5551 to float
  %5553 = fmul fast float %5552, 2.000000e+00
  %5554 = bitcast float %5453 to i32
  %5555 = ashr i32 %5554, 1
  %5556 = add nsw i32 %5555, 532487669
  %5557 = bitcast i32 %5556 to float
  %5558 = fsub fast float 1.000000e+00, %5557
  %5559 = bitcast float %5558 to i32
  %5560 = sub nsw i32 2129859010, %5559
  %5561 = bitcast i32 %5560 to float
  %5562 = fmul fast float %5561, 2.000000e+00
  %5563 = fsub fast float 0x4002A9FBE0000000, %5544
  %5564 = fadd fast float %5544, 0x3FD54FDF00000000
  %5565 = bitcast float %5564 to i32
  %5566 = sub nsw i32 2129859010, %5565
  %5567 = bitcast i32 %5566 to float
  %5568 = fmul fast float %5567, %5563
  %5569 = fmul fast float %5568, %5568
  %5570 = fsub fast float 0x4002A9FBE0000000, %5553
  %5571 = fadd fast float %5553, 0x3FD54FDF00000000
  %5572 = bitcast float %5571 to i32
  %5573 = sub nsw i32 2129859010, %5572
  %5574 = bitcast i32 %5573 to float
  %5575 = fmul fast float %5574, %5570
  %5576 = fmul fast float %5575, %5575
  %5577 = fsub fast float 0x4002A9FBE0000000, %5562
  %5578 = fadd fast float %5562, 0x3FD54FDF00000000
  %5579 = bitcast float %5578 to i32
  %5580 = sub nsw i32 2129859010, %5579
  %5581 = bitcast i32 %5580 to float
  %5582 = fmul fast float %5581, %5577
  %5583 = fmul fast float %5582, %5582
  %5584 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5569)  ; FMax(a,b)
  %5585 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5576)  ; FMax(a,b)
  %5586 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5583)  ; FMax(a,b)
  %5587 = fsub fast float 1.000000e+00, %5473
  %5588 = fadd fast float %5587, %5488
  %5589 = call float @dx.op.unary.f32(i32 7, float %5588)  ; Saturate(value)
  %5590 = fsub fast float 1.000000e+00, %4841
  %5591 = fmul fast float %5530, %5590
  %5592 = fmul fast float %5533, %5533
  %5593 = fmul fast float %5592, %5591
  %5594 = fmul fast float %5593, %5535
  %5595 = fmul fast float %5590, 0xBFE99999A0000000
  %5596 = fmul fast float %5595, %5475
  %5597 = fmul fast float %5596, %5492
  %5598 = fadd fast float %5597, 1.000000e+00
  %5599 = fadd fast float %5454, -1.000000e+00
  %5600 = fmul fast float %5598, %5599
  %5601 = fadd fast float %5600, 1.000000e+00
  %5602 = fsub fast float %5584, %5451
  %5603 = fsub fast float %5585, %5452
  %5604 = fsub fast float %5586, %5453
  %5605 = fmul fast float %5594, %5602
  %5606 = fmul fast float %5594, %5603
  %5607 = fmul fast float %5594, %5604
  %5608 = fadd fast float %5605, %5451
  %5609 = fadd fast float %5606, %5452
  %5610 = fadd fast float %5607, %5453
  %5611 = fsub fast float %106, %5445
  %5612 = fsub fast float %107, %5446
  %5613 = fsub fast float %108, %5447
  %5614 = fmul fast float %5594, %5611
  %5615 = fmul fast float %5594, %5612
  %5616 = fmul fast float %5594, %5613
  %5617 = fadd fast float %5614, %5445
  %5618 = fadd fast float %5615, %5446
  %5619 = fadd fast float %5616, %5447
  %5620 = fmul fast float %5594, %5589
  %5621 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  %5622 = fsub fast float 1.000000e+00, %5621
  %5623 = fmul fast float %5620, %5622
  %5624 = fadd fast float %5623, %5621
  %5625 = fsub fast float 1.000000e+00, %5455
  %5626 = fmul fast float %5594, %5625
  %5627 = fadd fast float %5626, %5455
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = call float @dx.op.unary.f32(i32 25, float %5628)  ; Rsqrt(value)
  %5630 = fmul fast float %5617, %5629
  %5631 = fmul fast float %5618, %5629
  %5632 = fmul fast float %5619, %5629
  br label %5633

; <label>:5633                                    ; preds = %5466, %5459
  %5634 = phi float [ %5465, %5459 ], [ %5472, %5466 ]
  %5635 = phi float [ %5464, %5459 ], [ %5470, %5466 ]
  %5636 = phi float [ %5463, %5459 ], [ %5468, %5466 ]
  %5637 = phi float [ %5462, %5459 ], [ %5471, %5466 ]
  %5638 = phi float [ %5461, %5459 ], [ %5469, %5466 ]
  %5639 = phi float [ %5460, %5459 ], [ %5467, %5466 ]
  %5640 = phi float [ %5442, %5459 ], [ %5517, %5466 ]
  %5641 = phi float [ %5443, %5459 ], [ %5518, %5466 ]
  %5642 = phi float [ %5444, %5459 ], [ %5519, %5466 ]
  %5643 = phi float [ %5445, %5459 ], [ %5630, %5466 ]
  %5644 = phi float [ %5446, %5459 ], [ %5631, %5466 ]
  %5645 = phi float [ %5447, %5459 ], [ %5632, %5466 ]
  %5646 = phi float [ %5451, %5459 ], [ %5608, %5466 ]
  %5647 = phi float [ %5452, %5459 ], [ %5609, %5466 ]
  %5648 = phi float [ %5453, %5459 ], [ %5610, %5466 ]
  %5649 = phi float [ %5454, %5459 ], [ %5624, %5466 ]
  %5650 = phi float [ %5455, %5459 ], [ %5627, %5466 ]
  %5651 = select i1 %252, float 0.000000e+00, float %5648
  %5652 = call float @dx.op.dot3.f32(i32 55, float %5643, float %5644, float %5645, float %5636, float %5635, float %5634)  ; Dot3(ax,ay,az,bx,by,bz)
  %5653 = call float @dx.op.unary.f32(i32 7, float %5652)  ; Saturate(value)
  %5654 = call float @dx.op.dot3.f32(i32 55, float %5639, float %5638, float %5637, float %5643, float %5644, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5655 = fmul fast float %5654, 2.000000e+00
  %5656 = fmul fast float %5655, %5643
  %5657 = fmul fast float %5655, %5644
  %5658 = fmul fast float %5655, %5645
  %5659 = fsub fast float %5639, %5656
  %5660 = fsub fast float %5638, %5657
  %5661 = fsub fast float %5637, %5658
  %5662 = call float @dx.op.binary.f32(i32 36, float %5650, float 1.000000e+00)  ; FMin(a,b)
  %5663 = fsub fast float 1.000000e+00, %5650
  %5664 = bitcast float %5663 to i32
  %5665 = sub nsw i32 2129859010, %5664
  %5666 = bitcast i32 %5665 to float
  %5667 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5668 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5669 = fcmp fast oeq float %5668, 0.000000e+00
  %5670 = fcmp fast oeq float %5667, 0.000000e+00
  %5671 = or i1 %5670, %5669
  br i1 %5671, label %5701, label %5672

; <label>:5672                                    ; preds = %5633
  %5673 = fsub fast float -0.000000e+00, %73
  %5674 = fsub fast float -0.000000e+00, %71
  %5675 = call float @dx.op.unary.f32(i32 24, float %5668)  ; Sqrt(value)
  %5676 = fdiv fast float %5675, %5667
  %5677 = fcmp fast ogt float %5676, 0x3FFB6F8900000000
  %5678 = select i1 %5677, float 0x3FFB6F8900000000, float %5676
  %5679 = fmul fast float %5678, 0x3FE8A23460000000
  %5680 = call float @dx.op.unary.f32(i32 7, float %5679)  ; Saturate(value)
  %5681 = call float @dx.op.binary.f32(i32 35, float %5678, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5682 = fmul fast float %5680, %5667
  %5683 = fmul fast float %5681, 0x3FF279A740000000
  %5684 = fadd fast float %5683, -1.000000e+00
  %5685 = call float @dx.op.dot3.f32(i32 55, float %5673, float %5674, float %72, float %5673, float %5674, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5686 = call float @dx.op.unary.f32(i32 25, float %5685)  ; Rsqrt(value)
  %5687 = fmul fast float %5686, %5673
  %5688 = fmul fast float %5686, %5674
  %5689 = fmul fast float %5686, %72
  %5690 = fmul fast float %5684, %5684
  %5691 = fsub fast float 1.000000e+00, %5690
  %5692 = fmul fast float %5681, 0x40005F8BE0000000
  %5693 = fsub fast float 0x400C5BF8A0000000, %5692
  %5694 = fdiv fast float %5682, %5693
  %5695 = fmul fast float %5694, 0x3FEE31C3C0000000
  %5696 = fmul fast float %5695, %5691
  %5697 = fmul fast float %5681, 0x3FDACB7480000000
  %5698 = fadd fast float %5697, 0xBFD7347680000000
  %5699 = fmul fast float %5698, %5694
  %5700 = fmul fast float %5699, %5691
  br label %5701

; <label>:5701                                    ; preds = %5672, %5633
  %5702 = phi float [ %5687, %5672 ], [ 0.000000e+00, %5633 ]
  %5703 = phi float [ %5688, %5672 ], [ 0.000000e+00, %5633 ]
  %5704 = phi float [ %5689, %5672 ], [ 0.000000e+00, %5633 ]
  %5705 = phi float [ %5696, %5672 ], [ 0.000000e+00, %5633 ]
  %5706 = phi float [ %5700, %5672 ], [ 0.000000e+00, %5633 ]
  %5707 = call float @dx.op.dot3.f32(i32 55, float %5702, float %5703, float %5704, float %5643, float %5644, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5708 = fmul fast float %5707, 0x3FDF454380000000
  %5709 = fmul fast float %5707, %5707
  %5710 = fmul fast float %5709, 0x3FEE471020000000
  %5711 = fadd fast float %5710, 0xBFD42F6020000000
  %5712 = fmul fast float %5667, 0x3FD20DD760000000
  %5713 = fmul fast float %5711, %5706
  %5714 = fadd fast float %5713, %5712
  %5715 = fmul fast float %5708, %5705
  %5716 = fadd fast float %5714, %5715
  %5717 = fsub fast float %5714, %5715
  %5718 = call float @dx.op.dot3.f32(i32 55, float %5702, float %5703, float %5704, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5719 = fmul fast float %5718, 0x3FDF454380000000
  %5720 = fmul fast float %5718, %5718
  %5721 = fmul fast float %5720, 0x3FEE471020000000
  %5722 = fadd fast float %5721, 0xBFD42F6020000000
  %5723 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5705, float %5706, float 0x3FD20DD760000000, float %5719, float %5722)  ; Dot3(ax,ay,az,bx,by,bz)
  %5724 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %5725 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = fcmp fast oeq float %5725, 0.000000e+00
  %5727 = fcmp fast oeq float %5724, 0.000000e+00
  %5728 = or i1 %5727, %5726
  br i1 %5728, label %5758, label %5729

; <label>:5729                                    ; preds = %5701
  %5730 = fsub fast float -0.000000e+00, %69
  %5731 = fsub fast float -0.000000e+00, %67
  %5732 = call float @dx.op.unary.f32(i32 24, float %5725)  ; Sqrt(value)
  %5733 = fdiv fast float %5732, %5724
  %5734 = fcmp fast ogt float %5733, 0x3FFB6F8900000000
  %5735 = select i1 %5734, float 0x3FFB6F8900000000, float %5733
  %5736 = fmul fast float %5735, 0x3FE8A23460000000
  %5737 = call float @dx.op.unary.f32(i32 7, float %5736)  ; Saturate(value)
  %5738 = call float @dx.op.binary.f32(i32 35, float %5735, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5739 = fmul fast float %5737, %5724
  %5740 = fmul fast float %5738, 0x3FF279A740000000
  %5741 = fadd fast float %5740, -1.000000e+00
  %5742 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %68, float %5730, float %5731, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5743 = call float @dx.op.unary.f32(i32 25, float %5742)  ; Rsqrt(value)
  %5744 = fmul fast float %5743, %5730
  %5745 = fmul fast float %5743, %5731
  %5746 = fmul fast float %5743, %68
  %5747 = fmul fast float %5741, %5741
  %5748 = fsub fast float 1.000000e+00, %5747
  %5749 = fmul fast float %5738, 0x40005F8BE0000000
  %5750 = fsub fast float 0x400C5BF8A0000000, %5749
  %5751 = fdiv fast float %5739, %5750
  %5752 = fmul fast float %5751, 0x3FEE31C3C0000000
  %5753 = fmul fast float %5752, %5748
  %5754 = fmul fast float %5738, 0x3FDACB7480000000
  %5755 = fadd fast float %5754, 0xBFD7347680000000
  %5756 = fmul fast float %5755, %5751
  %5757 = fmul fast float %5756, %5748
  br label %5758

; <label>:5758                                    ; preds = %5729, %5701
  %5759 = phi float [ %5744, %5729 ], [ 0.000000e+00, %5701 ]
  %5760 = phi float [ %5745, %5729 ], [ 0.000000e+00, %5701 ]
  %5761 = phi float [ %5746, %5729 ], [ 0.000000e+00, %5701 ]
  %5762 = phi float [ %5753, %5729 ], [ 0.000000e+00, %5701 ]
  %5763 = phi float [ %5757, %5729 ], [ 0.000000e+00, %5701 ]
  %5764 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5760, float %5761, float %5643, float %5644, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5765 = fmul fast float %5764, 0x3FDF454380000000
  %5766 = fmul fast float %5764, %5764
  %5767 = fmul fast float %5766, 0x3FEE471020000000
  %5768 = fadd fast float %5767, 0xBFD42F6020000000
  %5769 = fmul fast float %5724, 0x3FD20DD760000000
  %5770 = fmul fast float %5768, %5763
  %5771 = fadd fast float %5770, %5769
  %5772 = fmul fast float %5765, %5762
  %5773 = fadd fast float %5771, %5772
  %5774 = fsub fast float %5771, %5772
  %5775 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5760, float %5761, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5776 = fmul fast float %5775, 0x3FDF454380000000
  %5777 = fmul fast float %5775, %5775
  %5778 = fmul fast float %5777, 0x3FEE471020000000
  %5779 = fadd fast float %5778, 0xBFD42F6020000000
  %5780 = call float @dx.op.dot3.f32(i32 55, float %5724, float %5762, float %5763, float 0x3FD20DD760000000, float %5776, float %5779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %5782 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5783 = fcmp fast oeq float %5782, 0.000000e+00
  %5784 = fcmp fast oeq float %5781, 0.000000e+00
  %5785 = or i1 %5784, %5783
  br i1 %5785, label %5815, label %5786

; <label>:5786                                    ; preds = %5758
  %5787 = fsub fast float -0.000000e+00, %65
  %5788 = fsub fast float -0.000000e+00, %63
  %5789 = call float @dx.op.unary.f32(i32 24, float %5782)  ; Sqrt(value)
  %5790 = fdiv fast float %5789, %5781
  %5791 = fcmp fast ogt float %5790, 0x3FFB6F8900000000
  %5792 = select i1 %5791, float 0x3FFB6F8900000000, float %5790
  %5793 = fmul fast float %5792, 0x3FE8A23460000000
  %5794 = call float @dx.op.unary.f32(i32 7, float %5793)  ; Saturate(value)
  %5795 = call float @dx.op.binary.f32(i32 35, float %5792, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5796 = fmul fast float %5794, %5781
  %5797 = fmul fast float %5795, 0x3FF279A740000000
  %5798 = fadd fast float %5797, -1.000000e+00
  %5799 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %64, float %5787, float %5788, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5800 = call float @dx.op.unary.f32(i32 25, float %5799)  ; Rsqrt(value)
  %5801 = fmul fast float %5800, %5787
  %5802 = fmul fast float %5800, %5788
  %5803 = fmul fast float %5800, %64
  %5804 = fmul fast float %5798, %5798
  %5805 = fsub fast float 1.000000e+00, %5804
  %5806 = fmul fast float %5795, 0x40005F8BE0000000
  %5807 = fsub fast float 0x400C5BF8A0000000, %5806
  %5808 = fdiv fast float %5796, %5807
  %5809 = fmul fast float %5808, 0x3FEE31C3C0000000
  %5810 = fmul fast float %5809, %5805
  %5811 = fmul fast float %5795, 0x3FDACB7480000000
  %5812 = fadd fast float %5811, 0xBFD7347680000000
  %5813 = fmul fast float %5812, %5808
  %5814 = fmul fast float %5813, %5805
  br label %5815

; <label>:5815                                    ; preds = %5786, %5758
  %5816 = phi float [ %5801, %5786 ], [ 0.000000e+00, %5758 ]
  %5817 = phi float [ %5802, %5786 ], [ 0.000000e+00, %5758 ]
  %5818 = phi float [ %5803, %5786 ], [ 0.000000e+00, %5758 ]
  %5819 = phi float [ %5810, %5786 ], [ 0.000000e+00, %5758 ]
  %5820 = phi float [ %5814, %5786 ], [ 0.000000e+00, %5758 ]
  %5821 = call float @dx.op.dot3.f32(i32 55, float %5816, float %5817, float %5818, float %5643, float %5644, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5822 = fmul fast float %5821, 0x3FDF454380000000
  %5823 = fmul fast float %5821, %5821
  %5824 = fmul fast float %5823, 0x3FEE471020000000
  %5825 = fadd fast float %5824, 0xBFD42F6020000000
  %5826 = fmul fast float %5781, 0x3FD20DD760000000
  %5827 = fmul fast float %5825, %5820
  %5828 = fadd fast float %5827, %5826
  %5829 = fmul fast float %5822, %5819
  %5830 = fadd fast float %5828, %5829
  %5831 = fsub fast float %5828, %5829
  %5832 = call float @dx.op.dot3.f32(i32 55, float %5816, float %5817, float %5818, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5833 = fmul fast float %5832, 0x3FDF454380000000
  %5834 = fmul fast float %5832, %5832
  %5835 = fmul fast float %5834, 0x3FEE471020000000
  %5836 = fadd fast float %5835, 0xBFD42F6020000000
  %5837 = call float @dx.op.dot3.f32(i32 55, float %5781, float %5819, float %5820, float 0x3FD20DD760000000, float %5833, float %5836)  ; Dot3(ax,ay,az,bx,by,bz)
  %5838 = call float @dx.op.binary.f32(i32 35, float %5716, float 0.000000e+00)  ; FMax(a,b)
  %5839 = call float @dx.op.binary.f32(i32 35, float %5773, float 0.000000e+00)  ; FMax(a,b)
  %5840 = call float @dx.op.binary.f32(i32 35, float %5830, float 0.000000e+00)  ; FMax(a,b)
  %5841 = call float @dx.op.binary.f32(i32 35, float %5717, float 0.000000e+00)  ; FMax(a,b)
  %5842 = call float @dx.op.binary.f32(i32 35, float %5774, float 0.000000e+00)  ; FMax(a,b)
  %5843 = call float @dx.op.binary.f32(i32 35, float %5831, float 0.000000e+00)  ; FMax(a,b)
  %5844 = call float @dx.op.binary.f32(i32 35, float %5723, float 0.000000e+00)  ; FMax(a,b)
  %5845 = call float @dx.op.binary.f32(i32 35, float %5780, float 0.000000e+00)  ; FMax(a,b)
  %5846 = call float @dx.op.binary.f32(i32 35, float %5837, float 0.000000e+00)  ; FMax(a,b)
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 0
  %5849 = call float @dx.op.binary.f32(i32 36, float %5640, float %5848)  ; FMin(a,b)
  %5850 = fsub fast float 1.000000e+00, %5662
  %5851 = fmul fast float %5849, %5850
  %5852 = fsub fast float 1.000000e+00, %5851
  %5853 = bitcast float %5852 to i32
  %5854 = sub nsw i32 2129859010, %5853
  %5855 = bitcast i32 %5854 to float
  %5856 = call float @dx.op.binary.f32(i32 36, float %5641, float %5848)  ; FMin(a,b)
  %5857 = fmul fast float %5856, %5850
  %5858 = fsub fast float 1.000000e+00, %5857
  %5859 = bitcast float %5858 to i32
  %5860 = sub nsw i32 2129859010, %5859
  %5861 = bitcast i32 %5860 to float
  %5862 = call float @dx.op.binary.f32(i32 36, float %5642, float %5848)  ; FMin(a,b)
  %5863 = fmul fast float %5862, %5850
  %5864 = fsub fast float 1.000000e+00, %5863
  %5865 = bitcast float %5864 to i32
  %5866 = sub nsw i32 2129859010, %5865
  %5867 = bitcast i32 %5866 to float
  %5868 = fmul fast float %5838, %5662
  %5869 = fmul fast float %5868, %5855
  %5870 = fmul fast float %5839, %5662
  %5871 = fmul fast float %5870, %5861
  %5872 = fmul fast float %5840, %5662
  %5873 = fmul fast float %5872, %5867
  %5874 = call float @dx.op.binary.f32(i32 36, float %5646, float %5848)  ; FMin(a,b)
  %5875 = fmul fast float %5874, %5850
  %5876 = fsub fast float 1.000000e+00, %5875
  %5877 = bitcast float %5876 to i32
  %5878 = sub nsw i32 2129859010, %5877
  %5879 = bitcast i32 %5878 to float
  %5880 = call float @dx.op.binary.f32(i32 36, float %5647, float %5848)  ; FMin(a,b)
  %5881 = fmul fast float %5880, %5850
  %5882 = fsub fast float 1.000000e+00, %5881
  %5883 = bitcast float %5882 to i32
  %5884 = sub nsw i32 2129859010, %5883
  %5885 = bitcast i32 %5884 to float
  %5886 = call float @dx.op.binary.f32(i32 36, float %5651, float %5848)  ; FMin(a,b)
  %5887 = fmul fast float %5886, %5850
  %5888 = fsub fast float 1.000000e+00, %5887
  %5889 = bitcast float %5888 to i32
  %5890 = sub nsw i32 2129859010, %5889
  %5891 = bitcast i32 %5890 to float
  %5892 = fmul fast float %5844, %5662
  %5893 = fmul fast float %5892, %5879
  %5894 = fmul fast float %5845, %5662
  %5895 = fmul fast float %5894, %5885
  %5896 = fmul fast float %5846, %5662
  %5897 = fmul fast float %5896, %5891
  %5898 = call float @dx.op.dot3.f32(i32 55, float %5869, float %5871, float %5873, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5899 = select i1 %252, float 0.000000e+00, float %5869
  %5900 = select i1 %252, float %5898, float %5871
  %5901 = select i1 %252, float 0.000000e+00, float %5873
  %5902 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5842, float %5843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5903 = select i1 %252, float 0.000000e+00, float %5841
  %5904 = select i1 %252, float %5902, float %5842
  %5905 = select i1 %252, float 0.000000e+00, float %5843
  %5906 = call float @dx.op.dot3.f32(i32 55, float %5893, float %5895, float %5897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5907 = select i1 %252, float 0.000000e+00, float %5893
  %5908 = select i1 %252, float %5906, float %5895
  %5909 = select i1 %252, float 0.000000e+00, float %5897
  %5910 = fmul fast float %3993, %3993
  %5911 = call float @dx.op.unary.f32(i32 7, float %5910)  ; Saturate(value)
  %5912 = fmul fast float %5653, 9.843750e-01
  %5913 = fmul fast float %5649, 9.843750e-01
  %5914 = fadd fast float %5912, 7.812500e-03
  %5915 = fadd fast float %5913, 7.812500e-03
  %5916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %5914, float %5915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5917 = extractvalue %dx.types.ResRet.f32 %5916, 0
  %5918 = extractvalue %dx.types.ResRet.f32 %5916, 1
  %5919 = extractvalue %dx.types.ResRet.f32 %5916, 2
  %5920 = extractvalue %dx.types.ResRet.f32 %5916, 3
  %5921 = fsub fast float 1.000000e+00, %5911
  %5922 = fsub fast float %5919, %5917
  %5923 = fsub fast float %5920, %5918
  %5924 = fmul fast float %5922, %5921
  %5925 = fmul fast float %5923, %5921
  %5926 = fadd fast float %5924, %5917
  %5927 = fadd fast float %5925, %5918
  %5928 = fmul fast float %5926, %5646
  %5929 = fmul fast float %5926, %5647
  %5930 = fmul fast float %5926, %5651
  %5931 = fadd fast float %5928, %5927
  %5932 = fadd fast float %5929, %5927
  %5933 = fadd fast float %5930, %5927
  %5934 = fcmp fast ogt float %4689, 0.000000e+00
  br i1 %5934, label %5935, label %5961

; <label>:5935                                    ; preds = %5815
  %5936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4689, float %5653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5937 = extractvalue %dx.types.ResRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.ResRet.f32 %5936, 1
  %5939 = extractvalue %dx.types.ResRet.f32 %5936, 2
  %5940 = fadd fast float %5937, -5.000000e-01
  %5941 = fadd fast float %5938, -5.000000e-01
  %5942 = fadd fast float %5939, -5.000000e-01
  %5943 = fsub fast float 1.000000e+00, %5646
  %5944 = fsub fast float 1.000000e+00, %5647
  %5945 = fsub fast float 1.000000e+00, %5651
  %5946 = fmul fast float %5646, 4.000000e+00
  %5947 = fmul fast float %5946, %5943
  %5948 = fmul fast float %5947, %5940
  %5949 = fmul fast float %5647, 4.000000e+00
  %5950 = fmul fast float %5949, %5944
  %5951 = fmul fast float %5950, %5941
  %5952 = fmul fast float %5651, 4.000000e+00
  %5953 = fmul fast float %5952, %5945
  %5954 = fmul fast float %5953, %5942
  %5955 = fadd fast float %5948, %5931
  %5956 = fadd fast float %5951, %5932
  %5957 = fadd fast float %5954, %5933
  %5958 = call float @dx.op.unary.f32(i32 7, float %5955)  ; Saturate(value)
  %5959 = call float @dx.op.unary.f32(i32 7, float %5956)  ; Saturate(value)
  %5960 = call float @dx.op.unary.f32(i32 7, float %5957)  ; Saturate(value)
  br label %5961

; <label>:5961                                    ; preds = %5935, %5815
  %5962 = phi float [ %5958, %5935 ], [ %5931, %5815 ]
  %5963 = phi float [ %5959, %5935 ], [ %5932, %5815 ]
  %5964 = phi float [ %5960, %5935 ], [ %5933, %5815 ]
  %5965 = call float @dx.op.binary.f32(i32 35, float %5963, float %5964)  ; FMax(a,b)
  %5966 = call float @dx.op.binary.f32(i32 35, float %5962, float %5965)  ; FMax(a,b)
  %5967 = fsub fast float 1.000000e+00, %5966
  %5968 = call float @dx.op.dot3.f32(i32 55, float %5640, float %5641, float %5642, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5969 = fcmp fast ogt float %5968, 0x3E7FF19E20000000
  %5970 = fdiv fast float 1.000000e+00, %5968
  %5971 = select i1 %5969, float %5970, float 0.000000e+00
  %5972 = fmul fast float %5971, %5640
  %5973 = fmul fast float %5971, %5641
  %5974 = fmul fast float %5971, %5642
  %5975 = fadd fast float %5972, -1.000000e+00
  %5976 = fadd fast float %5973, -1.000000e+00
  %5977 = fadd fast float %5974, -1.000000e+00
  %5978 = fmul fast float %5975, 5.000000e-01
  %5979 = fmul fast float %5976, 5.000000e-01
  %5980 = fmul fast float %5977, 5.000000e-01
  %5981 = fadd fast float %5978, 1.000000e+00
  %5982 = fadd fast float %5979, 1.000000e+00
  %5983 = fadd fast float %5980, 1.000000e+00
  %5984 = call float @dx.op.binary.f32(i32 35, float %5653, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5985 = fdiv fast float %3993, %5984
  %5986 = fcmp fast olt float %4738, 1.270000e+02
  %5987 = fcmp fast olt float %4739, 1.270000e+02
  %5988 = fcmp fast olt float %4740, 1.270000e+02
  %5989 = fmul fast float %4738, 0xBFF7154760000000
  %5990 = fmul fast float %5989, %5985
  %5991 = fmul fast float %4739, 0xBFF7154760000000
  %5992 = fmul fast float %5991, %5985
  %5993 = fmul fast float %4740, 0xBFF7154760000000
  %5994 = fmul fast float %5993, %5985
  %5995 = call float @dx.op.unary.f32(i32 21, float %5990)  ; Exp(value)
  %5996 = call float @dx.op.unary.f32(i32 21, float %5992)  ; Exp(value)
  %5997 = call float @dx.op.unary.f32(i32 21, float %5994)  ; Exp(value)
  %5998 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  %5999 = call float @dx.op.unary.f32(i32 7, float %5996)  ; Saturate(value)
  %6000 = call float @dx.op.unary.f32(i32 7, float %5997)  ; Saturate(value)
  %6001 = select i1 %5986, float %5998, float 0.000000e+00
  %6002 = select i1 %5987, float %5999, float 0.000000e+00
  %6003 = select i1 %5988, float %6000, float 0.000000e+00
  %6004 = fmul fast float %6001, %5967
  %6005 = fmul fast float %6002, %5967
  %6006 = fmul fast float %6003, %5967
  %6007 = fadd fast float %6004, -1.000000e+00
  %6008 = fadd fast float %6005, -1.000000e+00
  %6009 = fadd fast float %6006, -1.000000e+00
  %6010 = fmul fast float %6007, %4686
  %6011 = fmul fast float %6008, %4686
  %6012 = fmul fast float %6009, %4686
  %6013 = fmul fast float %5962, %5907
  %6014 = fmul fast float %5963, %5908
  %6015 = fmul fast float %5964, %5909
  %6016 = fsub fast float 1.000000e+00, %5653
  %6017 = bitcast float %6016 to i32
  %6018 = sitofp i32 %6017 to float
  %6019 = fmul fast float %6018, 5.000000e+00
  %6020 = fadd fast float %6019, 0xC1EFBF8940000000
  %6021 = fptosi float %6020 to i32
  %6022 = bitcast i32 %6021 to float
  %6023 = fmul fast float %6022, %4690
  %6024 = fmul fast float %5899, %6023
  %6025 = fmul fast float %6024, %5967
  %6026 = fmul fast float %6025, %5981
  %6027 = fmul fast float %5900, %6023
  %6028 = fmul fast float %6027, %5967
  %6029 = fmul fast float %6028, %5982
  %6030 = fmul fast float %5901, %6023
  %6031 = fmul fast float %6030, %5967
  %6032 = fmul fast float %6031, %5983
  %6033 = fadd fast float %6013, %4679
  %6034 = fadd fast float %6033, %6026
  %6035 = fmul fast float %6034, %4686
  %6036 = fadd fast float %6014, %4680
  %6037 = fadd fast float %6036, %6029
  %6038 = fmul fast float %6037, %4686
  %6039 = fadd fast float %6015, %4681
  %6040 = fadd fast float %6039, %6032
  %6041 = fmul fast float %6040, %4686
  %6042 = fmul fast float %5647, 0x4012D0A400000000
  %6043 = fadd fast float %6012, 1.000000e+00
  %6044 = fadd fast float %6011, 1.000000e+00
  %6045 = fadd fast float %6010, 1.000000e+00
  %6046 = fmul fast float %5967, %5901
  %6047 = fmul fast float %5967, %5900
  %6048 = fmul fast float %5967, %5899
  %6049 = fsub fast float 1.000000e+00, %5649
  %6050 = fmul fast float %6049, %4686
  %6051 = fsub fast float 1.000000e+00, %6050
  %6052 = call float @dx.op.unary.f32(i32 7, float %6051)  ; Saturate(value)
  %6053 = fsub fast float 1.000000e+00, %6052
  %6054 = fadd fast float %6042, 0x3FDB6377A0000000
  %6055 = fmul fast float %6053, %6054
  %6056 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6057 = fadd fast float %6055, %6056
  %6058 = call float @dx.op.unary.f32(i32 7, float %6057)  ; Saturate(value)
  %6059 = call float @dx.op.binary.f32(i32 35, float %6058, float 0x3F847AE140000000)  ; FMax(a,b)
  %6060 = fmul fast float %6059, %6059
  %6061 = fmul fast float %6060, %6060
  %6062 = fmul fast float %6061, 0xC00A935000000000
  %6063 = call float @dx.op.unary.f32(i32 21, float %6062)  ; Exp(value)
  %6064 = fsub fast float 1.000000e+00, %6063
  %6065 = fmul fast float %6045, %5903
  %6066 = fmul fast float %6065, %6064
  %6067 = fmul fast float %6044, %5904
  %6068 = fmul fast float %6067, %6064
  %6069 = fmul fast float %6043, %5905
  %6070 = fmul fast float %6069, %6064
  %6071 = fadd fast float %6066, %6048
  %6072 = fmul fast float %6071, %4686
  %6073 = fadd fast float %6068, %6047
  %6074 = fmul fast float %6073, %4686
  %6075 = fadd fast float %6070, %6046
  %6076 = fmul fast float %6075, %4686
  %6077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6078 = extractvalue %dx.types.CBufRet.f32 %6077, 3
  %6079 = fcmp fast oeq float %6078, 0.000000e+00
  br i1 %6079, label %7224, label %6080

; <label>:6080                                    ; preds = %5961
  %6081 = extractvalue %dx.types.CBufRet.f32 %6077, 0
  %6082 = extractvalue %dx.types.CBufRet.f32 %6077, 1
  %6083 = extractvalue %dx.types.CBufRet.f32 %6077, 2
  %6084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6085 = extractvalue %dx.types.CBufRet.f32 %6084, 0
  %6086 = extractvalue %dx.types.CBufRet.f32 %6084, 1
  %6087 = extractvalue %dx.types.CBufRet.f32 %6084, 2
  %6088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6089 = extractvalue %dx.types.CBufRet.f32 %6088, 0
  %6090 = extractvalue %dx.types.CBufRet.f32 %6088, 1
  %6091 = call float @dx.op.dot3.f32(i32 55, float %6085, float %6086, float %6087, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6092 = select i1 %252, float %6089, float %6085
  %6093 = select i1 %252, float %6091, float %6086
  %6094 = select i1 %252, float %6090, float %6087
  %6095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.f32 %6095, 2
  %6097 = fmul fast float %6096, %106
  %6098 = fmul fast float %6096, %107
  %6099 = fmul fast float %6096, %108
  %6100 = fadd fast float %6097, %178
  %6101 = fadd fast float %6098, %179
  %6102 = fadd fast float %6099, %180
  %6103 = fcmp fast olt float %6078, 0.000000e+00
  br i1 %6103, label %6743, label %6104

; <label>:6104                                    ; preds = %6080
  %6105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.f32 %6105, 0
  %6107 = extractvalue %dx.types.CBufRet.f32 %6105, 1
  %6108 = extractvalue %dx.types.CBufRet.f32 %6105, 2
  %6109 = extractvalue %dx.types.CBufRet.f32 %6105, 3
  %6110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.f32 %6110, 0
  %6112 = extractvalue %dx.types.CBufRet.f32 %6110, 1
  %6113 = extractvalue %dx.types.CBufRet.f32 %6110, 2
  %6114 = extractvalue %dx.types.CBufRet.f32 %6110, 3
  %6115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6116 = extractvalue %dx.types.CBufRet.f32 %6115, 0
  %6117 = extractvalue %dx.types.CBufRet.f32 %6115, 1
  %6118 = extractvalue %dx.types.CBufRet.f32 %6115, 2
  %6119 = extractvalue %dx.types.CBufRet.f32 %6115, 3
  %6120 = fmul fast float %6106, %6100
  %6121 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6107, float %6120)  ; FMad(a,b,c)
  %6122 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6108, float %6121)  ; FMad(a,b,c)
  %6123 = fadd fast float %6122, %6109
  %6124 = fmul fast float %6111, %6100
  %6125 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6112, float %6124)  ; FMad(a,b,c)
  %6126 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6113, float %6125)  ; FMad(a,b,c)
  %6127 = fadd fast float %6126, %6114
  %6128 = fmul fast float %6116, %6100
  %6129 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6117, float %6128)  ; FMad(a,b,c)
  %6130 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6118, float %6129)  ; FMad(a,b,c)
  %6131 = fadd fast float %6130, %6119
  %6132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6133 = extractvalue %dx.types.CBufRet.f32 %6132, 0
  %6134 = fcmp fast une float %6133, 0.000000e+00
  %6135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6135, 0
  %6137 = extractvalue %dx.types.CBufRet.f32 %6135, 1
  %6138 = extractvalue %dx.types.CBufRet.f32 %6135, 3
  %6139 = fmul fast float %6138, %6123
  %6140 = fmul fast float %6138, %6127
  %6141 = fadd fast float %6139, %6136
  %6142 = fadd fast float %6140, %6137
  %6143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.f32 %6143, 0
  %6145 = extractvalue %dx.types.CBufRet.f32 %6143, 1
  %6146 = extractvalue %dx.types.CBufRet.f32 %6143, 3
  %6147 = fmul fast float %6146, %6123
  %6148 = fmul fast float %6146, %6127
  %6149 = fadd fast float %6147, %6144
  %6150 = fadd fast float %6148, %6145
  %6151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6152 = extractvalue %dx.types.CBufRet.f32 %6151, 1
  %6153 = fsub fast float %6152, %6131
  %6154 = extractvalue %dx.types.CBufRet.f32 %6151, 2
  %6155 = fmul fast float %6153, %6154
  %6156 = fsub fast float 1.000000e+00, %6155
  %6157 = call float @dx.op.unary.f32(i32 7, float %6156)  ; Saturate(value)
  br i1 %6134, label %6218, label %6158

; <label>:6158                                    ; preds = %6104
  %6159 = extractvalue %dx.types.CBufRet.f32 %6143, 2
  %6160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.f32 %6160, 2
  %6162 = fadd fast float %6161, %6159
  %6163 = fcmp fast ogt float %6162, 0.000000e+00
  br i1 %6163, label %6164, label %6188

; <label>:6164                                    ; preds = %6158
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 0
  %6167 = extractvalue %dx.types.CBufRet.f32 %6165, 1
  %6168 = fsub fast float %6149, %6166
  %6169 = fsub fast float %6150, %6167
  %6170 = fcmp fast olt float %6168, 0.000000e+00
  %6171 = fcmp fast olt float %6169, 0.000000e+00
  %6172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6173 = extractvalue %dx.types.CBufRet.f32 %6172, 0
  %6174 = extractvalue %dx.types.CBufRet.f32 %6172, 1
  %6175 = extractvalue %dx.types.CBufRet.f32 %6172, 2
  %6176 = extractvalue %dx.types.CBufRet.f32 %6172, 3
  %6177 = select i1 %6170, float %6173, float %6175
  %6178 = select i1 %6171, float %6174, float %6176
  %6179 = fmul fast float %6177, %6168
  %6180 = fmul fast float %6178, %6169
  %6181 = call float @dx.op.unary.f32(i32 6, float %6179)  ; FAbs(value)
  %6182 = call float @dx.op.unary.f32(i32 6, float %6180)  ; FAbs(value)
  %6183 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6184 = call float @dx.op.binary.f32(i32 35, float %6181, float %6182)  ; FMax(a,b)
  %6185 = fsub fast float %6183, %6184
  %6186 = call float @dx.op.unary.f32(i32 7, float %6185)  ; Saturate(value)
  %6187 = fmul fast float %6186, %6157
  br label %6188

; <label>:6188                                    ; preds = %6164, %6158
  %6189 = phi float [ %6187, %6164 ], [ 0.000000e+00, %6158 ]
  %6190 = extractvalue %dx.types.CBufRet.f32 %6135, 2
  %6191 = extractvalue %dx.types.CBufRet.f32 %6160, 1
  %6192 = fadd fast float %6191, %6190
  %6193 = fcmp fast ogt float %6192, 0.000000e+00
  br i1 %6193, label %6194, label %6218

; <label>:6194                                    ; preds = %6188
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 0
  %6197 = extractvalue %dx.types.CBufRet.f32 %6195, 1
  %6198 = fsub fast float %6141, %6196
  %6199 = fsub fast float %6142, %6197
  %6200 = fcmp fast olt float %6198, 0.000000e+00
  %6201 = fcmp fast olt float %6199, 0.000000e+00
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.CBufRet.f32 %6202, 1
  %6205 = extractvalue %dx.types.CBufRet.f32 %6202, 2
  %6206 = extractvalue %dx.types.CBufRet.f32 %6202, 3
  %6207 = select i1 %6200, float %6203, float %6205
  %6208 = select i1 %6201, float %6204, float %6206
  %6209 = fmul fast float %6207, %6198
  %6210 = fmul fast float %6208, %6199
  %6211 = call float @dx.op.unary.f32(i32 6, float %6209)  ; FAbs(value)
  %6212 = call float @dx.op.unary.f32(i32 6, float %6210)  ; FAbs(value)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6214 = call float @dx.op.binary.f32(i32 35, float %6211, float %6212)  ; FMax(a,b)
  %6215 = fsub fast float %6213, %6214
  %6216 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6217 = fmul fast float %6216, %6157
  br label %6218

; <label>:6218                                    ; preds = %6194, %6188, %6104
  %6219 = phi float [ 0.000000e+00, %6104 ], [ %6217, %6194 ], [ 0.000000e+00, %6188 ]
  %6220 = phi float [ 0.000000e+00, %6104 ], [ %6189, %6194 ], [ %6189, %6188 ]
  %6221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6222 = extractvalue %dx.types.CBufRet.f32 %6221, 1
  %6223 = call float @dx.op.unary.f32(i32 7, float %6222)  ; Saturate(value)
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6226 = extractvalue %dx.types.CBufRet.f32 %6224, 1
  %6227 = fsub fast float %6123, %6225
  %6228 = fsub fast float %6127, %6226
  %6229 = fcmp fast olt float %6227, 0.000000e+00
  %6230 = fcmp fast olt float %6228, 0.000000e+00
  %6231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6232 = extractvalue %dx.types.CBufRet.f32 %6231, 0
  %6233 = extractvalue %dx.types.CBufRet.f32 %6231, 1
  %6234 = extractvalue %dx.types.CBufRet.f32 %6231, 2
  %6235 = extractvalue %dx.types.CBufRet.f32 %6231, 3
  %6236 = select i1 %6229, float %6232, float %6234
  %6237 = select i1 %6230, float %6233, float %6235
  %6238 = fmul fast float %6236, %6227
  %6239 = fmul fast float %6237, %6228
  %6240 = call float @dx.op.unary.f32(i32 6, float %6238)  ; FAbs(value)
  %6241 = call float @dx.op.unary.f32(i32 6, float %6239)  ; FAbs(value)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6243 = call float @dx.op.binary.f32(i32 35, float %6240, float %6241)  ; FMax(a,b)
  %6244 = fsub fast float %6242, %6243
  %6245 = call float @dx.op.unary.f32(i32 7, float %6244)  ; Saturate(value)
  %6246 = call float @dx.op.binary.f32(i32 36, float %6245, float %6223)  ; FMin(a,b)
  %6247 = fmul fast float %6246, %6157
  %6248 = fsub fast float %6219, %6247
  %6249 = fsub fast float %6220, %6219
  %6250 = fsub fast float %6249, %6247
  %6251 = call float @dx.op.binary.f32(i32 35, float %6219, float %6220)  ; FMax(a,b)
  %6252 = call float @dx.op.binary.f32(i32 35, float %6247, float %6251)  ; FMax(a,b)
  %6253 = fcmp fast olt float %6252, 1.000000e+00
  br i1 %6253, label %6254, label %6652, !dx.controlflow.hints !84

; <label>:6254                                    ; preds = %6218
  %6255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.f32 %6255, 0
  %6257 = fcmp fast une float %6256, 0.000000e+00
  br i1 %6257, label %6258, label %6652, !dx.controlflow.hints !85

; <label>:6258                                    ; preds = %6254
  %6259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6260 = extractvalue %dx.types.CBufRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.CBufRet.f32 %6259, 1
  %6262 = extractvalue %dx.types.CBufRet.f32 %6259, 2
  %6263 = extractvalue %dx.types.CBufRet.f32 %6259, 3
  %6264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6265 = extractvalue %dx.types.CBufRet.f32 %6264, 0
  %6266 = extractvalue %dx.types.CBufRet.f32 %6264, 1
  %6267 = extractvalue %dx.types.CBufRet.f32 %6264, 2
  %6268 = extractvalue %dx.types.CBufRet.f32 %6264, 3
  %6269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6270 = extractvalue %dx.types.CBufRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.CBufRet.f32 %6269, 1
  %6272 = extractvalue %dx.types.CBufRet.f32 %6269, 2
  %6273 = extractvalue %dx.types.CBufRet.f32 %6269, 3
  %6274 = fmul fast float %6260, %6100
  %6275 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6261, float %6274)  ; FMad(a,b,c)
  %6276 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6262, float %6275)  ; FMad(a,b,c)
  %6277 = fadd fast float %6276, %6263
  %6278 = fmul fast float %6265, %6100
  %6279 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6266, float %6278)  ; FMad(a,b,c)
  %6280 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6267, float %6279)  ; FMad(a,b,c)
  %6281 = fadd fast float %6280, %6268
  %6282 = fmul fast float %6270, %6100
  %6283 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6271, float %6282)  ; FMad(a,b,c)
  %6284 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6272, float %6283)  ; FMad(a,b,c)
  %6285 = fadd fast float %6284, %6273
  %6286 = fcmp fast oge float %6277, 1.000000e+00
  %6287 = fcmp fast oge float %6281, 1.000000e+00
  %6288 = or i1 %6286, %6287
  %6289 = fcmp fast olt float %6277, 0.000000e+00
  %6290 = fcmp fast olt float %6281, 0.000000e+00
  %6291 = or i1 %6289, %6290
  %6292 = or i1 %6288, %6291
  br i1 %6292, label %6652, label %6293, !dx.controlflow.hints !86

; <label>:6293                                    ; preds = %6258
  %6294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6295 = extractvalue %dx.types.CBufRet.f32 %6294, 0
  %6296 = extractvalue %dx.types.CBufRet.f32 %6294, 1
  %6297 = extractvalue %dx.types.CBufRet.f32 %6294, 2
  %6298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.i32 %6298, 2
  %6300 = uitofp i32 %6299 to float
  %6301 = extractvalue %dx.types.CBufRet.i32 %6298, 3
  %6302 = uitofp i32 %6301 to float
  %6303 = extractvalue %dx.types.CBufRet.f32 %6294, 3
  %6304 = fmul fast float %6303, 2.000000e+00
  %6305 = fsub fast float %6277, %6295
  %6306 = fsub fast float %6281, %6296
  %6307 = fmul fast float %6304, %6305
  %6308 = fmul fast float %6304, %6306
  %6309 = fdiv fast float 1.000000e+00, %6083
  %6310 = fmul fast float %6308, %6309
  %6311 = call float @dx.op.unary.f32(i32 6, float %6310)  ; FAbs(value)
  %6312 = fmul fast float %6297, %6102
  %6313 = fmul fast float %6312, %6304
  %6314 = call float @dx.op.unary.f32(i32 6, float %6313)  ; FAbs(value)
  %6315 = call float @dx.op.unary.f32(i32 6, float %6307)  ; FAbs(value)
  %6316 = call float @dx.op.binary.f32(i32 35, float %6314, float %6311)  ; FMax(a,b)
  %6317 = call float @dx.op.binary.f32(i32 35, float %6315, float %6316)  ; FMax(a,b)
  %6318 = fmul fast float %6317, 2.000000e+00
  %6319 = call float @dx.op.unary.f32(i32 23, float %6318)  ; Log(value)
  %6320 = call float @dx.op.binary.f32(i32 35, float %6319, float %6300)  ; FMax(a,b)
  %6321 = call float @dx.op.unary.f32(i32 22, float %6320)  ; Frc(value)
  %6322 = fadd fast float %6321, 0xBFEA666660000000
  %6323 = fmul fast float %6322, 8.000000e+00
  %6324 = call float @dx.op.unary.f32(i32 7, float %6323)  ; Saturate(value)
  %6325 = call float @dx.op.unary.f32(i32 27, float %6320)  ; Round_ni(value)
  %6326 = fadd fast float %6325, %6324
  %6327 = call float @dx.op.binary.f32(i32 36, float %6326, float %6302)  ; FMin(a,b)
  %6328 = call float @dx.op.unary.f32(i32 27, float %6327)  ; Round_ni(value)
  %6329 = fsub fast float -0.000000e+00, %6328
  %6330 = call float @dx.op.unary.f32(i32 21, float %6329)  ; Exp(value)
  %6331 = fmul fast float %6330, %6304
  %6332 = fmul fast float %6331, %6277
  %6333 = fmul fast float %6331, %6281
  %6334 = fmul fast float %6332, 2.500000e-01
  %6335 = fmul fast float %6333, 2.500000e-01
  %6336 = fadd fast float %6334, 5.000000e-01
  %6337 = fadd fast float %6335, 5.000000e-01
  %6338 = fsub fast float %6302, %6300
  %6339 = fptoui float %6338 to i32
  %6340 = add i32 %6339, 320
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %6340)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 0
  %6343 = extractvalue %dx.types.CBufRet.f32 %6341, 1
  %6344 = fcmp fast une float %6327, %6302
  %6345 = fsub fast float %6277, %6342
  %6346 = fsub fast float %6281, %6343
  %6347 = call float @dx.op.unary.f32(i32 6, float %6345)  ; FAbs(value)
  %6348 = call float @dx.op.unary.f32(i32 6, float %6346)  ; FAbs(value)
  %6349 = fmul fast float %6347, %6331
  %6350 = fmul fast float %6348, %6331
  %6351 = fcmp fast olt float %6349, 1.000000e+00
  %6352 = fcmp fast olt float %6350, 1.000000e+00
  %6353 = and i1 %6351, %6352
  %6354 = or i1 %6344, %6353
  br i1 %6354, label %6355, label %6652, !dx.controlflow.hints !87

; <label>:6355                                    ; preds = %6293
  %6356 = fmul fast float %6333, 5.000000e-01
  %6357 = fmul fast float %6332, 5.000000e-01
  %6358 = fadd fast float %6356, 5.000000e-01
  %6359 = fadd fast float %6357, 5.000000e-01
  %6360 = sitofp i32 %6299 to float
  %6361 = fsub fast float %6327, %6360
  %6362 = call float @dx.op.unary.f32(i32 27, float %6361)  ; Round_ni(value)
  %6363 = call float @dx.op.unary.f32(i32 22, float %6327)  ; Frc(value)
  %6364 = call float @dx.op.unary.f32(i32 22, float %6359)  ; Frc(value)
  %6365 = call float @dx.op.unary.f32(i32 22, float %6358)  ; Frc(value)
  %6366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %36, float %6364, float %6365, float %6362, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6367 = extractvalue %dx.types.ResRet.f32 %6366, 0
  %6368 = extractvalue %dx.types.ResRet.f32 %6366, 1
  %6369 = extractvalue %dx.types.ResRet.f32 %6366, 2
  %6370 = extractvalue %dx.types.ResRet.f32 %6366, 3
  %6371 = fcmp fast ogt float %6363, 0.000000e+00
  br i1 %6371, label %6372, label %6393, !dx.controlflow.hints !88

; <label>:6372                                    ; preds = %6355
  %6373 = fadd fast float %6362, 1.000000e+00
  %6374 = call float @dx.op.unary.f32(i32 22, float %6336)  ; Frc(value)
  %6375 = call float @dx.op.unary.f32(i32 22, float %6337)  ; Frc(value)
  %6376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %36, float %6374, float %6375, float %6373, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6377 = extractvalue %dx.types.ResRet.f32 %6376, 0
  %6378 = extractvalue %dx.types.ResRet.f32 %6376, 1
  %6379 = extractvalue %dx.types.ResRet.f32 %6376, 2
  %6380 = extractvalue %dx.types.ResRet.f32 %6376, 3
  %6381 = fsub fast float %6377, %6367
  %6382 = fsub fast float %6378, %6368
  %6383 = fsub fast float %6379, %6369
  %6384 = fsub fast float %6380, %6370
  %6385 = fmul fast float %6381, %6363
  %6386 = fmul fast float %6382, %6363
  %6387 = fmul fast float %6383, %6363
  %6388 = fmul fast float %6384, %6363
  %6389 = fadd fast float %6385, %6367
  %6390 = fadd fast float %6386, %6368
  %6391 = fadd fast float %6387, %6369
  %6392 = fadd fast float %6388, %6370
  br label %6393

; <label>:6393                                    ; preds = %6372, %6355
  %6394 = phi float [ %6389, %6372 ], [ %6367, %6355 ]
  %6395 = phi float [ %6390, %6372 ], [ %6368, %6355 ]
  %6396 = phi float [ %6391, %6372 ], [ %6369, %6355 ]
  %6397 = phi float [ %6392, %6372 ], [ %6370, %6355 ]
  %6398 = fadd fast float %6394, -5.000000e-01
  %6399 = fadd fast float %6396, -5.000000e-01
  %6400 = fmul fast float %6398, 0xBFD5555560000000
  %6401 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6399, float %6400)  ; FMad(a,b,c)
  %6402 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6395, float 0.000000e+00)  ; FMad(a,b,c)
  %6403 = fadd fast float %6402, %6397
  %6404 = fmul fast float %6398, -7.500000e-01
  %6405 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6399, float %6404)  ; FMad(a,b,c)
  %6406 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6395, float 0.000000e+00)  ; FMad(a,b,c)
  %6407 = fadd fast float %6406, %6397
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 0
  %6410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.f32 %6410, 0
  %6412 = extractvalue %dx.types.CBufRet.f32 %6410, 1
  %6413 = extractvalue %dx.types.CBufRet.f32 %6410, 2
  %6414 = extractvalue %dx.types.CBufRet.f32 %6410, 3
  %6415 = fsub fast float %6411, %6401
  %6416 = fsub fast float %6412, %6403
  %6417 = fsub fast float %6413, %6405
  %6418 = fsub fast float %6414, %6407
  %6419 = fmul fast float %6415, %6409
  %6420 = fmul fast float %6416, %6409
  %6421 = fmul fast float %6417, %6409
  %6422 = fmul fast float %6418, %6409
  %6423 = fadd fast float %6419, %6401
  %6424 = fadd fast float %6420, %6403
  %6425 = fadd fast float %6421, %6405
  %6426 = fadd fast float %6422, %6407
  %6427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6428 = extractvalue %dx.types.ResRet.i32 %6427, 0
  %6429 = and i32 %6428, 536870911
  %6430 = uitofp i32 %6429 to float
  %6431 = fmul fast float %6430, %6277
  %6432 = fmul fast float %6430, %6281
  %6433 = fptoui float %6431 to i32
  %6434 = fptoui float %6432 to i32
  %6435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6436 = extractvalue %dx.types.ResRet.i32 %6435, 0
  %6437 = and i32 %6436, 31
  %6438 = lshr i32 %6433, %6437
  %6439 = lshr i32 %6434, %6437
  %6440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6441 = extractvalue %dx.types.ResRet.i32 %6440, 0
  %6442 = and i32 %6441, 31
  %6443 = shl i32 1, %6442
  %6444 = call i32 @dx.op.binary.i32(i32 40, i32 %6443, i32 4)  ; UMin(a,b)
  %6445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6446 = extractvalue %dx.types.ResRet.i32 %6445, 0
  %6447 = extractvalue %dx.types.ResRet.i32 %6445, 1
  %6448 = icmp eq i32 %6444, 0
  br i1 %6448, label %6490, label %6449

; <label>:6449                                    ; preds = %6393
  br label %6450

; <label>:6450                                    ; preds = %6478, %6449
  %6451 = phi i32 [ %6481, %6478 ], [ 0, %6449 ]
  %6452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6453 = extractvalue %dx.types.ResRet.i32 %6452, 0
  %6454 = lshr i32 %6453, 16
  %6455 = and i32 %6454, 31
  %6456 = shl i32 %6439, %6455
  %6457 = add i32 %6456, %6438
  %6458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6459 = extractvalue %dx.types.ResRet.i32 %6458, 0
  %6460 = and i32 %6459, 31
  %6461 = shl i32 %6457, %6460
  %6462 = add i32 %6461, %6451
  %6463 = shl i32 %6462, 2
  %6464 = add i32 %6463, 32
  %6465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6464, i32 undef)  ; BufferLoad(srv,index,wot)
  %6466 = extractvalue %dx.types.ResRet.i32 %6465, 0
  %6467 = icmp slt i32 %6466, 0
  %6468 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6451
  %6469 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6451
  %6470 = bitcast float* %6468 to i32*
  %6471 = bitcast float* %6469 to i32*
  br i1 %6467, label %6472, label %6478

; <label>:6472                                    ; preds = %6450
  %6473 = and i32 %6466, 1073741823
  %6474 = add nuw nsw i32 %6473, 20
  %6475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6474, i32 undef)  ; BufferLoad(srv,index,wot)
  %6476 = extractvalue %dx.types.ResRet.i32 %6475, 0
  %6477 = extractvalue %dx.types.ResRet.i32 %6475, 1
  br label %6478

; <label>:6478                                    ; preds = %6472, %6450
  %6479 = phi i32 [ %6476, %6472 ], [ %6446, %6450 ]
  %6480 = phi i32 [ %6477, %6472 ], [ %6447, %6450 ]
  store i32 %6479, i32* %6470, align 4
  store i32 %6480, i32* %6471, align 4
  %6481 = add nuw i32 %6451, 1
  %6482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6483 = extractvalue %dx.types.CBufRet.i32 %6482, 2
  %6484 = icmp eq i32 %6483, 0
  %6485 = icmp ugt i32 %6466, -1073741825
  %6486 = and i1 %6485, %6484
  %6487 = icmp ult i32 %6481, %6444
  %6488 = and i1 %6486, %6487
  br i1 %6488, label %6450, label %6489

; <label>:6489                                    ; preds = %6478
  br label %6490

; <label>:6490                                    ; preds = %6489, %6393
  %6491 = phi i32 [ 0, %6393 ], [ %6481, %6489 ]
  %6492 = extractvalue %dx.types.CBufRet.f32 %6255, 2
  %6493 = fptoui float %6492 to i32
  %6494 = icmp eq i32 %6493, 0
  br i1 %6494, label %6546, label %6495

; <label>:6495                                    ; preds = %6490
  br label %6496

; <label>:6496                                    ; preds = %6541, %6495
  %6497 = phi i32 [ %6542, %6541 ], [ %6491, %6495 ]
  %6498 = phi i32 [ %6543, %6541 ], [ 0, %6495 ]
  %6499 = lshr i32 %6498, 2
  %6500 = and i32 %6498, 3
  %6501 = add nuw nsw i32 %6499, 83
  %6502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 %6501)  ; CBufferLoadLegacy(handle,regIndex)
  %6503 = extractvalue %dx.types.CBufRet.i32 %6502, 0
  %6504 = extractvalue %dx.types.CBufRet.i32 %6502, 1
  %6505 = extractvalue %dx.types.CBufRet.i32 %6502, 2
  %6506 = extractvalue %dx.types.CBufRet.i32 %6502, 3
  %6507 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 0
  store i32 %6503, i32* %6507, align 4
  %6508 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 1
  store i32 %6504, i32* %6508, align 4
  %6509 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 2
  store i32 %6505, i32* %6509, align 4
  %6510 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 3
  store i32 %6506, i32* %6510, align 4
  %6511 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 %6500
  %6512 = load i32, i32* %6511, align 4, !tbaa !89, !noalias !93
  %6513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6514 = extractvalue %dx.types.ResRet.i32 %6513, 0
  %6515 = lshr i32 %6514, 16
  %6516 = and i32 %6515, 31
  %6517 = shl i32 %6439, %6516
  %6518 = add i32 %6517, %6438
  %6519 = shl i32 %6518, 2
  %6520 = add i32 %6519, %6512
  %6521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6520, i32 undef)  ; BufferLoad(srv,index,wot)
  %6522 = extractvalue %dx.types.ResRet.i32 %6521, 0
  %6523 = icmp eq i32 %6522, 0
  br i1 %6523, label %6541, label %6524

; <label>:6524                                    ; preds = %6496
  %6525 = icmp slt i32 %6522, 0
  %6526 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6497
  %6527 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6497
  %6528 = bitcast float* %6526 to i32*
  %6529 = bitcast float* %6527 to i32*
  br i1 %6525, label %6530, label %6537

; <label>:6530                                    ; preds = %6524
  %6531 = and i32 %6522, 1073741823
  %6532 = add i32 %6512, 20
  %6533 = add i32 %6532, %6531
  %6534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6533, i32 undef)  ; BufferLoad(srv,index,wot)
  %6535 = extractvalue %dx.types.ResRet.i32 %6534, 0
  %6536 = extractvalue %dx.types.ResRet.i32 %6534, 1
  br label %6537

; <label>:6537                                    ; preds = %6530, %6524
  %6538 = phi i32 [ %6535, %6530 ], [ %6446, %6524 ]
  %6539 = phi i32 [ %6536, %6530 ], [ %6447, %6524 ]
  store i32 %6538, i32* %6528, align 4
  store i32 %6539, i32* %6529, align 4
  %6540 = add i32 %6497, 1
  br label %6541

; <label>:6541                                    ; preds = %6537, %6496
  %6542 = phi i32 [ %6497, %6496 ], [ %6540, %6537 ]
  %6543 = add nuw i32 %6498, 1
  %6544 = icmp eq i32 %6543, %6493
  br i1 %6544, label %6545, label %6496

; <label>:6545                                    ; preds = %6541
  br label %6546

; <label>:6546                                    ; preds = %6545, %6490
  %6547 = phi i32 [ %6491, %6490 ], [ %6542, %6545 ]
  %6548 = icmp eq i32 %6547, 1
  %6549 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  %6550 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  br i1 %6548, label %6551, label %6554

; <label>:6551                                    ; preds = %6546
  %6552 = load float, float* %6549, align 4
  %6553 = load float, float* %6550, align 4
  br label %6581

; <label>:6554                                    ; preds = %6546
  %6555 = load float, float* %6549, align 4
  %6556 = load float, float* %6550, align 4
  %6557 = fdiv fast float 1.000000e+00, %6556
  %6558 = fsub fast float %6555, %6557
  %6559 = icmp ugt i32 %6547, 1
  br i1 %6559, label %6560, label %6576

; <label>:6560                                    ; preds = %6554
  br label %6561

; <label>:6561                                    ; preds = %6561, %6560
  %6562 = phi float [ %6571, %6561 ], [ %6558, %6560 ]
  %6563 = phi float [ %6572, %6561 ], [ %6555, %6560 ]
  %6564 = phi i32 [ %6573, %6561 ], [ 1, %6560 ]
  %6565 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6564
  %6566 = load float, float* %6565, align 4
  %6567 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6564
  %6568 = load float, float* %6567, align 4
  %6569 = fdiv fast float 1.000000e+00, %6568
  %6570 = fsub fast float %6566, %6569
  %6571 = call float @dx.op.binary.f32(i32 36, float %6562, float %6570)  ; FMin(a,b)
  %6572 = call float @dx.op.binary.f32(i32 35, float %6563, float %6566)  ; FMax(a,b)
  %6573 = add nuw i32 %6564, 1
  %6574 = icmp eq i32 %6573, %6547
  br i1 %6574, label %6575, label %6561

; <label>:6575                                    ; preds = %6561
  br label %6576

; <label>:6576                                    ; preds = %6575, %6554
  %6577 = phi float [ %6558, %6554 ], [ %6571, %6575 ]
  %6578 = phi float [ %6555, %6554 ], [ %6572, %6575 ]
  %6579 = fsub fast float %6578, %6577
  %6580 = fdiv fast float 1.000000e+00, %6579
  br label %6581

; <label>:6581                                    ; preds = %6576, %6551
  %6582 = phi float [ %6552, %6551 ], [ %6578, %6576 ]
  %6583 = phi float [ %6553, %6551 ], [ %6580, %6576 ]
  %6584 = fadd fast float %6285, %6582
  %6585 = fmul fast float %6584, %6583
  %6586 = call float @dx.op.unary.f32(i32 7, float %6585)  ; Saturate(value)
  %6587 = fmul fast float %6586, 2.000000e+00
  %6588 = fsub fast float 1.000000e+00, %6587
  %6589 = fmul fast float %6423, %6423
  %6590 = fsub fast float %6424, %6589
  %6591 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6590)  ; FMax(a,b)
  %6592 = fdiv fast float 1.000000e+00, %6591
  %6593 = fmul fast float %6424, %6423
  %6594 = fsub fast float %6425, %6593
  %6595 = fsub fast float %6588, %6423
  %6596 = fmul fast float %6588, %6588
  %6597 = fsub fast float %6596, %6424
  %6598 = fmul fast float %6592, %6594
  %6599 = fmul fast float %6598, %6595
  %6600 = fsub fast float %6597, %6599
  %6601 = fmul fast float %6424, %6424
  %6602 = fsub fast float %6426, %6601
  %6603 = fmul fast float %6594, %6594
  %6604 = fmul fast float %6603, %6592
  %6605 = fsub fast float %6602, %6604
  %6606 = fdiv fast float %6600, %6605
  %6607 = fmul fast float %6606, %6594
  %6608 = fsub fast float %6595, %6607
  %6609 = fmul fast float %6608, %6592
  %6610 = fmul fast float %6609, %6423
  %6611 = fsub fast float 1.000000e+00, %6610
  %6612 = fmul fast float %6606, %6424
  %6613 = fsub fast float %6611, %6612
  %6614 = fmul fast float %6609, %6609
  %6615 = fmul fast float %6606, 4.000000e+00
  %6616 = fmul fast float %6615, %6613
  %6617 = fsub fast float %6614, %6616
  %6618 = call float @dx.op.unary.f32(i32 24, float %6617)  ; Sqrt(value)
  %6619 = fcmp fast oge float %6609, 0.000000e+00
  %6620 = fsub fast float -0.000000e+00, %6618
  %6621 = select i1 %6619, float %6620, float %6618
  %6622 = fsub fast float %6621, %6609
  %6623 = fdiv fast float %6622, %6606
  %6624 = fdiv fast float %6613, %6622
  %6625 = fmul fast float %6623, 5.000000e-01
  %6626 = fmul fast float %6624, 2.000000e+00
  %6627 = select i1 %6619, float %6625, float %6626
  %6628 = select i1 %6619, float %6626, float %6625
  %6629 = call float @dx.op.binary.f32(i32 35, float %6627, float %6628)  ; FMax(a,b)
  %6630 = call float @dx.op.binary.f32(i32 36, float %6627, float %6628)  ; FMin(a,b)
  %6631 = fcmp fast ogt float %6588, %6629
  %6632 = fsub fast float %6588, %6630
  %6633 = fsub fast float %6588, %6629
  %6634 = fsub fast float %6629, %6630
  %6635 = select i1 %6631, float %6633, float %6634
  %6636 = fmul float %6632, %6635
  %6637 = select i1 %6631, float %6630, float %6588
  %6638 = fcmp fast ogt float %6588, %6630
  %6639 = fmul fast float %6637, %6629
  %6640 = fadd fast float %6637, %6629
  %6641 = fmul fast float %6640, %6423
  %6642 = fadd fast float %6639, %6424
  %6643 = fsub fast float %6642, %6641
  %6644 = fdiv fast float %6643, %6636
  %6645 = select i1 %6638, float %6644, float 0.000000e+00
  %6646 = fsub fast float 1.000000e+00, %6645
  %6647 = select i1 %6631, float %6646, float %6645
  %6648 = call float @dx.op.unary.f32(i32 7, float %6647)  ; Saturate(value)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6408, 3
  %6650 = fmul fast float %6649, %6648
  %6651 = fsub fast float 1.000000e+00, %6650
  br label %6652

; <label>:6652                                    ; preds = %6581, %6293, %6258, %6254, %6218
  %6653 = phi float [ 1.000000e+00, %6218 ], [ %6651, %6581 ], [ 1.000000e+00, %6258 ], [ 1.000000e+00, %6293 ], [ 1.000000e+00, %6254 ]
  %6654 = fcmp fast ogt float %6250, 0.000000e+00
  br i1 %6654, label %6655, label %6663, !dx.controlflow.hints !102

; <label>:6655                                    ; preds = %6652
  %6656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6657 = extractvalue %dx.types.CBufRet.f32 %6656, 2
  %6658 = fadd fast float %6657, %6131
  %6659 = call float @dx.op.binary.f32(i32 35, float %6658, float 0.000000e+00)  ; FMax(a,b)
  %6660 = fadd fast float %6659, 0x3F10000000000000
  %6661 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %39, float %6149, float %6150, float undef, float undef, i32 0, i32 0, i32 undef, float %6660)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6662 = extractvalue %dx.types.ResRet.f32 %6661, 0
  br label %6663

; <label>:6663                                    ; preds = %6655, %6652
  %6664 = phi float [ %6662, %6655 ], [ 1.000000e+00, %6652 ]
  %6665 = fcmp fast ogt float %6248, 0.000000e+00
  br i1 %6665, label %6666, label %6674, !dx.controlflow.hints !103

; <label>:6666                                    ; preds = %6663
  %6667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6668 = extractvalue %dx.types.CBufRet.f32 %6667, 1
  %6669 = fadd fast float %6668, %6131
  %6670 = call float @dx.op.binary.f32(i32 35, float %6669, float 0.000000e+00)  ; FMax(a,b)
  %6671 = fadd fast float %6670, 0x3F10000000000000
  %6672 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %39, float %6141, float %6142, float undef, float undef, i32 0, i32 0, i32 undef, float %6671)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6673 = extractvalue %dx.types.ResRet.f32 %6672, 0
  br label %6674

; <label>:6674                                    ; preds = %6666, %6663
  %6675 = phi float [ %6673, %6666 ], [ 1.000000e+00, %6663 ]
  %6676 = fcmp fast ogt float %6247, 0.000000e+00
  br i1 %6676, label %6677, label %6689, !dx.controlflow.hints !104

; <label>:6677                                    ; preds = %6674
  %6678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6679 = extractvalue %dx.types.CBufRet.f32 %6678, 0
  %6680 = fadd fast float %6679, %6131
  %6681 = call float @dx.op.binary.f32(i32 35, float %6680, float 0.000000e+00)  ; FMax(a,b)
  %6682 = fadd fast float %6681, 0x3F10000000000000
  br i1 %6134, label %6683, label %6686, !dx.controlflow.hints !105

; <label>:6683                                    ; preds = %6677
  %6684 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %39, float %6123, float %6127, float undef, float undef, i32 0, i32 0, i32 undef, float %6682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6685 = extractvalue %dx.types.ResRet.f32 %6684, 0
  br label %6689

; <label>:6686                                    ; preds = %6677
  %6687 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %39, float %6123, float %6127, float undef, float undef, i32 0, i32 0, i32 undef, float %6682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6688 = extractvalue %dx.types.ResRet.f32 %6687, 0
  br label %6689

; <label>:6689                                    ; preds = %6686, %6683, %6674
  %6690 = phi float [ %6685, %6683 ], [ %6688, %6686 ], [ 1.000000e+00, %6674 ]
  %6691 = fsub fast float %6664, %6653
  %6692 = fmul fast float %6691, %6220
  %6693 = fadd fast float %6692, %6653
  %6694 = fsub fast float %6675, %6693
  %6695 = fmul fast float %6694, %6219
  %6696 = fadd fast float %6695, %6693
  %6697 = fsub fast float %6690, %6696
  %6698 = fmul fast float %6697, %6247
  %6699 = fadd fast float %6698, %6696
  %6700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6701 = extractvalue %dx.types.CBufRet.f32 %6700, 2
  %6702 = fcmp fast ogt float %6701, 0.000000e+00
  br i1 %6702, label %6703, label %6743, !dx.controlflow.hints !106

; <label>:6703                                    ; preds = %6689
  %6704 = fcmp fast ugt float %6701, 0.000000e+00
  br i1 %6704, label %6705, label %6740

; <label>:6705                                    ; preds = %6703
  %6706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6706, 0
  %6708 = extractvalue %dx.types.CBufRet.f32 %6706, 1
  %6709 = extractvalue %dx.types.CBufRet.f32 %6706, 2
  %6710 = extractvalue %dx.types.CBufRet.f32 %6706, 3
  %6711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6712 = extractvalue %dx.types.CBufRet.f32 %6711, 0
  %6713 = extractvalue %dx.types.CBufRet.f32 %6711, 1
  %6714 = extractvalue %dx.types.CBufRet.f32 %6711, 2
  %6715 = extractvalue %dx.types.CBufRet.f32 %6711, 3
  %6716 = extractvalue %dx.types.CBufRet.f32 %6700, 0
  %6717 = extractvalue %dx.types.CBufRet.f32 %6700, 1
  %6718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.f32 %6718, 0
  %6720 = extractvalue %dx.types.CBufRet.f32 %6718, 1
  %6721 = extractvalue %dx.types.CBufRet.f32 %6718, 2
  %6722 = fadd fast float %6719, %6100
  %6723 = fadd fast float %6720, %6101
  %6724 = fadd fast float %6721, %6102
  %6725 = fmul fast float %6722, %6707
  %6726 = call float @dx.op.tertiary.f32(i32 46, float %6708, float %6723, float %6725)  ; FMad(a,b,c)
  %6727 = call float @dx.op.tertiary.f32(i32 46, float %6709, float %6724, float %6726)  ; FMad(a,b,c)
  %6728 = fadd fast float %6727, %6710
  %6729 = fmul fast float %6722, %6712
  %6730 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6723, float %6729)  ; FMad(a,b,c)
  %6731 = call float @dx.op.tertiary.f32(i32 46, float %6714, float %6724, float %6730)  ; FMad(a,b,c)
  %6732 = fadd fast float %6731, %6715
  %6733 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %34, float %6728, float %6732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6734 = extractvalue %dx.types.ResRet.f32 %6733, 0
  %6735 = fmul fast float %6734, %6717
  %6736 = fadd fast float %6735, %6716
  %6737 = call float @dx.op.unary.f32(i32 7, float %6736)  ; Saturate(value)
  %6738 = fmul fast float %6737, %6701
  %6739 = fsub fast float 1.000000e+00, %6738
  br label %6740

; <label>:6740                                    ; preds = %6705, %6703
  %6741 = phi float [ %6739, %6705 ], [ 1.000000e+00, %6703 ]
  %6742 = fmul fast float %6741, %6699
  br label %6743

; <label>:6743                                    ; preds = %6740, %6689, %6080
  %6744 = phi float [ 1.000000e+00, %6080 ], [ %6742, %6740 ], [ %6699, %6689 ]
  %6745 = call float @dx.op.binary.f32(i32 36, float %6744, float %6744)  ; FMin(a,b)
  %6746 = call float @dx.op.binary.f32(i32 36, float %6744, float %6745)  ; FMin(a,b)
  %6747 = fcmp fast ogt float %6746, 0.000000e+00
  br i1 %6747, label %6748, label %6909, !dx.controlflow.hints !107

; <label>:6748                                    ; preds = %6743
  %6749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6750 = extractvalue %dx.types.CBufRet.f32 %6749, 0
  %6751 = extractvalue %dx.types.CBufRet.f32 %6749, 1
  %6752 = extractvalue %dx.types.CBufRet.f32 %6749, 2
  %6753 = extractvalue %dx.types.CBufRet.f32 %6749, 3
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 0
  %6756 = extractvalue %dx.types.CBufRet.f32 %6754, 1
  %6757 = extractvalue %dx.types.CBufRet.f32 %6754, 2
  %6758 = extractvalue %dx.types.CBufRet.f32 %6754, 3
  %6759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6760 = extractvalue %dx.types.CBufRet.f32 %6759, 0
  %6761 = extractvalue %dx.types.CBufRet.f32 %6759, 1
  %6762 = extractvalue %dx.types.CBufRet.f32 %6759, 2
  %6763 = extractvalue %dx.types.CBufRet.f32 %6759, 3
  %6764 = fmul fast float %6750, %6100
  %6765 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6751, float %6764)  ; FMad(a,b,c)
  %6766 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6752, float %6765)  ; FMad(a,b,c)
  %6767 = fadd fast float %6766, %6753
  %6768 = fmul fast float %6755, %6100
  %6769 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6756, float %6768)  ; FMad(a,b,c)
  %6770 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6757, float %6769)  ; FMad(a,b,c)
  %6771 = fadd fast float %6770, %6758
  %6772 = fmul fast float %6760, %6100
  %6773 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6761, float %6772)  ; FMad(a,b,c)
  %6774 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6762, float %6773)  ; FMad(a,b,c)
  %6775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.f32 %6775, 0
  %6777 = extractvalue %dx.types.CBufRet.f32 %6775, 1
  %6778 = extractvalue %dx.types.CBufRet.f32 %6775, 3
  %6779 = fmul fast float %6778, %6767
  %6780 = fmul fast float %6778, %6771
  %6781 = fadd fast float %6779, %6776
  %6782 = fadd fast float %6780, %6777
  %6783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.f32 %6783, 0
  %6785 = extractvalue %dx.types.CBufRet.f32 %6783, 1
  %6786 = fsub fast float %6781, %6784
  %6787 = fsub fast float %6782, %6785
  %6788 = fcmp fast olt float %6786, 0.000000e+00
  %6789 = fcmp fast olt float %6787, 0.000000e+00
  %6790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6791 = extractvalue %dx.types.CBufRet.f32 %6790, 0
  %6792 = extractvalue %dx.types.CBufRet.f32 %6790, 1
  %6793 = extractvalue %dx.types.CBufRet.f32 %6790, 2
  %6794 = extractvalue %dx.types.CBufRet.f32 %6790, 3
  %6795 = select i1 %6788, float %6791, float %6793
  %6796 = select i1 %6789, float %6792, float %6794
  %6797 = fmul fast float %6795, %6786
  %6798 = fmul fast float %6796, %6787
  %6799 = call float @dx.op.unary.f32(i32 6, float %6797)  ; FAbs(value)
  %6800 = call float @dx.op.unary.f32(i32 6, float %6798)  ; FAbs(value)
  %6801 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6802 = call float @dx.op.binary.f32(i32 35, float %6799, float %6800)  ; FMax(a,b)
  %6803 = fsub fast float %6801, %6802
  %6804 = call float @dx.op.unary.f32(i32 7, float %6803)  ; Saturate(value)
  %6805 = fcmp fast ogt float %6804, 0.000000e+00
  br i1 %6805, label %6806, label %6847, !dx.controlflow.hints !108

; <label>:6806                                    ; preds = %6748
  %6807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %37, float %6781, float %6782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6808 = extractvalue %dx.types.ResRet.f32 %6807, 1
  %6809 = fcmp fast ogt float %6808, 0.000000e+00
  br i1 %6809, label %6810, label %6842

; <label>:6810                                    ; preds = %6806
  %6811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %6781, float %6782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6812 = extractvalue %dx.types.ResRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.ResRet.f32 %6811, 1
  %6814 = extractvalue %dx.types.ResRet.f32 %6811, 2
  %6815 = extractvalue %dx.types.ResRet.f32 %6811, 3
  %6816 = fsub fast float 1.000000e+00, %6763
  %6817 = fsub fast float %6816, %6774
  %6818 = fmul fast float %6817, 0x400921FB60000000
  %6819 = fadd fast float %6818, 0x3FF921FB60000000
  %6820 = call float @dx.op.unary.f32(i32 13, float %6819)  ; Sin(value)
  %6821 = fadd fast float %6820, -1.000000e+00
  %6822 = fmul fast float %6821, 0x3FD45F3060000000
  %6823 = fmul fast float %6817, 0x401921FB60000000
  %6824 = fadd fast float %6823, 0x400921FB60000000
  %6825 = call float @dx.op.unary.f32(i32 13, float %6824)  ; Sin(value)
  %6826 = fadd fast float %6825, 0x3E7777A5C0000000
  %6827 = fmul fast float %6826, 0x3FC45F3060000000
  %6828 = fmul fast float %6817, 0x4022D97C80000000
  %6829 = fadd fast float %6828, 0x4012D97C80000000
  %6830 = call float @dx.op.unary.f32(i32 13, float %6829)  ; Sin(value)
  %6831 = fadd fast float %6830, 1.000000e+00
  %6832 = fmul fast float %6831, 0x3FBB2995E0000000
  %6833 = fmul fast float %6817, 0x402921FB60000000
  %6834 = fadd fast float %6833, 0x401921FB60000000
  %6835 = call float @dx.op.unary.f32(i32 13, float %6834)  ; Sin(value)
  %6836 = fadd fast float %6835, 0xBE8777A5C0000000
  %6837 = fmul fast float %6836, 0x3FB45F3060000000
  %6838 = call float @dx.op.dot4.f32(i32 56, float %6812, float %6813, float %6814, float %6815, float %6822, float %6827, float %6832, float %6837)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6839 = fmul fast float %6838, 0xBFF7154760000000
  %6840 = call float @dx.op.unary.f32(i32 21, float %6839)  ; Exp(value)
  %6841 = call float @dx.op.unary.f32(i32 7, float %6840)  ; Saturate(value)
  br label %6842

; <label>:6842                                    ; preds = %6810, %6806
  %6843 = phi float [ %6841, %6810 ], [ 1.000000e+00, %6806 ]
  %6844 = fadd fast float %6843, -1.000000e+00
  %6845 = fmul fast float %6844, %6804
  %6846 = fadd fast float %6845, 1.000000e+00
  br label %6847

; <label>:6847                                    ; preds = %6842, %6748
  %6848 = phi float [ %6846, %6842 ], [ 1.000000e+00, %6748 ]
  %6849 = fmul fast float %6848, %6744
  %6850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6851 = extractvalue %dx.types.CBufRet.f32 %6850, 0
  %6852 = extractvalue %dx.types.CBufRet.f32 %6850, 1
  %6853 = extractvalue %dx.types.CBufRet.f32 %6850, 2
  %6854 = fadd fast float %6851, %178
  %6855 = fadd fast float %6852, %179
  %6856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6857 = extractvalue %dx.types.CBufRet.f32 %6856, 1
  %6858 = fsub fast float -0.000000e+00, %6854
  %6859 = fsub fast float -0.000000e+00, %6855
  %6860 = fsub fast float -0.000000e+00, %180
  %6861 = fsub fast float %6860, %6853
  %6862 = fadd fast float %6861, %6857
  %6863 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6858, float %6859, float %6862)  ; Dot3(ax,ay,az,bx,by,bz)
  %6864 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6081, float %6082, float %6083)  ; Dot3(ax,ay,az,bx,by,bz)
  %6865 = fdiv fast float 1.000000e+00, %6864
  %6866 = fmul fast float %6865, %6863
  %6867 = fmul fast float %6081, %6866
  %6868 = fmul fast float %6082, %6866
  %6869 = fadd fast float %6867, %6854
  %6870 = fadd fast float %6868, %6855
  %6871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6872 = extractvalue %dx.types.CBufRet.f32 %6871, 0
  %6873 = extractvalue %dx.types.CBufRet.f32 %6871, 1
  %6874 = fsub fast float %6869, %6872
  %6875 = fsub fast float %6870, %6873
  %6876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6877 = extractvalue %dx.types.CBufRet.f32 %6876, 2
  %6878 = extractvalue %dx.types.CBufRet.f32 %6876, 3
  %6879 = fmul fast float %6874, %6877
  %6880 = fmul fast float %6875, %6878
  %6881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6882 = extractvalue %dx.types.CBufRet.i32 %6881, 3
  %6883 = icmp eq i32 %6882, 0
  br i1 %6883, label %6889, label %6884

; <label>:6884                                    ; preds = %6847
  %6885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %36, float %6879, float %6880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6886 = extractvalue %dx.types.ResRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.ResRet.f32 %6885, 1
  %6888 = extractvalue %dx.types.ResRet.f32 %6885, 2
  br label %6894

; <label>:6889                                    ; preds = %6847
  %6890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %6879, float %6880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6891 = extractvalue %dx.types.ResRet.f32 %6890, 0
  %6892 = extractvalue %dx.types.ResRet.f32 %6890, 1
  %6893 = extractvalue %dx.types.ResRet.f32 %6890, 2
  br label %6894

; <label>:6894                                    ; preds = %6889, %6884
  %6895 = phi float [ %6886, %6884 ], [ %6891, %6889 ]
  %6896 = phi float [ %6887, %6884 ], [ %6892, %6889 ]
  %6897 = phi float [ %6888, %6884 ], [ %6893, %6889 ]
  %6898 = extractvalue %dx.types.CBufRet.f32 %6856, 2
  %6899 = fmul fast float %6898, %6895
  %6900 = extractvalue %dx.types.CBufRet.f32 %6856, 0
  %6901 = fsub fast float %6866, %6900
  %6902 = fsub fast float %6901, %6899
  %6903 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6902)  ; FMax(a,b)
  %6904 = fmul fast float %6903, %6896
  %6905 = call float @dx.op.binary.f32(i32 36, float %6897, float %6904)  ; FMin(a,b)
  %6906 = fmul fast float %6905, 0xBFF7154760000000
  %6907 = call float @dx.op.unary.f32(i32 21, float %6906)  ; Exp(value)
  %6908 = fmul fast float %6849, %6907
  br label %6909

; <label>:6909                                    ; preds = %6894, %6743
  %6910 = phi float [ %6908, %6894 ], [ %6744, %6743 ]
  %6911 = call float @dx.op.binary.f32(i32 36, float %6910, float %6910)  ; FMin(a,b)
  %6912 = call float @dx.op.binary.f32(i32 36, float %6910, float %6911)  ; FMin(a,b)
  %6913 = fcmp fast ogt float %6912, 0.000000e+00
  br i1 %6913, label %6914, label %7224, !dx.controlflow.hints !109

; <label>:6914                                    ; preds = %6909
  %6915 = fmul fast float %6910, %6092
  %6916 = fmul fast float %6910, %6093
  %6917 = fmul fast float %6910, %6094
  %6918 = fsub fast float %6081, %5639
  %6919 = fsub fast float %6082, %5638
  %6920 = fsub fast float %6083, %5637
  %6921 = call float @dx.op.dot3.f32(i32 55, float %6918, float %6919, float %6920, float %6918, float %6919, float %6920)  ; Dot3(ax,ay,az,bx,by,bz)
  %6922 = call float @dx.op.unary.f32(i32 25, float %6921)  ; Rsqrt(value)
  %6923 = fmul fast float %6922, %6918
  %6924 = fmul fast float %6922, %6919
  %6925 = fmul fast float %6922, %6920
  %6926 = call float @dx.op.dot3.f32(i32 55, float %6081, float %6082, float %6083, float %5643, float %5644, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %6927 = call float @dx.op.dot3.f32(i32 55, float %5636, float %5635, float %5634, float %6923, float %6924, float %6925)  ; Dot3(ax,ay,az,bx,by,bz)
  %6928 = call float @dx.op.unary.f32(i32 7, float %6926)  ; Saturate(value)
  %6929 = fmul fast float %6928, %6928
  %6930 = fmul fast float %6929, %5666
  %6931 = call float @dx.op.unary.f32(i32 7, float %6930)  ; Saturate(value)
  %6932 = fmul fast float %6931, %6928
  %6933 = call float @dx.op.dot3.f32(i32 55, float %5643, float %5644, float %5645, float %6923, float %6924, float %6925)  ; Dot3(ax,ay,az,bx,by,bz)
  %6934 = fmul fast float %6933, %6933
  %6935 = call float @dx.op.unary.f32(i32 6, float %6926)  ; FAbs(value)
  %6936 = call float @dx.op.binary.f32(i32 35, float %6049, float 0x3F847AE140000000)  ; FMax(a,b)
  %6937 = fmul fast float %6936, %6936
  %6938 = fmul fast float %6937, %6937
  %6939 = fsub fast float 1.000000e+00, %6938
  %6940 = fmul fast float %5653, %5653
  %6941 = fmul fast float %6940, %6939
  %6942 = fadd fast float %6941, %6938
  %6943 = bitcast float %6942 to i32
  %6944 = ashr i32 %6943, 1
  %6945 = add nsw i32 %6944, 532487669
  %6946 = bitcast i32 %6945 to float
  %6947 = fadd fast float %6946, %5653
  %6948 = fmul fast float %6938, %6934
  %6949 = fsub fast float 1.000000e+00, %6934
  %6950 = fadd fast float %6949, %6948
  %6951 = fmul fast float %6935, %6935
  %6952 = fmul fast float %6951, %6939
  %6953 = fadd fast float %6952, %6938
  %6954 = bitcast float %6953 to i32
  %6955 = ashr i32 %6954, 1
  %6956 = add nsw i32 %6955, 532487669
  %6957 = bitcast i32 %6956 to float
  %6958 = fadd fast float %6957, %6935
  %6959 = fmul fast float %6950, %6950
  %6960 = fmul fast float %6959, %6947
  %6961 = fmul fast float %6960, %6958
  %6962 = fdiv fast float 0x3FF0A00000000000, %6961
  %6963 = fmul fast float %6962, %6938
  %6964 = fmul fast float %5911, 0x3FF9999980000000
  %6965 = fsub fast float 5.000000e+00, %6964
  %6966 = call float @dx.op.unary.f32(i32 6, float %6927)  ; FAbs(value)
  %6967 = fsub fast float 1.000000e+00, %6966
  %6968 = fmul fast float %5911, 0x41D9660740000000
  %6969 = fadd fast float %6968, 0xC1EFBF8940000000
  %6970 = bitcast float %6967 to i32
  %6971 = sitofp i32 %6970 to float
  %6972 = fmul fast float %6971, %6965
  %6973 = fadd fast float %6969, %6972
  %6974 = fptosi float %6973 to i32
  %6975 = bitcast i32 %6974 to float
  %6976 = fsub fast float 1.000000e+00, %5646
  %6977 = fsub fast float 1.000000e+00, %5647
  %6978 = fsub fast float 1.000000e+00, %5651
  %6979 = fmul fast float %6975, %6976
  %6980 = fmul fast float %6975, %6977
  %6981 = fmul fast float %6975, %6978
  %6982 = fadd fast float %6979, %5646
  %6983 = fadd fast float %6980, %5647
  %6984 = fadd fast float %6981, %5651
  br i1 %5934, label %6985, label %7008

; <label>:6985                                    ; preds = %6914
  %6986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4689, float %6966, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6987 = extractvalue %dx.types.ResRet.f32 %6986, 0
  %6988 = extractvalue %dx.types.ResRet.f32 %6986, 1
  %6989 = extractvalue %dx.types.ResRet.f32 %6986, 2
  %6990 = fadd fast float %6987, -5.000000e-01
  %6991 = fadd fast float %6988, -5.000000e-01
  %6992 = fadd fast float %6989, -5.000000e-01
  %6993 = fmul fast float %5646, 4.000000e+00
  %6994 = fmul fast float %6993, %6976
  %6995 = fmul fast float %6994, %6990
  %6996 = fmul fast float %5647, 4.000000e+00
  %6997 = fmul fast float %6996, %6977
  %6998 = fmul fast float %6997, %6991
  %6999 = fmul fast float %5651, 4.000000e+00
  %7000 = fmul fast float %6999, %6978
  %7001 = fmul fast float %7000, %6992
  %7002 = fadd fast float %6995, %6982
  %7003 = fadd fast float %6998, %6983
  %7004 = fadd fast float %7001, %6984
  %7005 = call float @dx.op.unary.f32(i32 7, float %7002)  ; Saturate(value)
  %7006 = call float @dx.op.unary.f32(i32 7, float %7003)  ; Saturate(value)
  %7007 = call float @dx.op.unary.f32(i32 7, float %7004)  ; Saturate(value)
  br label %7008

; <label>:7008                                    ; preds = %6985, %6914
  %7009 = phi float [ %7005, %6985 ], [ %6982, %6914 ]
  %7010 = phi float [ %7006, %6985 ], [ %6983, %6914 ]
  %7011 = phi float [ %7007, %6985 ], [ %6984, %6914 ]
  %7012 = fmul fast float %6926, 9.843750e-01
  %7013 = fadd fast float %7012, 7.812500e-03
  %7014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %7013, float %5915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7015 = extractvalue %dx.types.ResRet.f32 %7014, 0
  %7016 = extractvalue %dx.types.ResRet.f32 %7014, 1
  %7017 = extractvalue %dx.types.ResRet.f32 %7014, 2
  %7018 = extractvalue %dx.types.ResRet.f32 %7014, 3
  %7019 = fsub fast float %7017, %7015
  %7020 = fsub fast float %7018, %7016
  %7021 = fmul fast float %7019, %5921
  %7022 = fmul fast float %7020, %5921
  %7023 = fadd fast float %7021, %7015
  %7024 = fadd fast float %7022, %7016
  %7025 = fmul fast float %7023, %5646
  %7026 = fmul fast float %7023, %5647
  %7027 = fmul fast float %7023, %5651
  %7028 = fadd fast float %7025, %7024
  %7029 = fadd fast float %7026, %7024
  %7030 = fadd fast float %7027, %7024
  br i1 %5934, label %7031, label %7054

; <label>:7031                                    ; preds = %7008
  %7032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4689, float %6926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7033 = extractvalue %dx.types.ResRet.f32 %7032, 0
  %7034 = extractvalue %dx.types.ResRet.f32 %7032, 1
  %7035 = extractvalue %dx.types.ResRet.f32 %7032, 2
  %7036 = fadd fast float %7033, -5.000000e-01
  %7037 = fadd fast float %7034, -5.000000e-01
  %7038 = fadd fast float %7035, -5.000000e-01
  %7039 = fmul fast float %5646, 4.000000e+00
  %7040 = fmul fast float %7039, %6976
  %7041 = fmul fast float %7040, %7036
  %7042 = fmul fast float %5647, 4.000000e+00
  %7043 = fmul fast float %7042, %6977
  %7044 = fmul fast float %7043, %7037
  %7045 = fmul fast float %5651, 4.000000e+00
  %7046 = fmul fast float %7045, %6978
  %7047 = fmul fast float %7046, %7038
  %7048 = fadd fast float %7041, %7028
  %7049 = fadd fast float %7044, %7029
  %7050 = fadd fast float %7047, %7030
  %7051 = call float @dx.op.unary.f32(i32 7, float %7048)  ; Saturate(value)
  %7052 = call float @dx.op.unary.f32(i32 7, float %7049)  ; Saturate(value)
  %7053 = call float @dx.op.unary.f32(i32 7, float %7050)  ; Saturate(value)
  br label %7054

; <label>:7054                                    ; preds = %7031, %7008
  %7055 = phi float [ %7051, %7031 ], [ %7028, %7008 ]
  %7056 = phi float [ %7052, %7031 ], [ %7029, %7008 ]
  %7057 = phi float [ %7053, %7031 ], [ %7030, %7008 ]
  %7058 = call float @dx.op.binary.f32(i32 35, float %7056, float %7057)  ; FMax(a,b)
  %7059 = call float @dx.op.binary.f32(i32 35, float %7055, float %7058)  ; FMax(a,b)
  %7060 = fsub fast float 1.000000e+00, %7059
  %7061 = call float @dx.op.binary.f32(i32 35, float %6935, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7062 = fdiv fast float %3993, %7061
  %7063 = fmul fast float %5989, %7062
  %7064 = fmul fast float %5991, %7062
  %7065 = fmul fast float %5993, %7062
  %7066 = call float @dx.op.unary.f32(i32 21, float %7063)  ; Exp(value)
  %7067 = call float @dx.op.unary.f32(i32 21, float %7064)  ; Exp(value)
  %7068 = call float @dx.op.unary.f32(i32 21, float %7065)  ; Exp(value)
  %7069 = call float @dx.op.unary.f32(i32 7, float %7066)  ; Saturate(value)
  %7070 = call float @dx.op.unary.f32(i32 7, float %7067)  ; Saturate(value)
  %7071 = call float @dx.op.unary.f32(i32 7, float %7068)  ; Saturate(value)
  %7072 = select i1 %5986, float %7069, float 0.000000e+00
  %7073 = select i1 %5987, float %7070, float 0.000000e+00
  %7074 = select i1 %5988, float %7071, float 0.000000e+00
  %7075 = fsub fast float -0.000000e+00, %5643
  %7076 = fsub fast float -0.000000e+00, %5644
  %7077 = fsub fast float -0.000000e+00, %5645
  %7078 = call float @dx.op.dot3.f32(i32 55, float %6081, float %6082, float %6083, float %7075, float %7076, float %7077)  ; Dot3(ax,ay,az,bx,by,bz)
  %7079 = call float @dx.op.unary.f32(i32 7, float %7078)  ; Saturate(value)
  %7080 = fmul fast float %7079, 9.843750e-01
  %7081 = fadd fast float %7080, 7.812500e-03
  %7082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %7081, float %5915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7083 = extractvalue %dx.types.ResRet.f32 %7082, 0
  %7084 = extractvalue %dx.types.ResRet.f32 %7082, 1
  %7085 = extractvalue %dx.types.ResRet.f32 %7082, 2
  %7086 = extractvalue %dx.types.ResRet.f32 %7082, 3
  %7087 = fsub fast float %7085, %7083
  %7088 = fsub fast float %7086, %7084
  %7089 = fmul fast float %7087, %5921
  %7090 = fmul fast float %7088, %5921
  %7091 = fadd fast float %7089, %7083
  %7092 = fadd fast float %7090, %7084
  %7093 = fmul fast float %7091, %5646
  %7094 = fmul fast float %7091, %5647
  %7095 = fmul fast float %7091, %5651
  %7096 = fadd fast float %7093, %7092
  %7097 = fadd fast float %7094, %7092
  %7098 = fadd fast float %7095, %7092
  br i1 %5934, label %7099, label %7122

; <label>:7099                                    ; preds = %7054
  %7100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4689, float %7079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7101 = extractvalue %dx.types.ResRet.f32 %7100, 0
  %7102 = extractvalue %dx.types.ResRet.f32 %7100, 1
  %7103 = extractvalue %dx.types.ResRet.f32 %7100, 2
  %7104 = fadd fast float %7101, -5.000000e-01
  %7105 = fadd fast float %7102, -5.000000e-01
  %7106 = fadd fast float %7103, -5.000000e-01
  %7107 = fmul fast float %5646, 4.000000e+00
  %7108 = fmul fast float %7107, %6976
  %7109 = fmul fast float %7108, %7104
  %7110 = fmul fast float %5647, 4.000000e+00
  %7111 = fmul fast float %7110, %6977
  %7112 = fmul fast float %7111, %7105
  %7113 = fmul fast float %5651, 4.000000e+00
  %7114 = fmul fast float %7113, %6978
  %7115 = fmul fast float %7114, %7106
  %7116 = fadd fast float %7109, %7096
  %7117 = fadd fast float %7112, %7097
  %7118 = fadd fast float %7115, %7098
  %7119 = call float @dx.op.unary.f32(i32 7, float %7116)  ; Saturate(value)
  %7120 = call float @dx.op.unary.f32(i32 7, float %7117)  ; Saturate(value)
  %7121 = call float @dx.op.unary.f32(i32 7, float %7118)  ; Saturate(value)
  br label %7122

; <label>:7122                                    ; preds = %7099, %7054
  %7123 = phi float [ %7119, %7099 ], [ %7096, %7054 ]
  %7124 = phi float [ %7120, %7099 ], [ %7097, %7054 ]
  %7125 = phi float [ %7121, %7099 ], [ %7098, %7054 ]
  %7126 = call float @dx.op.binary.f32(i32 35, float %7124, float %7125)  ; FMax(a,b)
  %7127 = call float @dx.op.binary.f32(i32 35, float %7123, float %7126)  ; FMax(a,b)
  %7128 = fsub fast float 1.000000e+00, %7127
  %7129 = fmul fast float %6049, %6054
  %7130 = fadd fast float %6056, %7129
  %7131 = call float @dx.op.unary.f32(i32 7, float %7130)  ; Saturate(value)
  %7132 = fsub fast float %6081, %5659
  %7133 = fsub fast float %6082, %5660
  %7134 = fsub fast float %6083, %5661
  %7135 = call float @dx.op.dot3.f32(i32 55, float %7132, float %7133, float %7134, float %7132, float %7133, float %7134)  ; Dot3(ax,ay,az,bx,by,bz)
  %7136 = call float @dx.op.unary.f32(i32 25, float %7135)  ; Rsqrt(value)
  %7137 = fmul fast float %7136, %7132
  %7138 = fmul fast float %7136, %7133
  %7139 = fmul fast float %7136, %7134
  %7140 = call float @dx.op.dot3.f32(i32 55, float %7075, float %7076, float %7077, float %7137, float %7138, float %7139)  ; Dot3(ax,ay,az,bx,by,bz)
  %7141 = fmul fast float %7140, %7140
  %7142 = call float @dx.op.unary.f32(i32 6, float %7079)  ; FAbs(value)
  %7143 = call float @dx.op.binary.f32(i32 35, float %7131, float 0x3F847AE140000000)  ; FMax(a,b)
  %7144 = fmul fast float %7143, %7143
  %7145 = fmul fast float %7144, %7144
  %7146 = fsub fast float 1.000000e+00, %7145
  %7147 = fmul fast float %6940, %7146
  %7148 = fadd fast float %7147, %7145
  %7149 = bitcast float %7148 to i32
  %7150 = ashr i32 %7149, 1
  %7151 = add nsw i32 %7150, 532487669
  %7152 = bitcast i32 %7151 to float
  %7153 = fadd fast float %7152, %5653
  %7154 = fmul fast float %7145, %7141
  %7155 = fsub fast float 1.000000e+00, %7141
  %7156 = fadd fast float %7155, %7154
  %7157 = fmul fast float %7142, %7142
  %7158 = fmul fast float %7157, %7146
  %7159 = fadd fast float %7158, %7145
  %7160 = bitcast float %7159 to i32
  %7161 = ashr i32 %7160, 1
  %7162 = add nsw i32 %7161, 532487669
  %7163 = bitcast i32 %7162 to float
  %7164 = fadd fast float %7163, %7142
  %7165 = fmul fast float %7156, %7156
  %7166 = fmul fast float %7165, %7153
  %7167 = fmul fast float %7166, %7164
  %7168 = fdiv fast float 0x3FF0A00000000000, %7167
  %7169 = fmul fast float %7168, %7145
  %7170 = fmul fast float %7079, %7072
  %7171 = fmul fast float %7079, %7073
  %7172 = fmul fast float %7079, %7074
  %7173 = fmul fast float %7170, %7128
  %7174 = fmul fast float %7173, %7169
  %7175 = fmul fast float %7171, %7128
  %7176 = fmul fast float %7175, %7169
  %7177 = fmul fast float %7172, %7128
  %7178 = fmul fast float %7177, %7169
  %7179 = fmul fast float %7009, %6963
  %7180 = fmul fast float %7010, %6963
  %7181 = fmul fast float %7011, %6963
  %7182 = fsub fast float 1.000000e+00, %6927
  %7183 = bitcast float %7182 to i32
  %7184 = sitofp i32 %7183 to float
  %7185 = fmul fast float %7184, 5.000000e+00
  %7186 = fadd fast float %7185, 0xC1EFBF8940000000
  %7187 = fptosi float %7186 to i32
  %7188 = bitcast i32 %7187 to float
  %7189 = fmul fast float %7188, %4690
  %7190 = fmul fast float %7060, %7189
  %7191 = fmul fast float %7190, %5981
  %7192 = fmul fast float %7190, %5982
  %7193 = fmul fast float %7190, %5983
  %7194 = fadd fast float %7191, %7179
  %7195 = fadd fast float %7192, %7180
  %7196 = fadd fast float %7193, %7181
  %7197 = fmul fast float %7194, %6932
  %7198 = fmul fast float %7195, %6932
  %7199 = fmul fast float %7196, %6932
  %7200 = fmul fast float %6932, %6915
  %7201 = fmul fast float %7200, %7060
  %7202 = fmul fast float %6932, %6916
  %7203 = fmul fast float %7202, %7060
  %7204 = fmul fast float %6932, %6917
  %7205 = fmul fast float %7204, %7060
  %7206 = fadd fast float %7197, %7174
  %7207 = fadd fast float %7198, %7176
  %7208 = fadd fast float %7199, %7178
  %7209 = fmul fast float %7206, %6915
  %7210 = fmul fast float %7207, %6916
  %7211 = fmul fast float %7208, %6917
  %7212 = fadd fast float %7201, %6071
  %7213 = fmul fast float %7212, %4686
  %7214 = fadd fast float %7203, %6073
  %7215 = fmul fast float %7214, %4686
  %7216 = fadd fast float %7205, %6075
  %7217 = fmul fast float %7216, %4686
  %7218 = fadd fast float %7209, %6034
  %7219 = fmul fast float %7218, %4686
  %7220 = fadd fast float %7210, %6037
  %7221 = fmul fast float %7220, %4686
  %7222 = fadd fast float %7211, %6040
  %7223 = fmul fast float %7222, %4686
  br label %7224

; <label>:7224                                    ; preds = %7122, %6909, %5961
  %7225 = phi float [ %6035, %5961 ], [ %6035, %6909 ], [ %7219, %7122 ]
  %7226 = phi float [ %6038, %5961 ], [ %6038, %6909 ], [ %7221, %7122 ]
  %7227 = phi float [ %6041, %5961 ], [ %6041, %6909 ], [ %7223, %7122 ]
  %7228 = phi float [ %6072, %5961 ], [ %6072, %6909 ], [ %7213, %7122 ]
  %7229 = phi float [ %6074, %5961 ], [ %6074, %6909 ], [ %7215, %7122 ]
  %7230 = phi float [ %6076, %5961 ], [ %6076, %6909 ], [ %7217, %7122 ]
  %7231 = fmul fast float %6010, %4686
  %7232 = fmul fast float %6011, %4686
  %7233 = fmul fast float %6012, %4686
  %7234 = fadd fast float %7231, 1.000000e+00
  %7235 = fadd fast float %7232, 1.000000e+00
  %7236 = fadd fast float %7233, 1.000000e+00
  %7237 = call float @dx.op.dot3.f32(i32 55, float %7234, float %7235, float %7236, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7238 = fsub fast float 1.000000e+00, %7237
  %7239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7240 = extractvalue %dx.types.CBufRet.f32 %7239, 0
  %7241 = fmul fast float %7240, %6016
  %7242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7243 = extractvalue %dx.types.CBufRet.f32 %7242, 3
  %7244 = fsub fast float 1.000000e+00, %4693
  %7245 = call float @dx.op.unary.f32(i32 7, float %7244)  ; Saturate(value)
  %7246 = fadd fast float %7230, %4692
  %7247 = fmul fast float %7246, %4693
  %7248 = fmul fast float %7245, %7243
  %7249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7250 = extractvalue %dx.types.CBufRet.f32 %7249, 3
  %7251 = fmul fast float %7228, %5640
  %7252 = fmul fast float %7229, %5641
  %7253 = fmul fast float %7230, %5642
  %7254 = fcmp fast ogt float %90, %213
  %7255 = and i1 %7254, %4761
  %7256 = or i1 %4840, %7255
  %7257 = icmp eq i32 %4760, 2
  %7258 = fcmp fast ole float %90, %213
  %7259 = and i1 %7258, %7257
  %7260 = or i1 %7259, %7256
  br i1 %7255, label %7261, label %7518

; <label>:7261                                    ; preds = %7224
  %7262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7263 = extractvalue %dx.types.CBufRet.f32 %7262, 2
  %7264 = extractvalue %dx.types.CBufRet.f32 %7262, 3
  %7265 = fmul fast float %7263, %99
  %7266 = fmul fast float %7264, %100
  %7267 = call float @dx.op.unary.f32(i32 7, float %7265)  ; Saturate(value)
  %7268 = call float @dx.op.unary.f32(i32 7, float %7266)  ; Saturate(value)
  %7269 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %7267, float %7268, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7270 = extractvalue %dx.types.ResRet.f32 %7269, 0
  %7271 = extractvalue %dx.types.ResRet.f32 %7269, 1
  %7272 = extractvalue %dx.types.ResRet.f32 %7269, 2
  %7273 = extractvalue %dx.types.ResRet.f32 %7269, 3
  %7274 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %7267, float %7268, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7275 = extractvalue %dx.types.ResRet.f32 %7274, 0
  %7276 = extractvalue %dx.types.ResRet.f32 %7274, 1
  %7277 = extractvalue %dx.types.ResRet.f32 %7274, 2
  %7278 = extractvalue %dx.types.ResRet.f32 %7274, 3
  %7279 = call float @dx.op.binary.f32(i32 35, float %7271, float %7272)  ; FMax(a,b)
  %7280 = call float @dx.op.binary.f32(i32 35, float %7270, float %7279)  ; FMax(a,b)
  %7281 = call float @dx.op.binary.f32(i32 35, float %7280, float %7273)  ; FMax(a,b)
  %7282 = call float @dx.op.binary.f32(i32 36, float %7276, float %7277)  ; FMin(a,b)
  %7283 = call float @dx.op.binary.f32(i32 36, float %7275, float %7282)  ; FMin(a,b)
  %7284 = call float @dx.op.binary.f32(i32 36, float %7283, float %7278)  ; FMin(a,b)
  %7285 = fmul fast float %7281, 2.550000e+02
  %7286 = fadd fast float %7285, 0x3F70101020000000
  %7287 = fptoui float %7286 to i32
  %7288 = fmul fast float %7284, 2.550000e+02
  %7289 = fadd fast float %7288, 0x3F70101020000000
  %7290 = fptoui float %7289 to i32
  %7291 = icmp ult i32 %7287, %7290
  br i1 %7291, label %7292, label %7460

; <label>:7292                                    ; preds = %7261
  %7293 = fcmp fast ogt float %89, 9.843750e-01
  %7294 = fadd fast float %90, -4.000000e+00
  %7295 = select i1 %7293, float -4.000000e+00, float %7294
  %7296 = call float @dx.op.binary.f32(i32 35, float %7295, float 0.000000e+00)  ; FMax(a,b)
  %7297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7298 = extractvalue %dx.types.CBufRet.f32 %7297, 0
  %7299 = fadd fast float %7298, %7296
  %7300 = extractvalue %dx.types.CBufRet.f32 %7297, 2
  %7301 = fmul fast float %7299, %7300
  %7302 = call float @dx.op.unary.f32(i32 23, float %7301)  ; Log(value)
  %7303 = extractvalue %dx.types.CBufRet.f32 %7297, 3
  %7304 = fmul fast float %7303, %7302
  %7305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7306 = extractvalue %dx.types.CBufRet.f32 %7305, 2
  %7307 = fmul fast float %7304, %7306
  %7308 = call float @dx.op.unary.f32(i32 7, float %7307)  ; Saturate(value)
  %7309 = uitofp i32 %7287 to float
  %7310 = uitofp i32 %7290 to float
  %7311 = fadd fast float %7309, 5.000000e-01
  %7312 = fadd fast float %7310, 5.000000e-01
  %7313 = fmul fast float %7306, %7311
  %7314 = fmul fast float %7306, %7312
  %7315 = fadd fast float %7313, 0x3F0FFB4800000000
  %7316 = fadd fast float %7314, 0xBF0FFB4800000000
  %7317 = call float @dx.op.binary.f32(i32 35, float %7308, float %7315)  ; FMax(a,b)
  %7318 = call float @dx.op.binary.f32(i32 36, float %7317, float %7316)  ; FMin(a,b)
  %7319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7320 = extractvalue %dx.types.CBufRet.f32 %7319, 1
  %7321 = extractvalue %dx.types.CBufRet.f32 %7319, 2
  %7322 = extractvalue %dx.types.CBufRet.f32 %7319, 0
  %7323 = fmul fast float %7320, %7318
  %7324 = fadd fast float %7322, %7323
  %7325 = fadd fast float %7322, %7321
  %7326 = fsub fast float %7320, %7321
  %7327 = fadd fast float %7326, %7322
  %7328 = call float @dx.op.binary.f32(i32 35, float %7324, float %7325)  ; FMax(a,b)
  %7329 = call float @dx.op.binary.f32(i32 36, float %7328, float %7327)  ; FMin(a,b)
  %7330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %7267, float %7268, float %7329, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7331 = extractvalue %dx.types.ResRet.f32 %7330, 0
  %7332 = extractvalue %dx.types.ResRet.f32 %7330, 1
  %7333 = extractvalue %dx.types.ResRet.f32 %7330, 2
  %7334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7335 = extractvalue %dx.types.CBufRet.i32 %7334, 0
  %7336 = extractvalue %dx.types.CBufRet.i32 %7334, 1
  %7337 = uitofp i32 %7335 to float
  %7338 = uitofp i32 %7336 to float
  %7339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7340 = extractvalue %dx.types.CBufRet.f32 %7339, 0
  %7341 = extractvalue %dx.types.CBufRet.f32 %7339, 1
  %7342 = fmul fast float %7337, %7267
  %7343 = fmul fast float %7338, %7268
  %7344 = fadd fast float %7342, -5.000000e-01
  %7345 = fadd fast float %7343, -5.000000e-01
  %7346 = call float @dx.op.unary.f32(i32 22, float %7344)  ; Frc(value)
  %7347 = call float @dx.op.unary.f32(i32 22, float %7345)  ; Frc(value)
  %7348 = fmul fast float %7346, %7346
  %7349 = fmul fast float %7348, %7346
  %7350 = fsub fast float 3.000000e+00, %7346
  %7351 = fmul fast float %7348, %7350
  %7352 = fmul fast float %7346, 3.000000e+00
  %7353 = fmul fast float %7349, 3.000000e+00
  %7354 = fmul fast float %7348, 6.000000e+00
  %7355 = fsub fast float %7353, %7354
  %7356 = fadd fast float %7355, 4.000000e+00
  %7357 = fmul fast float %7356, 0x3FC5555560000000
  %7358 = fmul fast float %7349, -3.000000e+00
  %7359 = fadd fast float %7348, %7346
  %7360 = fmul fast float %7359, 3.000000e+00
  %7361 = fadd fast float %7358, 1.000000e+00
  %7362 = fadd fast float %7361, %7360
  %7363 = fmul fast float %7349, 0x3FC5555560000000
  %7364 = fmul fast float %7347, %7347
  %7365 = fmul fast float %7364, %7347
  %7366 = fsub fast float 3.000000e+00, %7347
  %7367 = fmul fast float %7364, %7366
  %7368 = fmul fast float %7347, 3.000000e+00
  %7369 = fmul fast float %7365, 3.000000e+00
  %7370 = fmul fast float %7364, 6.000000e+00
  %7371 = fsub fast float %7369, %7370
  %7372 = fadd fast float %7371, 4.000000e+00
  %7373 = fmul fast float %7372, 0x3FC5555560000000
  %7374 = fmul fast float %7365, -3.000000e+00
  %7375 = fadd fast float %7364, %7347
  %7376 = fmul fast float %7375, 3.000000e+00
  %7377 = fadd fast float %7374, 1.000000e+00
  %7378 = fadd fast float %7377, %7376
  %7379 = fmul fast float %7365, 0x3FC5555560000000
  %7380 = fadd fast float %7346, 1.000000e+00
  %7381 = fsub fast float 1.000000e+00, %7352
  %7382 = fadd fast float %7381, %7351
  %7383 = fadd fast float %7382, %7356
  %7384 = fmul fast float %7383, 0x3FC5555560000000
  %7385 = fdiv fast float %7357, %7384
  %7386 = fsub fast float %7380, %7385
  %7387 = fsub fast float 1.000000e+00, %7346
  %7388 = fadd fast float %7362, %7349
  %7389 = fmul fast float %7388, 0x3FC5555560000000
  %7390 = fdiv fast float %7363, %7389
  %7391 = fadd fast float %7387, %7390
  %7392 = fadd fast float %7347, 1.000000e+00
  %7393 = fsub fast float 1.000000e+00, %7368
  %7394 = fadd fast float %7393, %7367
  %7395 = fadd fast float %7394, %7372
  %7396 = fmul fast float %7395, 0x3FC5555560000000
  %7397 = fdiv fast float %7373, %7396
  %7398 = fsub fast float %7392, %7397
  %7399 = fsub fast float 1.000000e+00, %7347
  %7400 = fadd fast float %7378, %7365
  %7401 = fmul fast float %7400, 0x3FC5555560000000
  %7402 = fdiv fast float %7379, %7401
  %7403 = fadd fast float %7402, %7399
  %7404 = fmul fast float %7386, %7340
  %7405 = fsub fast float %7267, %7404
  %7406 = fmul fast float %7391, %7340
  %7407 = fadd fast float %7406, %7267
  %7408 = fmul fast float %7403, %7341
  %7409 = fadd fast float %7408, %7268
  %7410 = fmul fast float %7398, %7341
  %7411 = fsub fast float %7268, %7410
  %7412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7405, float %7411, float %7329, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7413 = extractvalue %dx.types.ResRet.f32 %7412, 0
  %7414 = extractvalue %dx.types.ResRet.f32 %7412, 1
  %7415 = extractvalue %dx.types.ResRet.f32 %7412, 2
  %7416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7407, float %7411, float %7329, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7417 = extractvalue %dx.types.ResRet.f32 %7416, 0
  %7418 = extractvalue %dx.types.ResRet.f32 %7416, 1
  %7419 = extractvalue %dx.types.ResRet.f32 %7416, 2
  %7420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7405, float %7409, float %7329, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7421 = extractvalue %dx.types.ResRet.f32 %7420, 0
  %7422 = extractvalue %dx.types.ResRet.f32 %7420, 1
  %7423 = extractvalue %dx.types.ResRet.f32 %7420, 2
  %7424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7407, float %7409, float %7329, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7425 = extractvalue %dx.types.ResRet.f32 %7424, 0
  %7426 = extractvalue %dx.types.ResRet.f32 %7424, 1
  %7427 = extractvalue %dx.types.ResRet.f32 %7424, 2
  %7428 = fsub fast float %7421, %7413
  %7429 = fsub fast float %7422, %7414
  %7430 = fsub fast float %7423, %7415
  %7431 = fmul fast float %7428, %7401
  %7432 = fmul fast float %7429, %7401
  %7433 = fmul fast float %7430, %7401
  %7434 = fadd fast float %7431, %7413
  %7435 = fadd fast float %7432, %7414
  %7436 = fadd fast float %7433, %7415
  %7437 = fsub fast float %7425, %7417
  %7438 = fsub fast float %7426, %7418
  %7439 = fsub fast float %7427, %7419
  %7440 = fmul fast float %7437, %7401
  %7441 = fmul fast float %7438, %7401
  %7442 = fmul fast float %7439, %7401
  %7443 = fsub fast float %7417, %7434
  %7444 = fadd fast float %7443, %7440
  %7445 = fsub fast float %7418, %7435
  %7446 = fadd fast float %7445, %7441
  %7447 = fsub fast float %7419, %7436
  %7448 = fadd fast float %7447, %7442
  %7449 = fmul fast float %7444, %7389
  %7450 = fmul fast float %7446, %7389
  %7451 = fmul fast float %7448, %7389
  %7452 = fadd fast float %7449, %7434
  %7453 = fadd fast float %7450, %7435
  %7454 = fadd fast float %7451, %7436
  %7455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7456 = extractvalue %dx.types.CBufRet.f32 %7455, 1
  %7457 = fmul fast float %7452, %7456
  %7458 = fmul fast float %7453, %7456
  %7459 = fmul fast float %7454, %7456
  br label %7460

; <label>:7460                                    ; preds = %7292, %7261
  %7461 = phi float [ %7331, %7292 ], [ 1.000000e+00, %7261 ]
  %7462 = phi float [ %7332, %7292 ], [ 1.000000e+00, %7261 ]
  %7463 = phi float [ %7333, %7292 ], [ 1.000000e+00, %7261 ]
  %7464 = phi float [ %7457, %7292 ], [ 0.000000e+00, %7261 ]
  %7465 = phi float [ %7458, %7292 ], [ 0.000000e+00, %7261 ]
  %7466 = phi float [ %7459, %7292 ], [ 0.000000e+00, %7261 ]
  %7467 = fmul fast float %7464, %7238
  %7468 = fmul fast float %7465, %7238
  %7469 = fmul fast float %7466, %7238
  %7470 = call float @dx.op.dot3.f32(i32 55, float %7461, float %7462, float %7463, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7471 = call float @dx.op.dot3.f32(i32 55, float %7467, float %7468, float %7469, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7472 = select i1 %252, float %7470, float %7461
  %7473 = select i1 %252, float %7470, float %7462
  %7474 = select i1 %252, float 1.000000e+00, float %7463
  %7475 = select i1 %252, float %7471, float %7467
  %7476 = select i1 %252, float 0.000000e+00, float %7468
  %7477 = select i1 %252, float 0.000000e+00, float %7469
  %7478 = fmul fast float %7472, %7251
  %7479 = fmul fast float %7473, %7252
  %7480 = fmul fast float %7474, %7253
  %7481 = fadd fast float %7478, %7475
  %7482 = fadd fast float %7479, %7476
  %7483 = fadd fast float %7477, %7480
  %7484 = fmul fast float %7472, %7225
  %7485 = fmul fast float %7473, %7226
  %7486 = fmul fast float %7474, %7227
  %7487 = fmul fast float %127, %7263
  %7488 = fmul fast float %129, %7264
  %7489 = fsub fast float 1.000000e+00, %7487
  %7490 = fsub fast float 1.000000e+00, %7488
  %7491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7492 = extractvalue %dx.types.CBufRet.f32 %7491, 0
  %7493 = extractvalue %dx.types.CBufRet.f32 %7491, 1
  %7494 = extractvalue %dx.types.CBufRet.f32 %7491, 2
  %7495 = fmul fast float %7489, %7492
  %7496 = fmul fast float %7489, %7493
  %7497 = fmul fast float %7489, %7494
  %7498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7499 = extractvalue %dx.types.CBufRet.f32 %7498, 0
  %7500 = extractvalue %dx.types.CBufRet.f32 %7498, 1
  %7501 = extractvalue %dx.types.CBufRet.f32 %7498, 2
  %7502 = fmul fast float %7490, %7499
  %7503 = fmul fast float %7490, %7500
  %7504 = fmul fast float %7490, %7501
  %7505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7506 = extractvalue %dx.types.CBufRet.f32 %7505, 0
  %7507 = extractvalue %dx.types.CBufRet.f32 %7505, 1
  %7508 = extractvalue %dx.types.CBufRet.f32 %7505, 2
  %7509 = fadd fast float %7502, %7506
  %7510 = fadd fast float %7509, %7495
  %7511 = fadd fast float %7503, %7507
  %7512 = fadd fast float %7511, %7496
  %7513 = fadd fast float %7504, %7508
  %7514 = fadd fast float %7513, %7497
  %7515 = fmul fast float %7510, %213
  %7516 = fmul fast float %7512, %213
  %7517 = fmul fast float %7514, %213
  br label %7518

; <label>:7518                                    ; preds = %7460, %7224
  %7519 = phi float [ %7515, %7460 ], [ %178, %7224 ]
  %7520 = phi float [ %7516, %7460 ], [ %179, %7224 ]
  %7521 = phi float [ %7517, %7460 ], [ %180, %7224 ]
  %7522 = phi float [ %213, %7460 ], [ %90, %7224 ]
  %7523 = phi float [ %7481, %7460 ], [ %7251, %7224 ]
  %7524 = phi float [ %7482, %7460 ], [ %7252, %7224 ]
  %7525 = phi float [ %7483, %7460 ], [ %7253, %7224 ]
  %7526 = phi float [ %7484, %7460 ], [ %7225, %7224 ]
  %7527 = phi float [ %7485, %7460 ], [ %7226, %7224 ]
  %7528 = phi float [ %7486, %7460 ], [ %7227, %7224 ]
  %7529 = phi float [ %7461, %7460 ], [ 1.000000e+00, %7224 ]
  br i1 %7260, label %8684, label %7530

; <label>:7530                                    ; preds = %7518
  %7531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7532 = extractvalue %dx.types.CBufRet.f32 %7531, 0
  %7533 = extractvalue %dx.types.CBufRet.f32 %7531, 1
  %7534 = extractvalue %dx.types.CBufRet.f32 %7531, 2
  %7535 = extractvalue %dx.types.CBufRet.f32 %7531, 3
  %7536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7537 = extractvalue %dx.types.CBufRet.f32 %7536, 0
  %7538 = extractvalue %dx.types.CBufRet.f32 %7536, 1
  %7539 = extractvalue %dx.types.CBufRet.f32 %7536, 2
  %7540 = extractvalue %dx.types.CBufRet.f32 %7536, 3
  %7541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7542 = extractvalue %dx.types.CBufRet.f32 %7541, 0
  %7543 = extractvalue %dx.types.CBufRet.f32 %7541, 1
  %7544 = extractvalue %dx.types.CBufRet.f32 %7541, 2
  %7545 = extractvalue %dx.types.CBufRet.f32 %7541, 3
  %7546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7547 = extractvalue %dx.types.CBufRet.f32 %7546, 0
  %7548 = extractvalue %dx.types.CBufRet.f32 %7546, 1
  %7549 = extractvalue %dx.types.CBufRet.f32 %7546, 2
  %7550 = extractvalue %dx.types.CBufRet.f32 %7546, 3
  %7551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7552 = extractvalue %dx.types.CBufRet.f32 %7551, 3
  %7553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7554 = extractvalue %dx.types.CBufRet.f32 %7553, 3
  %7555 = extractvalue %dx.types.CBufRet.f32 %7553, 0
  %7556 = extractvalue %dx.types.CBufRet.f32 %7553, 1
  %7557 = extractvalue %dx.types.CBufRet.f32 %7553, 2
  %7558 = fcmp fast olt float %7557, -5.000000e-01
  %7559 = call float @dx.op.dot3.f32(i32 55, float %7519, float %7520, float %7521, float %7519, float %7520, float %7521)  ; Dot3(ax,ay,az,bx,by,bz)
  %7560 = call float @dx.op.unary.f32(i32 25, float %7559)  ; Rsqrt(value)
  %7561 = fmul fast float %7560, %7559
  %7562 = fmul fast float %7560, %7519
  %7563 = fmul fast float %7560, %7520
  %7564 = fmul fast float %7560, %7521
  %7565 = fadd fast float %7561, %7535
  %7566 = call float @dx.op.dot3.f32(i32 55, float %7562, float %7563, float %7564, float %7532, float %7533, float %7534)  ; Dot3(ax,ay,az,bx,by,bz)
  %7567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7568 = extractvalue %dx.types.CBufRet.i32 %7567, 1
  %7569 = and i32 %7568, 1
  %7570 = icmp ne i32 %7569, 0
  %7571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7572 = extractvalue %dx.types.CBufRet.f32 %7571, 2
  %7573 = fcmp fast ogt float %7572, 0.000000e+00
  %7574 = and i1 %7570, %7573
  br i1 %7574, label %7575, label %7981, !dx.controlflow.hints !110

; <label>:7575                                    ; preds = %7530
  %7576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7577 = extractvalue %dx.types.CBufRet.f32 %7576, 3
  %7578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7579 = extractvalue %dx.types.CBufRet.f32 %7578, 2
  %7580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7581 = extractvalue %dx.types.CBufRet.f32 %7580, 2
  %7582 = fsub fast float %7579, %7581
  %7583 = and i32 %7568, 2
  %7584 = extractvalue %dx.types.CBufRet.i32 %7567, 0
  %7585 = call i32 @dx.op.binary.i32(i32 40, i32 %7584, i32 3)  ; UMin(a,b)
  %7586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7587 = extractvalue %dx.types.CBufRet.f32 %7586, 0
  %7588 = extractvalue %dx.types.CBufRet.f32 %7586, 1
  %7589 = extractvalue %dx.types.CBufRet.f32 %7580, 0
  %7590 = extractvalue %dx.types.CBufRet.f32 %7580, 1
  %7591 = fsub fast float %7587, %7589
  %7592 = fsub fast float %7588, %7590
  %7593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7594 = extractvalue %dx.types.CBufRet.f32 %7593, 0
  %7595 = fcmp fast ogt float %7594, 0.000000e+00
  %7596 = fsub fast float -0.000000e+00, %7591
  %7597 = fsub fast float -0.000000e+00, %7592
  %7598 = call float @dx.op.dot2.f32(i32 54, float %7562, float %7563, float %7562, float %7563)  ; Dot2(ax,ay,bx,by)
  %7599 = call float @dx.op.dot2.f32(i32 54, float %7562, float %7563, float %7596, float %7597)  ; Dot2(ax,ay,bx,by)
  %7600 = fmul fast float %7599, 2.000000e+00
  %7601 = call float @dx.op.dot2.f32(i32 54, float %7596, float %7597, float %7596, float %7597)  ; Dot2(ax,ay,bx,by)
  %7602 = fmul fast float %7594, %7594
  %7603 = fsub fast float %7601, %7602
  %7604 = fmul fast float %7600, %7600
  %7605 = fmul fast float %7598, 4.000000e+00
  %7606 = fmul fast float %7605, %7603
  %7607 = fsub fast float %7604, %7606
  %7608 = fcmp fast ogt float %7607, 0.000000e+00
  br i1 %7608, label %7609, label %7624

; <label>:7609                                    ; preds = %7575
  %7610 = fcmp fast ogt float %7600, 0.000000e+00
  %7611 = call float @dx.op.unary.f32(i32 24, float %7607)  ; Sqrt(value)
  %7612 = fsub fast float -0.000000e+00, %7611
  %7613 = select i1 %7610, float %7611, float %7612
  %7614 = fadd fast float %7613, %7600
  %7615 = fmul float %7614, -5.000000e-01
  %7616 = fdiv fast float %7615, %7598
  %7617 = call float @dx.op.binary.f32(i32 35, float %7616, float 0.000000e+00)  ; FMax(a,b)
  %7618 = call float @dx.op.binary.f32(i32 36, float %7561, float %7617)  ; FMin(a,b)
  %7619 = fdiv fast float %7603, %7615
  %7620 = call float @dx.op.binary.f32(i32 35, float %7619, float 0.000000e+00)  ; FMax(a,b)
  %7621 = call float @dx.op.binary.f32(i32 36, float %7561, float %7620)  ; FMin(a,b)
  %7622 = call float @dx.op.binary.f32(i32 36, float %7618, float %7621)  ; FMin(a,b)
  %7623 = call float @dx.op.binary.f32(i32 35, float %7618, float %7621)  ; FMax(a,b)
  br label %7624

; <label>:7624                                    ; preds = %7609, %7575
  %7625 = phi float [ %7623, %7609 ], [ -1.000000e+00, %7575 ]
  %7626 = phi float [ %7622, %7609 ], [ -1.000000e+00, %7575 ]
  %7627 = phi i1 [ true, %7609 ], [ false, %7575 ]
  %7628 = and i1 %7595, %7627
  br i1 %7628, label %7629, label %7631

; <label>:7629                                    ; preds = %7624
  %7630 = fcmp fast oeq float %7626, %7625
  br i1 %7630, label %7934, label %7632

; <label>:7631                                    ; preds = %7624
  br i1 %7595, label %7934, label %7632

; <label>:7632                                    ; preds = %7631, %7629
  %7633 = phi float [ %7561, %7631 ], [ %7625, %7629 ]
  %7634 = phi float [ 0.000000e+00, %7631 ], [ %7626, %7629 ]
  %7635 = icmp ne i32 %7583, 0
  %7636 = fmul fast float %7633, %7564
  %7637 = fadd fast float %7636, %7577
  %7638 = fmul fast float %7637, %7633
  %7639 = select i1 %7635, float 0.000000e+00, float %7638
  %7640 = fcmp fast oeq float %7564, 0.000000e+00
  %7641 = fdiv fast float %7582, %7564
  %7642 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7641)  ; FMax(a,b)
  %7643 = select i1 %7640, float %7633, float %7642
  %7644 = call float @dx.op.binary.f32(i32 36, float %7633, float %7643)  ; FMin(a,b)
  %7645 = fcmp fast ogt float %7564, 0.000000e+00
  %7646 = fcmp fast olt float %7582, 0.000000e+00
  br i1 %7645, label %7647, label %7704

; <label>:7647                                    ; preds = %7632
  %7648 = icmp eq i32 %7583, 0
  br i1 %7646, label %7649, label %7693

; <label>:7649                                    ; preds = %7647
  %7650 = select i1 %7648, float %7633, float 0.000000e+00
  %7651 = fsub fast float -0.000000e+00, %7650
  %7652 = call float @dx.op.unary.f32(i32 6, float %7651)  ; FAbs(value)
  %7653 = fmul fast float %7650, %7564
  %7654 = fadd fast float %7653, %7577
  %7655 = fmul fast float %7652, %7654
  %7656 = fsub fast float %7639, %7655
  %7657 = fsub fast float %7633, %7652
  %7658 = select i1 %7648, float %7657, float 0.000000e+00
  %7659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7660 = extractvalue %dx.types.CBufRet.f32 %7659, 0
  %7661 = extractvalue %dx.types.CBufRet.f32 %7659, 1
  %7662 = extractvalue %dx.types.CBufRet.f32 %7659, 2
  %7663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7664 = extractvalue %dx.types.CBufRet.f32 %7663, 0
  %7665 = extractvalue %dx.types.CBufRet.f32 %7663, 1
  %7666 = extractvalue %dx.types.CBufRet.f32 %7663, 2
  %7667 = extractvalue %dx.types.CBufRet.f32 %7663, 3
  %7668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7669 = extractvalue %dx.types.CBufRet.f32 %7668, 3
  %7670 = call float @dx.op.binary.f32(i32 36, float %7656, float %7669)  ; FMin(a,b)
  %7671 = fmul fast float %7667, %7658
  %7672 = call float @dx.op.unary.f32(i32 7, float %7671)  ; Saturate(value)
  %7673 = fsub fast float %7664, %7660
  %7674 = fsub fast float %7665, %7661
  %7675 = fsub fast float %7666, %7662
  %7676 = fmul fast float %7672, %7673
  %7677 = fmul fast float %7672, %7674
  %7678 = fmul fast float %7672, %7675
  %7679 = fadd fast float %7676, %7660
  %7680 = fadd fast float %7677, %7661
  %7681 = fadd fast float %7678, %7662
  %7682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7683 = extractvalue %dx.types.CBufRet.f32 %7682, 0
  %7684 = extractvalue %dx.types.CBufRet.f32 %7682, 1
  %7685 = fadd fast float %7684, %7683
  %7686 = call float @dx.op.unary.f32(i32 7, float %7685)  ; Saturate(value)
  %7687 = extractvalue %dx.types.CBufRet.f32 %7682, 2
  %7688 = extractvalue %dx.types.CBufRet.f32 %7682, 3
  %7689 = fadd fast float %7688, %7687
  %7690 = call float @dx.op.unary.f32(i32 7, float %7689)  ; Saturate(value)
  %7691 = fmul fast float %7686, %7670
  %7692 = fmul fast float %7691, %7690
  br label %7934

; <label>:7693                                    ; preds = %7647
  br i1 %7648, label %7694, label %7715

; <label>:7694                                    ; preds = %7693
  %7695 = call float @dx.op.binary.f32(i32 36, float %7644, float %7634)  ; FMin(a,b)
  %7696 = fsub fast float %7644, %7695
  %7697 = fsub fast float %7696, %7633
  %7698 = call float @dx.op.unary.f32(i32 6, float %7697)  ; FAbs(value)
  %7699 = fadd fast float %7696, %7633
  %7700 = fmul fast float %7699, %7564
  %7701 = fadd fast float %7700, %7577
  %7702 = fmul fast float %7701, %7698
  %7703 = fsub fast float %7639, %7702
  br label %7715

; <label>:7704                                    ; preds = %7632
  br i1 %7646, label %7705, label %7715

; <label>:7705                                    ; preds = %7704
  %7706 = call float @dx.op.binary.f32(i32 35, float %7634, float %7644)  ; FMax(a,b)
  %7707 = icmp eq i32 %7583, 0
  %7708 = select i1 %7707, float %7644, float 0.000000e+00
  %7709 = fsub fast float -0.000000e+00, %7708
  %7710 = call float @dx.op.unary.f32(i32 6, float %7709)  ; FAbs(value)
  %7711 = fmul fast float %7708, %7564
  %7712 = fadd fast float %7711, %7577
  %7713 = fmul fast float %7710, %7712
  %7714 = fsub fast float %7639, %7713
  br label %7715

; <label>:7715                                    ; preds = %7705, %7704, %7694, %7693
  %7716 = phi float [ %7634, %7693 ], [ %7634, %7694 ], [ %7706, %7705 ], [ %7634, %7704 ]
  %7717 = phi float [ 0.000000e+00, %7693 ], [ %7698, %7694 ], [ %7710, %7705 ], [ 0.000000e+00, %7704 ]
  %7718 = phi float [ %7639, %7693 ], [ %7703, %7694 ], [ %7714, %7705 ], [ %7639, %7704 ]
  %7719 = phi float [ %7644, %7693 ], [ %7644, %7694 ], [ %7633, %7705 ], [ %7633, %7704 ]
  %7720 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %7720, align 4, !tbaa !111, !noalias !113
  %7721 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %7721, align 4, !tbaa !111, !noalias !113
  %7722 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %7722, align 4, !tbaa !111, !noalias !113
  %7723 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %7723, align 4, !tbaa !111, !noalias !113
  %7724 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %7724, align 4, !tbaa !111, !noalias !113
  %7725 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %7725, align 4, !tbaa !111, !noalias !113
  %7726 = icmp sgt i32 %7585, 0
  br i1 %7726, label %7727, label %7788

; <label>:7727                                    ; preds = %7715
  br label %7728

; <label>:7728                                    ; preds = %7777, %7727
  %7729 = phi i32 [ %7778, %7777 ], [ 0, %7727 ]
  %7730 = phi i32 [ %7779, %7777 ], [ 0, %7727 ]
  %7731 = add nuw i32 %7730, 171
  %7732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %7731)  ; CBufferLoadLegacy(handle,regIndex)
  %7733 = extractvalue %dx.types.CBufRet.f32 %7732, 0
  %7734 = extractvalue %dx.types.CBufRet.f32 %7732, 1
  %7735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7736 = extractvalue %dx.types.CBufRet.f32 %7735, 0
  %7737 = extractvalue %dx.types.CBufRet.f32 %7735, 1
  %7738 = fsub fast float %7733, %7736
  %7739 = fsub fast float %7734, %7737
  %7740 = extractvalue %dx.types.CBufRet.f32 %7732, 2
  %7741 = fsub fast float -0.000000e+00, %7738
  %7742 = fsub fast float -0.000000e+00, %7739
  %7743 = call float @dx.op.dot2.f32(i32 54, float %7562, float %7563, float %7741, float %7742)  ; Dot2(ax,ay,bx,by)
  %7744 = fmul fast float %7743, 2.000000e+00
  %7745 = call float @dx.op.dot2.f32(i32 54, float %7741, float %7742, float %7741, float %7742)  ; Dot2(ax,ay,bx,by)
  %7746 = fmul fast float %7740, %7740
  %7747 = fsub fast float %7745, %7746
  %7748 = fmul fast float %7744, %7744
  %7749 = fmul fast float %7605, %7747
  %7750 = fsub fast float %7748, %7749
  %7751 = fcmp fast ogt float %7750, 0.000000e+00
  br i1 %7751, label %7752, label %7767

; <label>:7752                                    ; preds = %7728
  %7753 = fcmp fast ogt float %7744, 0.000000e+00
  %7754 = call float @dx.op.unary.f32(i32 24, float %7750)  ; Sqrt(value)
  %7755 = fsub fast float -0.000000e+00, %7754
  %7756 = select i1 %7753, float %7754, float %7755
  %7757 = fadd fast float %7756, %7744
  %7758 = fmul float %7757, -5.000000e-01
  %7759 = fdiv fast float %7758, %7598
  %7760 = call float @dx.op.binary.f32(i32 35, float %7759, float 0.000000e+00)  ; FMax(a,b)
  %7761 = call float @dx.op.binary.f32(i32 36, float %7633, float %7760)  ; FMin(a,b)
  %7762 = fdiv fast float %7747, %7758
  %7763 = call float @dx.op.binary.f32(i32 35, float %7762, float 0.000000e+00)  ; FMax(a,b)
  %7764 = call float @dx.op.binary.f32(i32 36, float %7633, float %7763)  ; FMin(a,b)
  %7765 = call float @dx.op.binary.f32(i32 36, float %7761, float %7764)  ; FMin(a,b)
  %7766 = call float @dx.op.binary.f32(i32 35, float %7761, float %7764)  ; FMax(a,b)
  br label %7767

; <label>:7767                                    ; preds = %7752, %7728
  %7768 = phi float [ %7766, %7752 ], [ -1.000000e+00, %7728 ]
  %7769 = phi float [ %7765, %7752 ], [ -1.000000e+00, %7728 ]
  %7770 = phi i1 [ true, %7752 ], [ false, %7728 ]
  br i1 %7770, label %7771, label %7777

; <label>:7771                                    ; preds = %7767
  %7772 = call float @dx.op.binary.f32(i32 35, float %7716, float %7769)  ; FMax(a,b)
  %7773 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7730
  store float %7772, float* %7773, align 4, !tbaa !111, !noalias !113
  %7774 = call float @dx.op.binary.f32(i32 35, float %7716, float %7768)  ; FMax(a,b)
  %7775 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7730
  store float %7774, float* %7775, align 4, !tbaa !111, !noalias !113
  %7776 = add nsw i32 %7729, 1
  br label %7777

; <label>:7777                                    ; preds = %7771, %7767
  %7778 = phi i32 [ %7776, %7771 ], [ %7729, %7767 ]
  %7779 = add nuw nsw i32 %7730, 1
  %7780 = icmp eq i32 %7779, %7585
  br i1 %7780, label %7781, label %7728

; <label>:7781                                    ; preds = %7777
  %7782 = load float, float* %7722, align 4, !tbaa !111, !alias.scope !129, !noalias !132
  %7783 = load float, float* %7721, align 4, !tbaa !111, !alias.scope !135, !noalias !136
  %7784 = load float, float* %7720, align 4, !tbaa !111, !alias.scope !137, !noalias !138
  %7785 = load float, float* %7725, align 4, !tbaa !111, !alias.scope !139, !noalias !142
  %7786 = load float, float* %7724, align 4, !tbaa !111, !alias.scope !145, !noalias !146
  %7787 = load float, float* %7723, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  br label %7788

; <label>:7788                                    ; preds = %7781, %7715
  %7789 = phi float [ -1.000000e+00, %7715 ], [ %7787, %7781 ]
  %7790 = phi float [ -1.000000e+00, %7715 ], [ %7786, %7781 ]
  %7791 = phi float [ -1.000000e+00, %7715 ], [ %7785, %7781 ]
  %7792 = phi float [ -1.000000e+00, %7715 ], [ %7784, %7781 ]
  %7793 = phi float [ -1.000000e+00, %7715 ], [ %7783, %7781 ]
  %7794 = phi float [ -1.000000e+00, %7715 ], [ %7782, %7781 ]
  %7795 = phi i32 [ 0, %7715 ], [ %7778, %7781 ]
  %7796 = call float @dx.op.binary.f32(i32 36, float %7793, float %7794)  ; FMin(a,b)
  %7797 = call float @dx.op.binary.f32(i32 36, float %7792, float %7796)  ; FMin(a,b)
  %7798 = call float @dx.op.binary.f32(i32 35, float %7792, float %7793)  ; FMax(a,b)
  %7799 = call float @dx.op.binary.f32(i32 36, float %7798, float %7794)  ; FMin(a,b)
  %7800 = call float @dx.op.binary.f32(i32 36, float %7792, float %7793)  ; FMin(a,b)
  %7801 = call float @dx.op.binary.f32(i32 35, float %7800, float %7799)  ; FMax(a,b)
  %7802 = call float @dx.op.binary.f32(i32 35, float %7793, float %7794)  ; FMax(a,b)
  %7803 = call float @dx.op.binary.f32(i32 35, float %7792, float %7802)  ; FMax(a,b)
  store float %7797, float* %7720, align 4, !tbaa !111, !alias.scope !137, !noalias !138
  store float %7801, float* %7721, align 4, !tbaa !111, !alias.scope !135, !noalias !136
  store float %7803, float* %7722, align 4, !tbaa !111, !alias.scope !129, !noalias !132
  %7804 = call float @dx.op.binary.f32(i32 36, float %7790, float %7791)  ; FMin(a,b)
  %7805 = call float @dx.op.binary.f32(i32 36, float %7789, float %7804)  ; FMin(a,b)
  %7806 = call float @dx.op.binary.f32(i32 35, float %7789, float %7790)  ; FMax(a,b)
  %7807 = call float @dx.op.binary.f32(i32 36, float %7806, float %7791)  ; FMin(a,b)
  %7808 = call float @dx.op.binary.f32(i32 36, float %7789, float %7790)  ; FMin(a,b)
  %7809 = call float @dx.op.binary.f32(i32 35, float %7808, float %7807)  ; FMax(a,b)
  %7810 = call float @dx.op.binary.f32(i32 35, float %7790, float %7791)  ; FMax(a,b)
  %7811 = call float @dx.op.binary.f32(i32 35, float %7789, float %7810)  ; FMax(a,b)
  store float %7805, float* %7723, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  store float %7809, float* %7724, align 4, !tbaa !111, !alias.scope !145, !noalias !146
  store float %7811, float* %7725, align 4, !tbaa !111, !alias.scope !139, !noalias !142
  %7812 = sub nsw i32 3, %7795
  %7813 = icmp sgt i32 %7812, 2
  br i1 %7813, label %7814, label %7852

; <label>:7814                                    ; preds = %7788
  %7815 = icmp eq i32 %7583, 0
  %7816 = fsub fast float %7633, %7717
  %7817 = select i1 %7815, float %7816, float %7717
  %7818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7819 = extractvalue %dx.types.CBufRet.f32 %7818, 0
  %7820 = extractvalue %dx.types.CBufRet.f32 %7818, 1
  %7821 = extractvalue %dx.types.CBufRet.f32 %7818, 2
  %7822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7823 = extractvalue %dx.types.CBufRet.f32 %7822, 0
  %7824 = extractvalue %dx.types.CBufRet.f32 %7822, 1
  %7825 = extractvalue %dx.types.CBufRet.f32 %7822, 2
  %7826 = extractvalue %dx.types.CBufRet.f32 %7822, 3
  %7827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7828 = extractvalue %dx.types.CBufRet.f32 %7827, 3
  %7829 = call float @dx.op.binary.f32(i32 36, float %7718, float %7828)  ; FMin(a,b)
  %7830 = fmul fast float %7826, %7817
  %7831 = call float @dx.op.unary.f32(i32 7, float %7830)  ; Saturate(value)
  %7832 = fsub fast float %7823, %7819
  %7833 = fsub fast float %7824, %7820
  %7834 = fsub fast float %7825, %7821
  %7835 = fmul fast float %7831, %7832
  %7836 = fmul fast float %7831, %7833
  %7837 = fmul fast float %7831, %7834
  %7838 = fadd fast float %7835, %7819
  %7839 = fadd fast float %7836, %7820
  %7840 = fadd fast float %7837, %7821
  %7841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7842 = extractvalue %dx.types.CBufRet.f32 %7841, 0
  %7843 = extractvalue %dx.types.CBufRet.f32 %7841, 1
  %7844 = fadd fast float %7843, %7842
  %7845 = call float @dx.op.unary.f32(i32 7, float %7844)  ; Saturate(value)
  %7846 = extractvalue %dx.types.CBufRet.f32 %7841, 2
  %7847 = extractvalue %dx.types.CBufRet.f32 %7841, 3
  %7848 = fadd fast float %7847, %7846
  %7849 = call float @dx.op.unary.f32(i32 7, float %7848)  ; Saturate(value)
  %7850 = fmul fast float %7845, %7829
  %7851 = fmul fast float %7850, %7849
  br label %7934

; <label>:7852                                    ; preds = %7788
  %7853 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7812
  %7854 = load float, float* %7853, align 4, !tbaa !111, !noalias !113
  %7855 = fcmp fast olt float %7854, %7719
  %7856 = icmp sgt i32 %7795, 0
  %7857 = and i1 %7856, %7855
  br i1 %7857, label %7858, label %7895

; <label>:7858                                    ; preds = %7852
  br label %7859

; <label>:7859                                    ; preds = %7888, %7858
  %7860 = phi float [ %7889, %7888 ], [ %7717, %7858 ]
  %7861 = phi float [ %7890, %7888 ], [ %7718, %7858 ]
  %7862 = phi float [ %7870, %7888 ], [ %7854, %7858 ]
  %7863 = phi i32 [ %7867, %7888 ], [ %7812, %7858 ]
  %7864 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7863
  %7865 = load float, float* %7864, align 4, !tbaa !111, !noalias !113
  %7866 = icmp slt i32 %7863, 2
  %7867 = add nsw i32 %7863, 1
  %7868 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7867
  %7869 = load float, float* %7868, align 4, !tbaa !111, !noalias !113
  %7870 = select i1 %7866, float %7869, float %7633
  %7871 = call float @dx.op.binary.f32(i32 36, float %7870, float %7865)  ; FMin(a,b)
  %7872 = call float @dx.op.binary.f32(i32 36, float %7719, float %7871)  ; FMin(a,b)
  %7873 = icmp eq i32 %7583, 0
  %7874 = fadd fast float %7872, %7862
  %7875 = fmul fast float %7874, %7564
  %7876 = fadd fast float %7875, %7577
  br i1 %7873, label %7882, label %7877

; <label>:7877                                    ; preds = %7859
  %7878 = fsub fast float %7872, %7862
  %7879 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7878)  ; FMax(a,b)
  %7880 = fmul fast float %7879, %7876
  %7881 = fadd fast float %7880, %7861
  br label %7888

; <label>:7882                                    ; preds = %7859
  %7883 = fsub fast float %7862, %7872
  %7884 = call float @dx.op.unary.f32(i32 6, float %7883)  ; FAbs(value)
  %7885 = fadd fast float %7884, %7860
  %7886 = fmul fast float %7884, %7876
  %7887 = fsub fast float %7861, %7886
  br label %7888

; <label>:7888                                    ; preds = %7882, %7877
  %7889 = phi float [ %7879, %7877 ], [ %7885, %7882 ]
  %7890 = phi float [ %7881, %7877 ], [ %7887, %7882 ]
  %7891 = fcmp fast olt float %7870, %7719
  %7892 = icmp slt i32 %7867, 3
  %7893 = and i1 %7892, %7891
  br i1 %7893, label %7859, label %7894

; <label>:7894                                    ; preds = %7888
  br label %7895

; <label>:7895                                    ; preds = %7894, %7852
  %7896 = phi float [ %7717, %7852 ], [ %7889, %7894 ]
  %7897 = phi float [ %7718, %7852 ], [ %7890, %7894 ]
  %7898 = fsub fast float %7633, %7896
  %7899 = select i1 %7635, float %7896, float %7898
  %7900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7901 = extractvalue %dx.types.CBufRet.f32 %7900, 0
  %7902 = extractvalue %dx.types.CBufRet.f32 %7900, 1
  %7903 = extractvalue %dx.types.CBufRet.f32 %7900, 2
  %7904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7905 = extractvalue %dx.types.CBufRet.f32 %7904, 0
  %7906 = extractvalue %dx.types.CBufRet.f32 %7904, 1
  %7907 = extractvalue %dx.types.CBufRet.f32 %7904, 2
  %7908 = extractvalue %dx.types.CBufRet.f32 %7904, 3
  %7909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7910 = extractvalue %dx.types.CBufRet.f32 %7909, 3
  %7911 = call float @dx.op.binary.f32(i32 36, float %7897, float %7910)  ; FMin(a,b)
  %7912 = fmul fast float %7908, %7899
  %7913 = call float @dx.op.unary.f32(i32 7, float %7912)  ; Saturate(value)
  %7914 = fsub fast float %7905, %7901
  %7915 = fsub fast float %7906, %7902
  %7916 = fsub fast float %7907, %7903
  %7917 = fmul fast float %7913, %7914
  %7918 = fmul fast float %7913, %7915
  %7919 = fmul fast float %7913, %7916
  %7920 = fadd fast float %7917, %7901
  %7921 = fadd fast float %7918, %7902
  %7922 = fadd fast float %7919, %7903
  %7923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7924 = extractvalue %dx.types.CBufRet.f32 %7923, 0
  %7925 = extractvalue %dx.types.CBufRet.f32 %7923, 1
  %7926 = fadd fast float %7925, %7924
  %7927 = call float @dx.op.unary.f32(i32 7, float %7926)  ; Saturate(value)
  %7928 = extractvalue %dx.types.CBufRet.f32 %7923, 2
  %7929 = extractvalue %dx.types.CBufRet.f32 %7923, 3
  %7930 = fadd fast float %7929, %7928
  %7931 = call float @dx.op.unary.f32(i32 7, float %7930)  ; Saturate(value)
  %7932 = fmul fast float %7927, %7911
  %7933 = fmul fast float %7932, %7931
  br label %7934

; <label>:7934                                    ; preds = %7895, %7814, %7649, %7631, %7629
  %7935 = phi float [ %7658, %7649 ], [ %7817, %7814 ], [ %7899, %7895 ], [ 0.000000e+00, %7629 ], [ 0.000000e+00, %7631 ]
  %7936 = phi float [ %7692, %7649 ], [ %7851, %7814 ], [ %7933, %7895 ], [ 0.000000e+00, %7629 ], [ 0.000000e+00, %7631 ]
  %7937 = phi float [ %7679, %7649 ], [ %7838, %7814 ], [ %7920, %7895 ], [ 0.000000e+00, %7629 ], [ 0.000000e+00, %7631 ]
  %7938 = phi float [ %7680, %7649 ], [ %7839, %7814 ], [ %7921, %7895 ], [ 0.000000e+00, %7629 ], [ 0.000000e+00, %7631 ]
  %7939 = phi float [ %7681, %7649 ], [ %7840, %7814 ], [ %7922, %7895 ], [ 0.000000e+00, %7629 ], [ 0.000000e+00, %7631 ]
  %7940 = fmul fast float %7572, %7936
  %7941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7942 = extractvalue %dx.types.CBufRet.f32 %7941, 2
  %7943 = fsub fast float %7579, %7942
  %7944 = fcmp fast olt float %7940, -2.000000e+01
  %7945 = call float @dx.op.unary.f32(i32 21, float %7940)  ; Exp(value)
  %7946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7947 = extractvalue %dx.types.CBufRet.f32 %7946, 2
  %7948 = extractvalue %dx.types.CBufRet.f32 %7946, 3
  %7949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7950 = extractvalue %dx.types.CBufRet.f32 %7949, 2
  %7951 = fmul fast float %7948, %7943
  %7952 = call float @dx.op.unary.f32(i32 7, float %7951)  ; Saturate(value)
  %7953 = fsub fast float 1.000000e+00, %7952
  %7954 = fmul fast float %7564, 5.000000e-01
  %7955 = fadd fast float %7954, 5.000000e-01
  %7956 = call float @dx.op.unary.f32(i32 7, float %7955)  ; Saturate(value)
  %7957 = fsub fast float 1.000000e+00, %7956
  %7958 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7953)  ; FMax(a,b)
  %7959 = fdiv fast float %7957, %7958
  %7960 = fsub fast float %7943, %7521
  %7961 = call float @dx.op.unary.f32(i32 6, float %7960)  ; FAbs(value)
  %7962 = fmul fast float %7961, %7947
  %7963 = call float @dx.op.unary.f32(i32 7, float %7959)  ; Saturate(value)
  %7964 = fsub fast float 1.000000e+00, %7962
  %7965 = fmul fast float %7964, %7963
  %7966 = fadd fast float %7965, %7962
  %7967 = fmul fast float %7950, %7943
  %7968 = call float @dx.op.unary.f32(i32 7, float %7967)  ; Saturate(value)
  %7969 = fsub fast float 1.000000e+00, %7966
  %7970 = fmul fast float %7969, %7968
  %7971 = fadd fast float %7970, %7966
  %7972 = call float @dx.op.unary.f32(i32 7, float %7971)  ; Saturate(value)
  %7973 = fadd fast float %7945, -1.000000e+00
  %7974 = select i1 %7944, float -1.000000e+00, float %7973
  %7975 = fmul fast float %7972, %7974
  %7976 = fadd fast float %7975, 1.000000e+00
  %7977 = fsub fast float -0.000000e+00, %7975
  %7978 = fmul fast float %7937, %7977
  %7979 = fmul fast float %7938, %7977
  %7980 = fmul fast float %7939, %7977
  br label %7981

; <label>:7981                                    ; preds = %7934, %7530
  %7982 = phi float [ %7935, %7934 ], [ 0.000000e+00, %7530 ]
  %7983 = phi float [ %7976, %7934 ], [ 1.000000e+00, %7530 ]
  %7984 = phi float [ %7978, %7934 ], [ 0.000000e+00, %7530 ]
  %7985 = phi float [ %7979, %7934 ], [ 0.000000e+00, %7530 ]
  %7986 = phi float [ %7980, %7934 ], [ 0.000000e+00, %7530 ]
  %7987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7988 = extractvalue %dx.types.CBufRet.f32 %7987, 1
  %7989 = fsub fast float 1.000000e+00, %7983
  %7990 = fmul fast float %7989, %7565
  %7991 = fmul fast float %7990, %7988
  %7992 = fsub fast float %7565, %7991
  br i1 %7558, label %7993, label %8022, !dx.controlflow.hints !149

; <label>:7993                                    ; preds = %7981
  %7994 = fmul fast float %7566, %7555
  %7995 = fadd fast float %7994, %7556
  %7996 = call float @dx.op.unary.f32(i32 7, float %7995)  ; Saturate(value)
  %7997 = fmul fast float %7537, %7992
  %7998 = fsub fast float -0.000000e+00, %7997
  %7999 = fmul fast float %7538, %7992
  %8000 = fsub fast float -0.000000e+00, %7999
  %8001 = call float @dx.op.unary.f32(i32 21, float %7998)  ; Exp(value)
  %8002 = call float @dx.op.unary.f32(i32 21, float %8000)  ; Exp(value)
  %8003 = call float @dx.op.binary.f32(i32 35, float %7545, float %8001)  ; FMax(a,b)
  %8004 = call float @dx.op.binary.f32(i32 35, float %7545, float %8002)  ; FMax(a,b)
  %8005 = fsub fast float %8004, %8003
  %8006 = fmul fast float %8005, %7996
  %8007 = fadd fast float %8006, %8003
  %8008 = call float @dx.op.unary.f32(i32 7, float %8007)  ; Saturate(value)
  %8009 = fsub fast float %7542, %7547
  %8010 = fsub fast float %7543, %7548
  %8011 = fsub fast float %7544, %7549
  %8012 = fmul fast float %7996, %8009
  %8013 = fmul fast float %7996, %8010
  %8014 = fmul fast float %7996, %8011
  %8015 = fadd fast float %8012, %7547
  %8016 = fadd fast float %8013, %7548
  %8017 = fadd fast float %8014, %7549
  %8018 = fsub fast float 1.000000e+00, %8008
  %8019 = fmul fast float %8018, %8015
  %8020 = fmul fast float %8018, %8016
  %8021 = fmul fast float %8018, %8017
  br label %8081

; <label>:8022                                    ; preds = %7981
  %8023 = fmul fast float %7992, %7554
  %8024 = call float @dx.op.unary.f32(i32 7, float %8023)  ; Saturate(value)
  %8025 = fsub fast float 2.000000e+00, %8024
  %8026 = fmul fast float %8024, 9.921875e-01
  %8027 = fmul fast float %8026, %8025
  %8028 = fadd fast float %8027, 3.906250e-03
  %8029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %37, float %8028, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8030 = extractvalue %dx.types.ResRet.f32 %8029, 0
  %8031 = fsub fast float %8024, %8030
  %8032 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8031)  ; FMax(a,b)
  %8033 = fmul fast float %7540, %7521
  %8034 = call float @dx.op.unary.f32(i32 6, float %8033)  ; FAbs(value)
  %8035 = fcmp fast ogt float %8034, 0x3EB0C6F7A0000000
  br i1 %8035, label %8036, label %8042, !dx.controlflow.hints !150

; <label>:8036                                    ; preds = %8022
  %8037 = fmul fast float %8033, 0xBFF7154760000000
  %8038 = call float @dx.op.unary.f32(i32 21, float %8037)  ; Exp(value)
  %8039 = fsub fast float 1.000000e+00, %8038
  %8040 = fdiv fast float %8039, %8033
  %8041 = fmul fast float %8040, %7550
  br label %8042

; <label>:8042                                    ; preds = %8036, %8022
  %8043 = phi float [ %8041, %8036 ], [ %7550, %8022 ]
  %8044 = fadd fast float %8043, %7552
  %8045 = fmul fast float %8044, %8032
  %8046 = fmul fast float %7537, %8045
  %8047 = fsub fast float -0.000000e+00, %8046
  %8048 = fmul fast float %7538, %8045
  %8049 = fsub fast float -0.000000e+00, %8048
  %8050 = fmul fast float %7539, %8045
  %8051 = fsub fast float -0.000000e+00, %8050
  %8052 = call float @dx.op.unary.f32(i32 21, float %8047)  ; Exp(value)
  %8053 = call float @dx.op.unary.f32(i32 21, float %8049)  ; Exp(value)
  %8054 = call float @dx.op.unary.f32(i32 21, float %8051)  ; Exp(value)
  %8055 = fmul fast float %7566, %7566
  %8056 = fadd fast float %8055, 1.000000e+00
  %8057 = fmul fast float %8056, 0x3FAE8EC8A0000000
  %8058 = fmul fast float %8057, %7547
  %8059 = fmul fast float %8057, %7548
  %8060 = fmul fast float %8057, %7549
  %8061 = fmul fast float %7566, %7545
  %8062 = fsub fast float 1.000000e+00, %8061
  %8063 = fmul fast float %7545, %7545
  %8064 = fsub fast float 1.000000e+00, %8063
  %8065 = fmul fast float %8064, 0x3FB45F3060000000
  %8066 = fmul fast float %8062, %8062
  %8067 = fdiv fast float 1.000000e+00, %8066
  %8068 = fmul fast float %8065, %8067
  %8069 = fmul fast float %8068, %7542
  %8070 = fmul fast float %8068, %7543
  %8071 = fmul fast float %8068, %7544
  %8072 = fadd fast float %8069, %8058
  %8073 = fadd fast float %8070, %8059
  %8074 = fadd fast float %8071, %8060
  %8075 = fsub fast float 1.000000e+00, %8052
  %8076 = fsub fast float 1.000000e+00, %8053
  %8077 = fsub fast float 1.000000e+00, %8054
  %8078 = fmul fast float %8072, %8075
  %8079 = fmul fast float %8073, %8076
  %8080 = fmul fast float %8074, %8077
  br label %8081

; <label>:8081                                    ; preds = %8042, %7993
  %8082 = phi float [ %8019, %7993 ], [ %8078, %8042 ]
  %8083 = phi float [ %8020, %7993 ], [ %8079, %8042 ]
  %8084 = phi float [ %8021, %7993 ], [ %8080, %8042 ]
  %8085 = phi float [ %8008, %7993 ], [ %8052, %8042 ]
  %8086 = phi float [ %8008, %7993 ], [ %8053, %8042 ]
  %8087 = phi float [ %8008, %7993 ], [ %8054, %8042 ]
  br i1 %7574, label %8088, label %8286, !dx.controlflow.hints !151

; <label>:8088                                    ; preds = %8081
  %8089 = extractvalue %dx.types.CBufRet.f32 %7987, 0
  %8090 = fmul fast float %8089, %7989
  %8091 = fsub fast float %7984, %8082
  %8092 = fsub fast float %7985, %8083
  %8093 = fsub fast float %7986, %8084
  %8094 = fmul fast float %8090, %8091
  %8095 = fmul fast float %8090, %8092
  %8096 = fmul fast float %8090, %8093
  %8097 = fadd fast float %8094, %8082
  %8098 = fadd fast float %8095, %8083
  %8099 = fadd fast float %8096, %8084
  %8100 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8085)  ; FMax(a,b)
  %8101 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8086)  ; FMax(a,b)
  %8102 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8087)  ; FMax(a,b)
  %8103 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7983)  ; FMax(a,b)
  %8104 = call float @dx.op.binary.f32(i32 35, float %7982, float %7992)  ; FMax(a,b)
  %8105 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8104)  ; FMax(a,b)
  %8106 = fdiv fast float %7982, %8105
  %8107 = call float @dx.op.unary.f32(i32 7, float %8106)  ; Saturate(value)
  %8108 = fdiv fast float %7992, %8105
  %8109 = call float @dx.op.unary.f32(i32 7, float %8108)  ; Saturate(value)
  %8110 = fcmp fast une float %8103, 1.000000e+00
  br i1 %8110, label %8111, label %8124, !dx.controlflow.hints !152

; <label>:8111                                    ; preds = %8088
  %8112 = call float @dx.op.unary.f32(i32 23, float %8103)  ; Log(value)
  %8113 = fmul fast float %8112, 0x3FE62E4300000000
  %8114 = fmul fast float %7984, %8113
  %8115 = fsub fast float -0.000000e+00, %8114
  %8116 = fmul fast float %7985, %8113
  %8117 = fsub fast float -0.000000e+00, %8116
  %8118 = fmul fast float %7986, %8113
  %8119 = fsub fast float -0.000000e+00, %8118
  %8120 = fsub fast float 1.000000e+00, %8103
  %8121 = fdiv fast float %8115, %8120
  %8122 = fdiv fast float %8117, %8120
  %8123 = fdiv fast float %8119, %8120
  br label %8124

; <label>:8124                                    ; preds = %8111, %8088
  %8125 = phi float [ %8121, %8111 ], [ %7984, %8088 ]
  %8126 = phi float [ %8122, %8111 ], [ %7985, %8088 ]
  %8127 = phi float [ %8123, %8111 ], [ %7986, %8088 ]
  %8128 = phi float [ %8113, %8111 ], [ 0.000000e+00, %8088 ]
  %8129 = fcmp fast une float %8100, 1.000000e+00
  br i1 %8129, label %8130, label %8137, !dx.controlflow.hints !153

; <label>:8130                                    ; preds = %8124
  %8131 = call float @dx.op.unary.f32(i32 23, float %8100)  ; Log(value)
  %8132 = fmul fast float %8131, 0x3FE62E4300000000
  %8133 = fmul fast float %8097, %8132
  %8134 = fsub fast float -0.000000e+00, %8133
  %8135 = fsub fast float 1.000000e+00, %8100
  %8136 = fdiv fast float %8134, %8135
  br label %8137

; <label>:8137                                    ; preds = %8130, %8124
  %8138 = phi float [ %8136, %8130 ], [ %8097, %8124 ]
  %8139 = phi float [ %8132, %8130 ], [ 0.000000e+00, %8124 ]
  %8140 = fcmp fast une float %8101, 1.000000e+00
  br i1 %8140, label %8141, label %8148, !dx.controlflow.hints !153

; <label>:8141                                    ; preds = %8137
  %8142 = call float @dx.op.unary.f32(i32 23, float %8101)  ; Log(value)
  %8143 = fmul fast float %8142, 0x3FE62E4300000000
  %8144 = fmul fast float %8098, %8143
  %8145 = fsub fast float -0.000000e+00, %8144
  %8146 = fsub fast float 1.000000e+00, %8101
  %8147 = fdiv fast float %8145, %8146
  br label %8148

; <label>:8148                                    ; preds = %8141, %8137
  %8149 = phi float [ %8147, %8141 ], [ %8098, %8137 ]
  %8150 = phi float [ %8143, %8141 ], [ 0.000000e+00, %8137 ]
  %8151 = fcmp fast une float %8102, 1.000000e+00
  br i1 %8151, label %8152, label %8159, !dx.controlflow.hints !153

; <label>:8152                                    ; preds = %8148
  %8153 = call float @dx.op.unary.f32(i32 23, float %8102)  ; Log(value)
  %8154 = fmul fast float %8153, 0x3FE62E4300000000
  %8155 = fmul fast float %8099, %8154
  %8156 = fsub fast float -0.000000e+00, %8155
  %8157 = fsub fast float 1.000000e+00, %8102
  %8158 = fdiv fast float %8156, %8157
  br label %8159

; <label>:8159                                    ; preds = %8152, %8148
  %8160 = phi float [ %8158, %8152 ], [ %8099, %8148 ]
  %8161 = phi float [ %8154, %8152 ], [ 0.000000e+00, %8148 ]
  %8162 = fmul fast float %8125, %8109
  %8163 = fmul fast float %8126, %8109
  %8164 = fmul fast float %8127, %8109
  %8165 = fmul fast float %8128, %8109
  %8166 = fmul fast float %8138, %8107
  %8167 = fmul fast float %8149, %8107
  %8168 = fmul fast float %8160, %8107
  %8169 = fmul fast float %8139, %8107
  %8170 = fmul fast float %8150, %8107
  %8171 = fmul fast float %8161, %8107
  %8172 = fadd fast float %8166, %8162
  %8173 = fadd fast float %8167, %8163
  %8174 = fadd fast float %8168, %8164
  %8175 = fadd fast float %8169, %8165
  %8176 = fadd fast float %8170, %8165
  %8177 = fadd fast float %8171, %8165
  %8178 = fcmp fast une float %8175, 0.000000e+00
  br i1 %8178, label %8179, label %8186, !dx.controlflow.hints !154

; <label>:8179                                    ; preds = %8159
  %8180 = fmul fast float %8175, 0x3FF7154760000000
  %8181 = call float @dx.op.unary.f32(i32 21, float %8180)  ; Exp(value)
  %8182 = fsub fast float 1.000000e+00, %8181
  %8183 = fmul fast float %8172, %8182
  %8184 = fsub fast float -0.000000e+00, %8183
  %8185 = fdiv fast float %8184, %8175
  br label %8186

; <label>:8186                                    ; preds = %8179, %8159
  %8187 = phi float [ %8181, %8179 ], [ 1.000000e+00, %8159 ]
  %8188 = phi float [ %8185, %8179 ], [ %8172, %8159 ]
  %8189 = fcmp fast une float %8176, 0.000000e+00
  br i1 %8189, label %8190, label %8197, !dx.controlflow.hints !154

; <label>:8190                                    ; preds = %8186
  %8191 = fmul fast float %8176, 0x3FF7154760000000
  %8192 = call float @dx.op.unary.f32(i32 21, float %8191)  ; Exp(value)
  %8193 = fsub fast float 1.000000e+00, %8192
  %8194 = fmul fast float %8173, %8193
  %8195 = fsub fast float -0.000000e+00, %8194
  %8196 = fdiv fast float %8195, %8176
  br label %8197

; <label>:8197                                    ; preds = %8190, %8186
  %8198 = phi float [ %8192, %8190 ], [ 1.000000e+00, %8186 ]
  %8199 = phi float [ %8196, %8190 ], [ %8173, %8186 ]
  %8200 = fcmp fast une float %8177, 0.000000e+00
  br i1 %8200, label %8201, label %8208, !dx.controlflow.hints !154

; <label>:8201                                    ; preds = %8197
  %8202 = fmul fast float %8177, 0x3FF7154760000000
  %8203 = call float @dx.op.unary.f32(i32 21, float %8202)  ; Exp(value)
  %8204 = fsub fast float 1.000000e+00, %8203
  %8205 = fmul fast float %8174, %8204
  %8206 = fsub fast float -0.000000e+00, %8205
  %8207 = fdiv fast float %8206, %8177
  br label %8208

; <label>:8208                                    ; preds = %8201, %8197
  %8209 = phi float [ %8203, %8201 ], [ 1.000000e+00, %8197 ]
  %8210 = phi float [ %8207, %8201 ], [ %8174, %8197 ]
  %8211 = fcmp fast ogt float %8107, %8109
  br i1 %8211, label %8212, label %8232

; <label>:8212                                    ; preds = %8208
  %8213 = fsub fast float 1.000000e+00, %8109
  %8214 = fmul fast float %8125, %8213
  %8215 = fmul fast float %8126, %8213
  %8216 = fmul fast float %8127, %8213
  %8217 = fmul fast float %8128, %8213
  %8218 = fcmp fast une float %8217, 0.000000e+00
  br i1 %8218, label %8219, label %8270, !dx.controlflow.hints !155

; <label>:8219                                    ; preds = %8212
  %8220 = fmul fast float %8217, 0x3FF7154760000000
  %8221 = call float @dx.op.unary.f32(i32 21, float %8220)  ; Exp(value)
  %8222 = fsub fast float 1.000000e+00, %8221
  %8223 = fmul fast float %8214, %8222
  %8224 = fsub fast float -0.000000e+00, %8223
  %8225 = fmul fast float %8215, %8222
  %8226 = fsub fast float -0.000000e+00, %8225
  %8227 = fmul fast float %8216, %8222
  %8228 = fsub fast float -0.000000e+00, %8227
  %8229 = fdiv fast float %8224, %8217
  %8230 = fdiv fast float %8226, %8217
  %8231 = fdiv fast float %8228, %8217
  br label %8270

; <label>:8232                                    ; preds = %8208
  %8233 = fsub fast float 1.000000e+00, %8107
  %8234 = fmul fast float %8138, %8233
  %8235 = fmul fast float %8149, %8233
  %8236 = fmul fast float %8160, %8233
  %8237 = fmul fast float %8139, %8233
  %8238 = fmul fast float %8150, %8233
  %8239 = fmul fast float %8161, %8233
  %8240 = fcmp fast une float %8237, 0.000000e+00
  br i1 %8240, label %8241, label %8248, !dx.controlflow.hints !154

; <label>:8241                                    ; preds = %8232
  %8242 = fmul fast float %8237, 0x3FF7154760000000
  %8243 = call float @dx.op.unary.f32(i32 21, float %8242)  ; Exp(value)
  %8244 = fsub fast float 1.000000e+00, %8243
  %8245 = fmul fast float %8234, %8244
  %8246 = fsub fast float -0.000000e+00, %8245
  %8247 = fdiv fast float %8246, %8237
  br label %8248

; <label>:8248                                    ; preds = %8241, %8232
  %8249 = phi float [ %8247, %8241 ], [ %8234, %8232 ]
  %8250 = phi float [ %8243, %8241 ], [ 1.000000e+00, %8232 ]
  %8251 = fcmp fast une float %8238, 0.000000e+00
  br i1 %8251, label %8252, label %8259, !dx.controlflow.hints !154

; <label>:8252                                    ; preds = %8248
  %8253 = fmul fast float %8238, 0x3FF7154760000000
  %8254 = call float @dx.op.unary.f32(i32 21, float %8253)  ; Exp(value)
  %8255 = fsub fast float 1.000000e+00, %8254
  %8256 = fmul fast float %8235, %8255
  %8257 = fsub fast float -0.000000e+00, %8256
  %8258 = fdiv fast float %8257, %8238
  br label %8259

; <label>:8259                                    ; preds = %8252, %8248
  %8260 = phi float [ %8258, %8252 ], [ %8235, %8248 ]
  %8261 = phi float [ %8254, %8252 ], [ 1.000000e+00, %8248 ]
  %8262 = fcmp fast une float %8239, 0.000000e+00
  br i1 %8262, label %8263, label %8270, !dx.controlflow.hints !154

; <label>:8263                                    ; preds = %8259
  %8264 = fmul fast float %8239, 0x3FF7154760000000
  %8265 = call float @dx.op.unary.f32(i32 21, float %8264)  ; Exp(value)
  %8266 = fsub fast float 1.000000e+00, %8265
  %8267 = fmul fast float %8236, %8266
  %8268 = fsub fast float -0.000000e+00, %8267
  %8269 = fdiv fast float %8268, %8239
  br label %8270

; <label>:8270                                    ; preds = %8263, %8259, %8219, %8212
  %8271 = phi float [ %8269, %8263 ], [ %8231, %8219 ], [ %8216, %8212 ], [ %8236, %8259 ]
  %8272 = phi float [ %8260, %8263 ], [ %8230, %8219 ], [ %8215, %8212 ], [ %8260, %8259 ]
  %8273 = phi float [ %8249, %8263 ], [ %8229, %8219 ], [ %8214, %8212 ], [ %8249, %8259 ]
  %8274 = phi float [ %8265, %8263 ], [ %8221, %8219 ], [ 1.000000e+00, %8212 ], [ 1.000000e+00, %8259 ]
  %8275 = phi float [ %8261, %8263 ], [ %8221, %8219 ], [ 1.000000e+00, %8212 ], [ %8261, %8259 ]
  %8276 = phi float [ %8250, %8263 ], [ %8221, %8219 ], [ 1.000000e+00, %8212 ], [ %8250, %8259 ]
  %8277 = fmul fast float %8276, %8188
  %8278 = fmul fast float %8275, %8199
  %8279 = fmul fast float %8274, %8210
  %8280 = fadd fast float %8277, %8273
  %8281 = fadd fast float %8278, %8272
  %8282 = fadd fast float %8279, %8271
  %8283 = fmul fast float %8276, %8187
  %8284 = fmul fast float %8275, %8198
  %8285 = fmul fast float %8274, %8209
  br label %8286

; <label>:8286                                    ; preds = %8270, %8081
  %8287 = phi float [ %8285, %8270 ], [ %8087, %8081 ]
  %8288 = phi float [ %8284, %8270 ], [ %8086, %8081 ]
  %8289 = phi float [ %8283, %8270 ], [ %8085, %8081 ]
  %8290 = phi float [ %8282, %8270 ], [ %8084, %8081 ]
  %8291 = phi float [ %8281, %8270 ], [ %8083, %8081 ]
  %8292 = phi float [ %8280, %8270 ], [ %8082, %8081 ]
  %8293 = fmul fast float %8292, %7238
  %8294 = fmul fast float %8291, %7238
  %8295 = fmul fast float %8290, %7238
  %8296 = fmul fast float %8289, %7529
  %8297 = call float @dx.op.dot3.f32(i32 55, float %8289, float %8288, float %8287, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8298 = call float @dx.op.dot3.f32(i32 55, float %8293, float %8294, float %8295, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8299 = select i1 %252, float %8297, float %8289
  %8300 = select i1 %252, float %8297, float %8288
  %8301 = select i1 %252, float 1.000000e+00, float %8287
  %8302 = select i1 %252, float %8298, float %8293
  %8303 = select i1 %252, float 0.000000e+00, float %8294
  %8304 = select i1 %252, float 0.000000e+00, float %8295
  %8305 = fmul fast float %8299, %7523
  %8306 = fmul fast float %8300, %7524
  %8307 = fmul fast float %8301, %7525
  %8308 = fadd fast float %8305, %8302
  %8309 = fadd fast float %8306, %8303
  %8310 = fadd fast float %8304, %8307
  %8311 = fmul fast float %8299, %7526
  %8312 = fmul fast float %8300, %7527
  %8313 = fmul fast float %8301, %7528
  %8314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8315 = extractvalue %dx.types.CBufRet.i32 %8314, 0
  %8316 = icmp eq i32 %8315, 0
  br i1 %8316, label %8684, label %8317, !dx.controlflow.hints !156

; <label>:8317                                    ; preds = %8286
  %8318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8319 = extractvalue %dx.types.CBufRet.f32 %8318, 2
  %8320 = extractvalue %dx.types.CBufRet.f32 %8318, 3
  %8321 = fmul fast float %8319, %99
  %8322 = fmul fast float %8320, %100
  %8323 = fmul fast float %8321, 2.000000e+00
  %8324 = fmul fast float %8322, 2.000000e+00
  %8325 = fsub fast float 1.000000e+00, %8323
  %8326 = fsub fast float 1.000000e+00, %8324
  %8327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8328 = extractvalue %dx.types.CBufRet.f32 %8327, 0
  %8329 = extractvalue %dx.types.CBufRet.f32 %8327, 1
  %8330 = extractvalue %dx.types.CBufRet.f32 %8327, 2
  %8331 = fmul fast float %8325, %8328
  %8332 = fmul fast float %8325, %8329
  %8333 = fmul fast float %8325, %8330
  %8334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8335 = extractvalue %dx.types.CBufRet.f32 %8334, 0
  %8336 = extractvalue %dx.types.CBufRet.f32 %8334, 1
  %8337 = extractvalue %dx.types.CBufRet.f32 %8334, 2
  %8338 = fmul fast float %8326, %8335
  %8339 = fmul fast float %8326, %8336
  %8340 = fmul fast float %8326, %8337
  %8341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8341, 0
  %8343 = extractvalue %dx.types.CBufRet.f32 %8341, 1
  %8344 = extractvalue %dx.types.CBufRet.f32 %8341, 2
  %8345 = fadd fast float %8338, %8342
  %8346 = fadd fast float %8345, %8331
  %8347 = fadd fast float %8339, %8343
  %8348 = fadd fast float %8347, %8332
  %8349 = fadd fast float %8340, %8344
  %8350 = fadd fast float %8349, %8333
  %8351 = fmul fast float %8346, %7522
  %8352 = fmul fast float %8348, %7522
  %8353 = fmul fast float %8350, %7522
  %8354 = fmul fast float %8351, %8351
  %8355 = fmul fast float %8352, %8352
  %8356 = fadd fast float %8354, %8355
  %8357 = fmul fast float %8353, %8353
  %8358 = fadd fast float %8356, %8357
  %8359 = call float @dx.op.unary.f32(i32 24, float %8358)  ; Sqrt(value)
  %8360 = extractvalue %dx.types.CBufRet.f32 %7249, 0
  %8361 = fsub fast float %8359, %8360
  %8362 = extractvalue %dx.types.CBufRet.f32 %7249, 2
  %8363 = fmul fast float %8361, %8362
  %8364 = call float @dx.op.unary.f32(i32 7, float %8363)  ; Saturate(value)
  %8365 = fadd fast float %8364, -5.000000e-01
  %8366 = fmul fast float %8365, 2.000000e+00
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 2
  %8369 = call float @dx.op.binary.f32(i32 36, float %8368, float %8366)  ; FMin(a,b)
  %8370 = fsub fast float -0.000000e+00, %8368
  %8371 = fcmp fast ogt float %8369, %8370
  br i1 %8371, label %8372, label %8684, !dx.controlflow.hints !157

; <label>:8372                                    ; preds = %8317
  %8373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8374 = extractvalue %dx.types.CBufRet.f32 %8373, 3
  %8375 = fcmp fast ogt float %8374, 0.000000e+00
  br i1 %8375, label %8376, label %8451, !dx.controlflow.hints !158

; <label>:8376                                    ; preds = %8372
  %8377 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %8378 = extractvalue %dx.types.Dimensions %8377, 0
  %8379 = sitofp i32 %8378 to float
  %8380 = extractvalue %dx.types.Dimensions %8377, 1
  %8381 = sitofp i32 %8380 to float
  %8382 = fmul fast float %8321, %8379
  %8383 = fmul fast float %8322, %8381
  %8384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8385 = extractvalue %dx.types.CBufRet.f32 %8384, 1
  %8386 = fsub fast float -0.000000e+00, %8385
  %8387 = fptoui float %8386 to i32
  %8388 = fptoui float %8382 to i32
  %8389 = fptoui float %8383 to i32
  %8390 = and i32 %8387, 31
  %8391 = lshr i32 %8388, %8390
  %8392 = lshr i32 %8389, %8390
  %8393 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 %8387, i32 %8391, i32 %8392, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8394 = extractvalue %dx.types.ResRet.f32 %8393, 0
  %8395 = fcmp fast olt float %8394, -1.000000e+00
  %8396 = fcmp fast ogt float %8394, -1.000000e+00
  %8397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8398 = extractvalue %dx.types.CBufRet.f32 %8397, 1
  %8399 = select i1 %8396, float %8398, float 1.000000e+00
  %8400 = fadd fast float %8394, 1.000000e+00
  %8401 = fmul fast float %8399, %8400
  %8402 = call float @dx.op.unary.f32(i32 6, float %8401)  ; FAbs(value)
  %8403 = extractvalue %dx.types.CBufRet.f32 %8397, 3
  %8404 = fcmp fast oge float %8402, %8403
  %8405 = select i1 %8404, float 0x4197782600000000, float %8402
  %8406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8407 = extractvalue %dx.types.CBufRet.f32 %8406, 0
  %8408 = extractvalue %dx.types.CBufRet.f32 %8406, 1
  %8409 = extractvalue %dx.types.CBufRet.f32 %8406, 2
  %8410 = select i1 %8395, float %8407, float %8328
  %8411 = select i1 %8395, float %8408, float %8329
  %8412 = select i1 %8395, float %8409, float %8330
  %8413 = fmul fast float %8410, %8325
  %8414 = fmul fast float %8411, %8325
  %8415 = fmul fast float %8412, %8325
  %8416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8417 = extractvalue %dx.types.CBufRet.f32 %8416, 0
  %8418 = extractvalue %dx.types.CBufRet.f32 %8416, 1
  %8419 = extractvalue %dx.types.CBufRet.f32 %8416, 2
  %8420 = select i1 %8395, float %8417, float %8335
  %8421 = select i1 %8395, float %8418, float %8336
  %8422 = select i1 %8395, float %8419, float %8337
  %8423 = fmul fast float %8420, %8326
  %8424 = fmul fast float %8421, %8326
  %8425 = fmul fast float %8422, %8326
  %8426 = fadd fast float %8423, %8413
  %8427 = fadd fast float %8424, %8414
  %8428 = fadd fast float %8425, %8415
  %8429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8430 = extractvalue %dx.types.CBufRet.f32 %8429, 0
  %8431 = extractvalue %dx.types.CBufRet.f32 %8429, 1
  %8432 = extractvalue %dx.types.CBufRet.f32 %8429, 2
  %8433 = select i1 %8395, float %8430, float %8342
  %8434 = select i1 %8395, float %8431, float %8343
  %8435 = select i1 %8395, float %8432, float %8344
  %8436 = fadd fast float %8426, %8433
  %8437 = fadd fast float %8427, %8434
  %8438 = fadd fast float %8428, %8435
  %8439 = fmul fast float %8436, %8405
  %8440 = fmul fast float %8437, %8405
  %8441 = fmul fast float %8438, %8405
  %8442 = fmul fast float %8439, %8439
  %8443 = fmul fast float %8440, %8440
  %8444 = fadd fast float %8442, %8443
  %8445 = fmul fast float %8441, %8441
  %8446 = fadd fast float %8444, %8445
  %8447 = call float @dx.op.unary.f32(i32 24, float %8446)  ; Sqrt(value)
  %8448 = fsub fast float %8447, %8360
  %8449 = fmul fast float %8448, %8362
  %8450 = call float @dx.op.unary.f32(i32 7, float %8449)  ; Saturate(value)
  br label %8451

; <label>:8451                                    ; preds = %8376, %8372
  %8452 = phi float [ %8450, %8376 ], [ 1.000000e+00, %8372 ]
  %8453 = fmul fast float %8369, 5.000000e-01
  %8454 = fadd fast float %8453, 5.000000e-01
  %8455 = call float @dx.op.unary.f32(i32 22, float %8454)  ; Frc(value)
  %8456 = call float @dx.op.unary.f32(i32 27, float %8455)  ; Round_ni(value)
  %8457 = call float @dx.op.unary.f32(i32 22, float %8455)  ; Frc(value)
  %8458 = fmul fast float %8457, 2.000000e+00
  %8459 = fadd fast float %8458, -1.000000e+00
  %8460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %37, float %8321, float %8322, float %8456, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8461 = extractvalue %dx.types.ResRet.f32 %8460, 0
  %8462 = extractvalue %dx.types.ResRet.f32 %8460, 1
  %8463 = extractvalue %dx.types.ResRet.f32 %8460, 2
  %8464 = extractvalue %dx.types.ResRet.f32 %8460, 3
  %8465 = fadd fast float %8461, -5.000000e-01
  %8466 = fadd fast float %8463, -5.000000e-01
  %8467 = fmul fast float %8465, 0xBFD5555560000000
  %8468 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8466, float %8467)  ; FMad(a,b,c)
  %8469 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8462, float 0.000000e+00)  ; FMad(a,b,c)
  %8470 = fadd fast float %8469, %8464
  %8471 = fmul fast float %8465, -7.500000e-01
  %8472 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8466, float %8471)  ; FMad(a,b,c)
  %8473 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8462, float 0.000000e+00)  ; FMad(a,b,c)
  %8474 = fadd fast float %8473, %8464
  %8475 = call float @dx.op.binary.f32(i32 35, float %8468, float -1.000000e+00)  ; FMax(a,b)
  %8476 = call float @dx.op.binary.f32(i32 35, float %8470, float -1.000000e+00)  ; FMax(a,b)
  %8477 = call float @dx.op.binary.f32(i32 35, float %8472, float -1.000000e+00)  ; FMax(a,b)
  %8478 = call float @dx.op.binary.f32(i32 35, float %8474, float -1.000000e+00)  ; FMax(a,b)
  %8479 = call float @dx.op.binary.f32(i32 36, float %8475, float 1.000000e+00)  ; FMin(a,b)
  %8480 = call float @dx.op.binary.f32(i32 36, float %8476, float 1.000000e+00)  ; FMin(a,b)
  %8481 = call float @dx.op.binary.f32(i32 36, float %8477, float 1.000000e+00)  ; FMin(a,b)
  %8482 = call float @dx.op.binary.f32(i32 36, float %8478, float 1.000000e+00)  ; FMin(a,b)
  %8483 = fcmp fast olt float %8479, 0x3FEFFF8020000000
  br i1 %8483, label %8484, label %8599, !dx.controlflow.hints !159

; <label>:8484                                    ; preds = %8451
  %8485 = extractvalue %dx.types.CBufRet.f32 %8367, 3
  %8486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8487 = extractvalue %dx.types.CBufRet.f32 %8486, 0
  %8488 = extractvalue %dx.types.CBufRet.f32 %8486, 1
  %8489 = extractvalue %dx.types.CBufRet.f32 %8486, 2
  %8490 = extractvalue %dx.types.CBufRet.f32 %8486, 3
  %8491 = fsub fast float %8487, %8479
  %8492 = fsub fast float %8488, %8480
  %8493 = fsub fast float %8489, %8481
  %8494 = fsub fast float %8490, %8482
  %8495 = fmul fast float %8491, %8485
  %8496 = fmul fast float %8492, %8485
  %8497 = fmul fast float %8493, %8485
  %8498 = fmul fast float %8494, %8485
  %8499 = fadd fast float %8495, %8479
  %8500 = fadd fast float %8496, %8480
  %8501 = fsub fast float -0.000000e+00, %8500
  %8502 = fadd fast float %8497, %8481
  %8503 = fadd fast float %8498, %8482
  %8504 = fmul fast float %8499, %8499
  %8505 = fsub fast float %8500, %8504
  %8506 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8505)  ; FMax(a,b)
  %8507 = fdiv fast float 1.000000e+00, %8506
  %8508 = fmul fast float %8500, %8499
  %8509 = fsub fast float %8502, %8508
  %8510 = fsub fast float %8459, %8499
  %8511 = fmul fast float %8459, %8459
  %8512 = fsub fast float %8511, %8500
  %8513 = fmul fast float %8510, %8507
  %8514 = fmul fast float %8513, %8509
  %8515 = fsub fast float %8512, %8514
  %8516 = fmul fast float %8500, %8500
  %8517 = fsub fast float %8503, %8516
  %8518 = fmul fast float %8509, %8509
  %8519 = fmul fast float %8518, %8507
  %8520 = fsub fast float %8517, %8519
  %8521 = fdiv fast float %8515, %8520
  %8522 = fmul fast float %8509, %8521
  %8523 = fsub fast float %8510, %8522
  %8524 = fmul fast float %8523, %8507
  %8525 = fmul fast float %8524, %8499
  %8526 = fsub fast float 1.000000e+00, %8525
  %8527 = fmul fast float %8500, %8521
  %8528 = fsub fast float %8526, %8527
  %8529 = fmul fast float %8524, %8524
  %8530 = fmul fast float %8521, 4.000000e+00
  %8531 = fmul fast float %8530, %8528
  %8532 = fsub fast float %8529, %8531
  %8533 = call float @dx.op.unary.f32(i32 24, float %8532)  ; Sqrt(value)
  %8534 = fcmp fast oge float %8524, 0.000000e+00
  %8535 = fsub fast float -0.000000e+00, %8533
  %8536 = select i1 %8534, float %8535, float %8533
  %8537 = fsub fast float %8536, %8524
  %8538 = fdiv fast float %8537, %8521
  %8539 = fdiv fast float %8528, %8537
  %8540 = fmul fast float %8538, 5.000000e-01
  %8541 = fmul fast float %8539, 2.000000e+00
  %8542 = select i1 %8534, float %8540, float %8541
  %8543 = select i1 %8534, float %8541, float %8540
  %8544 = call float @dx.op.binary.f32(i32 35, float %8542, float %8543)  ; FMax(a,b)
  %8545 = call float @dx.op.binary.f32(i32 36, float %8542, float %8543)  ; FMin(a,b)
  %8546 = fcmp fast ogt float %8459, %8545
  br i1 %8546, label %8547, label %8557

; <label>:8547                                    ; preds = %8484
  %8548 = fsub fast float %8459, %8545
  %8549 = fsub fast float %8544, %8545
  %8550 = fmul fast float %8548, %8549
  %8551 = fmul fast float %8544, %8459
  %8552 = fadd fast float %8544, %8459
  %8553 = fmul fast float %8552, %8499
  %8554 = fadd fast float %8551, %8500
  %8555 = fsub fast float %8554, %8553
  %8556 = fdiv fast float %8555, %8550
  br label %8557

; <label>:8557                                    ; preds = %8547, %8484
  %8558 = phi float [ %8556, %8547 ], [ 0.000000e+00, %8484 ]
  %8559 = fcmp fast ogt float %8459, %8544
  %8560 = fsub fast float %8459, %8544
  br i1 %8559, label %8561, label %8571

; <label>:8561                                    ; preds = %8557
  %8562 = fsub fast float %8544, %8545
  %8563 = fmul fast float %8562, %8560
  %8564 = fmul fast float %8545, %8459
  %8565 = fadd fast float %8545, %8459
  %8566 = fmul fast float %8565, %8499
  %8567 = fsub fast float %8501, %8564
  %8568 = fadd fast float %8567, %8566
  %8569 = fdiv fast float %8568, %8563
  %8570 = fadd fast float %8569, %8558
  br label %8571

; <label>:8571                                    ; preds = %8561, %8557
  %8572 = phi float [ %8570, %8561 ], [ %8558, %8557 ]
  %8573 = fsub fast float %8459, %8545
  %8574 = fmul fast float %8573, %8560
  %8575 = fmul fast float %8545, %8544
  %8576 = fadd fast float %8545, %8544
  %8577 = fmul fast float %8576, %8499
  %8578 = fadd fast float %8575, %8500
  %8579 = fsub fast float %8578, %8577
  %8580 = fdiv fast float %8579, %8574
  %8581 = call float @dx.op.unary.f32(i32 7, float %8572)  ; Saturate(value)
  %8582 = fcmp fast oeq float %7250, 0.000000e+00
  %8583 = extractvalue %dx.types.CBufRet.f32 %8367, 0
  %8584 = fcmp fast oeq float %8583, 0.000000e+00
  %8585 = or i1 %8582, %8584
  %8586 = fmul fast float %8583, 2.000000e+00
  %8587 = fadd fast float %8368, %8369
  %8588 = fdiv fast float %8587, %8586
  %8589 = call float @dx.op.unary.f32(i32 7, float %8588)  ; Saturate(value)
  %8590 = fmul fast float %8589, 2.000000e+00
  %8591 = fsub fast float 3.000000e+00, %8590
  %8592 = fmul fast float %8589, %8589
  %8593 = fmul fast float %8592, %8591
  %8594 = select i1 %8585, float 1.000000e+00, float %8593
  %8595 = fmul fast float %8580, %7250
  %8596 = fadd fast float %8581, %8595
  %8597 = call float @dx.op.unary.f32(i32 7, float %8596)  ; Saturate(value)
  %8598 = fmul fast float %8594, %8597
  br label %8599

; <label>:8599                                    ; preds = %8571, %8451
  %8600 = phi float [ %8598, %8571 ], [ 0.000000e+00, %8451 ]
  %8601 = fsub fast float 1.000000e+00, %8600
  %8602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %37, float %8321, float %8322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8603 = extractvalue %dx.types.ResRet.f32 %8602, 0
  %8604 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8605 = extractvalue %dx.types.CBufRet.i32 %8604, 2
  %8606 = icmp eq i32 %8605, 0
  br i1 %8606, label %8612, label %8607

; <label>:8607                                    ; preds = %8599
  %8608 = call float @dx.op.unary.f32(i32 7, float %8600)  ; Saturate(value)
  %8609 = fadd fast float %8603, -1.000000e+00
  %8610 = fmul fast float %8608, %8609
  %8611 = fadd fast float %8610, 1.000000e+00
  br label %8612

; <label>:8612                                    ; preds = %8607, %8599
  %8613 = phi float [ %8611, %8607 ], [ %8601, %8599 ]
  br i1 %8375, label %8614, label %8632

; <label>:8614                                    ; preds = %8612
  %8615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8616 = extractvalue %dx.types.CBufRet.f32 %8615, 1
  %8617 = fsub fast float %8452, %8616
  %8618 = call float @dx.op.unary.f32(i32 7, float %8617)  ; Saturate(value)
  %8619 = fsub fast float %8452, %8374
  %8620 = call float @dx.op.unary.f32(i32 7, float %8619)  ; Saturate(value)
  %8621 = fsub fast float %8618, %8620
  %8622 = fsub fast float %8454, %8620
  %8623 = fdiv fast float %8622, %8621
  %8624 = call float @dx.op.unary.f32(i32 7, float %8623)  ; Saturate(value)
  %8625 = fmul fast float %8624, 2.000000e+00
  %8626 = fsub fast float 3.000000e+00, %8625
  %8627 = fsub fast float %8603, %8613
  %8628 = fmul fast float %8624, %8624
  %8629 = fmul fast float %8628, %8627
  %8630 = fmul fast float %8629, %8626
  %8631 = fadd fast float %8630, %8613
  br label %8632

; <label>:8632                                    ; preds = %8614, %8612
  %8633 = phi float [ %8631, %8614 ], [ %8613, %8612 ]
  %8634 = call float @dx.op.binary.f32(i32 35, float %8603, float %8633)  ; FMax(a,b)
  %8635 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8636 = extractvalue %dx.types.CBufRet.i32 %8635, 2
  %8637 = and i32 %8636, 1
  %8638 = icmp eq i32 %8637, 0
  %8639 = fcmp fast une float %8634, 1.000000e+00
  %8640 = and i1 %8639, %8638
  br i1 %8640, label %8641, label %8660

; <label>:8641                                    ; preds = %8632
  %8642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %37, float %8321, float %8322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8643 = extractvalue %dx.types.ResRet.f32 %8642, 0
  %8644 = extractvalue %dx.types.ResRet.f32 %8642, 1
  %8645 = extractvalue %dx.types.ResRet.f32 %8642, 2
  %8646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8647 = extractvalue %dx.types.CBufRet.f32 %8646, 1
  %8648 = fmul fast float %8647, %8643
  %8649 = fmul fast float %8647, %8644
  %8650 = fmul fast float %8647, %8645
  %8651 = fcmp fast ogt float %8603, 0x3FEFFF2E40000000
  %8652 = fsub fast float 1.000000e+00, %8634
  %8653 = fsub fast float 1.000000e+00, %8603
  %8654 = fdiv fast float %8652, %8653
  %8655 = call float @dx.op.unary.f32(i32 7, float %8654)  ; Saturate(value)
  %8656 = select i1 %8651, float 0.000000e+00, float %8655
  %8657 = fmul fast float %8648, %8656
  %8658 = fmul fast float %8649, %8656
  %8659 = fmul fast float %8650, %8656
  br label %8660

; <label>:8660                                    ; preds = %8641, %8632
  %8661 = phi float [ 0.000000e+00, %8632 ], [ %8657, %8641 ]
  %8662 = phi float [ 0.000000e+00, %8632 ], [ %8658, %8641 ]
  %8663 = phi float [ 0.000000e+00, %8632 ], [ %8659, %8641 ]
  %8664 = fmul fast float %8661, %7238
  %8665 = fmul fast float %8662, %7238
  %8666 = fmul fast float %8663, %7238
  %8667 = fmul fast float %8634, %8296
  %8668 = call float @dx.op.dot3.f32(i32 55, float %8634, float %8634, float %8634, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8669 = call float @dx.op.dot3.f32(i32 55, float %8664, float %8665, float %8666, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8670 = select i1 %252, float %8668, float %8634
  %8671 = select i1 %252, float 1.000000e+00, float %8634
  %8672 = select i1 %252, float %8669, float %8664
  %8673 = select i1 %252, float 0.000000e+00, float %8665
  %8674 = select i1 %252, float 0.000000e+00, float %8666
  %8675 = fmul fast float %8670, %8308
  %8676 = fmul fast float %8670, %8309
  %8677 = fmul fast float %8671, %8310
  %8678 = fadd fast float %8675, %8672
  %8679 = fadd fast float %8676, %8673
  %8680 = fadd fast float %8674, %8677
  %8681 = fmul fast float %8670, %8311
  %8682 = fmul fast float %8670, %8312
  %8683 = fmul fast float %8671, %8313
  br label %8684

; <label>:8684                                    ; preds = %8660, %8317, %8286, %7518
  %8685 = phi float [ %7523, %7518 ], [ %8308, %8286 ], [ %8678, %8660 ], [ %8308, %8317 ]
  %8686 = phi float [ %7524, %7518 ], [ %8309, %8286 ], [ %8679, %8660 ], [ %8309, %8317 ]
  %8687 = phi float [ %7525, %7518 ], [ %8310, %8286 ], [ %8680, %8660 ], [ %8310, %8317 ]
  %8688 = phi float [ %7526, %7518 ], [ %8311, %8286 ], [ %8681, %8660 ], [ %8311, %8317 ]
  %8689 = phi float [ %7527, %7518 ], [ %8312, %8286 ], [ %8682, %8660 ], [ %8312, %8317 ]
  %8690 = phi float [ %7528, %7518 ], [ %8313, %8286 ], [ %8683, %8660 ], [ %8313, %8317 ]
  %8691 = phi float [ %7529, %7518 ], [ %8296, %8286 ], [ %8667, %8660 ], [ %8296, %8317 ]
  %8692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8693 = extractvalue %dx.types.CBufRet.f32 %8692, 2
  %8694 = extractvalue %dx.types.CBufRet.f32 %8692, 3
  %8695 = fmul fast float %8693, %99
  %8696 = fmul fast float %8694, %100
  %8697 = call float @dx.op.unary.f32(i32 7, float %8695)  ; Saturate(value)
  %8698 = call float @dx.op.unary.f32(i32 7, float %8696)  ; Saturate(value)
  %8699 = select i1 %7260, i32 2, i32 0
  %8700 = or i32 %8699, 1
  %8701 = uitofp i32 %8700 to float
  %8702 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %8697, float %8698, float %8701, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8703 = extractvalue %dx.types.ResRet.f32 %8702, 0
  %8704 = extractvalue %dx.types.ResRet.f32 %8702, 1
  %8705 = extractvalue %dx.types.ResRet.f32 %8702, 2
  %8706 = extractvalue %dx.types.ResRet.f32 %8702, 3
  %8707 = add nuw nsw i32 %8699, 2
  %8708 = uitofp i32 %8707 to float
  %8709 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %8697, float %8698, float %8708, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8710 = extractvalue %dx.types.ResRet.f32 %8709, 0
  %8711 = extractvalue %dx.types.ResRet.f32 %8709, 1
  %8712 = extractvalue %dx.types.ResRet.f32 %8709, 2
  %8713 = extractvalue %dx.types.ResRet.f32 %8709, 3
  %8714 = call float @dx.op.binary.f32(i32 35, float %8704, float %8705)  ; FMax(a,b)
  %8715 = call float @dx.op.binary.f32(i32 35, float %8703, float %8714)  ; FMax(a,b)
  %8716 = call float @dx.op.binary.f32(i32 35, float %8715, float %8706)  ; FMax(a,b)
  %8717 = call float @dx.op.binary.f32(i32 36, float %8711, float %8712)  ; FMin(a,b)
  %8718 = call float @dx.op.binary.f32(i32 36, float %8710, float %8717)  ; FMin(a,b)
  %8719 = call float @dx.op.binary.f32(i32 36, float %8718, float %8713)  ; FMin(a,b)
  %8720 = fmul fast float %8716, 2.550000e+02
  %8721 = fadd fast float %8720, 0x3F70101020000000
  %8722 = fptoui float %8721 to i32
  %8723 = fmul fast float %8719, 2.550000e+02
  %8724 = fadd fast float %8723, 0x3F70101020000000
  %8725 = fptoui float %8724 to i32
  %8726 = icmp ult i32 %8722, %8725
  br i1 %8726, label %8727, label %8896

; <label>:8727                                    ; preds = %8684
  %8728 = fcmp fast ogt float %89, 9.843750e-01
  %8729 = fadd fast float %7522, -4.000000e+00
  %8730 = select i1 %8728, float -4.000000e+00, float %8729
  %8731 = call float @dx.op.binary.f32(i32 35, float %8730, float 0.000000e+00)  ; FMax(a,b)
  %8732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8733 = extractvalue %dx.types.CBufRet.f32 %8732, 0
  %8734 = fadd fast float %8733, %8731
  %8735 = extractvalue %dx.types.CBufRet.f32 %8732, 2
  %8736 = fmul fast float %8734, %8735
  %8737 = call float @dx.op.unary.f32(i32 23, float %8736)  ; Log(value)
  %8738 = extractvalue %dx.types.CBufRet.f32 %8732, 3
  %8739 = fmul fast float %8738, %8737
  %8740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8741 = extractvalue %dx.types.CBufRet.f32 %8740, 2
  %8742 = fmul fast float %8739, %8741
  %8743 = call float @dx.op.unary.f32(i32 7, float %8742)  ; Saturate(value)
  %8744 = uitofp i32 %8722 to float
  %8745 = uitofp i32 %8725 to float
  %8746 = fadd fast float %8744, 5.000000e-01
  %8747 = fadd fast float %8745, 5.000000e-01
  %8748 = fmul fast float %8741, %8746
  %8749 = fmul fast float %8741, %8747
  %8750 = fadd fast float %8748, 0x3F0FFB4800000000
  %8751 = fadd fast float %8749, 0xBF0FFB4800000000
  %8752 = call float @dx.op.binary.f32(i32 35, float %8743, float %8750)  ; FMax(a,b)
  %8753 = call float @dx.op.binary.f32(i32 36, float %8752, float %8751)  ; FMin(a,b)
  %8754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8755 = extractvalue %dx.types.CBufRet.f32 %8754, 1
  %8756 = extractvalue %dx.types.CBufRet.f32 %8754, 2
  %8757 = extractvalue %dx.types.CBufRet.f32 %8754, 0
  %8758 = select i1 %7260, float %8757, float 0.000000e+00
  %8759 = fmul fast float %8755, %8753
  %8760 = fadd fast float %8758, %8759
  %8761 = fadd fast float %8758, %8756
  %8762 = fsub fast float %8755, %8756
  %8763 = fadd fast float %8762, %8758
  %8764 = call float @dx.op.binary.f32(i32 35, float %8760, float %8761)  ; FMax(a,b)
  %8765 = call float @dx.op.binary.f32(i32 36, float %8764, float %8763)  ; FMin(a,b)
  %8766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %8697, float %8698, float %8765, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8767 = extractvalue %dx.types.ResRet.f32 %8766, 0
  %8768 = extractvalue %dx.types.ResRet.f32 %8766, 1
  %8769 = extractvalue %dx.types.ResRet.f32 %8766, 2
  %8770 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8771 = extractvalue %dx.types.CBufRet.i32 %8770, 0
  %8772 = extractvalue %dx.types.CBufRet.i32 %8770, 1
  %8773 = uitofp i32 %8771 to float
  %8774 = uitofp i32 %8772 to float
  %8775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8776 = extractvalue %dx.types.CBufRet.f32 %8775, 0
  %8777 = extractvalue %dx.types.CBufRet.f32 %8775, 1
  %8778 = fmul fast float %8773, %8697
  %8779 = fmul fast float %8774, %8698
  %8780 = fadd fast float %8778, -5.000000e-01
  %8781 = fadd fast float %8779, -5.000000e-01
  %8782 = call float @dx.op.unary.f32(i32 22, float %8780)  ; Frc(value)
  %8783 = call float @dx.op.unary.f32(i32 22, float %8781)  ; Frc(value)
  %8784 = fmul fast float %8782, %8782
  %8785 = fmul fast float %8784, %8782
  %8786 = fsub fast float 3.000000e+00, %8782
  %8787 = fmul fast float %8784, %8786
  %8788 = fmul fast float %8782, 3.000000e+00
  %8789 = fmul fast float %8785, 3.000000e+00
  %8790 = fmul fast float %8784, 6.000000e+00
  %8791 = fsub fast float %8789, %8790
  %8792 = fadd fast float %8791, 4.000000e+00
  %8793 = fmul fast float %8792, 0x3FC5555560000000
  %8794 = fmul fast float %8785, -3.000000e+00
  %8795 = fadd fast float %8784, %8782
  %8796 = fmul fast float %8795, 3.000000e+00
  %8797 = fadd fast float %8794, 1.000000e+00
  %8798 = fadd fast float %8797, %8796
  %8799 = fmul fast float %8785, 0x3FC5555560000000
  %8800 = fmul fast float %8783, %8783
  %8801 = fmul fast float %8800, %8783
  %8802 = fsub fast float 3.000000e+00, %8783
  %8803 = fmul fast float %8800, %8802
  %8804 = fmul fast float %8783, 3.000000e+00
  %8805 = fmul fast float %8801, 3.000000e+00
  %8806 = fmul fast float %8800, 6.000000e+00
  %8807 = fsub fast float %8805, %8806
  %8808 = fadd fast float %8807, 4.000000e+00
  %8809 = fmul fast float %8808, 0x3FC5555560000000
  %8810 = fmul fast float %8801, -3.000000e+00
  %8811 = fadd fast float %8800, %8783
  %8812 = fmul fast float %8811, 3.000000e+00
  %8813 = fadd fast float %8810, 1.000000e+00
  %8814 = fadd fast float %8813, %8812
  %8815 = fmul fast float %8801, 0x3FC5555560000000
  %8816 = fadd fast float %8782, 1.000000e+00
  %8817 = fsub fast float 1.000000e+00, %8788
  %8818 = fadd fast float %8817, %8787
  %8819 = fadd fast float %8818, %8792
  %8820 = fmul fast float %8819, 0x3FC5555560000000
  %8821 = fdiv fast float %8793, %8820
  %8822 = fsub fast float %8816, %8821
  %8823 = fsub fast float 1.000000e+00, %8782
  %8824 = fadd fast float %8798, %8785
  %8825 = fmul fast float %8824, 0x3FC5555560000000
  %8826 = fdiv fast float %8799, %8825
  %8827 = fadd fast float %8823, %8826
  %8828 = fadd fast float %8783, 1.000000e+00
  %8829 = fsub fast float 1.000000e+00, %8804
  %8830 = fadd fast float %8829, %8803
  %8831 = fadd fast float %8830, %8808
  %8832 = fmul fast float %8831, 0x3FC5555560000000
  %8833 = fdiv fast float %8809, %8832
  %8834 = fsub fast float %8828, %8833
  %8835 = fsub fast float 1.000000e+00, %8783
  %8836 = fadd fast float %8814, %8801
  %8837 = fmul fast float %8836, 0x3FC5555560000000
  %8838 = fdiv fast float %8815, %8837
  %8839 = fadd fast float %8838, %8835
  %8840 = fmul fast float %8822, %8776
  %8841 = fsub fast float %8697, %8840
  %8842 = fmul fast float %8827, %8776
  %8843 = fadd fast float %8842, %8697
  %8844 = fmul fast float %8839, %8777
  %8845 = fadd fast float %8844, %8698
  %8846 = fmul fast float %8834, %8777
  %8847 = fsub fast float %8698, %8846
  %8848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8841, float %8847, float %8765, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8849 = extractvalue %dx.types.ResRet.f32 %8848, 0
  %8850 = extractvalue %dx.types.ResRet.f32 %8848, 1
  %8851 = extractvalue %dx.types.ResRet.f32 %8848, 2
  %8852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8843, float %8847, float %8765, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8853 = extractvalue %dx.types.ResRet.f32 %8852, 0
  %8854 = extractvalue %dx.types.ResRet.f32 %8852, 1
  %8855 = extractvalue %dx.types.ResRet.f32 %8852, 2
  %8856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8841, float %8845, float %8765, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8857 = extractvalue %dx.types.ResRet.f32 %8856, 0
  %8858 = extractvalue %dx.types.ResRet.f32 %8856, 1
  %8859 = extractvalue %dx.types.ResRet.f32 %8856, 2
  %8860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8843, float %8845, float %8765, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8861 = extractvalue %dx.types.ResRet.f32 %8860, 0
  %8862 = extractvalue %dx.types.ResRet.f32 %8860, 1
  %8863 = extractvalue %dx.types.ResRet.f32 %8860, 2
  %8864 = fsub fast float %8857, %8849
  %8865 = fsub fast float %8858, %8850
  %8866 = fsub fast float %8859, %8851
  %8867 = fmul fast float %8864, %8837
  %8868 = fmul fast float %8865, %8837
  %8869 = fmul fast float %8866, %8837
  %8870 = fadd fast float %8867, %8849
  %8871 = fadd fast float %8868, %8850
  %8872 = fadd fast float %8869, %8851
  %8873 = fsub fast float %8861, %8853
  %8874 = fsub fast float %8862, %8854
  %8875 = fsub fast float %8863, %8855
  %8876 = fmul fast float %8873, %8837
  %8877 = fmul fast float %8874, %8837
  %8878 = fmul fast float %8875, %8837
  %8879 = fsub fast float %8853, %8870
  %8880 = fadd fast float %8879, %8876
  %8881 = fsub fast float %8854, %8871
  %8882 = fadd fast float %8881, %8877
  %8883 = fsub fast float %8855, %8872
  %8884 = fadd fast float %8883, %8878
  %8885 = fmul fast float %8880, %8825
  %8886 = fmul fast float %8882, %8825
  %8887 = fmul fast float %8884, %8825
  %8888 = fadd fast float %8885, %8870
  %8889 = fadd fast float %8886, %8871
  %8890 = fadd fast float %8887, %8872
  %8891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8892 = extractvalue %dx.types.CBufRet.f32 %8891, 1
  %8893 = fmul fast float %8888, %8892
  %8894 = fmul fast float %8889, %8892
  %8895 = fmul fast float %8890, %8892
  br label %8896

; <label>:8896                                    ; preds = %8727, %8684
  %8897 = phi float [ %8767, %8727 ], [ 1.000000e+00, %8684 ]
  %8898 = phi float [ %8768, %8727 ], [ 1.000000e+00, %8684 ]
  %8899 = phi float [ %8769, %8727 ], [ 1.000000e+00, %8684 ]
  %8900 = phi float [ %8893, %8727 ], [ 0.000000e+00, %8684 ]
  %8901 = phi float [ %8894, %8727 ], [ 0.000000e+00, %8684 ]
  %8902 = phi float [ %8895, %8727 ], [ 0.000000e+00, %8684 ]
  %8903 = fmul fast float %8900, %7238
  %8904 = fmul fast float %8901, %7238
  %8905 = fmul fast float %8902, %7238
  %8906 = fmul fast float %8897, %8691
  %8907 = call float @dx.op.dot3.f32(i32 55, float %8897, float %8898, float %8899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8908 = call float @dx.op.dot3.f32(i32 55, float %8903, float %8904, float %8905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8909 = select i1 %252, float %8907, float %8897
  %8910 = select i1 %252, float %8907, float %8898
  %8911 = select i1 %252, float 1.000000e+00, float %8899
  %8912 = select i1 %252, float %8908, float %8903
  %8913 = select i1 %252, float 0.000000e+00, float %8904
  %8914 = select i1 %252, float 0.000000e+00, float %8905
  %8915 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8916 = extractvalue %dx.types.CBufRet.i32 %8915, 3
  %8917 = and i32 %8916, 3
  %8918 = icmp ne i32 %8917, 0
  %8919 = and i32 %8916, 4
  %8920 = icmp ne i32 %8919, 0
  %8921 = and i1 %8918, %8920
  %8922 = and i1 %252, %8921
  br i1 %8922, label %8923, label %8929

; <label>:8923                                    ; preds = %8896
  %8924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8925 = extractvalue %dx.types.CBufRet.f32 %8924, 1
  %8926 = fadd fast float %8906, -1.000000e+00
  %8927 = fmul fast float %8925, %8926
  %8928 = fadd fast float %8927, 1.000000e+00
  br label %8929

; <label>:8929                                    ; preds = %8923, %8896
  %8930 = phi float [ %8928, %8923 ], [ %8906, %8896 ]
  %8931 = fadd fast float %8688, %8685
  %8932 = fmul fast float %8909, %8931
  %8933 = fadd fast float %8932, %8912
  %8934 = fadd fast float %8689, %8686
  %8935 = fmul fast float %8910, %8934
  %8936 = fadd fast float %8935, %8913
  %8937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8938 = extractvalue %dx.types.CBufRet.f32 %8937, 0
  br i1 %252, label %8939, label %8962

; <label>:8939                                    ; preds = %8929
  %8940 = fadd fast float %8933, %8936
  %8941 = fmul fast float %8938, %8940
  %8942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8943 = extractvalue %dx.types.CBufRet.f32 %8942, 3
  %8944 = extractvalue %dx.types.CBufRet.f32 %7242, 1
  %8945 = fsub fast float %7247, %7241
  %8946 = fadd fast float %8945, %7248
  %8947 = fsub fast float %8946, %8944
  %8948 = extractvalue %dx.types.CBufRet.f32 %7242, 2
  %8949 = fmul fast float %8947, %8948
  %8950 = call float @dx.op.unary.f32(i32 7, float %8949)  ; Saturate(value)
  %8951 = fsub fast float %8950, %8943
  %8952 = fmul fast float %8951, %8930
  %8953 = fadd fast float %8952, %8943
  %8954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8955 = extractvalue %dx.types.CBufRet.f32 %8954, 0
  %8956 = fsub fast float %8953, %8955
  %8957 = fmul fast float %8956, 1.000000e+01
  %8958 = call float @dx.op.unary.f32(i32 7, float %8957)  ; Saturate(value)
  %8959 = fmul fast float %8958, %7237
  %8960 = fadd fast float %8959, %7238
  %8961 = fmul fast float %8960, %8953
  br label %8986

; <label>:8962                                    ; preds = %8929
  %8963 = fadd fast float %8690, %8687
  %8964 = fmul fast float %8911, %8963
  %8965 = fadd fast float %8964, %8914
  %8966 = fmul fast float %8938, %8933
  %8967 = fmul fast float %8938, %8936
  %8968 = fmul fast float %8938, %8965
  %8969 = call float @dx.op.binary.f32(i32 35, float %8967, float %8968)  ; FMax(a,b)
  %8970 = call float @dx.op.binary.f32(i32 35, float %8966, float %8969)  ; FMax(a,b)
  %8971 = call float @dx.op.binary.f32(i32 35, float %8970, float %7238)  ; FMax(a,b)
  %8972 = fcmp fast ugt float %8971, 0x3F10000000000000
  br i1 %8972, label %8974, label %8973

; <label>:8973                                    ; preds = %8962
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8974

; <label>:8974                                    ; preds = %8973, %8962
  %8975 = add i32 %43, 356
  %8976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %8975, i32 undef)  ; BufferLoad(srv,index,wot)
  %8977 = extractvalue %dx.types.ResRet.i32 %8976, 0
  %8978 = and i32 %8977, 32
  %8979 = icmp eq i32 %8978, 0
  br i1 %8979, label %8986, label %8980

; <label>:8980                                    ; preds = %8974
  %8981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8982 = extractvalue %dx.types.CBufRet.f32 %8981, 0
  %8983 = fmul fast float %8982, 0x3FE99999A0000000
  %8984 = fadd fast float %8982, %8966
  %8985 = fadd fast float %8983, %8968
  br label %8986

; <label>:8986                                    ; preds = %8980, %8974, %8939
  %8987 = phi float [ %8941, %8939 ], [ %8984, %8980 ], [ %8966, %8974 ]
  %8988 = phi float [ %8961, %8939 ], [ %8967, %8980 ], [ %8967, %8974 ]
  %8989 = phi float [ %8960, %8939 ], [ %8985, %8980 ], [ %8968, %8974 ]
  %8990 = phi float [ %8960, %8939 ], [ %7238, %8980 ], [ %7238, %8974 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8991 = call float @dx.op.binary.f32(i32 36, float %8987, float 3.225500e+04)  ; FMin(a,b)
  %8992 = call float @dx.op.binary.f32(i32 36, float %8988, float 3.225500e+04)  ; FMin(a,b)
  %8993 = call float @dx.op.binary.f32(i32 36, float %8989, float 3.225500e+04)  ; FMin(a,b)
  %8994 = call float @dx.op.binary.f32(i32 36, float %8990, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8991)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8992)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8993)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8994)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

