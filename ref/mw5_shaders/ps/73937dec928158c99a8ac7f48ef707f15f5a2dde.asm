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
; shader hash: 678769276edf83f9d3b4a08102ddc50e
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
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
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
  %42 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = alloca [12 x float], align 4
  %90 = alloca [12 x float], align 4
  %91 = alloca [3 x float], align 4
  %92 = alloca [3 x float], align 4
  %93 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %94 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = fmul fast float %96, %85
  %98 = fmul fast float %96, %86
  %99 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %100 = bitcast float %99 to i32
  %101 = ashr i32 %100, 1
  %102 = sub nsw i32 1597250115, %101
  %103 = bitcast i32 %102 to float
  %104 = fmul fast float %103, %76
  %105 = fmul fast float %103, %77
  %106 = fmul fast float %103, %78
  %107 = fmul fast float %77, %74
  %108 = fmul fast float %78, %73
  %109 = fsub fast float %107, %108
  %110 = fmul fast float %78, %72
  %111 = fmul fast float %76, %74
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %76, %73
  %114 = fmul fast float %77, %72
  %115 = fsub fast float %113, %114
  %116 = fmul fast float %109, %75
  %117 = fmul fast float %112, %75
  %118 = fmul fast float %115, %75
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = fcmp fast une float %120, 0.000000e+00
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %125 = fmul fast float %97, 2.000000e+00
  %126 = fmul fast float %125, %123
  %127 = fmul fast float %98, 2.000000e+00
  %128 = fmul fast float %127, %124
  %129 = fsub fast float 1.000000e+00, %126
  %130 = fsub fast float 1.000000e+00, %128
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = select i1 %121, float %132, float %136
  %140 = select i1 %121, float %133, float %137
  %141 = select i1 %121, float %134, float %138
  %142 = fmul fast float %139, %129
  %143 = fmul fast float %140, %129
  %144 = fmul fast float %141, %129
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = select i1 %121, float %146, float %150
  %154 = select i1 %121, float %147, float %151
  %155 = select i1 %121, float %148, float %152
  %156 = fmul fast float %153, %130
  %157 = fmul fast float %154, %130
  %158 = fmul fast float %155, %130
  %159 = fadd fast float %156, %142
  %160 = fadd fast float %157, %143
  %161 = fadd fast float %158, %144
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = select i1 %121, float %163, float %167
  %171 = select i1 %121, float %164, float %168
  %172 = select i1 %121, float %165, float %169
  %173 = fadd fast float %159, %170
  %174 = fadd fast float %160, %171
  %175 = fadd fast float %161, %172
  %176 = fmul fast float %173, %88
  %177 = fmul fast float %174, %88
  %178 = fmul fast float %175, %88
  %179 = add i32 %42, 360
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = extractvalue %dx.types.ResRet.i32 %180, 1
  %183 = extractvalue %dx.types.ResRet.i32 %180, 2
  %184 = extractvalue %dx.types.ResRet.i32 %180, 3
  %185 = bitcast i32 %181 to float
  %186 = bitcast i32 %182 to float
  %187 = bitcast i32 %183 to float
  %188 = bitcast i32 %184 to float
  %189 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %190 = call float @dx.op.unary.f32(i32 25, float %189)  ; Rsqrt(value)
  %191 = fmul fast float %190, %104
  %192 = fmul fast float %190, %105
  %193 = fmul fast float %190, %106
  %194 = call float @dx.op.dot3.f32(i32 55, float %176, float %177, float %178, float %176, float %177, float %178)  ; Dot3(ax,ay,az,bx,by,bz)
  %195 = call float @dx.op.unary.f32(i32 25, float %194)  ; Rsqrt(value)
  %196 = fmul fast float %195, %176
  %197 = fmul fast float %195, %177
  %198 = fmul fast float %195, %178
  %199 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %200 = fmul fast float %199, %199
  %201 = fmul fast float %200, %187
  %202 = fadd fast float %201, %188
  %203 = call float @dx.op.unary.f32(i32 7, float %202)  ; Saturate(value)
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 3
  %206 = fmul fast float %205, %194
  %207 = fsub fast float %185, %206
  %208 = fmul fast float %207, %186
  %209 = call float @dx.op.unary.f32(i32 7, float %208)  ; Saturate(value)
  %210 = fmul fast float %209, %203
  %211 = fmul fast float %97, 5.000000e-01
  %212 = fmul fast float %98, 5.000000e-01
  %213 = fptosi float %211 to i32
  %214 = fptosi float %212 to i32
  %215 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %213, i32 %214, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = lshr i32 %216, 18
  %218 = uitofp i32 %217 to float
  %219 = fmul fast float %218, 0x3F4C00EBA0000000
  %220 = call float @dx.op.unary.f32(i32 21, float %219)  ; Exp(value)
  %221 = fadd fast float %220, -1.000000e+00
  %222 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %19, i32 0)  ; GetDimensions(handle,mipLevel)
  %223 = extractvalue %dx.types.Dimensions %222, 0
  %224 = sitofp i32 %223 to float
  %225 = extractvalue %dx.types.Dimensions %222, 1
  %226 = sitofp i32 %225 to float
  %227 = fcmp fast oge float %211, %224
  %228 = fcmp fast oge float %212, %226
  %229 = or i1 %227, %228
  %230 = select i1 %229, float 0x4197782600000000, float %221
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %234 = fmul fast float %232, %97
  %235 = fmul fast float %233, %98
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, 114688
  %239 = icmp ne i32 %238, 0
  %240 = select i1 %239, float %234, float 0.000000e+00
  %241 = select i1 %239, float %235, float 0.000000e+00
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %37, float %240, float %241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = fmul fast float %243, 2.550000e+02
  %245 = fptoui float %244 to i32
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.i32 %247, 3
  %249 = and i32 %248, 3
  %250 = icmp ne i32 %249, 0
  %251 = and i32 %248, 4
  %252 = icmp ne i32 %251, 0
  %253 = and i1 %250, %252
  br i1 %253, label %254, label %265

; <label>:254                                     ; preds = %0
  %255 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %256 = fmul fast float %255, %98
  %257 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %258 = fmul fast float %257, %97
  %259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %36, float %258, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = fsub fast float 1.000000e+00, %260
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %264 = fcmp fast olt float %261, %263
  br label %268

; <label>:265                                     ; preds = %0
  %266 = icmp eq i32 %251, 0
  %267 = and i1 %250, %266
  br label %268

; <label>:268                                     ; preds = %265, %254
  %269 = phi i1 [ %264, %254 ], [ %267, %265 ]
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %272 = fmul fast float %271, 0x3FE3C6EF40000000
  %273 = frem fast float %97, 2.560000e+02
  %274 = frem fast float %98, 2.560000e+02
  %275 = fptoui float %273 to i32
  %276 = fptoui float %274 to i32
  %277 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %275, i32 %276, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = fadd fast float %278, %272
  %280 = call float @dx.op.unary.f32(i32 22, float %279)  ; Frc(value)
  %281 = add i32 %42, 156
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = shl i32 %283, 4
  %285 = and i32 %284, 32752
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %283, 7
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %283, 22
  %291 = shl nuw nsw i32 %290, 5
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = add i32 %42, 216
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %307 = add i32 %42, 36
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %42, 288
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 65535
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %316, 16
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = fmul fast float %318, 0x3F50624DE0000000
  %322 = fmul fast float %320, 0x3F50624DE0000000
  %323 = add i32 %42, 172
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = shl i32 %325, 4
  %327 = and i32 %326, 32752
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %325, 7
  %330 = and i32 %329, 32752
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %325, 22
  %333 = shl nuw nsw i32 %332, 5
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = add i32 %42, 232
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %337, 8
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = lshr i32 %337, 16
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = add i32 %42, 52
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = add i32 %42, 304
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, 65535
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %358, 16
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = fmul fast float %360, 0x3F50624DE0000000
  %364 = fmul fast float %362, 0x3F50624DE0000000
  %365 = add i32 %42, 188
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = shl i32 %367, 4
  %369 = and i32 %368, 32752
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %367, 7
  %372 = and i32 %371, 32752
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %367, 22
  %375 = shl nuw nsw i32 %374, 5
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = add i32 %42, 248
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = lshr i32 %379, 8
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = lshr i32 %379, 16
  %388 = and i32 %387, 255
  %389 = uitofp i32 %388 to float
  %390 = fmul fast float %389, 0x3F70101020000000
  %391 = add i32 %42, 68
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = add i32 %42, 320
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 65535
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = lshr i32 %400, 16
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = fmul fast float %402, 0x3F50624DE0000000
  %406 = fmul fast float %404, 0x3F50624DE0000000
  %407 = add i32 %42, 204
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = shl i32 %409, 4
  %411 = and i32 %410, 32752
  %412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %411)  ; LegacyF16ToF32(value)
  %413 = lshr i32 %409, 7
  %414 = and i32 %413, 32752
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %409, 22
  %417 = shl nuw nsw i32 %416, 5
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = add i32 %42, 264
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 255
  %423 = uitofp i32 %422 to float
  %424 = fmul fast float %423, 0x3F70101020000000
  %425 = lshr i32 %421, 8
  %426 = and i32 %425, 255
  %427 = uitofp i32 %426 to float
  %428 = fmul fast float %427, 0x3F70101020000000
  %429 = lshr i32 %421, 16
  %430 = and i32 %429, 255
  %431 = uitofp i32 %430 to float
  %432 = fmul fast float %431, 0x3F70101020000000
  %433 = add i32 %42, 84
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 65535
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = lshr i32 %435, 16
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = add i32 %42, 336
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 65535
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = lshr i32 %442, 16
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = fmul fast float %444, 0x3F50624DE0000000
  %448 = fmul fast float %446, 0x3F50624DE0000000
  %449 = add i32 %42, 348
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 32
  %453 = icmp eq i32 %452, 0
  %454 = and i32 %451, 64
  %455 = icmp eq i32 %454, 0
  %456 = and i32 %451, 128
  %457 = icmp eq i32 %456, 0
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 2
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %477, label %462

; <label>:462                                     ; preds = %268
  %463 = add i32 %42, 536
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = add i32 %465, 0
  %467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %467, %dx.types.Handle %94, float %79, float %80, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = extractvalue %dx.types.ResRet.f32 %468, 3
  %473 = fmul fast float %472, %81
  %474 = fmul fast float %469, %82
  %475 = fmul fast float %470, %83
  %476 = fmul fast float %471, %84
  br label %477

; <label>:477                                     ; preds = %462, %268
  %478 = phi float [ %84, %268 ], [ %476, %462 ]
  %479 = phi float [ %83, %268 ], [ %475, %462 ]
  %480 = phi float [ %82, %268 ], [ %474, %462 ]
  %481 = phi float [ %81, %268 ], [ %473, %462 ]
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = and i32 %483, 2
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %505, label %486

; <label>:486                                     ; preds = %477
  %487 = add i32 %42, 44
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = and i32 %489, 1
  %491 = icmp ne i32 %490, 0
  %492 = select i1 %491, float %480, float 1.000000e+00
  %493 = add i32 %42, 60
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = and i32 %495, 1
  %497 = icmp ne i32 %496, 0
  %498 = select i1 %497, float %479, float 1.000000e+00
  %499 = add i32 %42, 76
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = and i32 %501, 1
  %503 = icmp ne i32 %502, 0
  %504 = select i1 %503, float %478, float 1.000000e+00
  br label %505

; <label>:505                                     ; preds = %486, %477
  %506 = phi float [ %478, %477 ], [ %504, %486 ]
  %507 = phi float [ %479, %477 ], [ %498, %486 ]
  %508 = phi float [ %480, %477 ], [ %492, %486 ]
  %509 = lshr i32 %483, 20
  %510 = and i32 %509, 3
  %511 = add nuw nsw i32 %510, 1
  %512 = add i32 %42, 24
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = add i32 %42, 28
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = or i32 %517, %514
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %1165, label %520

; <label>:520                                     ; preds = %505
  %521 = and i32 %514, 262144
  %522 = icmp ne i32 %521, 0
  %523 = select i1 %522, float %47, float 1.000000e+00
  %524 = select i1 %522, float %48, float 0.000000e+00
  %525 = select i1 %522, float %49, float 0.000000e+00
  %526 = select i1 %522, float %50, float 1.000000e+00
  %527 = select i1 %522, float %51, float %79
  %528 = select i1 %522, float %52, float %80
  %529 = add i32 %42, 284
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = lshr i32 %531, 16
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = fmul fast float %533, 0x3F50624DE0000000
  %535 = add i32 %42, 88
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = lshr i32 %537, 16
  %539 = and i32 %538, 255
  %540 = lshr i32 %537, 24
  %541 = add i32 %42, 292
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = and i32 %543, 65535
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = lshr i32 %543, 16
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = add i32 %42, 32
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = lshr i32 %550, 22
  %552 = shl nuw nsw i32 %551, 5
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = shl i32 %550, 4
  %555 = and i32 %554, 32752
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = lshr i32 %550, 7
  %558 = and i32 %557, 32752
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 3
  %562 = fmul fast float %561, 1.000000e+03
  %563 = fmul fast float %321, %562
  %564 = call float @dx.op.unary.f32(i32 22, float %563)  ; Frc(value)
  %565 = fadd fast float %564, %311
  %566 = fmul fast float %322, %562
  %567 = call float @dx.op.unary.f32(i32 22, float %566)  ; Frc(value)
  %568 = fadd fast float %567, %313
  %569 = fmul fast float %534, %562
  %570 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %571 = fmul fast float %570, 0x401921FB60000000
  %572 = fadd fast float %571, %553
  %573 = call float @dx.op.unary.f32(i32 13, float %572)  ; Sin(value)
  %574 = call float @dx.op.unary.f32(i32 12, float %572)  ; Cos(value)
  %575 = fsub fast float -0.000000e+00, %573
  %576 = fadd fast float %527, -5.000000e-01
  %577 = fadd fast float %528, -5.000000e-01
  %578 = fmul fast float %545, %576
  %579 = fmul fast float %547, %577
  %580 = fadd fast float %578, 5.000000e-01
  %581 = fadd fast float %579, 5.000000e-01
  %582 = fmul fast float %556, %580
  %583 = fmul fast float %559, %581
  %584 = fmul fast float %574, %582
  %585 = call float @dx.op.tertiary.f32(i32 46, float %575, float %583, float %584)  ; FMad(a,b,c)
  %586 = fmul fast float %573, %582
  %587 = call float @dx.op.tertiary.f32(i32 46, float %574, float %583, float %586)  ; FMad(a,b,c)
  %588 = fadd fast float %565, %585
  %589 = fadd fast float %568, %587
  %590 = icmp ugt i32 %539, 1
  %591 = icmp ugt i32 %537, 33554431
  %592 = or i1 %591, %590
  br i1 %592, label %593, label %618

; <label>:593                                     ; preds = %520
  %594 = add i32 %42, 228
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = lshr i32 %596, 16
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = fmul fast float %561, %598
  %600 = call float @dx.op.unary.f32(i32 22, float %599)  ; Frc(value)
  %601 = mul nuw nsw i32 %539, %540
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %600, %602
  %604 = call float @dx.op.unary.f32(i32 27, float %603)  ; Round_ni(value)
  %605 = fptoui float %604 to i32
  %606 = urem i32 %605, %539
  %607 = udiv i32 %605, %540
  %608 = call float @dx.op.unary.f32(i32 22, float %588)  ; Frc(value)
  %609 = call float @dx.op.unary.f32(i32 22, float %589)  ; Frc(value)
  %610 = uitofp i32 %606 to float
  %611 = uitofp i32 %607 to float
  %612 = fadd fast float %608, %610
  %613 = fadd fast float %609, %611
  %614 = uitofp i32 %539 to float
  %615 = uitofp i32 %540 to float
  %616 = fdiv fast float %612, %614
  %617 = fdiv fast float %613, %615
  br label %618

; <label>:618                                     ; preds = %593, %520
  %619 = phi float [ %616, %593 ], [ %588, %520 ]
  %620 = phi float [ %617, %593 ], [ %589, %520 ]
  %621 = and i32 %514, 256
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %669, label %623

; <label>:623                                     ; preds = %618
  %624 = add i32 %42, 472
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = add i32 %626, 0
  %628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %628, %dx.types.Handle %94, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  %631 = add i32 %42, 100
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = shl i32 %633, 4
  %635 = and i32 %634, 32752
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = lshr i32 %633, 7
  %638 = and i32 %637, 32752
  %639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %638)  ; LegacyF16ToF32(value)
  %640 = fsub fast float 1.000000e+00, %481
  %641 = call float @dx.op.binary.f32(i32 35, float %640, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %642 = bitcast float %481 to i32
  %643 = sitofp i32 %642 to float
  %644 = fadd fast float %643, 0xC1CFBF8940000000
  %645 = fmul fast float %639, %644
  %646 = fadd fast float %645, 0x41CFBF8940000000
  %647 = fptosi float %646 to i32
  %648 = bitcast i32 %647 to float
  %649 = bitcast float %641 to i32
  %650 = sitofp i32 %649 to float
  %651 = fadd fast float %650, 0xC1CFBF8940000000
  %652 = fmul fast float %651, %639
  %653 = fadd fast float %652, 0x41CFBF8940000000
  %654 = fptosi float %653 to i32
  %655 = bitcast i32 %654 to float
  %656 = fmul fast float %648, %636
  %657 = fmul fast float %655, %636
  %658 = fsub fast float %641, %656
  %659 = fadd fast float %657, %641
  %660 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %661 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %662 = fsub fast float %630, %660
  %663 = fsub fast float %661, %660
  %664 = bitcast float %663 to i32
  %665 = sub nsw i32 2129859010, %664
  %666 = bitcast i32 %665 to float
  %667 = fmul fast float %666, %662
  %668 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  br label %669

; <label>:669                                     ; preds = %623, %618
  %670 = phi float [ %668, %623 ], [ %481, %618 ]
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = and i32 %672, 128
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %691, label %675

; <label>:675                                     ; preds = %669
  %676 = add i32 %42, 456
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %676, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = add i32 %678, 0
  %680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %680, %dx.types.Handle %94, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 0
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 524288
  %686 = icmp ne i32 %685, 0
  %687 = fcmp fast ogt float %682, 0x3FE0101020000000
  %688 = select i1 %687, float 1.000000e+00, float 0.000000e+00
  %689 = select i1 %686, float %688, float %682
  %690 = fmul fast float %689, %670
  br label %691

; <label>:691                                     ; preds = %675, %669
  %692 = phi float [ %690, %675 ], [ %670, %669 ]
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = and i32 %694, 16
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %895, label %697

; <label>:697                                     ; preds = %691
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = add i32 %42, 408
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = add i32 %702, 0
  %704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %703, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %705 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %704, %dx.types.Handle %93, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = extractvalue %dx.types.ResRet.f32 %705, 1
  %708 = extractvalue %dx.types.ResRet.f32 %705, 2
  %709 = extractvalue %dx.types.ResRet.f32 %705, 3
  %710 = and i32 %699, 255
  %711 = uitofp i32 %710 to float
  %712 = lshr i32 %699, 8
  %713 = and i32 %712, 255
  %714 = uitofp i32 %713 to float
  %715 = fmul fast float %709, %711
  %716 = fadd fast float %715, %714
  %717 = fmul fast float %716, 0x3F70101000000000
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = and i32 %719, 512
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %730, label %722

; <label>:722                                     ; preds = %697
  %723 = add i32 %42, 488
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = add i32 %725, 0
  %727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %726, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %728 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %727, %dx.types.Handle %94, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  br label %730

; <label>:730                                     ; preds = %722, %697
  %731 = phi float [ %729, %722 ], [ 1.000000e+00, %697 ]
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = and i32 %733, 33554432
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %842, label %736

; <label>:736                                     ; preds = %730
  %737 = add i32 %42, 224
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 65535
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = lshr i32 %739, 16
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = add i32 %42, 228
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 65535
  %748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %747)  ; LegacyF16ToF32(value)
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %765 = add i32 %42, 220
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %765, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = lshr i32 %767, 24
  %769 = uitofp i32 %768 to float
  %770 = fmul fast float %769, 0x3F70101020000000
  %771 = and i32 %767, 255
  %772 = uitofp i32 %771 to float
  %773 = fmul fast float %772, 0x3F70101020000000
  %774 = lshr i32 %767, 8
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = fmul fast float %776, 0x3F70101020000000
  %778 = lshr i32 %767, 16
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %780, 0x3F70101020000000
  %782 = bitcast float %706 to i32
  %783 = ashr i32 %782, 1
  %784 = sub nsw i32 1597463174, %783
  %785 = bitcast i32 %784 to float
  %786 = fmul fast float %706, 5.000000e-01
  %787 = fmul fast float %785, %785
  %788 = fmul fast float %787, %786
  %789 = fsub fast float 1.500000e+00, %788
  %790 = fmul fast float %785, %706
  %791 = fmul fast float %790, %789
  %792 = bitcast float %707 to i32
  %793 = ashr i32 %792, 1
  %794 = sub nsw i32 1597463174, %793
  %795 = bitcast i32 %794 to float
  %796 = fmul fast float %707, 5.000000e-01
  %797 = fmul fast float %795, %795
  %798 = fmul fast float %797, %796
  %799 = fsub fast float 1.500000e+00, %798
  %800 = fmul fast float %795, %707
  %801 = fmul fast float %800, %799
  %802 = bitcast float %708 to i32
  %803 = ashr i32 %802, 1
  %804 = sub nsw i32 1597463174, %803
  %805 = bitcast i32 %804 to float
  %806 = fmul fast float %708, 5.000000e-01
  %807 = fmul fast float %805, %805
  %808 = fmul fast float %807, %806
  %809 = fsub fast float 1.500000e+00, %808
  %810 = fmul fast float %805, %708
  %811 = fmul fast float %810, %809
  %812 = fsub fast float %791, %773
  %813 = fsub fast float %801, %777
  %814 = fsub fast float %811, %781
  %815 = fmul fast float %812, %741
  %816 = fmul fast float %813, %743
  %817 = fmul fast float %814, %748
  %818 = fadd fast float %815, %756
  %819 = fadd fast float %816, %760
  %820 = fadd fast float %817, %764
  %821 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %822 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %823 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %824 = fmul fast float %821, %821
  %825 = fmul fast float %822, %822
  %826 = fmul fast float %823, %823
  %827 = fsub fast float %824, %706
  %828 = fsub fast float %825, %707
  %829 = fsub fast float %826, %708
  %830 = fmul fast float %827, %731
  %831 = fmul fast float %828, %731
  %832 = fmul fast float %829, %731
  %833 = fadd fast float %830, %706
  %834 = fadd fast float %831, %707
  %835 = fadd fast float %832, %708
  %836 = fadd fast float %753, %717
  %837 = fsub fast float %836, %770
  %838 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %839 = fsub fast float %838, %717
  %840 = fmul fast float %839, %731
  %841 = fadd fast float %840, %717
  br label %895

; <label>:842                                     ; preds = %730
  %843 = and i32 %733, 134217728
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %879, label %845

; <label>:845                                     ; preds = %842
  %846 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %847 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %848 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %849 = fadd fast float %846, -5.000000e-01
  %850 = fadd fast float %847, -5.000000e-01
  %851 = fadd fast float %848, -5.000000e-01
  %852 = fmul fast float %849, %731
  %853 = fmul fast float %850, %731
  %854 = fmul fast float %851, %731
  %855 = fadd fast float %852, 5.000000e-01
  %856 = fadd fast float %853, 5.000000e-01
  %857 = fadd fast float %854, 5.000000e-01
  %858 = call float @dx.op.unary.f32(i32 24, float %706)  ; Sqrt(value)
  %859 = call float @dx.op.unary.f32(i32 24, float %707)  ; Sqrt(value)
  %860 = call float @dx.op.unary.f32(i32 24, float %708)  ; Sqrt(value)
  %861 = fmul fast float %855, 2.000000e+00
  %862 = fsub fast float 1.000000e+00, %861
  %863 = fmul fast float %862, %858
  %864 = fadd fast float %863, %861
  %865 = fmul fast float %864, %858
  %866 = fmul fast float %856, 2.000000e+00
  %867 = fsub fast float 1.000000e+00, %866
  %868 = fmul fast float %867, %859
  %869 = fadd fast float %868, %866
  %870 = fmul fast float %869, %859
  %871 = fmul fast float %857, 2.000000e+00
  %872 = fsub fast float 1.000000e+00, %871
  %873 = fmul fast float %872, %860
  %874 = fadd fast float %873, %871
  %875 = fmul fast float %874, %860
  %876 = fmul fast float %865, %865
  %877 = fmul fast float %870, %870
  %878 = fmul fast float %875, %875
  br label %895

; <label>:879                                     ; preds = %842
  %880 = fmul fast float %298, %298
  %881 = fmul fast float %302, %302
  %882 = fmul fast float %306, %306
  %883 = fadd fast float %880, -1.000000e+00
  %884 = fadd fast float %881, -1.000000e+00
  %885 = fadd fast float %882, -1.000000e+00
  %886 = fmul fast float %731, %883
  %887 = fmul fast float %731, %884
  %888 = fmul fast float %731, %885
  %889 = fadd fast float %886, 1.000000e+00
  %890 = fadd fast float %887, 1.000000e+00
  %891 = fadd fast float %888, 1.000000e+00
  %892 = fmul fast float %889, %706
  %893 = fmul fast float %890, %707
  %894 = fmul fast float %891, %708
  br label %895

; <label>:895                                     ; preds = %879, %845, %736, %691
  %896 = phi float [ %841, %736 ], [ %717, %845 ], [ %717, %879 ], [ 0x3FA23C0BE0000000, %691 ]
  %897 = phi float [ %833, %736 ], [ %876, %845 ], [ %892, %879 ], [ 1.000000e+00, %691 ]
  %898 = phi float [ %834, %736 ], [ %877, %845 ], [ %893, %879 ], [ 1.000000e+00, %691 ]
  %899 = phi float [ %835, %736 ], [ %878, %845 ], [ %894, %879 ], [ 1.000000e+00, %691 ]
  %900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.i32 %900, 1
  %902 = and i32 %901, 1
  %903 = icmp ne i32 %902, 0
  %904 = add i32 %42, 356
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = and i32 %906, 32
  %908 = icmp ne i32 %907, 0
  %909 = and i1 %903, %908
  %910 = select i1 %909, float 1.000000e+00, float %897
  %911 = select i1 %909, float 0x3FD3333340000000, float %898
  %912 = select i1 %909, float 0x3FD3333340000000, float %899
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = and i32 %914, 32
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %989, label %917

; <label>:917                                     ; preds = %895
  %918 = add i32 %42, 92
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = add i32 %42, 424
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = add i32 %923, 0
  %925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %926 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %925, %dx.types.Handle %93, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = extractvalue %dx.types.ResRet.f32 %926, 1
  %929 = extractvalue %dx.types.ResRet.f32 %926, 2
  %930 = extractvalue %dx.types.ResRet.f32 %926, 3
  %931 = and i32 %920, 255
  %932 = uitofp i32 %931 to float
  %933 = lshr i32 %920, 8
  %934 = and i32 %933, 255
  %935 = uitofp i32 %934 to float
  %936 = lshr i32 %920, 16
  %937 = and i32 %936, 255
  %938 = uitofp i32 %937 to float
  %939 = fmul fast float %938, 0x3F70101000000000
  %940 = fmul fast float %927, %932
  %941 = fadd fast float %940, %935
  %942 = fmul fast float %941, 0x3F70101000000000
  %943 = fadd fast float %928, -5.000000e-01
  %944 = fadd fast float %930, -5.000000e-01
  %945 = fmul fast float %943, %939
  %946 = fmul fast float %944, %939
  %947 = fadd fast float %945, 5.000000e-01
  %948 = fadd fast float %946, 5.000000e-01
  %949 = fmul fast float %947, 2.000000e+00
  %950 = fadd fast float %949, -1.000000e+00
  %951 = fmul fast float %948, 2.000000e+00
  %952 = fadd fast float %951, -1.000000e+00
  %953 = fadd fast float %950, %952
  %954 = fmul fast float %953, 5.000000e-01
  %955 = fsub fast float %950, %952
  %956 = fmul fast float %955, 5.000000e-01
  %957 = call float @dx.op.unary.f32(i32 6, float %954)  ; FAbs(value)
  %958 = fsub fast float 1.000000e+00, %957
  %959 = call float @dx.op.unary.f32(i32 6, float %956)  ; FAbs(value)
  %960 = fsub fast float %958, %959
  %961 = call float @dx.op.dot3.f32(i32 55, float %954, float %956, float %960, float %954, float %956, float %960)  ; Dot3(ax,ay,az,bx,by,bz)
  %962 = call float @dx.op.unary.f32(i32 25, float %961)  ; Rsqrt(value)
  %963 = fmul fast float %954, %962
  %964 = fmul fast float %956, %962
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = and i32 %966, 67108864
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %985, label %969

; <label>:969                                     ; preds = %917
  %970 = add i32 %42, 280
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 65535
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = and i32 %976, 65535
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = lshr i32 %972, 16
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = fsub fast float %942, %980
  %982 = fmul fast float %981, %974
  %983 = fadd fast float %982, %978
  %984 = call float @dx.op.unary.f32(i32 7, float %983)  ; Saturate(value)
  br label %985

; <label>:985                                     ; preds = %969, %917
  %986 = phi float [ %984, %969 ], [ %942, %917 ]
  %987 = call float @dx.op.dot2.f32(i32 54, float %963, float %964, float %523, float %524)  ; Dot2(ax,ay,bx,by)
  %988 = call float @dx.op.dot2.f32(i32 54, float %963, float %964, float %525, float %526)  ; Dot2(ax,ay,bx,by)
  br label %989

; <label>:989                                     ; preds = %985, %895
  %990 = phi float [ %986, %985 ], [ 0x3FD6666660000000, %895 ]
  %991 = phi float [ %987, %985 ], [ 0.000000e+00, %895 ]
  %992 = phi float [ %988, %985 ], [ 0.000000e+00, %895 ]
  %993 = phi float [ %929, %985 ], [ 1.000000e+00, %895 ]
  %994 = add i32 %42, 160
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = lshr i32 %996, 22
  %998 = shl nuw nsw i32 %997, 5
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = and i32 %1001, 64
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1037, label %1004

; <label>:1004                                    ; preds = %989
  %1005 = add i32 %42, 440
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = add i32 %1007, 0
  %1009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1008, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.i32 %1010, 0
  %1012 = and i32 %1011, 131072
  %1013 = icmp eq i32 %1012, 0
  %1014 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1009, %dx.types.Handle %93, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.ResRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.ResRet.f32 %1014, 2
  %1018 = fmul fast float %1015, %286
  %1019 = fmul fast float %1016, %289
  %1020 = fmul fast float %1017, %292
  br i1 %1013, label %1027, label %1021

; <label>:1021                                    ; preds = %1004
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = fmul fast float %1023, %1018
  %1025 = fmul fast float %1023, %1019
  %1026 = fmul fast float %1023, %1020
  br label %1027

; <label>:1027                                    ; preds = %1021, %1004
  %1028 = phi float [ %1024, %1021 ], [ %1018, %1004 ]
  %1029 = phi float [ %1025, %1021 ], [ %1019, %1004 ]
  %1030 = phi float [ %1026, %1021 ], [ %1020, %1004 ]
  %1031 = fmul fast float %1028, %999
  %1032 = select i1 %269, float %1031, float %1028
  %1033 = call float @dx.op.dot3.f32(i32 55, float %1032, float %1029, float %1030, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1034 = select i1 %269, float 0.000000e+00, float %1028
  %1035 = select i1 %269, float %1033, float %1029
  %1036 = select i1 %269, float 0.000000e+00, float %1030
  br label %1037

; <label>:1037                                    ; preds = %1027, %989
  %1038 = phi float [ %1034, %1027 ], [ 0.000000e+00, %989 ]
  %1039 = phi float [ %1035, %1027 ], [ 0.000000e+00, %989 ]
  %1040 = phi float [ %1036, %1027 ], [ 0.000000e+00, %989 ]
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 1024
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1075, label %1045

; <label>:1045                                    ; preds = %1037
  %1046 = add i32 %42, 152
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = and i32 %1048, 255
  %1050 = uitofp i32 %1049 to float
  %1051 = fmul fast float %1050, 0x3F70101020000000
  %1052 = lshr i32 %1048, 8
  %1053 = and i32 %1052, 255
  %1054 = uitofp i32 %1053 to float
  %1055 = fmul fast float %1054, 0x3F70101020000000
  %1056 = lshr i32 %1048, 16
  %1057 = and i32 %1056, 255
  %1058 = uitofp i32 %1057 to float
  %1059 = fmul fast float %1058, 0x3F70101020000000
  %1060 = fmul fast float %1051, %1051
  %1061 = fmul fast float %1055, %1055
  %1062 = fmul fast float %1059, %1059
  %1063 = add i32 %42, 504
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = add i32 %1065, 0
  %1067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1068 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1067, %dx.types.Handle %94, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1069 = extractvalue %dx.types.ResRet.f32 %1068, 0
  %1070 = extractvalue %dx.types.ResRet.f32 %1068, 1
  %1071 = extractvalue %dx.types.ResRet.f32 %1068, 2
  %1072 = fmul fast float %1060, %1069
  %1073 = fmul fast float %1061, %1070
  %1074 = fmul fast float %1062, %1071
  br label %1075

; <label>:1075                                    ; preds = %1045, %1037
  %1076 = phi float [ %1072, %1045 ], [ 0.000000e+00, %1037 ]
  %1077 = phi float [ %1073, %1045 ], [ 0.000000e+00, %1037 ]
  %1078 = phi float [ %1074, %1045 ], [ 0.000000e+00, %1037 ]
  %1079 = fcmp fast ogt float %1076, 0.000000e+00
  %1080 = fcmp fast ogt float %1077, 0.000000e+00
  %1081 = fcmp fast ogt float %1078, 0.000000e+00
  %1082 = call float @dx.op.unary.f32(i32 23, float %1076)  ; Log(value)
  %1083 = call float @dx.op.unary.f32(i32 23, float %1077)  ; Log(value)
  %1084 = call float @dx.op.unary.f32(i32 23, float %1078)  ; Log(value)
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = lshr i32 %1086, 7
  %1088 = and i32 %1087, 32752
  %1089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1088)  ; LegacyF16ToF32(value)
  %1090 = fmul fast float %1082, 0xBFE62E4300000000
  %1091 = fmul fast float %1090, %1089
  %1092 = fmul fast float %1083, 0xBFE62E4300000000
  %1093 = fmul fast float %1092, %1089
  %1094 = fmul fast float %1084, 0xBFE62E4300000000
  %1095 = fmul fast float %1094, %1089
  %1096 = select i1 %1079, float %1091, float 1.270000e+02
  %1097 = select i1 %1080, float %1093, float 1.270000e+02
  %1098 = select i1 %1081, float %1095, float 1.270000e+02
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = and i32 %1100, 10240
  %1102 = icmp eq i32 %1101, 0
  br i1 %1102, label %1147, label %1103

; <label>:1103                                    ; preds = %1075
  %1104 = add i32 %42, 520
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = add i32 %1106, 0
  %1108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1107, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1108, %dx.types.Handle %94, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1110 = extractvalue %dx.types.ResRet.f32 %1109, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1109, 3
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = and i32 %1113, 1048576
  %1115 = icmp ne i32 %1114, 0
  %1116 = and i32 %1113, 8192
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1133, label %1118

; <label>:1118                                    ; preds = %1103
  %1119 = extractvalue %dx.types.ResRet.f32 %1109, 2
  %1120 = select i1 %1115, float %1119, float %1110
  %1121 = extractvalue %dx.types.ResRet.f32 %1109, 0
  %1122 = select i1 %1115, float %1121, float %1110
  %1123 = add i32 %42, 96
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = lshr i32 %1125, 16
  %1127 = and i32 %1126, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = fmul fast float %1128, 0x3F80101020000000
  %1130 = fmul fast float %1129, %1122
  %1131 = fmul fast float %1129, %1110
  %1132 = fmul fast float %1129, %1120
  br label %1133

; <label>:1133                                    ; preds = %1118, %1103
  %1134 = phi float [ %1130, %1118 ], [ 0.000000e+00, %1103 ]
  %1135 = phi float [ %1131, %1118 ], [ 0.000000e+00, %1103 ]
  %1136 = phi float [ %1132, %1118 ], [ 0.000000e+00, %1103 ]
  %1137 = and i32 %1113, 2048
  %1138 = icmp eq i32 %1137, 0
  br i1 %1138, label %1147, label %1139

; <label>:1139                                    ; preds = %1133
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = shl i32 %1141, 4
  %1143 = and i32 %1142, 32752
  %1144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1143)  ; LegacyF16ToF32(value)
  %1145 = fmul fast float %1144, %1111
  %1146 = call float @dx.op.binary.f32(i32 35, float %1145, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1147

; <label>:1147                                    ; preds = %1139, %1133, %1075
  %1148 = phi float [ %1134, %1139 ], [ %1134, %1133 ], [ 0.000000e+00, %1075 ]
  %1149 = phi float [ %1135, %1139 ], [ %1135, %1133 ], [ 0.000000e+00, %1075 ]
  %1150 = phi float [ %1136, %1139 ], [ %1136, %1133 ], [ 0.000000e+00, %1075 ]
  %1151 = phi float [ %1146, %1139 ], [ 0x3F70101020000000, %1133 ], [ 0x3F70101020000000, %1075 ]
  %1152 = add i32 %42, 96
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = and i32 %1154, 255
  %1156 = uitofp i32 %1155 to float
  %1157 = lshr i32 %1154, 8
  %1158 = and i32 %1157, 255
  %1159 = uitofp i32 %1158 to float
  %1160 = call float @dx.op.dot3.f32(i32 55, float %910, float %911, float %912, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1161 = fmul fast float %1159, %1160
  %1162 = fadd fast float %1161, %1156
  %1163 = fmul fast float %1162, 0x3F70101020000000
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  br label %1165

; <label>:1165                                    ; preds = %1147, %505
  %1166 = phi float [ 0.000000e+00, %505 ], [ %991, %1147 ]
  %1167 = phi float [ 0.000000e+00, %505 ], [ %992, %1147 ]
  %1168 = phi float [ 0.000000e+00, %505 ], [ %910, %1147 ]
  %1169 = phi float [ 0.000000e+00, %505 ], [ %911, %1147 ]
  %1170 = phi float [ 0.000000e+00, %505 ], [ %912, %1147 ]
  %1171 = phi float [ 0.000000e+00, %505 ], [ %1038, %1147 ]
  %1172 = phi float [ 0.000000e+00, %505 ], [ %1039, %1147 ]
  %1173 = phi float [ 0.000000e+00, %505 ], [ %1040, %1147 ]
  %1174 = phi float [ 0.000000e+00, %505 ], [ %1148, %1147 ]
  %1175 = phi float [ 0.000000e+00, %505 ], [ %1149, %1147 ]
  %1176 = phi float [ 0.000000e+00, %505 ], [ %1150, %1147 ]
  %1177 = phi float [ 0.000000e+00, %505 ], [ %1096, %1147 ]
  %1178 = phi float [ 0.000000e+00, %505 ], [ %1097, %1147 ]
  %1179 = phi float [ 0.000000e+00, %505 ], [ %1098, %1147 ]
  %1180 = phi float [ 0.000000e+00, %505 ], [ %896, %1147 ]
  %1181 = phi float [ 0.000000e+00, %505 ], [ %692, %1147 ]
  %1182 = phi float [ 0.000000e+00, %505 ], [ %990, %1147 ]
  %1183 = phi float [ 0.000000e+00, %505 ], [ %993, %1147 ]
  %1184 = phi float [ 0.000000e+00, %505 ], [ %1151, %1147 ]
  %1185 = phi float [ 0.000000e+00, %505 ], [ %1164, %1147 ]
  br i1 %453, label %2108, label %1186

; <label>:1186                                    ; preds = %1165
  %1187 = icmp ult i32 %511, 2
  %1188 = add i32 %42, 40
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = add i32 %42, 44
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = or i32 %1193, %1190
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %2108, label %1196

; <label>:1196                                    ; preds = %1186
  %1197 = and i32 %1190, 262144
  %1198 = icmp ne i32 %1197, 0
  %1199 = select i1 %1198, float %47, float 1.000000e+00
  %1200 = select i1 %1198, float %48, float 0.000000e+00
  %1201 = select i1 %1198, float %49, float 0.000000e+00
  %1202 = select i1 %1198, float %50, float 1.000000e+00
  %1203 = select i1 %1198, float %51, float %79
  %1204 = select i1 %1198, float %52, float %80
  %1205 = add i32 %42, 300
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = lshr i32 %1207, 16
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = fmul fast float %1209, 0x3F50624DE0000000
  %1211 = add i32 %42, 104
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = lshr i32 %1213, 16
  %1215 = and i32 %1214, 255
  %1216 = lshr i32 %1213, 24
  %1217 = add i32 %42, 308
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = and i32 %1219, 65535
  %1221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1220)  ; LegacyF16ToF32(value)
  %1222 = lshr i32 %1219, 16
  %1223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1222)  ; LegacyF16ToF32(value)
  %1224 = add i32 %42, 48
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = lshr i32 %1226, 22
  %1228 = shl nuw nsw i32 %1227, 5
  %1229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1228)  ; LegacyF16ToF32(value)
  %1230 = shl i32 %1226, 4
  %1231 = and i32 %1230, 32752
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = lshr i32 %1226, 7
  %1234 = and i32 %1233, 32752
  %1235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1234)  ; LegacyF16ToF32(value)
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 3
  %1238 = fmul fast float %1237, 1.000000e+03
  %1239 = fmul fast float %363, %1238
  %1240 = call float @dx.op.unary.f32(i32 22, float %1239)  ; Frc(value)
  %1241 = fadd fast float %1240, %353
  %1242 = fmul fast float %364, %1238
  %1243 = call float @dx.op.unary.f32(i32 22, float %1242)  ; Frc(value)
  %1244 = fadd fast float %1243, %355
  %1245 = fmul fast float %1210, %1238
  %1246 = call float @dx.op.unary.f32(i32 22, float %1245)  ; Frc(value)
  %1247 = fmul fast float %1246, 0x401921FB60000000
  %1248 = fadd fast float %1247, %1229
  %1249 = call float @dx.op.unary.f32(i32 13, float %1248)  ; Sin(value)
  %1250 = call float @dx.op.unary.f32(i32 12, float %1248)  ; Cos(value)
  %1251 = fsub fast float -0.000000e+00, %1249
  %1252 = fadd fast float %1203, -5.000000e-01
  %1253 = fadd fast float %1204, -5.000000e-01
  %1254 = fmul fast float %1221, %1252
  %1255 = fmul fast float %1223, %1253
  %1256 = fadd fast float %1254, 5.000000e-01
  %1257 = fadd fast float %1255, 5.000000e-01
  %1258 = fmul fast float %1232, %1256
  %1259 = fmul fast float %1235, %1257
  %1260 = fmul fast float %1250, %1258
  %1261 = call float @dx.op.tertiary.f32(i32 46, float %1251, float %1259, float %1260)  ; FMad(a,b,c)
  %1262 = fmul fast float %1249, %1258
  %1263 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1259, float %1262)  ; FMad(a,b,c)
  %1264 = fadd fast float %1241, %1261
  %1265 = fadd fast float %1244, %1263
  %1266 = icmp ugt i32 %1215, 1
  %1267 = icmp ugt i32 %1213, 33554431
  %1268 = or i1 %1267, %1266
  br i1 %1268, label %1269, label %1294

; <label>:1269                                    ; preds = %1196
  %1270 = add i32 %42, 244
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = lshr i32 %1272, 16
  %1274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1273)  ; LegacyF16ToF32(value)
  %1275 = fmul fast float %1237, %1274
  %1276 = call float @dx.op.unary.f32(i32 22, float %1275)  ; Frc(value)
  %1277 = mul nuw nsw i32 %1215, %1216
  %1278 = uitofp i32 %1277 to float
  %1279 = fmul fast float %1276, %1278
  %1280 = call float @dx.op.unary.f32(i32 27, float %1279)  ; Round_ni(value)
  %1281 = fptoui float %1280 to i32
  %1282 = urem i32 %1281, %1215
  %1283 = udiv i32 %1281, %1216
  %1284 = call float @dx.op.unary.f32(i32 22, float %1264)  ; Frc(value)
  %1285 = call float @dx.op.unary.f32(i32 22, float %1265)  ; Frc(value)
  %1286 = uitofp i32 %1282 to float
  %1287 = uitofp i32 %1283 to float
  %1288 = fadd fast float %1284, %1286
  %1289 = fadd fast float %1285, %1287
  %1290 = uitofp i32 %1215 to float
  %1291 = uitofp i32 %1216 to float
  %1292 = fdiv fast float %1288, %1290
  %1293 = fdiv fast float %1289, %1291
  br label %1294

; <label>:1294                                    ; preds = %1269, %1196
  %1295 = phi float [ %1292, %1269 ], [ %1264, %1196 ]
  %1296 = phi float [ %1293, %1269 ], [ %1265, %1196 ]
  %1297 = and i32 %1190, 256
  %1298 = icmp eq i32 %1297, 0
  br i1 %1298, label %1345, label %1299

; <label>:1299                                    ; preds = %1294
  %1300 = add i32 %42, 476
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = add i32 %1302, 0
  %1304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1303, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1305 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1304, %dx.types.Handle %94, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = add i32 %42, 116
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1307, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = shl i32 %1309, 4
  %1311 = and i32 %1310, 32752
  %1312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1311)  ; LegacyF16ToF32(value)
  %1313 = lshr i32 %1309, 7
  %1314 = and i32 %1313, 32752
  %1315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1314)  ; LegacyF16ToF32(value)
  %1316 = fsub fast float 1.000000e+00, %508
  %1317 = call float @dx.op.binary.f32(i32 35, float %1316, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1318 = bitcast float %508 to i32
  %1319 = sitofp i32 %1318 to float
  %1320 = fadd fast float %1319, 0xC1CFBF8940000000
  %1321 = fmul fast float %1315, %1320
  %1322 = fadd fast float %1321, 0x41CFBF8940000000
  %1323 = fptosi float %1322 to i32
  %1324 = bitcast i32 %1323 to float
  %1325 = bitcast float %1317 to i32
  %1326 = sitofp i32 %1325 to float
  %1327 = fadd fast float %1326, 0xC1CFBF8940000000
  %1328 = fmul fast float %1327, %1315
  %1329 = fadd fast float %1328, 0x41CFBF8940000000
  %1330 = fptosi float %1329 to i32
  %1331 = bitcast i32 %1330 to float
  %1332 = fmul fast float %1324, %1312
  %1333 = fmul fast float %1331, %1312
  %1334 = fsub fast float %1317, %1332
  %1335 = fadd fast float %1333, %1317
  %1336 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1337 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1338 = fsub fast float %1306, %1336
  %1339 = fsub fast float %1337, %1336
  %1340 = bitcast float %1339 to i32
  %1341 = sub nsw i32 2129859010, %1340
  %1342 = bitcast i32 %1341 to float
  %1343 = fmul fast float %1342, %1338
  %1344 = call float @dx.op.unary.f32(i32 7, float %1343)  ; Saturate(value)
  br label %1345

; <label>:1345                                    ; preds = %1299, %1294
  %1346 = phi float [ %1344, %1299 ], [ %508, %1294 ]
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = and i32 %1348, 128
  %1350 = icmp eq i32 %1349, 0
  br i1 %1350, label %1367, label %1351

; <label>:1351                                    ; preds = %1345
  %1352 = add i32 %42, 460
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = add i32 %1354, 0
  %1356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1355, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1357 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1356, %dx.types.Handle %94, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  %1359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.i32 %1359, 0
  %1361 = and i32 %1360, 524288
  %1362 = icmp ne i32 %1361, 0
  %1363 = fcmp fast ogt float %1358, 0x3FE0101020000000
  %1364 = select i1 %1363, float 1.000000e+00, float 0.000000e+00
  %1365 = select i1 %1362, float %1364, float %1358
  %1366 = fmul fast float %1365, %1346
  br label %1367

; <label>:1367                                    ; preds = %1351, %1345
  %1368 = phi float [ %1366, %1351 ], [ %1346, %1345 ]
  %1369 = fcmp fast ult float %1368, 0x3F70101020000000
  br i1 %1369, label %2108, label %1370

; <label>:1370                                    ; preds = %1367
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = and i32 %1372, 16
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1573, label %1375

; <label>:1375                                    ; preds = %1370
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = add i32 %42, 412
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = add i32 %1380, 0
  %1382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1381, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1382, %dx.types.Handle %93, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.ResRet.f32 %1383, 1
  %1386 = extractvalue %dx.types.ResRet.f32 %1383, 2
  %1387 = extractvalue %dx.types.ResRet.f32 %1383, 3
  %1388 = and i32 %1377, 255
  %1389 = uitofp i32 %1388 to float
  %1390 = lshr i32 %1377, 8
  %1391 = and i32 %1390, 255
  %1392 = uitofp i32 %1391 to float
  %1393 = fmul fast float %1387, %1389
  %1394 = fadd fast float %1393, %1392
  %1395 = fmul fast float %1394, 0x3F70101000000000
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = and i32 %1397, 512
  %1399 = icmp eq i32 %1398, 0
  br i1 %1399, label %1408, label %1400

; <label>:1400                                    ; preds = %1375
  %1401 = add i32 %42, 492
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = add i32 %1403, 0
  %1405 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1404, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1406 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1405, %dx.types.Handle %94, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  br label %1408

; <label>:1408                                    ; preds = %1400, %1375
  %1409 = phi float [ %1407, %1400 ], [ 1.000000e+00, %1375 ]
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = and i32 %1411, 33554432
  %1413 = icmp eq i32 %1412, 0
  br i1 %1413, label %1520, label %1414

; <label>:1414                                    ; preds = %1408
  %1415 = add i32 %42, 240
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = and i32 %1417, 65535
  %1419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1418)  ; LegacyF16ToF32(value)
  %1420 = lshr i32 %1417, 16
  %1421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1420)  ; LegacyF16ToF32(value)
  %1422 = add i32 %42, 244
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = and i32 %1424, 65535
  %1426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1425)  ; LegacyF16ToF32(value)
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1443 = add i32 %42, 236
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = lshr i32 %1445, 24
  %1447 = uitofp i32 %1446 to float
  %1448 = fmul fast float %1447, 0x3F70101020000000
  %1449 = and i32 %1445, 255
  %1450 = uitofp i32 %1449 to float
  %1451 = fmul fast float %1450, 0x3F70101020000000
  %1452 = lshr i32 %1445, 8
  %1453 = and i32 %1452, 255
  %1454 = uitofp i32 %1453 to float
  %1455 = fmul fast float %1454, 0x3F70101020000000
  %1456 = lshr i32 %1445, 16
  %1457 = and i32 %1456, 255
  %1458 = uitofp i32 %1457 to float
  %1459 = fmul fast float %1458, 0x3F70101020000000
  %1460 = bitcast float %1384 to i32
  %1461 = ashr i32 %1460, 1
  %1462 = sub nsw i32 1597463174, %1461
  %1463 = bitcast i32 %1462 to float
  %1464 = fmul fast float %1384, 5.000000e-01
  %1465 = fmul fast float %1463, %1463
  %1466 = fmul fast float %1465, %1464
  %1467 = fsub fast float 1.500000e+00, %1466
  %1468 = fmul fast float %1463, %1384
  %1469 = fmul fast float %1468, %1467
  %1470 = bitcast float %1385 to i32
  %1471 = ashr i32 %1470, 1
  %1472 = sub nsw i32 1597463174, %1471
  %1473 = bitcast i32 %1472 to float
  %1474 = fmul fast float %1385, 5.000000e-01
  %1475 = fmul fast float %1473, %1473
  %1476 = fmul fast float %1475, %1474
  %1477 = fsub fast float 1.500000e+00, %1476
  %1478 = fmul fast float %1473, %1385
  %1479 = fmul fast float %1478, %1477
  %1480 = bitcast float %1386 to i32
  %1481 = ashr i32 %1480, 1
  %1482 = sub nsw i32 1597463174, %1481
  %1483 = bitcast i32 %1482 to float
  %1484 = fmul fast float %1386, 5.000000e-01
  %1485 = fmul fast float %1483, %1483
  %1486 = fmul fast float %1485, %1484
  %1487 = fsub fast float 1.500000e+00, %1486
  %1488 = fmul fast float %1483, %1386
  %1489 = fmul fast float %1488, %1487
  %1490 = fsub fast float %1469, %1451
  %1491 = fsub fast float %1479, %1455
  %1492 = fsub fast float %1489, %1459
  %1493 = fmul fast float %1490, %1419
  %1494 = fmul fast float %1491, %1421
  %1495 = fmul fast float %1492, %1426
  %1496 = fadd fast float %1493, %1434
  %1497 = fadd fast float %1494, %1438
  %1498 = fadd fast float %1495, %1442
  %1499 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1500 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  %1501 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1502 = fmul fast float %1499, %1499
  %1503 = fmul fast float %1500, %1500
  %1504 = fmul fast float %1501, %1501
  %1505 = fsub fast float %1502, %1384
  %1506 = fsub fast float %1503, %1385
  %1507 = fsub fast float %1504, %1386
  %1508 = fmul fast float %1505, %1409
  %1509 = fmul fast float %1506, %1409
  %1510 = fmul fast float %1507, %1409
  %1511 = fadd fast float %1508, %1384
  %1512 = fadd fast float %1509, %1385
  %1513 = fadd fast float %1510, %1386
  %1514 = fadd fast float %1431, %1395
  %1515 = fsub fast float %1514, %1448
  %1516 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  %1517 = fsub fast float %1516, %1395
  %1518 = fmul fast float %1517, %1409
  %1519 = fadd fast float %1518, %1395
  br label %1573

; <label>:1520                                    ; preds = %1408
  %1521 = and i32 %1411, 134217728
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %1557, label %1523

; <label>:1523                                    ; preds = %1520
  %1524 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %1525 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %1526 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %1527 = fadd fast float %1524, -5.000000e-01
  %1528 = fadd fast float %1525, -5.000000e-01
  %1529 = fadd fast float %1526, -5.000000e-01
  %1530 = fmul fast float %1527, %1409
  %1531 = fmul fast float %1528, %1409
  %1532 = fmul fast float %1529, %1409
  %1533 = fadd fast float %1530, 5.000000e-01
  %1534 = fadd fast float %1531, 5.000000e-01
  %1535 = fadd fast float %1532, 5.000000e-01
  %1536 = call float @dx.op.unary.f32(i32 24, float %1384)  ; Sqrt(value)
  %1537 = call float @dx.op.unary.f32(i32 24, float %1385)  ; Sqrt(value)
  %1538 = call float @dx.op.unary.f32(i32 24, float %1386)  ; Sqrt(value)
  %1539 = fmul fast float %1533, 2.000000e+00
  %1540 = fsub fast float 1.000000e+00, %1539
  %1541 = fmul fast float %1540, %1536
  %1542 = fadd fast float %1541, %1539
  %1543 = fmul fast float %1542, %1536
  %1544 = fmul fast float %1534, 2.000000e+00
  %1545 = fsub fast float 1.000000e+00, %1544
  %1546 = fmul fast float %1545, %1537
  %1547 = fadd fast float %1546, %1544
  %1548 = fmul fast float %1547, %1537
  %1549 = fmul fast float %1535, 2.000000e+00
  %1550 = fsub fast float 1.000000e+00, %1549
  %1551 = fmul fast float %1550, %1538
  %1552 = fadd fast float %1551, %1549
  %1553 = fmul fast float %1552, %1538
  %1554 = fmul fast float %1543, %1543
  %1555 = fmul fast float %1548, %1548
  %1556 = fmul fast float %1553, %1553
  br label %1573

; <label>:1557                                    ; preds = %1520
  %1558 = fmul fast float %340, %340
  %1559 = fmul fast float %344, %344
  %1560 = fmul fast float %348, %348
  %1561 = fadd fast float %1558, -1.000000e+00
  %1562 = fadd fast float %1559, -1.000000e+00
  %1563 = fadd fast float %1560, -1.000000e+00
  %1564 = fmul fast float %1409, %1561
  %1565 = fmul fast float %1409, %1562
  %1566 = fmul fast float %1409, %1563
  %1567 = fadd fast float %1564, 1.000000e+00
  %1568 = fadd fast float %1565, 1.000000e+00
  %1569 = fadd fast float %1566, 1.000000e+00
  %1570 = fmul fast float %1567, %1384
  %1571 = fmul fast float %1568, %1385
  %1572 = fmul fast float %1569, %1386
  br label %1573

; <label>:1573                                    ; preds = %1557, %1523, %1414, %1370
  %1574 = phi float [ %1519, %1414 ], [ %1395, %1523 ], [ %1395, %1557 ], [ 0x3FA23C0BE0000000, %1370 ]
  %1575 = phi float [ %1511, %1414 ], [ %1554, %1523 ], [ %1570, %1557 ], [ 1.000000e+00, %1370 ]
  %1576 = phi float [ %1512, %1414 ], [ %1555, %1523 ], [ %1571, %1557 ], [ 1.000000e+00, %1370 ]
  %1577 = phi float [ %1513, %1414 ], [ %1556, %1523 ], [ %1572, %1557 ], [ 1.000000e+00, %1370 ]
  %1578 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1579 = extractvalue %dx.types.CBufRet.i32 %1578, 1
  %1580 = and i32 %1579, 1
  %1581 = icmp ne i32 %1580, 0
  %1582 = add i32 %42, 356
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = and i32 %1584, 32
  %1586 = icmp ne i32 %1585, 0
  %1587 = and i1 %1581, %1586
  %1588 = select i1 %1587, float 1.000000e+00, float %1575
  %1589 = select i1 %1587, float 0x3FD3333340000000, float %1576
  %1590 = select i1 %1587, float 0x3FD3333340000000, float %1577
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = and i32 %1592, 32
  %1594 = icmp eq i32 %1593, 0
  br i1 %1594, label %1667, label %1595

; <label>:1595                                    ; preds = %1573
  %1596 = add i32 %42, 108
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1596, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = add i32 %42, 428
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = add i32 %1601, 0
  %1603 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1602, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1604 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1603, %dx.types.Handle %93, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1605 = extractvalue %dx.types.ResRet.f32 %1604, 0
  %1606 = extractvalue %dx.types.ResRet.f32 %1604, 1
  %1607 = extractvalue %dx.types.ResRet.f32 %1604, 2
  %1608 = extractvalue %dx.types.ResRet.f32 %1604, 3
  %1609 = and i32 %1598, 255
  %1610 = uitofp i32 %1609 to float
  %1611 = lshr i32 %1598, 8
  %1612 = and i32 %1611, 255
  %1613 = uitofp i32 %1612 to float
  %1614 = lshr i32 %1598, 16
  %1615 = and i32 %1614, 255
  %1616 = uitofp i32 %1615 to float
  %1617 = fmul fast float %1616, 0x3F70101000000000
  %1618 = fmul fast float %1605, %1610
  %1619 = fadd fast float %1618, %1613
  %1620 = fmul fast float %1619, 0x3F70101000000000
  %1621 = fadd fast float %1606, -5.000000e-01
  %1622 = fadd fast float %1608, -5.000000e-01
  %1623 = fmul fast float %1621, %1617
  %1624 = fmul fast float %1622, %1617
  %1625 = fadd fast float %1623, 5.000000e-01
  %1626 = fadd fast float %1624, 5.000000e-01
  %1627 = fmul fast float %1625, 2.000000e+00
  %1628 = fadd fast float %1627, -1.000000e+00
  %1629 = fmul fast float %1626, 2.000000e+00
  %1630 = fadd fast float %1629, -1.000000e+00
  %1631 = fadd fast float %1628, %1630
  %1632 = fmul fast float %1631, 5.000000e-01
  %1633 = fsub fast float %1628, %1630
  %1634 = fmul fast float %1633, 5.000000e-01
  %1635 = call float @dx.op.unary.f32(i32 6, float %1632)  ; FAbs(value)
  %1636 = fsub fast float 1.000000e+00, %1635
  %1637 = call float @dx.op.unary.f32(i32 6, float %1634)  ; FAbs(value)
  %1638 = fsub fast float %1636, %1637
  %1639 = call float @dx.op.dot3.f32(i32 55, float %1632, float %1634, float %1638, float %1632, float %1634, float %1638)  ; Dot3(ax,ay,az,bx,by,bz)
  %1640 = call float @dx.op.unary.f32(i32 25, float %1639)  ; Rsqrt(value)
  %1641 = fmul fast float %1632, %1640
  %1642 = fmul fast float %1634, %1640
  %1643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.i32 %1643, 0
  %1645 = and i32 %1644, 67108864
  %1646 = icmp eq i32 %1645, 0
  br i1 %1646, label %1663, label %1647

; <label>:1647                                    ; preds = %1595
  %1648 = add i32 %42, 296
  %1649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1648, i32 undef)  ; BufferLoad(srv,index,wot)
  %1650 = extractvalue %dx.types.ResRet.i32 %1649, 0
  %1651 = and i32 %1650, 65535
  %1652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1651)  ; LegacyF16ToF32(value)
  %1653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1654 = extractvalue %dx.types.ResRet.i32 %1653, 0
  %1655 = and i32 %1654, 65535
  %1656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1655)  ; LegacyF16ToF32(value)
  %1657 = lshr i32 %1650, 16
  %1658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1657)  ; LegacyF16ToF32(value)
  %1659 = fsub fast float %1620, %1658
  %1660 = fmul fast float %1659, %1652
  %1661 = fadd fast float %1660, %1656
  %1662 = call float @dx.op.unary.f32(i32 7, float %1661)  ; Saturate(value)
  br label %1663

; <label>:1663                                    ; preds = %1647, %1595
  %1664 = phi float [ %1662, %1647 ], [ %1620, %1595 ]
  %1665 = call float @dx.op.dot2.f32(i32 54, float %1641, float %1642, float %1199, float %1200)  ; Dot2(ax,ay,bx,by)
  %1666 = call float @dx.op.dot2.f32(i32 54, float %1641, float %1642, float %1201, float %1202)  ; Dot2(ax,ay,bx,by)
  br label %1667

; <label>:1667                                    ; preds = %1663, %1573
  %1668 = phi float [ %1664, %1663 ], [ 0x3FD6666660000000, %1573 ]
  %1669 = phi float [ %1665, %1663 ], [ 0.000000e+00, %1573 ]
  %1670 = phi float [ %1666, %1663 ], [ 0.000000e+00, %1573 ]
  %1671 = phi float [ %1607, %1663 ], [ 1.000000e+00, %1573 ]
  %1672 = add i32 %42, 176
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = lshr i32 %1674, 22
  %1676 = shl nuw nsw i32 %1675, 5
  %1677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1676)  ; LegacyF16ToF32(value)
  %1678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1679 = extractvalue %dx.types.ResRet.i32 %1678, 0
  %1680 = and i32 %1679, 64
  %1681 = icmp eq i32 %1680, 0
  br i1 %1681, label %1715, label %1682

; <label>:1682                                    ; preds = %1667
  %1683 = add i32 %42, 444
  %1684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1683, i32 undef)  ; BufferLoad(srv,index,wot)
  %1685 = extractvalue %dx.types.ResRet.i32 %1684, 0
  %1686 = add i32 %1685, 0
  %1687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.i32 %1688, 0
  %1690 = and i32 %1689, 131072
  %1691 = icmp eq i32 %1690, 0
  %1692 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1687, %dx.types.Handle %93, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1693 = extractvalue %dx.types.ResRet.f32 %1692, 0
  %1694 = extractvalue %dx.types.ResRet.f32 %1692, 1
  %1695 = extractvalue %dx.types.ResRet.f32 %1692, 2
  %1696 = fmul fast float %1693, %328
  %1697 = fmul fast float %1694, %331
  %1698 = fmul fast float %1695, %334
  br i1 %1691, label %1705, label %1699

; <label>:1699                                    ; preds = %1682
  %1700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1701 = extractvalue %dx.types.CBufRet.f32 %1700, 0
  %1702 = fmul fast float %1701, %1696
  %1703 = fmul fast float %1701, %1697
  %1704 = fmul fast float %1701, %1698
  br label %1705

; <label>:1705                                    ; preds = %1699, %1682
  %1706 = phi float [ %1702, %1699 ], [ %1696, %1682 ]
  %1707 = phi float [ %1703, %1699 ], [ %1697, %1682 ]
  %1708 = phi float [ %1704, %1699 ], [ %1698, %1682 ]
  %1709 = fmul fast float %1706, %1677
  %1710 = select i1 %269, float %1709, float %1706
  %1711 = call float @dx.op.dot3.f32(i32 55, float %1710, float %1707, float %1708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1712 = select i1 %269, float 0.000000e+00, float %1706
  %1713 = select i1 %269, float %1711, float %1707
  %1714 = select i1 %269, float 0.000000e+00, float %1708
  br label %1715

; <label>:1715                                    ; preds = %1705, %1667
  %1716 = phi float [ %1712, %1705 ], [ 0.000000e+00, %1667 ]
  %1717 = phi float [ %1713, %1705 ], [ 0.000000e+00, %1667 ]
  %1718 = phi float [ %1714, %1705 ], [ 0.000000e+00, %1667 ]
  %1719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.i32 %1719, 0
  %1721 = and i32 %1720, 1024
  %1722 = icmp eq i32 %1721, 0
  br i1 %1722, label %1753, label %1723

; <label>:1723                                    ; preds = %1715
  %1724 = add i32 %42, 168
  %1725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1724, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.i32 %1725, 0
  %1727 = and i32 %1726, 255
  %1728 = uitofp i32 %1727 to float
  %1729 = fmul fast float %1728, 0x3F70101020000000
  %1730 = lshr i32 %1726, 8
  %1731 = and i32 %1730, 255
  %1732 = uitofp i32 %1731 to float
  %1733 = fmul fast float %1732, 0x3F70101020000000
  %1734 = lshr i32 %1726, 16
  %1735 = and i32 %1734, 255
  %1736 = uitofp i32 %1735 to float
  %1737 = fmul fast float %1736, 0x3F70101020000000
  %1738 = fmul fast float %1729, %1729
  %1739 = fmul fast float %1733, %1733
  %1740 = fmul fast float %1737, %1737
  %1741 = add i32 %42, 508
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = add i32 %1743, 0
  %1745 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1744, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1746 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1745, %dx.types.Handle %94, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1747 = extractvalue %dx.types.ResRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.ResRet.f32 %1746, 1
  %1749 = extractvalue %dx.types.ResRet.f32 %1746, 2
  %1750 = fmul fast float %1738, %1747
  %1751 = fmul fast float %1739, %1748
  %1752 = fmul fast float %1740, %1749
  br label %1753

; <label>:1753                                    ; preds = %1723, %1715
  %1754 = phi float [ %1750, %1723 ], [ 0.000000e+00, %1715 ]
  %1755 = phi float [ %1751, %1723 ], [ 0.000000e+00, %1715 ]
  %1756 = phi float [ %1752, %1723 ], [ 0.000000e+00, %1715 ]
  %1757 = fcmp fast ogt float %1754, 0.000000e+00
  %1758 = fcmp fast ogt float %1755, 0.000000e+00
  %1759 = fcmp fast ogt float %1756, 0.000000e+00
  %1760 = call float @dx.op.unary.f32(i32 23, float %1754)  ; Log(value)
  %1761 = call float @dx.op.unary.f32(i32 23, float %1755)  ; Log(value)
  %1762 = call float @dx.op.unary.f32(i32 23, float %1756)  ; Log(value)
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = lshr i32 %1764, 7
  %1766 = and i32 %1765, 32752
  %1767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1766)  ; LegacyF16ToF32(value)
  %1768 = fmul fast float %1760, 0xBFE62E4300000000
  %1769 = fmul fast float %1768, %1767
  %1770 = fmul fast float %1761, 0xBFE62E4300000000
  %1771 = fmul fast float %1770, %1767
  %1772 = fmul fast float %1762, 0xBFE62E4300000000
  %1773 = fmul fast float %1772, %1767
  %1774 = select i1 %1757, float %1769, float 1.270000e+02
  %1775 = select i1 %1758, float %1771, float 1.270000e+02
  %1776 = select i1 %1759, float %1773, float 1.270000e+02
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = and i32 %1778, 10240
  %1780 = icmp eq i32 %1779, 0
  br i1 %1780, label %1825, label %1781

; <label>:1781                                    ; preds = %1753
  %1782 = add i32 %42, 524
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = add i32 %1784, 0
  %1786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1785, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1787 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1786, %dx.types.Handle %94, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1788 = extractvalue %dx.types.ResRet.f32 %1787, 1
  %1789 = extractvalue %dx.types.ResRet.f32 %1787, 3
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = and i32 %1791, 1048576
  %1793 = icmp ne i32 %1792, 0
  %1794 = and i32 %1791, 8192
  %1795 = icmp eq i32 %1794, 0
  br i1 %1795, label %1811, label %1796

; <label>:1796                                    ; preds = %1781
  %1797 = extractvalue %dx.types.ResRet.f32 %1787, 2
  %1798 = select i1 %1793, float %1797, float %1788
  %1799 = extractvalue %dx.types.ResRet.f32 %1787, 0
  %1800 = select i1 %1793, float %1799, float %1788
  %1801 = add i32 %42, 112
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = lshr i32 %1803, 16
  %1805 = and i32 %1804, 255
  %1806 = uitofp i32 %1805 to float
  %1807 = fmul fast float %1806, 0x3F80101020000000
  %1808 = fmul fast float %1807, %1800
  %1809 = fmul fast float %1807, %1788
  %1810 = fmul fast float %1807, %1798
  br label %1811

; <label>:1811                                    ; preds = %1796, %1781
  %1812 = phi float [ %1808, %1796 ], [ 0.000000e+00, %1781 ]
  %1813 = phi float [ %1809, %1796 ], [ 0.000000e+00, %1781 ]
  %1814 = phi float [ %1810, %1796 ], [ 0.000000e+00, %1781 ]
  %1815 = and i32 %1791, 2048
  %1816 = icmp eq i32 %1815, 0
  br i1 %1816, label %1825, label %1817

; <label>:1817                                    ; preds = %1811
  %1818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.i32 %1818, 0
  %1820 = shl i32 %1819, 4
  %1821 = and i32 %1820, 32752
  %1822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1821)  ; LegacyF16ToF32(value)
  %1823 = fmul fast float %1822, %1789
  %1824 = call float @dx.op.binary.f32(i32 35, float %1823, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1825

; <label>:1825                                    ; preds = %1817, %1811, %1753
  %1826 = phi float [ %1812, %1817 ], [ %1812, %1811 ], [ 0.000000e+00, %1753 ]
  %1827 = phi float [ %1813, %1817 ], [ %1813, %1811 ], [ 0.000000e+00, %1753 ]
  %1828 = phi float [ %1814, %1817 ], [ %1814, %1811 ], [ 0.000000e+00, %1753 ]
  %1829 = phi float [ %1824, %1817 ], [ 0x3F70101020000000, %1811 ], [ 0x3F70101020000000, %1753 ]
  %1830 = add i32 %42, 112
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = and i32 %1832, 255
  %1834 = uitofp i32 %1833 to float
  %1835 = lshr i32 %1832, 8
  %1836 = and i32 %1835, 255
  %1837 = uitofp i32 %1836 to float
  %1838 = call float @dx.op.dot3.f32(i32 55, float %1588, float %1589, float %1590, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1839 = fmul fast float %1837, %1838
  %1840 = fadd fast float %1839, %1834
  %1841 = fmul fast float %1840, 0x3F70101020000000
  %1842 = call float @dx.op.unary.f32(i32 7, float %1841)  ; Saturate(value)
  br i1 %1187, label %1843, label %1878

; <label>:1843                                    ; preds = %1825
  %1844 = fmul fast float %1829, 2.000000e+00
  %1845 = fcmp fast olt float %1774, 1.270000e+02
  %1846 = fcmp fast olt float %1775, 1.270000e+02
  %1847 = fcmp fast olt float %1776, 1.270000e+02
  %1848 = fmul fast float %1774, 0xBFF7154760000000
  %1849 = fmul fast float %1848, %1844
  %1850 = fmul fast float %1775, 0xBFF7154760000000
  %1851 = fmul fast float %1850, %1844
  %1852 = fmul fast float %1776, 0xBFF7154760000000
  %1853 = fmul fast float %1852, %1844
  %1854 = call float @dx.op.unary.f32(i32 21, float %1849)  ; Exp(value)
  %1855 = call float @dx.op.unary.f32(i32 21, float %1851)  ; Exp(value)
  %1856 = call float @dx.op.unary.f32(i32 21, float %1853)  ; Exp(value)
  %1857 = call float @dx.op.unary.f32(i32 7, float %1854)  ; Saturate(value)
  %1858 = call float @dx.op.unary.f32(i32 7, float %1855)  ; Saturate(value)
  %1859 = call float @dx.op.unary.f32(i32 7, float %1856)  ; Saturate(value)
  %1860 = fadd fast float %1857, -1.000000e+00
  %1861 = select i1 %1845, float %1860, float -1.000000e+00
  %1862 = fadd fast float %1858, -1.000000e+00
  %1863 = select i1 %1846, float %1862, float -1.000000e+00
  %1864 = fadd fast float %1859, -1.000000e+00
  %1865 = select i1 %1847, float %1864, float -1.000000e+00
  %1866 = fmul fast float %1861, %1368
  %1867 = fmul fast float %1863, %1368
  %1868 = fmul fast float %1865, %1368
  %1869 = fadd fast float %1866, 1.000000e+00
  %1870 = fadd fast float %1867, 1.000000e+00
  %1871 = fadd fast float %1868, 1.000000e+00
  %1872 = fmul fast float %1869, %1168
  %1873 = fmul fast float %1870, %1169
  %1874 = fmul fast float %1871, %1170
  %1875 = fmul fast float %1869, %1171
  %1876 = fmul fast float %1870, %1172
  %1877 = fmul fast float %1871, %1173
  br label %1878

; <label>:1878                                    ; preds = %1843, %1825
  %1879 = phi float [ %1872, %1843 ], [ %1168, %1825 ]
  %1880 = phi float [ %1873, %1843 ], [ %1169, %1825 ]
  %1881 = phi float [ %1874, %1843 ], [ %1170, %1825 ]
  %1882 = phi float [ %1875, %1843 ], [ %1171, %1825 ]
  %1883 = phi float [ %1876, %1843 ], [ %1172, %1825 ]
  %1884 = phi float [ %1877, %1843 ], [ %1173, %1825 ]
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = and i32 %1886, 3
  %1888 = icmp eq i32 %1887, 3
  br i1 %1888, label %1967, label %1889

; <label>:1889                                    ; preds = %1878
  %1890 = and i32 %1886, 16
  %1891 = icmp ne i32 %1890, 0
  %1892 = select i1 %1891, float %1368, float 0.000000e+00
  %1893 = icmp eq i32 %1887, 0
  br i1 %1893, label %1894, label %1922

; <label>:1894                                    ; preds = %1889
  %1895 = and i32 %1886, 64
  %1896 = icmp ne i32 %1895, 0
  %1897 = select i1 %1896, float %1368, float 0.000000e+00
  %1898 = fsub fast float %1588, %1879
  %1899 = fsub fast float %1589, %1880
  %1900 = fsub fast float %1590, %1881
  %1901 = fmul fast float %1892, %1898
  %1902 = fmul fast float %1892, %1899
  %1903 = fmul fast float %1892, %1900
  %1904 = fadd fast float %1901, %1879
  %1905 = fadd fast float %1902, %1880
  %1906 = fadd fast float %1903, %1881
  %1907 = fsub fast float %1574, %1180
  %1908 = fmul fast float %1892, %1907
  %1909 = fadd fast float %1908, %1180
  %1910 = fsub fast float %1716, %1882
  %1911 = fsub fast float %1717, %1883
  %1912 = fsub fast float %1718, %1884
  %1913 = fmul fast float %1897, %1910
  %1914 = fmul fast float %1897, %1911
  %1915 = fmul fast float %1897, %1912
  %1916 = fadd fast float %1913, %1882
  %1917 = fadd fast float %1914, %1883
  %1918 = fadd fast float %1915, %1884
  %1919 = fsub fast float %1842, %1185
  %1920 = fmul fast float %1892, %1919
  %1921 = fadd fast float %1920, %1185
  br label %1967

; <label>:1922                                    ; preds = %1889
  %1923 = icmp eq i32 %1887, 1
  br i1 %1923, label %1924, label %1937

; <label>:1924                                    ; preds = %1922
  %1925 = fadd fast float %1588, -1.000000e+00
  %1926 = fadd fast float %1589, -1.000000e+00
  %1927 = fadd fast float %1590, -1.000000e+00
  %1928 = fmul fast float %1892, %1925
  %1929 = fmul fast float %1892, %1926
  %1930 = fmul fast float %1892, %1927
  %1931 = fadd fast float %1928, 1.000000e+00
  %1932 = fadd fast float %1929, 1.000000e+00
  %1933 = fadd fast float %1930, 1.000000e+00
  %1934 = fmul fast float %1931, %1879
  %1935 = fmul fast float %1932, %1880
  %1936 = fmul fast float %1933, %1881
  br label %1967

; <label>:1937                                    ; preds = %1922
  %1938 = icmp eq i32 %1887, 2
  br i1 %1938, label %1939, label %1967

; <label>:1939                                    ; preds = %1937
  %1940 = call float @dx.op.unary.f32(i32 24, float %1588)  ; Sqrt(value)
  %1941 = call float @dx.op.unary.f32(i32 24, float %1589)  ; Sqrt(value)
  %1942 = call float @dx.op.unary.f32(i32 24, float %1590)  ; Sqrt(value)
  %1943 = fadd fast float %1940, -5.000000e-01
  %1944 = fadd fast float %1941, -5.000000e-01
  %1945 = fadd fast float %1942, -5.000000e-01
  %1946 = fmul fast float %1943, %1892
  %1947 = fmul fast float %1944, %1892
  %1948 = fmul fast float %1945, %1892
  %1949 = fadd fast float %1946, 5.000000e-01
  %1950 = fadd fast float %1947, 5.000000e-01
  %1951 = fadd fast float %1948, 5.000000e-01
  %1952 = fmul fast float %1949, 2.000000e+00
  %1953 = fsub fast float 1.000000e+00, %1952
  %1954 = fmul fast float %1953, %1879
  %1955 = fadd fast float %1954, %1952
  %1956 = fmul fast float %1955, %1879
  %1957 = fmul fast float %1950, 2.000000e+00
  %1958 = fsub fast float 1.000000e+00, %1957
  %1959 = fmul fast float %1958, %1880
  %1960 = fadd fast float %1959, %1957
  %1961 = fmul fast float %1960, %1880
  %1962 = fmul fast float %1951, 2.000000e+00
  %1963 = fsub fast float 1.000000e+00, %1962
  %1964 = fmul fast float %1963, %1881
  %1965 = fadd fast float %1964, %1962
  %1966 = fmul fast float %1965, %1881
  br label %1967

; <label>:1967                                    ; preds = %1939, %1937, %1924, %1894, %1878
  %1968 = phi float [ %1879, %1878 ], [ %1956, %1939 ], [ %1879, %1937 ], [ %1934, %1924 ], [ %1904, %1894 ]
  %1969 = phi float [ %1880, %1878 ], [ %1961, %1939 ], [ %1880, %1937 ], [ %1935, %1924 ], [ %1905, %1894 ]
  %1970 = phi float [ %1881, %1878 ], [ %1966, %1939 ], [ %1881, %1937 ], [ %1936, %1924 ], [ %1906, %1894 ]
  %1971 = phi float [ %1882, %1878 ], [ %1882, %1939 ], [ %1882, %1937 ], [ %1882, %1924 ], [ %1916, %1894 ]
  %1972 = phi float [ %1883, %1878 ], [ %1883, %1939 ], [ %1883, %1937 ], [ %1883, %1924 ], [ %1917, %1894 ]
  %1973 = phi float [ %1884, %1878 ], [ %1884, %1939 ], [ %1884, %1937 ], [ %1884, %1924 ], [ %1918, %1894 ]
  %1974 = phi float [ %1180, %1878 ], [ %1180, %1939 ], [ %1180, %1937 ], [ %1180, %1924 ], [ %1909, %1894 ]
  %1975 = phi float [ %1185, %1878 ], [ %1185, %1939 ], [ %1185, %1937 ], [ %1185, %1924 ], [ %1921, %1894 ]
  %1976 = and i32 %1886, 12
  %1977 = icmp eq i32 %1976, 12
  br i1 %1977, label %2108, label %1978

; <label>:1978                                    ; preds = %1967
  %1979 = and i32 %1886, 2097184
  %1980 = icmp eq i32 %1979, 2097184
  %1981 = select i1 %1980, float %1368, float 0.000000e+00
  %1982 = and i32 %1886, 4194336
  %1983 = icmp eq i32 %1982, 4194336
  %1984 = select i1 %1983, float %1368, float 0.000000e+00
  %1985 = and i32 %1886, 8388640
  %1986 = icmp eq i32 %1985, 8388640
  %1987 = select i1 %1986, float %1368, float 0.000000e+00
  %1988 = and i32 %1886, 1024
  %1989 = icmp ne i32 %1988, 0
  %1990 = select i1 %1989, float %1368, float 0.000000e+00
  %1991 = and i32 %1886, 2048
  %1992 = icmp ne i32 %1991, 0
  %1993 = select i1 %1992, float %1368, float 0.000000e+00
  %1994 = and i32 %1886, 8192
  %1995 = icmp ne i32 %1994, 0
  %1996 = select i1 %1995, float %1368, float 0.000000e+00
  %1997 = icmp eq i32 %1976, 0
  br i1 %1997, label %1998, label %2032

; <label>:1998                                    ; preds = %1978
  %1999 = fsub fast float %1669, %1166
  %2000 = fsub fast float %1670, %1167
  %2001 = fmul fast float %1981, %1999
  %2002 = fmul fast float %1981, %2000
  %2003 = fadd fast float %2001, %1166
  %2004 = fadd fast float %2002, %1167
  %2005 = fsub fast float %1671, %1183
  %2006 = fmul fast float %1984, %2005
  %2007 = fadd fast float %2006, %1183
  %2008 = fsub fast float %1668, %1182
  %2009 = fmul fast float %1987, %2008
  %2010 = fadd fast float %2009, %1182
  %2011 = fsub fast float %1774, %1177
  %2012 = fsub fast float %1775, %1178
  %2013 = fsub fast float %1776, %1179
  %2014 = fmul fast float %1990, %2011
  %2015 = fmul fast float %1990, %2012
  %2016 = fmul fast float %1990, %2013
  %2017 = fadd fast float %2014, %1177
  %2018 = fadd fast float %2015, %1178
  %2019 = fadd fast float %2016, %1179
  %2020 = fsub fast float %1829, %1184
  %2021 = fmul fast float %1993, %2020
  %2022 = fadd fast float %2021, %1184
  %2023 = fsub fast float %1826, %1174
  %2024 = fsub fast float %1827, %1175
  %2025 = fsub fast float %1828, %1176
  %2026 = fmul fast float %1996, %2023
  %2027 = fmul fast float %1996, %2024
  %2028 = fmul fast float %1996, %2025
  %2029 = fadd fast float %2026, %1174
  %2030 = fadd fast float %2027, %1175
  %2031 = fadd fast float %2028, %1176
  br label %2108

; <label>:2032                                    ; preds = %1978
  %2033 = icmp eq i32 %1976, 4
  br i1 %2033, label %2034, label %2080

; <label>:2034                                    ; preds = %2032
  %2035 = fmul fast float %1981, %1669
  %2036 = fmul fast float %1981, %1670
  %2037 = fadd fast float %2035, %1166
  %2038 = fadd fast float %2036, %1167
  %2039 = call float @dx.op.binary.f32(i32 36, float %1183, float %1671)  ; FMin(a,b)
  %2040 = fsub fast float %2039, %1183
  %2041 = fmul fast float %2040, %1984
  %2042 = fadd fast float %2041, %1183
  %2043 = fadd fast float %1668, %1182
  %2044 = fmul fast float %2043, 0x3FF337FAE0000000
  %2045 = fmul fast float %1182, %1182
  %2046 = fmul fast float %1668, %1668
  %2047 = fadd fast float %2046, %2045
  %2048 = fmul fast float %2047, 0x3FE5152B00000000
  %2049 = fmul fast float %1182, 0xBFCC1F85E0000000
  %2050 = fmul fast float %2049, %1668
  %2051 = fadd fast float %2050, 0xBFE1363700000000
  %2052 = fadd fast float %2051, %2044
  %2053 = fsub fast float %2052, %2048
  %2054 = fmul fast float %2043, 0x3FBA6F0D00000000
  %2055 = fmul fast float %2047, 0x3FD0432880000000
  %2056 = fmul fast float %1182, 0xBFEF110800000000
  %2057 = fmul fast float %2056, %1668
  %2058 = fadd fast float %2057, 1.000000e+00
  %2059 = fsub fast float %2058, %2054
  %2060 = fadd fast float %2059, %2055
  %2061 = fdiv fast float %2053, %2060
  %2062 = call float @dx.op.unary.f32(i32 7, float %2061)  ; Saturate(value)
  %2063 = fsub fast float %2062, %1182
  %2064 = fmul fast float %2063, %1987
  %2065 = fadd fast float %2064, %1182
  %2066 = fmul fast float %1990, %1774
  %2067 = fmul fast float %1990, %1775
  %2068 = fmul fast float %1990, %1776
  %2069 = fadd fast float %2066, %1177
  %2070 = fadd fast float %2067, %1178
  %2071 = fadd fast float %2068, %1179
  %2072 = fmul fast float %1993, %1829
  %2073 = fadd fast float %2072, %1184
  %2074 = fmul fast float %1996, %1826
  %2075 = fmul fast float %1996, %1827
  %2076 = fmul fast float %1996, %1828
  %2077 = fadd fast float %2074, %1174
  %2078 = fadd fast float %2075, %1175
  %2079 = fadd fast float %2076, %1176
  br label %2108

; <label>:2080                                    ; preds = %2032
  %2081 = icmp eq i32 %1976, 8
  br i1 %2081, label %2082, label %2108

; <label>:2082                                    ; preds = %2080
  %2083 = fmul fast float %1981, %1669
  %2084 = fmul fast float %1981, %1670
  %2085 = fadd fast float %2083, %1166
  %2086 = fadd fast float %2084, %1167
  %2087 = call float @dx.op.binary.f32(i32 36, float %1183, float %1671)  ; FMin(a,b)
  %2088 = fsub fast float %2087, %1183
  %2089 = fmul fast float %2088, %1984
  %2090 = fadd fast float %2089, %1183
  %2091 = fsub fast float %1668, %1182
  %2092 = fmul fast float %1987, %2091
  %2093 = fadd fast float %2092, %1182
  %2094 = fmul fast float %1990, %1774
  %2095 = fmul fast float %1990, %1775
  %2096 = fmul fast float %1990, %1776
  %2097 = fadd fast float %2094, %1177
  %2098 = fadd fast float %2095, %1178
  %2099 = fadd fast float %2096, %1179
  %2100 = fmul fast float %1993, %1829
  %2101 = fadd fast float %2100, %1184
  %2102 = fmul fast float %1996, %1826
  %2103 = fmul fast float %1996, %1827
  %2104 = fmul fast float %1996, %1828
  %2105 = fadd fast float %2102, %1174
  %2106 = fadd fast float %2103, %1175
  %2107 = fadd fast float %2104, %1176
  br label %2108

; <label>:2108                                    ; preds = %2082, %2080, %2034, %1998, %1967, %1367, %1186, %1165
  %2109 = phi float [ %1166, %1967 ], [ %1166, %1367 ], [ %1166, %1165 ], [ %2085, %2082 ], [ %1166, %2080 ], [ %2037, %2034 ], [ %2003, %1998 ], [ %1166, %1186 ]
  %2110 = phi float [ %1167, %1967 ], [ %1167, %1367 ], [ %1167, %1165 ], [ %2086, %2082 ], [ %1167, %2080 ], [ %2038, %2034 ], [ %2004, %1998 ], [ %1167, %1186 ]
  %2111 = phi float [ %1968, %1967 ], [ %1168, %1367 ], [ %1168, %1165 ], [ %1968, %2082 ], [ %1968, %2080 ], [ %1968, %2034 ], [ %1968, %1998 ], [ %1168, %1186 ]
  %2112 = phi float [ %1969, %1967 ], [ %1169, %1367 ], [ %1169, %1165 ], [ %1969, %2082 ], [ %1969, %2080 ], [ %1969, %2034 ], [ %1969, %1998 ], [ %1169, %1186 ]
  %2113 = phi float [ %1970, %1967 ], [ %1170, %1367 ], [ %1170, %1165 ], [ %1970, %2082 ], [ %1970, %2080 ], [ %1970, %2034 ], [ %1970, %1998 ], [ %1170, %1186 ]
  %2114 = phi float [ %1971, %1967 ], [ %1171, %1367 ], [ %1171, %1165 ], [ %1971, %2082 ], [ %1971, %2080 ], [ %1971, %2034 ], [ %1971, %1998 ], [ %1171, %1186 ]
  %2115 = phi float [ %1972, %1967 ], [ %1172, %1367 ], [ %1172, %1165 ], [ %1972, %2082 ], [ %1972, %2080 ], [ %1972, %2034 ], [ %1972, %1998 ], [ %1172, %1186 ]
  %2116 = phi float [ %1973, %1967 ], [ %1173, %1367 ], [ %1173, %1165 ], [ %1973, %2082 ], [ %1973, %2080 ], [ %1973, %2034 ], [ %1973, %1998 ], [ %1173, %1186 ]
  %2117 = phi float [ %1174, %1967 ], [ %1174, %1367 ], [ %1174, %1165 ], [ %2105, %2082 ], [ %1174, %2080 ], [ %2077, %2034 ], [ %2029, %1998 ], [ %1174, %1186 ]
  %2118 = phi float [ %1175, %1967 ], [ %1175, %1367 ], [ %1175, %1165 ], [ %2106, %2082 ], [ %1175, %2080 ], [ %2078, %2034 ], [ %2030, %1998 ], [ %1175, %1186 ]
  %2119 = phi float [ %1176, %1967 ], [ %1176, %1367 ], [ %1176, %1165 ], [ %2107, %2082 ], [ %1176, %2080 ], [ %2079, %2034 ], [ %2031, %1998 ], [ %1176, %1186 ]
  %2120 = phi float [ %1177, %1967 ], [ %1177, %1367 ], [ %1177, %1165 ], [ %2097, %2082 ], [ %1177, %2080 ], [ %2069, %2034 ], [ %2017, %1998 ], [ %1177, %1186 ]
  %2121 = phi float [ %1178, %1967 ], [ %1178, %1367 ], [ %1178, %1165 ], [ %2098, %2082 ], [ %1178, %2080 ], [ %2070, %2034 ], [ %2018, %1998 ], [ %1178, %1186 ]
  %2122 = phi float [ %1179, %1967 ], [ %1179, %1367 ], [ %1179, %1165 ], [ %2099, %2082 ], [ %1179, %2080 ], [ %2071, %2034 ], [ %2019, %1998 ], [ %1179, %1186 ]
  %2123 = phi float [ %1974, %1967 ], [ %1180, %1367 ], [ %1180, %1165 ], [ %1974, %2082 ], [ %1974, %2080 ], [ %1974, %2034 ], [ %1974, %1998 ], [ %1180, %1186 ]
  %2124 = phi float [ %1182, %1967 ], [ %1182, %1367 ], [ %1182, %1165 ], [ %2093, %2082 ], [ %1182, %2080 ], [ %2065, %2034 ], [ %2010, %1998 ], [ %1182, %1186 ]
  %2125 = phi float [ %1183, %1967 ], [ %1183, %1367 ], [ %1183, %1165 ], [ %2090, %2082 ], [ %1183, %2080 ], [ %2042, %2034 ], [ %2007, %1998 ], [ %1183, %1186 ]
  %2126 = phi float [ %1184, %1967 ], [ %1184, %1367 ], [ %1184, %1165 ], [ %2101, %2082 ], [ %1184, %2080 ], [ %2073, %2034 ], [ %2022, %1998 ], [ %1184, %1186 ]
  %2127 = phi float [ %1975, %1967 ], [ %1185, %1367 ], [ %1185, %1165 ], [ %1975, %2082 ], [ %1975, %2080 ], [ %1975, %2034 ], [ %1975, %1998 ], [ %1185, %1186 ]
  br i1 %455, label %3050, label %2128

; <label>:2128                                    ; preds = %2108
  %2129 = icmp ult i32 %511, 3
  %2130 = add i32 %42, 56
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = add i32 %42, 60
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = or i32 %2135, %2132
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %3050, label %2138

; <label>:2138                                    ; preds = %2128
  %2139 = and i32 %2132, 262144
  %2140 = icmp ne i32 %2139, 0
  %2141 = select i1 %2140, float %47, float 1.000000e+00
  %2142 = select i1 %2140, float %48, float 0.000000e+00
  %2143 = select i1 %2140, float %49, float 0.000000e+00
  %2144 = select i1 %2140, float %50, float 1.000000e+00
  %2145 = select i1 %2140, float %51, float %79
  %2146 = select i1 %2140, float %52, float %80
  %2147 = add i32 %42, 316
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = lshr i32 %2149, 16
  %2151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2150)  ; LegacyF16ToF32(value)
  %2152 = fmul fast float %2151, 0x3F50624DE0000000
  %2153 = add i32 %42, 120
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = lshr i32 %2155, 16
  %2157 = and i32 %2156, 255
  %2158 = lshr i32 %2155, 24
  %2159 = add i32 %42, 324
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = and i32 %2161, 65535
  %2163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2162)  ; LegacyF16ToF32(value)
  %2164 = lshr i32 %2161, 16
  %2165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2164)  ; LegacyF16ToF32(value)
  %2166 = add i32 %42, 64
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2166, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = lshr i32 %2168, 22
  %2170 = shl nuw nsw i32 %2169, 5
  %2171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2170)  ; LegacyF16ToF32(value)
  %2172 = shl i32 %2168, 4
  %2173 = and i32 %2172, 32752
  %2174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2173)  ; LegacyF16ToF32(value)
  %2175 = lshr i32 %2168, 7
  %2176 = and i32 %2175, 32752
  %2177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2176)  ; LegacyF16ToF32(value)
  %2178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2179 = extractvalue %dx.types.CBufRet.f32 %2178, 3
  %2180 = fmul fast float %2179, 1.000000e+03
  %2181 = fmul fast float %405, %2180
  %2182 = call float @dx.op.unary.f32(i32 22, float %2181)  ; Frc(value)
  %2183 = fadd fast float %2182, %395
  %2184 = fmul fast float %406, %2180
  %2185 = call float @dx.op.unary.f32(i32 22, float %2184)  ; Frc(value)
  %2186 = fadd fast float %2185, %397
  %2187 = fmul fast float %2152, %2180
  %2188 = call float @dx.op.unary.f32(i32 22, float %2187)  ; Frc(value)
  %2189 = fmul fast float %2188, 0x401921FB60000000
  %2190 = fadd fast float %2189, %2171
  %2191 = call float @dx.op.unary.f32(i32 13, float %2190)  ; Sin(value)
  %2192 = call float @dx.op.unary.f32(i32 12, float %2190)  ; Cos(value)
  %2193 = fsub fast float -0.000000e+00, %2191
  %2194 = fadd fast float %2145, -5.000000e-01
  %2195 = fadd fast float %2146, -5.000000e-01
  %2196 = fmul fast float %2163, %2194
  %2197 = fmul fast float %2165, %2195
  %2198 = fadd fast float %2196, 5.000000e-01
  %2199 = fadd fast float %2197, 5.000000e-01
  %2200 = fmul fast float %2174, %2198
  %2201 = fmul fast float %2177, %2199
  %2202 = fmul fast float %2192, %2200
  %2203 = call float @dx.op.tertiary.f32(i32 46, float %2193, float %2201, float %2202)  ; FMad(a,b,c)
  %2204 = fmul fast float %2191, %2200
  %2205 = call float @dx.op.tertiary.f32(i32 46, float %2192, float %2201, float %2204)  ; FMad(a,b,c)
  %2206 = fadd fast float %2183, %2203
  %2207 = fadd fast float %2186, %2205
  %2208 = icmp ugt i32 %2157, 1
  %2209 = icmp ugt i32 %2155, 33554431
  %2210 = or i1 %2209, %2208
  br i1 %2210, label %2211, label %2236

; <label>:2211                                    ; preds = %2138
  %2212 = add i32 %42, 260
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = lshr i32 %2214, 16
  %2216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2215)  ; LegacyF16ToF32(value)
  %2217 = fmul fast float %2179, %2216
  %2218 = call float @dx.op.unary.f32(i32 22, float %2217)  ; Frc(value)
  %2219 = mul nuw nsw i32 %2157, %2158
  %2220 = uitofp i32 %2219 to float
  %2221 = fmul fast float %2218, %2220
  %2222 = call float @dx.op.unary.f32(i32 27, float %2221)  ; Round_ni(value)
  %2223 = fptoui float %2222 to i32
  %2224 = urem i32 %2223, %2157
  %2225 = udiv i32 %2223, %2158
  %2226 = call float @dx.op.unary.f32(i32 22, float %2206)  ; Frc(value)
  %2227 = call float @dx.op.unary.f32(i32 22, float %2207)  ; Frc(value)
  %2228 = uitofp i32 %2224 to float
  %2229 = uitofp i32 %2225 to float
  %2230 = fadd fast float %2226, %2228
  %2231 = fadd fast float %2227, %2229
  %2232 = uitofp i32 %2157 to float
  %2233 = uitofp i32 %2158 to float
  %2234 = fdiv fast float %2230, %2232
  %2235 = fdiv fast float %2231, %2233
  br label %2236

; <label>:2236                                    ; preds = %2211, %2138
  %2237 = phi float [ %2234, %2211 ], [ %2206, %2138 ]
  %2238 = phi float [ %2235, %2211 ], [ %2207, %2138 ]
  %2239 = and i32 %2132, 256
  %2240 = icmp eq i32 %2239, 0
  br i1 %2240, label %2287, label %2241

; <label>:2241                                    ; preds = %2236
  %2242 = add i32 %42, 480
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = add i32 %2244, 0
  %2246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2246, %dx.types.Handle %94, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2248 = extractvalue %dx.types.ResRet.f32 %2247, 0
  %2249 = add i32 %42, 132
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = shl i32 %2251, 4
  %2253 = and i32 %2252, 32752
  %2254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2253)  ; LegacyF16ToF32(value)
  %2255 = lshr i32 %2251, 7
  %2256 = and i32 %2255, 32752
  %2257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2256)  ; LegacyF16ToF32(value)
  %2258 = fsub fast float 1.000000e+00, %507
  %2259 = call float @dx.op.binary.f32(i32 35, float %2258, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2260 = bitcast float %507 to i32
  %2261 = sitofp i32 %2260 to float
  %2262 = fadd fast float %2261, 0xC1CFBF8940000000
  %2263 = fmul fast float %2257, %2262
  %2264 = fadd fast float %2263, 0x41CFBF8940000000
  %2265 = fptosi float %2264 to i32
  %2266 = bitcast i32 %2265 to float
  %2267 = bitcast float %2259 to i32
  %2268 = sitofp i32 %2267 to float
  %2269 = fadd fast float %2268, 0xC1CFBF8940000000
  %2270 = fmul fast float %2269, %2257
  %2271 = fadd fast float %2270, 0x41CFBF8940000000
  %2272 = fptosi float %2271 to i32
  %2273 = bitcast i32 %2272 to float
  %2274 = fmul fast float %2266, %2254
  %2275 = fmul fast float %2273, %2254
  %2276 = fsub fast float %2259, %2274
  %2277 = fadd fast float %2275, %2259
  %2278 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2279 = call float @dx.op.unary.f32(i32 7, float %2277)  ; Saturate(value)
  %2280 = fsub fast float %2248, %2278
  %2281 = fsub fast float %2279, %2278
  %2282 = bitcast float %2281 to i32
  %2283 = sub nsw i32 2129859010, %2282
  %2284 = bitcast i32 %2283 to float
  %2285 = fmul fast float %2284, %2280
  %2286 = call float @dx.op.unary.f32(i32 7, float %2285)  ; Saturate(value)
  br label %2287

; <label>:2287                                    ; preds = %2241, %2236
  %2288 = phi float [ %2286, %2241 ], [ %507, %2236 ]
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = and i32 %2290, 128
  %2292 = icmp eq i32 %2291, 0
  br i1 %2292, label %2309, label %2293

; <label>:2293                                    ; preds = %2287
  %2294 = add i32 %42, 464
  %2295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2296 = extractvalue %dx.types.ResRet.i32 %2295, 0
  %2297 = add i32 %2296, 0
  %2298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2297, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2299 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2298, %dx.types.Handle %94, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2300 = extractvalue %dx.types.ResRet.f32 %2299, 0
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = and i32 %2302, 524288
  %2304 = icmp ne i32 %2303, 0
  %2305 = fcmp fast ogt float %2300, 0x3FE0101020000000
  %2306 = select i1 %2305, float 1.000000e+00, float 0.000000e+00
  %2307 = select i1 %2304, float %2306, float %2300
  %2308 = fmul fast float %2307, %2288
  br label %2309

; <label>:2309                                    ; preds = %2293, %2287
  %2310 = phi float [ %2308, %2293 ], [ %2288, %2287 ]
  %2311 = fcmp fast ult float %2310, 0x3F70101020000000
  br i1 %2311, label %3050, label %2312

; <label>:2312                                    ; preds = %2309
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 16
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %2515, label %2317

; <label>:2317                                    ; preds = %2312
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = add i32 %42, 416
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = add i32 %2322, 0
  %2324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2325 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2324, %dx.types.Handle %93, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2326 = extractvalue %dx.types.ResRet.f32 %2325, 0
  %2327 = extractvalue %dx.types.ResRet.f32 %2325, 1
  %2328 = extractvalue %dx.types.ResRet.f32 %2325, 2
  %2329 = extractvalue %dx.types.ResRet.f32 %2325, 3
  %2330 = and i32 %2319, 255
  %2331 = uitofp i32 %2330 to float
  %2332 = lshr i32 %2319, 8
  %2333 = and i32 %2332, 255
  %2334 = uitofp i32 %2333 to float
  %2335 = fmul fast float %2329, %2331
  %2336 = fadd fast float %2335, %2334
  %2337 = fmul fast float %2336, 0x3F70101000000000
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 512
  %2341 = icmp eq i32 %2340, 0
  br i1 %2341, label %2350, label %2342

; <label>:2342                                    ; preds = %2317
  %2343 = add i32 %42, 496
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = add i32 %2345, 0
  %2347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2346, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2348 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2347, %dx.types.Handle %94, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2349 = extractvalue %dx.types.ResRet.f32 %2348, 0
  br label %2350

; <label>:2350                                    ; preds = %2342, %2317
  %2351 = phi float [ %2349, %2342 ], [ 1.000000e+00, %2317 ]
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = and i32 %2353, 33554432
  %2355 = icmp eq i32 %2354, 0
  br i1 %2355, label %2462, label %2356

; <label>:2356                                    ; preds = %2350
  %2357 = add i32 %42, 256
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = and i32 %2359, 65535
  %2361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2360)  ; LegacyF16ToF32(value)
  %2362 = lshr i32 %2359, 16
  %2363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2362)  ; LegacyF16ToF32(value)
  %2364 = add i32 %42, 260
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = and i32 %2366, 65535
  %2368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2367)  ; LegacyF16ToF32(value)
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2385 = add i32 %42, 252
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = lshr i32 %2387, 24
  %2389 = uitofp i32 %2388 to float
  %2390 = fmul fast float %2389, 0x3F70101020000000
  %2391 = and i32 %2387, 255
  %2392 = uitofp i32 %2391 to float
  %2393 = fmul fast float %2392, 0x3F70101020000000
  %2394 = lshr i32 %2387, 8
  %2395 = and i32 %2394, 255
  %2396 = uitofp i32 %2395 to float
  %2397 = fmul fast float %2396, 0x3F70101020000000
  %2398 = lshr i32 %2387, 16
  %2399 = and i32 %2398, 255
  %2400 = uitofp i32 %2399 to float
  %2401 = fmul fast float %2400, 0x3F70101020000000
  %2402 = bitcast float %2326 to i32
  %2403 = ashr i32 %2402, 1
  %2404 = sub nsw i32 1597463174, %2403
  %2405 = bitcast i32 %2404 to float
  %2406 = fmul fast float %2326, 5.000000e-01
  %2407 = fmul fast float %2405, %2405
  %2408 = fmul fast float %2407, %2406
  %2409 = fsub fast float 1.500000e+00, %2408
  %2410 = fmul fast float %2405, %2326
  %2411 = fmul fast float %2410, %2409
  %2412 = bitcast float %2327 to i32
  %2413 = ashr i32 %2412, 1
  %2414 = sub nsw i32 1597463174, %2413
  %2415 = bitcast i32 %2414 to float
  %2416 = fmul fast float %2327, 5.000000e-01
  %2417 = fmul fast float %2415, %2415
  %2418 = fmul fast float %2417, %2416
  %2419 = fsub fast float 1.500000e+00, %2418
  %2420 = fmul fast float %2415, %2327
  %2421 = fmul fast float %2420, %2419
  %2422 = bitcast float %2328 to i32
  %2423 = ashr i32 %2422, 1
  %2424 = sub nsw i32 1597463174, %2423
  %2425 = bitcast i32 %2424 to float
  %2426 = fmul fast float %2328, 5.000000e-01
  %2427 = fmul fast float %2425, %2425
  %2428 = fmul fast float %2427, %2426
  %2429 = fsub fast float 1.500000e+00, %2428
  %2430 = fmul fast float %2425, %2328
  %2431 = fmul fast float %2430, %2429
  %2432 = fsub fast float %2411, %2393
  %2433 = fsub fast float %2421, %2397
  %2434 = fsub fast float %2431, %2401
  %2435 = fmul fast float %2432, %2361
  %2436 = fmul fast float %2433, %2363
  %2437 = fmul fast float %2434, %2368
  %2438 = fadd fast float %2435, %2376
  %2439 = fadd fast float %2436, %2380
  %2440 = fadd fast float %2437, %2384
  %2441 = call float @dx.op.unary.f32(i32 7, float %2438)  ; Saturate(value)
  %2442 = call float @dx.op.unary.f32(i32 7, float %2439)  ; Saturate(value)
  %2443 = call float @dx.op.unary.f32(i32 7, float %2440)  ; Saturate(value)
  %2444 = fmul fast float %2441, %2441
  %2445 = fmul fast float %2442, %2442
  %2446 = fmul fast float %2443, %2443
  %2447 = fsub fast float %2444, %2326
  %2448 = fsub fast float %2445, %2327
  %2449 = fsub fast float %2446, %2328
  %2450 = fmul fast float %2447, %2351
  %2451 = fmul fast float %2448, %2351
  %2452 = fmul fast float %2449, %2351
  %2453 = fadd fast float %2450, %2326
  %2454 = fadd fast float %2451, %2327
  %2455 = fadd fast float %2452, %2328
  %2456 = fadd fast float %2373, %2337
  %2457 = fsub fast float %2456, %2390
  %2458 = call float @dx.op.unary.f32(i32 7, float %2457)  ; Saturate(value)
  %2459 = fsub fast float %2458, %2337
  %2460 = fmul fast float %2459, %2351
  %2461 = fadd fast float %2460, %2337
  br label %2515

; <label>:2462                                    ; preds = %2350
  %2463 = and i32 %2353, 134217728
  %2464 = icmp eq i32 %2463, 0
  br i1 %2464, label %2499, label %2465

; <label>:2465                                    ; preds = %2462
  %2466 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %2467 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %2468 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %2469 = fadd fast float %2466, -5.000000e-01
  %2470 = fadd fast float %2467, -5.000000e-01
  %2471 = fadd fast float %2468, -5.000000e-01
  %2472 = fmul fast float %2469, %2351
  %2473 = fmul fast float %2470, %2351
  %2474 = fmul fast float %2471, %2351
  %2475 = fadd fast float %2472, 5.000000e-01
  %2476 = fadd fast float %2473, 5.000000e-01
  %2477 = fadd fast float %2474, 5.000000e-01
  %2478 = call float @dx.op.unary.f32(i32 24, float %2326)  ; Sqrt(value)
  %2479 = call float @dx.op.unary.f32(i32 24, float %2327)  ; Sqrt(value)
  %2480 = call float @dx.op.unary.f32(i32 24, float %2328)  ; Sqrt(value)
  %2481 = fmul fast float %2475, 2.000000e+00
  %2482 = fsub fast float 1.000000e+00, %2481
  %2483 = fmul fast float %2482, %2478
  %2484 = fadd fast float %2483, %2481
  %2485 = fmul fast float %2484, %2478
  %2486 = fmul fast float %2476, 2.000000e+00
  %2487 = fsub fast float 1.000000e+00, %2486
  %2488 = fmul fast float %2487, %2479
  %2489 = fadd fast float %2488, %2486
  %2490 = fmul fast float %2489, %2479
  %2491 = fmul fast float %2477, 2.000000e+00
  %2492 = fsub fast float 1.000000e+00, %2491
  %2493 = fmul fast float %2492, %2480
  %2494 = fadd fast float %2493, %2491
  %2495 = fmul fast float %2494, %2480
  %2496 = fmul fast float %2485, %2485
  %2497 = fmul fast float %2490, %2490
  %2498 = fmul fast float %2495, %2495
  br label %2515

; <label>:2499                                    ; preds = %2462
  %2500 = fmul fast float %382, %382
  %2501 = fmul fast float %386, %386
  %2502 = fmul fast float %390, %390
  %2503 = fadd fast float %2500, -1.000000e+00
  %2504 = fadd fast float %2501, -1.000000e+00
  %2505 = fadd fast float %2502, -1.000000e+00
  %2506 = fmul fast float %2351, %2503
  %2507 = fmul fast float %2351, %2504
  %2508 = fmul fast float %2351, %2505
  %2509 = fadd fast float %2506, 1.000000e+00
  %2510 = fadd fast float %2507, 1.000000e+00
  %2511 = fadd fast float %2508, 1.000000e+00
  %2512 = fmul fast float %2509, %2326
  %2513 = fmul fast float %2510, %2327
  %2514 = fmul fast float %2511, %2328
  br label %2515

; <label>:2515                                    ; preds = %2499, %2465, %2356, %2312
  %2516 = phi float [ %2461, %2356 ], [ %2337, %2465 ], [ %2337, %2499 ], [ 0x3FA23C0BE0000000, %2312 ]
  %2517 = phi float [ %2453, %2356 ], [ %2496, %2465 ], [ %2512, %2499 ], [ 1.000000e+00, %2312 ]
  %2518 = phi float [ %2454, %2356 ], [ %2497, %2465 ], [ %2513, %2499 ], [ 1.000000e+00, %2312 ]
  %2519 = phi float [ %2455, %2356 ], [ %2498, %2465 ], [ %2514, %2499 ], [ 1.000000e+00, %2312 ]
  %2520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2521 = extractvalue %dx.types.CBufRet.i32 %2520, 1
  %2522 = and i32 %2521, 1
  %2523 = icmp ne i32 %2522, 0
  %2524 = add i32 %42, 356
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2524, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = and i32 %2526, 32
  %2528 = icmp ne i32 %2527, 0
  %2529 = and i1 %2523, %2528
  %2530 = select i1 %2529, float 1.000000e+00, float %2517
  %2531 = select i1 %2529, float 0x3FD3333340000000, float %2518
  %2532 = select i1 %2529, float 0x3FD3333340000000, float %2519
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = and i32 %2534, 32
  %2536 = icmp eq i32 %2535, 0
  br i1 %2536, label %2609, label %2537

; <label>:2537                                    ; preds = %2515
  %2538 = add i32 %42, 124
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = add i32 %42, 432
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = add i32 %2543, 0
  %2545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2545, %dx.types.Handle %93, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2547 = extractvalue %dx.types.ResRet.f32 %2546, 0
  %2548 = extractvalue %dx.types.ResRet.f32 %2546, 1
  %2549 = extractvalue %dx.types.ResRet.f32 %2546, 2
  %2550 = extractvalue %dx.types.ResRet.f32 %2546, 3
  %2551 = and i32 %2540, 255
  %2552 = uitofp i32 %2551 to float
  %2553 = lshr i32 %2540, 8
  %2554 = and i32 %2553, 255
  %2555 = uitofp i32 %2554 to float
  %2556 = lshr i32 %2540, 16
  %2557 = and i32 %2556, 255
  %2558 = uitofp i32 %2557 to float
  %2559 = fmul fast float %2558, 0x3F70101000000000
  %2560 = fmul fast float %2547, %2552
  %2561 = fadd fast float %2560, %2555
  %2562 = fmul fast float %2561, 0x3F70101000000000
  %2563 = fadd fast float %2548, -5.000000e-01
  %2564 = fadd fast float %2550, -5.000000e-01
  %2565 = fmul fast float %2563, %2559
  %2566 = fmul fast float %2564, %2559
  %2567 = fadd fast float %2565, 5.000000e-01
  %2568 = fadd fast float %2566, 5.000000e-01
  %2569 = fmul fast float %2567, 2.000000e+00
  %2570 = fadd fast float %2569, -1.000000e+00
  %2571 = fmul fast float %2568, 2.000000e+00
  %2572 = fadd fast float %2571, -1.000000e+00
  %2573 = fadd fast float %2570, %2572
  %2574 = fmul fast float %2573, 5.000000e-01
  %2575 = fsub fast float %2570, %2572
  %2576 = fmul fast float %2575, 5.000000e-01
  %2577 = call float @dx.op.unary.f32(i32 6, float %2574)  ; FAbs(value)
  %2578 = fsub fast float 1.000000e+00, %2577
  %2579 = call float @dx.op.unary.f32(i32 6, float %2576)  ; FAbs(value)
  %2580 = fsub fast float %2578, %2579
  %2581 = call float @dx.op.dot3.f32(i32 55, float %2574, float %2576, float %2580, float %2574, float %2576, float %2580)  ; Dot3(ax,ay,az,bx,by,bz)
  %2582 = call float @dx.op.unary.f32(i32 25, float %2581)  ; Rsqrt(value)
  %2583 = fmul fast float %2574, %2582
  %2584 = fmul fast float %2576, %2582
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = and i32 %2586, 67108864
  %2588 = icmp eq i32 %2587, 0
  br i1 %2588, label %2605, label %2589

; <label>:2589                                    ; preds = %2537
  %2590 = add i32 %42, 312
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = and i32 %2592, 65535
  %2594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2593)  ; LegacyF16ToF32(value)
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = and i32 %2596, 65535
  %2598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2597)  ; LegacyF16ToF32(value)
  %2599 = lshr i32 %2592, 16
  %2600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2599)  ; LegacyF16ToF32(value)
  %2601 = fsub fast float %2562, %2600
  %2602 = fmul fast float %2601, %2594
  %2603 = fadd fast float %2602, %2598
  %2604 = call float @dx.op.unary.f32(i32 7, float %2603)  ; Saturate(value)
  br label %2605

; <label>:2605                                    ; preds = %2589, %2537
  %2606 = phi float [ %2604, %2589 ], [ %2562, %2537 ]
  %2607 = call float @dx.op.dot2.f32(i32 54, float %2583, float %2584, float %2141, float %2142)  ; Dot2(ax,ay,bx,by)
  %2608 = call float @dx.op.dot2.f32(i32 54, float %2583, float %2584, float %2143, float %2144)  ; Dot2(ax,ay,bx,by)
  br label %2609

; <label>:2609                                    ; preds = %2605, %2515
  %2610 = phi float [ %2606, %2605 ], [ 0x3FD6666660000000, %2515 ]
  %2611 = phi float [ %2607, %2605 ], [ 0.000000e+00, %2515 ]
  %2612 = phi float [ %2608, %2605 ], [ 0.000000e+00, %2515 ]
  %2613 = phi float [ %2549, %2605 ], [ 1.000000e+00, %2515 ]
  %2614 = add i32 %42, 192
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = lshr i32 %2616, 22
  %2618 = shl nuw nsw i32 %2617, 5
  %2619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2618)  ; LegacyF16ToF32(value)
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = and i32 %2621, 64
  %2623 = icmp eq i32 %2622, 0
  br i1 %2623, label %2657, label %2624

; <label>:2624                                    ; preds = %2609
  %2625 = add i32 %42, 448
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2625, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = add i32 %2627, 0
  %2629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = and i32 %2631, 131072
  %2633 = icmp eq i32 %2632, 0
  %2634 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2629, %dx.types.Handle %93, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2635 = extractvalue %dx.types.ResRet.f32 %2634, 0
  %2636 = extractvalue %dx.types.ResRet.f32 %2634, 1
  %2637 = extractvalue %dx.types.ResRet.f32 %2634, 2
  %2638 = fmul fast float %2635, %370
  %2639 = fmul fast float %2636, %373
  %2640 = fmul fast float %2637, %376
  br i1 %2633, label %2647, label %2641

; <label>:2641                                    ; preds = %2624
  %2642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2643 = extractvalue %dx.types.CBufRet.f32 %2642, 0
  %2644 = fmul fast float %2643, %2638
  %2645 = fmul fast float %2643, %2639
  %2646 = fmul fast float %2643, %2640
  br label %2647

; <label>:2647                                    ; preds = %2641, %2624
  %2648 = phi float [ %2644, %2641 ], [ %2638, %2624 ]
  %2649 = phi float [ %2645, %2641 ], [ %2639, %2624 ]
  %2650 = phi float [ %2646, %2641 ], [ %2640, %2624 ]
  %2651 = fmul fast float %2648, %2619
  %2652 = select i1 %269, float %2651, float %2648
  %2653 = call float @dx.op.dot3.f32(i32 55, float %2652, float %2649, float %2650, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2654 = select i1 %269, float 0.000000e+00, float %2648
  %2655 = select i1 %269, float %2653, float %2649
  %2656 = select i1 %269, float 0.000000e+00, float %2650
  br label %2657

; <label>:2657                                    ; preds = %2647, %2609
  %2658 = phi float [ %2654, %2647 ], [ 0.000000e+00, %2609 ]
  %2659 = phi float [ %2655, %2647 ], [ 0.000000e+00, %2609 ]
  %2660 = phi float [ %2656, %2647 ], [ 0.000000e+00, %2609 ]
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = and i32 %2662, 1024
  %2664 = icmp eq i32 %2663, 0
  br i1 %2664, label %2695, label %2665

; <label>:2665                                    ; preds = %2657
  %2666 = add i32 %42, 184
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = and i32 %2668, 255
  %2670 = uitofp i32 %2669 to float
  %2671 = fmul fast float %2670, 0x3F70101020000000
  %2672 = lshr i32 %2668, 8
  %2673 = and i32 %2672, 255
  %2674 = uitofp i32 %2673 to float
  %2675 = fmul fast float %2674, 0x3F70101020000000
  %2676 = lshr i32 %2668, 16
  %2677 = and i32 %2676, 255
  %2678 = uitofp i32 %2677 to float
  %2679 = fmul fast float %2678, 0x3F70101020000000
  %2680 = fmul fast float %2671, %2671
  %2681 = fmul fast float %2675, %2675
  %2682 = fmul fast float %2679, %2679
  %2683 = add i32 %42, 512
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = add i32 %2685, 0
  %2687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2688 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2687, %dx.types.Handle %94, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2689 = extractvalue %dx.types.ResRet.f32 %2688, 0
  %2690 = extractvalue %dx.types.ResRet.f32 %2688, 1
  %2691 = extractvalue %dx.types.ResRet.f32 %2688, 2
  %2692 = fmul fast float %2680, %2689
  %2693 = fmul fast float %2681, %2690
  %2694 = fmul fast float %2682, %2691
  br label %2695

; <label>:2695                                    ; preds = %2665, %2657
  %2696 = phi float [ %2692, %2665 ], [ 0.000000e+00, %2657 ]
  %2697 = phi float [ %2693, %2665 ], [ 0.000000e+00, %2657 ]
  %2698 = phi float [ %2694, %2665 ], [ 0.000000e+00, %2657 ]
  %2699 = fcmp fast ogt float %2696, 0.000000e+00
  %2700 = fcmp fast ogt float %2697, 0.000000e+00
  %2701 = fcmp fast ogt float %2698, 0.000000e+00
  %2702 = call float @dx.op.unary.f32(i32 23, float %2696)  ; Log(value)
  %2703 = call float @dx.op.unary.f32(i32 23, float %2697)  ; Log(value)
  %2704 = call float @dx.op.unary.f32(i32 23, float %2698)  ; Log(value)
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = lshr i32 %2706, 7
  %2708 = and i32 %2707, 32752
  %2709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2708)  ; LegacyF16ToF32(value)
  %2710 = fmul fast float %2702, 0xBFE62E4300000000
  %2711 = fmul fast float %2710, %2709
  %2712 = fmul fast float %2703, 0xBFE62E4300000000
  %2713 = fmul fast float %2712, %2709
  %2714 = fmul fast float %2704, 0xBFE62E4300000000
  %2715 = fmul fast float %2714, %2709
  %2716 = select i1 %2699, float %2711, float 1.270000e+02
  %2717 = select i1 %2700, float %2713, float 1.270000e+02
  %2718 = select i1 %2701, float %2715, float 1.270000e+02
  %2719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2720 = extractvalue %dx.types.ResRet.i32 %2719, 0
  %2721 = and i32 %2720, 10240
  %2722 = icmp eq i32 %2721, 0
  br i1 %2722, label %2767, label %2723

; <label>:2723                                    ; preds = %2695
  %2724 = add i32 %42, 528
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = add i32 %2726, 0
  %2728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2727, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2729 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2728, %dx.types.Handle %94, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2730 = extractvalue %dx.types.ResRet.f32 %2729, 1
  %2731 = extractvalue %dx.types.ResRet.f32 %2729, 3
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = and i32 %2733, 1048576
  %2735 = icmp ne i32 %2734, 0
  %2736 = and i32 %2733, 8192
  %2737 = icmp eq i32 %2736, 0
  br i1 %2737, label %2753, label %2738

; <label>:2738                                    ; preds = %2723
  %2739 = extractvalue %dx.types.ResRet.f32 %2729, 2
  %2740 = select i1 %2735, float %2739, float %2730
  %2741 = extractvalue %dx.types.ResRet.f32 %2729, 0
  %2742 = select i1 %2735, float %2741, float %2730
  %2743 = add i32 %42, 128
  %2744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2743, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.i32 %2744, 0
  %2746 = lshr i32 %2745, 16
  %2747 = and i32 %2746, 255
  %2748 = uitofp i32 %2747 to float
  %2749 = fmul fast float %2748, 0x3F80101020000000
  %2750 = fmul fast float %2749, %2742
  %2751 = fmul fast float %2749, %2730
  %2752 = fmul fast float %2749, %2740
  br label %2753

; <label>:2753                                    ; preds = %2738, %2723
  %2754 = phi float [ %2750, %2738 ], [ 0.000000e+00, %2723 ]
  %2755 = phi float [ %2751, %2738 ], [ 0.000000e+00, %2723 ]
  %2756 = phi float [ %2752, %2738 ], [ 0.000000e+00, %2723 ]
  %2757 = and i32 %2733, 2048
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2767, label %2759

; <label>:2759                                    ; preds = %2753
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = shl i32 %2761, 4
  %2763 = and i32 %2762, 32752
  %2764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2763)  ; LegacyF16ToF32(value)
  %2765 = fmul fast float %2764, %2731
  %2766 = call float @dx.op.binary.f32(i32 35, float %2765, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2767

; <label>:2767                                    ; preds = %2759, %2753, %2695
  %2768 = phi float [ %2754, %2759 ], [ %2754, %2753 ], [ 0.000000e+00, %2695 ]
  %2769 = phi float [ %2755, %2759 ], [ %2755, %2753 ], [ 0.000000e+00, %2695 ]
  %2770 = phi float [ %2756, %2759 ], [ %2756, %2753 ], [ 0.000000e+00, %2695 ]
  %2771 = phi float [ %2766, %2759 ], [ 0x3F70101020000000, %2753 ], [ 0x3F70101020000000, %2695 ]
  %2772 = add i32 %42, 128
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = and i32 %2774, 255
  %2776 = uitofp i32 %2775 to float
  %2777 = lshr i32 %2774, 8
  %2778 = and i32 %2777, 255
  %2779 = uitofp i32 %2778 to float
  %2780 = call float @dx.op.dot3.f32(i32 55, float %2530, float %2531, float %2532, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2781 = fmul fast float %2779, %2780
  %2782 = fadd fast float %2781, %2776
  %2783 = fmul fast float %2782, 0x3F70101020000000
  %2784 = call float @dx.op.unary.f32(i32 7, float %2783)  ; Saturate(value)
  br i1 %2129, label %2785, label %2820

; <label>:2785                                    ; preds = %2767
  %2786 = fmul fast float %2771, 2.000000e+00
  %2787 = fcmp fast olt float %2716, 1.270000e+02
  %2788 = fcmp fast olt float %2717, 1.270000e+02
  %2789 = fcmp fast olt float %2718, 1.270000e+02
  %2790 = fmul fast float %2716, 0xBFF7154760000000
  %2791 = fmul fast float %2790, %2786
  %2792 = fmul fast float %2717, 0xBFF7154760000000
  %2793 = fmul fast float %2792, %2786
  %2794 = fmul fast float %2718, 0xBFF7154760000000
  %2795 = fmul fast float %2794, %2786
  %2796 = call float @dx.op.unary.f32(i32 21, float %2791)  ; Exp(value)
  %2797 = call float @dx.op.unary.f32(i32 21, float %2793)  ; Exp(value)
  %2798 = call float @dx.op.unary.f32(i32 21, float %2795)  ; Exp(value)
  %2799 = call float @dx.op.unary.f32(i32 7, float %2796)  ; Saturate(value)
  %2800 = call float @dx.op.unary.f32(i32 7, float %2797)  ; Saturate(value)
  %2801 = call float @dx.op.unary.f32(i32 7, float %2798)  ; Saturate(value)
  %2802 = fadd fast float %2799, -1.000000e+00
  %2803 = select i1 %2787, float %2802, float -1.000000e+00
  %2804 = fadd fast float %2800, -1.000000e+00
  %2805 = select i1 %2788, float %2804, float -1.000000e+00
  %2806 = fadd fast float %2801, -1.000000e+00
  %2807 = select i1 %2789, float %2806, float -1.000000e+00
  %2808 = fmul fast float %2803, %2310
  %2809 = fmul fast float %2805, %2310
  %2810 = fmul fast float %2807, %2310
  %2811 = fadd fast float %2808, 1.000000e+00
  %2812 = fadd fast float %2809, 1.000000e+00
  %2813 = fadd fast float %2810, 1.000000e+00
  %2814 = fmul fast float %2811, %2111
  %2815 = fmul fast float %2812, %2112
  %2816 = fmul fast float %2813, %2113
  %2817 = fmul fast float %2811, %2114
  %2818 = fmul fast float %2812, %2115
  %2819 = fmul fast float %2813, %2116
  br label %2820

; <label>:2820                                    ; preds = %2785, %2767
  %2821 = phi float [ %2814, %2785 ], [ %2111, %2767 ]
  %2822 = phi float [ %2815, %2785 ], [ %2112, %2767 ]
  %2823 = phi float [ %2816, %2785 ], [ %2113, %2767 ]
  %2824 = phi float [ %2817, %2785 ], [ %2114, %2767 ]
  %2825 = phi float [ %2818, %2785 ], [ %2115, %2767 ]
  %2826 = phi float [ %2819, %2785 ], [ %2116, %2767 ]
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = and i32 %2828, 3
  %2830 = icmp eq i32 %2829, 3
  br i1 %2830, label %2909, label %2831

; <label>:2831                                    ; preds = %2820
  %2832 = and i32 %2828, 16
  %2833 = icmp ne i32 %2832, 0
  %2834 = select i1 %2833, float %2310, float 0.000000e+00
  %2835 = icmp eq i32 %2829, 0
  br i1 %2835, label %2836, label %2864

; <label>:2836                                    ; preds = %2831
  %2837 = and i32 %2828, 64
  %2838 = icmp ne i32 %2837, 0
  %2839 = select i1 %2838, float %2310, float 0.000000e+00
  %2840 = fsub fast float %2530, %2821
  %2841 = fsub fast float %2531, %2822
  %2842 = fsub fast float %2532, %2823
  %2843 = fmul fast float %2834, %2840
  %2844 = fmul fast float %2834, %2841
  %2845 = fmul fast float %2834, %2842
  %2846 = fadd fast float %2843, %2821
  %2847 = fadd fast float %2844, %2822
  %2848 = fadd fast float %2845, %2823
  %2849 = fsub fast float %2516, %2123
  %2850 = fmul fast float %2834, %2849
  %2851 = fadd fast float %2850, %2123
  %2852 = fsub fast float %2658, %2824
  %2853 = fsub fast float %2659, %2825
  %2854 = fsub fast float %2660, %2826
  %2855 = fmul fast float %2839, %2852
  %2856 = fmul fast float %2839, %2853
  %2857 = fmul fast float %2839, %2854
  %2858 = fadd fast float %2855, %2824
  %2859 = fadd fast float %2856, %2825
  %2860 = fadd fast float %2857, %2826
  %2861 = fsub fast float %2784, %2127
  %2862 = fmul fast float %2834, %2861
  %2863 = fadd fast float %2862, %2127
  br label %2909

; <label>:2864                                    ; preds = %2831
  %2865 = icmp eq i32 %2829, 1
  br i1 %2865, label %2866, label %2879

; <label>:2866                                    ; preds = %2864
  %2867 = fadd fast float %2530, -1.000000e+00
  %2868 = fadd fast float %2531, -1.000000e+00
  %2869 = fadd fast float %2532, -1.000000e+00
  %2870 = fmul fast float %2834, %2867
  %2871 = fmul fast float %2834, %2868
  %2872 = fmul fast float %2834, %2869
  %2873 = fadd fast float %2870, 1.000000e+00
  %2874 = fadd fast float %2871, 1.000000e+00
  %2875 = fadd fast float %2872, 1.000000e+00
  %2876 = fmul fast float %2873, %2821
  %2877 = fmul fast float %2874, %2822
  %2878 = fmul fast float %2875, %2823
  br label %2909

; <label>:2879                                    ; preds = %2864
  %2880 = icmp eq i32 %2829, 2
  br i1 %2880, label %2881, label %2909

; <label>:2881                                    ; preds = %2879
  %2882 = call float @dx.op.unary.f32(i32 24, float %2530)  ; Sqrt(value)
  %2883 = call float @dx.op.unary.f32(i32 24, float %2531)  ; Sqrt(value)
  %2884 = call float @dx.op.unary.f32(i32 24, float %2532)  ; Sqrt(value)
  %2885 = fadd fast float %2882, -5.000000e-01
  %2886 = fadd fast float %2883, -5.000000e-01
  %2887 = fadd fast float %2884, -5.000000e-01
  %2888 = fmul fast float %2885, %2834
  %2889 = fmul fast float %2886, %2834
  %2890 = fmul fast float %2887, %2834
  %2891 = fadd fast float %2888, 5.000000e-01
  %2892 = fadd fast float %2889, 5.000000e-01
  %2893 = fadd fast float %2890, 5.000000e-01
  %2894 = fmul fast float %2891, 2.000000e+00
  %2895 = fsub fast float 1.000000e+00, %2894
  %2896 = fmul fast float %2895, %2821
  %2897 = fadd fast float %2896, %2894
  %2898 = fmul fast float %2897, %2821
  %2899 = fmul fast float %2892, 2.000000e+00
  %2900 = fsub fast float 1.000000e+00, %2899
  %2901 = fmul fast float %2900, %2822
  %2902 = fadd fast float %2901, %2899
  %2903 = fmul fast float %2902, %2822
  %2904 = fmul fast float %2893, 2.000000e+00
  %2905 = fsub fast float 1.000000e+00, %2904
  %2906 = fmul fast float %2905, %2823
  %2907 = fadd fast float %2906, %2904
  %2908 = fmul fast float %2907, %2823
  br label %2909

; <label>:2909                                    ; preds = %2881, %2879, %2866, %2836, %2820
  %2910 = phi float [ %2821, %2820 ], [ %2898, %2881 ], [ %2821, %2879 ], [ %2876, %2866 ], [ %2846, %2836 ]
  %2911 = phi float [ %2822, %2820 ], [ %2903, %2881 ], [ %2822, %2879 ], [ %2877, %2866 ], [ %2847, %2836 ]
  %2912 = phi float [ %2823, %2820 ], [ %2908, %2881 ], [ %2823, %2879 ], [ %2878, %2866 ], [ %2848, %2836 ]
  %2913 = phi float [ %2824, %2820 ], [ %2824, %2881 ], [ %2824, %2879 ], [ %2824, %2866 ], [ %2858, %2836 ]
  %2914 = phi float [ %2825, %2820 ], [ %2825, %2881 ], [ %2825, %2879 ], [ %2825, %2866 ], [ %2859, %2836 ]
  %2915 = phi float [ %2826, %2820 ], [ %2826, %2881 ], [ %2826, %2879 ], [ %2826, %2866 ], [ %2860, %2836 ]
  %2916 = phi float [ %2123, %2820 ], [ %2123, %2881 ], [ %2123, %2879 ], [ %2123, %2866 ], [ %2851, %2836 ]
  %2917 = phi float [ %2127, %2820 ], [ %2127, %2881 ], [ %2127, %2879 ], [ %2127, %2866 ], [ %2863, %2836 ]
  %2918 = and i32 %2828, 12
  %2919 = icmp eq i32 %2918, 12
  br i1 %2919, label %3050, label %2920

; <label>:2920                                    ; preds = %2909
  %2921 = and i32 %2828, 2097184
  %2922 = icmp eq i32 %2921, 2097184
  %2923 = select i1 %2922, float %2310, float 0.000000e+00
  %2924 = and i32 %2828, 4194336
  %2925 = icmp eq i32 %2924, 4194336
  %2926 = select i1 %2925, float %2310, float 0.000000e+00
  %2927 = and i32 %2828, 8388640
  %2928 = icmp eq i32 %2927, 8388640
  %2929 = select i1 %2928, float %2310, float 0.000000e+00
  %2930 = and i32 %2828, 1024
  %2931 = icmp ne i32 %2930, 0
  %2932 = select i1 %2931, float %2310, float 0.000000e+00
  %2933 = and i32 %2828, 2048
  %2934 = icmp ne i32 %2933, 0
  %2935 = select i1 %2934, float %2310, float 0.000000e+00
  %2936 = and i32 %2828, 8192
  %2937 = icmp ne i32 %2936, 0
  %2938 = select i1 %2937, float %2310, float 0.000000e+00
  %2939 = icmp eq i32 %2918, 0
  br i1 %2939, label %2940, label %2974

; <label>:2940                                    ; preds = %2920
  %2941 = fsub fast float %2611, %2109
  %2942 = fsub fast float %2612, %2110
  %2943 = fmul fast float %2923, %2941
  %2944 = fmul fast float %2923, %2942
  %2945 = fadd fast float %2943, %2109
  %2946 = fadd fast float %2944, %2110
  %2947 = fsub fast float %2613, %2125
  %2948 = fmul fast float %2926, %2947
  %2949 = fadd fast float %2948, %2125
  %2950 = fsub fast float %2610, %2124
  %2951 = fmul fast float %2929, %2950
  %2952 = fadd fast float %2951, %2124
  %2953 = fsub fast float %2716, %2120
  %2954 = fsub fast float %2717, %2121
  %2955 = fsub fast float %2718, %2122
  %2956 = fmul fast float %2932, %2953
  %2957 = fmul fast float %2932, %2954
  %2958 = fmul fast float %2932, %2955
  %2959 = fadd fast float %2956, %2120
  %2960 = fadd fast float %2957, %2121
  %2961 = fadd fast float %2958, %2122
  %2962 = fsub fast float %2771, %2126
  %2963 = fmul fast float %2935, %2962
  %2964 = fadd fast float %2963, %2126
  %2965 = fsub fast float %2768, %2117
  %2966 = fsub fast float %2769, %2118
  %2967 = fsub fast float %2770, %2119
  %2968 = fmul fast float %2938, %2965
  %2969 = fmul fast float %2938, %2966
  %2970 = fmul fast float %2938, %2967
  %2971 = fadd fast float %2968, %2117
  %2972 = fadd fast float %2969, %2118
  %2973 = fadd fast float %2970, %2119
  br label %3050

; <label>:2974                                    ; preds = %2920
  %2975 = icmp eq i32 %2918, 4
  br i1 %2975, label %2976, label %3022

; <label>:2976                                    ; preds = %2974
  %2977 = fmul fast float %2923, %2611
  %2978 = fmul fast float %2923, %2612
  %2979 = fadd fast float %2977, %2109
  %2980 = fadd fast float %2978, %2110
  %2981 = call float @dx.op.binary.f32(i32 36, float %2125, float %2613)  ; FMin(a,b)
  %2982 = fsub fast float %2981, %2125
  %2983 = fmul fast float %2982, %2926
  %2984 = fadd fast float %2983, %2125
  %2985 = fadd fast float %2610, %2124
  %2986 = fmul fast float %2985, 0x3FF337FAE0000000
  %2987 = fmul fast float %2124, %2124
  %2988 = fmul fast float %2610, %2610
  %2989 = fadd fast float %2988, %2987
  %2990 = fmul fast float %2989, 0x3FE5152B00000000
  %2991 = fmul fast float %2124, 0xBFCC1F85E0000000
  %2992 = fmul fast float %2991, %2610
  %2993 = fadd fast float %2992, 0xBFE1363700000000
  %2994 = fadd fast float %2993, %2986
  %2995 = fsub fast float %2994, %2990
  %2996 = fmul fast float %2985, 0x3FBA6F0D00000000
  %2997 = fmul fast float %2989, 0x3FD0432880000000
  %2998 = fmul fast float %2124, 0xBFEF110800000000
  %2999 = fmul fast float %2998, %2610
  %3000 = fadd fast float %2999, 1.000000e+00
  %3001 = fsub fast float %3000, %2996
  %3002 = fadd fast float %3001, %2997
  %3003 = fdiv fast float %2995, %3002
  %3004 = call float @dx.op.unary.f32(i32 7, float %3003)  ; Saturate(value)
  %3005 = fsub fast float %3004, %2124
  %3006 = fmul fast float %3005, %2929
  %3007 = fadd fast float %3006, %2124
  %3008 = fmul fast float %2932, %2716
  %3009 = fmul fast float %2932, %2717
  %3010 = fmul fast float %2932, %2718
  %3011 = fadd fast float %3008, %2120
  %3012 = fadd fast float %3009, %2121
  %3013 = fadd fast float %3010, %2122
  %3014 = fmul fast float %2935, %2771
  %3015 = fadd fast float %3014, %2126
  %3016 = fmul fast float %2938, %2768
  %3017 = fmul fast float %2938, %2769
  %3018 = fmul fast float %2938, %2770
  %3019 = fadd fast float %3016, %2117
  %3020 = fadd fast float %3017, %2118
  %3021 = fadd fast float %3018, %2119
  br label %3050

; <label>:3022                                    ; preds = %2974
  %3023 = icmp eq i32 %2918, 8
  br i1 %3023, label %3024, label %3050

; <label>:3024                                    ; preds = %3022
  %3025 = fmul fast float %2923, %2611
  %3026 = fmul fast float %2923, %2612
  %3027 = fadd fast float %3025, %2109
  %3028 = fadd fast float %3026, %2110
  %3029 = call float @dx.op.binary.f32(i32 36, float %2125, float %2613)  ; FMin(a,b)
  %3030 = fsub fast float %3029, %2125
  %3031 = fmul fast float %3030, %2926
  %3032 = fadd fast float %3031, %2125
  %3033 = fsub fast float %2610, %2124
  %3034 = fmul fast float %2929, %3033
  %3035 = fadd fast float %3034, %2124
  %3036 = fmul fast float %2932, %2716
  %3037 = fmul fast float %2932, %2717
  %3038 = fmul fast float %2932, %2718
  %3039 = fadd fast float %3036, %2120
  %3040 = fadd fast float %3037, %2121
  %3041 = fadd fast float %3038, %2122
  %3042 = fmul fast float %2935, %2771
  %3043 = fadd fast float %3042, %2126
  %3044 = fmul fast float %2938, %2768
  %3045 = fmul fast float %2938, %2769
  %3046 = fmul fast float %2938, %2770
  %3047 = fadd fast float %3044, %2117
  %3048 = fadd fast float %3045, %2118
  %3049 = fadd fast float %3046, %2119
  br label %3050

; <label>:3050                                    ; preds = %3024, %3022, %2976, %2940, %2909, %2309, %2128, %2108
  %3051 = phi float [ %2109, %2909 ], [ %2109, %2309 ], [ %2109, %2108 ], [ %3027, %3024 ], [ %2109, %3022 ], [ %2979, %2976 ], [ %2945, %2940 ], [ %2109, %2128 ]
  %3052 = phi float [ %2110, %2909 ], [ %2110, %2309 ], [ %2110, %2108 ], [ %3028, %3024 ], [ %2110, %3022 ], [ %2980, %2976 ], [ %2946, %2940 ], [ %2110, %2128 ]
  %3053 = phi float [ %2910, %2909 ], [ %2111, %2309 ], [ %2111, %2108 ], [ %2910, %3024 ], [ %2910, %3022 ], [ %2910, %2976 ], [ %2910, %2940 ], [ %2111, %2128 ]
  %3054 = phi float [ %2911, %2909 ], [ %2112, %2309 ], [ %2112, %2108 ], [ %2911, %3024 ], [ %2911, %3022 ], [ %2911, %2976 ], [ %2911, %2940 ], [ %2112, %2128 ]
  %3055 = phi float [ %2912, %2909 ], [ %2113, %2309 ], [ %2113, %2108 ], [ %2912, %3024 ], [ %2912, %3022 ], [ %2912, %2976 ], [ %2912, %2940 ], [ %2113, %2128 ]
  %3056 = phi float [ %2913, %2909 ], [ %2114, %2309 ], [ %2114, %2108 ], [ %2913, %3024 ], [ %2913, %3022 ], [ %2913, %2976 ], [ %2913, %2940 ], [ %2114, %2128 ]
  %3057 = phi float [ %2914, %2909 ], [ %2115, %2309 ], [ %2115, %2108 ], [ %2914, %3024 ], [ %2914, %3022 ], [ %2914, %2976 ], [ %2914, %2940 ], [ %2115, %2128 ]
  %3058 = phi float [ %2915, %2909 ], [ %2116, %2309 ], [ %2116, %2108 ], [ %2915, %3024 ], [ %2915, %3022 ], [ %2915, %2976 ], [ %2915, %2940 ], [ %2116, %2128 ]
  %3059 = phi float [ %2117, %2909 ], [ %2117, %2309 ], [ %2117, %2108 ], [ %3047, %3024 ], [ %2117, %3022 ], [ %3019, %2976 ], [ %2971, %2940 ], [ %2117, %2128 ]
  %3060 = phi float [ %2118, %2909 ], [ %2118, %2309 ], [ %2118, %2108 ], [ %3048, %3024 ], [ %2118, %3022 ], [ %3020, %2976 ], [ %2972, %2940 ], [ %2118, %2128 ]
  %3061 = phi float [ %2119, %2909 ], [ %2119, %2309 ], [ %2119, %2108 ], [ %3049, %3024 ], [ %2119, %3022 ], [ %3021, %2976 ], [ %2973, %2940 ], [ %2119, %2128 ]
  %3062 = phi float [ %2120, %2909 ], [ %2120, %2309 ], [ %2120, %2108 ], [ %3039, %3024 ], [ %2120, %3022 ], [ %3011, %2976 ], [ %2959, %2940 ], [ %2120, %2128 ]
  %3063 = phi float [ %2121, %2909 ], [ %2121, %2309 ], [ %2121, %2108 ], [ %3040, %3024 ], [ %2121, %3022 ], [ %3012, %2976 ], [ %2960, %2940 ], [ %2121, %2128 ]
  %3064 = phi float [ %2122, %2909 ], [ %2122, %2309 ], [ %2122, %2108 ], [ %3041, %3024 ], [ %2122, %3022 ], [ %3013, %2976 ], [ %2961, %2940 ], [ %2122, %2128 ]
  %3065 = phi float [ %2916, %2909 ], [ %2123, %2309 ], [ %2123, %2108 ], [ %2916, %3024 ], [ %2916, %3022 ], [ %2916, %2976 ], [ %2916, %2940 ], [ %2123, %2128 ]
  %3066 = phi float [ %2124, %2909 ], [ %2124, %2309 ], [ %2124, %2108 ], [ %3035, %3024 ], [ %2124, %3022 ], [ %3007, %2976 ], [ %2952, %2940 ], [ %2124, %2128 ]
  %3067 = phi float [ %2125, %2909 ], [ %2125, %2309 ], [ %2125, %2108 ], [ %3032, %3024 ], [ %2125, %3022 ], [ %2984, %2976 ], [ %2949, %2940 ], [ %2125, %2128 ]
  %3068 = phi float [ %2126, %2909 ], [ %2126, %2309 ], [ %2126, %2108 ], [ %3043, %3024 ], [ %2126, %3022 ], [ %3015, %2976 ], [ %2964, %2940 ], [ %2126, %2128 ]
  %3069 = phi float [ %2917, %2909 ], [ %2127, %2309 ], [ %2127, %2108 ], [ %2917, %3024 ], [ %2917, %3022 ], [ %2917, %2976 ], [ %2917, %2940 ], [ %2127, %2128 ]
  br i1 %457, label %3992, label %3070

; <label>:3070                                    ; preds = %3050
  %3071 = icmp ult i32 %511, 4
  %3072 = add i32 %42, 72
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = add i32 %42, 76
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = or i32 %3077, %3074
  %3079 = icmp eq i32 %3078, 0
  br i1 %3079, label %3992, label %3080

; <label>:3080                                    ; preds = %3070
  %3081 = and i32 %3074, 262144
  %3082 = icmp ne i32 %3081, 0
  %3083 = select i1 %3082, float %47, float 1.000000e+00
  %3084 = select i1 %3082, float %48, float 0.000000e+00
  %3085 = select i1 %3082, float %49, float 0.000000e+00
  %3086 = select i1 %3082, float %50, float 1.000000e+00
  %3087 = select i1 %3082, float %51, float %79
  %3088 = select i1 %3082, float %52, float %80
  %3089 = add i32 %42, 332
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = lshr i32 %3091, 16
  %3093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3092)  ; LegacyF16ToF32(value)
  %3094 = fmul fast float %3093, 0x3F50624DE0000000
  %3095 = add i32 %42, 136
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = lshr i32 %3097, 16
  %3099 = and i32 %3098, 255
  %3100 = lshr i32 %3097, 24
  %3101 = add i32 %42, 340
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = and i32 %3103, 65535
  %3105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3104)  ; LegacyF16ToF32(value)
  %3106 = lshr i32 %3103, 16
  %3107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3106)  ; LegacyF16ToF32(value)
  %3108 = add i32 %42, 80
  %3109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3108, i32 undef)  ; BufferLoad(srv,index,wot)
  %3110 = extractvalue %dx.types.ResRet.i32 %3109, 0
  %3111 = lshr i32 %3110, 22
  %3112 = shl nuw nsw i32 %3111, 5
  %3113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3112)  ; LegacyF16ToF32(value)
  %3114 = shl i32 %3110, 4
  %3115 = and i32 %3114, 32752
  %3116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3115)  ; LegacyF16ToF32(value)
  %3117 = lshr i32 %3110, 7
  %3118 = and i32 %3117, 32752
  %3119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3118)  ; LegacyF16ToF32(value)
  %3120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3121 = extractvalue %dx.types.CBufRet.f32 %3120, 3
  %3122 = fmul fast float %3121, 1.000000e+03
  %3123 = fmul fast float %447, %3122
  %3124 = call float @dx.op.unary.f32(i32 22, float %3123)  ; Frc(value)
  %3125 = fadd fast float %3124, %437
  %3126 = fmul fast float %448, %3122
  %3127 = call float @dx.op.unary.f32(i32 22, float %3126)  ; Frc(value)
  %3128 = fadd fast float %3127, %439
  %3129 = fmul fast float %3094, %3122
  %3130 = call float @dx.op.unary.f32(i32 22, float %3129)  ; Frc(value)
  %3131 = fmul fast float %3130, 0x401921FB60000000
  %3132 = fadd fast float %3131, %3113
  %3133 = call float @dx.op.unary.f32(i32 13, float %3132)  ; Sin(value)
  %3134 = call float @dx.op.unary.f32(i32 12, float %3132)  ; Cos(value)
  %3135 = fsub fast float -0.000000e+00, %3133
  %3136 = fadd fast float %3087, -5.000000e-01
  %3137 = fadd fast float %3088, -5.000000e-01
  %3138 = fmul fast float %3105, %3136
  %3139 = fmul fast float %3107, %3137
  %3140 = fadd fast float %3138, 5.000000e-01
  %3141 = fadd fast float %3139, 5.000000e-01
  %3142 = fmul fast float %3116, %3140
  %3143 = fmul fast float %3119, %3141
  %3144 = fmul fast float %3134, %3142
  %3145 = call float @dx.op.tertiary.f32(i32 46, float %3135, float %3143, float %3144)  ; FMad(a,b,c)
  %3146 = fmul fast float %3133, %3142
  %3147 = call float @dx.op.tertiary.f32(i32 46, float %3134, float %3143, float %3146)  ; FMad(a,b,c)
  %3148 = fadd fast float %3125, %3145
  %3149 = fadd fast float %3128, %3147
  %3150 = icmp ugt i32 %3099, 1
  %3151 = icmp ugt i32 %3097, 33554431
  %3152 = or i1 %3151, %3150
  br i1 %3152, label %3153, label %3178

; <label>:3153                                    ; preds = %3080
  %3154 = add i32 %42, 276
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = lshr i32 %3156, 16
  %3158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3157)  ; LegacyF16ToF32(value)
  %3159 = fmul fast float %3121, %3158
  %3160 = call float @dx.op.unary.f32(i32 22, float %3159)  ; Frc(value)
  %3161 = mul nuw nsw i32 %3099, %3100
  %3162 = uitofp i32 %3161 to float
  %3163 = fmul fast float %3160, %3162
  %3164 = call float @dx.op.unary.f32(i32 27, float %3163)  ; Round_ni(value)
  %3165 = fptoui float %3164 to i32
  %3166 = urem i32 %3165, %3099
  %3167 = udiv i32 %3165, %3100
  %3168 = call float @dx.op.unary.f32(i32 22, float %3148)  ; Frc(value)
  %3169 = call float @dx.op.unary.f32(i32 22, float %3149)  ; Frc(value)
  %3170 = uitofp i32 %3166 to float
  %3171 = uitofp i32 %3167 to float
  %3172 = fadd fast float %3168, %3170
  %3173 = fadd fast float %3169, %3171
  %3174 = uitofp i32 %3099 to float
  %3175 = uitofp i32 %3100 to float
  %3176 = fdiv fast float %3172, %3174
  %3177 = fdiv fast float %3173, %3175
  br label %3178

; <label>:3178                                    ; preds = %3153, %3080
  %3179 = phi float [ %3176, %3153 ], [ %3148, %3080 ]
  %3180 = phi float [ %3177, %3153 ], [ %3149, %3080 ]
  %3181 = and i32 %3074, 256
  %3182 = icmp eq i32 %3181, 0
  br i1 %3182, label %3229, label %3183

; <label>:3183                                    ; preds = %3178
  %3184 = add i32 %42, 484
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = add i32 %3186, 0
  %3188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3189 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3188, %dx.types.Handle %94, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3190 = extractvalue %dx.types.ResRet.f32 %3189, 0
  %3191 = add i32 %42, 148
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3191, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = shl i32 %3193, 4
  %3195 = and i32 %3194, 32752
  %3196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3195)  ; LegacyF16ToF32(value)
  %3197 = lshr i32 %3193, 7
  %3198 = and i32 %3197, 32752
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = fsub fast float 1.000000e+00, %506
  %3201 = call float @dx.op.binary.f32(i32 35, float %3200, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3202 = bitcast float %506 to i32
  %3203 = sitofp i32 %3202 to float
  %3204 = fadd fast float %3203, 0xC1CFBF8940000000
  %3205 = fmul fast float %3199, %3204
  %3206 = fadd fast float %3205, 0x41CFBF8940000000
  %3207 = fptosi float %3206 to i32
  %3208 = bitcast i32 %3207 to float
  %3209 = bitcast float %3201 to i32
  %3210 = sitofp i32 %3209 to float
  %3211 = fadd fast float %3210, 0xC1CFBF8940000000
  %3212 = fmul fast float %3211, %3199
  %3213 = fadd fast float %3212, 0x41CFBF8940000000
  %3214 = fptosi float %3213 to i32
  %3215 = bitcast i32 %3214 to float
  %3216 = fmul fast float %3208, %3196
  %3217 = fmul fast float %3215, %3196
  %3218 = fsub fast float %3201, %3216
  %3219 = fadd fast float %3217, %3201
  %3220 = call float @dx.op.unary.f32(i32 7, float %3218)  ; Saturate(value)
  %3221 = call float @dx.op.unary.f32(i32 7, float %3219)  ; Saturate(value)
  %3222 = fsub fast float %3190, %3220
  %3223 = fsub fast float %3221, %3220
  %3224 = bitcast float %3223 to i32
  %3225 = sub nsw i32 2129859010, %3224
  %3226 = bitcast i32 %3225 to float
  %3227 = fmul fast float %3226, %3222
  %3228 = call float @dx.op.unary.f32(i32 7, float %3227)  ; Saturate(value)
  br label %3229

; <label>:3229                                    ; preds = %3183, %3178
  %3230 = phi float [ %3228, %3183 ], [ %506, %3178 ]
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = and i32 %3232, 128
  %3234 = icmp eq i32 %3233, 0
  br i1 %3234, label %3251, label %3235

; <label>:3235                                    ; preds = %3229
  %3236 = add i32 %42, 468
  %3237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3236, i32 undef)  ; BufferLoad(srv,index,wot)
  %3238 = extractvalue %dx.types.ResRet.i32 %3237, 0
  %3239 = add i32 %3238, 0
  %3240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3239, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3240, %dx.types.Handle %94, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3242 = extractvalue %dx.types.ResRet.f32 %3241, 0
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = and i32 %3244, 524288
  %3246 = icmp ne i32 %3245, 0
  %3247 = fcmp fast ogt float %3242, 0x3FE0101020000000
  %3248 = select i1 %3247, float 1.000000e+00, float 0.000000e+00
  %3249 = select i1 %3246, float %3248, float %3242
  %3250 = fmul fast float %3249, %3230
  br label %3251

; <label>:3251                                    ; preds = %3235, %3229
  %3252 = phi float [ %3250, %3235 ], [ %3230, %3229 ]
  %3253 = fcmp fast ult float %3252, 0x3F70101020000000
  br i1 %3253, label %3992, label %3254

; <label>:3254                                    ; preds = %3251
  %3255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3256 = extractvalue %dx.types.ResRet.i32 %3255, 0
  %3257 = and i32 %3256, 16
  %3258 = icmp eq i32 %3257, 0
  br i1 %3258, label %3457, label %3259

; <label>:3259                                    ; preds = %3254
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = add i32 %42, 420
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = add i32 %3264, 0
  %3266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3265, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3267 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3266, %dx.types.Handle %93, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3268 = extractvalue %dx.types.ResRet.f32 %3267, 0
  %3269 = extractvalue %dx.types.ResRet.f32 %3267, 1
  %3270 = extractvalue %dx.types.ResRet.f32 %3267, 2
  %3271 = extractvalue %dx.types.ResRet.f32 %3267, 3
  %3272 = and i32 %3261, 255
  %3273 = uitofp i32 %3272 to float
  %3274 = lshr i32 %3261, 8
  %3275 = and i32 %3274, 255
  %3276 = uitofp i32 %3275 to float
  %3277 = fmul fast float %3271, %3273
  %3278 = fadd fast float %3277, %3276
  %3279 = fmul fast float %3278, 0x3F70101000000000
  %3280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.i32 %3280, 0
  %3282 = and i32 %3281, 512
  %3283 = icmp eq i32 %3282, 0
  br i1 %3283, label %3292, label %3284

; <label>:3284                                    ; preds = %3259
  %3285 = add i32 %42, 500
  %3286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.i32 %3286, 0
  %3288 = add i32 %3287, 0
  %3289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3288, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3290 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3289, %dx.types.Handle %94, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3291 = extractvalue %dx.types.ResRet.f32 %3290, 0
  br label %3292

; <label>:3292                                    ; preds = %3284, %3259
  %3293 = phi float [ %3291, %3284 ], [ 1.000000e+00, %3259 ]
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = and i32 %3295, 33554432
  %3297 = icmp eq i32 %3296, 0
  br i1 %3297, label %3404, label %3298

; <label>:3298                                    ; preds = %3292
  %3299 = add i32 %42, 272
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = and i32 %3301, 65535
  %3303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3302)  ; LegacyF16ToF32(value)
  %3304 = lshr i32 %3301, 16
  %3305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3304)  ; LegacyF16ToF32(value)
  %3306 = add i32 %42, 276
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3306, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = and i32 %3308, 65535
  %3310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3309)  ; LegacyF16ToF32(value)
  %3311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3327 = add i32 %42, 268
  %3328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3327, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.i32 %3328, 0
  %3330 = lshr i32 %3329, 24
  %3331 = uitofp i32 %3330 to float
  %3332 = fmul fast float %3331, 0x3F70101020000000
  %3333 = and i32 %3329, 255
  %3334 = uitofp i32 %3333 to float
  %3335 = fmul fast float %3334, 0x3F70101020000000
  %3336 = lshr i32 %3329, 8
  %3337 = and i32 %3336, 255
  %3338 = uitofp i32 %3337 to float
  %3339 = fmul fast float %3338, 0x3F70101020000000
  %3340 = lshr i32 %3329, 16
  %3341 = and i32 %3340, 255
  %3342 = uitofp i32 %3341 to float
  %3343 = fmul fast float %3342, 0x3F70101020000000
  %3344 = bitcast float %3268 to i32
  %3345 = ashr i32 %3344, 1
  %3346 = sub nsw i32 1597463174, %3345
  %3347 = bitcast i32 %3346 to float
  %3348 = fmul fast float %3268, 5.000000e-01
  %3349 = fmul fast float %3347, %3347
  %3350 = fmul fast float %3349, %3348
  %3351 = fsub fast float 1.500000e+00, %3350
  %3352 = fmul fast float %3347, %3268
  %3353 = fmul fast float %3352, %3351
  %3354 = bitcast float %3269 to i32
  %3355 = ashr i32 %3354, 1
  %3356 = sub nsw i32 1597463174, %3355
  %3357 = bitcast i32 %3356 to float
  %3358 = fmul fast float %3269, 5.000000e-01
  %3359 = fmul fast float %3357, %3357
  %3360 = fmul fast float %3359, %3358
  %3361 = fsub fast float 1.500000e+00, %3360
  %3362 = fmul fast float %3357, %3269
  %3363 = fmul fast float %3362, %3361
  %3364 = bitcast float %3270 to i32
  %3365 = ashr i32 %3364, 1
  %3366 = sub nsw i32 1597463174, %3365
  %3367 = bitcast i32 %3366 to float
  %3368 = fmul fast float %3270, 5.000000e-01
  %3369 = fmul fast float %3367, %3367
  %3370 = fmul fast float %3369, %3368
  %3371 = fsub fast float 1.500000e+00, %3370
  %3372 = fmul fast float %3367, %3270
  %3373 = fmul fast float %3372, %3371
  %3374 = fsub fast float %3353, %3335
  %3375 = fsub fast float %3363, %3339
  %3376 = fsub fast float %3373, %3343
  %3377 = fmul fast float %3374, %3303
  %3378 = fmul fast float %3375, %3305
  %3379 = fmul fast float %3376, %3310
  %3380 = fadd fast float %3377, %3318
  %3381 = fadd fast float %3378, %3322
  %3382 = fadd fast float %3379, %3326
  %3383 = call float @dx.op.unary.f32(i32 7, float %3380)  ; Saturate(value)
  %3384 = call float @dx.op.unary.f32(i32 7, float %3381)  ; Saturate(value)
  %3385 = call float @dx.op.unary.f32(i32 7, float %3382)  ; Saturate(value)
  %3386 = fmul fast float %3383, %3383
  %3387 = fmul fast float %3384, %3384
  %3388 = fmul fast float %3385, %3385
  %3389 = fsub fast float %3386, %3268
  %3390 = fsub fast float %3387, %3269
  %3391 = fsub fast float %3388, %3270
  %3392 = fmul fast float %3389, %3293
  %3393 = fmul fast float %3390, %3293
  %3394 = fmul fast float %3391, %3293
  %3395 = fadd fast float %3392, %3268
  %3396 = fadd fast float %3393, %3269
  %3397 = fadd fast float %3394, %3270
  %3398 = fadd fast float %3315, %3279
  %3399 = fsub fast float %3398, %3332
  %3400 = call float @dx.op.unary.f32(i32 7, float %3399)  ; Saturate(value)
  %3401 = fsub fast float %3400, %3279
  %3402 = fmul fast float %3401, %3293
  %3403 = fadd fast float %3402, %3279
  br label %3457

; <label>:3404                                    ; preds = %3292
  %3405 = and i32 %3295, 134217728
  %3406 = icmp eq i32 %3405, 0
  br i1 %3406, label %3441, label %3407

; <label>:3407                                    ; preds = %3404
  %3408 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %3409 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %3410 = call float @dx.op.unary.f32(i32 24, float %432)  ; Sqrt(value)
  %3411 = fadd fast float %3408, -5.000000e-01
  %3412 = fadd fast float %3409, -5.000000e-01
  %3413 = fadd fast float %3410, -5.000000e-01
  %3414 = fmul fast float %3411, %3293
  %3415 = fmul fast float %3412, %3293
  %3416 = fmul fast float %3413, %3293
  %3417 = fadd fast float %3414, 5.000000e-01
  %3418 = fadd fast float %3415, 5.000000e-01
  %3419 = fadd fast float %3416, 5.000000e-01
  %3420 = call float @dx.op.unary.f32(i32 24, float %3268)  ; Sqrt(value)
  %3421 = call float @dx.op.unary.f32(i32 24, float %3269)  ; Sqrt(value)
  %3422 = call float @dx.op.unary.f32(i32 24, float %3270)  ; Sqrt(value)
  %3423 = fmul fast float %3417, 2.000000e+00
  %3424 = fsub fast float 1.000000e+00, %3423
  %3425 = fmul fast float %3424, %3420
  %3426 = fadd fast float %3425, %3423
  %3427 = fmul fast float %3426, %3420
  %3428 = fmul fast float %3418, 2.000000e+00
  %3429 = fsub fast float 1.000000e+00, %3428
  %3430 = fmul fast float %3429, %3421
  %3431 = fadd fast float %3430, %3428
  %3432 = fmul fast float %3431, %3421
  %3433 = fmul fast float %3419, 2.000000e+00
  %3434 = fsub fast float 1.000000e+00, %3433
  %3435 = fmul fast float %3434, %3422
  %3436 = fadd fast float %3435, %3433
  %3437 = fmul fast float %3436, %3422
  %3438 = fmul fast float %3427, %3427
  %3439 = fmul fast float %3432, %3432
  %3440 = fmul fast float %3437, %3437
  br label %3457

; <label>:3441                                    ; preds = %3404
  %3442 = fmul fast float %424, %424
  %3443 = fmul fast float %428, %428
  %3444 = fmul fast float %432, %432
  %3445 = fadd fast float %3442, -1.000000e+00
  %3446 = fadd fast float %3443, -1.000000e+00
  %3447 = fadd fast float %3444, -1.000000e+00
  %3448 = fmul fast float %3293, %3445
  %3449 = fmul fast float %3293, %3446
  %3450 = fmul fast float %3293, %3447
  %3451 = fadd fast float %3448, 1.000000e+00
  %3452 = fadd fast float %3449, 1.000000e+00
  %3453 = fadd fast float %3450, 1.000000e+00
  %3454 = fmul fast float %3451, %3268
  %3455 = fmul fast float %3452, %3269
  %3456 = fmul fast float %3453, %3270
  br label %3457

; <label>:3457                                    ; preds = %3441, %3407, %3298, %3254
  %3458 = phi float [ %3403, %3298 ], [ %3279, %3407 ], [ %3279, %3441 ], [ 0x3FA23C0BE0000000, %3254 ]
  %3459 = phi float [ %3395, %3298 ], [ %3438, %3407 ], [ %3454, %3441 ], [ 1.000000e+00, %3254 ]
  %3460 = phi float [ %3396, %3298 ], [ %3439, %3407 ], [ %3455, %3441 ], [ 1.000000e+00, %3254 ]
  %3461 = phi float [ %3397, %3298 ], [ %3440, %3407 ], [ %3456, %3441 ], [ 1.000000e+00, %3254 ]
  %3462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3463 = extractvalue %dx.types.CBufRet.i32 %3462, 1
  %3464 = and i32 %3463, 1
  %3465 = icmp ne i32 %3464, 0
  %3466 = add i32 %42, 356
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = and i32 %3468, 32
  %3470 = icmp ne i32 %3469, 0
  %3471 = and i1 %3465, %3470
  %3472 = select i1 %3471, float 1.000000e+00, float %3459
  %3473 = select i1 %3471, float 0x3FD3333340000000, float %3460
  %3474 = select i1 %3471, float 0x3FD3333340000000, float %3461
  %3475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.i32 %3475, 0
  %3477 = and i32 %3476, 32
  %3478 = icmp eq i32 %3477, 0
  br i1 %3478, label %3551, label %3479

; <label>:3479                                    ; preds = %3457
  %3480 = add i32 %42, 140
  %3481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3480, i32 undef)  ; BufferLoad(srv,index,wot)
  %3482 = extractvalue %dx.types.ResRet.i32 %3481, 0
  %3483 = add i32 %42, 436
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = add i32 %3485, 0
  %3487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3487, %dx.types.Handle %93, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3489 = extractvalue %dx.types.ResRet.f32 %3488, 0
  %3490 = extractvalue %dx.types.ResRet.f32 %3488, 1
  %3491 = extractvalue %dx.types.ResRet.f32 %3488, 2
  %3492 = extractvalue %dx.types.ResRet.f32 %3488, 3
  %3493 = and i32 %3482, 255
  %3494 = uitofp i32 %3493 to float
  %3495 = lshr i32 %3482, 8
  %3496 = and i32 %3495, 255
  %3497 = uitofp i32 %3496 to float
  %3498 = lshr i32 %3482, 16
  %3499 = and i32 %3498, 255
  %3500 = uitofp i32 %3499 to float
  %3501 = fmul fast float %3500, 0x3F70101000000000
  %3502 = fmul fast float %3489, %3494
  %3503 = fadd fast float %3502, %3497
  %3504 = fmul fast float %3503, 0x3F70101000000000
  %3505 = fadd fast float %3490, -5.000000e-01
  %3506 = fadd fast float %3492, -5.000000e-01
  %3507 = fmul fast float %3505, %3501
  %3508 = fmul fast float %3506, %3501
  %3509 = fadd fast float %3507, 5.000000e-01
  %3510 = fadd fast float %3508, 5.000000e-01
  %3511 = fmul fast float %3509, 2.000000e+00
  %3512 = fadd fast float %3511, -1.000000e+00
  %3513 = fmul fast float %3510, 2.000000e+00
  %3514 = fadd fast float %3513, -1.000000e+00
  %3515 = fadd fast float %3512, %3514
  %3516 = fmul fast float %3515, 5.000000e-01
  %3517 = fsub fast float %3512, %3514
  %3518 = fmul fast float %3517, 5.000000e-01
  %3519 = call float @dx.op.unary.f32(i32 6, float %3516)  ; FAbs(value)
  %3520 = fsub fast float 1.000000e+00, %3519
  %3521 = call float @dx.op.unary.f32(i32 6, float %3518)  ; FAbs(value)
  %3522 = fsub fast float %3520, %3521
  %3523 = call float @dx.op.dot3.f32(i32 55, float %3516, float %3518, float %3522, float %3516, float %3518, float %3522)  ; Dot3(ax,ay,az,bx,by,bz)
  %3524 = call float @dx.op.unary.f32(i32 25, float %3523)  ; Rsqrt(value)
  %3525 = fmul fast float %3516, %3524
  %3526 = fmul fast float %3518, %3524
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = and i32 %3528, 67108864
  %3530 = icmp eq i32 %3529, 0
  br i1 %3530, label %3547, label %3531

; <label>:3531                                    ; preds = %3479
  %3532 = add i32 %42, 328
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = and i32 %3534, 65535
  %3536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3535)  ; LegacyF16ToF32(value)
  %3537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.i32 %3537, 0
  %3539 = and i32 %3538, 65535
  %3540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3539)  ; LegacyF16ToF32(value)
  %3541 = lshr i32 %3534, 16
  %3542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3541)  ; LegacyF16ToF32(value)
  %3543 = fsub fast float %3504, %3542
  %3544 = fmul fast float %3543, %3536
  %3545 = fadd fast float %3544, %3540
  %3546 = call float @dx.op.unary.f32(i32 7, float %3545)  ; Saturate(value)
  br label %3547

; <label>:3547                                    ; preds = %3531, %3479
  %3548 = phi float [ %3546, %3531 ], [ %3504, %3479 ]
  %3549 = call float @dx.op.dot2.f32(i32 54, float %3525, float %3526, float %3083, float %3084)  ; Dot2(ax,ay,bx,by)
  %3550 = call float @dx.op.dot2.f32(i32 54, float %3525, float %3526, float %3085, float %3086)  ; Dot2(ax,ay,bx,by)
  br label %3551

; <label>:3551                                    ; preds = %3547, %3457
  %3552 = phi float [ %3548, %3547 ], [ 0x3FD6666660000000, %3457 ]
  %3553 = phi float [ %3549, %3547 ], [ 0.000000e+00, %3457 ]
  %3554 = phi float [ %3550, %3547 ], [ 0.000000e+00, %3457 ]
  %3555 = phi float [ %3491, %3547 ], [ 1.000000e+00, %3457 ]
  %3556 = add i32 %42, 208
  %3557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.i32 %3557, 0
  %3559 = lshr i32 %3558, 22
  %3560 = shl nuw nsw i32 %3559, 5
  %3561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3560)  ; LegacyF16ToF32(value)
  %3562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.i32 %3562, 0
  %3564 = and i32 %3563, 64
  %3565 = icmp eq i32 %3564, 0
  br i1 %3565, label %3599, label %3566

; <label>:3566                                    ; preds = %3551
  %3567 = add i32 %42, 452
  %3568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3567, i32 undef)  ; BufferLoad(srv,index,wot)
  %3569 = extractvalue %dx.types.ResRet.i32 %3568, 0
  %3570 = add i32 %3569, 0
  %3571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.i32 %3572, 0
  %3574 = and i32 %3573, 131072
  %3575 = icmp eq i32 %3574, 0
  %3576 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3571, %dx.types.Handle %93, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  %3578 = extractvalue %dx.types.ResRet.f32 %3576, 1
  %3579 = extractvalue %dx.types.ResRet.f32 %3576, 2
  %3580 = fmul fast float %3577, %412
  %3581 = fmul fast float %3578, %415
  %3582 = fmul fast float %3579, %418
  br i1 %3575, label %3589, label %3583

; <label>:3583                                    ; preds = %3566
  %3584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.f32 %3584, 0
  %3586 = fmul fast float %3585, %3580
  %3587 = fmul fast float %3585, %3581
  %3588 = fmul fast float %3585, %3582
  br label %3589

; <label>:3589                                    ; preds = %3583, %3566
  %3590 = phi float [ %3586, %3583 ], [ %3580, %3566 ]
  %3591 = phi float [ %3587, %3583 ], [ %3581, %3566 ]
  %3592 = phi float [ %3588, %3583 ], [ %3582, %3566 ]
  %3593 = fmul fast float %3590, %3561
  %3594 = select i1 %269, float %3593, float %3590
  %3595 = call float @dx.op.dot3.f32(i32 55, float %3594, float %3591, float %3592, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3596 = select i1 %269, float 0.000000e+00, float %3590
  %3597 = select i1 %269, float %3595, float %3591
  %3598 = select i1 %269, float 0.000000e+00, float %3592
  br label %3599

; <label>:3599                                    ; preds = %3589, %3551
  %3600 = phi float [ %3596, %3589 ], [ 0.000000e+00, %3551 ]
  %3601 = phi float [ %3597, %3589 ], [ 0.000000e+00, %3551 ]
  %3602 = phi float [ %3598, %3589 ], [ 0.000000e+00, %3551 ]
  %3603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.i32 %3603, 0
  %3605 = and i32 %3604, 1024
  %3606 = icmp eq i32 %3605, 0
  br i1 %3606, label %3637, label %3607

; <label>:3607                                    ; preds = %3599
  %3608 = add i32 %42, 200
  %3609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.i32 %3609, 0
  %3611 = and i32 %3610, 255
  %3612 = uitofp i32 %3611 to float
  %3613 = fmul fast float %3612, 0x3F70101020000000
  %3614 = lshr i32 %3610, 8
  %3615 = and i32 %3614, 255
  %3616 = uitofp i32 %3615 to float
  %3617 = fmul fast float %3616, 0x3F70101020000000
  %3618 = lshr i32 %3610, 16
  %3619 = and i32 %3618, 255
  %3620 = uitofp i32 %3619 to float
  %3621 = fmul fast float %3620, 0x3F70101020000000
  %3622 = fmul fast float %3613, %3613
  %3623 = fmul fast float %3617, %3617
  %3624 = fmul fast float %3621, %3621
  %3625 = add i32 %42, 516
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3625, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = add i32 %3627, 0
  %3629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3630 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3629, %dx.types.Handle %94, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.ResRet.f32 %3630, 1
  %3633 = extractvalue %dx.types.ResRet.f32 %3630, 2
  %3634 = fmul fast float %3622, %3631
  %3635 = fmul fast float %3623, %3632
  %3636 = fmul fast float %3624, %3633
  br label %3637

; <label>:3637                                    ; preds = %3607, %3599
  %3638 = phi float [ %3634, %3607 ], [ 0.000000e+00, %3599 ]
  %3639 = phi float [ %3635, %3607 ], [ 0.000000e+00, %3599 ]
  %3640 = phi float [ %3636, %3607 ], [ 0.000000e+00, %3599 ]
  %3641 = fcmp fast ogt float %3638, 0.000000e+00
  %3642 = fcmp fast ogt float %3639, 0.000000e+00
  %3643 = fcmp fast ogt float %3640, 0.000000e+00
  %3644 = call float @dx.op.unary.f32(i32 23, float %3638)  ; Log(value)
  %3645 = call float @dx.op.unary.f32(i32 23, float %3639)  ; Log(value)
  %3646 = call float @dx.op.unary.f32(i32 23, float %3640)  ; Log(value)
  %3647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3648 = extractvalue %dx.types.ResRet.i32 %3647, 0
  %3649 = lshr i32 %3648, 7
  %3650 = and i32 %3649, 32752
  %3651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3650)  ; LegacyF16ToF32(value)
  %3652 = fmul fast float %3644, 0xBFE62E4300000000
  %3653 = fmul fast float %3652, %3651
  %3654 = fmul fast float %3645, 0xBFE62E4300000000
  %3655 = fmul fast float %3654, %3651
  %3656 = fmul fast float %3646, 0xBFE62E4300000000
  %3657 = fmul fast float %3656, %3651
  %3658 = select i1 %3641, float %3653, float 1.270000e+02
  %3659 = select i1 %3642, float %3655, float 1.270000e+02
  %3660 = select i1 %3643, float %3657, float 1.270000e+02
  %3661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.i32 %3661, 0
  %3663 = and i32 %3662, 10240
  %3664 = icmp eq i32 %3663, 0
  br i1 %3664, label %3709, label %3665

; <label>:3665                                    ; preds = %3637
  %3666 = add i32 %42, 532
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3666, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = add i32 %3668, 0
  %3670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3671 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3670, %dx.types.Handle %94, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3672 = extractvalue %dx.types.ResRet.f32 %3671, 1
  %3673 = extractvalue %dx.types.ResRet.f32 %3671, 3
  %3674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.i32 %3674, 0
  %3676 = and i32 %3675, 1048576
  %3677 = icmp ne i32 %3676, 0
  %3678 = and i32 %3675, 8192
  %3679 = icmp eq i32 %3678, 0
  br i1 %3679, label %3695, label %3680

; <label>:3680                                    ; preds = %3665
  %3681 = extractvalue %dx.types.ResRet.f32 %3671, 2
  %3682 = select i1 %3677, float %3681, float %3672
  %3683 = extractvalue %dx.types.ResRet.f32 %3671, 0
  %3684 = select i1 %3677, float %3683, float %3672
  %3685 = add i32 %42, 144
  %3686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3685, i32 undef)  ; BufferLoad(srv,index,wot)
  %3687 = extractvalue %dx.types.ResRet.i32 %3686, 0
  %3688 = lshr i32 %3687, 16
  %3689 = and i32 %3688, 255
  %3690 = uitofp i32 %3689 to float
  %3691 = fmul fast float %3690, 0x3F80101020000000
  %3692 = fmul fast float %3691, %3684
  %3693 = fmul fast float %3691, %3672
  %3694 = fmul fast float %3691, %3682
  br label %3695

; <label>:3695                                    ; preds = %3680, %3665
  %3696 = phi float [ %3692, %3680 ], [ 0.000000e+00, %3665 ]
  %3697 = phi float [ %3693, %3680 ], [ 0.000000e+00, %3665 ]
  %3698 = phi float [ %3694, %3680 ], [ 0.000000e+00, %3665 ]
  %3699 = and i32 %3675, 2048
  %3700 = icmp eq i32 %3699, 0
  br i1 %3700, label %3709, label %3701

; <label>:3701                                    ; preds = %3695
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = shl i32 %3703, 4
  %3705 = and i32 %3704, 32752
  %3706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3705)  ; LegacyF16ToF32(value)
  %3707 = fmul fast float %3706, %3673
  %3708 = call float @dx.op.binary.f32(i32 35, float %3707, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3709

; <label>:3709                                    ; preds = %3701, %3695, %3637
  %3710 = phi float [ %3696, %3701 ], [ %3696, %3695 ], [ 0.000000e+00, %3637 ]
  %3711 = phi float [ %3697, %3701 ], [ %3697, %3695 ], [ 0.000000e+00, %3637 ]
  %3712 = phi float [ %3698, %3701 ], [ %3698, %3695 ], [ 0.000000e+00, %3637 ]
  %3713 = phi float [ %3708, %3701 ], [ 0x3F70101020000000, %3695 ], [ 0x3F70101020000000, %3637 ]
  %3714 = add i32 %42, 144
  %3715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3714, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.i32 %3715, 0
  %3717 = and i32 %3716, 255
  %3718 = uitofp i32 %3717 to float
  %3719 = lshr i32 %3716, 8
  %3720 = and i32 %3719, 255
  %3721 = uitofp i32 %3720 to float
  %3722 = call float @dx.op.dot3.f32(i32 55, float %3472, float %3473, float %3474, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3723 = fmul fast float %3721, %3722
  %3724 = fadd fast float %3723, %3718
  %3725 = fmul fast float %3724, 0x3F70101020000000
  %3726 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  br i1 %3071, label %3727, label %3762

; <label>:3727                                    ; preds = %3709
  %3728 = fmul fast float %3713, 2.000000e+00
  %3729 = fcmp fast olt float %3658, 1.270000e+02
  %3730 = fcmp fast olt float %3659, 1.270000e+02
  %3731 = fcmp fast olt float %3660, 1.270000e+02
  %3732 = fmul fast float %3658, 0xBFF7154760000000
  %3733 = fmul fast float %3732, %3728
  %3734 = fmul fast float %3659, 0xBFF7154760000000
  %3735 = fmul fast float %3734, %3728
  %3736 = fmul fast float %3660, 0xBFF7154760000000
  %3737 = fmul fast float %3736, %3728
  %3738 = call float @dx.op.unary.f32(i32 21, float %3733)  ; Exp(value)
  %3739 = call float @dx.op.unary.f32(i32 21, float %3735)  ; Exp(value)
  %3740 = call float @dx.op.unary.f32(i32 21, float %3737)  ; Exp(value)
  %3741 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3742 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3743 = call float @dx.op.unary.f32(i32 7, float %3740)  ; Saturate(value)
  %3744 = fadd fast float %3741, -1.000000e+00
  %3745 = select i1 %3729, float %3744, float -1.000000e+00
  %3746 = fadd fast float %3742, -1.000000e+00
  %3747 = select i1 %3730, float %3746, float -1.000000e+00
  %3748 = fadd fast float %3743, -1.000000e+00
  %3749 = select i1 %3731, float %3748, float -1.000000e+00
  %3750 = fmul fast float %3745, %3252
  %3751 = fmul fast float %3747, %3252
  %3752 = fmul fast float %3749, %3252
  %3753 = fadd fast float %3750, 1.000000e+00
  %3754 = fadd fast float %3751, 1.000000e+00
  %3755 = fadd fast float %3752, 1.000000e+00
  %3756 = fmul fast float %3753, %3053
  %3757 = fmul fast float %3754, %3054
  %3758 = fmul fast float %3755, %3055
  %3759 = fmul fast float %3753, %3056
  %3760 = fmul fast float %3754, %3057
  %3761 = fmul fast float %3755, %3058
  br label %3762

; <label>:3762                                    ; preds = %3727, %3709
  %3763 = phi float [ %3756, %3727 ], [ %3053, %3709 ]
  %3764 = phi float [ %3757, %3727 ], [ %3054, %3709 ]
  %3765 = phi float [ %3758, %3727 ], [ %3055, %3709 ]
  %3766 = phi float [ %3759, %3727 ], [ %3056, %3709 ]
  %3767 = phi float [ %3760, %3727 ], [ %3057, %3709 ]
  %3768 = phi float [ %3761, %3727 ], [ %3058, %3709 ]
  %3769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3770 = extractvalue %dx.types.ResRet.i32 %3769, 0
  %3771 = and i32 %3770, 3
  %3772 = icmp eq i32 %3771, 3
  br i1 %3772, label %3851, label %3773

; <label>:3773                                    ; preds = %3762
  %3774 = and i32 %3770, 16
  %3775 = icmp ne i32 %3774, 0
  %3776 = select i1 %3775, float %3252, float 0.000000e+00
  %3777 = icmp eq i32 %3771, 0
  br i1 %3777, label %3778, label %3806

; <label>:3778                                    ; preds = %3773
  %3779 = and i32 %3770, 64
  %3780 = icmp ne i32 %3779, 0
  %3781 = select i1 %3780, float %3252, float 0.000000e+00
  %3782 = fsub fast float %3472, %3763
  %3783 = fsub fast float %3473, %3764
  %3784 = fsub fast float %3474, %3765
  %3785 = fmul fast float %3776, %3782
  %3786 = fmul fast float %3776, %3783
  %3787 = fmul fast float %3776, %3784
  %3788 = fadd fast float %3785, %3763
  %3789 = fadd fast float %3786, %3764
  %3790 = fadd fast float %3787, %3765
  %3791 = fsub fast float %3458, %3065
  %3792 = fmul fast float %3776, %3791
  %3793 = fadd fast float %3792, %3065
  %3794 = fsub fast float %3600, %3766
  %3795 = fsub fast float %3601, %3767
  %3796 = fsub fast float %3602, %3768
  %3797 = fmul fast float %3781, %3794
  %3798 = fmul fast float %3781, %3795
  %3799 = fmul fast float %3781, %3796
  %3800 = fadd fast float %3797, %3766
  %3801 = fadd fast float %3798, %3767
  %3802 = fadd fast float %3799, %3768
  %3803 = fsub fast float %3726, %3069
  %3804 = fmul fast float %3776, %3803
  %3805 = fadd fast float %3804, %3069
  br label %3851

; <label>:3806                                    ; preds = %3773
  %3807 = icmp eq i32 %3771, 1
  br i1 %3807, label %3808, label %3821

; <label>:3808                                    ; preds = %3806
  %3809 = fadd fast float %3472, -1.000000e+00
  %3810 = fadd fast float %3473, -1.000000e+00
  %3811 = fadd fast float %3474, -1.000000e+00
  %3812 = fmul fast float %3776, %3809
  %3813 = fmul fast float %3776, %3810
  %3814 = fmul fast float %3776, %3811
  %3815 = fadd fast float %3812, 1.000000e+00
  %3816 = fadd fast float %3813, 1.000000e+00
  %3817 = fadd fast float %3814, 1.000000e+00
  %3818 = fmul fast float %3815, %3763
  %3819 = fmul fast float %3816, %3764
  %3820 = fmul fast float %3817, %3765
  br label %3851

; <label>:3821                                    ; preds = %3806
  %3822 = icmp eq i32 %3771, 2
  br i1 %3822, label %3823, label %3851

; <label>:3823                                    ; preds = %3821
  %3824 = call float @dx.op.unary.f32(i32 24, float %3472)  ; Sqrt(value)
  %3825 = call float @dx.op.unary.f32(i32 24, float %3473)  ; Sqrt(value)
  %3826 = call float @dx.op.unary.f32(i32 24, float %3474)  ; Sqrt(value)
  %3827 = fadd fast float %3824, -5.000000e-01
  %3828 = fadd fast float %3825, -5.000000e-01
  %3829 = fadd fast float %3826, -5.000000e-01
  %3830 = fmul fast float %3827, %3776
  %3831 = fmul fast float %3828, %3776
  %3832 = fmul fast float %3829, %3776
  %3833 = fadd fast float %3830, 5.000000e-01
  %3834 = fadd fast float %3831, 5.000000e-01
  %3835 = fadd fast float %3832, 5.000000e-01
  %3836 = fmul fast float %3833, 2.000000e+00
  %3837 = fsub fast float 1.000000e+00, %3836
  %3838 = fmul fast float %3837, %3763
  %3839 = fadd fast float %3838, %3836
  %3840 = fmul fast float %3839, %3763
  %3841 = fmul fast float %3834, 2.000000e+00
  %3842 = fsub fast float 1.000000e+00, %3841
  %3843 = fmul fast float %3842, %3764
  %3844 = fadd fast float %3843, %3841
  %3845 = fmul fast float %3844, %3764
  %3846 = fmul fast float %3835, 2.000000e+00
  %3847 = fsub fast float 1.000000e+00, %3846
  %3848 = fmul fast float %3847, %3765
  %3849 = fadd fast float %3848, %3846
  %3850 = fmul fast float %3849, %3765
  br label %3851

; <label>:3851                                    ; preds = %3823, %3821, %3808, %3778, %3762
  %3852 = phi float [ %3763, %3762 ], [ %3840, %3823 ], [ %3763, %3821 ], [ %3818, %3808 ], [ %3788, %3778 ]
  %3853 = phi float [ %3764, %3762 ], [ %3845, %3823 ], [ %3764, %3821 ], [ %3819, %3808 ], [ %3789, %3778 ]
  %3854 = phi float [ %3765, %3762 ], [ %3850, %3823 ], [ %3765, %3821 ], [ %3820, %3808 ], [ %3790, %3778 ]
  %3855 = phi float [ %3766, %3762 ], [ %3766, %3823 ], [ %3766, %3821 ], [ %3766, %3808 ], [ %3800, %3778 ]
  %3856 = phi float [ %3767, %3762 ], [ %3767, %3823 ], [ %3767, %3821 ], [ %3767, %3808 ], [ %3801, %3778 ]
  %3857 = phi float [ %3768, %3762 ], [ %3768, %3823 ], [ %3768, %3821 ], [ %3768, %3808 ], [ %3802, %3778 ]
  %3858 = phi float [ %3065, %3762 ], [ %3065, %3823 ], [ %3065, %3821 ], [ %3065, %3808 ], [ %3793, %3778 ]
  %3859 = phi float [ %3069, %3762 ], [ %3069, %3823 ], [ %3069, %3821 ], [ %3069, %3808 ], [ %3805, %3778 ]
  %3860 = and i32 %3770, 12
  %3861 = icmp eq i32 %3860, 12
  br i1 %3861, label %3992, label %3862

; <label>:3862                                    ; preds = %3851
  %3863 = and i32 %3770, 2097184
  %3864 = icmp eq i32 %3863, 2097184
  %3865 = select i1 %3864, float %3252, float 0.000000e+00
  %3866 = and i32 %3770, 4194336
  %3867 = icmp eq i32 %3866, 4194336
  %3868 = select i1 %3867, float %3252, float 0.000000e+00
  %3869 = and i32 %3770, 8388640
  %3870 = icmp eq i32 %3869, 8388640
  %3871 = select i1 %3870, float %3252, float 0.000000e+00
  %3872 = and i32 %3770, 1024
  %3873 = icmp ne i32 %3872, 0
  %3874 = select i1 %3873, float %3252, float 0.000000e+00
  %3875 = and i32 %3770, 2048
  %3876 = icmp ne i32 %3875, 0
  %3877 = select i1 %3876, float %3252, float 0.000000e+00
  %3878 = and i32 %3770, 8192
  %3879 = icmp ne i32 %3878, 0
  %3880 = select i1 %3879, float %3252, float 0.000000e+00
  %3881 = icmp eq i32 %3860, 0
  br i1 %3881, label %3882, label %3916

; <label>:3882                                    ; preds = %3862
  %3883 = fsub fast float %3553, %3051
  %3884 = fsub fast float %3554, %3052
  %3885 = fmul fast float %3865, %3883
  %3886 = fmul fast float %3865, %3884
  %3887 = fadd fast float %3885, %3051
  %3888 = fadd fast float %3886, %3052
  %3889 = fsub fast float %3555, %3067
  %3890 = fmul fast float %3868, %3889
  %3891 = fadd fast float %3890, %3067
  %3892 = fsub fast float %3552, %3066
  %3893 = fmul fast float %3871, %3892
  %3894 = fadd fast float %3893, %3066
  %3895 = fsub fast float %3658, %3062
  %3896 = fsub fast float %3659, %3063
  %3897 = fsub fast float %3660, %3064
  %3898 = fmul fast float %3874, %3895
  %3899 = fmul fast float %3874, %3896
  %3900 = fmul fast float %3874, %3897
  %3901 = fadd fast float %3898, %3062
  %3902 = fadd fast float %3899, %3063
  %3903 = fadd fast float %3900, %3064
  %3904 = fsub fast float %3713, %3068
  %3905 = fmul fast float %3877, %3904
  %3906 = fadd fast float %3905, %3068
  %3907 = fsub fast float %3710, %3059
  %3908 = fsub fast float %3711, %3060
  %3909 = fsub fast float %3712, %3061
  %3910 = fmul fast float %3880, %3907
  %3911 = fmul fast float %3880, %3908
  %3912 = fmul fast float %3880, %3909
  %3913 = fadd fast float %3910, %3059
  %3914 = fadd fast float %3911, %3060
  %3915 = fadd fast float %3912, %3061
  br label %3992

; <label>:3916                                    ; preds = %3862
  %3917 = icmp eq i32 %3860, 4
  br i1 %3917, label %3918, label %3964

; <label>:3918                                    ; preds = %3916
  %3919 = fmul fast float %3865, %3553
  %3920 = fmul fast float %3865, %3554
  %3921 = fadd fast float %3919, %3051
  %3922 = fadd fast float %3920, %3052
  %3923 = call float @dx.op.binary.f32(i32 36, float %3067, float %3555)  ; FMin(a,b)
  %3924 = fsub fast float %3923, %3067
  %3925 = fmul fast float %3924, %3868
  %3926 = fadd fast float %3925, %3067
  %3927 = fadd fast float %3552, %3066
  %3928 = fmul fast float %3927, 0x3FF337FAE0000000
  %3929 = fmul fast float %3066, %3066
  %3930 = fmul fast float %3552, %3552
  %3931 = fadd fast float %3930, %3929
  %3932 = fmul fast float %3931, 0x3FE5152B00000000
  %3933 = fmul fast float %3066, 0xBFCC1F85E0000000
  %3934 = fmul fast float %3933, %3552
  %3935 = fadd fast float %3934, 0xBFE1363700000000
  %3936 = fadd fast float %3935, %3928
  %3937 = fsub fast float %3936, %3932
  %3938 = fmul fast float %3927, 0x3FBA6F0D00000000
  %3939 = fmul fast float %3931, 0x3FD0432880000000
  %3940 = fmul fast float %3066, 0xBFEF110800000000
  %3941 = fmul fast float %3940, %3552
  %3942 = fadd fast float %3941, 1.000000e+00
  %3943 = fsub fast float %3942, %3938
  %3944 = fadd fast float %3943, %3939
  %3945 = fdiv fast float %3937, %3944
  %3946 = call float @dx.op.unary.f32(i32 7, float %3945)  ; Saturate(value)
  %3947 = fsub fast float %3946, %3066
  %3948 = fmul fast float %3947, %3871
  %3949 = fadd fast float %3948, %3066
  %3950 = fmul fast float %3874, %3658
  %3951 = fmul fast float %3874, %3659
  %3952 = fmul fast float %3874, %3660
  %3953 = fadd fast float %3950, %3062
  %3954 = fadd fast float %3951, %3063
  %3955 = fadd fast float %3952, %3064
  %3956 = fmul fast float %3877, %3713
  %3957 = fadd fast float %3956, %3068
  %3958 = fmul fast float %3880, %3710
  %3959 = fmul fast float %3880, %3711
  %3960 = fmul fast float %3880, %3712
  %3961 = fadd fast float %3958, %3059
  %3962 = fadd fast float %3959, %3060
  %3963 = fadd fast float %3960, %3061
  br label %3992

; <label>:3964                                    ; preds = %3916
  %3965 = icmp eq i32 %3860, 8
  br i1 %3965, label %3966, label %3992

; <label>:3966                                    ; preds = %3964
  %3967 = fmul fast float %3865, %3553
  %3968 = fmul fast float %3865, %3554
  %3969 = fadd fast float %3967, %3051
  %3970 = fadd fast float %3968, %3052
  %3971 = call float @dx.op.binary.f32(i32 36, float %3067, float %3555)  ; FMin(a,b)
  %3972 = fsub fast float %3971, %3067
  %3973 = fmul fast float %3972, %3868
  %3974 = fadd fast float %3973, %3067
  %3975 = fsub fast float %3552, %3066
  %3976 = fmul fast float %3871, %3975
  %3977 = fadd fast float %3976, %3066
  %3978 = fmul fast float %3874, %3658
  %3979 = fmul fast float %3874, %3659
  %3980 = fmul fast float %3874, %3660
  %3981 = fadd fast float %3978, %3062
  %3982 = fadd fast float %3979, %3063
  %3983 = fadd fast float %3980, %3064
  %3984 = fmul fast float %3877, %3713
  %3985 = fadd fast float %3984, %3068
  %3986 = fmul fast float %3880, %3710
  %3987 = fmul fast float %3880, %3711
  %3988 = fmul fast float %3880, %3712
  %3989 = fadd fast float %3986, %3059
  %3990 = fadd fast float %3987, %3060
  %3991 = fadd fast float %3988, %3061
  br label %3992

; <label>:3992                                    ; preds = %3966, %3964, %3918, %3882, %3851, %3251, %3070, %3050
  %3993 = phi float [ %3051, %3851 ], [ %3051, %3251 ], [ %3051, %3050 ], [ %3051, %3070 ], [ %3887, %3882 ], [ %3921, %3918 ], [ %3051, %3964 ], [ %3969, %3966 ]
  %3994 = phi float [ %3052, %3851 ], [ %3052, %3251 ], [ %3052, %3050 ], [ %3052, %3070 ], [ %3888, %3882 ], [ %3922, %3918 ], [ %3052, %3964 ], [ %3970, %3966 ]
  %3995 = phi float [ %3852, %3851 ], [ %3053, %3251 ], [ %3053, %3050 ], [ %3053, %3070 ], [ %3852, %3882 ], [ %3852, %3918 ], [ %3852, %3964 ], [ %3852, %3966 ]
  %3996 = phi float [ %3853, %3851 ], [ %3054, %3251 ], [ %3054, %3050 ], [ %3054, %3070 ], [ %3853, %3882 ], [ %3853, %3918 ], [ %3853, %3964 ], [ %3853, %3966 ]
  %3997 = phi float [ %3854, %3851 ], [ %3055, %3251 ], [ %3055, %3050 ], [ %3055, %3070 ], [ %3854, %3882 ], [ %3854, %3918 ], [ %3854, %3964 ], [ %3854, %3966 ]
  %3998 = phi float [ %3855, %3851 ], [ %3056, %3251 ], [ %3056, %3050 ], [ %3056, %3070 ], [ %3855, %3882 ], [ %3855, %3918 ], [ %3855, %3964 ], [ %3855, %3966 ]
  %3999 = phi float [ %3856, %3851 ], [ %3057, %3251 ], [ %3057, %3050 ], [ %3057, %3070 ], [ %3856, %3882 ], [ %3856, %3918 ], [ %3856, %3964 ], [ %3856, %3966 ]
  %4000 = phi float [ %3857, %3851 ], [ %3058, %3251 ], [ %3058, %3050 ], [ %3058, %3070 ], [ %3857, %3882 ], [ %3857, %3918 ], [ %3857, %3964 ], [ %3857, %3966 ]
  %4001 = phi float [ %3059, %3851 ], [ %3059, %3251 ], [ %3059, %3050 ], [ %3059, %3070 ], [ %3913, %3882 ], [ %3961, %3918 ], [ %3059, %3964 ], [ %3989, %3966 ]
  %4002 = phi float [ %3060, %3851 ], [ %3060, %3251 ], [ %3060, %3050 ], [ %3060, %3070 ], [ %3914, %3882 ], [ %3962, %3918 ], [ %3060, %3964 ], [ %3990, %3966 ]
  %4003 = phi float [ %3061, %3851 ], [ %3061, %3251 ], [ %3061, %3050 ], [ %3061, %3070 ], [ %3915, %3882 ], [ %3963, %3918 ], [ %3061, %3964 ], [ %3991, %3966 ]
  %4004 = phi float [ %3062, %3851 ], [ %3062, %3251 ], [ %3062, %3050 ], [ %3062, %3070 ], [ %3901, %3882 ], [ %3953, %3918 ], [ %3062, %3964 ], [ %3981, %3966 ]
  %4005 = phi float [ %3063, %3851 ], [ %3063, %3251 ], [ %3063, %3050 ], [ %3063, %3070 ], [ %3902, %3882 ], [ %3954, %3918 ], [ %3063, %3964 ], [ %3982, %3966 ]
  %4006 = phi float [ %3064, %3851 ], [ %3064, %3251 ], [ %3064, %3050 ], [ %3064, %3070 ], [ %3903, %3882 ], [ %3955, %3918 ], [ %3064, %3964 ], [ %3983, %3966 ]
  %4007 = phi float [ %3858, %3851 ], [ %3065, %3251 ], [ %3065, %3050 ], [ %3065, %3070 ], [ %3858, %3882 ], [ %3858, %3918 ], [ %3858, %3964 ], [ %3858, %3966 ]
  %4008 = phi float [ %3066, %3851 ], [ %3066, %3251 ], [ %3066, %3050 ], [ %3066, %3070 ], [ %3894, %3882 ], [ %3949, %3918 ], [ %3066, %3964 ], [ %3977, %3966 ]
  %4009 = phi float [ %3067, %3851 ], [ %3067, %3251 ], [ %3067, %3050 ], [ %3067, %3070 ], [ %3891, %3882 ], [ %3926, %3918 ], [ %3067, %3964 ], [ %3974, %3966 ]
  %4010 = phi float [ %3068, %3851 ], [ %3068, %3251 ], [ %3068, %3050 ], [ %3068, %3070 ], [ %3906, %3882 ], [ %3957, %3918 ], [ %3068, %3964 ], [ %3985, %3966 ]
  %4011 = phi float [ %3859, %3851 ], [ %3069, %3251 ], [ %3069, %3050 ], [ %3069, %3070 ], [ %3859, %3882 ], [ %3859, %3918 ], [ %3859, %3964 ], [ %3859, %3966 ]
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 0
  %4014 = call float @dx.op.dot2.f32(i32 54, float %3993, float %3994, float %3993, float %3994)  ; Dot2(ax,ay,bx,by)
  %4015 = fmul fast float %4014, 0x3FE3333340000000
  %4016 = fsub fast float 1.000000e+00, %4015
  %4017 = call float @dx.op.dot3.f32(i32 55, float %3993, float %3994, float %4016, float %3993, float %3994, float %4016)  ; Dot3(ax,ay,az,bx,by,bz)
  %4018 = call float @dx.op.unary.f32(i32 25, float %4017)  ; Rsqrt(value)
  %4019 = fmul fast float %4018, %3993
  %4020 = fmul fast float %4018, %3994
  %4021 = fmul fast float %4016, %4018
  %4022 = fmul fast float %4021, %104
  %4023 = fmul fast float %4021, %105
  %4024 = fmul fast float %4021, %106
  %4025 = fmul fast float %4019, %72
  %4026 = fmul fast float %4019, %73
  %4027 = fmul fast float %4019, %74
  %4028 = fadd fast float %4022, %4025
  %4029 = fadd fast float %4023, %4026
  %4030 = fadd fast float %4024, %4027
  %4031 = fmul fast float %116, %4020
  %4032 = fmul fast float %117, %4020
  %4033 = fmul fast float %118, %4020
  %4034 = fadd fast float %4028, %4031
  %4035 = fadd fast float %4029, %4032
  %4036 = fadd fast float %4030, %4033
  %4037 = call float @dx.op.dot3.f32(i32 55, float %4034, float %4035, float %4036, float %4034, float %4035, float %4036)  ; Dot3(ax,ay,az,bx,by,bz)
  %4038 = call float @dx.op.unary.f32(i32 25, float %4037)  ; Rsqrt(value)
  %4039 = fmul fast float %4034, %4038
  %4040 = fmul fast float %4035, %4038
  %4041 = fmul fast float %4036, %4038
  %4042 = icmp eq i32 %43, 65535
  br i1 %4042, label %4641, label %4043

; <label>:4043                                    ; preds = %3992
  %4044 = call float @dx.op.unary.f32(i32 83, float %44)  ; DerivCoarseX(value)
  %4045 = call float @dx.op.unary.f32(i32 83, float %45)  ; DerivCoarseX(value)
  %4046 = call float @dx.op.unary.f32(i32 83, float %46)  ; DerivCoarseX(value)
  %4047 = call float @dx.op.unary.f32(i32 84, float %44)  ; DerivCoarseY(value)
  %4048 = call float @dx.op.unary.f32(i32 84, float %45)  ; DerivCoarseY(value)
  %4049 = call float @dx.op.unary.f32(i32 84, float %46)  ; DerivCoarseY(value)
  %4050 = fadd fast float %4044, %44
  %4051 = fadd fast float %4045, %45
  %4052 = fadd fast float %4046, %46
  %4053 = fadd fast float %4047, %44
  %4054 = fadd fast float %4048, %45
  %4055 = fadd fast float %4049, %46
  %4056 = mul i32 %43, 48
  %4057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4056, i32 undef)  ; BufferLoad(srv,index,wot)
  %4058 = extractvalue %dx.types.ResRet.f32 %4057, 0
  %4059 = extractvalue %dx.types.ResRet.f32 %4057, 1
  %4060 = extractvalue %dx.types.ResRet.f32 %4057, 2
  %4061 = add i32 %4056, 16
  %4062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4061, i32 undef)  ; BufferLoad(srv,index,wot)
  %4063 = extractvalue %dx.types.ResRet.f32 %4062, 0
  %4064 = extractvalue %dx.types.ResRet.f32 %4062, 1
  %4065 = extractvalue %dx.types.ResRet.f32 %4062, 2
  %4066 = add i32 %4056, 32
  %4067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4066, i32 undef)  ; BufferLoad(srv,index,wot)
  %4068 = extractvalue %dx.types.ResRet.f32 %4067, 0
  %4069 = extractvalue %dx.types.ResRet.f32 %4067, 1
  %4070 = extractvalue %dx.types.ResRet.f32 %4067, 2
  %4071 = extractvalue %dx.types.ResRet.f32 %4067, 3
  %4072 = bitcast float %4071 to i32
  %4073 = fmul fast float %4058, %44
  %4074 = fmul fast float %4059, %45
  %4075 = fmul fast float %4060, %46
  %4076 = fsub fast float %4073, %4063
  %4077 = fsub fast float %4074, %4064
  %4078 = fsub fast float %4075, %4065
  %4079 = call float @dx.op.unary.f32(i32 7, float %4076)  ; Saturate(value)
  %4080 = call float @dx.op.unary.f32(i32 7, float %4077)  ; Saturate(value)
  %4081 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4082 = fmul fast float %4079, %4068
  %4083 = fmul fast float %4080, %4069
  %4084 = fmul fast float %4081, %4070
  %4085 = fadd fast float %4068, -1.000000e+00
  %4086 = fadd fast float %4069, -1.000000e+00
  %4087 = fadd fast float %4070, -1.000000e+00
  %4088 = call float @dx.op.unary.f32(i32 27, float %4082)  ; Round_ni(value)
  %4089 = call float @dx.op.unary.f32(i32 27, float %4083)  ; Round_ni(value)
  %4090 = call float @dx.op.unary.f32(i32 27, float %4084)  ; Round_ni(value)
  %4091 = call float @dx.op.binary.f32(i32 36, float %4088, float %4085)  ; FMin(a,b)
  %4092 = call float @dx.op.binary.f32(i32 36, float %4089, float %4086)  ; FMin(a,b)
  %4093 = call float @dx.op.binary.f32(i32 36, float %4090, float %4087)  ; FMin(a,b)
  %4094 = fmul fast float %4093, %4069
  %4095 = fadd fast float %4094, %4092
  %4096 = fmul fast float %4095, %4068
  %4097 = fadd fast float %4096, %4091
  %4098 = fptosi float %4097 to i32
  %4099 = add nsw i32 %4098, %4072
  %4100 = shl nsw i32 %4099, 2
  %4101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4100, i32 undef)  ; BufferLoad(srv,index,wot)
  %4102 = extractvalue %dx.types.ResRet.i32 %4101, 0
  %4103 = lshr i32 %4102, 16
  %4104 = icmp eq i32 %4103, 0
  br i1 %4104, label %4604, label %4105

; <label>:4105                                    ; preds = %4043
  br label %4106

; <label>:4106                                    ; preds = %4233, %4105
  %4107 = phi i32 [ %4135, %4233 ], [ %4103, %4105 ]
  %4108 = phi float [ %4234, %4233 ], [ 0.000000e+00, %4105 ]
  %4109 = phi float [ %4235, %4233 ], [ %4013, %4105 ]
  %4110 = phi float [ %4236, %4233 ], [ %4011, %4105 ]
  %4111 = phi float [ %4237, %4233 ], [ %4004, %4105 ]
  %4112 = phi float [ %4238, %4233 ], [ %4005, %4105 ]
  %4113 = phi float [ %4239, %4233 ], [ %4006, %4105 ]
  %4114 = phi float [ %4240, %4233 ], [ 0.000000e+00, %4105 ]
  %4115 = phi float [ %4241, %4233 ], [ 0.000000e+00, %4105 ]
  %4116 = phi float [ %4242, %4233 ], [ %4001, %4105 ]
  %4117 = phi float [ %4243, %4233 ], [ %4002, %4105 ]
  %4118 = phi float [ %4244, %4233 ], [ %4003, %4105 ]
  %4119 = phi float [ %4245, %4233 ], [ %3998, %4105 ]
  %4120 = phi float [ %4246, %4233 ], [ %3999, %4105 ]
  %4121 = phi float [ %4247, %4233 ], [ %4000, %4105 ]
  %4122 = phi float [ %4248, %4233 ], [ %4039, %4105 ]
  %4123 = phi float [ %4249, %4233 ], [ %4040, %4105 ]
  %4124 = phi float [ %4250, %4233 ], [ %4041, %4105 ]
  %4125 = phi float [ %4251, %4233 ], [ %4009, %4105 ]
  %4126 = phi float [ %4252, %4233 ], [ %4008, %4105 ]
  %4127 = phi float [ %4253, %4233 ], [ 0.000000e+00, %4105 ]
  %4128 = phi float [ %4254, %4233 ], [ %4007, %4105 ]
  %4129 = phi float [ %4255, %4233 ], [ %3995, %4105 ]
  %4130 = phi float [ %4256, %4233 ], [ %3996, %4105 ]
  %4131 = phi float [ %4257, %4233 ], [ %3997, %4105 ]
  %4132 = shl nuw nsw i32 %4107, 2
  %4133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4132, i32 undef)  ; BufferLoad(srv,index,wot)
  %4134 = extractvalue %dx.types.ResRet.i32 %4133, 0
  %4135 = lshr i32 %4134, 16
  %4136 = shl i32 %4134, 8
  %4137 = and i32 %4136, 16776960
  %4138 = or i32 %4137, 48
  %4139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.ResRet.f32 %4139, 1
  %4142 = extractvalue %dx.types.ResRet.f32 %4139, 2
  %4143 = or i32 %4137, 64
  %4144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.i32 %4144, 0
  %4146 = extractvalue %dx.types.ResRet.i32 %4144, 1
  %4147 = or i32 %4137, 80
  %4148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4147, i32 undef)  ; BufferLoad(srv,index,wot)
  %4149 = extractvalue %dx.types.ResRet.f32 %4148, 2
  %4150 = extractvalue %dx.types.ResRet.f32 %4148, 3
  %4151 = or i32 %4137, 96
  %4152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4151, i32 undef)  ; BufferLoad(srv,index,wot)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.ResRet.f32 %4152, 1
  %4155 = extractvalue %dx.types.ResRet.f32 %4152, 2
  %4156 = extractvalue %dx.types.ResRet.f32 %4152, 3
  %4157 = or i32 %4137, 112
  %4158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4157, i32 undef)  ; BufferLoad(srv,index,wot)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 2
  %4160 = or i32 %4137, 128
  %4161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4160, i32 undef)  ; BufferLoad(srv,index,wot)
  %4162 = extractvalue %dx.types.ResRet.f32 %4161, 0
  %4163 = extractvalue %dx.types.ResRet.f32 %4161, 1
  %4164 = extractvalue %dx.types.ResRet.f32 %4161, 2
  %4165 = extractvalue %dx.types.ResRet.f32 %4161, 3
  %4166 = or i32 %4137, 144
  %4167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4166, i32 undef)  ; BufferLoad(srv,index,wot)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.ResRet.f32 %4167, 1
  %4170 = extractvalue %dx.types.ResRet.f32 %4167, 2
  %4171 = extractvalue %dx.types.ResRet.f32 %4167, 3
  %4172 = or i32 %4137, 160
  %4173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4172, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.ResRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.ResRet.f32 %4173, 2
  %4177 = extractvalue %dx.types.ResRet.f32 %4173, 3
  %4178 = or i32 %4137, 192
  %4179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.i32 %4179, 0
  %4181 = or i32 %4137, 208
  %4182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4181, i32 undef)  ; BufferLoad(srv,index,wot)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = or i32 %4137, 248
  %4185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4184, i32 undef)  ; BufferLoad(srv,index,wot)
  %4186 = extractvalue %dx.types.ResRet.f32 %4185, 0
  %4187 = extractvalue %dx.types.ResRet.f32 %4185, 1
  %4188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4137, i32 undef)  ; BufferLoad(srv,index,wot)
  %4189 = extractvalue %dx.types.ResRet.f32 %4188, 0
  %4190 = extractvalue %dx.types.ResRet.f32 %4188, 1
  %4191 = extractvalue %dx.types.ResRet.f32 %4188, 2
  %4192 = extractvalue %dx.types.ResRet.f32 %4188, 3
  %4193 = call float @dx.op.dot4.f32(i32 56, float %4189, float %4190, float %4191, float %4192, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4194 = or i32 %4137, 16
  %4195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4194, i32 undef)  ; BufferLoad(srv,index,wot)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.ResRet.f32 %4195, 1
  %4198 = extractvalue %dx.types.ResRet.f32 %4195, 2
  %4199 = extractvalue %dx.types.ResRet.f32 %4195, 3
  %4200 = call float @dx.op.dot4.f32(i32 56, float %4196, float %4197, float %4198, float %4199, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4201 = or i32 %4137, 32
  %4202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4201, i32 undef)  ; BufferLoad(srv,index,wot)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4204 = extractvalue %dx.types.ResRet.f32 %4202, 1
  %4205 = extractvalue %dx.types.ResRet.f32 %4202, 2
  %4206 = extractvalue %dx.types.ResRet.f32 %4202, 3
  %4207 = call float @dx.op.dot4.f32(i32 56, float %4203, float %4204, float %4205, float %4206, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4208 = call float @dx.op.unary.f32(i32 27, float %4193)  ; Round_ni(value)
  %4209 = call float @dx.op.unary.f32(i32 6, float %4208)  ; FAbs(value)
  %4210 = call float @dx.op.unary.f32(i32 27, float %4200)  ; Round_ni(value)
  %4211 = call float @dx.op.unary.f32(i32 6, float %4210)  ; FAbs(value)
  %4212 = call float @dx.op.unary.f32(i32 6, float %4207)  ; FAbs(value)
  %4213 = call float @dx.op.unary.f32(i32 27, float %4212)  ; Round_ni(value)
  %4214 = fadd fast float %4211, %4209
  %4215 = fadd fast float %4214, %4213
  %4216 = fcmp fast oeq float %4215, 0.000000e+00
  %4217 = call float @dx.op.dot4.f32(i32 56, float %4189, float %4190, float %4191, float %4192, float %4050, float %4051, float %4052, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4218 = call float @dx.op.dot4.f32(i32 56, float %4196, float %4197, float %4198, float %4199, float %4050, float %4051, float %4052, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4219 = call float @dx.op.dot4.f32(i32 56, float %4189, float %4190, float %4191, float %4192, float %4053, float %4054, float %4055, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4220 = call float @dx.op.dot4.f32(i32 56, float %4196, float %4197, float %4198, float %4199, float %4053, float %4054, float %4055, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4221 = fsub fast float %4217, %4193
  %4222 = fsub fast float %4219, %4193
  %4223 = fsub fast float %4218, %4200
  %4224 = fsub fast float %4220, %4200
  %4225 = call float @dx.op.dot3.f32(i32 55, float %4140, float %4141, float %4142, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.f32 %4226, 2
  %4228 = fadd fast float %4227, %4225
  %4229 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4226, 0
  %4231 = fcmp fast ogt float %4229, %4230
  %4232 = and i1 %4216, %4231
  br i1 %4232, label %4259, label %4233

; <label>:4233                                    ; preds = %4590, %4342, %4259, %4106
  %4234 = phi float [ %4108, %4259 ], [ %4345, %4342 ], [ %4345, %4590 ], [ %4108, %4106 ]
  %4235 = phi float [ %4109, %4259 ], [ %4109, %4342 ], [ %4566, %4590 ], [ %4109, %4106 ]
  %4236 = phi float [ %4110, %4259 ], [ %4110, %4342 ], [ %4564, %4590 ], [ %4110, %4106 ]
  %4237 = phi float [ %4111, %4259 ], [ %4111, %4342 ], [ %4542, %4590 ], [ %4111, %4106 ]
  %4238 = phi float [ %4112, %4259 ], [ %4112, %4342 ], [ %4543, %4590 ], [ %4112, %4106 ]
  %4239 = phi float [ %4113, %4259 ], [ %4113, %4342 ], [ %4544, %4590 ], [ %4113, %4106 ]
  %4240 = phi float [ %4114, %4259 ], [ %4114, %4342 ], [ %4469, %4590 ], [ %4114, %4106 ]
  %4241 = phi float [ %4115, %4259 ], [ %4115, %4342 ], [ %4467, %4590 ], [ %4115, %4106 ]
  %4242 = phi float [ %4116, %4259 ], [ %4116, %4342 ], [ %4512, %4590 ], [ %4116, %4106 ]
  %4243 = phi float [ %4117, %4259 ], [ %4117, %4342 ], [ %4513, %4590 ], [ %4117, %4106 ]
  %4244 = phi float [ %4118, %4259 ], [ %4118, %4342 ], [ %4514, %4590 ], [ %4118, %4106 ]
  %4245 = phi float [ %4119, %4259 ], [ %4119, %4342 ], [ %4600, %4590 ], [ %4119, %4106 ]
  %4246 = phi float [ %4120, %4259 ], [ %4120, %4342 ], [ %4601, %4590 ], [ %4120, %4106 ]
  %4247 = phi float [ %4121, %4259 ], [ %4121, %4342 ], [ %4602, %4590 ], [ %4121, %4106 ]
  %4248 = phi float [ %4122, %4259 ], [ %4122, %4342 ], [ %4448, %4590 ], [ %4122, %4106 ]
  %4249 = phi float [ %4123, %4259 ], [ %4123, %4342 ], [ %4449, %4590 ], [ %4123, %4106 ]
  %4250 = phi float [ %4124, %4259 ], [ %4124, %4342 ], [ %4450, %4590 ], [ %4124, %4106 ]
  %4251 = phi float [ %4125, %4259 ], [ %4125, %4342 ], [ %4522, %4590 ], [ %4125, %4106 ]
  %4252 = phi float [ %4126, %4259 ], [ %4126, %4342 ], [ %4519, %4590 ], [ %4126, %4106 ]
  %4253 = phi float [ %4127, %4259 ], [ %4127, %4342 ], [ %4516, %4590 ], [ %4127, %4106 ]
  %4254 = phi float [ %4128, %4259 ], [ %4128, %4342 ], [ %4465, %4590 ], [ %4128, %4106 ]
  %4255 = phi float [ %4129, %4259 ], [ %4129, %4342 ], [ %4460, %4590 ], [ %4129, %4106 ]
  %4256 = phi float [ %4130, %4259 ], [ %4130, %4342 ], [ %4461, %4590 ], [ %4130, %4106 ]
  %4257 = phi float [ %4131, %4259 ], [ %4131, %4342 ], [ %4462, %4590 ], [ %4131, %4106 ]
  %4258 = icmp eq i32 %4135, 0
  br i1 %4258, label %4603, label %4106

; <label>:4259                                    ; preds = %4106
  %4260 = extractvalue %dx.types.ResRet.f32 %4139, 3
  %4261 = extractvalue %dx.types.ResRet.f32 %4158, 3
  %4262 = extractvalue %dx.types.ResRet.f32 %4158, 1
  %4263 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4264 = extractvalue %dx.types.ResRet.f32 %4148, 1
  %4265 = extractvalue %dx.types.ResRet.f32 %4148, 0
  %4266 = extractvalue %dx.types.ResRet.i32 %4144, 3
  %4267 = extractvalue %dx.types.ResRet.i32 %4144, 2
  %4268 = bitcast float %4260 to i32
  %4269 = add i32 %4266, 0
  %4270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4269, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4272 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4270, %dx.types.Handle %4271, float %4193, float %4200, float undef, float undef, i32 0, i32 0, i32 undef, float %4221, float %4223, float undef, float %4222, float %4224, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4273 = extractvalue %dx.types.ResRet.f32 %4272, 0
  %4274 = fmul fast float %4273, %4265
  %4275 = fadd fast float %4274, %4264
  %4276 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4277 = fmul fast float %4193, %4153
  %4278 = call float @dx.op.tertiary.f32(i32 46, float %4154, float %4200, float %4277)  ; FMad(a,b,c)
  %4279 = fadd fast float %4278, %4263
  %4280 = fmul fast float %4193, %4155
  %4281 = call float @dx.op.tertiary.f32(i32 46, float %4156, float %4200, float %4280)  ; FMad(a,b,c)
  %4282 = fadd fast float %4281, %4262
  %4283 = fmul fast float %4221, %4153
  %4284 = call float @dx.op.tertiary.f32(i32 46, float %4154, float %4223, float %4283)  ; FMad(a,b,c)
  %4285 = fmul fast float %4221, %4155
  %4286 = call float @dx.op.tertiary.f32(i32 46, float %4156, float %4223, float %4285)  ; FMad(a,b,c)
  %4287 = fmul fast float %4222, %4153
  %4288 = call float @dx.op.tertiary.f32(i32 46, float %4154, float %4224, float %4287)  ; FMad(a,b,c)
  %4289 = fmul fast float %4222, %4155
  %4290 = call float @dx.op.tertiary.f32(i32 46, float %4156, float %4224, float %4289)  ; FMad(a,b,c)
  %4291 = add i32 %4267, 0
  %4292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4291, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4293 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4292, %dx.types.Handle %4271, float %4279, float %4282, float undef, float undef, i32 0, i32 0, i32 undef, float %4284, float %4286, float undef, float %4288, float %4290, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4294 = extractvalue %dx.types.ResRet.f32 %4293, 0
  %4295 = and i32 %4268, 1024
  %4296 = icmp ne i32 %4295, 0
  %4297 = fcmp fast ogt float %4294, 0x3FE0101020000000
  %4298 = uitofp i1 %4297 to float
  %4299 = select i1 %4296, float %4298, float %4294
  %4300 = and i32 %4268, 8192
  %4301 = icmp ne i32 %4300, 0
  %4302 = select i1 %4301, float %4261, float 1.000000e+00
  %4303 = fmul fast float %4193, 2.000000e+00
  %4304 = fadd fast float %4303, -1.000000e+00
  %4305 = call float @dx.op.unary.f32(i32 6, float %4304)  ; FAbs(value)
  %4306 = fmul fast float %4305, %4186
  %4307 = fsub fast float %4306, %4186
  %4308 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4309 = fmul fast float %4200, 2.000000e+00
  %4310 = fadd fast float %4309, -1.000000e+00
  %4311 = call float @dx.op.unary.f32(i32 6, float %4310)  ; FAbs(value)
  %4312 = fmul fast float %4311, %4187
  %4313 = fsub fast float %4312, %4187
  %4314 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4315 = fmul fast float %4212, %4149
  %4316 = fsub fast float %4315, %4149
  %4317 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4318 = fmul fast float %4276, %4302
  %4319 = fmul fast float %4318, %4273
  %4320 = fmul fast float %4319, %4308
  %4321 = fmul fast float %4320, %4299
  %4322 = fmul fast float %4321, %4314
  %4323 = fmul fast float %4322, %4317
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 1
  %4326 = extractvalue %dx.types.CBufRet.f32 %4324, 0
  %4327 = fsub fast float %4229, %4326
  %4328 = fmul fast float %4327, %4325
  %4329 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4330 = fmul fast float %4323, %4150
  %4331 = fadd fast float %4323, %4150
  %4332 = fmul fast float %4331, %4159
  %4333 = fsub fast float %4332, %4159
  %4334 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4335 = and i32 %4268, 128
  %4336 = icmp ne i32 %4335, 0
  %4337 = select i1 %4336, float %4334, float %4330
  %4338 = fmul fast float %4337, %4329
  %4339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4340 = extractvalue %dx.types.CBufRet.f32 %4339, 0
  %4341 = fcmp fast ugt float %4338, %4340
  br i1 %4341, label %4342, label %4233

; <label>:4342                                    ; preds = %4259
  %4343 = select i1 %4301, float %4338, float 0.000000e+00
  %4344 = fadd fast float %4343, %4108
  %4345 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  br i1 %4301, label %4233, label %4346

; <label>:4346                                    ; preds = %4342
  %4347 = and i32 %4268, 4
  %4348 = and i32 %4268, 8
  %4349 = add i32 %4145, 0
  %4350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4349, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4352 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4350, %dx.types.Handle %4351, float %4279, float %4282, float undef, float undef, i32 0, i32 0, i32 undef, float %4284, float %4286, float undef, float %4288, float %4290, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4353 = extractvalue %dx.types.ResRet.f32 %4352, 0
  %4354 = extractvalue %dx.types.ResRet.f32 %4352, 1
  %4355 = extractvalue %dx.types.ResRet.f32 %4352, 2
  %4356 = extractvalue %dx.types.ResRet.f32 %4352, 3
  %4357 = bitcast float %4171 to i32
  %4358 = and i32 %4357, 255
  %4359 = uitofp i32 %4358 to float
  %4360 = lshr i32 %4357, 8
  %4361 = and i32 %4360, 255
  %4362 = uitofp i32 %4361 to float
  %4363 = fmul fast float %4356, %4359
  %4364 = fadd fast float %4363, %4362
  %4365 = fmul fast float %4364, 0x3F70101000000000
  %4366 = add i32 %4146, 0
  %4367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4366, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4368 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4367, %dx.types.Handle %4351, float %4279, float %4282, float undef, float undef, i32 0, i32 0, i32 undef, float %4284, float %4286, float undef, float %4288, float %4290, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = extractvalue %dx.types.ResRet.f32 %4368, 1
  %4371 = extractvalue %dx.types.ResRet.f32 %4368, 2
  %4372 = extractvalue %dx.types.ResRet.f32 %4368, 3
  %4373 = bitcast float %4165 to i32
  %4374 = and i32 %4373, 255
  %4375 = uitofp i32 %4374 to float
  %4376 = lshr i32 %4373, 8
  %4377 = and i32 %4376, 255
  %4378 = uitofp i32 %4377 to float
  %4379 = lshr i32 %4373, 16
  %4380 = and i32 %4379, 255
  %4381 = uitofp i32 %4380 to float
  %4382 = fmul fast float %4381, 0x3F70101000000000
  %4383 = fmul fast float %4369, %4375
  %4384 = fadd fast float %4383, %4378
  %4385 = fmul fast float %4384, 0x3F70101000000000
  %4386 = fadd fast float %4370, -5.000000e-01
  %4387 = fadd fast float %4372, -5.000000e-01
  %4388 = fmul fast float %4386, %4382
  %4389 = fmul fast float %4387, %4382
  %4390 = fadd fast float %4388, 5.000000e-01
  %4391 = fadd fast float %4389, 5.000000e-01
  %4392 = fmul fast float %4353, %4174
  %4393 = fmul fast float %4354, %4175
  %4394 = fmul fast float %4355, %4176
  %4395 = fmul fast float %4390, 2.000000e+00
  %4396 = fadd fast float %4395, -1.000000e+00
  %4397 = fmul fast float %4391, 2.000000e+00
  %4398 = fadd fast float %4397, -1.000000e+00
  %4399 = fadd fast float %4396, %4398
  %4400 = fmul fast float %4399, 5.000000e-01
  %4401 = fsub fast float %4396, %4398
  %4402 = fmul fast float %4401, 5.000000e-01
  %4403 = call float @dx.op.unary.f32(i32 6, float %4400)  ; FAbs(value)
  %4404 = fsub fast float 1.000000e+00, %4403
  %4405 = call float @dx.op.unary.f32(i32 6, float %4402)  ; FAbs(value)
  %4406 = fsub fast float %4404, %4405
  %4407 = call float @dx.op.dot3.f32(i32 55, float %4400, float %4402, float %4406, float %4400, float %4402, float %4406)  ; Dot3(ax,ay,az,bx,by,bz)
  %4408 = call float @dx.op.unary.f32(i32 25, float %4407)  ; Rsqrt(value)
  %4409 = fmul fast float %4400, %4408
  %4410 = fmul fast float %4402, %4408
  %4411 = fmul fast float %4408, %4406
  %4412 = fmul fast float %4411, %4140
  %4413 = fmul fast float %4411, %4141
  %4414 = fmul fast float %4411, %4142
  %4415 = fmul fast float %4409, %4162
  %4416 = fmul fast float %4409, %4163
  %4417 = fmul fast float %4409, %4164
  %4418 = fadd fast float %4415, %4412
  %4419 = fadd fast float %4416, %4413
  %4420 = fadd fast float %4417, %4414
  %4421 = fmul fast float %4410, %4168
  %4422 = fmul fast float %4410, %4169
  %4423 = fmul fast float %4410, %4170
  %4424 = fadd fast float %4418, %4421
  %4425 = fadd fast float %4419, %4422
  %4426 = fadd fast float %4420, %4423
  %4427 = call float @dx.op.dot3.f32(i32 55, float %4424, float %4425, float %4426, float %4424, float %4425, float %4426)  ; Dot3(ax,ay,az,bx,by,bz)
  %4428 = call float @dx.op.unary.f32(i32 25, float %4427)  ; Rsqrt(value)
  %4429 = fmul fast float %4424, %4428
  %4430 = fmul fast float %4425, %4428
  %4431 = fmul fast float %4426, %4428
  %4432 = icmp ne i32 %4348, 0
  %4433 = select i1 %4432, float 1.000000e+00, float 0.000000e+00
  %4434 = fmul fast float %4338, %4433
  %4435 = and i32 %4268, 1
  %4436 = icmp eq i32 %4435, 0
  br i1 %4436, label %4437, label %4441

; <label>:4437                                    ; preds = %4346
  %4438 = fsub fast float %4429, %4122
  %4439 = fsub fast float %4430, %4123
  %4440 = fsub fast float %4431, %4124
  br label %4441

; <label>:4441                                    ; preds = %4437, %4346
  %4442 = phi float [ %4438, %4437 ], [ %4429, %4346 ]
  %4443 = phi float [ %4439, %4437 ], [ %4430, %4346 ]
  %4444 = phi float [ %4440, %4437 ], [ %4431, %4346 ]
  %4445 = fmul float %4444, %4434
  %4446 = fmul float %4443, %4434
  %4447 = fmul float %4442, %4434
  %4448 = fadd fast float %4447, %4122
  %4449 = fadd fast float %4446, %4123
  %4450 = fadd fast float %4445, %4124
  %4451 = icmp ne i32 %4347, 0
  %4452 = select i1 %4451, float 1.000000e+00, float 0.000000e+00
  %4453 = fmul fast float %4338, %4452
  %4454 = fsub fast float %4392, %4129
  %4455 = fsub fast float %4393, %4130
  %4456 = fsub fast float %4394, %4131
  %4457 = fmul fast float %4454, %4453
  %4458 = fmul fast float %4455, %4453
  %4459 = fmul fast float %4456, %4453
  %4460 = fadd fast float %4457, %4129
  %4461 = fadd fast float %4458, %4130
  %4462 = fadd fast float %4459, %4131
  %4463 = fsub fast float %4365, %4128
  %4464 = fmul fast float %4463, %4453
  %4465 = fadd fast float %4464, %4128
  %4466 = fmul fast float %4453, %4115
  %4467 = fsub fast float %4115, %4466
  %4468 = fmul fast float %4453, %4114
  %4469 = fsub fast float %4114, %4468
  %4470 = bitcast float %4183 to i32
  %4471 = lshr i32 %4470, 16
  %4472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4471)  ; LegacyF16ToF32(value)
  %4473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %4474 = extractvalue %dx.types.ResRet.i32 %4473, 0
  %4475 = and i32 %4474, 1
  %4476 = icmp eq i32 %4475, 0
  br i1 %4476, label %4477, label %4502

; <label>:4477                                    ; preds = %4441
  %4478 = fadd fast float %4365, 0xBFB99999A0000000
  %4479 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4480 = fmul fast float %4479, 0x3FF1C71C80000000
  %4481 = fsub fast float 1.000000e+00, %4480
  %4482 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4483 = fmul fast float %4482, %4392
  %4484 = fmul fast float %4482, %4393
  %4485 = fmul fast float %4482, %4394
  %4486 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4489 = call float @dx.op.binary.f32(i32 35, float %4487, float %4488)  ; FMax(a,b)
  %4490 = call float @dx.op.binary.f32(i32 35, float %4486, float %4489)  ; FMax(a,b)
  %4491 = fcmp fast ogt float %4490, 0.000000e+00
  %4492 = bitcast float %4490 to i32
  %4493 = sub nsw i32 2129859010, %4492
  %4494 = bitcast i32 %4493 to float
  %4495 = select i1 %4491, float %4494, float 0.000000e+00
  %4496 = fmul fast float %4486, %4472
  %4497 = fmul fast float %4487, %4472
  %4498 = fmul fast float %4488, %4472
  %4499 = fmul fast float %4496, %4495
  %4500 = fmul fast float %4497, %4495
  %4501 = fmul fast float %4498, %4495
  br label %4502

; <label>:4502                                    ; preds = %4477, %4441
  %4503 = phi float [ %4472, %4441 ], [ %4499, %4477 ]
  %4504 = phi float [ %4472, %4441 ], [ %4500, %4477 ]
  %4505 = phi float [ %4472, %4441 ], [ %4501, %4477 ]
  %4506 = fsub fast float %4503, %4116
  %4507 = fsub fast float %4504, %4117
  %4508 = fsub fast float %4505, %4118
  %4509 = fmul fast float %4506, %4453
  %4510 = fmul fast float %4507, %4453
  %4511 = fmul fast float %4508, %4453
  %4512 = fadd fast float %4509, %4116
  %4513 = fadd fast float %4510, %4117
  %4514 = fadd fast float %4511, %4118
  %4515 = fadd fast float %4338, %4127
  %4516 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4517 = fsub fast float %4385, %4126
  %4518 = fmul fast float %4517, %4434
  %4519 = fadd fast float %4518, %4126
  %4520 = fsub fast float %4371, %4125
  %4521 = fmul fast float %4520, %4434
  %4522 = fadd fast float %4521, %4125
  br i1 %4436, label %4531, label %4523

; <label>:4523                                    ; preds = %4502
  %4524 = and i32 %4268, 32768
  %4525 = icmp eq i32 %4524, 0
  br i1 %4525, label %4541, label %4526

; <label>:4526                                    ; preds = %4523
  %4527 = fmul fast float %4434, 1.270000e+02
  %4528 = fadd fast float %4527, %4111
  %4529 = fadd fast float %4527, %4112
  %4530 = fadd fast float %4527, %4113
  br label %4541

; <label>:4531                                    ; preds = %4502
  %4532 = fsub fast float 1.270000e+02, %4111
  %4533 = fsub fast float 1.270000e+02, %4112
  %4534 = fsub fast float 1.270000e+02, %4113
  %4535 = fmul fast float %4434, %4532
  %4536 = fmul fast float %4434, %4533
  %4537 = fmul fast float %4434, %4534
  %4538 = fadd fast float %4535, %4111
  %4539 = fadd fast float %4536, %4112
  %4540 = fadd fast float %4537, %4113
  br label %4541

; <label>:4541                                    ; preds = %4531, %4526, %4523
  %4542 = phi float [ %4528, %4526 ], [ %4111, %4523 ], [ %4538, %4531 ]
  %4543 = phi float [ %4529, %4526 ], [ %4112, %4523 ], [ %4539, %4531 ]
  %4544 = phi float [ %4530, %4526 ], [ %4113, %4523 ], [ %4540, %4531 ]
  %4545 = call float @dx.op.dot3.f32(i32 55, float %4392, float %4393, float %4394, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4547 = extractvalue %dx.types.CBufRet.f32 %4546, 0
  %4548 = extractvalue %dx.types.CBufRet.f32 %4546, 1
  %4549 = fmul fast float %4548, %4545
  %4550 = fadd fast float %4549, %4547
  %4551 = call float @dx.op.unary.f32(i32 7, float %4550)  ; Saturate(value)
  %4552 = bitcast float %4177 to i32
  %4553 = and i32 %4552, 65535
  %4554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4553)  ; LegacyF16ToF32(value)
  %4555 = lshr i32 %4552, 16
  %4556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4555)  ; LegacyF16ToF32(value)
  %4557 = fcmp fast oge float %4554, 0.000000e+00
  %4558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4559 = extractvalue %dx.types.CBufRet.f32 %4558, 0
  %4560 = select i1 %4557, float %4554, float %4559
  %4561 = fadd fast float %4560, %4556
  %4562 = fsub fast float %4551, %4110
  %4563 = fmul fast float %4562, %4338
  %4564 = fadd fast float %4563, %4110
  %4565 = fmul fast float %4561, %4338
  %4566 = call float @dx.op.binary.f32(i32 35, float %4109, float %4565)  ; FMax(a,b)
  %4567 = and i32 %4268, 16
  %4568 = icmp eq i32 %4567, 0
  br i1 %4568, label %4590, label %4569

; <label>:4569                                    ; preds = %4541
  %4570 = add i32 %4180, 0
  %4571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4570, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4572 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4571, %dx.types.Handle %4351, float %4279, float %4282, float undef, float undef, i32 0, i32 0, i32 undef, float %4284, float %4286, float undef, float %4288, float %4290, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.ResRet.f32 %4572, 1
  %4575 = extractvalue %dx.types.ResRet.f32 %4572, 2
  %4576 = and i32 %4470, 65535
  %4577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4576)  ; LegacyF16ToF32(value)
  %4578 = fmul fast float %4573, %4174
  %4579 = fmul fast float %4574, %4175
  %4580 = fmul fast float %4575, %4176
  %4581 = and i32 %4268, 16384
  %4582 = icmp ne i32 %4581, 0
  %4583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.f32 %4583, 0
  %4585 = select i1 %4582, float %4584, float 1.000000e+00
  %4586 = fmul fast float %4585, %4577
  %4587 = fmul fast float %4578, %4586
  %4588 = fmul fast float %4579, %4586
  %4589 = fmul fast float %4580, %4586
  br label %4590

; <label>:4590                                    ; preds = %4569, %4541
  %4591 = phi float [ %4587, %4569 ], [ 0.000000e+00, %4541 ]
  %4592 = phi float [ %4588, %4569 ], [ 0.000000e+00, %4541 ]
  %4593 = phi float [ %4589, %4569 ], [ 0.000000e+00, %4541 ]
  %4594 = fsub fast float %4591, %4119
  %4595 = fsub fast float %4592, %4120
  %4596 = fsub fast float %4593, %4121
  %4597 = fmul fast float %4594, %4338
  %4598 = fmul fast float %4595, %4338
  %4599 = fmul fast float %4596, %4338
  %4600 = fadd fast float %4597, %4119
  %4601 = fadd fast float %4598, %4120
  %4602 = fadd fast float %4599, %4121
  br label %4233

; <label>:4603                                    ; preds = %4233
  br label %4604

; <label>:4604                                    ; preds = %4603, %4043
  %4605 = phi float [ 0.000000e+00, %4043 ], [ %4234, %4603 ]
  %4606 = phi float [ %4013, %4043 ], [ %4235, %4603 ]
  %4607 = phi float [ %4011, %4043 ], [ %4236, %4603 ]
  %4608 = phi float [ %4004, %4043 ], [ %4237, %4603 ]
  %4609 = phi float [ %4005, %4043 ], [ %4238, %4603 ]
  %4610 = phi float [ %4006, %4043 ], [ %4239, %4603 ]
  %4611 = phi float [ 0.000000e+00, %4043 ], [ %4240, %4603 ]
  %4612 = phi float [ 0.000000e+00, %4043 ], [ %4241, %4603 ]
  %4613 = phi float [ %4001, %4043 ], [ %4242, %4603 ]
  %4614 = phi float [ %4002, %4043 ], [ %4243, %4603 ]
  %4615 = phi float [ %4003, %4043 ], [ %4244, %4603 ]
  %4616 = phi float [ %3998, %4043 ], [ %4245, %4603 ]
  %4617 = phi float [ %3999, %4043 ], [ %4246, %4603 ]
  %4618 = phi float [ %4000, %4043 ], [ %4247, %4603 ]
  %4619 = phi float [ %4039, %4043 ], [ %4248, %4603 ]
  %4620 = phi float [ %4040, %4043 ], [ %4249, %4603 ]
  %4621 = phi float [ %4041, %4043 ], [ %4250, %4603 ]
  %4622 = phi float [ %4009, %4043 ], [ %4251, %4603 ]
  %4623 = phi float [ %4008, %4043 ], [ %4252, %4603 ]
  %4624 = phi float [ 0.000000e+00, %4043 ], [ %4253, %4603 ]
  %4625 = phi float [ %4007, %4043 ], [ %4254, %4603 ]
  %4626 = phi float [ %3995, %4043 ], [ %4255, %4603 ]
  %4627 = phi float [ %3996, %4043 ], [ %4256, %4603 ]
  %4628 = phi float [ %3997, %4043 ], [ %4257, %4603 ]
  %4629 = call float @dx.op.dot3.f32(i32 55, float %4619, float %4620, float %4621, float %4619, float %4620, float %4621)  ; Dot3(ax,ay,az,bx,by,bz)
  %4630 = call float @dx.op.unary.f32(i32 25, float %4629)  ; Rsqrt(value)
  %4631 = fmul fast float %4630, %4619
  %4632 = fmul fast float %4630, %4620
  %4633 = fmul fast float %4630, %4621
  %4634 = fadd fast float %4624, %1181
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = call float @dx.op.dot3.f32(i32 55, float %4631, float %4632, float %4633, float %4631, float %4632, float %4633)  ; Dot3(ax,ay,az,bx,by,bz)
  %4637 = call float @dx.op.unary.f32(i32 25, float %4636)  ; Rsqrt(value)
  %4638 = fmul fast float %4637, %4631
  %4639 = fmul fast float %4637, %4632
  %4640 = fmul fast float %4637, %4633
  br label %4641

; <label>:4641                                    ; preds = %4604, %3992
  %4642 = phi float [ %4638, %4604 ], [ %4039, %3992 ]
  %4643 = phi float [ %4639, %4604 ], [ %4040, %3992 ]
  %4644 = phi float [ %4640, %4604 ], [ %4041, %3992 ]
  %4645 = phi float [ %4626, %4604 ], [ %3995, %3992 ]
  %4646 = phi float [ %4627, %4604 ], [ %3996, %3992 ]
  %4647 = phi float [ %4628, %4604 ], [ %3997, %3992 ]
  %4648 = phi float [ %4613, %4604 ], [ %4001, %3992 ]
  %4649 = phi float [ %4614, %4604 ], [ %4002, %3992 ]
  %4650 = phi float [ %4615, %4604 ], [ %4003, %3992 ]
  %4651 = phi float [ %4616, %4604 ], [ %3998, %3992 ]
  %4652 = phi float [ %4617, %4604 ], [ %3999, %3992 ]
  %4653 = phi float [ %4618, %4604 ], [ %4000, %3992 ]
  %4654 = phi float [ %4608, %4604 ], [ %4004, %3992 ]
  %4655 = phi float [ %4609, %4604 ], [ %4005, %3992 ]
  %4656 = phi float [ %4610, %4604 ], [ %4006, %3992 ]
  %4657 = phi float [ %4625, %4604 ], [ %4007, %3992 ]
  %4658 = phi float [ %4635, %4604 ], [ %1181, %3992 ]
  %4659 = phi float [ %4623, %4604 ], [ %4008, %3992 ]
  %4660 = phi float [ %4622, %4604 ], [ %4009, %3992 ]
  %4661 = phi float [ %4612, %4604 ], [ 0.000000e+00, %3992 ]
  %4662 = phi float [ %4611, %4604 ], [ 0.000000e+00, %3992 ]
  %4663 = phi float [ %4605, %4604 ], [ 0.000000e+00, %3992 ]
  %4664 = phi float [ %4606, %4604 ], [ %4013, %3992 ]
  %4665 = phi float [ %4607, %4604 ], [ %4011, %3992 ]
  %4666 = add i32 %42, 392
  %4667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4666, i32 undef)  ; BufferLoad(srv,index,wot)
  %4668 = extractvalue %dx.types.ResRet.i32 %4667, 0
  %4669 = extractvalue %dx.types.ResRet.i32 %4667, 1
  %4670 = extractvalue %dx.types.ResRet.i32 %4667, 2
  %4671 = extractvalue %dx.types.ResRet.i32 %4667, 3
  %4672 = bitcast i32 %4668 to float
  %4673 = bitcast i32 %4669 to float
  %4674 = bitcast i32 %4670 to float
  %4675 = bitcast i32 %4671 to float
  %4676 = fsub fast float %4645, %4672
  %4677 = fsub fast float %4646, %4673
  %4678 = fsub fast float %4647, %4674
  %4679 = fmul fast float %4676, %210
  %4680 = fmul fast float %4677, %210
  %4681 = fmul fast float %4678, %210
  %4682 = fadd fast float %4679, %4672
  %4683 = fadd fast float %4680, %4673
  %4684 = fadd fast float %4681, %4674
  %4685 = fsub fast float %4658, %4675
  %4686 = fmul fast float %4685, %210
  %4687 = fadd fast float %4686, %4675
  %4688 = fadd fast float %4657, 0xBFB99999A0000000
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = fmul fast float %4689, 0x3FF1C71C80000000
  %4691 = call float @dx.op.binary.f32(i32 36, float %4657, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4692 = fsub fast float 1.000000e+00, %4690
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = fmul fast float %4682, %4693
  %4695 = fmul fast float %4683, %4693
  %4696 = fmul fast float %4684, %4693
  %4697 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4698 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4699 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4700 = fmul fast float %4682, %4690
  %4701 = fmul fast float %4683, %4690
  %4702 = fmul fast float %4684, %4690
  %4703 = fadd fast float %4700, %4691
  %4704 = fadd fast float %4701, %4691
  %4705 = fadd fast float %4702, %4691
  %4706 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4708 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4709 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %4711 = extractvalue %dx.types.ResRet.i32 %4710, 0
  %4712 = and i32 %4711, 1
  %4713 = icmp eq i32 %4712, 0
  br i1 %4713, label %4728, label %4714

; <label>:4714                                    ; preds = %4641
  %4715 = call float @dx.op.binary.f32(i32 35, float %4698, float %4699)  ; FMax(a,b)
  %4716 = call float @dx.op.binary.f32(i32 35, float %4697, float %4715)  ; FMax(a,b)
  %4717 = fcmp fast ogt float %4716, 0.000000e+00
  %4718 = bitcast float %4716 to i32
  %4719 = sub nsw i32 2129859010, %4718
  %4720 = bitcast i32 %4719 to float
  %4721 = select i1 %4717, float %4720, float 0.000000e+00
  %4722 = fmul fast float %4697, %4648
  %4723 = fmul fast float %4698, %4649
  %4724 = fmul fast float %4699, %4650
  %4725 = fmul fast float %4722, %4721
  %4726 = fmul fast float %4723, %4721
  %4727 = fmul fast float %4724, %4721
  br label %4728

; <label>:4728                                    ; preds = %4714, %4641
  %4729 = phi float [ %4725, %4714 ], [ %4648, %4641 ]
  %4730 = phi float [ %4726, %4714 ], [ %4649, %4641 ]
  %4731 = phi float [ %4727, %4714 ], [ %4650, %4641 ]
  %4732 = call float @dx.op.binary.f32(i32 36, float %4654, float 1.270000e+02)  ; FMin(a,b)
  %4733 = call float @dx.op.binary.f32(i32 36, float %4655, float 1.270000e+02)  ; FMin(a,b)
  %4734 = call float @dx.op.binary.f32(i32 36, float %4656, float 1.270000e+02)  ; FMin(a,b)
  %4735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = extractvalue %dx.types.CBufRet.i32 %4735, 3
  %4737 = and i32 %4736, 8
  %4738 = icmp ne i32 %4737, 0
  %4739 = call float @dx.op.binary.f32(i32 35, float %4697, float %4682)  ; FMax(a,b)
  %4740 = call float @dx.op.binary.f32(i32 35, float %4698, float %4682)  ; FMax(a,b)
  %4741 = call float @dx.op.binary.f32(i32 35, float %4699, float %4682)  ; FMax(a,b)
  %4742 = call float @dx.op.dot3.f32(i32 55, float %4697, float %4698, float %4699, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4743 = select i1 %269, float %4682, float %4697
  %4744 = select i1 %269, float %4742, float %4698
  %4745 = select i1 %269, float 1.000000e+00, float %4699
  %4746 = select i1 %4738, float %4739, float %4743
  %4747 = select i1 %4738, float %4740, float %4744
  %4748 = select i1 %4738, float %4741, float %4745
  %4749 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4750 = select i1 %269, float %4749, float %4729
  %4751 = select i1 %269, float %4749, float %4730
  %4752 = select i1 %269, float %4749, float %4731
  %4753 = and i32 %245, 3
  %4754 = select i1 %239, i32 %4753, i32 0
  %4755 = icmp eq i32 %4754, 1
  br i1 %4755, label %4756, label %4832

; <label>:4756                                    ; preds = %4728
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.CBufRet.f32 %4757, 1
  %4760 = fadd fast float %4758, %176
  %4761 = fadd fast float %4759, %177
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 0
  %4764 = extractvalue %dx.types.CBufRet.f32 %4762, 1
  %4765 = fsub fast float %4760, %4763
  %4766 = fsub fast float %4761, %4764
  %4767 = fmul fast float %4765, %4765
  %4768 = fmul fast float %4766, %4766
  %4769 = fadd fast float %4767, %4768
  %4770 = call float @dx.op.unary.f32(i32 24, float %4769)  ; Sqrt(value)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4762, 2
  %4772 = fcmp fast olt float %4770, %4771
  br i1 %4772, label %4773, label %4826

; <label>:4773                                    ; preds = %4756
  %4774 = extractvalue %dx.types.CBufRet.f32 %4757, 2
  %4775 = fadd fast float %4774, %178
  %4776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.f32 %4776, 0
  %4778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4779 = extractvalue %dx.types.CBufRet.f32 %4778, 0
  %4780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4781 = extractvalue %dx.types.CBufRet.f32 %4780, 0
  %4782 = extractvalue %dx.types.CBufRet.f32 %4776, 1
  %4783 = extractvalue %dx.types.CBufRet.f32 %4778, 1
  %4784 = extractvalue %dx.types.CBufRet.f32 %4780, 1
  %4785 = extractvalue %dx.types.CBufRet.f32 %4776, 3
  %4786 = extractvalue %dx.types.CBufRet.f32 %4778, 3
  %4787 = extractvalue %dx.types.CBufRet.f32 %4780, 3
  %4788 = fadd fast float %4785, %4760
  %4789 = fadd fast float %4786, %4761
  %4790 = fadd fast float %4775, %4787
  %4791 = fmul fast float %4788, %4777
  %4792 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4779, float %4791)  ; FMad(a,b,c)
  %4793 = call float @dx.op.tertiary.f32(i32 46, float %4790, float %4781, float %4792)  ; FMad(a,b,c)
  %4794 = fmul fast float %4788, %4782
  %4795 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4783, float %4794)  ; FMad(a,b,c)
  %4796 = call float @dx.op.tertiary.f32(i32 46, float %4790, float %4784, float %4795)  ; FMad(a,b,c)
  %4797 = fsub fast float %4793, %4785
  %4798 = fsub fast float %4796, %4786
  %4799 = fsub fast float %4797, %4763
  %4800 = fadd fast float %4799, %4771
  %4801 = fsub fast float %4798, %4764
  %4802 = fadd fast float %4801, %4771
  %4803 = extractvalue %dx.types.CBufRet.f32 %4762, 3
  %4804 = fmul fast float %4800, %4803
  %4805 = fmul fast float %4802, %4803
  %4806 = call float @dx.op.unary.f32(i32 7, float %4804)  ; Saturate(value)
  %4807 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4808 = fsub fast float 1.000000e+00, %4806
  %4809 = fsub fast float 1.000000e+00, %4807
  %4810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %36, float %4808, float %4809, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4811 = extractvalue %dx.types.ResRet.f32 %4810, 0
  %4812 = fcmp fast ugt float %4811, 0.000000e+00
  br i1 %4812, label %4813, label %4826

; <label>:4813                                    ; preds = %4773
  %4814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4815 = extractvalue %dx.types.CBufRet.f32 %4814, 2
  %4816 = fmul fast float %4815, %4811
  %4817 = extractvalue %dx.types.CBufRet.f32 %4814, 3
  %4818 = fadd fast float %4817, %4816
  %4819 = extractvalue %dx.types.CBufRet.f32 %4780, 2
  %4820 = fadd fast float %4818, %4787
  %4821 = fmul fast float %4793, %4781
  %4822 = call float @dx.op.tertiary.f32(i32 46, float %4796, float %4784, float %4821)  ; FMad(a,b,c)
  %4823 = call float @dx.op.tertiary.f32(i32 46, float %4820, float %4819, float %4822)  ; FMad(a,b,c)
  %4824 = fsub fast float %4823, %4787
  %4825 = fsub fast float %4824, %4774
  br label %4826

; <label>:4826                                    ; preds = %4813, %4773, %4756
  %4827 = phi i1 [ true, %4813 ], [ false, %4773 ], [ false, %4756 ]
  %4828 = phi float [ %4825, %4813 ], [ -1.310720e+05, %4773 ], [ -1.310720e+05, %4756 ]
  %4829 = fsub fast float %4828, %178
  %4830 = call float @dx.op.unary.f32(i32 7, float %4829)  ; Saturate(value)
  %4831 = select i1 %4827, float %4830, float 1.000000e+00
  br label %4832

; <label>:4832                                    ; preds = %4826, %4728
  %4833 = phi float [ %4831, %4826 ], [ 0.000000e+00, %4728 ]
  %4834 = icmp eq i32 %4754, 3
  %4835 = select i1 %4834, float 1.000000e+00, float %4833
  %4836 = call float @dx.op.binary.f32(i32 35, float %4663, float %4835)  ; FMax(a,b)
  %4837 = fcmp fast olt float %4835, 1.000000e+00
  %4838 = fcmp uge float %57, 0.000000e+00
  %4839 = and i1 %4838, %4837
  br i1 %4839, label %4840, label %4850

; <label>:4840                                    ; preds = %4832
  %4841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %57, float %58, float %59, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4842 = extractvalue %dx.types.ResRet.f32 %4841, 0
  %4843 = extractvalue %dx.types.ResRet.f32 %4841, 1
  %4844 = extractvalue %dx.types.ResRet.f32 %4841, 2
  %4845 = fadd fast float %4842, %4836
  %4846 = fcmp ule float %56, 0.000000e+00
  %4847 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4848 = select i1 %4846, float %4847, float 1.000000e+00
  %4849 = fmul fast float %4848, %4844
  br label %4850

; <label>:4850                                    ; preds = %4840, %4832
  %4851 = phi float [ %4845, %4840 ], [ %4836, %4832 ]
  %4852 = phi float [ %4843, %4840 ], [ 0.000000e+00, %4832 ]
  %4853 = phi float [ %4849, %4840 ], [ 0.000000e+00, %4832 ]
  %4854 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4855 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4856 = call float @dx.op.unary.f32(i32 7, float %4853)  ; Saturate(value)
  %4857 = fcmp fast une float %4855, 0.000000e+00
  %4858 = fcmp fast une float %4856, 0.000000e+00
  %4859 = or i1 %4857, %4858
  br i1 %4859, label %4860, label %5435

; <label>:4860                                    ; preds = %4850
  br i1 %4857, label %4861, label %5134

; <label>:4861                                    ; preds = %4860
  %4862 = call float @dx.op.unary.f32(i32 23, float %4660)  ; Log(value)
  %4863 = fmul fast float %4862, 4.000000e+00
  %4864 = call float @dx.op.unary.f32(i32 21, float %4863)  ; Exp(value)
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 0
  %4867 = fmul fast float %4866, %44
  %4868 = fmul fast float %4866, %45
  %4869 = fmul fast float %4866, %46
  %4870 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %4871 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %4872 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4873 = call float @dx.op.unary.f32(i32 23, float %4870)  ; Log(value)
  %4874 = call float @dx.op.unary.f32(i32 23, float %4871)  ; Log(value)
  %4875 = call float @dx.op.unary.f32(i32 23, float %4872)  ; Log(value)
  %4876 = fmul fast float %4873, 4.000000e+00
  %4877 = fmul fast float %4874, 4.000000e+00
  %4878 = fmul fast float %4875, 4.000000e+00
  %4879 = call float @dx.op.unary.f32(i32 21, float %4876)  ; Exp(value)
  %4880 = call float @dx.op.unary.f32(i32 21, float %4877)  ; Exp(value)
  %4881 = call float @dx.op.unary.f32(i32 21, float %4878)  ; Exp(value)
  %4882 = fadd fast float %4880, %4879
  %4883 = fadd fast float %4882, %4881
  %4884 = fdiv fast float 1.000000e+00, %4883
  %4885 = fmul fast float %4884, %4879
  %4886 = fcmp fast ogt float %53, 0.000000e+00
  %4887 = fcmp fast ogt float %54, 0.000000e+00
  %4888 = fcmp fast ogt float %55, 0.000000e+00
  %4889 = fcmp fast olt float %53, 0.000000e+00
  %4890 = fcmp fast olt float %54, 0.000000e+00
  %4891 = fcmp fast olt float %55, 0.000000e+00
  %4892 = zext i1 %4886 to i32
  %4893 = zext i1 %4887 to i32
  %4894 = zext i1 %4888 to i32
  %4895 = zext i1 %4889 to i32
  %4896 = zext i1 %4890 to i32
  %4897 = zext i1 %4891 to i32
  %4898 = sub nsw i32 %4892, %4895
  %4899 = sub nsw i32 %4893, %4896
  %4900 = sub nsw i32 %4894, %4897
  %4901 = call float @dx.op.unary.f32(i32 83, float %4867)  ; DerivCoarseX(value)
  %4902 = call float @dx.op.unary.f32(i32 83, float %4868)  ; DerivCoarseX(value)
  %4903 = call float @dx.op.unary.f32(i32 83, float %4869)  ; DerivCoarseX(value)
  %4904 = call float @dx.op.unary.f32(i32 84, float %4867)  ; DerivCoarseY(value)
  %4905 = call float @dx.op.unary.f32(i32 84, float %4868)  ; DerivCoarseY(value)
  %4906 = call float @dx.op.unary.f32(i32 84, float %4869)  ; DerivCoarseY(value)
  %4907 = fcmp fast ole float %280, %4885
  %4908 = fmul fast float %4884, %4882
  %4909 = fcmp fast ole float %280, %4908
  %4910 = select i1 %4909, float %4869, float %4867
  %4911 = select i1 %4909, float %4867, float %4868
  %4912 = select i1 %4907, float %4868, float %4910
  %4913 = select i1 %4907, float %4869, float %4911
  %4914 = select i1 %4909, float %4903, float %4901
  %4915 = select i1 %4909, float %4901, float %4902
  %4916 = select i1 %4907, float %4902, float %4914
  %4917 = select i1 %4907, float %4903, float %4915
  %4918 = select i1 %4909, float %4906, float %4904
  %4919 = select i1 %4909, float %4904, float %4905
  %4920 = select i1 %4907, float %4905, float %4918
  %4921 = select i1 %4907, float %4906, float %4919
  %4922 = call float @dx.op.unary.f32(i32 27, float %4912)  ; Round_ni(value)
  %4923 = call float @dx.op.unary.f32(i32 27, float %4913)  ; Round_ni(value)
  %4924 = fptosi float %4922 to i32
  %4925 = fptosi float %4923 to i32
  %4926 = xor i32 %4925, %4924
  %4927 = sitofp i32 %4926 to float
  %4928 = fptosi float %4927 to i32
  %4929 = sitofp i32 %4928 to float
  %4930 = fmul fast float %4929, 0x3FE3C6EF40000000
  %4931 = frem fast float %4922, 2.560000e+02
  %4932 = frem fast float %4923, 2.560000e+02
  %4933 = fptoui float %4931 to i32
  %4934 = fptoui float %4932 to i32
  %4935 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4933, i32 %4934, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4936 = extractvalue %dx.types.ResRet.f32 %4935, 0
  %4937 = extractvalue %dx.types.ResRet.f32 %4935, 1
  %4938 = extractvalue %dx.types.ResRet.f32 %4935, 2
  %4939 = fadd fast float %4936, %4930
  %4940 = fadd fast float %4937, %4930
  %4941 = fadd fast float %4938, %4930
  %4942 = call float @dx.op.unary.f32(i32 22, float %4939)  ; Frc(value)
  %4943 = call float @dx.op.unary.f32(i32 22, float %4940)  ; Frc(value)
  %4944 = call float @dx.op.unary.f32(i32 22, float %4941)  ; Frc(value)
  %4945 = fmul fast float %4944, 0x401921FB60000000
  %4946 = call float @dx.op.unary.f32(i32 13, float %4945)  ; Sin(value)
  %4947 = call float @dx.op.unary.f32(i32 12, float %4945)  ; Cos(value)
  %4948 = fsub fast float -0.000000e+00, %4947
  %4949 = fmul fast float %4947, %4912
  %4950 = call float @dx.op.tertiary.f32(i32 46, float %4946, float %4913, float %4949)  ; FMad(a,b,c)
  %4951 = fmul fast float %4946, %4912
  %4952 = call float @dx.op.tertiary.f32(i32 46, float %4948, float %4913, float %4951)  ; FMad(a,b,c)
  %4953 = fadd fast float %4950, %4942
  %4954 = fadd fast float %4952, %4943
  %4955 = extractvalue %dx.types.CBufRet.f32 %4865, 3
  %4956 = bitcast float %4955 to i32
  %4957 = icmp eq i32 %4956, 0
  br i1 %4957, label %4996, label %4958

; <label>:4958                                    ; preds = %4861
  %4959 = add i32 %4956, 0
  %4960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4959, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4961 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4960, %dx.types.Handle %94, float %4953, float %4954, float undef, float undef, i32 0, i32 0, i32 undef, float %4916, float %4917, float undef, float %4920, float %4921, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4962 = extractvalue %dx.types.ResRet.f32 %4961, 0
  %4963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4964 = extractvalue %dx.types.CBufRet.f32 %4963, 1
  %4965 = extractvalue %dx.types.CBufRet.f32 %4963, 2
  %4966 = fsub fast float 1.000000e+00, %4855
  %4967 = call float @dx.op.binary.f32(i32 35, float %4966, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4968 = bitcast float %4855 to i32
  %4969 = sitofp i32 %4968 to float
  %4970 = fadd fast float %4969, 0xC1CFBF8940000000
  %4971 = fmul fast float %4965, %4970
  %4972 = fadd fast float %4971, 0x41CFBF8940000000
  %4973 = fptosi float %4972 to i32
  %4974 = bitcast i32 %4973 to float
  %4975 = bitcast float %4967 to i32
  %4976 = sitofp i32 %4975 to float
  %4977 = fadd fast float %4976, 0xC1CFBF8940000000
  %4978 = fmul fast float %4977, %4965
  %4979 = fadd fast float %4978, 0x41CFBF8940000000
  %4980 = fptosi float %4979 to i32
  %4981 = bitcast i32 %4980 to float
  %4982 = fmul fast float %4974, %4964
  %4983 = fmul fast float %4981, %4964
  %4984 = fsub fast float %4967, %4982
  %4985 = fadd fast float %4983, %4967
  %4986 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4987 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4988 = fsub fast float %4962, %4986
  %4989 = fsub fast float %4987, %4986
  %4990 = bitcast float %4989 to i32
  %4991 = sub nsw i32 2129859010, %4990
  %4992 = bitcast i32 %4991 to float
  %4993 = fmul fast float %4992, %4988
  %4994 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4995 = fcmp fast olt float %4994, 0x3F70101020000000
  br i1 %4995, label %5134, label %4996

; <label>:4996                                    ; preds = %4958, %4861
  %4997 = phi float [ %4994, %4958 ], [ %4855, %4861 ]
  %4998 = fmul fast float %4997, %4864
  %4999 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.i32 %4999, 1
  %5001 = extractvalue %dx.types.CBufRet.i32 %4999, 0
  %5002 = add i32 %5001, 0
  %5003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5002, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5004 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5003, %dx.types.Handle %93, float %4953, float %4954, float undef, float undef, i32 0, i32 0, i32 undef, float %4916, float %4917, float undef, float %4920, float %4921, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5005 = extractvalue %dx.types.ResRet.f32 %5004, 0
  %5006 = extractvalue %dx.types.ResRet.f32 %5004, 1
  %5007 = extractvalue %dx.types.ResRet.f32 %5004, 2
  %5008 = extractvalue %dx.types.ResRet.f32 %5004, 3
  %5009 = and i32 %5000, 255
  %5010 = uitofp i32 %5009 to float
  %5011 = lshr i32 %5000, 8
  %5012 = and i32 %5011, 255
  %5013 = uitofp i32 %5012 to float
  %5014 = fmul fast float %5008, %5010
  %5015 = fadd fast float %5014, %5013
  %5016 = fmul fast float %5015, 0x3F70101000000000
  %5017 = fadd fast float %5016, 0xBFB99999A0000000
  %5018 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5019 = fmul fast float %5018, 0x3FF1C71C80000000
  %5020 = call float @dx.op.binary.f32(i32 36, float %5016, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5021 = fsub fast float 1.000000e+00, %5019
  %5022 = call float @dx.op.unary.f32(i32 7, float %5021)  ; Saturate(value)
  %5023 = fmul fast float %5022, %5005
  %5024 = fmul fast float %5022, %5006
  %5025 = fmul fast float %5022, %5007
  %5026 = call float @dx.op.unary.f32(i32 7, float %5023)  ; Saturate(value)
  %5027 = call float @dx.op.unary.f32(i32 7, float %5024)  ; Saturate(value)
  %5028 = call float @dx.op.unary.f32(i32 7, float %5025)  ; Saturate(value)
  %5029 = fmul fast float %5019, %5005
  %5030 = fmul fast float %5019, %5006
  %5031 = fmul fast float %5019, %5007
  %5032 = fadd fast float %5029, %5020
  %5033 = fadd fast float %5030, %5020
  %5034 = fadd fast float %5031, %5020
  %5035 = call float @dx.op.unary.f32(i32 7, float %5032)  ; Saturate(value)
  %5036 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5037 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.i32 %5038, 3
  %5040 = extractvalue %dx.types.CBufRet.i32 %5038, 2
  %5041 = add i32 %5040, 0
  %5042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5041, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5043 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5042, %dx.types.Handle %93, float %4953, float %4954, float undef, float undef, i32 0, i32 0, i32 undef, float %4916, float %4917, float undef, float %4920, float %4921, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5044 = extractvalue %dx.types.ResRet.f32 %5043, 0
  %5045 = extractvalue %dx.types.ResRet.f32 %5043, 1
  %5046 = extractvalue %dx.types.ResRet.f32 %5043, 2
  %5047 = extractvalue %dx.types.ResRet.f32 %5043, 3
  %5048 = and i32 %5039, 255
  %5049 = uitofp i32 %5048 to float
  %5050 = lshr i32 %5039, 8
  %5051 = and i32 %5050, 255
  %5052 = uitofp i32 %5051 to float
  %5053 = lshr i32 %5039, 16
  %5054 = and i32 %5053, 255
  %5055 = uitofp i32 %5054 to float
  %5056 = fmul fast float %5055, 0x3F70101000000000
  %5057 = fmul fast float %5044, %5049
  %5058 = fadd fast float %5057, %5052
  %5059 = fmul fast float %5058, 0x3F70101000000000
  %5060 = fadd fast float %5045, -5.000000e-01
  %5061 = fadd fast float %5047, -5.000000e-01
  %5062 = fmul fast float %5060, %5056
  %5063 = fmul fast float %5061, %5056
  %5064 = fadd fast float %5062, 5.000000e-01
  %5065 = fadd fast float %5063, 5.000000e-01
  %5066 = fmul fast float %5064, 2.000000e+00
  %5067 = fadd fast float %5066, -1.000000e+00
  %5068 = fmul fast float %5065, 2.000000e+00
  %5069 = fadd fast float %5068, -1.000000e+00
  %5070 = fadd fast float %5067, %5069
  %5071 = fmul fast float %5070, 5.000000e-01
  %5072 = fsub fast float %5067, %5069
  %5073 = fmul fast float %5072, 5.000000e-01
  %5074 = call float @dx.op.unary.f32(i32 6, float %5071)  ; FAbs(value)
  %5075 = fsub fast float 1.000000e+00, %5074
  %5076 = call float @dx.op.unary.f32(i32 6, float %5073)  ; FAbs(value)
  %5077 = fsub fast float %5075, %5076
  %5078 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5073, float %5077, float %5071, float %5073, float %5077)  ; Dot3(ax,ay,az,bx,by,bz)
  %5079 = call float @dx.op.unary.f32(i32 25, float %5078)  ; Rsqrt(value)
  %5080 = fmul fast float %5071, %5079
  %5081 = fmul fast float %5073, %5079
  %5082 = select i1 %4909, i32 %4899, i32 %4900
  %5083 = select i1 %4907, i32 %4898, i32 %5082
  %5084 = sitofp i32 %5083 to float
  %5085 = fmul fast float %5077, %5084
  %5086 = fmul fast float %5085, %5079
  %5087 = select i1 %4909, float %5086, float %5081
  %5088 = select i1 %4909, float %5081, float %5086
  %5089 = select i1 %4907, float %5086, float %5080
  %5090 = select i1 %4907, float %5081, float %5087
  %5091 = select i1 %4907, float %5080, float %5088
  %5092 = fsub fast float %5026, %4746
  %5093 = fsub fast float %5027, %4747
  %5094 = fsub fast float %5028, %4748
  %5095 = fmul fast float %5092, %4998
  %5096 = fmul fast float %5093, %4998
  %5097 = fmul fast float %5094, %4998
  %5098 = fadd fast float %5095, %4746
  %5099 = fadd fast float %5096, %4747
  %5100 = fadd fast float %5097, %4748
  %5101 = fsub fast float %5035, %4706
  %5102 = fsub fast float %5036, %4707
  %5103 = fsub fast float %5037, %4708
  %5104 = fmul fast float %5101, %4998
  %5105 = fmul fast float %5102, %4998
  %5106 = fmul fast float %5103, %4998
  %5107 = fadd fast float %5104, %4706
  %5108 = fadd fast float %5105, %4707
  %5109 = fadd fast float %5106, %4708
  %5110 = fadd fast float %5089, %4642
  %5111 = fadd fast float %5090, %4643
  %5112 = fadd fast float %5091, %4644
  %5113 = call float @dx.op.dot3.f32(i32 55, float %5110, float %5111, float %5112, float %5110, float %5111, float %5112)  ; Dot3(ax,ay,az,bx,by,bz)
  %5114 = call float @dx.op.unary.f32(i32 25, float %5113)  ; Rsqrt(value)
  %5115 = fmul fast float %5110, %5114
  %5116 = fmul fast float %5111, %5114
  %5117 = fmul fast float %5112, %5114
  %5118 = fsub fast float %5115, %4642
  %5119 = fsub fast float %5116, %4643
  %5120 = fsub fast float %5117, %4644
  %5121 = fmul fast float %5118, %4998
  %5122 = fmul fast float %5119, %4998
  %5123 = fmul fast float %5120, %4998
  %5124 = fadd fast float %5121, %4642
  %5125 = fadd fast float %5122, %4643
  %5126 = fadd fast float %5123, %4644
  %5127 = call float @dx.op.binary.f32(i32 36, float %4660, float %5046)  ; FMin(a,b)
  %5128 = fsub fast float %5127, %4660
  %5129 = fmul fast float %5128, %4998
  %5130 = fadd fast float %5129, %4660
  %5131 = fsub fast float %5059, %4709
  %5132 = fmul fast float %5131, %4998
  %5133 = fadd fast float %5132, %4709
  br label %5134

; <label>:5134                                    ; preds = %4996, %4958, %4860
  %5135 = phi float [ %5098, %4996 ], [ %4746, %4958 ], [ %4746, %4860 ]
  %5136 = phi float [ %5099, %4996 ], [ %4747, %4958 ], [ %4747, %4860 ]
  %5137 = phi float [ %5100, %4996 ], [ %4748, %4958 ], [ %4748, %4860 ]
  %5138 = phi float [ %5107, %4996 ], [ %4706, %4958 ], [ %4706, %4860 ]
  %5139 = phi float [ %5108, %4996 ], [ %4707, %4958 ], [ %4707, %4860 ]
  %5140 = phi float [ %5109, %4996 ], [ %4708, %4958 ], [ %4708, %4860 ]
  %5141 = phi float [ %5124, %4996 ], [ %4642, %4958 ], [ %4642, %4860 ]
  %5142 = phi float [ %5125, %4996 ], [ %4643, %4958 ], [ %4643, %4860 ]
  %5143 = phi float [ %5126, %4996 ], [ %4644, %4958 ], [ %4644, %4860 ]
  %5144 = phi float [ %5133, %4996 ], [ %4709, %4958 ], [ %4709, %4860 ]
  %5145 = phi float [ %5130, %4996 ], [ %4660, %4958 ], [ %4660, %4860 ]
  br i1 %4858, label %5146, label %5435

; <label>:5146                                    ; preds = %5134
  %5147 = call float @dx.op.unary.f32(i32 23, float %5145)  ; Log(value)
  %5148 = fmul fast float %5147, 4.000000e+00
  %5149 = call float @dx.op.unary.f32(i32 21, float %5148)  ; Exp(value)
  %5150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5151 = extractvalue %dx.types.CBufRet.f32 %5150, 0
  %5152 = fmul fast float %5151, %44
  %5153 = fmul fast float %5151, %45
  %5154 = fmul fast float %5151, %46
  %5155 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %5156 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %5157 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %5158 = call float @dx.op.unary.f32(i32 23, float %5155)  ; Log(value)
  %5159 = call float @dx.op.unary.f32(i32 23, float %5156)  ; Log(value)
  %5160 = call float @dx.op.unary.f32(i32 23, float %5157)  ; Log(value)
  %5161 = fmul fast float %5158, 4.000000e+00
  %5162 = fmul fast float %5159, 4.000000e+00
  %5163 = fmul fast float %5160, 4.000000e+00
  %5164 = call float @dx.op.unary.f32(i32 21, float %5161)  ; Exp(value)
  %5165 = call float @dx.op.unary.f32(i32 21, float %5162)  ; Exp(value)
  %5166 = call float @dx.op.unary.f32(i32 21, float %5163)  ; Exp(value)
  %5167 = fadd fast float %5165, %5164
  %5168 = fadd fast float %5167, %5166
  %5169 = fdiv fast float 1.000000e+00, %5168
  %5170 = fmul fast float %5169, %5164
  %5171 = fcmp fast ogt float %53, 0.000000e+00
  %5172 = fcmp fast ogt float %54, 0.000000e+00
  %5173 = fcmp fast ogt float %55, 0.000000e+00
  %5174 = fcmp fast olt float %53, 0.000000e+00
  %5175 = fcmp fast olt float %54, 0.000000e+00
  %5176 = fcmp fast olt float %55, 0.000000e+00
  %5177 = zext i1 %5171 to i32
  %5178 = zext i1 %5172 to i32
  %5179 = zext i1 %5173 to i32
  %5180 = zext i1 %5174 to i32
  %5181 = zext i1 %5175 to i32
  %5182 = zext i1 %5176 to i32
  %5183 = sub nsw i32 %5177, %5180
  %5184 = sub nsw i32 %5178, %5181
  %5185 = sub nsw i32 %5179, %5182
  %5186 = call float @dx.op.unary.f32(i32 83, float %5152)  ; DerivCoarseX(value)
  %5187 = call float @dx.op.unary.f32(i32 83, float %5153)  ; DerivCoarseX(value)
  %5188 = call float @dx.op.unary.f32(i32 83, float %5154)  ; DerivCoarseX(value)
  %5189 = call float @dx.op.unary.f32(i32 84, float %5152)  ; DerivCoarseY(value)
  %5190 = call float @dx.op.unary.f32(i32 84, float %5153)  ; DerivCoarseY(value)
  %5191 = call float @dx.op.unary.f32(i32 84, float %5154)  ; DerivCoarseY(value)
  %5192 = fcmp fast ole float %280, %5170
  %5193 = fmul fast float %5169, %5167
  %5194 = fcmp fast ole float %280, %5193
  %5195 = select i1 %5194, float %5154, float %5152
  %5196 = select i1 %5194, float %5152, float %5153
  %5197 = select i1 %5192, float %5153, float %5195
  %5198 = select i1 %5192, float %5154, float %5196
  %5199 = select i1 %5194, float %5188, float %5186
  %5200 = select i1 %5194, float %5186, float %5187
  %5201 = select i1 %5192, float %5187, float %5199
  %5202 = select i1 %5192, float %5188, float %5200
  %5203 = select i1 %5194, float %5191, float %5189
  %5204 = select i1 %5194, float %5189, float %5190
  %5205 = select i1 %5192, float %5190, float %5203
  %5206 = select i1 %5192, float %5191, float %5204
  %5207 = call float @dx.op.unary.f32(i32 27, float %5197)  ; Round_ni(value)
  %5208 = call float @dx.op.unary.f32(i32 27, float %5198)  ; Round_ni(value)
  %5209 = fptosi float %5207 to i32
  %5210 = fptosi float %5208 to i32
  %5211 = xor i32 %5210, %5209
  %5212 = sitofp i32 %5211 to float
  %5213 = fptosi float %5212 to i32
  %5214 = sitofp i32 %5213 to float
  %5215 = fmul fast float %5214, 0x3FE3C6EF40000000
  %5216 = frem fast float %5207, 2.560000e+02
  %5217 = frem fast float %5208, 2.560000e+02
  %5218 = fptoui float %5216 to i32
  %5219 = fptoui float %5217 to i32
  %5220 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %5218, i32 %5219, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5221 = extractvalue %dx.types.ResRet.f32 %5220, 0
  %5222 = extractvalue %dx.types.ResRet.f32 %5220, 1
  %5223 = extractvalue %dx.types.ResRet.f32 %5220, 2
  %5224 = fadd fast float %5221, %5215
  %5225 = fadd fast float %5222, %5215
  %5226 = fadd fast float %5223, %5215
  %5227 = call float @dx.op.unary.f32(i32 22, float %5224)  ; Frc(value)
  %5228 = call float @dx.op.unary.f32(i32 22, float %5225)  ; Frc(value)
  %5229 = call float @dx.op.unary.f32(i32 22, float %5226)  ; Frc(value)
  %5230 = fmul fast float %5229, 0x401921FB60000000
  %5231 = call float @dx.op.unary.f32(i32 13, float %5230)  ; Sin(value)
  %5232 = call float @dx.op.unary.f32(i32 12, float %5230)  ; Cos(value)
  %5233 = fsub fast float -0.000000e+00, %5232
  %5234 = fmul fast float %5232, %5197
  %5235 = call float @dx.op.tertiary.f32(i32 46, float %5231, float %5198, float %5234)  ; FMad(a,b,c)
  %5236 = fmul fast float %5231, %5197
  %5237 = call float @dx.op.tertiary.f32(i32 46, float %5233, float %5198, float %5236)  ; FMad(a,b,c)
  %5238 = fadd fast float %5235, %5227
  %5239 = fadd fast float %5237, %5228
  %5240 = extractvalue %dx.types.CBufRet.f32 %5150, 3
  %5241 = bitcast float %5240 to i32
  %5242 = icmp eq i32 %5241, 0
  br i1 %5242, label %5281, label %5243

; <label>:5243                                    ; preds = %5146
  %5244 = add i32 %5241, 0
  %5245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5246 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5245, %dx.types.Handle %94, float %5238, float %5239, float undef, float undef, i32 0, i32 0, i32 undef, float %5201, float %5202, float undef, float %5205, float %5206, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5247 = extractvalue %dx.types.ResRet.f32 %5246, 0
  %5248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5249 = extractvalue %dx.types.CBufRet.f32 %5248, 1
  %5250 = extractvalue %dx.types.CBufRet.f32 %5248, 2
  %5251 = fsub fast float 1.000000e+00, %4856
  %5252 = call float @dx.op.binary.f32(i32 35, float %5251, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5253 = bitcast float %4856 to i32
  %5254 = sitofp i32 %5253 to float
  %5255 = fadd fast float %5254, 0xC1CFBF8940000000
  %5256 = fmul fast float %5250, %5255
  %5257 = fadd fast float %5256, 0x41CFBF8940000000
  %5258 = fptosi float %5257 to i32
  %5259 = bitcast i32 %5258 to float
  %5260 = bitcast float %5252 to i32
  %5261 = sitofp i32 %5260 to float
  %5262 = fadd fast float %5261, 0xC1CFBF8940000000
  %5263 = fmul fast float %5262, %5250
  %5264 = fadd fast float %5263, 0x41CFBF8940000000
  %5265 = fptosi float %5264 to i32
  %5266 = bitcast i32 %5265 to float
  %5267 = fmul fast float %5259, %5249
  %5268 = fmul fast float %5266, %5249
  %5269 = fsub fast float %5252, %5267
  %5270 = fadd fast float %5268, %5252
  %5271 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5272 = call float @dx.op.unary.f32(i32 7, float %5270)  ; Saturate(value)
  %5273 = fsub fast float %5247, %5271
  %5274 = fsub fast float %5272, %5271
  %5275 = bitcast float %5274 to i32
  %5276 = sub nsw i32 2129859010, %5275
  %5277 = bitcast i32 %5276 to float
  %5278 = fmul fast float %5277, %5273
  %5279 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5280 = fcmp fast olt float %5279, 0x3F70101020000000
  br i1 %5280, label %5435, label %5281

; <label>:5281                                    ; preds = %5243, %5146
  %5282 = phi float [ %5279, %5243 ], [ %4856, %5146 ]
  %5283 = fmul fast float %5282, %5149
  %5284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.i32 %5284, 1
  %5286 = extractvalue %dx.types.CBufRet.i32 %5284, 0
  %5287 = add i32 %5286, 0
  %5288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5287, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5289 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5288, %dx.types.Handle %93, float %5238, float %5239, float undef, float undef, i32 0, i32 0, i32 undef, float %5201, float %5202, float undef, float %5205, float %5206, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5290 = extractvalue %dx.types.ResRet.f32 %5289, 0
  %5291 = extractvalue %dx.types.ResRet.f32 %5289, 1
  %5292 = extractvalue %dx.types.ResRet.f32 %5289, 2
  %5293 = extractvalue %dx.types.ResRet.f32 %5289, 3
  %5294 = and i32 %5285, 255
  %5295 = uitofp i32 %5294 to float
  %5296 = lshr i32 %5285, 8
  %5297 = and i32 %5296, 255
  %5298 = uitofp i32 %5297 to float
  %5299 = fmul fast float %5293, %5295
  %5300 = fadd fast float %5299, %5298
  %5301 = fmul fast float %5300, 0x3F70101000000000
  %5302 = fadd fast float %5301, 0xBFB99999A0000000
  %5303 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5304 = fmul fast float %5303, 0x3FF1C71C80000000
  %5305 = call float @dx.op.binary.f32(i32 36, float %5301, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5306 = fsub fast float 1.000000e+00, %5304
  %5307 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5308 = fmul fast float %5307, %5290
  %5309 = fmul fast float %5307, %5291
  %5310 = fmul fast float %5307, %5292
  %5311 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  %5312 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5313 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5314 = fmul fast float %5304, %5290
  %5315 = fmul fast float %5304, %5291
  %5316 = fmul fast float %5304, %5292
  %5317 = fadd fast float %5314, %5305
  %5318 = fadd fast float %5315, %5305
  %5319 = fadd fast float %5316, %5305
  %5320 = call float @dx.op.unary.f32(i32 7, float %5317)  ; Saturate(value)
  %5321 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5322 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5324 = extractvalue %dx.types.CBufRet.i32 %5323, 3
  %5325 = extractvalue %dx.types.CBufRet.i32 %5323, 2
  %5326 = add i32 %5325, 0
  %5327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5328 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5327, %dx.types.Handle %93, float %5238, float %5239, float undef, float undef, i32 0, i32 0, i32 undef, float %5201, float %5202, float undef, float %5205, float %5206, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5329 = extractvalue %dx.types.ResRet.f32 %5328, 0
  %5330 = extractvalue %dx.types.ResRet.f32 %5328, 1
  %5331 = extractvalue %dx.types.ResRet.f32 %5328, 2
  %5332 = extractvalue %dx.types.ResRet.f32 %5328, 3
  %5333 = and i32 %5324, 255
  %5334 = uitofp i32 %5333 to float
  %5335 = lshr i32 %5324, 8
  %5336 = and i32 %5335, 255
  %5337 = uitofp i32 %5336 to float
  %5338 = lshr i32 %5324, 16
  %5339 = and i32 %5338, 255
  %5340 = uitofp i32 %5339 to float
  %5341 = fmul fast float %5340, 0x3F70101000000000
  %5342 = fmul fast float %5329, %5334
  %5343 = fadd fast float %5342, %5337
  %5344 = fmul fast float %5343, 0x3F70101000000000
  %5345 = fadd fast float %5330, -5.000000e-01
  %5346 = fadd fast float %5332, -5.000000e-01
  %5347 = fmul fast float %5345, %5341
  %5348 = fmul fast float %5346, %5341
  %5349 = fadd fast float %5347, 5.000000e-01
  %5350 = fadd fast float %5348, 5.000000e-01
  %5351 = fmul fast float %5349, 2.000000e+00
  %5352 = fadd fast float %5351, -1.000000e+00
  %5353 = fmul fast float %5350, 2.000000e+00
  %5354 = fadd fast float %5353, -1.000000e+00
  %5355 = fadd fast float %5352, %5354
  %5356 = fmul fast float %5355, 5.000000e-01
  %5357 = fsub fast float %5352, %5354
  %5358 = fmul fast float %5357, 5.000000e-01
  %5359 = call float @dx.op.unary.f32(i32 6, float %5356)  ; FAbs(value)
  %5360 = fsub fast float 1.000000e+00, %5359
  %5361 = call float @dx.op.unary.f32(i32 6, float %5358)  ; FAbs(value)
  %5362 = fsub fast float %5360, %5361
  %5363 = call float @dx.op.dot3.f32(i32 55, float %5356, float %5358, float %5362, float %5356, float %5358, float %5362)  ; Dot3(ax,ay,az,bx,by,bz)
  %5364 = call float @dx.op.unary.f32(i32 25, float %5363)  ; Rsqrt(value)
  %5365 = fmul fast float %5356, %5364
  %5366 = fmul fast float %5358, %5364
  %5367 = select i1 %5194, i32 %5184, i32 %5185
  %5368 = select i1 %5192, i32 %5183, i32 %5367
  %5369 = sitofp i32 %5368 to float
  %5370 = fmul fast float %5362, %5369
  %5371 = fmul fast float %5370, %5364
  %5372 = select i1 %5194, float %5371, float %5366
  %5373 = select i1 %5194, float %5366, float %5371
  %5374 = select i1 %5192, float %5371, float %5365
  %5375 = select i1 %5192, float %5366, float %5372
  %5376 = select i1 %5192, float %5365, float %5373
  %5377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5378 = extractvalue %dx.types.CBufRet.f32 %5377, 0
  %5379 = fptoui float %5378 to i32
  %5380 = add i32 %5379, 0
  %5381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5380, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5382 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5381, %dx.types.Handle %93, float %5238, float %5239, float undef, float undef, i32 0, i32 0, i32 undef, float %5201, float %5202, float undef, float %5205, float %5206, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5383 = extractvalue %dx.types.ResRet.f32 %5382, 0
  %5384 = fsub fast float %5311, %5135
  %5385 = fsub fast float %5312, %5136
  %5386 = fsub fast float %5313, %5137
  %5387 = fmul fast float %5384, %5283
  %5388 = fmul fast float %5385, %5283
  %5389 = fmul fast float %5386, %5283
  %5390 = fadd fast float %5387, %5135
  %5391 = fadd fast float %5388, %5136
  %5392 = fadd fast float %5389, %5137
  %5393 = fsub fast float %5320, %5138
  %5394 = fsub fast float %5321, %5139
  %5395 = fsub fast float %5322, %5140
  %5396 = fmul fast float %5393, %5283
  %5397 = fmul fast float %5394, %5283
  %5398 = fmul fast float %5395, %5283
  %5399 = fadd fast float %5396, %5138
  %5400 = fadd fast float %5397, %5139
  %5401 = fadd fast float %5398, %5140
  %5402 = fadd fast float %5374, %5141
  %5403 = fadd fast float %5375, %5142
  %5404 = fadd fast float %5376, %5143
  %5405 = call float @dx.op.dot3.f32(i32 55, float %5402, float %5403, float %5404, float %5402, float %5403, float %5404)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = call float @dx.op.unary.f32(i32 25, float %5405)  ; Rsqrt(value)
  %5407 = fmul fast float %5406, %5402
  %5408 = fmul fast float %5406, %5403
  %5409 = fmul fast float %5406, %5404
  %5410 = fsub fast float %5407, %5141
  %5411 = fsub fast float %5408, %5142
  %5412 = fsub fast float %5409, %5143
  %5413 = fmul fast float %5410, %5283
  %5414 = fmul fast float %5411, %5283
  %5415 = fmul fast float %5412, %5283
  %5416 = fadd fast float %5413, %5141
  %5417 = fadd fast float %5414, %5142
  %5418 = fadd fast float %5415, %5143
  %5419 = call float @dx.op.binary.f32(i32 36, float %5145, float %5331)  ; FMin(a,b)
  %5420 = fsub fast float %5419, %5145
  %5421 = fmul fast float %5420, %5283
  %5422 = fadd fast float %5421, %5145
  %5423 = fsub fast float %5344, %5144
  %5424 = fmul fast float %5423, %5283
  %5425 = fadd fast float %5424, %5144
  %5426 = fsub fast float %5383, %4750
  %5427 = fsub fast float %5383, %4751
  %5428 = fsub fast float %5383, %4752
  %5429 = fmul fast float %5426, %5283
  %5430 = fmul fast float %5427, %5283
  %5431 = fmul fast float %5428, %5283
  %5432 = fadd fast float %5429, %4750
  %5433 = fadd fast float %5430, %4751
  %5434 = fadd fast float %5431, %4752
  br label %5435

; <label>:5435                                    ; preds = %5281, %5243, %5134, %4850
  %5436 = phi float [ %5390, %5281 ], [ %5135, %5243 ], [ %5135, %5134 ], [ %4746, %4850 ]
  %5437 = phi float [ %5391, %5281 ], [ %5136, %5243 ], [ %5136, %5134 ], [ %4747, %4850 ]
  %5438 = phi float [ %5392, %5281 ], [ %5137, %5243 ], [ %5137, %5134 ], [ %4748, %4850 ]
  %5439 = phi float [ %5399, %5281 ], [ %5138, %5243 ], [ %5138, %5134 ], [ %4706, %4850 ]
  %5440 = phi float [ %5400, %5281 ], [ %5139, %5243 ], [ %5139, %5134 ], [ %4707, %4850 ]
  %5441 = phi float [ %5401, %5281 ], [ %5140, %5243 ], [ %5140, %5134 ], [ %4708, %4850 ]
  %5442 = phi float [ %5416, %5281 ], [ %5141, %5243 ], [ %5141, %5134 ], [ %4642, %4850 ]
  %5443 = phi float [ %5417, %5281 ], [ %5142, %5243 ], [ %5142, %5134 ], [ %4643, %4850 ]
  %5444 = phi float [ %5418, %5281 ], [ %5143, %5243 ], [ %5143, %5134 ], [ %4644, %4850 ]
  %5445 = phi float [ %5432, %5281 ], [ %4750, %5243 ], [ %4750, %5134 ], [ %4750, %4850 ]
  %5446 = phi float [ %5433, %5281 ], [ %4751, %5243 ], [ %4751, %5134 ], [ %4751, %4850 ]
  %5447 = phi float [ %5434, %5281 ], [ %4752, %5243 ], [ %4752, %5134 ], [ %4752, %4850 ]
  %5448 = phi float [ %5425, %5281 ], [ %5144, %5243 ], [ %5144, %5134 ], [ %4709, %4850 ]
  %5449 = phi float [ %5422, %5281 ], [ %5145, %5243 ], [ %5145, %5134 ], [ %4660, %4850 ]
  %5450 = fcmp fast une float %4854, 0.000000e+00
  %5451 = fsub fast float -0.000000e+00, %196
  %5452 = fsub fast float -0.000000e+00, %197
  %5453 = fsub fast float -0.000000e+00, %198
  br i1 %5450, label %5454, label %5615

; <label>:5454                                    ; preds = %5435
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = fmul fast float %4854, 2.500000e+00
  %5457 = call float @dx.op.unary.f32(i32 7, float %5456)  ; Saturate(value)
  %5458 = fmul fast float %4854, 0x4013FFFFE0000000
  %5459 = fadd fast float %5458, 0xBFFFFFFFE0000000
  %5460 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  %5461 = fmul fast float %4854, 0x4004000020000000
  %5462 = fadd fast float %5461, 0xBFF8000040000000
  %5463 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5464 = fmul fast float %4688, 1.000000e+01
  %5465 = call float @dx.op.unary.f32(i32 7, float %5464)  ; Saturate(value)
  %5466 = fmul fast float %5465, 2.000000e+00
  %5467 = fsub fast float 3.000000e+00, %5466
  %5468 = fmul fast float %5465, %5465
  %5469 = fmul fast float %5468, %5467
  %5470 = fsub fast float 1.000000e+00, %5469
  %5471 = fsub fast float 0x3FE3333340000000, %5448
  %5472 = fmul fast float %5471, 0x400AAAAAA0000000
  %5473 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  %5474 = fmul fast float %5470, %5473
  %5475 = fmul fast float %5436, 0x3FEA2B8620000000
  %5476 = fmul fast float %5437, 0x3FEA2B8620000000
  %5477 = fmul fast float %5438, 0x3FEA2B8620000000
  %5478 = fadd fast float %5475, 0x3FC81DFBA0000000
  %5479 = fmul fast float %5478, %5436
  %5480 = fadd fast float %5479, 0x3F910E6020000000
  %5481 = fadd fast float %5476, 0x3FC81DFBA0000000
  %5482 = fmul fast float %5481, %5437
  %5483 = fadd fast float %5482, 0x3F910E6020000000
  %5484 = fadd fast float %5477, 0x3FC81DFBA0000000
  %5485 = fmul fast float %5484, %5438
  %5486 = fadd fast float %5485, 0x3F910E6020000000
  %5487 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5488 = call float @dx.op.unary.f32(i32 7, float %5483)  ; Saturate(value)
  %5489 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  %5490 = fsub fast float %5487, %5436
  %5491 = fsub fast float %5488, %5437
  %5492 = fsub fast float %5489, %5438
  %5493 = fmul fast float %5490, %5457
  %5494 = fmul fast float %5493, %5474
  %5495 = fmul fast float %5491, %5457
  %5496 = fmul fast float %5495, %5474
  %5497 = fmul fast float %5492, %5457
  %5498 = fmul fast float %5497, %5474
  %5499 = fadd fast float %5494, %5436
  %5500 = fadd fast float %5496, %5437
  %5501 = fadd fast float %5498, %5438
  %5502 = fmul fast float %5449, %5449
  %5503 = fmul fast float %5502, %5502
  %5504 = fadd fast float %5460, 1.000000e+00
  %5505 = fsub fast float %5504, %5474
  %5506 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5507 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5508 = call float @dx.op.unary.f32(i32 7, float %5507)  ; Saturate(value)
  %5509 = fsub fast float 1.000000e+00, %5503
  %5510 = call float @dx.op.binary.f32(i32 36, float %5506, float %5509)  ; FMin(a,b)
  %5511 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  %5512 = call float @dx.op.binary.f32(i32 35, float %5510, float %5511)  ; FMax(a,b)
  %5513 = fadd fast float %5508, 0xBFE4CCCCC0000000
  %5514 = fmul fast float %5513, 0x4006DB6DA0000000
  %5515 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5516 = fmul fast float %5515, 2.000000e+00
  %5517 = fsub fast float 3.000000e+00, %5516
  %5518 = bitcast float %5439 to i32
  %5519 = ashr i32 %5518, 1
  %5520 = add nsw i32 %5519, 532487669
  %5521 = bitcast i32 %5520 to float
  %5522 = fsub fast float 1.000000e+00, %5521
  %5523 = bitcast float %5522 to i32
  %5524 = sub nsw i32 2129859010, %5523
  %5525 = bitcast i32 %5524 to float
  %5526 = fmul fast float %5525, 2.000000e+00
  %5527 = bitcast float %5440 to i32
  %5528 = ashr i32 %5527, 1
  %5529 = add nsw i32 %5528, 532487669
  %5530 = bitcast i32 %5529 to float
  %5531 = fsub fast float 1.000000e+00, %5530
  %5532 = bitcast float %5531 to i32
  %5533 = sub nsw i32 2129859010, %5532
  %5534 = bitcast i32 %5533 to float
  %5535 = fmul fast float %5534, 2.000000e+00
  %5536 = bitcast float %5441 to i32
  %5537 = ashr i32 %5536, 1
  %5538 = add nsw i32 %5537, 532487669
  %5539 = bitcast i32 %5538 to float
  %5540 = fsub fast float 1.000000e+00, %5539
  %5541 = bitcast float %5540 to i32
  %5542 = sub nsw i32 2129859010, %5541
  %5543 = bitcast i32 %5542 to float
  %5544 = fmul fast float %5543, 2.000000e+00
  %5545 = fsub fast float 0x4002A9FBE0000000, %5526
  %5546 = fadd fast float %5526, 0x3FD54FDF00000000
  %5547 = bitcast float %5546 to i32
  %5548 = sub nsw i32 2129859010, %5547
  %5549 = bitcast i32 %5548 to float
  %5550 = fmul fast float %5549, %5545
  %5551 = fmul fast float %5550, %5550
  %5552 = fsub fast float 0x4002A9FBE0000000, %5535
  %5553 = fadd fast float %5535, 0x3FD54FDF00000000
  %5554 = bitcast float %5553 to i32
  %5555 = sub nsw i32 2129859010, %5554
  %5556 = bitcast i32 %5555 to float
  %5557 = fmul fast float %5556, %5552
  %5558 = fmul fast float %5557, %5557
  %5559 = fsub fast float 0x4002A9FBE0000000, %5544
  %5560 = fadd fast float %5544, 0x3FD54FDF00000000
  %5561 = bitcast float %5560 to i32
  %5562 = sub nsw i32 2129859010, %5561
  %5563 = bitcast i32 %5562 to float
  %5564 = fmul fast float %5563, %5559
  %5565 = fmul fast float %5564, %5564
  %5566 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5551)  ; FMax(a,b)
  %5567 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5558)  ; FMax(a,b)
  %5568 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5565)  ; FMax(a,b)
  %5569 = fsub fast float 1.000000e+00, %5455
  %5570 = fadd fast float %5569, %5470
  %5571 = call float @dx.op.unary.f32(i32 7, float %5570)  ; Saturate(value)
  %5572 = fsub fast float 1.000000e+00, %4835
  %5573 = fmul fast float %5512, %5572
  %5574 = fmul fast float %5515, %5515
  %5575 = fmul fast float %5574, %5573
  %5576 = fmul fast float %5575, %5517
  %5577 = fmul fast float %5572, 0xBFE99999A0000000
  %5578 = fmul fast float %5577, %5457
  %5579 = fmul fast float %5578, %5474
  %5580 = fadd fast float %5579, 1.000000e+00
  %5581 = fadd fast float %5448, -1.000000e+00
  %5582 = fmul fast float %5580, %5581
  %5583 = fadd fast float %5582, 1.000000e+00
  %5584 = fsub fast float %5566, %5439
  %5585 = fsub fast float %5567, %5440
  %5586 = fsub fast float %5568, %5441
  %5587 = fmul fast float %5576, %5584
  %5588 = fmul fast float %5576, %5585
  %5589 = fmul fast float %5576, %5586
  %5590 = fadd fast float %5587, %5439
  %5591 = fadd fast float %5588, %5440
  %5592 = fadd fast float %5589, %5441
  %5593 = fsub fast float %104, %5442
  %5594 = fsub fast float %105, %5443
  %5595 = fsub fast float %106, %5444
  %5596 = fmul fast float %5576, %5593
  %5597 = fmul fast float %5576, %5594
  %5598 = fmul fast float %5576, %5595
  %5599 = fadd fast float %5596, %5442
  %5600 = fadd fast float %5597, %5443
  %5601 = fadd fast float %5598, %5444
  %5602 = fmul fast float %5576, %5571
  %5603 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5604 = fsub fast float 1.000000e+00, %5603
  %5605 = fmul fast float %5602, %5604
  %5606 = fadd fast float %5605, %5603
  %5607 = fsub fast float 1.000000e+00, %5449
  %5608 = fmul fast float %5576, %5607
  %5609 = fadd fast float %5608, %5449
  %5610 = call float @dx.op.dot3.f32(i32 55, float %5599, float %5600, float %5601, float %5599, float %5600, float %5601)  ; Dot3(ax,ay,az,bx,by,bz)
  %5611 = call float @dx.op.unary.f32(i32 25, float %5610)  ; Rsqrt(value)
  %5612 = fmul fast float %5599, %5611
  %5613 = fmul fast float %5600, %5611
  %5614 = fmul fast float %5601, %5611
  br label %5615

; <label>:5615                                    ; preds = %5454, %5435
  %5616 = phi float [ %5499, %5454 ], [ %5436, %5435 ]
  %5617 = phi float [ %5500, %5454 ], [ %5437, %5435 ]
  %5618 = phi float [ %5501, %5454 ], [ %5438, %5435 ]
  %5619 = phi float [ %5590, %5454 ], [ %5439, %5435 ]
  %5620 = phi float [ %5591, %5454 ], [ %5440, %5435 ]
  %5621 = phi float [ %5592, %5454 ], [ %5441, %5435 ]
  %5622 = phi float [ %5612, %5454 ], [ %5442, %5435 ]
  %5623 = phi float [ %5613, %5454 ], [ %5443, %5435 ]
  %5624 = phi float [ %5614, %5454 ], [ %5444, %5435 ]
  %5625 = phi float [ %5606, %5454 ], [ %5448, %5435 ]
  %5626 = phi float [ %5609, %5454 ], [ %5449, %5435 ]
  %5627 = select i1 %269, float 0.000000e+00, float %5621
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5622, float %5623, float %5624, float %5451, float %5452, float %5453)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = call float @dx.op.unary.f32(i32 7, float %5628)  ; Saturate(value)
  %5630 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %5622, float %5623, float %5624)  ; Dot3(ax,ay,az,bx,by,bz)
  %5631 = fmul fast float %5630, 2.000000e+00
  %5632 = fmul fast float %5631, %5622
  %5633 = fmul fast float %5631, %5623
  %5634 = fmul fast float %5631, %5624
  %5635 = fsub fast float %196, %5632
  %5636 = fsub fast float %197, %5633
  %5637 = fsub fast float %198, %5634
  %5638 = call float @dx.op.binary.f32(i32 36, float %5626, float 1.000000e+00)  ; FMin(a,b)
  %5639 = fsub fast float 1.000000e+00, %5626
  %5640 = bitcast float %5639 to i32
  %5641 = sub nsw i32 2129859010, %5640
  %5642 = bitcast i32 %5641 to float
  %5643 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5644 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5645 = fcmp fast oeq float %5644, 0.000000e+00
  %5646 = fcmp fast oeq float %5643, 0.000000e+00
  %5647 = or i1 %5646, %5645
  br i1 %5647, label %5677, label %5648

; <label>:5648                                    ; preds = %5615
  %5649 = fsub fast float -0.000000e+00, %71
  %5650 = fsub fast float -0.000000e+00, %69
  %5651 = call float @dx.op.unary.f32(i32 24, float %5644)  ; Sqrt(value)
  %5652 = fdiv fast float %5651, %5643
  %5653 = fcmp fast ogt float %5652, 0x3FFB6F8900000000
  %5654 = select i1 %5653, float 0x3FFB6F8900000000, float %5652
  %5655 = fmul fast float %5654, 0x3FE8A23460000000
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = call float @dx.op.binary.f32(i32 35, float %5654, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5658 = fmul fast float %5656, %5643
  %5659 = fmul fast float %5657, 0x3FF279A740000000
  %5660 = fadd fast float %5659, -1.000000e+00
  %5661 = call float @dx.op.dot3.f32(i32 55, float %5649, float %5650, float %70, float %5649, float %5650, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5662 = call float @dx.op.unary.f32(i32 25, float %5661)  ; Rsqrt(value)
  %5663 = fmul fast float %5662, %5649
  %5664 = fmul fast float %5662, %5650
  %5665 = fmul fast float %5662, %70
  %5666 = fmul fast float %5660, %5660
  %5667 = fsub fast float 1.000000e+00, %5666
  %5668 = fmul fast float %5657, 0x40005F8BE0000000
  %5669 = fsub fast float 0x400C5BF8A0000000, %5668
  %5670 = fdiv fast float %5658, %5669
  %5671 = fmul fast float %5670, 0x3FEE31C3C0000000
  %5672 = fmul fast float %5671, %5667
  %5673 = fmul fast float %5657, 0x3FDACB7480000000
  %5674 = fadd fast float %5673, 0xBFD7347680000000
  %5675 = fmul fast float %5674, %5670
  %5676 = fmul fast float %5675, %5667
  br label %5677

; <label>:5677                                    ; preds = %5648, %5615
  %5678 = phi float [ %5663, %5648 ], [ 0.000000e+00, %5615 ]
  %5679 = phi float [ %5664, %5648 ], [ 0.000000e+00, %5615 ]
  %5680 = phi float [ %5665, %5648 ], [ 0.000000e+00, %5615 ]
  %5681 = phi float [ %5672, %5648 ], [ 0.000000e+00, %5615 ]
  %5682 = phi float [ %5676, %5648 ], [ 0.000000e+00, %5615 ]
  %5683 = call float @dx.op.dot3.f32(i32 55, float %5678, float %5679, float %5680, float %5622, float %5623, float %5624)  ; Dot3(ax,ay,az,bx,by,bz)
  %5684 = fmul fast float %5683, 0x3FDF454380000000
  %5685 = fmul fast float %5683, %5683
  %5686 = fmul fast float %5685, 0x3FEE471020000000
  %5687 = fadd fast float %5686, 0xBFD42F6020000000
  %5688 = fmul fast float %5643, 0x3FD20DD760000000
  %5689 = fmul fast float %5687, %5682
  %5690 = fadd fast float %5689, %5688
  %5691 = fmul fast float %5684, %5681
  %5692 = fadd fast float %5690, %5691
  %5693 = fsub fast float %5690, %5691
  %5694 = call float @dx.op.dot3.f32(i32 55, float %5678, float %5679, float %5680, float %5635, float %5636, float %5637)  ; Dot3(ax,ay,az,bx,by,bz)
  %5695 = fmul fast float %5694, 0x3FDF454380000000
  %5696 = fmul fast float %5694, %5694
  %5697 = fmul fast float %5696, 0x3FEE471020000000
  %5698 = fadd fast float %5697, 0xBFD42F6020000000
  %5699 = call float @dx.op.dot3.f32(i32 55, float %5643, float %5681, float %5682, float 0x3FD20DD760000000, float %5695, float %5698)  ; Dot3(ax,ay,az,bx,by,bz)
  %5700 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %64)  ; FMax(a,b)
  %5701 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5702 = fcmp fast oeq float %5701, 0.000000e+00
  %5703 = fcmp fast oeq float %5700, 0.000000e+00
  %5704 = or i1 %5703, %5702
  br i1 %5704, label %5734, label %5705

; <label>:5705                                    ; preds = %5677
  %5706 = fsub fast float -0.000000e+00, %67
  %5707 = fsub fast float -0.000000e+00, %65
  %5708 = call float @dx.op.unary.f32(i32 24, float %5701)  ; Sqrt(value)
  %5709 = fdiv fast float %5708, %5700
  %5710 = fcmp fast ogt float %5709, 0x3FFB6F8900000000
  %5711 = select i1 %5710, float 0x3FFB6F8900000000, float %5709
  %5712 = fmul fast float %5711, 0x3FE8A23460000000
  %5713 = call float @dx.op.unary.f32(i32 7, float %5712)  ; Saturate(value)
  %5714 = call float @dx.op.binary.f32(i32 35, float %5711, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5715 = fmul fast float %5713, %5700
  %5716 = fmul fast float %5714, 0x3FF279A740000000
  %5717 = fadd fast float %5716, -1.000000e+00
  %5718 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5707, float %66, float %5706, float %5707, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5719 = call float @dx.op.unary.f32(i32 25, float %5718)  ; Rsqrt(value)
  %5720 = fmul fast float %5719, %5706
  %5721 = fmul fast float %5719, %5707
  %5722 = fmul fast float %5719, %66
  %5723 = fmul fast float %5717, %5717
  %5724 = fsub fast float 1.000000e+00, %5723
  %5725 = fmul fast float %5714, 0x40005F8BE0000000
  %5726 = fsub fast float 0x400C5BF8A0000000, %5725
  %5727 = fdiv fast float %5715, %5726
  %5728 = fmul fast float %5727, 0x3FEE31C3C0000000
  %5729 = fmul fast float %5728, %5724
  %5730 = fmul fast float %5714, 0x3FDACB7480000000
  %5731 = fadd fast float %5730, 0xBFD7347680000000
  %5732 = fmul fast float %5731, %5727
  %5733 = fmul fast float %5732, %5724
  br label %5734

; <label>:5734                                    ; preds = %5705, %5677
  %5735 = phi float [ %5720, %5705 ], [ 0.000000e+00, %5677 ]
  %5736 = phi float [ %5721, %5705 ], [ 0.000000e+00, %5677 ]
  %5737 = phi float [ %5722, %5705 ], [ 0.000000e+00, %5677 ]
  %5738 = phi float [ %5729, %5705 ], [ 0.000000e+00, %5677 ]
  %5739 = phi float [ %5733, %5705 ], [ 0.000000e+00, %5677 ]
  %5740 = call float @dx.op.dot3.f32(i32 55, float %5735, float %5736, float %5737, float %5622, float %5623, float %5624)  ; Dot3(ax,ay,az,bx,by,bz)
  %5741 = fmul fast float %5740, 0x3FDF454380000000
  %5742 = fmul fast float %5740, %5740
  %5743 = fmul fast float %5742, 0x3FEE471020000000
  %5744 = fadd fast float %5743, 0xBFD42F6020000000
  %5745 = fmul fast float %5700, 0x3FD20DD760000000
  %5746 = fmul fast float %5744, %5739
  %5747 = fadd fast float %5746, %5745
  %5748 = fmul fast float %5741, %5738
  %5749 = fadd fast float %5747, %5748
  %5750 = fsub fast float %5747, %5748
  %5751 = call float @dx.op.dot3.f32(i32 55, float %5735, float %5736, float %5737, float %5635, float %5636, float %5637)  ; Dot3(ax,ay,az,bx,by,bz)
  %5752 = fmul fast float %5751, 0x3FDF454380000000
  %5753 = fmul fast float %5751, %5751
  %5754 = fmul fast float %5753, 0x3FEE471020000000
  %5755 = fadd fast float %5754, 0xBFD42F6020000000
  %5756 = call float @dx.op.dot3.f32(i32 55, float %5700, float %5738, float %5739, float 0x3FD20DD760000000, float %5752, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %5758 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5759 = fcmp fast oeq float %5758, 0.000000e+00
  %5760 = fcmp fast oeq float %5757, 0.000000e+00
  %5761 = or i1 %5760, %5759
  br i1 %5761, label %5791, label %5762

; <label>:5762                                    ; preds = %5734
  %5763 = fsub fast float -0.000000e+00, %63
  %5764 = fsub fast float -0.000000e+00, %61
  %5765 = call float @dx.op.unary.f32(i32 24, float %5758)  ; Sqrt(value)
  %5766 = fdiv fast float %5765, %5757
  %5767 = fcmp fast ogt float %5766, 0x3FFB6F8900000000
  %5768 = select i1 %5767, float 0x3FFB6F8900000000, float %5766
  %5769 = fmul fast float %5768, 0x3FE8A23460000000
  %5770 = call float @dx.op.unary.f32(i32 7, float %5769)  ; Saturate(value)
  %5771 = call float @dx.op.binary.f32(i32 35, float %5768, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5772 = fmul fast float %5770, %5757
  %5773 = fmul fast float %5771, 0x3FF279A740000000
  %5774 = fadd fast float %5773, -1.000000e+00
  %5775 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5764, float %62, float %5763, float %5764, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %5776 = call float @dx.op.unary.f32(i32 25, float %5775)  ; Rsqrt(value)
  %5777 = fmul fast float %5776, %5763
  %5778 = fmul fast float %5776, %5764
  %5779 = fmul fast float %5776, %62
  %5780 = fmul fast float %5774, %5774
  %5781 = fsub fast float 1.000000e+00, %5780
  %5782 = fmul fast float %5771, 0x40005F8BE0000000
  %5783 = fsub fast float 0x400C5BF8A0000000, %5782
  %5784 = fdiv fast float %5772, %5783
  %5785 = fmul fast float %5784, 0x3FEE31C3C0000000
  %5786 = fmul fast float %5785, %5781
  %5787 = fmul fast float %5771, 0x3FDACB7480000000
  %5788 = fadd fast float %5787, 0xBFD7347680000000
  %5789 = fmul fast float %5788, %5784
  %5790 = fmul fast float %5789, %5781
  br label %5791

; <label>:5791                                    ; preds = %5762, %5734
  %5792 = phi float [ %5777, %5762 ], [ 0.000000e+00, %5734 ]
  %5793 = phi float [ %5778, %5762 ], [ 0.000000e+00, %5734 ]
  %5794 = phi float [ %5779, %5762 ], [ 0.000000e+00, %5734 ]
  %5795 = phi float [ %5786, %5762 ], [ 0.000000e+00, %5734 ]
  %5796 = phi float [ %5790, %5762 ], [ 0.000000e+00, %5734 ]
  %5797 = call float @dx.op.dot3.f32(i32 55, float %5792, float %5793, float %5794, float %5622, float %5623, float %5624)  ; Dot3(ax,ay,az,bx,by,bz)
  %5798 = fmul fast float %5797, 0x3FDF454380000000
  %5799 = fmul fast float %5797, %5797
  %5800 = fmul fast float %5799, 0x3FEE471020000000
  %5801 = fadd fast float %5800, 0xBFD42F6020000000
  %5802 = fmul fast float %5757, 0x3FD20DD760000000
  %5803 = fmul fast float %5801, %5796
  %5804 = fadd fast float %5803, %5802
  %5805 = fmul fast float %5798, %5795
  %5806 = fadd fast float %5804, %5805
  %5807 = fsub fast float %5804, %5805
  %5808 = call float @dx.op.dot3.f32(i32 55, float %5792, float %5793, float %5794, float %5635, float %5636, float %5637)  ; Dot3(ax,ay,az,bx,by,bz)
  %5809 = fmul fast float %5808, 0x3FDF454380000000
  %5810 = fmul fast float %5808, %5808
  %5811 = fmul fast float %5810, 0x3FEE471020000000
  %5812 = fadd fast float %5811, 0xBFD42F6020000000
  %5813 = call float @dx.op.dot3.f32(i32 55, float %5757, float %5795, float %5796, float 0x3FD20DD760000000, float %5809, float %5812)  ; Dot3(ax,ay,az,bx,by,bz)
  %5814 = call float @dx.op.binary.f32(i32 35, float %5692, float 0.000000e+00)  ; FMax(a,b)
  %5815 = call float @dx.op.binary.f32(i32 35, float %5749, float 0.000000e+00)  ; FMax(a,b)
  %5816 = call float @dx.op.binary.f32(i32 35, float %5806, float 0.000000e+00)  ; FMax(a,b)
  %5817 = call float @dx.op.binary.f32(i32 35, float %5693, float 0.000000e+00)  ; FMax(a,b)
  %5818 = call float @dx.op.binary.f32(i32 35, float %5750, float 0.000000e+00)  ; FMax(a,b)
  %5819 = call float @dx.op.binary.f32(i32 35, float %5807, float 0.000000e+00)  ; FMax(a,b)
  %5820 = call float @dx.op.binary.f32(i32 35, float %5699, float 0.000000e+00)  ; FMax(a,b)
  %5821 = call float @dx.op.binary.f32(i32 35, float %5756, float 0.000000e+00)  ; FMax(a,b)
  %5822 = call float @dx.op.binary.f32(i32 35, float %5813, float 0.000000e+00)  ; FMax(a,b)
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 0
  %5825 = call float @dx.op.binary.f32(i32 36, float %5616, float %5824)  ; FMin(a,b)
  %5826 = fsub fast float 1.000000e+00, %5638
  %5827 = fmul fast float %5825, %5826
  %5828 = fsub fast float 1.000000e+00, %5827
  %5829 = bitcast float %5828 to i32
  %5830 = sub nsw i32 2129859010, %5829
  %5831 = bitcast i32 %5830 to float
  %5832 = call float @dx.op.binary.f32(i32 36, float %5617, float %5824)  ; FMin(a,b)
  %5833 = fmul fast float %5832, %5826
  %5834 = fsub fast float 1.000000e+00, %5833
  %5835 = bitcast float %5834 to i32
  %5836 = sub nsw i32 2129859010, %5835
  %5837 = bitcast i32 %5836 to float
  %5838 = call float @dx.op.binary.f32(i32 36, float %5618, float %5824)  ; FMin(a,b)
  %5839 = fmul fast float %5838, %5826
  %5840 = fsub fast float 1.000000e+00, %5839
  %5841 = bitcast float %5840 to i32
  %5842 = sub nsw i32 2129859010, %5841
  %5843 = bitcast i32 %5842 to float
  %5844 = fmul fast float %5814, %5638
  %5845 = fmul fast float %5844, %5831
  %5846 = fmul fast float %5815, %5638
  %5847 = fmul fast float %5846, %5837
  %5848 = fmul fast float %5816, %5638
  %5849 = fmul fast float %5848, %5843
  %5850 = call float @dx.op.binary.f32(i32 36, float %5619, float %5824)  ; FMin(a,b)
  %5851 = fmul fast float %5850, %5826
  %5852 = fsub fast float 1.000000e+00, %5851
  %5853 = bitcast float %5852 to i32
  %5854 = sub nsw i32 2129859010, %5853
  %5855 = bitcast i32 %5854 to float
  %5856 = call float @dx.op.binary.f32(i32 36, float %5620, float %5824)  ; FMin(a,b)
  %5857 = fmul fast float %5856, %5826
  %5858 = fsub fast float 1.000000e+00, %5857
  %5859 = bitcast float %5858 to i32
  %5860 = sub nsw i32 2129859010, %5859
  %5861 = bitcast i32 %5860 to float
  %5862 = call float @dx.op.binary.f32(i32 36, float %5627, float %5824)  ; FMin(a,b)
  %5863 = fmul fast float %5862, %5826
  %5864 = fsub fast float 1.000000e+00, %5863
  %5865 = bitcast float %5864 to i32
  %5866 = sub nsw i32 2129859010, %5865
  %5867 = bitcast i32 %5866 to float
  %5868 = fmul fast float %5820, %5638
  %5869 = fmul fast float %5868, %5855
  %5870 = fmul fast float %5821, %5638
  %5871 = fmul fast float %5870, %5861
  %5872 = fmul fast float %5822, %5638
  %5873 = fmul fast float %5872, %5867
  %5874 = call float @dx.op.dot3.f32(i32 55, float %5845, float %5847, float %5849, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5875 = select i1 %269, float 0.000000e+00, float %5845
  %5876 = select i1 %269, float %5874, float %5847
  %5877 = select i1 %269, float 0.000000e+00, float %5849
  %5878 = call float @dx.op.dot3.f32(i32 55, float %5817, float %5818, float %5819, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5879 = select i1 %269, float 0.000000e+00, float %5817
  %5880 = select i1 %269, float %5878, float %5818
  %5881 = select i1 %269, float 0.000000e+00, float %5819
  %5882 = call float @dx.op.dot3.f32(i32 55, float %5869, float %5871, float %5873, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5883 = select i1 %269, float 0.000000e+00, float %5869
  %5884 = select i1 %269, float %5882, float %5871
  %5885 = select i1 %269, float 0.000000e+00, float %5873
  %5886 = fmul fast float %4010, %4010
  %5887 = call float @dx.op.unary.f32(i32 7, float %5886)  ; Saturate(value)
  %5888 = fmul fast float %5629, 9.843750e-01
  %5889 = fmul fast float %5625, 9.843750e-01
  %5890 = fadd fast float %5888, 7.812500e-03
  %5891 = fadd fast float %5889, 7.812500e-03
  %5892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %5890, float %5891, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5893 = extractvalue %dx.types.ResRet.f32 %5892, 0
  %5894 = extractvalue %dx.types.ResRet.f32 %5892, 1
  %5895 = extractvalue %dx.types.ResRet.f32 %5892, 2
  %5896 = extractvalue %dx.types.ResRet.f32 %5892, 3
  %5897 = fsub fast float 1.000000e+00, %5887
  %5898 = fsub fast float %5895, %5893
  %5899 = fsub fast float %5896, %5894
  %5900 = fmul fast float %5898, %5897
  %5901 = fmul fast float %5899, %5897
  %5902 = fadd fast float %5900, %5893
  %5903 = fadd fast float %5901, %5894
  %5904 = fmul fast float %5902, %5619
  %5905 = fmul fast float %5902, %5620
  %5906 = fmul fast float %5902, %5627
  %5907 = fadd fast float %5904, %5903
  %5908 = fadd fast float %5905, %5903
  %5909 = fadd fast float %5906, %5903
  %5910 = fcmp fast ogt float %4661, 0.000000e+00
  br i1 %5910, label %5911, label %5937

; <label>:5911                                    ; preds = %5791
  %5912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4661, float %5629, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5913 = extractvalue %dx.types.ResRet.f32 %5912, 0
  %5914 = extractvalue %dx.types.ResRet.f32 %5912, 1
  %5915 = extractvalue %dx.types.ResRet.f32 %5912, 2
  %5916 = fadd fast float %5913, -5.000000e-01
  %5917 = fadd fast float %5914, -5.000000e-01
  %5918 = fadd fast float %5915, -5.000000e-01
  %5919 = fsub fast float 1.000000e+00, %5619
  %5920 = fsub fast float 1.000000e+00, %5620
  %5921 = fsub fast float 1.000000e+00, %5627
  %5922 = fmul fast float %5619, 4.000000e+00
  %5923 = fmul fast float %5922, %5919
  %5924 = fmul fast float %5923, %5916
  %5925 = fmul fast float %5620, 4.000000e+00
  %5926 = fmul fast float %5925, %5920
  %5927 = fmul fast float %5926, %5917
  %5928 = fmul fast float %5627, 4.000000e+00
  %5929 = fmul fast float %5928, %5921
  %5930 = fmul fast float %5929, %5918
  %5931 = fadd fast float %5924, %5907
  %5932 = fadd fast float %5927, %5908
  %5933 = fadd fast float %5930, %5909
  %5934 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  %5935 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  %5936 = call float @dx.op.unary.f32(i32 7, float %5933)  ; Saturate(value)
  br label %5937

; <label>:5937                                    ; preds = %5911, %5791
  %5938 = phi float [ %5934, %5911 ], [ %5907, %5791 ]
  %5939 = phi float [ %5935, %5911 ], [ %5908, %5791 ]
  %5940 = phi float [ %5936, %5911 ], [ %5909, %5791 ]
  %5941 = call float @dx.op.binary.f32(i32 35, float %5939, float %5940)  ; FMax(a,b)
  %5942 = call float @dx.op.binary.f32(i32 35, float %5938, float %5941)  ; FMax(a,b)
  %5943 = fsub fast float 1.000000e+00, %5942
  %5944 = call float @dx.op.dot3.f32(i32 55, float %5616, float %5617, float %5618, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5945 = fcmp fast ogt float %5944, 0x3E7FF19E20000000
  %5946 = fdiv fast float 1.000000e+00, %5944
  %5947 = select i1 %5945, float %5946, float 0.000000e+00
  %5948 = fmul fast float %5947, %5616
  %5949 = fmul fast float %5947, %5617
  %5950 = fmul fast float %5947, %5618
  %5951 = fadd fast float %5948, -1.000000e+00
  %5952 = fadd fast float %5949, -1.000000e+00
  %5953 = fadd fast float %5950, -1.000000e+00
  %5954 = fmul fast float %5951, 5.000000e-01
  %5955 = fmul fast float %5952, 5.000000e-01
  %5956 = fmul fast float %5953, 5.000000e-01
  %5957 = fadd fast float %5954, 1.000000e+00
  %5958 = fadd fast float %5955, 1.000000e+00
  %5959 = fadd fast float %5956, 1.000000e+00
  %5960 = call float @dx.op.binary.f32(i32 35, float %5629, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5961 = fdiv fast float %4010, %5960
  %5962 = fcmp fast olt float %4732, 1.270000e+02
  %5963 = fcmp fast olt float %4733, 1.270000e+02
  %5964 = fcmp fast olt float %4734, 1.270000e+02
  %5965 = fmul fast float %4732, 0xBFF7154760000000
  %5966 = fmul fast float %5965, %5961
  %5967 = fmul fast float %4733, 0xBFF7154760000000
  %5968 = fmul fast float %5967, %5961
  %5969 = fmul fast float %4734, 0xBFF7154760000000
  %5970 = fmul fast float %5969, %5961
  %5971 = call float @dx.op.unary.f32(i32 21, float %5966)  ; Exp(value)
  %5972 = call float @dx.op.unary.f32(i32 21, float %5968)  ; Exp(value)
  %5973 = call float @dx.op.unary.f32(i32 21, float %5970)  ; Exp(value)
  %5974 = call float @dx.op.unary.f32(i32 7, float %5971)  ; Saturate(value)
  %5975 = call float @dx.op.unary.f32(i32 7, float %5972)  ; Saturate(value)
  %5976 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5977 = select i1 %5962, float %5974, float 0.000000e+00
  %5978 = select i1 %5963, float %5975, float 0.000000e+00
  %5979 = select i1 %5964, float %5976, float 0.000000e+00
  %5980 = fmul fast float %5977, %5943
  %5981 = fmul fast float %5978, %5943
  %5982 = fmul fast float %5979, %5943
  %5983 = fadd fast float %5980, -1.000000e+00
  %5984 = fadd fast float %5981, -1.000000e+00
  %5985 = fadd fast float %5982, -1.000000e+00
  %5986 = fmul fast float %5983, %4687
  %5987 = fmul fast float %5984, %4687
  %5988 = fmul fast float %5985, %4687
  %5989 = fmul fast float %5938, %5883
  %5990 = fmul fast float %5939, %5884
  %5991 = fmul fast float %5940, %5885
  %5992 = fsub fast float 1.000000e+00, %5629
  %5993 = bitcast float %5992 to i32
  %5994 = sitofp i32 %5993 to float
  %5995 = fmul fast float %5994, 5.000000e+00
  %5996 = fadd fast float %5995, 0xC1EFBF8940000000
  %5997 = fptosi float %5996 to i32
  %5998 = bitcast i32 %5997 to float
  %5999 = fmul fast float %5998, %4662
  %6000 = fmul fast float %5875, %5999
  %6001 = fmul fast float %6000, %5943
  %6002 = fmul fast float %6001, %5957
  %6003 = fmul fast float %5876, %5999
  %6004 = fmul fast float %6003, %5943
  %6005 = fmul fast float %6004, %5958
  %6006 = fmul fast float %5877, %5999
  %6007 = fmul fast float %6006, %5943
  %6008 = fmul fast float %6007, %5959
  %6009 = fadd fast float %5989, %4651
  %6010 = fadd fast float %6009, %6002
  %6011 = fmul fast float %6010, %4687
  %6012 = fadd fast float %5990, %4652
  %6013 = fadd fast float %6012, %6005
  %6014 = fmul fast float %6013, %4687
  %6015 = fadd fast float %5991, %4653
  %6016 = fadd fast float %6015, %6008
  %6017 = fmul fast float %6016, %4687
  %6018 = fmul fast float %5620, 0x4012D0A400000000
  %6019 = fadd fast float %5988, 1.000000e+00
  %6020 = fadd fast float %5987, 1.000000e+00
  %6021 = fadd fast float %5986, 1.000000e+00
  %6022 = fmul fast float %5943, %5877
  %6023 = fmul fast float %5943, %5876
  %6024 = fmul fast float %5943, %5875
  %6025 = fsub fast float 1.000000e+00, %5625
  %6026 = fmul fast float %6025, %4687
  %6027 = fsub fast float 1.000000e+00, %6026
  %6028 = call float @dx.op.unary.f32(i32 7, float %6027)  ; Saturate(value)
  %6029 = fsub fast float 1.000000e+00, %6028
  %6030 = fadd fast float %6018, 0x3FDB6377A0000000
  %6031 = fmul fast float %6029, %6030
  %6032 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5446, float %5447, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6033 = fadd fast float %6031, %6032
  %6034 = call float @dx.op.unary.f32(i32 7, float %6033)  ; Saturate(value)
  %6035 = call float @dx.op.binary.f32(i32 35, float %6034, float 0x3F847AE140000000)  ; FMax(a,b)
  %6036 = fmul fast float %6035, %6035
  %6037 = fmul fast float %6036, %6036
  %6038 = fmul fast float %6037, 0xC00A935000000000
  %6039 = call float @dx.op.unary.f32(i32 21, float %6038)  ; Exp(value)
  %6040 = fsub fast float 1.000000e+00, %6039
  %6041 = fmul fast float %6021, %5879
  %6042 = fmul fast float %6041, %6040
  %6043 = fmul fast float %6020, %5880
  %6044 = fmul fast float %6043, %6040
  %6045 = fmul fast float %6019, %5881
  %6046 = fmul fast float %6045, %6040
  %6047 = fadd fast float %6042, %6024
  %6048 = fmul fast float %6047, %4687
  %6049 = fadd fast float %6044, %6023
  %6050 = fmul fast float %6049, %4687
  %6051 = fadd fast float %6046, %6022
  %6052 = fmul fast float %6051, %4687
  %6053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6054 = extractvalue %dx.types.CBufRet.f32 %6053, 3
  %6055 = fcmp fast oeq float %6054, 0.000000e+00
  br i1 %6055, label %7200, label %6056

; <label>:6056                                    ; preds = %5937
  %6057 = extractvalue %dx.types.CBufRet.f32 %6053, 0
  %6058 = extractvalue %dx.types.CBufRet.f32 %6053, 1
  %6059 = extractvalue %dx.types.CBufRet.f32 %6053, 2
  %6060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6061 = extractvalue %dx.types.CBufRet.f32 %6060, 0
  %6062 = extractvalue %dx.types.CBufRet.f32 %6060, 1
  %6063 = extractvalue %dx.types.CBufRet.f32 %6060, 2
  %6064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.f32 %6064, 0
  %6066 = extractvalue %dx.types.CBufRet.f32 %6064, 1
  %6067 = call float @dx.op.dot3.f32(i32 55, float %6061, float %6062, float %6063, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6068 = select i1 %269, float %6065, float %6061
  %6069 = select i1 %269, float %6067, float %6062
  %6070 = select i1 %269, float %6066, float %6063
  %6071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6072 = extractvalue %dx.types.CBufRet.f32 %6071, 2
  %6073 = fmul fast float %6072, %104
  %6074 = fmul fast float %6072, %105
  %6075 = fmul fast float %6072, %106
  %6076 = fadd fast float %6073, %176
  %6077 = fadd fast float %6074, %177
  %6078 = fadd fast float %6075, %178
  %6079 = fcmp fast olt float %6054, 0.000000e+00
  br i1 %6079, label %6719, label %6080

; <label>:6080                                    ; preds = %6056
  %6081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6082 = extractvalue %dx.types.CBufRet.f32 %6081, 0
  %6083 = extractvalue %dx.types.CBufRet.f32 %6081, 1
  %6084 = extractvalue %dx.types.CBufRet.f32 %6081, 2
  %6085 = extractvalue %dx.types.CBufRet.f32 %6081, 3
  %6086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6087 = extractvalue %dx.types.CBufRet.f32 %6086, 0
  %6088 = extractvalue %dx.types.CBufRet.f32 %6086, 1
  %6089 = extractvalue %dx.types.CBufRet.f32 %6086, 2
  %6090 = extractvalue %dx.types.CBufRet.f32 %6086, 3
  %6091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6091, 0
  %6093 = extractvalue %dx.types.CBufRet.f32 %6091, 1
  %6094 = extractvalue %dx.types.CBufRet.f32 %6091, 2
  %6095 = extractvalue %dx.types.CBufRet.f32 %6091, 3
  %6096 = fmul fast float %6082, %6076
  %6097 = call float @dx.op.tertiary.f32(i32 46, float %6077, float %6083, float %6096)  ; FMad(a,b,c)
  %6098 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6084, float %6097)  ; FMad(a,b,c)
  %6099 = fadd fast float %6098, %6085
  %6100 = fmul fast float %6087, %6076
  %6101 = call float @dx.op.tertiary.f32(i32 46, float %6077, float %6088, float %6100)  ; FMad(a,b,c)
  %6102 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6089, float %6101)  ; FMad(a,b,c)
  %6103 = fadd fast float %6102, %6090
  %6104 = fmul fast float %6092, %6076
  %6105 = call float @dx.op.tertiary.f32(i32 46, float %6077, float %6093, float %6104)  ; FMad(a,b,c)
  %6106 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6094, float %6105)  ; FMad(a,b,c)
  %6107 = fadd fast float %6106, %6095
  %6108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6109 = extractvalue %dx.types.CBufRet.f32 %6108, 0
  %6110 = fcmp fast une float %6109, 0.000000e+00
  %6111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6112 = extractvalue %dx.types.CBufRet.f32 %6111, 0
  %6113 = extractvalue %dx.types.CBufRet.f32 %6111, 1
  %6114 = extractvalue %dx.types.CBufRet.f32 %6111, 3
  %6115 = fmul fast float %6114, %6099
  %6116 = fmul fast float %6114, %6103
  %6117 = fadd fast float %6115, %6112
  %6118 = fadd fast float %6116, %6113
  %6119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6120 = extractvalue %dx.types.CBufRet.f32 %6119, 0
  %6121 = extractvalue %dx.types.CBufRet.f32 %6119, 1
  %6122 = extractvalue %dx.types.CBufRet.f32 %6119, 3
  %6123 = fmul fast float %6122, %6099
  %6124 = fmul fast float %6122, %6103
  %6125 = fadd fast float %6123, %6120
  %6126 = fadd fast float %6124, %6121
  %6127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6128 = extractvalue %dx.types.CBufRet.f32 %6127, 1
  %6129 = fsub fast float %6128, %6107
  %6130 = extractvalue %dx.types.CBufRet.f32 %6127, 2
  %6131 = fmul fast float %6129, %6130
  %6132 = fsub fast float 1.000000e+00, %6131
  %6133 = call float @dx.op.unary.f32(i32 7, float %6132)  ; Saturate(value)
  br i1 %6110, label %6194, label %6134

; <label>:6134                                    ; preds = %6080
  %6135 = extractvalue %dx.types.CBufRet.f32 %6119, 2
  %6136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6137 = extractvalue %dx.types.CBufRet.f32 %6136, 2
  %6138 = fadd fast float %6137, %6135
  %6139 = fcmp fast ogt float %6138, 0.000000e+00
  br i1 %6139, label %6140, label %6164

; <label>:6140                                    ; preds = %6134
  %6141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.f32 %6141, 0
  %6143 = extractvalue %dx.types.CBufRet.f32 %6141, 1
  %6144 = fsub fast float %6125, %6142
  %6145 = fsub fast float %6126, %6143
  %6146 = fcmp fast olt float %6144, 0.000000e+00
  %6147 = fcmp fast olt float %6145, 0.000000e+00
  %6148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6149 = extractvalue %dx.types.CBufRet.f32 %6148, 0
  %6150 = extractvalue %dx.types.CBufRet.f32 %6148, 1
  %6151 = extractvalue %dx.types.CBufRet.f32 %6148, 2
  %6152 = extractvalue %dx.types.CBufRet.f32 %6148, 3
  %6153 = select i1 %6146, float %6149, float %6151
  %6154 = select i1 %6147, float %6150, float %6152
  %6155 = fmul fast float %6153, %6144
  %6156 = fmul fast float %6154, %6145
  %6157 = call float @dx.op.unary.f32(i32 6, float %6155)  ; FAbs(value)
  %6158 = call float @dx.op.unary.f32(i32 6, float %6156)  ; FAbs(value)
  %6159 = extractvalue %dx.types.CBufRet.f32 %6071, 0
  %6160 = call float @dx.op.binary.f32(i32 35, float %6157, float %6158)  ; FMax(a,b)
  %6161 = fsub fast float %6159, %6160
  %6162 = call float @dx.op.unary.f32(i32 7, float %6161)  ; Saturate(value)
  %6163 = fmul fast float %6162, %6133
  br label %6164

; <label>:6164                                    ; preds = %6140, %6134
  %6165 = phi float [ %6163, %6140 ], [ 0.000000e+00, %6134 ]
  %6166 = extractvalue %dx.types.CBufRet.f32 %6111, 2
  %6167 = extractvalue %dx.types.CBufRet.f32 %6136, 1
  %6168 = fadd fast float %6167, %6166
  %6169 = fcmp fast ogt float %6168, 0.000000e+00
  br i1 %6169, label %6170, label %6194

; <label>:6170                                    ; preds = %6164
  %6171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6171, 0
  %6173 = extractvalue %dx.types.CBufRet.f32 %6171, 1
  %6174 = fsub fast float %6117, %6172
  %6175 = fsub fast float %6118, %6173
  %6176 = fcmp fast olt float %6174, 0.000000e+00
  %6177 = fcmp fast olt float %6175, 0.000000e+00
  %6178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6179 = extractvalue %dx.types.CBufRet.f32 %6178, 0
  %6180 = extractvalue %dx.types.CBufRet.f32 %6178, 1
  %6181 = extractvalue %dx.types.CBufRet.f32 %6178, 2
  %6182 = extractvalue %dx.types.CBufRet.f32 %6178, 3
  %6183 = select i1 %6176, float %6179, float %6181
  %6184 = select i1 %6177, float %6180, float %6182
  %6185 = fmul fast float %6183, %6174
  %6186 = fmul fast float %6184, %6175
  %6187 = call float @dx.op.unary.f32(i32 6, float %6185)  ; FAbs(value)
  %6188 = call float @dx.op.unary.f32(i32 6, float %6186)  ; FAbs(value)
  %6189 = extractvalue %dx.types.CBufRet.f32 %6071, 0
  %6190 = call float @dx.op.binary.f32(i32 35, float %6187, float %6188)  ; FMax(a,b)
  %6191 = fsub fast float %6189, %6190
  %6192 = call float @dx.op.unary.f32(i32 7, float %6191)  ; Saturate(value)
  %6193 = fmul fast float %6192, %6133
  br label %6194

; <label>:6194                                    ; preds = %6170, %6164, %6080
  %6195 = phi float [ 0.000000e+00, %6080 ], [ %6193, %6170 ], [ 0.000000e+00, %6164 ]
  %6196 = phi float [ 0.000000e+00, %6080 ], [ %6165, %6170 ], [ %6165, %6164 ]
  %6197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.f32 %6197, 1
  %6199 = call float @dx.op.unary.f32(i32 7, float %6198)  ; Saturate(value)
  %6200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6200, 0
  %6202 = extractvalue %dx.types.CBufRet.f32 %6200, 1
  %6203 = fsub fast float %6099, %6201
  %6204 = fsub fast float %6103, %6202
  %6205 = fcmp fast olt float %6203, 0.000000e+00
  %6206 = fcmp fast olt float %6204, 0.000000e+00
  %6207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6218 = extractvalue %dx.types.CBufRet.f32 %6071, 0
  %6219 = call float @dx.op.binary.f32(i32 35, float %6216, float %6217)  ; FMax(a,b)
  %6220 = fsub fast float %6218, %6219
  %6221 = call float @dx.op.unary.f32(i32 7, float %6220)  ; Saturate(value)
  %6222 = call float @dx.op.binary.f32(i32 36, float %6221, float %6199)  ; FMin(a,b)
  %6223 = fmul fast float %6222, %6133
  %6224 = fsub fast float %6195, %6223
  %6225 = fsub fast float %6196, %6195
  %6226 = fsub fast float %6225, %6223
  %6227 = call float @dx.op.binary.f32(i32 35, float %6195, float %6196)  ; FMax(a,b)
  %6228 = call float @dx.op.binary.f32(i32 35, float %6223, float %6227)  ; FMax(a,b)
  %6229 = fcmp fast olt float %6228, 1.000000e+00
  br i1 %6229, label %6230, label %6628, !dx.controlflow.hints !84

; <label>:6230                                    ; preds = %6194
  %6231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6232 = extractvalue %dx.types.CBufRet.f32 %6231, 0
  %6233 = fcmp fast une float %6232, 0.000000e+00
  br i1 %6233, label %6234, label %6628, !dx.controlflow.hints !85

; <label>:6234                                    ; preds = %6230
  %6235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.CBufRet.f32 %6235, 1
  %6238 = extractvalue %dx.types.CBufRet.f32 %6235, 2
  %6239 = extractvalue %dx.types.CBufRet.f32 %6235, 3
  %6240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6241 = extractvalue %dx.types.CBufRet.f32 %6240, 0
  %6242 = extractvalue %dx.types.CBufRet.f32 %6240, 1
  %6243 = extractvalue %dx.types.CBufRet.f32 %6240, 2
  %6244 = extractvalue %dx.types.CBufRet.f32 %6240, 3
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 0
  %6247 = extractvalue %dx.types.CBufRet.f32 %6245, 1
  %6248 = extractvalue %dx.types.CBufRet.f32 %6245, 2
  %6249 = extractvalue %dx.types.CBufRet.f32 %6245, 3
  %6250 = fmul fast float %6236, %6076
  %6251 = call float @dx.op.tertiary.f32(i32 46, float %6077, float %6237, float %6250)  ; FMad(a,b,c)
  %6252 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6238, float %6251)  ; FMad(a,b,c)
  %6253 = fadd fast float %6252, %6239
  %6254 = fmul fast float %6241, %6076
  %6255 = call float @dx.op.tertiary.f32(i32 46, float %6077, float %6242, float %6254)  ; FMad(a,b,c)
  %6256 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6243, float %6255)  ; FMad(a,b,c)
  %6257 = fadd fast float %6256, %6244
  %6258 = fmul fast float %6246, %6076
  %6259 = call float @dx.op.tertiary.f32(i32 46, float %6077, float %6247, float %6258)  ; FMad(a,b,c)
  %6260 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6248, float %6259)  ; FMad(a,b,c)
  %6261 = fadd fast float %6260, %6249
  %6262 = fcmp fast oge float %6253, 1.000000e+00
  %6263 = fcmp fast oge float %6257, 1.000000e+00
  %6264 = or i1 %6262, %6263
  %6265 = fcmp fast olt float %6253, 0.000000e+00
  %6266 = fcmp fast olt float %6257, 0.000000e+00
  %6267 = or i1 %6265, %6266
  %6268 = or i1 %6264, %6267
  br i1 %6268, label %6628, label %6269, !dx.controlflow.hints !86

; <label>:6269                                    ; preds = %6234
  %6270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6271 = extractvalue %dx.types.CBufRet.f32 %6270, 0
  %6272 = extractvalue %dx.types.CBufRet.f32 %6270, 1
  %6273 = extractvalue %dx.types.CBufRet.f32 %6270, 2
  %6274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6275 = extractvalue %dx.types.CBufRet.i32 %6274, 2
  %6276 = uitofp i32 %6275 to float
  %6277 = extractvalue %dx.types.CBufRet.i32 %6274, 3
  %6278 = uitofp i32 %6277 to float
  %6279 = extractvalue %dx.types.CBufRet.f32 %6270, 3
  %6280 = fmul fast float %6279, 2.000000e+00
  %6281 = fsub fast float %6253, %6271
  %6282 = fsub fast float %6257, %6272
  %6283 = fmul fast float %6280, %6281
  %6284 = fmul fast float %6280, %6282
  %6285 = fdiv fast float 1.000000e+00, %6059
  %6286 = fmul fast float %6284, %6285
  %6287 = call float @dx.op.unary.f32(i32 6, float %6286)  ; FAbs(value)
  %6288 = fmul fast float %6273, %6078
  %6289 = fmul fast float %6288, %6280
  %6290 = call float @dx.op.unary.f32(i32 6, float %6289)  ; FAbs(value)
  %6291 = call float @dx.op.unary.f32(i32 6, float %6283)  ; FAbs(value)
  %6292 = call float @dx.op.binary.f32(i32 35, float %6290, float %6287)  ; FMax(a,b)
  %6293 = call float @dx.op.binary.f32(i32 35, float %6291, float %6292)  ; FMax(a,b)
  %6294 = fmul fast float %6293, 2.000000e+00
  %6295 = call float @dx.op.unary.f32(i32 23, float %6294)  ; Log(value)
  %6296 = call float @dx.op.binary.f32(i32 35, float %6295, float %6276)  ; FMax(a,b)
  %6297 = call float @dx.op.unary.f32(i32 22, float %6296)  ; Frc(value)
  %6298 = fadd fast float %6297, 0xBFEA666660000000
  %6299 = fmul fast float %6298, 8.000000e+00
  %6300 = call float @dx.op.unary.f32(i32 7, float %6299)  ; Saturate(value)
  %6301 = call float @dx.op.unary.f32(i32 27, float %6296)  ; Round_ni(value)
  %6302 = fadd fast float %6301, %6300
  %6303 = call float @dx.op.binary.f32(i32 36, float %6302, float %6278)  ; FMin(a,b)
  %6304 = call float @dx.op.unary.f32(i32 27, float %6303)  ; Round_ni(value)
  %6305 = fsub fast float -0.000000e+00, %6304
  %6306 = call float @dx.op.unary.f32(i32 21, float %6305)  ; Exp(value)
  %6307 = fmul fast float %6306, %6280
  %6308 = fmul fast float %6307, %6253
  %6309 = fmul fast float %6307, %6257
  %6310 = fmul fast float %6308, 2.500000e-01
  %6311 = fmul fast float %6309, 2.500000e-01
  %6312 = fadd fast float %6310, 5.000000e-01
  %6313 = fadd fast float %6311, 5.000000e-01
  %6314 = fsub fast float %6278, %6276
  %6315 = fptoui float %6314 to i32
  %6316 = add i32 %6315, 320
  %6317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %6316)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.f32 %6317, 0
  %6319 = extractvalue %dx.types.CBufRet.f32 %6317, 1
  %6320 = fcmp fast une float %6303, %6278
  %6321 = fsub fast float %6253, %6318
  %6322 = fsub fast float %6257, %6319
  %6323 = call float @dx.op.unary.f32(i32 6, float %6321)  ; FAbs(value)
  %6324 = call float @dx.op.unary.f32(i32 6, float %6322)  ; FAbs(value)
  %6325 = fmul fast float %6323, %6307
  %6326 = fmul fast float %6324, %6307
  %6327 = fcmp fast olt float %6325, 1.000000e+00
  %6328 = fcmp fast olt float %6326, 1.000000e+00
  %6329 = and i1 %6327, %6328
  %6330 = or i1 %6320, %6329
  br i1 %6330, label %6331, label %6628, !dx.controlflow.hints !87

; <label>:6331                                    ; preds = %6269
  %6332 = fmul fast float %6309, 5.000000e-01
  %6333 = fmul fast float %6308, 5.000000e-01
  %6334 = fadd fast float %6332, 5.000000e-01
  %6335 = fadd fast float %6333, 5.000000e-01
  %6336 = sitofp i32 %6275 to float
  %6337 = fsub fast float %6303, %6336
  %6338 = call float @dx.op.unary.f32(i32 27, float %6337)  ; Round_ni(value)
  %6339 = call float @dx.op.unary.f32(i32 22, float %6303)  ; Frc(value)
  %6340 = call float @dx.op.unary.f32(i32 22, float %6335)  ; Frc(value)
  %6341 = call float @dx.op.unary.f32(i32 22, float %6334)  ; Frc(value)
  %6342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %6340, float %6341, float %6338, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6343 = extractvalue %dx.types.ResRet.f32 %6342, 0
  %6344 = extractvalue %dx.types.ResRet.f32 %6342, 1
  %6345 = extractvalue %dx.types.ResRet.f32 %6342, 2
  %6346 = extractvalue %dx.types.ResRet.f32 %6342, 3
  %6347 = fcmp fast ogt float %6339, 0.000000e+00
  br i1 %6347, label %6348, label %6369, !dx.controlflow.hints !88

; <label>:6348                                    ; preds = %6331
  %6349 = fadd fast float %6338, 1.000000e+00
  %6350 = call float @dx.op.unary.f32(i32 22, float %6312)  ; Frc(value)
  %6351 = call float @dx.op.unary.f32(i32 22, float %6313)  ; Frc(value)
  %6352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %6350, float %6351, float %6349, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6353 = extractvalue %dx.types.ResRet.f32 %6352, 0
  %6354 = extractvalue %dx.types.ResRet.f32 %6352, 1
  %6355 = extractvalue %dx.types.ResRet.f32 %6352, 2
  %6356 = extractvalue %dx.types.ResRet.f32 %6352, 3
  %6357 = fsub fast float %6353, %6343
  %6358 = fsub fast float %6354, %6344
  %6359 = fsub fast float %6355, %6345
  %6360 = fsub fast float %6356, %6346
  %6361 = fmul fast float %6357, %6339
  %6362 = fmul fast float %6358, %6339
  %6363 = fmul fast float %6359, %6339
  %6364 = fmul fast float %6360, %6339
  %6365 = fadd fast float %6361, %6343
  %6366 = fadd fast float %6362, %6344
  %6367 = fadd fast float %6363, %6345
  %6368 = fadd fast float %6364, %6346
  br label %6369

; <label>:6369                                    ; preds = %6348, %6331
  %6370 = phi float [ %6365, %6348 ], [ %6343, %6331 ]
  %6371 = phi float [ %6366, %6348 ], [ %6344, %6331 ]
  %6372 = phi float [ %6367, %6348 ], [ %6345, %6331 ]
  %6373 = phi float [ %6368, %6348 ], [ %6346, %6331 ]
  %6374 = fadd fast float %6370, -5.000000e-01
  %6375 = fadd fast float %6372, -5.000000e-01
  %6376 = fmul fast float %6374, 0xBFD5555560000000
  %6377 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6375, float %6376)  ; FMad(a,b,c)
  %6378 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6371, float 0.000000e+00)  ; FMad(a,b,c)
  %6379 = fadd fast float %6378, %6373
  %6380 = fmul fast float %6374, -7.500000e-01
  %6381 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6375, float %6380)  ; FMad(a,b,c)
  %6382 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6371, float 0.000000e+00)  ; FMad(a,b,c)
  %6383 = fadd fast float %6382, %6373
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 0
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 0
  %6388 = extractvalue %dx.types.CBufRet.f32 %6386, 1
  %6389 = extractvalue %dx.types.CBufRet.f32 %6386, 2
  %6390 = extractvalue %dx.types.CBufRet.f32 %6386, 3
  %6391 = fsub fast float %6387, %6377
  %6392 = fsub fast float %6388, %6379
  %6393 = fsub fast float %6389, %6381
  %6394 = fsub fast float %6390, %6383
  %6395 = fmul fast float %6391, %6385
  %6396 = fmul fast float %6392, %6385
  %6397 = fmul fast float %6393, %6385
  %6398 = fmul fast float %6394, %6385
  %6399 = fadd fast float %6395, %6377
  %6400 = fadd fast float %6396, %6379
  %6401 = fadd fast float %6397, %6381
  %6402 = fadd fast float %6398, %6383
  %6403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6404 = extractvalue %dx.types.ResRet.i32 %6403, 0
  %6405 = and i32 %6404, 536870911
  %6406 = uitofp i32 %6405 to float
  %6407 = fmul fast float %6406, %6253
  %6408 = fmul fast float %6406, %6257
  %6409 = fptoui float %6407 to i32
  %6410 = fptoui float %6408 to i32
  %6411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6412 = extractvalue %dx.types.ResRet.i32 %6411, 0
  %6413 = and i32 %6412, 31
  %6414 = lshr i32 %6409, %6413
  %6415 = lshr i32 %6410, %6413
  %6416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6417 = extractvalue %dx.types.ResRet.i32 %6416, 0
  %6418 = and i32 %6417, 31
  %6419 = shl i32 1, %6418
  %6420 = call i32 @dx.op.binary.i32(i32 40, i32 %6419, i32 4)  ; UMin(a,b)
  %6421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6422 = extractvalue %dx.types.ResRet.i32 %6421, 0
  %6423 = extractvalue %dx.types.ResRet.i32 %6421, 1
  %6424 = icmp eq i32 %6420, 0
  br i1 %6424, label %6466, label %6425

; <label>:6425                                    ; preds = %6369
  br label %6426

; <label>:6426                                    ; preds = %6454, %6425
  %6427 = phi i32 [ %6457, %6454 ], [ 0, %6425 ]
  %6428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6429 = extractvalue %dx.types.ResRet.i32 %6428, 0
  %6430 = lshr i32 %6429, 16
  %6431 = and i32 %6430, 31
  %6432 = shl i32 %6415, %6431
  %6433 = add i32 %6432, %6414
  %6434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6435 = extractvalue %dx.types.ResRet.i32 %6434, 0
  %6436 = and i32 %6435, 31
  %6437 = shl i32 %6433, %6436
  %6438 = add i32 %6437, %6427
  %6439 = shl i32 %6438, 2
  %6440 = add i32 %6439, 32
  %6441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6440, i32 undef)  ; BufferLoad(srv,index,wot)
  %6442 = extractvalue %dx.types.ResRet.i32 %6441, 0
  %6443 = icmp slt i32 %6442, 0
  %6444 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6427
  %6445 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6427
  %6446 = bitcast float* %6444 to i32*
  %6447 = bitcast float* %6445 to i32*
  br i1 %6443, label %6448, label %6454

; <label>:6448                                    ; preds = %6426
  %6449 = and i32 %6442, 1073741823
  %6450 = add nuw nsw i32 %6449, 20
  %6451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6450, i32 undef)  ; BufferLoad(srv,index,wot)
  %6452 = extractvalue %dx.types.ResRet.i32 %6451, 0
  %6453 = extractvalue %dx.types.ResRet.i32 %6451, 1
  br label %6454

; <label>:6454                                    ; preds = %6448, %6426
  %6455 = phi i32 [ %6452, %6448 ], [ %6422, %6426 ]
  %6456 = phi i32 [ %6453, %6448 ], [ %6423, %6426 ]
  store i32 %6455, i32* %6446, align 4
  store i32 %6456, i32* %6447, align 4
  %6457 = add nuw i32 %6427, 1
  %6458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6459 = extractvalue %dx.types.CBufRet.i32 %6458, 2
  %6460 = icmp eq i32 %6459, 0
  %6461 = icmp ugt i32 %6442, -1073741825
  %6462 = and i1 %6461, %6460
  %6463 = icmp ult i32 %6457, %6420
  %6464 = and i1 %6462, %6463
  br i1 %6464, label %6426, label %6465

; <label>:6465                                    ; preds = %6454
  br label %6466

; <label>:6466                                    ; preds = %6465, %6369
  %6467 = phi i32 [ 0, %6369 ], [ %6457, %6465 ]
  %6468 = extractvalue %dx.types.CBufRet.f32 %6231, 2
  %6469 = fptoui float %6468 to i32
  %6470 = icmp eq i32 %6469, 0
  br i1 %6470, label %6522, label %6471

; <label>:6471                                    ; preds = %6466
  br label %6472

; <label>:6472                                    ; preds = %6517, %6471
  %6473 = phi i32 [ %6518, %6517 ], [ %6467, %6471 ]
  %6474 = phi i32 [ %6519, %6517 ], [ 0, %6471 ]
  %6475 = lshr i32 %6474, 2
  %6476 = and i32 %6474, 3
  %6477 = add nuw nsw i32 %6475, 83
  %6478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 %6477)  ; CBufferLoadLegacy(handle,regIndex)
  %6479 = extractvalue %dx.types.CBufRet.i32 %6478, 0
  %6480 = extractvalue %dx.types.CBufRet.i32 %6478, 1
  %6481 = extractvalue %dx.types.CBufRet.i32 %6478, 2
  %6482 = extractvalue %dx.types.CBufRet.i32 %6478, 3
  %6483 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 0
  store i32 %6479, i32* %6483, align 4
  %6484 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 1
  store i32 %6480, i32* %6484, align 4
  %6485 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 2
  store i32 %6481, i32* %6485, align 4
  %6486 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 3
  store i32 %6482, i32* %6486, align 4
  %6487 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 %6476
  %6488 = load i32, i32* %6487, align 4, !tbaa !89, !noalias !93
  %6489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6490 = extractvalue %dx.types.ResRet.i32 %6489, 0
  %6491 = lshr i32 %6490, 16
  %6492 = and i32 %6491, 31
  %6493 = shl i32 %6415, %6492
  %6494 = add i32 %6493, %6414
  %6495 = shl i32 %6494, 2
  %6496 = add i32 %6495, %6488
  %6497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6496, i32 undef)  ; BufferLoad(srv,index,wot)
  %6498 = extractvalue %dx.types.ResRet.i32 %6497, 0
  %6499 = icmp eq i32 %6498, 0
  br i1 %6499, label %6517, label %6500

; <label>:6500                                    ; preds = %6472
  %6501 = icmp slt i32 %6498, 0
  %6502 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6473
  %6503 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6473
  %6504 = bitcast float* %6502 to i32*
  %6505 = bitcast float* %6503 to i32*
  br i1 %6501, label %6506, label %6513

; <label>:6506                                    ; preds = %6500
  %6507 = and i32 %6498, 1073741823
  %6508 = add i32 %6488, 20
  %6509 = add i32 %6508, %6507
  %6510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6509, i32 undef)  ; BufferLoad(srv,index,wot)
  %6511 = extractvalue %dx.types.ResRet.i32 %6510, 0
  %6512 = extractvalue %dx.types.ResRet.i32 %6510, 1
  br label %6513

; <label>:6513                                    ; preds = %6506, %6500
  %6514 = phi i32 [ %6511, %6506 ], [ %6422, %6500 ]
  %6515 = phi i32 [ %6512, %6506 ], [ %6423, %6500 ]
  store i32 %6514, i32* %6504, align 4
  store i32 %6515, i32* %6505, align 4
  %6516 = add i32 %6473, 1
  br label %6517

; <label>:6517                                    ; preds = %6513, %6472
  %6518 = phi i32 [ %6473, %6472 ], [ %6516, %6513 ]
  %6519 = add nuw i32 %6474, 1
  %6520 = icmp eq i32 %6519, %6469
  br i1 %6520, label %6521, label %6472

; <label>:6521                                    ; preds = %6517
  br label %6522

; <label>:6522                                    ; preds = %6521, %6466
  %6523 = phi i32 [ %6467, %6466 ], [ %6518, %6521 ]
  %6524 = icmp eq i32 %6523, 1
  %6525 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  %6526 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  br i1 %6524, label %6527, label %6530

; <label>:6527                                    ; preds = %6522
  %6528 = load float, float* %6525, align 4
  %6529 = load float, float* %6526, align 4
  br label %6557

; <label>:6530                                    ; preds = %6522
  %6531 = load float, float* %6525, align 4
  %6532 = load float, float* %6526, align 4
  %6533 = fdiv fast float 1.000000e+00, %6532
  %6534 = fsub fast float %6531, %6533
  %6535 = icmp ugt i32 %6523, 1
  br i1 %6535, label %6536, label %6552

; <label>:6536                                    ; preds = %6530
  br label %6537

; <label>:6537                                    ; preds = %6537, %6536
  %6538 = phi float [ %6547, %6537 ], [ %6534, %6536 ]
  %6539 = phi float [ %6548, %6537 ], [ %6531, %6536 ]
  %6540 = phi i32 [ %6549, %6537 ], [ 1, %6536 ]
  %6541 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6540
  %6542 = load float, float* %6541, align 4
  %6543 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6540
  %6544 = load float, float* %6543, align 4
  %6545 = fdiv fast float 1.000000e+00, %6544
  %6546 = fsub fast float %6542, %6545
  %6547 = call float @dx.op.binary.f32(i32 36, float %6538, float %6546)  ; FMin(a,b)
  %6548 = call float @dx.op.binary.f32(i32 35, float %6539, float %6542)  ; FMax(a,b)
  %6549 = add nuw i32 %6540, 1
  %6550 = icmp eq i32 %6549, %6523
  br i1 %6550, label %6551, label %6537

; <label>:6551                                    ; preds = %6537
  br label %6552

; <label>:6552                                    ; preds = %6551, %6530
  %6553 = phi float [ %6534, %6530 ], [ %6547, %6551 ]
  %6554 = phi float [ %6531, %6530 ], [ %6548, %6551 ]
  %6555 = fsub fast float %6554, %6553
  %6556 = fdiv fast float 1.000000e+00, %6555
  br label %6557

; <label>:6557                                    ; preds = %6552, %6527
  %6558 = phi float [ %6528, %6527 ], [ %6554, %6552 ]
  %6559 = phi float [ %6529, %6527 ], [ %6556, %6552 ]
  %6560 = fadd fast float %6261, %6558
  %6561 = fmul fast float %6560, %6559
  %6562 = call float @dx.op.unary.f32(i32 7, float %6561)  ; Saturate(value)
  %6563 = fmul fast float %6562, 2.000000e+00
  %6564 = fsub fast float 1.000000e+00, %6563
  %6565 = fmul fast float %6399, %6399
  %6566 = fsub fast float %6400, %6565
  %6567 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6566)  ; FMax(a,b)
  %6568 = fdiv fast float 1.000000e+00, %6567
  %6569 = fmul fast float %6400, %6399
  %6570 = fsub fast float %6401, %6569
  %6571 = fsub fast float %6564, %6399
  %6572 = fmul fast float %6564, %6564
  %6573 = fsub fast float %6572, %6400
  %6574 = fmul fast float %6568, %6570
  %6575 = fmul fast float %6574, %6571
  %6576 = fsub fast float %6573, %6575
  %6577 = fmul fast float %6400, %6400
  %6578 = fsub fast float %6402, %6577
  %6579 = fmul fast float %6570, %6570
  %6580 = fmul fast float %6579, %6568
  %6581 = fsub fast float %6578, %6580
  %6582 = fdiv fast float %6576, %6581
  %6583 = fmul fast float %6582, %6570
  %6584 = fsub fast float %6571, %6583
  %6585 = fmul fast float %6584, %6568
  %6586 = fmul fast float %6585, %6399
  %6587 = fsub fast float 1.000000e+00, %6586
  %6588 = fmul fast float %6582, %6400
  %6589 = fsub fast float %6587, %6588
  %6590 = fmul fast float %6585, %6585
  %6591 = fmul fast float %6582, 4.000000e+00
  %6592 = fmul fast float %6591, %6589
  %6593 = fsub fast float %6590, %6592
  %6594 = call float @dx.op.unary.f32(i32 24, float %6593)  ; Sqrt(value)
  %6595 = fcmp fast oge float %6585, 0.000000e+00
  %6596 = fsub fast float -0.000000e+00, %6594
  %6597 = select i1 %6595, float %6596, float %6594
  %6598 = fsub fast float %6597, %6585
  %6599 = fdiv fast float %6598, %6582
  %6600 = fdiv fast float %6589, %6598
  %6601 = fmul fast float %6599, 5.000000e-01
  %6602 = fmul fast float %6600, 2.000000e+00
  %6603 = select i1 %6595, float %6601, float %6602
  %6604 = select i1 %6595, float %6602, float %6601
  %6605 = call float @dx.op.binary.f32(i32 35, float %6603, float %6604)  ; FMax(a,b)
  %6606 = call float @dx.op.binary.f32(i32 36, float %6603, float %6604)  ; FMin(a,b)
  %6607 = fcmp fast ogt float %6564, %6605
  %6608 = fsub fast float %6564, %6606
  %6609 = fsub fast float %6564, %6605
  %6610 = fsub fast float %6605, %6606
  %6611 = select i1 %6607, float %6609, float %6610
  %6612 = fmul float %6608, %6611
  %6613 = select i1 %6607, float %6606, float %6564
  %6614 = fcmp fast ogt float %6564, %6606
  %6615 = fmul fast float %6613, %6605
  %6616 = fadd fast float %6613, %6605
  %6617 = fmul fast float %6616, %6399
  %6618 = fadd fast float %6615, %6400
  %6619 = fsub fast float %6618, %6617
  %6620 = fdiv fast float %6619, %6612
  %6621 = select i1 %6614, float %6620, float 0.000000e+00
  %6622 = fsub fast float 1.000000e+00, %6621
  %6623 = select i1 %6607, float %6622, float %6621
  %6624 = call float @dx.op.unary.f32(i32 7, float %6623)  ; Saturate(value)
  %6625 = extractvalue %dx.types.CBufRet.f32 %6384, 3
  %6626 = fmul fast float %6625, %6624
  %6627 = fsub fast float 1.000000e+00, %6626
  br label %6628

; <label>:6628                                    ; preds = %6557, %6269, %6234, %6230, %6194
  %6629 = phi float [ 1.000000e+00, %6194 ], [ %6627, %6557 ], [ 1.000000e+00, %6234 ], [ 1.000000e+00, %6269 ], [ 1.000000e+00, %6230 ]
  %6630 = fcmp fast ogt float %6226, 0.000000e+00
  br i1 %6630, label %6631, label %6639, !dx.controlflow.hints !102

; <label>:6631                                    ; preds = %6628
  %6632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6633 = extractvalue %dx.types.CBufRet.f32 %6632, 2
  %6634 = fadd fast float %6633, %6107
  %6635 = call float @dx.op.binary.f32(i32 35, float %6634, float 0.000000e+00)  ; FMax(a,b)
  %6636 = fadd fast float %6635, 0x3F10000000000000
  %6637 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %38, float %6125, float %6126, float undef, float undef, i32 0, i32 0, i32 undef, float %6636)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6638 = extractvalue %dx.types.ResRet.f32 %6637, 0
  br label %6639

; <label>:6639                                    ; preds = %6631, %6628
  %6640 = phi float [ %6638, %6631 ], [ 1.000000e+00, %6628 ]
  %6641 = fcmp fast ogt float %6224, 0.000000e+00
  br i1 %6641, label %6642, label %6650, !dx.controlflow.hints !103

; <label>:6642                                    ; preds = %6639
  %6643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6644 = extractvalue %dx.types.CBufRet.f32 %6643, 1
  %6645 = fadd fast float %6644, %6107
  %6646 = call float @dx.op.binary.f32(i32 35, float %6645, float 0.000000e+00)  ; FMax(a,b)
  %6647 = fadd fast float %6646, 0x3F10000000000000
  %6648 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %38, float %6117, float %6118, float undef, float undef, i32 0, i32 0, i32 undef, float %6647)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6649 = extractvalue %dx.types.ResRet.f32 %6648, 0
  br label %6650

; <label>:6650                                    ; preds = %6642, %6639
  %6651 = phi float [ %6649, %6642 ], [ 1.000000e+00, %6639 ]
  %6652 = fcmp fast ogt float %6223, 0.000000e+00
  br i1 %6652, label %6653, label %6665, !dx.controlflow.hints !104

; <label>:6653                                    ; preds = %6650
  %6654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6655 = extractvalue %dx.types.CBufRet.f32 %6654, 0
  %6656 = fadd fast float %6655, %6107
  %6657 = call float @dx.op.binary.f32(i32 35, float %6656, float 0.000000e+00)  ; FMax(a,b)
  %6658 = fadd fast float %6657, 0x3F10000000000000
  br i1 %6110, label %6659, label %6662, !dx.controlflow.hints !105

; <label>:6659                                    ; preds = %6653
  %6660 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %38, float %6099, float %6103, float undef, float undef, i32 0, i32 0, i32 undef, float %6658)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6661 = extractvalue %dx.types.ResRet.f32 %6660, 0
  br label %6665

; <label>:6662                                    ; preds = %6653
  %6663 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %38, float %6099, float %6103, float undef, float undef, i32 0, i32 0, i32 undef, float %6658)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6664 = extractvalue %dx.types.ResRet.f32 %6663, 0
  br label %6665

; <label>:6665                                    ; preds = %6662, %6659, %6650
  %6666 = phi float [ %6661, %6659 ], [ %6664, %6662 ], [ 1.000000e+00, %6650 ]
  %6667 = fsub fast float %6640, %6629
  %6668 = fmul fast float %6667, %6196
  %6669 = fadd fast float %6668, %6629
  %6670 = fsub fast float %6651, %6669
  %6671 = fmul fast float %6670, %6195
  %6672 = fadd fast float %6671, %6669
  %6673 = fsub fast float %6666, %6672
  %6674 = fmul fast float %6673, %6223
  %6675 = fadd fast float %6674, %6672
  %6676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6677 = extractvalue %dx.types.CBufRet.f32 %6676, 2
  %6678 = fcmp fast ogt float %6677, 0.000000e+00
  br i1 %6678, label %6679, label %6719, !dx.controlflow.hints !106

; <label>:6679                                    ; preds = %6665
  %6680 = fcmp fast ugt float %6677, 0.000000e+00
  br i1 %6680, label %6681, label %6716

; <label>:6681                                    ; preds = %6679
  %6682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6683 = extractvalue %dx.types.CBufRet.f32 %6682, 0
  %6684 = extractvalue %dx.types.CBufRet.f32 %6682, 1
  %6685 = extractvalue %dx.types.CBufRet.f32 %6682, 2
  %6686 = extractvalue %dx.types.CBufRet.f32 %6682, 3
  %6687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6688 = extractvalue %dx.types.CBufRet.f32 %6687, 0
  %6689 = extractvalue %dx.types.CBufRet.f32 %6687, 1
  %6690 = extractvalue %dx.types.CBufRet.f32 %6687, 2
  %6691 = extractvalue %dx.types.CBufRet.f32 %6687, 3
  %6692 = extractvalue %dx.types.CBufRet.f32 %6676, 0
  %6693 = extractvalue %dx.types.CBufRet.f32 %6676, 1
  %6694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6695 = extractvalue %dx.types.CBufRet.f32 %6694, 0
  %6696 = extractvalue %dx.types.CBufRet.f32 %6694, 1
  %6697 = extractvalue %dx.types.CBufRet.f32 %6694, 2
  %6698 = fadd fast float %6695, %6076
  %6699 = fadd fast float %6696, %6077
  %6700 = fadd fast float %6697, %6078
  %6701 = fmul fast float %6698, %6683
  %6702 = call float @dx.op.tertiary.f32(i32 46, float %6684, float %6699, float %6701)  ; FMad(a,b,c)
  %6703 = call float @dx.op.tertiary.f32(i32 46, float %6685, float %6700, float %6702)  ; FMad(a,b,c)
  %6704 = fadd fast float %6703, %6686
  %6705 = fmul fast float %6698, %6688
  %6706 = call float @dx.op.tertiary.f32(i32 46, float %6689, float %6699, float %6705)  ; FMad(a,b,c)
  %6707 = call float @dx.op.tertiary.f32(i32 46, float %6690, float %6700, float %6706)  ; FMad(a,b,c)
  %6708 = fadd fast float %6707, %6691
  %6709 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %33, float %6704, float %6708, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6710 = extractvalue %dx.types.ResRet.f32 %6709, 0
  %6711 = fmul fast float %6710, %6693
  %6712 = fadd fast float %6711, %6692
  %6713 = call float @dx.op.unary.f32(i32 7, float %6712)  ; Saturate(value)
  %6714 = fmul fast float %6713, %6677
  %6715 = fsub fast float 1.000000e+00, %6714
  br label %6716

; <label>:6716                                    ; preds = %6681, %6679
  %6717 = phi float [ %6715, %6681 ], [ 1.000000e+00, %6679 ]
  %6718 = fmul fast float %6717, %6675
  br label %6719

; <label>:6719                                    ; preds = %6716, %6665, %6056
  %6720 = phi float [ 1.000000e+00, %6056 ], [ %6718, %6716 ], [ %6675, %6665 ]
  %6721 = call float @dx.op.binary.f32(i32 36, float %6720, float %6720)  ; FMin(a,b)
  %6722 = call float @dx.op.binary.f32(i32 36, float %6720, float %6721)  ; FMin(a,b)
  %6723 = fcmp fast ogt float %6722, 0.000000e+00
  br i1 %6723, label %6724, label %6885, !dx.controlflow.hints !107

; <label>:6724                                    ; preds = %6719
  %6725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6726 = extractvalue %dx.types.CBufRet.f32 %6725, 0
  %6727 = extractvalue %dx.types.CBufRet.f32 %6725, 1
  %6728 = extractvalue %dx.types.CBufRet.f32 %6725, 2
  %6729 = extractvalue %dx.types.CBufRet.f32 %6725, 3
  %6730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6731 = extractvalue %dx.types.CBufRet.f32 %6730, 0
  %6732 = extractvalue %dx.types.CBufRet.f32 %6730, 1
  %6733 = extractvalue %dx.types.CBufRet.f32 %6730, 2
  %6734 = extractvalue %dx.types.CBufRet.f32 %6730, 3
  %6735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6736 = extractvalue %dx.types.CBufRet.f32 %6735, 0
  %6737 = extractvalue %dx.types.CBufRet.f32 %6735, 1
  %6738 = extractvalue %dx.types.CBufRet.f32 %6735, 2
  %6739 = extractvalue %dx.types.CBufRet.f32 %6735, 3
  %6740 = fmul fast float %6726, %6076
  %6741 = call float @dx.op.tertiary.f32(i32 46, float %6077, float %6727, float %6740)  ; FMad(a,b,c)
  %6742 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6728, float %6741)  ; FMad(a,b,c)
  %6743 = fadd fast float %6742, %6729
  %6744 = fmul fast float %6731, %6076
  %6745 = call float @dx.op.tertiary.f32(i32 46, float %6077, float %6732, float %6744)  ; FMad(a,b,c)
  %6746 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6733, float %6745)  ; FMad(a,b,c)
  %6747 = fadd fast float %6746, %6734
  %6748 = fmul fast float %6736, %6076
  %6749 = call float @dx.op.tertiary.f32(i32 46, float %6077, float %6737, float %6748)  ; FMad(a,b,c)
  %6750 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6738, float %6749)  ; FMad(a,b,c)
  %6751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6752 = extractvalue %dx.types.CBufRet.f32 %6751, 0
  %6753 = extractvalue %dx.types.CBufRet.f32 %6751, 1
  %6754 = extractvalue %dx.types.CBufRet.f32 %6751, 3
  %6755 = fmul fast float %6754, %6743
  %6756 = fmul fast float %6754, %6747
  %6757 = fadd fast float %6755, %6752
  %6758 = fadd fast float %6756, %6753
  %6759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6760 = extractvalue %dx.types.CBufRet.f32 %6759, 0
  %6761 = extractvalue %dx.types.CBufRet.f32 %6759, 1
  %6762 = fsub fast float %6757, %6760
  %6763 = fsub fast float %6758, %6761
  %6764 = fcmp fast olt float %6762, 0.000000e+00
  %6765 = fcmp fast olt float %6763, 0.000000e+00
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 0
  %6768 = extractvalue %dx.types.CBufRet.f32 %6766, 1
  %6769 = extractvalue %dx.types.CBufRet.f32 %6766, 2
  %6770 = extractvalue %dx.types.CBufRet.f32 %6766, 3
  %6771 = select i1 %6764, float %6767, float %6769
  %6772 = select i1 %6765, float %6768, float %6770
  %6773 = fmul fast float %6771, %6762
  %6774 = fmul fast float %6772, %6763
  %6775 = call float @dx.op.unary.f32(i32 6, float %6773)  ; FAbs(value)
  %6776 = call float @dx.op.unary.f32(i32 6, float %6774)  ; FAbs(value)
  %6777 = extractvalue %dx.types.CBufRet.f32 %6071, 0
  %6778 = call float @dx.op.binary.f32(i32 35, float %6775, float %6776)  ; FMax(a,b)
  %6779 = fsub fast float %6777, %6778
  %6780 = call float @dx.op.unary.f32(i32 7, float %6779)  ; Saturate(value)
  %6781 = fcmp fast ogt float %6780, 0.000000e+00
  br i1 %6781, label %6782, label %6823, !dx.controlflow.hints !108

; <label>:6782                                    ; preds = %6724
  %6783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %36, float %6757, float %6758, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6784 = extractvalue %dx.types.ResRet.f32 %6783, 1
  %6785 = fcmp fast ogt float %6784, 0.000000e+00
  br i1 %6785, label %6786, label %6818

; <label>:6786                                    ; preds = %6782
  %6787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %36, float %6757, float %6758, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6788 = extractvalue %dx.types.ResRet.f32 %6787, 0
  %6789 = extractvalue %dx.types.ResRet.f32 %6787, 1
  %6790 = extractvalue %dx.types.ResRet.f32 %6787, 2
  %6791 = extractvalue %dx.types.ResRet.f32 %6787, 3
  %6792 = fsub fast float 1.000000e+00, %6739
  %6793 = fsub fast float %6792, %6750
  %6794 = fmul fast float %6793, 0x400921FB60000000
  %6795 = fadd fast float %6794, 0x3FF921FB60000000
  %6796 = call float @dx.op.unary.f32(i32 13, float %6795)  ; Sin(value)
  %6797 = fadd fast float %6796, -1.000000e+00
  %6798 = fmul fast float %6797, 0x3FD45F3060000000
  %6799 = fmul fast float %6793, 0x401921FB60000000
  %6800 = fadd fast float %6799, 0x400921FB60000000
  %6801 = call float @dx.op.unary.f32(i32 13, float %6800)  ; Sin(value)
  %6802 = fadd fast float %6801, 0x3E7777A5C0000000
  %6803 = fmul fast float %6802, 0x3FC45F3060000000
  %6804 = fmul fast float %6793, 0x4022D97C80000000
  %6805 = fadd fast float %6804, 0x4012D97C80000000
  %6806 = call float @dx.op.unary.f32(i32 13, float %6805)  ; Sin(value)
  %6807 = fadd fast float %6806, 1.000000e+00
  %6808 = fmul fast float %6807, 0x3FBB2995E0000000
  %6809 = fmul fast float %6793, 0x402921FB60000000
  %6810 = fadd fast float %6809, 0x401921FB60000000
  %6811 = call float @dx.op.unary.f32(i32 13, float %6810)  ; Sin(value)
  %6812 = fadd fast float %6811, 0xBE8777A5C0000000
  %6813 = fmul fast float %6812, 0x3FB45F3060000000
  %6814 = call float @dx.op.dot4.f32(i32 56, float %6788, float %6789, float %6790, float %6791, float %6798, float %6803, float %6808, float %6813)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6815 = fmul fast float %6814, 0xBFF7154760000000
  %6816 = call float @dx.op.unary.f32(i32 21, float %6815)  ; Exp(value)
  %6817 = call float @dx.op.unary.f32(i32 7, float %6816)  ; Saturate(value)
  br label %6818

; <label>:6818                                    ; preds = %6786, %6782
  %6819 = phi float [ %6817, %6786 ], [ 1.000000e+00, %6782 ]
  %6820 = fadd fast float %6819, -1.000000e+00
  %6821 = fmul fast float %6820, %6780
  %6822 = fadd fast float %6821, 1.000000e+00
  br label %6823

; <label>:6823                                    ; preds = %6818, %6724
  %6824 = phi float [ %6822, %6818 ], [ 1.000000e+00, %6724 ]
  %6825 = fmul fast float %6824, %6720
  %6826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.f32 %6826, 0
  %6828 = extractvalue %dx.types.CBufRet.f32 %6826, 1
  %6829 = extractvalue %dx.types.CBufRet.f32 %6826, 2
  %6830 = fadd fast float %6827, %176
  %6831 = fadd fast float %6828, %177
  %6832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6833 = extractvalue %dx.types.CBufRet.f32 %6832, 1
  %6834 = fsub fast float -0.000000e+00, %6830
  %6835 = fsub fast float -0.000000e+00, %6831
  %6836 = fsub fast float -0.000000e+00, %178
  %6837 = fsub fast float %6836, %6829
  %6838 = fadd fast float %6837, %6833
  %6839 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6834, float %6835, float %6838)  ; Dot3(ax,ay,az,bx,by,bz)
  %6840 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6057, float %6058, float %6059)  ; Dot3(ax,ay,az,bx,by,bz)
  %6841 = fdiv fast float 1.000000e+00, %6840
  %6842 = fmul fast float %6841, %6839
  %6843 = fmul fast float %6057, %6842
  %6844 = fmul fast float %6058, %6842
  %6845 = fadd fast float %6843, %6830
  %6846 = fadd fast float %6844, %6831
  %6847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6848 = extractvalue %dx.types.CBufRet.f32 %6847, 0
  %6849 = extractvalue %dx.types.CBufRet.f32 %6847, 1
  %6850 = fsub fast float %6845, %6848
  %6851 = fsub fast float %6846, %6849
  %6852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6853 = extractvalue %dx.types.CBufRet.f32 %6852, 2
  %6854 = extractvalue %dx.types.CBufRet.f32 %6852, 3
  %6855 = fmul fast float %6850, %6853
  %6856 = fmul fast float %6851, %6854
  %6857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6858 = extractvalue %dx.types.CBufRet.i32 %6857, 3
  %6859 = icmp eq i32 %6858, 0
  br i1 %6859, label %6865, label %6860

; <label>:6860                                    ; preds = %6823
  %6861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %6855, float %6856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6862 = extractvalue %dx.types.ResRet.f32 %6861, 0
  %6863 = extractvalue %dx.types.ResRet.f32 %6861, 1
  %6864 = extractvalue %dx.types.ResRet.f32 %6861, 2
  br label %6870

; <label>:6865                                    ; preds = %6823
  %6866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %36, float %6855, float %6856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6867 = extractvalue %dx.types.ResRet.f32 %6866, 0
  %6868 = extractvalue %dx.types.ResRet.f32 %6866, 1
  %6869 = extractvalue %dx.types.ResRet.f32 %6866, 2
  br label %6870

; <label>:6870                                    ; preds = %6865, %6860
  %6871 = phi float [ %6862, %6860 ], [ %6867, %6865 ]
  %6872 = phi float [ %6863, %6860 ], [ %6868, %6865 ]
  %6873 = phi float [ %6864, %6860 ], [ %6869, %6865 ]
  %6874 = extractvalue %dx.types.CBufRet.f32 %6832, 2
  %6875 = fmul fast float %6874, %6871
  %6876 = extractvalue %dx.types.CBufRet.f32 %6832, 0
  %6877 = fsub fast float %6842, %6876
  %6878 = fsub fast float %6877, %6875
  %6879 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6878)  ; FMax(a,b)
  %6880 = fmul fast float %6879, %6872
  %6881 = call float @dx.op.binary.f32(i32 36, float %6873, float %6880)  ; FMin(a,b)
  %6882 = fmul fast float %6881, 0xBFF7154760000000
  %6883 = call float @dx.op.unary.f32(i32 21, float %6882)  ; Exp(value)
  %6884 = fmul fast float %6825, %6883
  br label %6885

; <label>:6885                                    ; preds = %6870, %6719
  %6886 = phi float [ %6884, %6870 ], [ %6720, %6719 ]
  %6887 = call float @dx.op.binary.f32(i32 36, float %6886, float %6886)  ; FMin(a,b)
  %6888 = call float @dx.op.binary.f32(i32 36, float %6886, float %6887)  ; FMin(a,b)
  %6889 = fcmp fast ogt float %6888, 0.000000e+00
  br i1 %6889, label %6890, label %7200, !dx.controlflow.hints !109

; <label>:6890                                    ; preds = %6885
  %6891 = fmul fast float %6886, %6068
  %6892 = fmul fast float %6886, %6069
  %6893 = fmul fast float %6886, %6070
  %6894 = fsub fast float %6057, %196
  %6895 = fsub fast float %6058, %197
  %6896 = fsub fast float %6059, %198
  %6897 = call float @dx.op.dot3.f32(i32 55, float %6894, float %6895, float %6896, float %6894, float %6895, float %6896)  ; Dot3(ax,ay,az,bx,by,bz)
  %6898 = call float @dx.op.unary.f32(i32 25, float %6897)  ; Rsqrt(value)
  %6899 = fmul fast float %6898, %6894
  %6900 = fmul fast float %6898, %6895
  %6901 = fmul fast float %6898, %6896
  %6902 = call float @dx.op.dot3.f32(i32 55, float %6057, float %6058, float %6059, float %5622, float %5623, float %5624)  ; Dot3(ax,ay,az,bx,by,bz)
  %6903 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float %6899, float %6900, float %6901)  ; Dot3(ax,ay,az,bx,by,bz)
  %6904 = call float @dx.op.unary.f32(i32 7, float %6902)  ; Saturate(value)
  %6905 = fmul fast float %6904, %6904
  %6906 = fmul fast float %6905, %5642
  %6907 = call float @dx.op.unary.f32(i32 7, float %6906)  ; Saturate(value)
  %6908 = fmul fast float %6907, %6904
  %6909 = call float @dx.op.dot3.f32(i32 55, float %5622, float %5623, float %5624, float %6899, float %6900, float %6901)  ; Dot3(ax,ay,az,bx,by,bz)
  %6910 = fmul fast float %6909, %6909
  %6911 = call float @dx.op.unary.f32(i32 6, float %6902)  ; FAbs(value)
  %6912 = call float @dx.op.binary.f32(i32 35, float %6025, float 0x3F847AE140000000)  ; FMax(a,b)
  %6913 = fmul fast float %6912, %6912
  %6914 = fmul fast float %6913, %6913
  %6915 = fsub fast float 1.000000e+00, %6914
  %6916 = fmul fast float %5629, %5629
  %6917 = fmul fast float %6916, %6915
  %6918 = fadd fast float %6917, %6914
  %6919 = bitcast float %6918 to i32
  %6920 = ashr i32 %6919, 1
  %6921 = add nsw i32 %6920, 532487669
  %6922 = bitcast i32 %6921 to float
  %6923 = fadd fast float %6922, %5629
  %6924 = fmul fast float %6914, %6910
  %6925 = fsub fast float 1.000000e+00, %6910
  %6926 = fadd fast float %6925, %6924
  %6927 = fmul fast float %6911, %6911
  %6928 = fmul fast float %6927, %6915
  %6929 = fadd fast float %6928, %6914
  %6930 = bitcast float %6929 to i32
  %6931 = ashr i32 %6930, 1
  %6932 = add nsw i32 %6931, 532487669
  %6933 = bitcast i32 %6932 to float
  %6934 = fadd fast float %6933, %6911
  %6935 = fmul fast float %6926, %6926
  %6936 = fmul fast float %6935, %6923
  %6937 = fmul fast float %6936, %6934
  %6938 = fdiv fast float 0x3FF0A00000000000, %6937
  %6939 = fmul fast float %6938, %6914
  %6940 = fmul fast float %5887, 0x3FF9999980000000
  %6941 = fsub fast float 5.000000e+00, %6940
  %6942 = call float @dx.op.unary.f32(i32 6, float %6903)  ; FAbs(value)
  %6943 = fsub fast float 1.000000e+00, %6942
  %6944 = fmul fast float %5887, 0x41D9660740000000
  %6945 = fadd fast float %6944, 0xC1EFBF8940000000
  %6946 = bitcast float %6943 to i32
  %6947 = sitofp i32 %6946 to float
  %6948 = fmul fast float %6947, %6941
  %6949 = fadd fast float %6945, %6948
  %6950 = fptosi float %6949 to i32
  %6951 = bitcast i32 %6950 to float
  %6952 = fsub fast float 1.000000e+00, %5619
  %6953 = fsub fast float 1.000000e+00, %5620
  %6954 = fsub fast float 1.000000e+00, %5627
  %6955 = fmul fast float %6951, %6952
  %6956 = fmul fast float %6951, %6953
  %6957 = fmul fast float %6951, %6954
  %6958 = fadd fast float %6955, %5619
  %6959 = fadd fast float %6956, %5620
  %6960 = fadd fast float %6957, %5627
  br i1 %5910, label %6961, label %6984

; <label>:6961                                    ; preds = %6890
  %6962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4661, float %6942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6963 = extractvalue %dx.types.ResRet.f32 %6962, 0
  %6964 = extractvalue %dx.types.ResRet.f32 %6962, 1
  %6965 = extractvalue %dx.types.ResRet.f32 %6962, 2
  %6966 = fadd fast float %6963, -5.000000e-01
  %6967 = fadd fast float %6964, -5.000000e-01
  %6968 = fadd fast float %6965, -5.000000e-01
  %6969 = fmul fast float %5619, 4.000000e+00
  %6970 = fmul fast float %6969, %6952
  %6971 = fmul fast float %6970, %6966
  %6972 = fmul fast float %5620, 4.000000e+00
  %6973 = fmul fast float %6972, %6953
  %6974 = fmul fast float %6973, %6967
  %6975 = fmul fast float %5627, 4.000000e+00
  %6976 = fmul fast float %6975, %6954
  %6977 = fmul fast float %6976, %6968
  %6978 = fadd fast float %6971, %6958
  %6979 = fadd fast float %6974, %6959
  %6980 = fadd fast float %6977, %6960
  %6981 = call float @dx.op.unary.f32(i32 7, float %6978)  ; Saturate(value)
  %6982 = call float @dx.op.unary.f32(i32 7, float %6979)  ; Saturate(value)
  %6983 = call float @dx.op.unary.f32(i32 7, float %6980)  ; Saturate(value)
  br label %6984

; <label>:6984                                    ; preds = %6961, %6890
  %6985 = phi float [ %6981, %6961 ], [ %6958, %6890 ]
  %6986 = phi float [ %6982, %6961 ], [ %6959, %6890 ]
  %6987 = phi float [ %6983, %6961 ], [ %6960, %6890 ]
  %6988 = fmul fast float %6902, 9.843750e-01
  %6989 = fadd fast float %6988, 7.812500e-03
  %6990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %6989, float %5891, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6991 = extractvalue %dx.types.ResRet.f32 %6990, 0
  %6992 = extractvalue %dx.types.ResRet.f32 %6990, 1
  %6993 = extractvalue %dx.types.ResRet.f32 %6990, 2
  %6994 = extractvalue %dx.types.ResRet.f32 %6990, 3
  %6995 = fsub fast float %6993, %6991
  %6996 = fsub fast float %6994, %6992
  %6997 = fmul fast float %6995, %5897
  %6998 = fmul fast float %6996, %5897
  %6999 = fadd fast float %6997, %6991
  %7000 = fadd fast float %6998, %6992
  %7001 = fmul fast float %6999, %5619
  %7002 = fmul fast float %6999, %5620
  %7003 = fmul fast float %6999, %5627
  %7004 = fadd fast float %7001, %7000
  %7005 = fadd fast float %7002, %7000
  %7006 = fadd fast float %7003, %7000
  br i1 %5910, label %7007, label %7030

; <label>:7007                                    ; preds = %6984
  %7008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4661, float %6902, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7009 = extractvalue %dx.types.ResRet.f32 %7008, 0
  %7010 = extractvalue %dx.types.ResRet.f32 %7008, 1
  %7011 = extractvalue %dx.types.ResRet.f32 %7008, 2
  %7012 = fadd fast float %7009, -5.000000e-01
  %7013 = fadd fast float %7010, -5.000000e-01
  %7014 = fadd fast float %7011, -5.000000e-01
  %7015 = fmul fast float %5619, 4.000000e+00
  %7016 = fmul fast float %7015, %6952
  %7017 = fmul fast float %7016, %7012
  %7018 = fmul fast float %5620, 4.000000e+00
  %7019 = fmul fast float %7018, %6953
  %7020 = fmul fast float %7019, %7013
  %7021 = fmul fast float %5627, 4.000000e+00
  %7022 = fmul fast float %7021, %6954
  %7023 = fmul fast float %7022, %7014
  %7024 = fadd fast float %7017, %7004
  %7025 = fadd fast float %7020, %7005
  %7026 = fadd fast float %7023, %7006
  %7027 = call float @dx.op.unary.f32(i32 7, float %7024)  ; Saturate(value)
  %7028 = call float @dx.op.unary.f32(i32 7, float %7025)  ; Saturate(value)
  %7029 = call float @dx.op.unary.f32(i32 7, float %7026)  ; Saturate(value)
  br label %7030

; <label>:7030                                    ; preds = %7007, %6984
  %7031 = phi float [ %7027, %7007 ], [ %7004, %6984 ]
  %7032 = phi float [ %7028, %7007 ], [ %7005, %6984 ]
  %7033 = phi float [ %7029, %7007 ], [ %7006, %6984 ]
  %7034 = call float @dx.op.binary.f32(i32 35, float %7032, float %7033)  ; FMax(a,b)
  %7035 = call float @dx.op.binary.f32(i32 35, float %7031, float %7034)  ; FMax(a,b)
  %7036 = fsub fast float 1.000000e+00, %7035
  %7037 = call float @dx.op.binary.f32(i32 35, float %6911, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7038 = fdiv fast float %4010, %7037
  %7039 = fmul fast float %5965, %7038
  %7040 = fmul fast float %5967, %7038
  %7041 = fmul fast float %5969, %7038
  %7042 = call float @dx.op.unary.f32(i32 21, float %7039)  ; Exp(value)
  %7043 = call float @dx.op.unary.f32(i32 21, float %7040)  ; Exp(value)
  %7044 = call float @dx.op.unary.f32(i32 21, float %7041)  ; Exp(value)
  %7045 = call float @dx.op.unary.f32(i32 7, float %7042)  ; Saturate(value)
  %7046 = call float @dx.op.unary.f32(i32 7, float %7043)  ; Saturate(value)
  %7047 = call float @dx.op.unary.f32(i32 7, float %7044)  ; Saturate(value)
  %7048 = select i1 %5962, float %7045, float 0.000000e+00
  %7049 = select i1 %5963, float %7046, float 0.000000e+00
  %7050 = select i1 %5964, float %7047, float 0.000000e+00
  %7051 = fsub fast float -0.000000e+00, %5622
  %7052 = fsub fast float -0.000000e+00, %5623
  %7053 = fsub fast float -0.000000e+00, %5624
  %7054 = call float @dx.op.dot3.f32(i32 55, float %6057, float %6058, float %6059, float %7051, float %7052, float %7053)  ; Dot3(ax,ay,az,bx,by,bz)
  %7055 = call float @dx.op.unary.f32(i32 7, float %7054)  ; Saturate(value)
  %7056 = fmul fast float %7055, 9.843750e-01
  %7057 = fadd fast float %7056, 7.812500e-03
  %7058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %7057, float %5891, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7059 = extractvalue %dx.types.ResRet.f32 %7058, 0
  %7060 = extractvalue %dx.types.ResRet.f32 %7058, 1
  %7061 = extractvalue %dx.types.ResRet.f32 %7058, 2
  %7062 = extractvalue %dx.types.ResRet.f32 %7058, 3
  %7063 = fsub fast float %7061, %7059
  %7064 = fsub fast float %7062, %7060
  %7065 = fmul fast float %7063, %5897
  %7066 = fmul fast float %7064, %5897
  %7067 = fadd fast float %7065, %7059
  %7068 = fadd fast float %7066, %7060
  %7069 = fmul fast float %7067, %5619
  %7070 = fmul fast float %7067, %5620
  %7071 = fmul fast float %7067, %5627
  %7072 = fadd fast float %7069, %7068
  %7073 = fadd fast float %7070, %7068
  %7074 = fadd fast float %7071, %7068
  br i1 %5910, label %7075, label %7098

; <label>:7075                                    ; preds = %7030
  %7076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4661, float %7055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7077 = extractvalue %dx.types.ResRet.f32 %7076, 0
  %7078 = extractvalue %dx.types.ResRet.f32 %7076, 1
  %7079 = extractvalue %dx.types.ResRet.f32 %7076, 2
  %7080 = fadd fast float %7077, -5.000000e-01
  %7081 = fadd fast float %7078, -5.000000e-01
  %7082 = fadd fast float %7079, -5.000000e-01
  %7083 = fmul fast float %5619, 4.000000e+00
  %7084 = fmul fast float %7083, %6952
  %7085 = fmul fast float %7084, %7080
  %7086 = fmul fast float %5620, 4.000000e+00
  %7087 = fmul fast float %7086, %6953
  %7088 = fmul fast float %7087, %7081
  %7089 = fmul fast float %5627, 4.000000e+00
  %7090 = fmul fast float %7089, %6954
  %7091 = fmul fast float %7090, %7082
  %7092 = fadd fast float %7085, %7072
  %7093 = fadd fast float %7088, %7073
  %7094 = fadd fast float %7091, %7074
  %7095 = call float @dx.op.unary.f32(i32 7, float %7092)  ; Saturate(value)
  %7096 = call float @dx.op.unary.f32(i32 7, float %7093)  ; Saturate(value)
  %7097 = call float @dx.op.unary.f32(i32 7, float %7094)  ; Saturate(value)
  br label %7098

; <label>:7098                                    ; preds = %7075, %7030
  %7099 = phi float [ %7095, %7075 ], [ %7072, %7030 ]
  %7100 = phi float [ %7096, %7075 ], [ %7073, %7030 ]
  %7101 = phi float [ %7097, %7075 ], [ %7074, %7030 ]
  %7102 = call float @dx.op.binary.f32(i32 35, float %7100, float %7101)  ; FMax(a,b)
  %7103 = call float @dx.op.binary.f32(i32 35, float %7099, float %7102)  ; FMax(a,b)
  %7104 = fsub fast float 1.000000e+00, %7103
  %7105 = fmul fast float %6025, %6030
  %7106 = fadd fast float %6032, %7105
  %7107 = call float @dx.op.unary.f32(i32 7, float %7106)  ; Saturate(value)
  %7108 = fsub fast float %6057, %5635
  %7109 = fsub fast float %6058, %5636
  %7110 = fsub fast float %6059, %5637
  %7111 = call float @dx.op.dot3.f32(i32 55, float %7108, float %7109, float %7110, float %7108, float %7109, float %7110)  ; Dot3(ax,ay,az,bx,by,bz)
  %7112 = call float @dx.op.unary.f32(i32 25, float %7111)  ; Rsqrt(value)
  %7113 = fmul fast float %7112, %7108
  %7114 = fmul fast float %7112, %7109
  %7115 = fmul fast float %7112, %7110
  %7116 = call float @dx.op.dot3.f32(i32 55, float %7051, float %7052, float %7053, float %7113, float %7114, float %7115)  ; Dot3(ax,ay,az,bx,by,bz)
  %7117 = fmul fast float %7116, %7116
  %7118 = call float @dx.op.unary.f32(i32 6, float %7055)  ; FAbs(value)
  %7119 = call float @dx.op.binary.f32(i32 35, float %7107, float 0x3F847AE140000000)  ; FMax(a,b)
  %7120 = fmul fast float %7119, %7119
  %7121 = fmul fast float %7120, %7120
  %7122 = fsub fast float 1.000000e+00, %7121
  %7123 = fmul fast float %6916, %7122
  %7124 = fadd fast float %7123, %7121
  %7125 = bitcast float %7124 to i32
  %7126 = ashr i32 %7125, 1
  %7127 = add nsw i32 %7126, 532487669
  %7128 = bitcast i32 %7127 to float
  %7129 = fadd fast float %7128, %5629
  %7130 = fmul fast float %7121, %7117
  %7131 = fsub fast float 1.000000e+00, %7117
  %7132 = fadd fast float %7131, %7130
  %7133 = fmul fast float %7118, %7118
  %7134 = fmul fast float %7133, %7122
  %7135 = fadd fast float %7134, %7121
  %7136 = bitcast float %7135 to i32
  %7137 = ashr i32 %7136, 1
  %7138 = add nsw i32 %7137, 532487669
  %7139 = bitcast i32 %7138 to float
  %7140 = fadd fast float %7139, %7118
  %7141 = fmul fast float %7132, %7132
  %7142 = fmul fast float %7141, %7129
  %7143 = fmul fast float %7142, %7140
  %7144 = fdiv fast float 0x3FF0A00000000000, %7143
  %7145 = fmul fast float %7144, %7121
  %7146 = fmul fast float %7055, %7048
  %7147 = fmul fast float %7055, %7049
  %7148 = fmul fast float %7055, %7050
  %7149 = fmul fast float %7146, %7104
  %7150 = fmul fast float %7149, %7145
  %7151 = fmul fast float %7147, %7104
  %7152 = fmul fast float %7151, %7145
  %7153 = fmul fast float %7148, %7104
  %7154 = fmul fast float %7153, %7145
  %7155 = fmul fast float %6985, %6939
  %7156 = fmul fast float %6986, %6939
  %7157 = fmul fast float %6987, %6939
  %7158 = fsub fast float 1.000000e+00, %6903
  %7159 = bitcast float %7158 to i32
  %7160 = sitofp i32 %7159 to float
  %7161 = fmul fast float %7160, 5.000000e+00
  %7162 = fadd fast float %7161, 0xC1EFBF8940000000
  %7163 = fptosi float %7162 to i32
  %7164 = bitcast i32 %7163 to float
  %7165 = fmul fast float %7164, %4662
  %7166 = fmul fast float %7036, %7165
  %7167 = fmul fast float %7166, %5957
  %7168 = fmul fast float %7166, %5958
  %7169 = fmul fast float %7166, %5959
  %7170 = fadd fast float %7167, %7155
  %7171 = fadd fast float %7168, %7156
  %7172 = fadd fast float %7169, %7157
  %7173 = fmul fast float %7170, %6908
  %7174 = fmul fast float %7171, %6908
  %7175 = fmul fast float %7172, %6908
  %7176 = fmul fast float %6908, %6891
  %7177 = fmul fast float %7176, %7036
  %7178 = fmul fast float %6908, %6892
  %7179 = fmul fast float %7178, %7036
  %7180 = fmul fast float %6908, %6893
  %7181 = fmul fast float %7180, %7036
  %7182 = fadd fast float %7173, %7150
  %7183 = fadd fast float %7174, %7152
  %7184 = fadd fast float %7175, %7154
  %7185 = fmul fast float %7182, %6891
  %7186 = fmul fast float %7183, %6892
  %7187 = fmul fast float %7184, %6893
  %7188 = fadd fast float %7177, %6047
  %7189 = fmul fast float %7188, %4687
  %7190 = fadd fast float %7179, %6049
  %7191 = fmul fast float %7190, %4687
  %7192 = fadd fast float %7181, %6051
  %7193 = fmul fast float %7192, %4687
  %7194 = fadd fast float %7185, %6010
  %7195 = fmul fast float %7194, %4687
  %7196 = fadd fast float %7186, %6013
  %7197 = fmul fast float %7196, %4687
  %7198 = fadd fast float %7187, %6016
  %7199 = fmul fast float %7198, %4687
  br label %7200

; <label>:7200                                    ; preds = %7098, %6885, %5937
  %7201 = phi float [ %6011, %5937 ], [ %6011, %6885 ], [ %7195, %7098 ]
  %7202 = phi float [ %6014, %5937 ], [ %6014, %6885 ], [ %7197, %7098 ]
  %7203 = phi float [ %6017, %5937 ], [ %6017, %6885 ], [ %7199, %7098 ]
  %7204 = phi float [ %6048, %5937 ], [ %6048, %6885 ], [ %7189, %7098 ]
  %7205 = phi float [ %6050, %5937 ], [ %6050, %6885 ], [ %7191, %7098 ]
  %7206 = phi float [ %6052, %5937 ], [ %6052, %6885 ], [ %7193, %7098 ]
  %7207 = fmul fast float %4687, %5986
  %7208 = fsub fast float -0.000000e+00, %7207
  %7209 = fmul fast float %4687, %5987
  %7210 = fsub fast float -0.000000e+00, %7209
  %7211 = fmul fast float %4687, %5988
  %7212 = fsub fast float -0.000000e+00, %7211
  %7213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7214 = extractvalue %dx.types.CBufRet.f32 %7213, 0
  %7215 = fmul fast float %7214, %5992
  %7216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7217 = extractvalue %dx.types.CBufRet.f32 %7216, 3
  %7218 = fsub fast float 1.000000e+00, %4665
  %7219 = call float @dx.op.unary.f32(i32 7, float %7218)  ; Saturate(value)
  %7220 = fadd fast float %7206, %4664
  %7221 = fmul fast float %7220, %4665
  %7222 = fmul fast float %7219, %7217
  %7223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4666, i32 undef)  ; BufferLoad(srv,index,wot)
  %7224 = extractvalue %dx.types.ResRet.i32 %7223, 3
  %7225 = bitcast i32 %7224 to float
  %7226 = fsub fast float %7208, %7225
  %7227 = fsub fast float %7210, %7225
  %7228 = fsub fast float %7212, %7225
  %7229 = fmul fast float %7226, %210
  %7230 = fmul fast float %7227, %210
  %7231 = fmul fast float %7228, %210
  %7232 = fadd fast float %7229, %7225
  %7233 = fadd fast float %7230, %7225
  %7234 = fadd fast float %7231, %7225
  %7235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7236 = extractvalue %dx.types.CBufRet.f32 %7235, 3
  %7237 = fmul fast float %7204, %5616
  %7238 = fmul fast float %7205, %5617
  %7239 = fmul fast float %7206, %5618
  %7240 = fcmp fast ogt float %88, %230
  %7241 = and i1 %7240, %4755
  %7242 = or i1 %4834, %7241
  %7243 = icmp eq i32 %4754, 2
  %7244 = fcmp fast ole float %88, %230
  %7245 = and i1 %7244, %7243
  %7246 = or i1 %7245, %7242
  br i1 %7241, label %7247, label %7504

; <label>:7247                                    ; preds = %7200
  %7248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7249 = extractvalue %dx.types.CBufRet.f32 %7248, 2
  %7250 = extractvalue %dx.types.CBufRet.f32 %7248, 3
  %7251 = fmul fast float %7249, %97
  %7252 = fmul fast float %7250, %98
  %7253 = call float @dx.op.unary.f32(i32 7, float %7251)  ; Saturate(value)
  %7254 = call float @dx.op.unary.f32(i32 7, float %7252)  ; Saturate(value)
  %7255 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %7253, float %7254, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7256 = extractvalue %dx.types.ResRet.f32 %7255, 0
  %7257 = extractvalue %dx.types.ResRet.f32 %7255, 1
  %7258 = extractvalue %dx.types.ResRet.f32 %7255, 2
  %7259 = extractvalue %dx.types.ResRet.f32 %7255, 3
  %7260 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %7253, float %7254, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7261 = extractvalue %dx.types.ResRet.f32 %7260, 0
  %7262 = extractvalue %dx.types.ResRet.f32 %7260, 1
  %7263 = extractvalue %dx.types.ResRet.f32 %7260, 2
  %7264 = extractvalue %dx.types.ResRet.f32 %7260, 3
  %7265 = call float @dx.op.binary.f32(i32 35, float %7257, float %7258)  ; FMax(a,b)
  %7266 = call float @dx.op.binary.f32(i32 35, float %7256, float %7265)  ; FMax(a,b)
  %7267 = call float @dx.op.binary.f32(i32 35, float %7266, float %7259)  ; FMax(a,b)
  %7268 = call float @dx.op.binary.f32(i32 36, float %7262, float %7263)  ; FMin(a,b)
  %7269 = call float @dx.op.binary.f32(i32 36, float %7261, float %7268)  ; FMin(a,b)
  %7270 = call float @dx.op.binary.f32(i32 36, float %7269, float %7264)  ; FMin(a,b)
  %7271 = fmul fast float %7267, 2.550000e+02
  %7272 = fadd fast float %7271, 0x3F70101020000000
  %7273 = fptoui float %7272 to i32
  %7274 = fmul fast float %7270, 2.550000e+02
  %7275 = fadd fast float %7274, 0x3F70101020000000
  %7276 = fptoui float %7275 to i32
  %7277 = icmp ult i32 %7273, %7276
  br i1 %7277, label %7278, label %7446

; <label>:7278                                    ; preds = %7247
  %7279 = fcmp fast ogt float %87, 9.843750e-01
  %7280 = fadd fast float %88, -4.000000e+00
  %7281 = select i1 %7279, float -4.000000e+00, float %7280
  %7282 = call float @dx.op.binary.f32(i32 35, float %7281, float 0.000000e+00)  ; FMax(a,b)
  %7283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7284 = extractvalue %dx.types.CBufRet.f32 %7283, 0
  %7285 = fadd fast float %7284, %7282
  %7286 = extractvalue %dx.types.CBufRet.f32 %7283, 2
  %7287 = fmul fast float %7285, %7286
  %7288 = call float @dx.op.unary.f32(i32 23, float %7287)  ; Log(value)
  %7289 = extractvalue %dx.types.CBufRet.f32 %7283, 3
  %7290 = fmul fast float %7289, %7288
  %7291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7292 = extractvalue %dx.types.CBufRet.f32 %7291, 2
  %7293 = fmul fast float %7290, %7292
  %7294 = call float @dx.op.unary.f32(i32 7, float %7293)  ; Saturate(value)
  %7295 = uitofp i32 %7273 to float
  %7296 = uitofp i32 %7276 to float
  %7297 = fadd fast float %7295, 5.000000e-01
  %7298 = fadd fast float %7296, 5.000000e-01
  %7299 = fmul fast float %7292, %7297
  %7300 = fmul fast float %7292, %7298
  %7301 = fadd fast float %7299, 0x3F0FFB4800000000
  %7302 = fadd fast float %7300, 0xBF0FFB4800000000
  %7303 = call float @dx.op.binary.f32(i32 35, float %7294, float %7301)  ; FMax(a,b)
  %7304 = call float @dx.op.binary.f32(i32 36, float %7303, float %7302)  ; FMin(a,b)
  %7305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7306 = extractvalue %dx.types.CBufRet.f32 %7305, 1
  %7307 = extractvalue %dx.types.CBufRet.f32 %7305, 2
  %7308 = extractvalue %dx.types.CBufRet.f32 %7305, 0
  %7309 = fmul fast float %7306, %7304
  %7310 = fadd fast float %7308, %7309
  %7311 = fadd fast float %7308, %7307
  %7312 = fsub fast float %7306, %7307
  %7313 = fadd fast float %7312, %7308
  %7314 = call float @dx.op.binary.f32(i32 35, float %7310, float %7311)  ; FMax(a,b)
  %7315 = call float @dx.op.binary.f32(i32 36, float %7314, float %7313)  ; FMin(a,b)
  %7316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %34, float %7253, float %7254, float %7315, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7317 = extractvalue %dx.types.ResRet.f32 %7316, 0
  %7318 = extractvalue %dx.types.ResRet.f32 %7316, 1
  %7319 = extractvalue %dx.types.ResRet.f32 %7316, 2
  %7320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7321 = extractvalue %dx.types.CBufRet.i32 %7320, 0
  %7322 = extractvalue %dx.types.CBufRet.i32 %7320, 1
  %7323 = uitofp i32 %7321 to float
  %7324 = uitofp i32 %7322 to float
  %7325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7326 = extractvalue %dx.types.CBufRet.f32 %7325, 0
  %7327 = extractvalue %dx.types.CBufRet.f32 %7325, 1
  %7328 = fmul fast float %7323, %7253
  %7329 = fmul fast float %7324, %7254
  %7330 = fadd fast float %7328, -5.000000e-01
  %7331 = fadd fast float %7329, -5.000000e-01
  %7332 = call float @dx.op.unary.f32(i32 22, float %7330)  ; Frc(value)
  %7333 = call float @dx.op.unary.f32(i32 22, float %7331)  ; Frc(value)
  %7334 = fmul fast float %7332, %7332
  %7335 = fmul fast float %7334, %7332
  %7336 = fsub fast float 3.000000e+00, %7332
  %7337 = fmul fast float %7334, %7336
  %7338 = fmul fast float %7332, 3.000000e+00
  %7339 = fmul fast float %7335, 3.000000e+00
  %7340 = fmul fast float %7334, 6.000000e+00
  %7341 = fsub fast float %7339, %7340
  %7342 = fadd fast float %7341, 4.000000e+00
  %7343 = fmul fast float %7342, 0x3FC5555560000000
  %7344 = fmul fast float %7335, -3.000000e+00
  %7345 = fadd fast float %7334, %7332
  %7346 = fmul fast float %7345, 3.000000e+00
  %7347 = fadd fast float %7344, 1.000000e+00
  %7348 = fadd fast float %7347, %7346
  %7349 = fmul fast float %7335, 0x3FC5555560000000
  %7350 = fmul fast float %7333, %7333
  %7351 = fmul fast float %7350, %7333
  %7352 = fsub fast float 3.000000e+00, %7333
  %7353 = fmul fast float %7350, %7352
  %7354 = fmul fast float %7333, 3.000000e+00
  %7355 = fmul fast float %7351, 3.000000e+00
  %7356 = fmul fast float %7350, 6.000000e+00
  %7357 = fsub fast float %7355, %7356
  %7358 = fadd fast float %7357, 4.000000e+00
  %7359 = fmul fast float %7358, 0x3FC5555560000000
  %7360 = fmul fast float %7351, -3.000000e+00
  %7361 = fadd fast float %7350, %7333
  %7362 = fmul fast float %7361, 3.000000e+00
  %7363 = fadd fast float %7360, 1.000000e+00
  %7364 = fadd fast float %7363, %7362
  %7365 = fmul fast float %7351, 0x3FC5555560000000
  %7366 = fadd fast float %7332, 1.000000e+00
  %7367 = fsub fast float 1.000000e+00, %7338
  %7368 = fadd fast float %7367, %7337
  %7369 = fadd fast float %7368, %7342
  %7370 = fmul fast float %7369, 0x3FC5555560000000
  %7371 = fdiv fast float %7343, %7370
  %7372 = fsub fast float %7366, %7371
  %7373 = fsub fast float 1.000000e+00, %7332
  %7374 = fadd fast float %7348, %7335
  %7375 = fmul fast float %7374, 0x3FC5555560000000
  %7376 = fdiv fast float %7349, %7375
  %7377 = fadd fast float %7373, %7376
  %7378 = fadd fast float %7333, 1.000000e+00
  %7379 = fsub fast float 1.000000e+00, %7354
  %7380 = fadd fast float %7379, %7353
  %7381 = fadd fast float %7380, %7358
  %7382 = fmul fast float %7381, 0x3FC5555560000000
  %7383 = fdiv fast float %7359, %7382
  %7384 = fsub fast float %7378, %7383
  %7385 = fsub fast float 1.000000e+00, %7333
  %7386 = fadd fast float %7364, %7351
  %7387 = fmul fast float %7386, 0x3FC5555560000000
  %7388 = fdiv fast float %7365, %7387
  %7389 = fadd fast float %7388, %7385
  %7390 = fmul fast float %7372, %7326
  %7391 = fsub fast float %7253, %7390
  %7392 = fmul fast float %7377, %7326
  %7393 = fadd fast float %7392, %7253
  %7394 = fmul fast float %7389, %7327
  %7395 = fadd fast float %7394, %7254
  %7396 = fmul fast float %7384, %7327
  %7397 = fsub fast float %7254, %7396
  %7398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7391, float %7397, float %7315, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7399 = extractvalue %dx.types.ResRet.f32 %7398, 0
  %7400 = extractvalue %dx.types.ResRet.f32 %7398, 1
  %7401 = extractvalue %dx.types.ResRet.f32 %7398, 2
  %7402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7393, float %7397, float %7315, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7403 = extractvalue %dx.types.ResRet.f32 %7402, 0
  %7404 = extractvalue %dx.types.ResRet.f32 %7402, 1
  %7405 = extractvalue %dx.types.ResRet.f32 %7402, 2
  %7406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7391, float %7395, float %7315, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7407 = extractvalue %dx.types.ResRet.f32 %7406, 0
  %7408 = extractvalue %dx.types.ResRet.f32 %7406, 1
  %7409 = extractvalue %dx.types.ResRet.f32 %7406, 2
  %7410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7393, float %7395, float %7315, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7411 = extractvalue %dx.types.ResRet.f32 %7410, 0
  %7412 = extractvalue %dx.types.ResRet.f32 %7410, 1
  %7413 = extractvalue %dx.types.ResRet.f32 %7410, 2
  %7414 = fsub fast float %7407, %7399
  %7415 = fsub fast float %7408, %7400
  %7416 = fsub fast float %7409, %7401
  %7417 = fmul fast float %7414, %7387
  %7418 = fmul fast float %7415, %7387
  %7419 = fmul fast float %7416, %7387
  %7420 = fadd fast float %7417, %7399
  %7421 = fadd fast float %7418, %7400
  %7422 = fadd fast float %7419, %7401
  %7423 = fsub fast float %7411, %7403
  %7424 = fsub fast float %7412, %7404
  %7425 = fsub fast float %7413, %7405
  %7426 = fmul fast float %7423, %7387
  %7427 = fmul fast float %7424, %7387
  %7428 = fmul fast float %7425, %7387
  %7429 = fsub fast float %7403, %7420
  %7430 = fadd fast float %7429, %7426
  %7431 = fsub fast float %7404, %7421
  %7432 = fadd fast float %7431, %7427
  %7433 = fsub fast float %7405, %7422
  %7434 = fadd fast float %7433, %7428
  %7435 = fmul fast float %7430, %7375
  %7436 = fmul fast float %7432, %7375
  %7437 = fmul fast float %7434, %7375
  %7438 = fadd fast float %7435, %7420
  %7439 = fadd fast float %7436, %7421
  %7440 = fadd fast float %7437, %7422
  %7441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7442 = extractvalue %dx.types.CBufRet.f32 %7441, 1
  %7443 = fmul fast float %7438, %7442
  %7444 = fmul fast float %7439, %7442
  %7445 = fmul fast float %7440, %7442
  br label %7446

; <label>:7446                                    ; preds = %7278, %7247
  %7447 = phi float [ %7317, %7278 ], [ 1.000000e+00, %7247 ]
  %7448 = phi float [ %7318, %7278 ], [ 1.000000e+00, %7247 ]
  %7449 = phi float [ %7319, %7278 ], [ 1.000000e+00, %7247 ]
  %7450 = phi float [ %7443, %7278 ], [ 0.000000e+00, %7247 ]
  %7451 = phi float [ %7444, %7278 ], [ 0.000000e+00, %7247 ]
  %7452 = phi float [ %7445, %7278 ], [ 0.000000e+00, %7247 ]
  %7453 = fmul fast float %7450, %7232
  %7454 = fmul fast float %7451, %7233
  %7455 = fmul fast float %7452, %7234
  %7456 = call float @dx.op.dot3.f32(i32 55, float %7447, float %7448, float %7449, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7457 = call float @dx.op.dot3.f32(i32 55, float %7453, float %7454, float %7455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7458 = select i1 %269, float %7456, float %7447
  %7459 = select i1 %269, float %7456, float %7448
  %7460 = select i1 %269, float 1.000000e+00, float %7449
  %7461 = select i1 %269, float %7457, float %7453
  %7462 = select i1 %269, float 0.000000e+00, float %7454
  %7463 = select i1 %269, float 0.000000e+00, float %7455
  %7464 = fmul fast float %7458, %7237
  %7465 = fmul fast float %7459, %7238
  %7466 = fmul fast float %7460, %7239
  %7467 = fadd fast float %7464, %7461
  %7468 = fadd fast float %7465, %7462
  %7469 = fadd fast float %7463, %7466
  %7470 = fmul fast float %7458, %7201
  %7471 = fmul fast float %7459, %7202
  %7472 = fmul fast float %7460, %7203
  %7473 = fmul fast float %125, %7249
  %7474 = fmul fast float %127, %7250
  %7475 = fsub fast float 1.000000e+00, %7473
  %7476 = fsub fast float 1.000000e+00, %7474
  %7477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7478 = extractvalue %dx.types.CBufRet.f32 %7477, 0
  %7479 = extractvalue %dx.types.CBufRet.f32 %7477, 1
  %7480 = extractvalue %dx.types.CBufRet.f32 %7477, 2
  %7481 = fmul fast float %7475, %7478
  %7482 = fmul fast float %7475, %7479
  %7483 = fmul fast float %7475, %7480
  %7484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7485 = extractvalue %dx.types.CBufRet.f32 %7484, 0
  %7486 = extractvalue %dx.types.CBufRet.f32 %7484, 1
  %7487 = extractvalue %dx.types.CBufRet.f32 %7484, 2
  %7488 = fmul fast float %7476, %7485
  %7489 = fmul fast float %7476, %7486
  %7490 = fmul fast float %7476, %7487
  %7491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7492 = extractvalue %dx.types.CBufRet.f32 %7491, 0
  %7493 = extractvalue %dx.types.CBufRet.f32 %7491, 1
  %7494 = extractvalue %dx.types.CBufRet.f32 %7491, 2
  %7495 = fadd fast float %7488, %7492
  %7496 = fadd fast float %7495, %7481
  %7497 = fadd fast float %7489, %7493
  %7498 = fadd fast float %7497, %7482
  %7499 = fadd fast float %7490, %7494
  %7500 = fadd fast float %7499, %7483
  %7501 = fmul fast float %7496, %230
  %7502 = fmul fast float %7498, %230
  %7503 = fmul fast float %7500, %230
  br label %7504

; <label>:7504                                    ; preds = %7446, %7200
  %7505 = phi float [ %7501, %7446 ], [ %176, %7200 ]
  %7506 = phi float [ %7502, %7446 ], [ %177, %7200 ]
  %7507 = phi float [ %7503, %7446 ], [ %178, %7200 ]
  %7508 = phi float [ %230, %7446 ], [ %88, %7200 ]
  %7509 = phi float [ %7467, %7446 ], [ %7237, %7200 ]
  %7510 = phi float [ %7468, %7446 ], [ %7238, %7200 ]
  %7511 = phi float [ %7469, %7446 ], [ %7239, %7200 ]
  %7512 = phi float [ %7470, %7446 ], [ %7201, %7200 ]
  %7513 = phi float [ %7471, %7446 ], [ %7202, %7200 ]
  %7514 = phi float [ %7472, %7446 ], [ %7203, %7200 ]
  %7515 = phi float [ %7447, %7446 ], [ 1.000000e+00, %7200 ]
  br i1 %7246, label %8670, label %7516

; <label>:7516                                    ; preds = %7504
  %7517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7518 = extractvalue %dx.types.CBufRet.f32 %7517, 0
  %7519 = extractvalue %dx.types.CBufRet.f32 %7517, 1
  %7520 = extractvalue %dx.types.CBufRet.f32 %7517, 2
  %7521 = extractvalue %dx.types.CBufRet.f32 %7517, 3
  %7522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7523 = extractvalue %dx.types.CBufRet.f32 %7522, 0
  %7524 = extractvalue %dx.types.CBufRet.f32 %7522, 1
  %7525 = extractvalue %dx.types.CBufRet.f32 %7522, 2
  %7526 = extractvalue %dx.types.CBufRet.f32 %7522, 3
  %7527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7527, 0
  %7529 = extractvalue %dx.types.CBufRet.f32 %7527, 1
  %7530 = extractvalue %dx.types.CBufRet.f32 %7527, 2
  %7531 = extractvalue %dx.types.CBufRet.f32 %7527, 3
  %7532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7533 = extractvalue %dx.types.CBufRet.f32 %7532, 0
  %7534 = extractvalue %dx.types.CBufRet.f32 %7532, 1
  %7535 = extractvalue %dx.types.CBufRet.f32 %7532, 2
  %7536 = extractvalue %dx.types.CBufRet.f32 %7532, 3
  %7537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7538 = extractvalue %dx.types.CBufRet.f32 %7537, 3
  %7539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7540 = extractvalue %dx.types.CBufRet.f32 %7539, 3
  %7541 = extractvalue %dx.types.CBufRet.f32 %7539, 0
  %7542 = extractvalue %dx.types.CBufRet.f32 %7539, 1
  %7543 = extractvalue %dx.types.CBufRet.f32 %7539, 2
  %7544 = fcmp fast olt float %7543, -5.000000e-01
  %7545 = call float @dx.op.dot3.f32(i32 55, float %7505, float %7506, float %7507, float %7505, float %7506, float %7507)  ; Dot3(ax,ay,az,bx,by,bz)
  %7546 = call float @dx.op.unary.f32(i32 25, float %7545)  ; Rsqrt(value)
  %7547 = fmul fast float %7546, %7545
  %7548 = fmul fast float %7546, %7505
  %7549 = fmul fast float %7546, %7506
  %7550 = fmul fast float %7546, %7507
  %7551 = fadd fast float %7547, %7521
  %7552 = call float @dx.op.dot3.f32(i32 55, float %7548, float %7549, float %7550, float %7518, float %7519, float %7520)  ; Dot3(ax,ay,az,bx,by,bz)
  %7553 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7554 = extractvalue %dx.types.CBufRet.i32 %7553, 1
  %7555 = and i32 %7554, 1
  %7556 = icmp ne i32 %7555, 0
  %7557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7558 = extractvalue %dx.types.CBufRet.f32 %7557, 2
  %7559 = fcmp fast ogt float %7558, 0.000000e+00
  %7560 = and i1 %7556, %7559
  br i1 %7560, label %7561, label %7967, !dx.controlflow.hints !110

; <label>:7561                                    ; preds = %7516
  %7562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7563 = extractvalue %dx.types.CBufRet.f32 %7562, 3
  %7564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7565 = extractvalue %dx.types.CBufRet.f32 %7564, 2
  %7566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7567 = extractvalue %dx.types.CBufRet.f32 %7566, 2
  %7568 = fsub fast float %7565, %7567
  %7569 = and i32 %7554, 2
  %7570 = extractvalue %dx.types.CBufRet.i32 %7553, 0
  %7571 = call i32 @dx.op.binary.i32(i32 40, i32 %7570, i32 3)  ; UMin(a,b)
  %7572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.f32 %7572, 0
  %7574 = extractvalue %dx.types.CBufRet.f32 %7572, 1
  %7575 = extractvalue %dx.types.CBufRet.f32 %7566, 0
  %7576 = extractvalue %dx.types.CBufRet.f32 %7566, 1
  %7577 = fsub fast float %7573, %7575
  %7578 = fsub fast float %7574, %7576
  %7579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7580 = extractvalue %dx.types.CBufRet.f32 %7579, 0
  %7581 = fcmp fast ogt float %7580, 0.000000e+00
  %7582 = fsub fast float -0.000000e+00, %7577
  %7583 = fsub fast float -0.000000e+00, %7578
  %7584 = call float @dx.op.dot2.f32(i32 54, float %7548, float %7549, float %7548, float %7549)  ; Dot2(ax,ay,bx,by)
  %7585 = call float @dx.op.dot2.f32(i32 54, float %7548, float %7549, float %7582, float %7583)  ; Dot2(ax,ay,bx,by)
  %7586 = fmul fast float %7585, 2.000000e+00
  %7587 = call float @dx.op.dot2.f32(i32 54, float %7582, float %7583, float %7582, float %7583)  ; Dot2(ax,ay,bx,by)
  %7588 = fmul fast float %7580, %7580
  %7589 = fsub fast float %7587, %7588
  %7590 = fmul fast float %7586, %7586
  %7591 = fmul fast float %7584, 4.000000e+00
  %7592 = fmul fast float %7591, %7589
  %7593 = fsub fast float %7590, %7592
  %7594 = fcmp fast ogt float %7593, 0.000000e+00
  br i1 %7594, label %7595, label %7610

; <label>:7595                                    ; preds = %7561
  %7596 = fcmp fast ogt float %7586, 0.000000e+00
  %7597 = call float @dx.op.unary.f32(i32 24, float %7593)  ; Sqrt(value)
  %7598 = fsub fast float -0.000000e+00, %7597
  %7599 = select i1 %7596, float %7597, float %7598
  %7600 = fadd fast float %7599, %7586
  %7601 = fmul float %7600, -5.000000e-01
  %7602 = fdiv fast float %7601, %7584
  %7603 = call float @dx.op.binary.f32(i32 35, float %7602, float 0.000000e+00)  ; FMax(a,b)
  %7604 = call float @dx.op.binary.f32(i32 36, float %7547, float %7603)  ; FMin(a,b)
  %7605 = fdiv fast float %7589, %7601
  %7606 = call float @dx.op.binary.f32(i32 35, float %7605, float 0.000000e+00)  ; FMax(a,b)
  %7607 = call float @dx.op.binary.f32(i32 36, float %7547, float %7606)  ; FMin(a,b)
  %7608 = call float @dx.op.binary.f32(i32 36, float %7604, float %7607)  ; FMin(a,b)
  %7609 = call float @dx.op.binary.f32(i32 35, float %7604, float %7607)  ; FMax(a,b)
  br label %7610

; <label>:7610                                    ; preds = %7595, %7561
  %7611 = phi float [ %7609, %7595 ], [ -1.000000e+00, %7561 ]
  %7612 = phi float [ %7608, %7595 ], [ -1.000000e+00, %7561 ]
  %7613 = phi i1 [ true, %7595 ], [ false, %7561 ]
  %7614 = and i1 %7581, %7613
  br i1 %7614, label %7615, label %7617

; <label>:7615                                    ; preds = %7610
  %7616 = fcmp fast oeq float %7612, %7611
  br i1 %7616, label %7920, label %7618

; <label>:7617                                    ; preds = %7610
  br i1 %7581, label %7920, label %7618

; <label>:7618                                    ; preds = %7617, %7615
  %7619 = phi float [ %7547, %7617 ], [ %7611, %7615 ]
  %7620 = phi float [ 0.000000e+00, %7617 ], [ %7612, %7615 ]
  %7621 = icmp ne i32 %7569, 0
  %7622 = fmul fast float %7619, %7550
  %7623 = fadd fast float %7622, %7563
  %7624 = fmul fast float %7623, %7619
  %7625 = select i1 %7621, float 0.000000e+00, float %7624
  %7626 = fcmp fast oeq float %7550, 0.000000e+00
  %7627 = fdiv fast float %7568, %7550
  %7628 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7627)  ; FMax(a,b)
  %7629 = select i1 %7626, float %7619, float %7628
  %7630 = call float @dx.op.binary.f32(i32 36, float %7619, float %7629)  ; FMin(a,b)
  %7631 = fcmp fast ogt float %7550, 0.000000e+00
  %7632 = fcmp fast olt float %7568, 0.000000e+00
  br i1 %7631, label %7633, label %7690

; <label>:7633                                    ; preds = %7618
  %7634 = icmp eq i32 %7569, 0
  br i1 %7632, label %7635, label %7679

; <label>:7635                                    ; preds = %7633
  %7636 = select i1 %7634, float %7619, float 0.000000e+00
  %7637 = fsub fast float -0.000000e+00, %7636
  %7638 = call float @dx.op.unary.f32(i32 6, float %7637)  ; FAbs(value)
  %7639 = fmul fast float %7636, %7550
  %7640 = fadd fast float %7639, %7563
  %7641 = fmul fast float %7638, %7640
  %7642 = fsub fast float %7625, %7641
  %7643 = fsub fast float %7619, %7638
  %7644 = select i1 %7634, float %7643, float 0.000000e+00
  %7645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7646 = extractvalue %dx.types.CBufRet.f32 %7645, 0
  %7647 = extractvalue %dx.types.CBufRet.f32 %7645, 1
  %7648 = extractvalue %dx.types.CBufRet.f32 %7645, 2
  %7649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7650 = extractvalue %dx.types.CBufRet.f32 %7649, 0
  %7651 = extractvalue %dx.types.CBufRet.f32 %7649, 1
  %7652 = extractvalue %dx.types.CBufRet.f32 %7649, 2
  %7653 = extractvalue %dx.types.CBufRet.f32 %7649, 3
  %7654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7655 = extractvalue %dx.types.CBufRet.f32 %7654, 3
  %7656 = call float @dx.op.binary.f32(i32 36, float %7642, float %7655)  ; FMin(a,b)
  %7657 = fmul fast float %7653, %7644
  %7658 = call float @dx.op.unary.f32(i32 7, float %7657)  ; Saturate(value)
  %7659 = fsub fast float %7650, %7646
  %7660 = fsub fast float %7651, %7647
  %7661 = fsub fast float %7652, %7648
  %7662 = fmul fast float %7658, %7659
  %7663 = fmul fast float %7658, %7660
  %7664 = fmul fast float %7658, %7661
  %7665 = fadd fast float %7662, %7646
  %7666 = fadd fast float %7663, %7647
  %7667 = fadd fast float %7664, %7648
  %7668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7669 = extractvalue %dx.types.CBufRet.f32 %7668, 0
  %7670 = extractvalue %dx.types.CBufRet.f32 %7668, 1
  %7671 = fadd fast float %7670, %7669
  %7672 = call float @dx.op.unary.f32(i32 7, float %7671)  ; Saturate(value)
  %7673 = extractvalue %dx.types.CBufRet.f32 %7668, 2
  %7674 = extractvalue %dx.types.CBufRet.f32 %7668, 3
  %7675 = fadd fast float %7674, %7673
  %7676 = call float @dx.op.unary.f32(i32 7, float %7675)  ; Saturate(value)
  %7677 = fmul fast float %7672, %7656
  %7678 = fmul fast float %7677, %7676
  br label %7920

; <label>:7679                                    ; preds = %7633
  br i1 %7634, label %7680, label %7701

; <label>:7680                                    ; preds = %7679
  %7681 = call float @dx.op.binary.f32(i32 36, float %7630, float %7620)  ; FMin(a,b)
  %7682 = fsub fast float %7630, %7681
  %7683 = fsub fast float %7682, %7619
  %7684 = call float @dx.op.unary.f32(i32 6, float %7683)  ; FAbs(value)
  %7685 = fadd fast float %7682, %7619
  %7686 = fmul fast float %7685, %7550
  %7687 = fadd fast float %7686, %7563
  %7688 = fmul fast float %7687, %7684
  %7689 = fsub fast float %7625, %7688
  br label %7701

; <label>:7690                                    ; preds = %7618
  br i1 %7632, label %7691, label %7701

; <label>:7691                                    ; preds = %7690
  %7692 = call float @dx.op.binary.f32(i32 35, float %7620, float %7630)  ; FMax(a,b)
  %7693 = icmp eq i32 %7569, 0
  %7694 = select i1 %7693, float %7630, float 0.000000e+00
  %7695 = fsub fast float -0.000000e+00, %7694
  %7696 = call float @dx.op.unary.f32(i32 6, float %7695)  ; FAbs(value)
  %7697 = fmul fast float %7694, %7550
  %7698 = fadd fast float %7697, %7563
  %7699 = fmul fast float %7696, %7698
  %7700 = fsub fast float %7625, %7699
  br label %7701

; <label>:7701                                    ; preds = %7691, %7690, %7680, %7679
  %7702 = phi float [ %7620, %7679 ], [ %7620, %7680 ], [ %7692, %7691 ], [ %7620, %7690 ]
  %7703 = phi float [ 0.000000e+00, %7679 ], [ %7684, %7680 ], [ %7696, %7691 ], [ 0.000000e+00, %7690 ]
  %7704 = phi float [ %7625, %7679 ], [ %7689, %7680 ], [ %7700, %7691 ], [ %7625, %7690 ]
  %7705 = phi float [ %7630, %7679 ], [ %7630, %7680 ], [ %7619, %7691 ], [ %7619, %7690 ]
  %7706 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %7706, align 4, !tbaa !111, !noalias !113
  %7707 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %7707, align 4, !tbaa !111, !noalias !113
  %7708 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %7708, align 4, !tbaa !111, !noalias !113
  %7709 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %7709, align 4, !tbaa !111, !noalias !113
  %7710 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %7710, align 4, !tbaa !111, !noalias !113
  %7711 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %7711, align 4, !tbaa !111, !noalias !113
  %7712 = icmp sgt i32 %7571, 0
  br i1 %7712, label %7713, label %7774

; <label>:7713                                    ; preds = %7701
  br label %7714

; <label>:7714                                    ; preds = %7763, %7713
  %7715 = phi i32 [ %7764, %7763 ], [ 0, %7713 ]
  %7716 = phi i32 [ %7765, %7763 ], [ 0, %7713 ]
  %7717 = add nuw i32 %7716, 171
  %7718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %7717)  ; CBufferLoadLegacy(handle,regIndex)
  %7719 = extractvalue %dx.types.CBufRet.f32 %7718, 0
  %7720 = extractvalue %dx.types.CBufRet.f32 %7718, 1
  %7721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7722 = extractvalue %dx.types.CBufRet.f32 %7721, 0
  %7723 = extractvalue %dx.types.CBufRet.f32 %7721, 1
  %7724 = fsub fast float %7719, %7722
  %7725 = fsub fast float %7720, %7723
  %7726 = extractvalue %dx.types.CBufRet.f32 %7718, 2
  %7727 = fsub fast float -0.000000e+00, %7724
  %7728 = fsub fast float -0.000000e+00, %7725
  %7729 = call float @dx.op.dot2.f32(i32 54, float %7548, float %7549, float %7727, float %7728)  ; Dot2(ax,ay,bx,by)
  %7730 = fmul fast float %7729, 2.000000e+00
  %7731 = call float @dx.op.dot2.f32(i32 54, float %7727, float %7728, float %7727, float %7728)  ; Dot2(ax,ay,bx,by)
  %7732 = fmul fast float %7726, %7726
  %7733 = fsub fast float %7731, %7732
  %7734 = fmul fast float %7730, %7730
  %7735 = fmul fast float %7591, %7733
  %7736 = fsub fast float %7734, %7735
  %7737 = fcmp fast ogt float %7736, 0.000000e+00
  br i1 %7737, label %7738, label %7753

; <label>:7738                                    ; preds = %7714
  %7739 = fcmp fast ogt float %7730, 0.000000e+00
  %7740 = call float @dx.op.unary.f32(i32 24, float %7736)  ; Sqrt(value)
  %7741 = fsub fast float -0.000000e+00, %7740
  %7742 = select i1 %7739, float %7740, float %7741
  %7743 = fadd fast float %7742, %7730
  %7744 = fmul float %7743, -5.000000e-01
  %7745 = fdiv fast float %7744, %7584
  %7746 = call float @dx.op.binary.f32(i32 35, float %7745, float 0.000000e+00)  ; FMax(a,b)
  %7747 = call float @dx.op.binary.f32(i32 36, float %7619, float %7746)  ; FMin(a,b)
  %7748 = fdiv fast float %7733, %7744
  %7749 = call float @dx.op.binary.f32(i32 35, float %7748, float 0.000000e+00)  ; FMax(a,b)
  %7750 = call float @dx.op.binary.f32(i32 36, float %7619, float %7749)  ; FMin(a,b)
  %7751 = call float @dx.op.binary.f32(i32 36, float %7747, float %7750)  ; FMin(a,b)
  %7752 = call float @dx.op.binary.f32(i32 35, float %7747, float %7750)  ; FMax(a,b)
  br label %7753

; <label>:7753                                    ; preds = %7738, %7714
  %7754 = phi float [ %7752, %7738 ], [ -1.000000e+00, %7714 ]
  %7755 = phi float [ %7751, %7738 ], [ -1.000000e+00, %7714 ]
  %7756 = phi i1 [ true, %7738 ], [ false, %7714 ]
  br i1 %7756, label %7757, label %7763

; <label>:7757                                    ; preds = %7753
  %7758 = call float @dx.op.binary.f32(i32 35, float %7702, float %7755)  ; FMax(a,b)
  %7759 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7716
  store float %7758, float* %7759, align 4, !tbaa !111, !noalias !113
  %7760 = call float @dx.op.binary.f32(i32 35, float %7702, float %7754)  ; FMax(a,b)
  %7761 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %7716
  store float %7760, float* %7761, align 4, !tbaa !111, !noalias !113
  %7762 = add nsw i32 %7715, 1
  br label %7763

; <label>:7763                                    ; preds = %7757, %7753
  %7764 = phi i32 [ %7762, %7757 ], [ %7715, %7753 ]
  %7765 = add nuw nsw i32 %7716, 1
  %7766 = icmp eq i32 %7765, %7571
  br i1 %7766, label %7767, label %7714

; <label>:7767                                    ; preds = %7763
  %7768 = load float, float* %7708, align 4, !tbaa !111, !alias.scope !129, !noalias !132
  %7769 = load float, float* %7707, align 4, !tbaa !111, !alias.scope !135, !noalias !136
  %7770 = load float, float* %7706, align 4, !tbaa !111, !alias.scope !137, !noalias !138
  %7771 = load float, float* %7711, align 4, !tbaa !111, !alias.scope !139, !noalias !142
  %7772 = load float, float* %7710, align 4, !tbaa !111, !alias.scope !145, !noalias !146
  %7773 = load float, float* %7709, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  br label %7774

; <label>:7774                                    ; preds = %7767, %7701
  %7775 = phi float [ -1.000000e+00, %7701 ], [ %7773, %7767 ]
  %7776 = phi float [ -1.000000e+00, %7701 ], [ %7772, %7767 ]
  %7777 = phi float [ -1.000000e+00, %7701 ], [ %7771, %7767 ]
  %7778 = phi float [ -1.000000e+00, %7701 ], [ %7770, %7767 ]
  %7779 = phi float [ -1.000000e+00, %7701 ], [ %7769, %7767 ]
  %7780 = phi float [ -1.000000e+00, %7701 ], [ %7768, %7767 ]
  %7781 = phi i32 [ 0, %7701 ], [ %7764, %7767 ]
  %7782 = call float @dx.op.binary.f32(i32 36, float %7779, float %7780)  ; FMin(a,b)
  %7783 = call float @dx.op.binary.f32(i32 36, float %7778, float %7782)  ; FMin(a,b)
  %7784 = call float @dx.op.binary.f32(i32 35, float %7778, float %7779)  ; FMax(a,b)
  %7785 = call float @dx.op.binary.f32(i32 36, float %7784, float %7780)  ; FMin(a,b)
  %7786 = call float @dx.op.binary.f32(i32 36, float %7778, float %7779)  ; FMin(a,b)
  %7787 = call float @dx.op.binary.f32(i32 35, float %7786, float %7785)  ; FMax(a,b)
  %7788 = call float @dx.op.binary.f32(i32 35, float %7779, float %7780)  ; FMax(a,b)
  %7789 = call float @dx.op.binary.f32(i32 35, float %7778, float %7788)  ; FMax(a,b)
  store float %7783, float* %7706, align 4, !tbaa !111, !alias.scope !137, !noalias !138
  store float %7787, float* %7707, align 4, !tbaa !111, !alias.scope !135, !noalias !136
  store float %7789, float* %7708, align 4, !tbaa !111, !alias.scope !129, !noalias !132
  %7790 = call float @dx.op.binary.f32(i32 36, float %7776, float %7777)  ; FMin(a,b)
  %7791 = call float @dx.op.binary.f32(i32 36, float %7775, float %7790)  ; FMin(a,b)
  %7792 = call float @dx.op.binary.f32(i32 35, float %7775, float %7776)  ; FMax(a,b)
  %7793 = call float @dx.op.binary.f32(i32 36, float %7792, float %7777)  ; FMin(a,b)
  %7794 = call float @dx.op.binary.f32(i32 36, float %7775, float %7776)  ; FMin(a,b)
  %7795 = call float @dx.op.binary.f32(i32 35, float %7794, float %7793)  ; FMax(a,b)
  %7796 = call float @dx.op.binary.f32(i32 35, float %7776, float %7777)  ; FMax(a,b)
  %7797 = call float @dx.op.binary.f32(i32 35, float %7775, float %7796)  ; FMax(a,b)
  store float %7791, float* %7709, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  store float %7795, float* %7710, align 4, !tbaa !111, !alias.scope !145, !noalias !146
  store float %7797, float* %7711, align 4, !tbaa !111, !alias.scope !139, !noalias !142
  %7798 = sub nsw i32 3, %7781
  %7799 = icmp sgt i32 %7798, 2
  br i1 %7799, label %7800, label %7838

; <label>:7800                                    ; preds = %7774
  %7801 = icmp eq i32 %7569, 0
  %7802 = fsub fast float %7619, %7703
  %7803 = select i1 %7801, float %7802, float %7703
  %7804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7805 = extractvalue %dx.types.CBufRet.f32 %7804, 0
  %7806 = extractvalue %dx.types.CBufRet.f32 %7804, 1
  %7807 = extractvalue %dx.types.CBufRet.f32 %7804, 2
  %7808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7809 = extractvalue %dx.types.CBufRet.f32 %7808, 0
  %7810 = extractvalue %dx.types.CBufRet.f32 %7808, 1
  %7811 = extractvalue %dx.types.CBufRet.f32 %7808, 2
  %7812 = extractvalue %dx.types.CBufRet.f32 %7808, 3
  %7813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7814 = extractvalue %dx.types.CBufRet.f32 %7813, 3
  %7815 = call float @dx.op.binary.f32(i32 36, float %7704, float %7814)  ; FMin(a,b)
  %7816 = fmul fast float %7812, %7803
  %7817 = call float @dx.op.unary.f32(i32 7, float %7816)  ; Saturate(value)
  %7818 = fsub fast float %7809, %7805
  %7819 = fsub fast float %7810, %7806
  %7820 = fsub fast float %7811, %7807
  %7821 = fmul fast float %7817, %7818
  %7822 = fmul fast float %7817, %7819
  %7823 = fmul fast float %7817, %7820
  %7824 = fadd fast float %7821, %7805
  %7825 = fadd fast float %7822, %7806
  %7826 = fadd fast float %7823, %7807
  %7827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7828 = extractvalue %dx.types.CBufRet.f32 %7827, 0
  %7829 = extractvalue %dx.types.CBufRet.f32 %7827, 1
  %7830 = fadd fast float %7829, %7828
  %7831 = call float @dx.op.unary.f32(i32 7, float %7830)  ; Saturate(value)
  %7832 = extractvalue %dx.types.CBufRet.f32 %7827, 2
  %7833 = extractvalue %dx.types.CBufRet.f32 %7827, 3
  %7834 = fadd fast float %7833, %7832
  %7835 = call float @dx.op.unary.f32(i32 7, float %7834)  ; Saturate(value)
  %7836 = fmul fast float %7831, %7815
  %7837 = fmul fast float %7836, %7835
  br label %7920

; <label>:7838                                    ; preds = %7774
  %7839 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7798
  %7840 = load float, float* %7839, align 4, !tbaa !111, !noalias !113
  %7841 = fcmp fast olt float %7840, %7705
  %7842 = icmp sgt i32 %7781, 0
  %7843 = and i1 %7842, %7841
  br i1 %7843, label %7844, label %7881

; <label>:7844                                    ; preds = %7838
  br label %7845

; <label>:7845                                    ; preds = %7874, %7844
  %7846 = phi float [ %7875, %7874 ], [ %7703, %7844 ]
  %7847 = phi float [ %7876, %7874 ], [ %7704, %7844 ]
  %7848 = phi float [ %7856, %7874 ], [ %7840, %7844 ]
  %7849 = phi i32 [ %7853, %7874 ], [ %7798, %7844 ]
  %7850 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %7849
  %7851 = load float, float* %7850, align 4, !tbaa !111, !noalias !113
  %7852 = icmp slt i32 %7849, 2
  %7853 = add nsw i32 %7849, 1
  %7854 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7853
  %7855 = load float, float* %7854, align 4, !tbaa !111, !noalias !113
  %7856 = select i1 %7852, float %7855, float %7619
  %7857 = call float @dx.op.binary.f32(i32 36, float %7856, float %7851)  ; FMin(a,b)
  %7858 = call float @dx.op.binary.f32(i32 36, float %7705, float %7857)  ; FMin(a,b)
  %7859 = icmp eq i32 %7569, 0
  %7860 = fadd fast float %7858, %7848
  %7861 = fmul fast float %7860, %7550
  %7862 = fadd fast float %7861, %7563
  br i1 %7859, label %7868, label %7863

; <label>:7863                                    ; preds = %7845
  %7864 = fsub fast float %7858, %7848
  %7865 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7864)  ; FMax(a,b)
  %7866 = fmul fast float %7865, %7862
  %7867 = fadd fast float %7866, %7847
  br label %7874

; <label>:7868                                    ; preds = %7845
  %7869 = fsub fast float %7848, %7858
  %7870 = call float @dx.op.unary.f32(i32 6, float %7869)  ; FAbs(value)
  %7871 = fadd fast float %7870, %7846
  %7872 = fmul fast float %7870, %7862
  %7873 = fsub fast float %7847, %7872
  br label %7874

; <label>:7874                                    ; preds = %7868, %7863
  %7875 = phi float [ %7865, %7863 ], [ %7871, %7868 ]
  %7876 = phi float [ %7867, %7863 ], [ %7873, %7868 ]
  %7877 = fcmp fast olt float %7856, %7705
  %7878 = icmp slt i32 %7853, 3
  %7879 = and i1 %7878, %7877
  br i1 %7879, label %7845, label %7880

; <label>:7880                                    ; preds = %7874
  br label %7881

; <label>:7881                                    ; preds = %7880, %7838
  %7882 = phi float [ %7703, %7838 ], [ %7875, %7880 ]
  %7883 = phi float [ %7704, %7838 ], [ %7876, %7880 ]
  %7884 = fsub fast float %7619, %7882
  %7885 = select i1 %7621, float %7882, float %7884
  %7886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7887 = extractvalue %dx.types.CBufRet.f32 %7886, 0
  %7888 = extractvalue %dx.types.CBufRet.f32 %7886, 1
  %7889 = extractvalue %dx.types.CBufRet.f32 %7886, 2
  %7890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7891 = extractvalue %dx.types.CBufRet.f32 %7890, 0
  %7892 = extractvalue %dx.types.CBufRet.f32 %7890, 1
  %7893 = extractvalue %dx.types.CBufRet.f32 %7890, 2
  %7894 = extractvalue %dx.types.CBufRet.f32 %7890, 3
  %7895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7896 = extractvalue %dx.types.CBufRet.f32 %7895, 3
  %7897 = call float @dx.op.binary.f32(i32 36, float %7883, float %7896)  ; FMin(a,b)
  %7898 = fmul fast float %7894, %7885
  %7899 = call float @dx.op.unary.f32(i32 7, float %7898)  ; Saturate(value)
  %7900 = fsub fast float %7891, %7887
  %7901 = fsub fast float %7892, %7888
  %7902 = fsub fast float %7893, %7889
  %7903 = fmul fast float %7899, %7900
  %7904 = fmul fast float %7899, %7901
  %7905 = fmul fast float %7899, %7902
  %7906 = fadd fast float %7903, %7887
  %7907 = fadd fast float %7904, %7888
  %7908 = fadd fast float %7905, %7889
  %7909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7910 = extractvalue %dx.types.CBufRet.f32 %7909, 0
  %7911 = extractvalue %dx.types.CBufRet.f32 %7909, 1
  %7912 = fadd fast float %7911, %7910
  %7913 = call float @dx.op.unary.f32(i32 7, float %7912)  ; Saturate(value)
  %7914 = extractvalue %dx.types.CBufRet.f32 %7909, 2
  %7915 = extractvalue %dx.types.CBufRet.f32 %7909, 3
  %7916 = fadd fast float %7915, %7914
  %7917 = call float @dx.op.unary.f32(i32 7, float %7916)  ; Saturate(value)
  %7918 = fmul fast float %7913, %7897
  %7919 = fmul fast float %7918, %7917
  br label %7920

; <label>:7920                                    ; preds = %7881, %7800, %7635, %7617, %7615
  %7921 = phi float [ %7644, %7635 ], [ %7803, %7800 ], [ %7885, %7881 ], [ 0.000000e+00, %7615 ], [ 0.000000e+00, %7617 ]
  %7922 = phi float [ %7678, %7635 ], [ %7837, %7800 ], [ %7919, %7881 ], [ 0.000000e+00, %7615 ], [ 0.000000e+00, %7617 ]
  %7923 = phi float [ %7665, %7635 ], [ %7824, %7800 ], [ %7906, %7881 ], [ 0.000000e+00, %7615 ], [ 0.000000e+00, %7617 ]
  %7924 = phi float [ %7666, %7635 ], [ %7825, %7800 ], [ %7907, %7881 ], [ 0.000000e+00, %7615 ], [ 0.000000e+00, %7617 ]
  %7925 = phi float [ %7667, %7635 ], [ %7826, %7800 ], [ %7908, %7881 ], [ 0.000000e+00, %7615 ], [ 0.000000e+00, %7617 ]
  %7926 = fmul fast float %7558, %7922
  %7927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7928 = extractvalue %dx.types.CBufRet.f32 %7927, 2
  %7929 = fsub fast float %7565, %7928
  %7930 = fcmp fast olt float %7926, -2.000000e+01
  %7931 = call float @dx.op.unary.f32(i32 21, float %7926)  ; Exp(value)
  %7932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7933 = extractvalue %dx.types.CBufRet.f32 %7932, 2
  %7934 = extractvalue %dx.types.CBufRet.f32 %7932, 3
  %7935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7936 = extractvalue %dx.types.CBufRet.f32 %7935, 2
  %7937 = fmul fast float %7934, %7929
  %7938 = call float @dx.op.unary.f32(i32 7, float %7937)  ; Saturate(value)
  %7939 = fsub fast float 1.000000e+00, %7938
  %7940 = fmul fast float %7550, 5.000000e-01
  %7941 = fadd fast float %7940, 5.000000e-01
  %7942 = call float @dx.op.unary.f32(i32 7, float %7941)  ; Saturate(value)
  %7943 = fsub fast float 1.000000e+00, %7942
  %7944 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7939)  ; FMax(a,b)
  %7945 = fdiv fast float %7943, %7944
  %7946 = fsub fast float %7929, %7507
  %7947 = call float @dx.op.unary.f32(i32 6, float %7946)  ; FAbs(value)
  %7948 = fmul fast float %7947, %7933
  %7949 = call float @dx.op.unary.f32(i32 7, float %7945)  ; Saturate(value)
  %7950 = fsub fast float 1.000000e+00, %7948
  %7951 = fmul fast float %7950, %7949
  %7952 = fadd fast float %7951, %7948
  %7953 = fmul fast float %7936, %7929
  %7954 = call float @dx.op.unary.f32(i32 7, float %7953)  ; Saturate(value)
  %7955 = fsub fast float 1.000000e+00, %7952
  %7956 = fmul fast float %7955, %7954
  %7957 = fadd fast float %7956, %7952
  %7958 = call float @dx.op.unary.f32(i32 7, float %7957)  ; Saturate(value)
  %7959 = fadd fast float %7931, -1.000000e+00
  %7960 = select i1 %7930, float -1.000000e+00, float %7959
  %7961 = fmul fast float %7958, %7960
  %7962 = fadd fast float %7961, 1.000000e+00
  %7963 = fsub fast float -0.000000e+00, %7961
  %7964 = fmul fast float %7923, %7963
  %7965 = fmul fast float %7924, %7963
  %7966 = fmul fast float %7925, %7963
  br label %7967

; <label>:7967                                    ; preds = %7920, %7516
  %7968 = phi float [ %7921, %7920 ], [ 0.000000e+00, %7516 ]
  %7969 = phi float [ %7962, %7920 ], [ 1.000000e+00, %7516 ]
  %7970 = phi float [ %7964, %7920 ], [ 0.000000e+00, %7516 ]
  %7971 = phi float [ %7965, %7920 ], [ 0.000000e+00, %7516 ]
  %7972 = phi float [ %7966, %7920 ], [ 0.000000e+00, %7516 ]
  %7973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7974 = extractvalue %dx.types.CBufRet.f32 %7973, 1
  %7975 = fsub fast float 1.000000e+00, %7969
  %7976 = fmul fast float %7975, %7551
  %7977 = fmul fast float %7976, %7974
  %7978 = fsub fast float %7551, %7977
  br i1 %7544, label %7979, label %8008, !dx.controlflow.hints !149

; <label>:7979                                    ; preds = %7967
  %7980 = fmul fast float %7552, %7541
  %7981 = fadd fast float %7980, %7542
  %7982 = call float @dx.op.unary.f32(i32 7, float %7981)  ; Saturate(value)
  %7983 = fmul fast float %7523, %7978
  %7984 = fsub fast float -0.000000e+00, %7983
  %7985 = fmul fast float %7524, %7978
  %7986 = fsub fast float -0.000000e+00, %7985
  %7987 = call float @dx.op.unary.f32(i32 21, float %7984)  ; Exp(value)
  %7988 = call float @dx.op.unary.f32(i32 21, float %7986)  ; Exp(value)
  %7989 = call float @dx.op.binary.f32(i32 35, float %7531, float %7987)  ; FMax(a,b)
  %7990 = call float @dx.op.binary.f32(i32 35, float %7531, float %7988)  ; FMax(a,b)
  %7991 = fsub fast float %7990, %7989
  %7992 = fmul fast float %7991, %7982
  %7993 = fadd fast float %7992, %7989
  %7994 = call float @dx.op.unary.f32(i32 7, float %7993)  ; Saturate(value)
  %7995 = fsub fast float %7528, %7533
  %7996 = fsub fast float %7529, %7534
  %7997 = fsub fast float %7530, %7535
  %7998 = fmul fast float %7982, %7995
  %7999 = fmul fast float %7982, %7996
  %8000 = fmul fast float %7982, %7997
  %8001 = fadd fast float %7998, %7533
  %8002 = fadd fast float %7999, %7534
  %8003 = fadd fast float %8000, %7535
  %8004 = fsub fast float 1.000000e+00, %7994
  %8005 = fmul fast float %8004, %8001
  %8006 = fmul fast float %8004, %8002
  %8007 = fmul fast float %8004, %8003
  br label %8067

; <label>:8008                                    ; preds = %7967
  %8009 = fmul fast float %7978, %7540
  %8010 = call float @dx.op.unary.f32(i32 7, float %8009)  ; Saturate(value)
  %8011 = fsub fast float 2.000000e+00, %8010
  %8012 = fmul fast float %8010, 9.921875e-01
  %8013 = fmul fast float %8012, %8011
  %8014 = fadd fast float %8013, 3.906250e-03
  %8015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %36, float %8014, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8016 = extractvalue %dx.types.ResRet.f32 %8015, 0
  %8017 = fsub fast float %8010, %8016
  %8018 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8017)  ; FMax(a,b)
  %8019 = fmul fast float %7526, %7507
  %8020 = call float @dx.op.unary.f32(i32 6, float %8019)  ; FAbs(value)
  %8021 = fcmp fast ogt float %8020, 0x3EB0C6F7A0000000
  br i1 %8021, label %8022, label %8028, !dx.controlflow.hints !150

; <label>:8022                                    ; preds = %8008
  %8023 = fmul fast float %8019, 0xBFF7154760000000
  %8024 = call float @dx.op.unary.f32(i32 21, float %8023)  ; Exp(value)
  %8025 = fsub fast float 1.000000e+00, %8024
  %8026 = fdiv fast float %8025, %8019
  %8027 = fmul fast float %8026, %7536
  br label %8028

; <label>:8028                                    ; preds = %8022, %8008
  %8029 = phi float [ %8027, %8022 ], [ %7536, %8008 ]
  %8030 = fadd fast float %8029, %7538
  %8031 = fmul fast float %8030, %8018
  %8032 = fmul fast float %7523, %8031
  %8033 = fsub fast float -0.000000e+00, %8032
  %8034 = fmul fast float %7524, %8031
  %8035 = fsub fast float -0.000000e+00, %8034
  %8036 = fmul fast float %7525, %8031
  %8037 = fsub fast float -0.000000e+00, %8036
  %8038 = call float @dx.op.unary.f32(i32 21, float %8033)  ; Exp(value)
  %8039 = call float @dx.op.unary.f32(i32 21, float %8035)  ; Exp(value)
  %8040 = call float @dx.op.unary.f32(i32 21, float %8037)  ; Exp(value)
  %8041 = fmul fast float %7552, %7552
  %8042 = fadd fast float %8041, 1.000000e+00
  %8043 = fmul fast float %8042, 0x3FAE8EC8A0000000
  %8044 = fmul fast float %8043, %7533
  %8045 = fmul fast float %8043, %7534
  %8046 = fmul fast float %8043, %7535
  %8047 = fmul fast float %7552, %7531
  %8048 = fsub fast float 1.000000e+00, %8047
  %8049 = fmul fast float %7531, %7531
  %8050 = fsub fast float 1.000000e+00, %8049
  %8051 = fmul fast float %8050, 0x3FB45F3060000000
  %8052 = fmul fast float %8048, %8048
  %8053 = fdiv fast float 1.000000e+00, %8052
  %8054 = fmul fast float %8051, %8053
  %8055 = fmul fast float %8054, %7528
  %8056 = fmul fast float %8054, %7529
  %8057 = fmul fast float %8054, %7530
  %8058 = fadd fast float %8055, %8044
  %8059 = fadd fast float %8056, %8045
  %8060 = fadd fast float %8057, %8046
  %8061 = fsub fast float 1.000000e+00, %8038
  %8062 = fsub fast float 1.000000e+00, %8039
  %8063 = fsub fast float 1.000000e+00, %8040
  %8064 = fmul fast float %8058, %8061
  %8065 = fmul fast float %8059, %8062
  %8066 = fmul fast float %8060, %8063
  br label %8067

; <label>:8067                                    ; preds = %8028, %7979
  %8068 = phi float [ %8005, %7979 ], [ %8064, %8028 ]
  %8069 = phi float [ %8006, %7979 ], [ %8065, %8028 ]
  %8070 = phi float [ %8007, %7979 ], [ %8066, %8028 ]
  %8071 = phi float [ %7994, %7979 ], [ %8038, %8028 ]
  %8072 = phi float [ %7994, %7979 ], [ %8039, %8028 ]
  %8073 = phi float [ %7994, %7979 ], [ %8040, %8028 ]
  br i1 %7560, label %8074, label %8272, !dx.controlflow.hints !151

; <label>:8074                                    ; preds = %8067
  %8075 = extractvalue %dx.types.CBufRet.f32 %7973, 0
  %8076 = fmul fast float %8075, %7975
  %8077 = fsub fast float %7970, %8068
  %8078 = fsub fast float %7971, %8069
  %8079 = fsub fast float %7972, %8070
  %8080 = fmul fast float %8076, %8077
  %8081 = fmul fast float %8076, %8078
  %8082 = fmul fast float %8076, %8079
  %8083 = fadd fast float %8080, %8068
  %8084 = fadd fast float %8081, %8069
  %8085 = fadd fast float %8082, %8070
  %8086 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8071)  ; FMax(a,b)
  %8087 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8072)  ; FMax(a,b)
  %8088 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8073)  ; FMax(a,b)
  %8089 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7969)  ; FMax(a,b)
  %8090 = call float @dx.op.binary.f32(i32 35, float %7968, float %7978)  ; FMax(a,b)
  %8091 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8090)  ; FMax(a,b)
  %8092 = fdiv fast float %7968, %8091
  %8093 = call float @dx.op.unary.f32(i32 7, float %8092)  ; Saturate(value)
  %8094 = fdiv fast float %7978, %8091
  %8095 = call float @dx.op.unary.f32(i32 7, float %8094)  ; Saturate(value)
  %8096 = fcmp fast une float %8089, 1.000000e+00
  br i1 %8096, label %8097, label %8110, !dx.controlflow.hints !152

; <label>:8097                                    ; preds = %8074
  %8098 = call float @dx.op.unary.f32(i32 23, float %8089)  ; Log(value)
  %8099 = fmul fast float %8098, 0x3FE62E4300000000
  %8100 = fmul fast float %7970, %8099
  %8101 = fsub fast float -0.000000e+00, %8100
  %8102 = fmul fast float %7971, %8099
  %8103 = fsub fast float -0.000000e+00, %8102
  %8104 = fmul fast float %7972, %8099
  %8105 = fsub fast float -0.000000e+00, %8104
  %8106 = fsub fast float 1.000000e+00, %8089
  %8107 = fdiv fast float %8101, %8106
  %8108 = fdiv fast float %8103, %8106
  %8109 = fdiv fast float %8105, %8106
  br label %8110

; <label>:8110                                    ; preds = %8097, %8074
  %8111 = phi float [ %8107, %8097 ], [ %7970, %8074 ]
  %8112 = phi float [ %8108, %8097 ], [ %7971, %8074 ]
  %8113 = phi float [ %8109, %8097 ], [ %7972, %8074 ]
  %8114 = phi float [ %8099, %8097 ], [ 0.000000e+00, %8074 ]
  %8115 = fcmp fast une float %8086, 1.000000e+00
  br i1 %8115, label %8116, label %8123, !dx.controlflow.hints !153

; <label>:8116                                    ; preds = %8110
  %8117 = call float @dx.op.unary.f32(i32 23, float %8086)  ; Log(value)
  %8118 = fmul fast float %8117, 0x3FE62E4300000000
  %8119 = fmul fast float %8083, %8118
  %8120 = fsub fast float -0.000000e+00, %8119
  %8121 = fsub fast float 1.000000e+00, %8086
  %8122 = fdiv fast float %8120, %8121
  br label %8123

; <label>:8123                                    ; preds = %8116, %8110
  %8124 = phi float [ %8122, %8116 ], [ %8083, %8110 ]
  %8125 = phi float [ %8118, %8116 ], [ 0.000000e+00, %8110 ]
  %8126 = fcmp fast une float %8087, 1.000000e+00
  br i1 %8126, label %8127, label %8134, !dx.controlflow.hints !153

; <label>:8127                                    ; preds = %8123
  %8128 = call float @dx.op.unary.f32(i32 23, float %8087)  ; Log(value)
  %8129 = fmul fast float %8128, 0x3FE62E4300000000
  %8130 = fmul fast float %8084, %8129
  %8131 = fsub fast float -0.000000e+00, %8130
  %8132 = fsub fast float 1.000000e+00, %8087
  %8133 = fdiv fast float %8131, %8132
  br label %8134

; <label>:8134                                    ; preds = %8127, %8123
  %8135 = phi float [ %8133, %8127 ], [ %8084, %8123 ]
  %8136 = phi float [ %8129, %8127 ], [ 0.000000e+00, %8123 ]
  %8137 = fcmp fast une float %8088, 1.000000e+00
  br i1 %8137, label %8138, label %8145, !dx.controlflow.hints !153

; <label>:8138                                    ; preds = %8134
  %8139 = call float @dx.op.unary.f32(i32 23, float %8088)  ; Log(value)
  %8140 = fmul fast float %8139, 0x3FE62E4300000000
  %8141 = fmul fast float %8085, %8140
  %8142 = fsub fast float -0.000000e+00, %8141
  %8143 = fsub fast float 1.000000e+00, %8088
  %8144 = fdiv fast float %8142, %8143
  br label %8145

; <label>:8145                                    ; preds = %8138, %8134
  %8146 = phi float [ %8144, %8138 ], [ %8085, %8134 ]
  %8147 = phi float [ %8140, %8138 ], [ 0.000000e+00, %8134 ]
  %8148 = fmul fast float %8111, %8095
  %8149 = fmul fast float %8112, %8095
  %8150 = fmul fast float %8113, %8095
  %8151 = fmul fast float %8114, %8095
  %8152 = fmul fast float %8124, %8093
  %8153 = fmul fast float %8135, %8093
  %8154 = fmul fast float %8146, %8093
  %8155 = fmul fast float %8125, %8093
  %8156 = fmul fast float %8136, %8093
  %8157 = fmul fast float %8147, %8093
  %8158 = fadd fast float %8152, %8148
  %8159 = fadd fast float %8153, %8149
  %8160 = fadd fast float %8154, %8150
  %8161 = fadd fast float %8155, %8151
  %8162 = fadd fast float %8156, %8151
  %8163 = fadd fast float %8157, %8151
  %8164 = fcmp fast une float %8161, 0.000000e+00
  br i1 %8164, label %8165, label %8172, !dx.controlflow.hints !154

; <label>:8165                                    ; preds = %8145
  %8166 = fmul fast float %8161, 0x3FF7154760000000
  %8167 = call float @dx.op.unary.f32(i32 21, float %8166)  ; Exp(value)
  %8168 = fsub fast float 1.000000e+00, %8167
  %8169 = fmul fast float %8158, %8168
  %8170 = fsub fast float -0.000000e+00, %8169
  %8171 = fdiv fast float %8170, %8161
  br label %8172

; <label>:8172                                    ; preds = %8165, %8145
  %8173 = phi float [ %8167, %8165 ], [ 1.000000e+00, %8145 ]
  %8174 = phi float [ %8171, %8165 ], [ %8158, %8145 ]
  %8175 = fcmp fast une float %8162, 0.000000e+00
  br i1 %8175, label %8176, label %8183, !dx.controlflow.hints !154

; <label>:8176                                    ; preds = %8172
  %8177 = fmul fast float %8162, 0x3FF7154760000000
  %8178 = call float @dx.op.unary.f32(i32 21, float %8177)  ; Exp(value)
  %8179 = fsub fast float 1.000000e+00, %8178
  %8180 = fmul fast float %8159, %8179
  %8181 = fsub fast float -0.000000e+00, %8180
  %8182 = fdiv fast float %8181, %8162
  br label %8183

; <label>:8183                                    ; preds = %8176, %8172
  %8184 = phi float [ %8178, %8176 ], [ 1.000000e+00, %8172 ]
  %8185 = phi float [ %8182, %8176 ], [ %8159, %8172 ]
  %8186 = fcmp fast une float %8163, 0.000000e+00
  br i1 %8186, label %8187, label %8194, !dx.controlflow.hints !154

; <label>:8187                                    ; preds = %8183
  %8188 = fmul fast float %8163, 0x3FF7154760000000
  %8189 = call float @dx.op.unary.f32(i32 21, float %8188)  ; Exp(value)
  %8190 = fsub fast float 1.000000e+00, %8189
  %8191 = fmul fast float %8160, %8190
  %8192 = fsub fast float -0.000000e+00, %8191
  %8193 = fdiv fast float %8192, %8163
  br label %8194

; <label>:8194                                    ; preds = %8187, %8183
  %8195 = phi float [ %8189, %8187 ], [ 1.000000e+00, %8183 ]
  %8196 = phi float [ %8193, %8187 ], [ %8160, %8183 ]
  %8197 = fcmp fast ogt float %8093, %8095
  br i1 %8197, label %8198, label %8218

; <label>:8198                                    ; preds = %8194
  %8199 = fsub fast float 1.000000e+00, %8095
  %8200 = fmul fast float %8111, %8199
  %8201 = fmul fast float %8112, %8199
  %8202 = fmul fast float %8113, %8199
  %8203 = fmul fast float %8114, %8199
  %8204 = fcmp fast une float %8203, 0.000000e+00
  br i1 %8204, label %8205, label %8256, !dx.controlflow.hints !155

; <label>:8205                                    ; preds = %8198
  %8206 = fmul fast float %8203, 0x3FF7154760000000
  %8207 = call float @dx.op.unary.f32(i32 21, float %8206)  ; Exp(value)
  %8208 = fsub fast float 1.000000e+00, %8207
  %8209 = fmul fast float %8200, %8208
  %8210 = fsub fast float -0.000000e+00, %8209
  %8211 = fmul fast float %8201, %8208
  %8212 = fsub fast float -0.000000e+00, %8211
  %8213 = fmul fast float %8202, %8208
  %8214 = fsub fast float -0.000000e+00, %8213
  %8215 = fdiv fast float %8210, %8203
  %8216 = fdiv fast float %8212, %8203
  %8217 = fdiv fast float %8214, %8203
  br label %8256

; <label>:8218                                    ; preds = %8194
  %8219 = fsub fast float 1.000000e+00, %8093
  %8220 = fmul fast float %8124, %8219
  %8221 = fmul fast float %8135, %8219
  %8222 = fmul fast float %8146, %8219
  %8223 = fmul fast float %8125, %8219
  %8224 = fmul fast float %8136, %8219
  %8225 = fmul fast float %8147, %8219
  %8226 = fcmp fast une float %8223, 0.000000e+00
  br i1 %8226, label %8227, label %8234, !dx.controlflow.hints !154

; <label>:8227                                    ; preds = %8218
  %8228 = fmul fast float %8223, 0x3FF7154760000000
  %8229 = call float @dx.op.unary.f32(i32 21, float %8228)  ; Exp(value)
  %8230 = fsub fast float 1.000000e+00, %8229
  %8231 = fmul fast float %8220, %8230
  %8232 = fsub fast float -0.000000e+00, %8231
  %8233 = fdiv fast float %8232, %8223
  br label %8234

; <label>:8234                                    ; preds = %8227, %8218
  %8235 = phi float [ %8233, %8227 ], [ %8220, %8218 ]
  %8236 = phi float [ %8229, %8227 ], [ 1.000000e+00, %8218 ]
  %8237 = fcmp fast une float %8224, 0.000000e+00
  br i1 %8237, label %8238, label %8245, !dx.controlflow.hints !154

; <label>:8238                                    ; preds = %8234
  %8239 = fmul fast float %8224, 0x3FF7154760000000
  %8240 = call float @dx.op.unary.f32(i32 21, float %8239)  ; Exp(value)
  %8241 = fsub fast float 1.000000e+00, %8240
  %8242 = fmul fast float %8221, %8241
  %8243 = fsub fast float -0.000000e+00, %8242
  %8244 = fdiv fast float %8243, %8224
  br label %8245

; <label>:8245                                    ; preds = %8238, %8234
  %8246 = phi float [ %8244, %8238 ], [ %8221, %8234 ]
  %8247 = phi float [ %8240, %8238 ], [ 1.000000e+00, %8234 ]
  %8248 = fcmp fast une float %8225, 0.000000e+00
  br i1 %8248, label %8249, label %8256, !dx.controlflow.hints !154

; <label>:8249                                    ; preds = %8245
  %8250 = fmul fast float %8225, 0x3FF7154760000000
  %8251 = call float @dx.op.unary.f32(i32 21, float %8250)  ; Exp(value)
  %8252 = fsub fast float 1.000000e+00, %8251
  %8253 = fmul fast float %8222, %8252
  %8254 = fsub fast float -0.000000e+00, %8253
  %8255 = fdiv fast float %8254, %8225
  br label %8256

; <label>:8256                                    ; preds = %8249, %8245, %8205, %8198
  %8257 = phi float [ %8255, %8249 ], [ %8217, %8205 ], [ %8202, %8198 ], [ %8222, %8245 ]
  %8258 = phi float [ %8246, %8249 ], [ %8216, %8205 ], [ %8201, %8198 ], [ %8246, %8245 ]
  %8259 = phi float [ %8235, %8249 ], [ %8215, %8205 ], [ %8200, %8198 ], [ %8235, %8245 ]
  %8260 = phi float [ %8251, %8249 ], [ %8207, %8205 ], [ 1.000000e+00, %8198 ], [ 1.000000e+00, %8245 ]
  %8261 = phi float [ %8247, %8249 ], [ %8207, %8205 ], [ 1.000000e+00, %8198 ], [ %8247, %8245 ]
  %8262 = phi float [ %8236, %8249 ], [ %8207, %8205 ], [ 1.000000e+00, %8198 ], [ %8236, %8245 ]
  %8263 = fmul fast float %8262, %8174
  %8264 = fmul fast float %8261, %8185
  %8265 = fmul fast float %8260, %8196
  %8266 = fadd fast float %8263, %8259
  %8267 = fadd fast float %8264, %8258
  %8268 = fadd fast float %8265, %8257
  %8269 = fmul fast float %8262, %8173
  %8270 = fmul fast float %8261, %8184
  %8271 = fmul fast float %8260, %8195
  br label %8272

; <label>:8272                                    ; preds = %8256, %8067
  %8273 = phi float [ %8271, %8256 ], [ %8073, %8067 ]
  %8274 = phi float [ %8270, %8256 ], [ %8072, %8067 ]
  %8275 = phi float [ %8269, %8256 ], [ %8071, %8067 ]
  %8276 = phi float [ %8268, %8256 ], [ %8070, %8067 ]
  %8277 = phi float [ %8267, %8256 ], [ %8069, %8067 ]
  %8278 = phi float [ %8266, %8256 ], [ %8068, %8067 ]
  %8279 = fmul fast float %8278, %7232
  %8280 = fmul fast float %8277, %7233
  %8281 = fmul fast float %8276, %7234
  %8282 = fmul fast float %8275, %7515
  %8283 = call float @dx.op.dot3.f32(i32 55, float %8275, float %8274, float %8273, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8284 = call float @dx.op.dot3.f32(i32 55, float %8279, float %8280, float %8281, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8285 = select i1 %269, float %8283, float %8275
  %8286 = select i1 %269, float %8283, float %8274
  %8287 = select i1 %269, float 1.000000e+00, float %8273
  %8288 = select i1 %269, float %8284, float %8279
  %8289 = select i1 %269, float 0.000000e+00, float %8280
  %8290 = select i1 %269, float 0.000000e+00, float %8281
  %8291 = fmul fast float %8285, %7509
  %8292 = fmul fast float %8286, %7510
  %8293 = fmul fast float %8287, %7511
  %8294 = fadd fast float %8291, %8288
  %8295 = fadd fast float %8292, %8289
  %8296 = fadd fast float %8290, %8293
  %8297 = fmul fast float %8285, %7512
  %8298 = fmul fast float %8286, %7513
  %8299 = fmul fast float %8287, %7514
  %8300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8301 = extractvalue %dx.types.CBufRet.i32 %8300, 0
  %8302 = icmp eq i32 %8301, 0
  br i1 %8302, label %8670, label %8303, !dx.controlflow.hints !156

; <label>:8303                                    ; preds = %8272
  %8304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8305 = extractvalue %dx.types.CBufRet.f32 %8304, 2
  %8306 = extractvalue %dx.types.CBufRet.f32 %8304, 3
  %8307 = fmul fast float %8305, %97
  %8308 = fmul fast float %8306, %98
  %8309 = fmul fast float %8307, 2.000000e+00
  %8310 = fmul fast float %8308, 2.000000e+00
  %8311 = fsub fast float 1.000000e+00, %8309
  %8312 = fsub fast float 1.000000e+00, %8310
  %8313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8314 = extractvalue %dx.types.CBufRet.f32 %8313, 0
  %8315 = extractvalue %dx.types.CBufRet.f32 %8313, 1
  %8316 = extractvalue %dx.types.CBufRet.f32 %8313, 2
  %8317 = fmul fast float %8311, %8314
  %8318 = fmul fast float %8311, %8315
  %8319 = fmul fast float %8311, %8316
  %8320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8321 = extractvalue %dx.types.CBufRet.f32 %8320, 0
  %8322 = extractvalue %dx.types.CBufRet.f32 %8320, 1
  %8323 = extractvalue %dx.types.CBufRet.f32 %8320, 2
  %8324 = fmul fast float %8312, %8321
  %8325 = fmul fast float %8312, %8322
  %8326 = fmul fast float %8312, %8323
  %8327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8328 = extractvalue %dx.types.CBufRet.f32 %8327, 0
  %8329 = extractvalue %dx.types.CBufRet.f32 %8327, 1
  %8330 = extractvalue %dx.types.CBufRet.f32 %8327, 2
  %8331 = fadd fast float %8324, %8328
  %8332 = fadd fast float %8331, %8317
  %8333 = fadd fast float %8325, %8329
  %8334 = fadd fast float %8333, %8318
  %8335 = fadd fast float %8326, %8330
  %8336 = fadd fast float %8335, %8319
  %8337 = fmul fast float %8332, %7508
  %8338 = fmul fast float %8334, %7508
  %8339 = fmul fast float %8336, %7508
  %8340 = fmul fast float %8337, %8337
  %8341 = fmul fast float %8338, %8338
  %8342 = fadd fast float %8340, %8341
  %8343 = fmul fast float %8339, %8339
  %8344 = fadd fast float %8342, %8343
  %8345 = call float @dx.op.unary.f32(i32 24, float %8344)  ; Sqrt(value)
  %8346 = extractvalue %dx.types.CBufRet.f32 %7235, 0
  %8347 = fsub fast float %8345, %8346
  %8348 = extractvalue %dx.types.CBufRet.f32 %7235, 2
  %8349 = fmul fast float %8347, %8348
  %8350 = call float @dx.op.unary.f32(i32 7, float %8349)  ; Saturate(value)
  %8351 = fadd fast float %8350, -5.000000e-01
  %8352 = fmul fast float %8351, 2.000000e+00
  %8353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8354 = extractvalue %dx.types.CBufRet.f32 %8353, 2
  %8355 = call float @dx.op.binary.f32(i32 36, float %8354, float %8352)  ; FMin(a,b)
  %8356 = fsub fast float -0.000000e+00, %8354
  %8357 = fcmp fast ogt float %8355, %8356
  br i1 %8357, label %8358, label %8670, !dx.controlflow.hints !157

; <label>:8358                                    ; preds = %8303
  %8359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8360 = extractvalue %dx.types.CBufRet.f32 %8359, 3
  %8361 = fcmp fast ogt float %8360, 0.000000e+00
  br i1 %8361, label %8362, label %8437, !dx.controlflow.hints !158

; <label>:8362                                    ; preds = %8358
  %8363 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %8364 = extractvalue %dx.types.Dimensions %8363, 0
  %8365 = sitofp i32 %8364 to float
  %8366 = extractvalue %dx.types.Dimensions %8363, 1
  %8367 = sitofp i32 %8366 to float
  %8368 = fmul fast float %8307, %8365
  %8369 = fmul fast float %8308, %8367
  %8370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8371 = extractvalue %dx.types.CBufRet.f32 %8370, 1
  %8372 = fsub fast float -0.000000e+00, %8371
  %8373 = fptoui float %8372 to i32
  %8374 = fptoui float %8368 to i32
  %8375 = fptoui float %8369 to i32
  %8376 = and i32 %8373, 31
  %8377 = lshr i32 %8374, %8376
  %8378 = lshr i32 %8375, %8376
  %8379 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 %8373, i32 %8377, i32 %8378, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8380 = extractvalue %dx.types.ResRet.f32 %8379, 0
  %8381 = fcmp fast olt float %8380, -1.000000e+00
  %8382 = fcmp fast ogt float %8380, -1.000000e+00
  %8383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8384 = extractvalue %dx.types.CBufRet.f32 %8383, 1
  %8385 = select i1 %8382, float %8384, float 1.000000e+00
  %8386 = fadd fast float %8380, 1.000000e+00
  %8387 = fmul fast float %8385, %8386
  %8388 = call float @dx.op.unary.f32(i32 6, float %8387)  ; FAbs(value)
  %8389 = extractvalue %dx.types.CBufRet.f32 %8383, 3
  %8390 = fcmp fast oge float %8388, %8389
  %8391 = select i1 %8390, float 0x4197782600000000, float %8388
  %8392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8393 = extractvalue %dx.types.CBufRet.f32 %8392, 0
  %8394 = extractvalue %dx.types.CBufRet.f32 %8392, 1
  %8395 = extractvalue %dx.types.CBufRet.f32 %8392, 2
  %8396 = select i1 %8381, float %8393, float %8314
  %8397 = select i1 %8381, float %8394, float %8315
  %8398 = select i1 %8381, float %8395, float %8316
  %8399 = fmul fast float %8396, %8311
  %8400 = fmul fast float %8397, %8311
  %8401 = fmul fast float %8398, %8311
  %8402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.f32 %8402, 0
  %8404 = extractvalue %dx.types.CBufRet.f32 %8402, 1
  %8405 = extractvalue %dx.types.CBufRet.f32 %8402, 2
  %8406 = select i1 %8381, float %8403, float %8321
  %8407 = select i1 %8381, float %8404, float %8322
  %8408 = select i1 %8381, float %8405, float %8323
  %8409 = fmul fast float %8406, %8312
  %8410 = fmul fast float %8407, %8312
  %8411 = fmul fast float %8408, %8312
  %8412 = fadd fast float %8409, %8399
  %8413 = fadd fast float %8410, %8400
  %8414 = fadd fast float %8411, %8401
  %8415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.CBufRet.f32 %8415, 1
  %8418 = extractvalue %dx.types.CBufRet.f32 %8415, 2
  %8419 = select i1 %8381, float %8416, float %8328
  %8420 = select i1 %8381, float %8417, float %8329
  %8421 = select i1 %8381, float %8418, float %8330
  %8422 = fadd fast float %8412, %8419
  %8423 = fadd fast float %8413, %8420
  %8424 = fadd fast float %8414, %8421
  %8425 = fmul fast float %8422, %8391
  %8426 = fmul fast float %8423, %8391
  %8427 = fmul fast float %8424, %8391
  %8428 = fmul fast float %8425, %8425
  %8429 = fmul fast float %8426, %8426
  %8430 = fadd fast float %8428, %8429
  %8431 = fmul fast float %8427, %8427
  %8432 = fadd fast float %8430, %8431
  %8433 = call float @dx.op.unary.f32(i32 24, float %8432)  ; Sqrt(value)
  %8434 = fsub fast float %8433, %8346
  %8435 = fmul fast float %8434, %8348
  %8436 = call float @dx.op.unary.f32(i32 7, float %8435)  ; Saturate(value)
  br label %8437

; <label>:8437                                    ; preds = %8362, %8358
  %8438 = phi float [ %8436, %8362 ], [ 1.000000e+00, %8358 ]
  %8439 = fmul fast float %8355, 5.000000e-01
  %8440 = fadd fast float %8439, 5.000000e-01
  %8441 = call float @dx.op.unary.f32(i32 22, float %8440)  ; Frc(value)
  %8442 = call float @dx.op.unary.f32(i32 27, float %8441)  ; Round_ni(value)
  %8443 = call float @dx.op.unary.f32(i32 22, float %8441)  ; Frc(value)
  %8444 = fmul fast float %8443, 2.000000e+00
  %8445 = fadd fast float %8444, -1.000000e+00
  %8446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %36, float %8307, float %8308, float %8442, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8447 = extractvalue %dx.types.ResRet.f32 %8446, 0
  %8448 = extractvalue %dx.types.ResRet.f32 %8446, 1
  %8449 = extractvalue %dx.types.ResRet.f32 %8446, 2
  %8450 = extractvalue %dx.types.ResRet.f32 %8446, 3
  %8451 = fadd fast float %8447, -5.000000e-01
  %8452 = fadd fast float %8449, -5.000000e-01
  %8453 = fmul fast float %8451, 0xBFD5555560000000
  %8454 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8452, float %8453)  ; FMad(a,b,c)
  %8455 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8448, float 0.000000e+00)  ; FMad(a,b,c)
  %8456 = fadd fast float %8455, %8450
  %8457 = fmul fast float %8451, -7.500000e-01
  %8458 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8452, float %8457)  ; FMad(a,b,c)
  %8459 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8448, float 0.000000e+00)  ; FMad(a,b,c)
  %8460 = fadd fast float %8459, %8450
  %8461 = call float @dx.op.binary.f32(i32 35, float %8454, float -1.000000e+00)  ; FMax(a,b)
  %8462 = call float @dx.op.binary.f32(i32 35, float %8456, float -1.000000e+00)  ; FMax(a,b)
  %8463 = call float @dx.op.binary.f32(i32 35, float %8458, float -1.000000e+00)  ; FMax(a,b)
  %8464 = call float @dx.op.binary.f32(i32 35, float %8460, float -1.000000e+00)  ; FMax(a,b)
  %8465 = call float @dx.op.binary.f32(i32 36, float %8461, float 1.000000e+00)  ; FMin(a,b)
  %8466 = call float @dx.op.binary.f32(i32 36, float %8462, float 1.000000e+00)  ; FMin(a,b)
  %8467 = call float @dx.op.binary.f32(i32 36, float %8463, float 1.000000e+00)  ; FMin(a,b)
  %8468 = call float @dx.op.binary.f32(i32 36, float %8464, float 1.000000e+00)  ; FMin(a,b)
  %8469 = fcmp fast olt float %8465, 0x3FEFFF8020000000
  br i1 %8469, label %8470, label %8585, !dx.controlflow.hints !159

; <label>:8470                                    ; preds = %8437
  %8471 = extractvalue %dx.types.CBufRet.f32 %8353, 3
  %8472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8473 = extractvalue %dx.types.CBufRet.f32 %8472, 0
  %8474 = extractvalue %dx.types.CBufRet.f32 %8472, 1
  %8475 = extractvalue %dx.types.CBufRet.f32 %8472, 2
  %8476 = extractvalue %dx.types.CBufRet.f32 %8472, 3
  %8477 = fsub fast float %8473, %8465
  %8478 = fsub fast float %8474, %8466
  %8479 = fsub fast float %8475, %8467
  %8480 = fsub fast float %8476, %8468
  %8481 = fmul fast float %8477, %8471
  %8482 = fmul fast float %8478, %8471
  %8483 = fmul fast float %8479, %8471
  %8484 = fmul fast float %8480, %8471
  %8485 = fadd fast float %8481, %8465
  %8486 = fadd fast float %8482, %8466
  %8487 = fsub fast float -0.000000e+00, %8486
  %8488 = fadd fast float %8483, %8467
  %8489 = fadd fast float %8484, %8468
  %8490 = fmul fast float %8485, %8485
  %8491 = fsub fast float %8486, %8490
  %8492 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8491)  ; FMax(a,b)
  %8493 = fdiv fast float 1.000000e+00, %8492
  %8494 = fmul fast float %8486, %8485
  %8495 = fsub fast float %8488, %8494
  %8496 = fsub fast float %8445, %8485
  %8497 = fmul fast float %8445, %8445
  %8498 = fsub fast float %8497, %8486
  %8499 = fmul fast float %8496, %8493
  %8500 = fmul fast float %8499, %8495
  %8501 = fsub fast float %8498, %8500
  %8502 = fmul fast float %8486, %8486
  %8503 = fsub fast float %8489, %8502
  %8504 = fmul fast float %8495, %8495
  %8505 = fmul fast float %8504, %8493
  %8506 = fsub fast float %8503, %8505
  %8507 = fdiv fast float %8501, %8506
  %8508 = fmul fast float %8495, %8507
  %8509 = fsub fast float %8496, %8508
  %8510 = fmul fast float %8509, %8493
  %8511 = fmul fast float %8510, %8485
  %8512 = fsub fast float 1.000000e+00, %8511
  %8513 = fmul fast float %8486, %8507
  %8514 = fsub fast float %8512, %8513
  %8515 = fmul fast float %8510, %8510
  %8516 = fmul fast float %8507, 4.000000e+00
  %8517 = fmul fast float %8516, %8514
  %8518 = fsub fast float %8515, %8517
  %8519 = call float @dx.op.unary.f32(i32 24, float %8518)  ; Sqrt(value)
  %8520 = fcmp fast oge float %8510, 0.000000e+00
  %8521 = fsub fast float -0.000000e+00, %8519
  %8522 = select i1 %8520, float %8521, float %8519
  %8523 = fsub fast float %8522, %8510
  %8524 = fdiv fast float %8523, %8507
  %8525 = fdiv fast float %8514, %8523
  %8526 = fmul fast float %8524, 5.000000e-01
  %8527 = fmul fast float %8525, 2.000000e+00
  %8528 = select i1 %8520, float %8526, float %8527
  %8529 = select i1 %8520, float %8527, float %8526
  %8530 = call float @dx.op.binary.f32(i32 35, float %8528, float %8529)  ; FMax(a,b)
  %8531 = call float @dx.op.binary.f32(i32 36, float %8528, float %8529)  ; FMin(a,b)
  %8532 = fcmp fast ogt float %8445, %8531
  br i1 %8532, label %8533, label %8543

; <label>:8533                                    ; preds = %8470
  %8534 = fsub fast float %8445, %8531
  %8535 = fsub fast float %8530, %8531
  %8536 = fmul fast float %8534, %8535
  %8537 = fmul fast float %8530, %8445
  %8538 = fadd fast float %8530, %8445
  %8539 = fmul fast float %8538, %8485
  %8540 = fadd fast float %8537, %8486
  %8541 = fsub fast float %8540, %8539
  %8542 = fdiv fast float %8541, %8536
  br label %8543

; <label>:8543                                    ; preds = %8533, %8470
  %8544 = phi float [ %8542, %8533 ], [ 0.000000e+00, %8470 ]
  %8545 = fcmp fast ogt float %8445, %8530
  %8546 = fsub fast float %8445, %8530
  br i1 %8545, label %8547, label %8557

; <label>:8547                                    ; preds = %8543
  %8548 = fsub fast float %8530, %8531
  %8549 = fmul fast float %8548, %8546
  %8550 = fmul fast float %8531, %8445
  %8551 = fadd fast float %8531, %8445
  %8552 = fmul fast float %8551, %8485
  %8553 = fsub fast float %8487, %8550
  %8554 = fadd fast float %8553, %8552
  %8555 = fdiv fast float %8554, %8549
  %8556 = fadd fast float %8555, %8544
  br label %8557

; <label>:8557                                    ; preds = %8547, %8543
  %8558 = phi float [ %8556, %8547 ], [ %8544, %8543 ]
  %8559 = fsub fast float %8445, %8531
  %8560 = fmul fast float %8559, %8546
  %8561 = fmul fast float %8531, %8530
  %8562 = fadd fast float %8531, %8530
  %8563 = fmul fast float %8562, %8485
  %8564 = fadd fast float %8561, %8486
  %8565 = fsub fast float %8564, %8563
  %8566 = fdiv fast float %8565, %8560
  %8567 = call float @dx.op.unary.f32(i32 7, float %8558)  ; Saturate(value)
  %8568 = fcmp fast oeq float %7236, 0.000000e+00
  %8569 = extractvalue %dx.types.CBufRet.f32 %8353, 0
  %8570 = fcmp fast oeq float %8569, 0.000000e+00
  %8571 = or i1 %8568, %8570
  %8572 = fmul fast float %8569, 2.000000e+00
  %8573 = fadd fast float %8354, %8355
  %8574 = fdiv fast float %8573, %8572
  %8575 = call float @dx.op.unary.f32(i32 7, float %8574)  ; Saturate(value)
  %8576 = fmul fast float %8575, 2.000000e+00
  %8577 = fsub fast float 3.000000e+00, %8576
  %8578 = fmul fast float %8575, %8575
  %8579 = fmul fast float %8578, %8577
  %8580 = select i1 %8571, float 1.000000e+00, float %8579
  %8581 = fmul fast float %8566, %7236
  %8582 = fadd fast float %8567, %8581
  %8583 = call float @dx.op.unary.f32(i32 7, float %8582)  ; Saturate(value)
  %8584 = fmul fast float %8580, %8583
  br label %8585

; <label>:8585                                    ; preds = %8557, %8437
  %8586 = phi float [ %8584, %8557 ], [ 0.000000e+00, %8437 ]
  %8587 = fsub fast float 1.000000e+00, %8586
  %8588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %36, float %8307, float %8308, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8589 = extractvalue %dx.types.ResRet.f32 %8588, 0
  %8590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8591 = extractvalue %dx.types.CBufRet.i32 %8590, 2
  %8592 = icmp eq i32 %8591, 0
  br i1 %8592, label %8598, label %8593

; <label>:8593                                    ; preds = %8585
  %8594 = call float @dx.op.unary.f32(i32 7, float %8586)  ; Saturate(value)
  %8595 = fadd fast float %8589, -1.000000e+00
  %8596 = fmul fast float %8594, %8595
  %8597 = fadd fast float %8596, 1.000000e+00
  br label %8598

; <label>:8598                                    ; preds = %8593, %8585
  %8599 = phi float [ %8597, %8593 ], [ %8587, %8585 ]
  br i1 %8361, label %8600, label %8618

; <label>:8600                                    ; preds = %8598
  %8601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8602 = extractvalue %dx.types.CBufRet.f32 %8601, 1
  %8603 = fsub fast float %8438, %8602
  %8604 = call float @dx.op.unary.f32(i32 7, float %8603)  ; Saturate(value)
  %8605 = fsub fast float %8438, %8360
  %8606 = call float @dx.op.unary.f32(i32 7, float %8605)  ; Saturate(value)
  %8607 = fsub fast float %8604, %8606
  %8608 = fsub fast float %8440, %8606
  %8609 = fdiv fast float %8608, %8607
  %8610 = call float @dx.op.unary.f32(i32 7, float %8609)  ; Saturate(value)
  %8611 = fmul fast float %8610, 2.000000e+00
  %8612 = fsub fast float 3.000000e+00, %8611
  %8613 = fsub fast float %8589, %8599
  %8614 = fmul fast float %8610, %8610
  %8615 = fmul fast float %8614, %8613
  %8616 = fmul fast float %8615, %8612
  %8617 = fadd fast float %8616, %8599
  br label %8618

; <label>:8618                                    ; preds = %8600, %8598
  %8619 = phi float [ %8617, %8600 ], [ %8599, %8598 ]
  %8620 = call float @dx.op.binary.f32(i32 35, float %8589, float %8619)  ; FMax(a,b)
  %8621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8622 = extractvalue %dx.types.CBufRet.i32 %8621, 2
  %8623 = and i32 %8622, 1
  %8624 = icmp eq i32 %8623, 0
  %8625 = fcmp fast une float %8620, 1.000000e+00
  %8626 = and i1 %8625, %8624
  br i1 %8626, label %8627, label %8646

; <label>:8627                                    ; preds = %8618
  %8628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %36, float %8307, float %8308, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8629 = extractvalue %dx.types.ResRet.f32 %8628, 0
  %8630 = extractvalue %dx.types.ResRet.f32 %8628, 1
  %8631 = extractvalue %dx.types.ResRet.f32 %8628, 2
  %8632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8633 = extractvalue %dx.types.CBufRet.f32 %8632, 1
  %8634 = fmul fast float %8633, %8629
  %8635 = fmul fast float %8633, %8630
  %8636 = fmul fast float %8633, %8631
  %8637 = fcmp fast ogt float %8589, 0x3FEFFF2E40000000
  %8638 = fsub fast float 1.000000e+00, %8620
  %8639 = fsub fast float 1.000000e+00, %8589
  %8640 = fdiv fast float %8638, %8639
  %8641 = call float @dx.op.unary.f32(i32 7, float %8640)  ; Saturate(value)
  %8642 = select i1 %8637, float 0.000000e+00, float %8641
  %8643 = fmul fast float %8634, %8642
  %8644 = fmul fast float %8635, %8642
  %8645 = fmul fast float %8636, %8642
  br label %8646

; <label>:8646                                    ; preds = %8627, %8618
  %8647 = phi float [ 0.000000e+00, %8618 ], [ %8643, %8627 ]
  %8648 = phi float [ 0.000000e+00, %8618 ], [ %8644, %8627 ]
  %8649 = phi float [ 0.000000e+00, %8618 ], [ %8645, %8627 ]
  %8650 = fmul fast float %8647, %7232
  %8651 = fmul fast float %8648, %7233
  %8652 = fmul fast float %8649, %7234
  %8653 = fmul fast float %8620, %8282
  %8654 = call float @dx.op.dot3.f32(i32 55, float %8620, float %8620, float %8620, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8655 = call float @dx.op.dot3.f32(i32 55, float %8650, float %8651, float %8652, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8656 = select i1 %269, float %8654, float %8620
  %8657 = select i1 %269, float 1.000000e+00, float %8620
  %8658 = select i1 %269, float %8655, float %8650
  %8659 = select i1 %269, float 0.000000e+00, float %8651
  %8660 = select i1 %269, float 0.000000e+00, float %8652
  %8661 = fmul fast float %8656, %8294
  %8662 = fmul fast float %8656, %8295
  %8663 = fmul fast float %8657, %8296
  %8664 = fadd fast float %8661, %8658
  %8665 = fadd fast float %8662, %8659
  %8666 = fadd fast float %8660, %8663
  %8667 = fmul fast float %8656, %8297
  %8668 = fmul fast float %8656, %8298
  %8669 = fmul fast float %8657, %8299
  br label %8670

; <label>:8670                                    ; preds = %8646, %8303, %8272, %7504
  %8671 = phi float [ %7509, %7504 ], [ %8294, %8272 ], [ %8664, %8646 ], [ %8294, %8303 ]
  %8672 = phi float [ %7510, %7504 ], [ %8295, %8272 ], [ %8665, %8646 ], [ %8295, %8303 ]
  %8673 = phi float [ %7511, %7504 ], [ %8296, %8272 ], [ %8666, %8646 ], [ %8296, %8303 ]
  %8674 = phi float [ %7512, %7504 ], [ %8297, %8272 ], [ %8667, %8646 ], [ %8297, %8303 ]
  %8675 = phi float [ %7513, %7504 ], [ %8298, %8272 ], [ %8668, %8646 ], [ %8298, %8303 ]
  %8676 = phi float [ %7514, %7504 ], [ %8299, %8272 ], [ %8669, %8646 ], [ %8299, %8303 ]
  %8677 = phi float [ %7515, %7504 ], [ %8282, %8272 ], [ %8653, %8646 ], [ %8282, %8303 ]
  %8678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8679 = extractvalue %dx.types.CBufRet.f32 %8678, 2
  %8680 = extractvalue %dx.types.CBufRet.f32 %8678, 3
  %8681 = fmul fast float %8679, %97
  %8682 = fmul fast float %8680, %98
  %8683 = call float @dx.op.unary.f32(i32 7, float %8681)  ; Saturate(value)
  %8684 = call float @dx.op.unary.f32(i32 7, float %8682)  ; Saturate(value)
  %8685 = select i1 %7246, i32 2, i32 0
  %8686 = or i32 %8685, 1
  %8687 = uitofp i32 %8686 to float
  %8688 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %8683, float %8684, float %8687, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8689 = extractvalue %dx.types.ResRet.f32 %8688, 0
  %8690 = extractvalue %dx.types.ResRet.f32 %8688, 1
  %8691 = extractvalue %dx.types.ResRet.f32 %8688, 2
  %8692 = extractvalue %dx.types.ResRet.f32 %8688, 3
  %8693 = add nuw nsw i32 %8685, 2
  %8694 = uitofp i32 %8693 to float
  %8695 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %8683, float %8684, float %8694, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8696 = extractvalue %dx.types.ResRet.f32 %8695, 0
  %8697 = extractvalue %dx.types.ResRet.f32 %8695, 1
  %8698 = extractvalue %dx.types.ResRet.f32 %8695, 2
  %8699 = extractvalue %dx.types.ResRet.f32 %8695, 3
  %8700 = call float @dx.op.binary.f32(i32 35, float %8690, float %8691)  ; FMax(a,b)
  %8701 = call float @dx.op.binary.f32(i32 35, float %8689, float %8700)  ; FMax(a,b)
  %8702 = call float @dx.op.binary.f32(i32 35, float %8701, float %8692)  ; FMax(a,b)
  %8703 = call float @dx.op.binary.f32(i32 36, float %8697, float %8698)  ; FMin(a,b)
  %8704 = call float @dx.op.binary.f32(i32 36, float %8696, float %8703)  ; FMin(a,b)
  %8705 = call float @dx.op.binary.f32(i32 36, float %8704, float %8699)  ; FMin(a,b)
  %8706 = fmul fast float %8702, 2.550000e+02
  %8707 = fadd fast float %8706, 0x3F70101020000000
  %8708 = fptoui float %8707 to i32
  %8709 = fmul fast float %8705, 2.550000e+02
  %8710 = fadd fast float %8709, 0x3F70101020000000
  %8711 = fptoui float %8710 to i32
  %8712 = icmp ult i32 %8708, %8711
  br i1 %8712, label %8713, label %8882

; <label>:8713                                    ; preds = %8670
  %8714 = fcmp fast ogt float %87, 9.843750e-01
  %8715 = fadd fast float %7508, -4.000000e+00
  %8716 = select i1 %8714, float -4.000000e+00, float %8715
  %8717 = call float @dx.op.binary.f32(i32 35, float %8716, float 0.000000e+00)  ; FMax(a,b)
  %8718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8719 = extractvalue %dx.types.CBufRet.f32 %8718, 0
  %8720 = fadd fast float %8719, %8717
  %8721 = extractvalue %dx.types.CBufRet.f32 %8718, 2
  %8722 = fmul fast float %8720, %8721
  %8723 = call float @dx.op.unary.f32(i32 23, float %8722)  ; Log(value)
  %8724 = extractvalue %dx.types.CBufRet.f32 %8718, 3
  %8725 = fmul fast float %8724, %8723
  %8726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8727 = extractvalue %dx.types.CBufRet.f32 %8726, 2
  %8728 = fmul fast float %8725, %8727
  %8729 = call float @dx.op.unary.f32(i32 7, float %8728)  ; Saturate(value)
  %8730 = uitofp i32 %8708 to float
  %8731 = uitofp i32 %8711 to float
  %8732 = fadd fast float %8730, 5.000000e-01
  %8733 = fadd fast float %8731, 5.000000e-01
  %8734 = fmul fast float %8727, %8732
  %8735 = fmul fast float %8727, %8733
  %8736 = fadd fast float %8734, 0x3F0FFB4800000000
  %8737 = fadd fast float %8735, 0xBF0FFB4800000000
  %8738 = call float @dx.op.binary.f32(i32 35, float %8729, float %8736)  ; FMax(a,b)
  %8739 = call float @dx.op.binary.f32(i32 36, float %8738, float %8737)  ; FMin(a,b)
  %8740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8741 = extractvalue %dx.types.CBufRet.f32 %8740, 1
  %8742 = extractvalue %dx.types.CBufRet.f32 %8740, 2
  %8743 = extractvalue %dx.types.CBufRet.f32 %8740, 0
  %8744 = select i1 %7246, float %8743, float 0.000000e+00
  %8745 = fmul fast float %8741, %8739
  %8746 = fadd fast float %8744, %8745
  %8747 = fadd fast float %8744, %8742
  %8748 = fsub fast float %8741, %8742
  %8749 = fadd fast float %8748, %8744
  %8750 = call float @dx.op.binary.f32(i32 35, float %8746, float %8747)  ; FMax(a,b)
  %8751 = call float @dx.op.binary.f32(i32 36, float %8750, float %8749)  ; FMin(a,b)
  %8752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %34, float %8683, float %8684, float %8751, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8753 = extractvalue %dx.types.ResRet.f32 %8752, 0
  %8754 = extractvalue %dx.types.ResRet.f32 %8752, 1
  %8755 = extractvalue %dx.types.ResRet.f32 %8752, 2
  %8756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8757 = extractvalue %dx.types.CBufRet.i32 %8756, 0
  %8758 = extractvalue %dx.types.CBufRet.i32 %8756, 1
  %8759 = uitofp i32 %8757 to float
  %8760 = uitofp i32 %8758 to float
  %8761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8762 = extractvalue %dx.types.CBufRet.f32 %8761, 0
  %8763 = extractvalue %dx.types.CBufRet.f32 %8761, 1
  %8764 = fmul fast float %8759, %8683
  %8765 = fmul fast float %8760, %8684
  %8766 = fadd fast float %8764, -5.000000e-01
  %8767 = fadd fast float %8765, -5.000000e-01
  %8768 = call float @dx.op.unary.f32(i32 22, float %8766)  ; Frc(value)
  %8769 = call float @dx.op.unary.f32(i32 22, float %8767)  ; Frc(value)
  %8770 = fmul fast float %8768, %8768
  %8771 = fmul fast float %8770, %8768
  %8772 = fsub fast float 3.000000e+00, %8768
  %8773 = fmul fast float %8770, %8772
  %8774 = fmul fast float %8768, 3.000000e+00
  %8775 = fmul fast float %8771, 3.000000e+00
  %8776 = fmul fast float %8770, 6.000000e+00
  %8777 = fsub fast float %8775, %8776
  %8778 = fadd fast float %8777, 4.000000e+00
  %8779 = fmul fast float %8778, 0x3FC5555560000000
  %8780 = fmul fast float %8771, -3.000000e+00
  %8781 = fadd fast float %8770, %8768
  %8782 = fmul fast float %8781, 3.000000e+00
  %8783 = fadd fast float %8780, 1.000000e+00
  %8784 = fadd fast float %8783, %8782
  %8785 = fmul fast float %8771, 0x3FC5555560000000
  %8786 = fmul fast float %8769, %8769
  %8787 = fmul fast float %8786, %8769
  %8788 = fsub fast float 3.000000e+00, %8769
  %8789 = fmul fast float %8786, %8788
  %8790 = fmul fast float %8769, 3.000000e+00
  %8791 = fmul fast float %8787, 3.000000e+00
  %8792 = fmul fast float %8786, 6.000000e+00
  %8793 = fsub fast float %8791, %8792
  %8794 = fadd fast float %8793, 4.000000e+00
  %8795 = fmul fast float %8794, 0x3FC5555560000000
  %8796 = fmul fast float %8787, -3.000000e+00
  %8797 = fadd fast float %8786, %8769
  %8798 = fmul fast float %8797, 3.000000e+00
  %8799 = fadd fast float %8796, 1.000000e+00
  %8800 = fadd fast float %8799, %8798
  %8801 = fmul fast float %8787, 0x3FC5555560000000
  %8802 = fadd fast float %8768, 1.000000e+00
  %8803 = fsub fast float 1.000000e+00, %8774
  %8804 = fadd fast float %8803, %8773
  %8805 = fadd fast float %8804, %8778
  %8806 = fmul fast float %8805, 0x3FC5555560000000
  %8807 = fdiv fast float %8779, %8806
  %8808 = fsub fast float %8802, %8807
  %8809 = fsub fast float 1.000000e+00, %8768
  %8810 = fadd fast float %8784, %8771
  %8811 = fmul fast float %8810, 0x3FC5555560000000
  %8812 = fdiv fast float %8785, %8811
  %8813 = fadd fast float %8809, %8812
  %8814 = fadd fast float %8769, 1.000000e+00
  %8815 = fsub fast float 1.000000e+00, %8790
  %8816 = fadd fast float %8815, %8789
  %8817 = fadd fast float %8816, %8794
  %8818 = fmul fast float %8817, 0x3FC5555560000000
  %8819 = fdiv fast float %8795, %8818
  %8820 = fsub fast float %8814, %8819
  %8821 = fsub fast float 1.000000e+00, %8769
  %8822 = fadd fast float %8800, %8787
  %8823 = fmul fast float %8822, 0x3FC5555560000000
  %8824 = fdiv fast float %8801, %8823
  %8825 = fadd fast float %8824, %8821
  %8826 = fmul fast float %8808, %8762
  %8827 = fsub fast float %8683, %8826
  %8828 = fmul fast float %8813, %8762
  %8829 = fadd fast float %8828, %8683
  %8830 = fmul fast float %8825, %8763
  %8831 = fadd fast float %8830, %8684
  %8832 = fmul fast float %8820, %8763
  %8833 = fsub fast float %8684, %8832
  %8834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8827, float %8833, float %8751, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8835 = extractvalue %dx.types.ResRet.f32 %8834, 0
  %8836 = extractvalue %dx.types.ResRet.f32 %8834, 1
  %8837 = extractvalue %dx.types.ResRet.f32 %8834, 2
  %8838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8829, float %8833, float %8751, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8839 = extractvalue %dx.types.ResRet.f32 %8838, 0
  %8840 = extractvalue %dx.types.ResRet.f32 %8838, 1
  %8841 = extractvalue %dx.types.ResRet.f32 %8838, 2
  %8842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8827, float %8831, float %8751, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8843 = extractvalue %dx.types.ResRet.f32 %8842, 0
  %8844 = extractvalue %dx.types.ResRet.f32 %8842, 1
  %8845 = extractvalue %dx.types.ResRet.f32 %8842, 2
  %8846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8829, float %8831, float %8751, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8847 = extractvalue %dx.types.ResRet.f32 %8846, 0
  %8848 = extractvalue %dx.types.ResRet.f32 %8846, 1
  %8849 = extractvalue %dx.types.ResRet.f32 %8846, 2
  %8850 = fsub fast float %8843, %8835
  %8851 = fsub fast float %8844, %8836
  %8852 = fsub fast float %8845, %8837
  %8853 = fmul fast float %8850, %8823
  %8854 = fmul fast float %8851, %8823
  %8855 = fmul fast float %8852, %8823
  %8856 = fadd fast float %8853, %8835
  %8857 = fadd fast float %8854, %8836
  %8858 = fadd fast float %8855, %8837
  %8859 = fsub fast float %8847, %8839
  %8860 = fsub fast float %8848, %8840
  %8861 = fsub fast float %8849, %8841
  %8862 = fmul fast float %8859, %8823
  %8863 = fmul fast float %8860, %8823
  %8864 = fmul fast float %8861, %8823
  %8865 = fsub fast float %8839, %8856
  %8866 = fadd fast float %8865, %8862
  %8867 = fsub fast float %8840, %8857
  %8868 = fadd fast float %8867, %8863
  %8869 = fsub fast float %8841, %8858
  %8870 = fadd fast float %8869, %8864
  %8871 = fmul fast float %8866, %8811
  %8872 = fmul fast float %8868, %8811
  %8873 = fmul fast float %8870, %8811
  %8874 = fadd fast float %8871, %8856
  %8875 = fadd fast float %8872, %8857
  %8876 = fadd fast float %8873, %8858
  %8877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8878 = extractvalue %dx.types.CBufRet.f32 %8877, 1
  %8879 = fmul fast float %8874, %8878
  %8880 = fmul fast float %8875, %8878
  %8881 = fmul fast float %8876, %8878
  br label %8882

; <label>:8882                                    ; preds = %8713, %8670
  %8883 = phi float [ %8753, %8713 ], [ 1.000000e+00, %8670 ]
  %8884 = phi float [ %8754, %8713 ], [ 1.000000e+00, %8670 ]
  %8885 = phi float [ %8755, %8713 ], [ 1.000000e+00, %8670 ]
  %8886 = phi float [ %8879, %8713 ], [ 0.000000e+00, %8670 ]
  %8887 = phi float [ %8880, %8713 ], [ 0.000000e+00, %8670 ]
  %8888 = phi float [ %8881, %8713 ], [ 0.000000e+00, %8670 ]
  %8889 = fmul fast float %8886, %7232
  %8890 = fmul fast float %8887, %7233
  %8891 = fmul fast float %8888, %7234
  %8892 = fmul fast float %8883, %8677
  %8893 = call float @dx.op.dot3.f32(i32 55, float %8883, float %8884, float %8885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8894 = call float @dx.op.dot3.f32(i32 55, float %8889, float %8890, float %8891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8895 = select i1 %269, float %8893, float %8883
  %8896 = select i1 %269, float %8893, float %8884
  %8897 = select i1 %269, float 1.000000e+00, float %8885
  %8898 = select i1 %269, float %8894, float %8889
  %8899 = select i1 %269, float 0.000000e+00, float %8890
  %8900 = select i1 %269, float 0.000000e+00, float %8891
  %8901 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8902 = extractvalue %dx.types.CBufRet.i32 %8901, 3
  %8903 = and i32 %8902, 3
  %8904 = icmp ne i32 %8903, 0
  %8905 = and i32 %8902, 4
  %8906 = icmp ne i32 %8905, 0
  %8907 = and i1 %8904, %8906
  %8908 = and i1 %269, %8907
  br i1 %8908, label %8909, label %8915

; <label>:8909                                    ; preds = %8882
  %8910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8911 = extractvalue %dx.types.CBufRet.f32 %8910, 1
  %8912 = fadd fast float %8892, -1.000000e+00
  %8913 = fmul fast float %8911, %8912
  %8914 = fadd fast float %8913, 1.000000e+00
  br label %8915

; <label>:8915                                    ; preds = %8909, %8882
  %8916 = phi float [ %8914, %8909 ], [ %8892, %8882 ]
  %8917 = fadd fast float %8674, %8671
  %8918 = fmul fast float %8895, %8917
  %8919 = fadd fast float %8918, %8898
  %8920 = fadd fast float %8675, %8672
  %8921 = fmul fast float %8896, %8920
  %8922 = fadd fast float %8921, %8899
  %8923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8924 = extractvalue %dx.types.CBufRet.f32 %8923, 0
  br i1 %269, label %8925, label %8940

; <label>:8925                                    ; preds = %8915
  %8926 = fadd fast float %8919, %8922
  %8927 = fmul fast float %8924, %8926
  %8928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8929 = extractvalue %dx.types.CBufRet.f32 %8928, 3
  %8930 = extractvalue %dx.types.CBufRet.f32 %7216, 1
  %8931 = fsub fast float %7221, %7215
  %8932 = fadd fast float %8931, %7222
  %8933 = fsub fast float %8932, %8930
  %8934 = extractvalue %dx.types.CBufRet.f32 %7216, 2
  %8935 = fmul fast float %8933, %8934
  %8936 = call float @dx.op.unary.f32(i32 7, float %8935)  ; Saturate(value)
  %8937 = fsub fast float %8936, %8929
  %8938 = fmul fast float %8937, %8916
  %8939 = fadd fast float %8938, %8929
  br label %8966

; <label>:8940                                    ; preds = %8915
  %8941 = fadd fast float %8676, %8673
  %8942 = fmul fast float %8897, %8941
  %8943 = fadd fast float %8942, %8900
  %8944 = fmul fast float %8924, %8919
  %8945 = fmul fast float %8924, %8922
  %8946 = fmul fast float %8924, %8943
  %8947 = call float @dx.op.binary.f32(i32 35, float %8945, float %8946)  ; FMax(a,b)
  %8948 = call float @dx.op.binary.f32(i32 35, float %8944, float %8947)  ; FMax(a,b)
  %8949 = call float @dx.op.binary.f32(i32 35, float %7233, float %7234)  ; FMax(a,b)
  %8950 = call float @dx.op.binary.f32(i32 35, float %7232, float %8949)  ; FMax(a,b)
  %8951 = call float @dx.op.binary.f32(i32 35, float %8948, float %8950)  ; FMax(a,b)
  %8952 = fcmp fast ugt float %8951, 0x3F10000000000000
  br i1 %8952, label %8954, label %8953

; <label>:8953                                    ; preds = %8940
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8954

; <label>:8954                                    ; preds = %8953, %8940
  %8955 = add i32 %42, 356
  %8956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %8955, i32 undef)  ; BufferLoad(srv,index,wot)
  %8957 = extractvalue %dx.types.ResRet.i32 %8956, 0
  %8958 = and i32 %8957, 32
  %8959 = icmp eq i32 %8958, 0
  br i1 %8959, label %8966, label %8960

; <label>:8960                                    ; preds = %8954
  %8961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8962 = extractvalue %dx.types.CBufRet.f32 %8961, 0
  %8963 = fmul fast float %8962, 0x3FE99999A0000000
  %8964 = fadd fast float %8962, %8944
  %8965 = fadd fast float %8963, %8946
  br label %8966

; <label>:8966                                    ; preds = %8960, %8954, %8925
  %8967 = phi float [ 1.000000e+00, %8925 ], [ %7233, %8960 ], [ %7233, %8954 ]
  %8968 = phi float [ 1.000000e+00, %8925 ], [ %7234, %8960 ], [ %7234, %8954 ]
  %8969 = phi float [ %8927, %8925 ], [ %8964, %8960 ], [ %8944, %8954 ]
  %8970 = phi float [ %8939, %8925 ], [ %8945, %8960 ], [ %8945, %8954 ]
  %8971 = phi float [ 1.000000e+00, %8925 ], [ %8965, %8960 ], [ %8946, %8954 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8972 = call float @dx.op.binary.f32(i32 36, float %8969, float 3.225500e+04)  ; FMin(a,b)
  %8973 = call float @dx.op.binary.f32(i32 36, float %8970, float 3.225500e+04)  ; FMin(a,b)
  %8974 = call float @dx.op.binary.f32(i32 36, float %8971, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8972)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8973)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8974)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8975 = call float @dx.op.binary.f32(i32 36, float %7232, float 3.225500e+04)  ; FMin(a,b)
  %8976 = call float @dx.op.binary.f32(i32 36, float %8967, float 3.225500e+04)  ; FMin(a,b)
  %8977 = call float @dx.op.binary.f32(i32 36, float %8968, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8975)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8976)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8977)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!54 = !{[62 x i32] [i32 60, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!55 = !{void ()* @ps_main, !"ps_main", !56, !4, !83}
!56 = !{!57, !79, null}
!57 = !{!58, !61, !62, !64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !77, !78}
!58 = !{i32 0, !"SV_Position", i8 9, i8 3, !59, i8 4, i32 1, i8 4, i32 0, i8 0, !60}
!59 = !{i32 0}
!60 = !{i32 3, i32 15}
!61 = !{i32 1, !"COLOR", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 1, i8 0, !60}
!62 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 2, i8 0, !63}
!63 = !{i32 3, i32 3}
!64 = !{i32 3, !"NORMAL", i8 9, i8 0, !59, i8 2, i32 1, i8 3, i32 3, i8 0, !65}
!65 = !{i32 3, i32 7}
!66 = !{i32 4, !"TANGENT", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 4, i8 0, !60}
!67 = !{i32 5, !"SH_RED", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 5, i8 0, !60}
!68 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 6, i8 0, !60}
!69 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 7, i8 0, !60}
!70 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !59, i8 2, i32 1, i8 3, i32 8, i8 0, !65}
!71 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 9, i8 0, !60}
!72 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !59, i8 2, i32 1, i8 2, i32 10, i8 0, !63}
!73 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 11, i8 0, !60}
!74 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 12, i8 0, !65}
!75 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !59, i8 1, i32 1, i8 1, i32 13, i8 0, !76}
!76 = !{i32 3, i32 1}
!77 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !59, i8 1, i32 1, i8 4, i32 14, i8 0, !76}
!78 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !59, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!79 = !{!80, !81}
!80 = !{i32 0, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
!81 = !{i32 1, !"SV_Target", i8 9, i8 16, !82, i8 0, i32 1, i8 4, i32 1, i8 0, !60}
!82 = !{i32 1}
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
!119 = distinct !{!119, !120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!120 = distinct !{!120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!121 = distinct !{!121, !120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!122 = distinct !{!122, !120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!123 = distinct !{!123, !124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!124 = distinct !{!124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!125 = distinct !{!125, !124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!126 = distinct !{!126, !124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
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

