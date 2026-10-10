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
; ENTITY_IDS               0    yz        12     NONE    uint    y  
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
; shader hash: c60c5b2add6caa233cc11fad0f5025a8
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
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
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
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = alloca [12 x float], align 4
  %87 = alloca [12 x float], align 4
  %88 = alloca [3 x float], align 4
  %89 = alloca [3 x float], align 4
  %90 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %91 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = fmul fast float %93, %82
  %95 = fmul fast float %93, %83
  %96 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %97 = bitcast float %96 to i32
  %98 = ashr i32 %97, 1
  %99 = sub nsw i32 1597250115, %98
  %100 = bitcast i32 %99 to float
  %101 = fmul fast float %100, %73
  %102 = fmul fast float %100, %74
  %103 = fmul fast float %100, %75
  %104 = fmul fast float %74, %71
  %105 = fmul fast float %75, %70
  %106 = fsub fast float %104, %105
  %107 = fmul fast float %75, %69
  %108 = fmul fast float %73, %71
  %109 = fsub fast float %107, %108
  %110 = fmul fast float %73, %70
  %111 = fmul fast float %74, %69
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %106, %72
  %114 = fmul fast float %109, %72
  %115 = fmul fast float %112, %72
  %116 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %117 = bitcast float %116 to i32
  %118 = ashr i32 %117, 1
  %119 = sub nsw i32 1597250115, %118
  %120 = bitcast i32 %119 to float
  %121 = fmul fast float %120, %62
  %122 = fmul fast float %120, %63
  %123 = fmul fast float %120, %64
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = fcmp fast une float %125, 0.000000e+00
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 3
  %130 = fmul fast float %94, 2.000000e+00
  %131 = fmul fast float %130, %128
  %132 = fmul fast float %95, 2.000000e+00
  %133 = fmul fast float %132, %129
  %134 = fsub fast float 1.000000e+00, %131
  %135 = fsub fast float 1.000000e+00, %133
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %143 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %144 = select i1 %126, float %137, float %141
  %145 = select i1 %126, float %138, float %142
  %146 = select i1 %126, float %139, float %143
  %147 = fmul fast float %144, %134
  %148 = fmul fast float %145, %134
  %149 = fmul fast float %146, %134
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = select i1 %126, float %151, float %155
  %159 = select i1 %126, float %152, float %156
  %160 = select i1 %126, float %153, float %157
  %161 = fmul fast float %158, %135
  %162 = fmul fast float %159, %135
  %163 = fmul fast float %160, %135
  %164 = fadd fast float %161, %147
  %165 = fadd fast float %162, %148
  %166 = fadd fast float %163, %149
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %175 = select i1 %126, float %168, float %172
  %176 = select i1 %126, float %169, float %173
  %177 = select i1 %126, float %170, float %174
  %178 = fadd fast float %164, %175
  %179 = fadd fast float %165, %176
  %180 = fadd fast float %166, %177
  %181 = fmul fast float %178, %85
  %182 = fmul fast float %179, %85
  %183 = fmul fast float %180, %85
  %184 = shl i32 %44, 5
  %185 = add i32 %184, 4194304
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = extractvalue %dx.types.ResRet.i32 %186, 1
  %189 = extractvalue %dx.types.ResRet.i32 %186, 2
  %190 = extractvalue %dx.types.ResRet.i32 %186, 3
  %191 = add i32 %184, 4194320
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = extractvalue %dx.types.ResRet.i32 %192, 1
  %195 = bitcast i32 %193 to float
  %196 = bitcast i32 %194 to float
  %197 = fmul fast float %94, 5.000000e-01
  %198 = fmul fast float %95, 5.000000e-01
  %199 = fptosi float %197 to i32
  %200 = fptosi float %198 to i32
  %201 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %199, i32 %200, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = lshr i32 %202, 18
  %204 = uitofp i32 %203 to float
  %205 = fmul fast float %204, 0x3F4C00EBA0000000
  %206 = call float @dx.op.unary.f32(i32 21, float %205)  ; Exp(value)
  %207 = fadd fast float %206, -1.000000e+00
  %208 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %19, i32 0)  ; GetDimensions(handle,mipLevel)
  %209 = extractvalue %dx.types.Dimensions %208, 0
  %210 = sitofp i32 %209 to float
  %211 = extractvalue %dx.types.Dimensions %208, 1
  %212 = sitofp i32 %211 to float
  %213 = fcmp fast oge float %197, %210
  %214 = fcmp fast oge float %198, %212
  %215 = or i1 %213, %214
  %216 = select i1 %215, float 0x4197782600000000, float %207
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %220 = fmul fast float %218, %94
  %221 = fmul fast float %219, %95
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = and i32 %223, 114688
  %225 = icmp ne i32 %224, 0
  %226 = select i1 %225, float %220, float 0.000000e+00
  %227 = select i1 %225, float %221, float 0.000000e+00
  %228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %226, float %227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = fmul fast float %229, 2.550000e+02
  %231 = fptoui float %230 to i32
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.i32 %233, 3
  %235 = and i32 %234, 3
  %236 = icmp ne i32 %235, 0
  %237 = and i32 %234, 4
  %238 = icmp ne i32 %237, 0
  %239 = and i1 %236, %238
  br i1 %239, label %240, label %251

; <label>:240                                     ; preds = %0
  %241 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %242 = fmul fast float %241, %95
  %243 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %244 = fmul fast float %243, %94
  %245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %37, float %244, float %242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = fsub fast float 1.000000e+00, %246
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 0
  %250 = fcmp fast olt float %247, %249
  br label %254

; <label>:251                                     ; preds = %0
  %252 = icmp eq i32 %237, 0
  %253 = and i1 %236, %252
  br label %254

; <label>:254                                     ; preds = %251, %240
  %255 = phi i1 [ %250, %240 ], [ %253, %251 ]
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %258 = fmul fast float %257, 0x3FE3C6EF40000000
  %259 = frem fast float %94, 2.560000e+02
  %260 = frem fast float %95, 2.560000e+02
  %261 = fptoui float %259 to i32
  %262 = fptoui float %260 to i32
  %263 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %261, i32 %262, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = fadd fast float %264, %258
  %266 = call float @dx.op.unary.f32(i32 22, float %265)  ; Frc(value)
  %267 = add i32 %43, 156
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = shl i32 %269, 4
  %271 = and i32 %270, 32752
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %269, 7
  %274 = and i32 %273, 32752
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %269, 22
  %277 = shl nuw nsw i32 %276, 5
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = add i32 %43, 216
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 0x3F70101020000000
  %285 = lshr i32 %281, 8
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %281, 16
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = add i32 %43, 36
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 65535
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %295, 16
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = add i32 %43, 288
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = fmul fast float %304, 0x3F50624DE0000000
  %308 = fmul fast float %306, 0x3F50624DE0000000
  %309 = add i32 %43, 172
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = shl i32 %311, 4
  %313 = and i32 %312, 32752
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %311, 7
  %316 = and i32 %315, 32752
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %311, 22
  %319 = shl nuw nsw i32 %318, 5
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = add i32 %43, 232
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F70101020000000
  %327 = lshr i32 %323, 8
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %323, 16
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = add i32 %43, 52
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 65535
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %337, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = add i32 %43, 304
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %344, 16
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = fmul fast float %346, 0x3F50624DE0000000
  %350 = fmul fast float %348, 0x3F50624DE0000000
  %351 = add i32 %43, 188
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = shl i32 %353, 4
  %355 = and i32 %354, 32752
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %353, 7
  %358 = and i32 %357, 32752
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %353, 22
  %361 = shl nuw nsw i32 %360, 5
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = add i32 %43, 248
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = and i32 %365, 255
  %367 = uitofp i32 %366 to float
  %368 = fmul fast float %367, 0x3F70101020000000
  %369 = lshr i32 %365, 8
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %365, 16
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = add i32 %43, 68
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 65535
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %379, 16
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = add i32 %43, 320
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %386, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = fmul fast float %388, 0x3F50624DE0000000
  %392 = fmul fast float %390, 0x3F50624DE0000000
  %393 = add i32 %43, 204
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = shl i32 %395, 4
  %397 = and i32 %396, 32752
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %395, 7
  %400 = and i32 %399, 32752
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = lshr i32 %395, 22
  %403 = shl nuw nsw i32 %402, 5
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = add i32 %43, 264
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 255
  %409 = uitofp i32 %408 to float
  %410 = fmul fast float %409, 0x3F70101020000000
  %411 = lshr i32 %407, 8
  %412 = and i32 %411, 255
  %413 = uitofp i32 %412 to float
  %414 = fmul fast float %413, 0x3F70101020000000
  %415 = lshr i32 %407, 16
  %416 = and i32 %415, 255
  %417 = uitofp i32 %416 to float
  %418 = fmul fast float %417, 0x3F70101020000000
  %419 = add i32 %43, 84
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 65535
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = lshr i32 %421, 16
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = add i32 %43, 336
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 65535
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = lshr i32 %428, 16
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = fmul fast float %430, 0x3F50624DE0000000
  %434 = fmul fast float %432, 0x3F50624DE0000000
  %435 = add i32 %43, 348
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 32
  %439 = icmp eq i32 %438, 0
  %440 = and i32 %437, 64
  %441 = icmp eq i32 %440, 0
  %442 = and i32 %437, 128
  %443 = icmp eq i32 %442, 0
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 2
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %463, label %448

; <label>:448                                     ; preds = %254
  %449 = add i32 %43, 492
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = add i32 %451, 0
  %453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %452, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %454 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %453, %dx.types.Handle %91, float %76, float %77, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 2
  %458 = extractvalue %dx.types.ResRet.f32 %454, 3
  %459 = fmul fast float %458, %78
  %460 = fmul fast float %455, %79
  %461 = fmul fast float %456, %80
  %462 = fmul fast float %457, %81
  br label %463

; <label>:463                                     ; preds = %448, %254
  %464 = phi float [ %81, %254 ], [ %462, %448 ]
  %465 = phi float [ %80, %254 ], [ %461, %448 ]
  %466 = phi float [ %79, %254 ], [ %460, %448 ]
  %467 = phi float [ %78, %254 ], [ %459, %448 ]
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 2
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %491, label %472

; <label>:472                                     ; preds = %463
  %473 = add i32 %43, 44
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 1
  %477 = icmp ne i32 %476, 0
  %478 = select i1 %477, float %466, float 1.000000e+00
  %479 = add i32 %43, 60
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = and i32 %481, 1
  %483 = icmp ne i32 %482, 0
  %484 = select i1 %483, float %465, float 1.000000e+00
  %485 = add i32 %43, 76
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = and i32 %487, 1
  %489 = icmp ne i32 %488, 0
  %490 = select i1 %489, float %464, float 1.000000e+00
  br label %491

; <label>:491                                     ; preds = %472, %463
  %492 = phi float [ %464, %463 ], [ %490, %472 ]
  %493 = phi float [ %465, %463 ], [ %484, %472 ]
  %494 = phi float [ %466, %463 ], [ %478, %472 ]
  %495 = lshr i32 %469, 20
  %496 = and i32 %495, 3
  %497 = add nuw nsw i32 %496, 1
  %498 = add i32 %43, 24
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = add i32 %43, 28
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = or i32 %503, %500
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %1040, label %506

; <label>:506                                     ; preds = %491
  %507 = and i32 %500, 262144
  %508 = icmp ne i32 %507, 0
  %509 = select i1 %508, float %49, float 1.000000e+00
  %510 = select i1 %508, float %50, float 0.000000e+00
  %511 = select i1 %508, float %51, float 0.000000e+00
  %512 = select i1 %508, float %52, float 1.000000e+00
  %513 = select i1 %508, float %53, float %76
  %514 = select i1 %508, float %54, float %77
  %515 = add i32 %43, 284
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = lshr i32 %517, 16
  %519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %518)  ; LegacyF16ToF32(value)
  %520 = fmul fast float %519, 0x3F50624DE0000000
  %521 = add i32 %43, 88
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = lshr i32 %523, 16
  %525 = and i32 %524, 255
  %526 = lshr i32 %523, 24
  %527 = add i32 %43, 292
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = and i32 %529, 65535
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = lshr i32 %529, 16
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = add i32 %43, 32
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = lshr i32 %536, 22
  %538 = shl nuw nsw i32 %537, 5
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = shl i32 %536, 4
  %541 = and i32 %540, 32752
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = lshr i32 %536, 7
  %544 = and i32 %543, 32752
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 3
  %548 = fmul fast float %547, 1.000000e+03
  %549 = fmul fast float %307, %548
  %550 = call float @dx.op.unary.f32(i32 22, float %549)  ; Frc(value)
  %551 = fadd fast float %550, %297
  %552 = fmul fast float %308, %548
  %553 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %554 = fadd fast float %553, %299
  %555 = fmul fast float %520, %548
  %556 = call float @dx.op.unary.f32(i32 22, float %555)  ; Frc(value)
  %557 = fmul fast float %556, 0x401921FB60000000
  %558 = fadd fast float %557, %539
  %559 = call float @dx.op.unary.f32(i32 13, float %558)  ; Sin(value)
  %560 = call float @dx.op.unary.f32(i32 12, float %558)  ; Cos(value)
  %561 = fsub fast float -0.000000e+00, %559
  %562 = fadd fast float %513, -5.000000e-01
  %563 = fadd fast float %514, -5.000000e-01
  %564 = fmul fast float %531, %562
  %565 = fmul fast float %533, %563
  %566 = fadd fast float %564, 5.000000e-01
  %567 = fadd fast float %565, 5.000000e-01
  %568 = fmul fast float %542, %566
  %569 = fmul fast float %545, %567
  %570 = fmul fast float %560, %568
  %571 = call float @dx.op.tertiary.f32(i32 46, float %561, float %569, float %570)  ; FMad(a,b,c)
  %572 = fmul fast float %559, %568
  %573 = call float @dx.op.tertiary.f32(i32 46, float %560, float %569, float %572)  ; FMad(a,b,c)
  %574 = fadd fast float %551, %571
  %575 = fadd fast float %554, %573
  %576 = icmp ugt i32 %525, 1
  %577 = icmp ugt i32 %523, 33554431
  %578 = or i1 %577, %576
  br i1 %578, label %579, label %604

; <label>:579                                     ; preds = %506
  %580 = add i32 %43, 228
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = lshr i32 %582, 16
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = fmul fast float %547, %584
  %586 = call float @dx.op.unary.f32(i32 22, float %585)  ; Frc(value)
  %587 = mul nuw nsw i32 %525, %526
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %586, %588
  %590 = call float @dx.op.unary.f32(i32 27, float %589)  ; Round_ni(value)
  %591 = fptoui float %590 to i32
  %592 = urem i32 %591, %525
  %593 = udiv i32 %591, %526
  %594 = call float @dx.op.unary.f32(i32 22, float %574)  ; Frc(value)
  %595 = call float @dx.op.unary.f32(i32 22, float %575)  ; Frc(value)
  %596 = uitofp i32 %592 to float
  %597 = uitofp i32 %593 to float
  %598 = fadd fast float %594, %596
  %599 = fadd fast float %595, %597
  %600 = uitofp i32 %525 to float
  %601 = uitofp i32 %526 to float
  %602 = fdiv fast float %598, %600
  %603 = fdiv fast float %599, %601
  br label %604

; <label>:604                                     ; preds = %579, %506
  %605 = phi float [ %602, %579 ], [ %574, %506 ]
  %606 = phi float [ %603, %579 ], [ %575, %506 ]
  %607 = and i32 %500, 256
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %655, label %609

; <label>:609                                     ; preds = %604
  %610 = add i32 %43, 440
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = add i32 %612, 0
  %614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %613, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %615 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %614, %dx.types.Handle %91, float %605, float %606, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = add i32 %43, 100
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = shl i32 %619, 4
  %621 = and i32 %620, 32752
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = lshr i32 %619, 7
  %624 = and i32 %623, 32752
  %625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %624)  ; LegacyF16ToF32(value)
  %626 = fsub fast float 1.000000e+00, %467
  %627 = call float @dx.op.binary.f32(i32 35, float %626, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %628 = bitcast float %467 to i32
  %629 = sitofp i32 %628 to float
  %630 = fadd fast float %629, 0xC1CFBF8940000000
  %631 = fmul fast float %625, %630
  %632 = fadd fast float %631, 0x41CFBF8940000000
  %633 = fptosi float %632 to i32
  %634 = bitcast i32 %633 to float
  %635 = bitcast float %627 to i32
  %636 = sitofp i32 %635 to float
  %637 = fadd fast float %636, 0xC1CFBF8940000000
  %638 = fmul fast float %637, %625
  %639 = fadd fast float %638, 0x41CFBF8940000000
  %640 = fptosi float %639 to i32
  %641 = bitcast i32 %640 to float
  %642 = fmul fast float %634, %622
  %643 = fmul fast float %641, %622
  %644 = fsub fast float %627, %642
  %645 = fadd fast float %643, %627
  %646 = call float @dx.op.unary.f32(i32 7, float %644)  ; Saturate(value)
  %647 = call float @dx.op.unary.f32(i32 7, float %645)  ; Saturate(value)
  %648 = fsub fast float %616, %646
  %649 = fsub fast float %647, %646
  %650 = bitcast float %649 to i32
  %651 = sub nsw i32 2129859010, %650
  %652 = bitcast i32 %651 to float
  %653 = fmul fast float %652, %648
  %654 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  br label %655

; <label>:655                                     ; preds = %609, %604
  %656 = phi float [ %654, %609 ], [ %467, %604 ]
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = and i32 %658, 128
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %677, label %661

; <label>:661                                     ; preds = %655
  %662 = add i32 %43, 424
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %662, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = add i32 %664, 0
  %666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %666, %dx.types.Handle %91, float %605, float %606, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 524288
  %672 = icmp ne i32 %671, 0
  %673 = fcmp fast ogt float %668, 0x3FE0101020000000
  %674 = select i1 %673, float 1.000000e+00, float 0.000000e+00
  %675 = select i1 %672, float %674, float %668
  %676 = fmul fast float %675, %656
  br label %677

; <label>:677                                     ; preds = %661, %655
  %678 = phi float [ %676, %661 ], [ %656, %655 ]
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = and i32 %680, 16
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %881, label %683

; <label>:683                                     ; preds = %677
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = add i32 %43, 376
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = add i32 %688, 0
  %690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %689, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %691 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %690, %dx.types.Handle %90, float %605, float %606, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %692 = extractvalue %dx.types.ResRet.f32 %691, 0
  %693 = extractvalue %dx.types.ResRet.f32 %691, 1
  %694 = extractvalue %dx.types.ResRet.f32 %691, 2
  %695 = extractvalue %dx.types.ResRet.f32 %691, 3
  %696 = and i32 %685, 255
  %697 = uitofp i32 %696 to float
  %698 = lshr i32 %685, 8
  %699 = and i32 %698, 255
  %700 = uitofp i32 %699 to float
  %701 = fmul fast float %695, %697
  %702 = fadd fast float %701, %700
  %703 = fmul fast float %702, 0x3F70101000000000
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = and i32 %705, 512
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %716, label %708

; <label>:708                                     ; preds = %683
  %709 = add i32 %43, 460
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = add i32 %711, 0
  %713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %714 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %713, %dx.types.Handle %91, float %605, float %606, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  br label %716

; <label>:716                                     ; preds = %708, %683
  %717 = phi float [ %715, %708 ], [ 1.000000e+00, %683 ]
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = and i32 %719, 33554432
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %828, label %722

; <label>:722                                     ; preds = %716
  %723 = add i32 %43, 224
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = and i32 %725, 65535
  %727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %726)  ; LegacyF16ToF32(value)
  %728 = lshr i32 %725, 16
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = add i32 %43, 228
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 65535
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = lshr i32 %736, 24
  %738 = uitofp i32 %737 to float
  %739 = fmul fast float %738, 0x3F70101020000000
  %740 = and i32 %736, 255
  %741 = uitofp i32 %740 to float
  %742 = fmul fast float %741, 0x3F70101020000000
  %743 = lshr i32 %736, 8
  %744 = and i32 %743, 255
  %745 = uitofp i32 %744 to float
  %746 = fmul fast float %745, 0x3F70101020000000
  %747 = lshr i32 %736, 16
  %748 = and i32 %747, 255
  %749 = uitofp i32 %748 to float
  %750 = fmul fast float %749, 0x3F70101020000000
  %751 = add i32 %43, 220
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = lshr i32 %753, 24
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, 0x3F70101020000000
  %757 = and i32 %753, 255
  %758 = uitofp i32 %757 to float
  %759 = fmul fast float %758, 0x3F70101020000000
  %760 = lshr i32 %753, 8
  %761 = and i32 %760, 255
  %762 = uitofp i32 %761 to float
  %763 = fmul fast float %762, 0x3F70101020000000
  %764 = lshr i32 %753, 16
  %765 = and i32 %764, 255
  %766 = uitofp i32 %765 to float
  %767 = fmul fast float %766, 0x3F70101020000000
  %768 = bitcast float %692 to i32
  %769 = ashr i32 %768, 1
  %770 = sub nsw i32 1597463174, %769
  %771 = bitcast i32 %770 to float
  %772 = fmul fast float %692, 5.000000e-01
  %773 = fmul fast float %771, %771
  %774 = fmul fast float %773, %772
  %775 = fsub fast float 1.500000e+00, %774
  %776 = fmul fast float %771, %692
  %777 = fmul fast float %776, %775
  %778 = bitcast float %693 to i32
  %779 = ashr i32 %778, 1
  %780 = sub nsw i32 1597463174, %779
  %781 = bitcast i32 %780 to float
  %782 = fmul fast float %693, 5.000000e-01
  %783 = fmul fast float %781, %781
  %784 = fmul fast float %783, %782
  %785 = fsub fast float 1.500000e+00, %784
  %786 = fmul fast float %781, %693
  %787 = fmul fast float %786, %785
  %788 = bitcast float %694 to i32
  %789 = ashr i32 %788, 1
  %790 = sub nsw i32 1597463174, %789
  %791 = bitcast i32 %790 to float
  %792 = fmul fast float %694, 5.000000e-01
  %793 = fmul fast float %791, %791
  %794 = fmul fast float %793, %792
  %795 = fsub fast float 1.500000e+00, %794
  %796 = fmul fast float %791, %694
  %797 = fmul fast float %796, %795
  %798 = fsub fast float %777, %759
  %799 = fsub fast float %787, %763
  %800 = fsub fast float %797, %767
  %801 = fmul fast float %798, %727
  %802 = fmul fast float %799, %729
  %803 = fmul fast float %800, %734
  %804 = fadd fast float %801, %742
  %805 = fadd fast float %802, %746
  %806 = fadd fast float %803, %750
  %807 = call float @dx.op.unary.f32(i32 7, float %804)  ; Saturate(value)
  %808 = call float @dx.op.unary.f32(i32 7, float %805)  ; Saturate(value)
  %809 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %810 = fmul fast float %807, %807
  %811 = fmul fast float %808, %808
  %812 = fmul fast float %809, %809
  %813 = fsub fast float %810, %692
  %814 = fsub fast float %811, %693
  %815 = fsub fast float %812, %694
  %816 = fmul fast float %813, %717
  %817 = fmul fast float %814, %717
  %818 = fmul fast float %815, %717
  %819 = fadd fast float %816, %692
  %820 = fadd fast float %817, %693
  %821 = fadd fast float %818, %694
  %822 = fadd fast float %739, %703
  %823 = fsub fast float %822, %756
  %824 = call float @dx.op.unary.f32(i32 7, float %823)  ; Saturate(value)
  %825 = fsub fast float %824, %703
  %826 = fmul fast float %825, %717
  %827 = fadd fast float %826, %703
  br label %881

; <label>:828                                     ; preds = %716
  %829 = and i32 %719, 134217728
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %865, label %831

; <label>:831                                     ; preds = %828
  %832 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %833 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %834 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %835 = fadd fast float %832, -5.000000e-01
  %836 = fadd fast float %833, -5.000000e-01
  %837 = fadd fast float %834, -5.000000e-01
  %838 = fmul fast float %835, %717
  %839 = fmul fast float %836, %717
  %840 = fmul fast float %837, %717
  %841 = fadd fast float %838, 5.000000e-01
  %842 = fadd fast float %839, 5.000000e-01
  %843 = fadd fast float %840, 5.000000e-01
  %844 = call float @dx.op.unary.f32(i32 24, float %692)  ; Sqrt(value)
  %845 = call float @dx.op.unary.f32(i32 24, float %693)  ; Sqrt(value)
  %846 = call float @dx.op.unary.f32(i32 24, float %694)  ; Sqrt(value)
  %847 = fmul fast float %841, 2.000000e+00
  %848 = fsub fast float 1.000000e+00, %847
  %849 = fmul fast float %848, %844
  %850 = fadd fast float %849, %847
  %851 = fmul fast float %850, %844
  %852 = fmul fast float %842, 2.000000e+00
  %853 = fsub fast float 1.000000e+00, %852
  %854 = fmul fast float %853, %845
  %855 = fadd fast float %854, %852
  %856 = fmul fast float %855, %845
  %857 = fmul fast float %843, 2.000000e+00
  %858 = fsub fast float 1.000000e+00, %857
  %859 = fmul fast float %858, %846
  %860 = fadd fast float %859, %857
  %861 = fmul fast float %860, %846
  %862 = fmul fast float %851, %851
  %863 = fmul fast float %856, %856
  %864 = fmul fast float %861, %861
  br label %881

; <label>:865                                     ; preds = %828
  %866 = fmul fast float %284, %284
  %867 = fmul fast float %288, %288
  %868 = fmul fast float %292, %292
  %869 = fadd fast float %866, -1.000000e+00
  %870 = fadd fast float %867, -1.000000e+00
  %871 = fadd fast float %868, -1.000000e+00
  %872 = fmul fast float %717, %869
  %873 = fmul fast float %717, %870
  %874 = fmul fast float %717, %871
  %875 = fadd fast float %872, 1.000000e+00
  %876 = fadd fast float %873, 1.000000e+00
  %877 = fadd fast float %874, 1.000000e+00
  %878 = fmul fast float %875, %692
  %879 = fmul fast float %876, %693
  %880 = fmul fast float %877, %694
  br label %881

; <label>:881                                     ; preds = %865, %831, %722, %677
  %882 = phi float [ %827, %722 ], [ %703, %831 ], [ %703, %865 ], [ 0x3FA23C0BE0000000, %677 ]
  %883 = phi float [ %819, %722 ], [ %862, %831 ], [ %878, %865 ], [ 1.000000e+00, %677 ]
  %884 = phi float [ %820, %722 ], [ %863, %831 ], [ %879, %865 ], [ 1.000000e+00, %677 ]
  %885 = phi float [ %821, %722 ], [ %864, %831 ], [ %880, %865 ], [ 1.000000e+00, %677 ]
  %886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.i32 %886, 1
  %888 = and i32 %887, 1
  %889 = icmp ne i32 %888, 0
  %890 = add i32 %43, 356
  %891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.i32 %891, 0
  %893 = and i32 %892, 32
  %894 = icmp ne i32 %893, 0
  %895 = and i1 %889, %894
  %896 = select i1 %895, float 1.000000e+00, float %883
  %897 = select i1 %895, float 0x3FD3333340000000, float %884
  %898 = select i1 %895, float 0x3FD3333340000000, float %885
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = and i32 %900, 32
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %975, label %903

; <label>:903                                     ; preds = %881
  %904 = add i32 %43, 92
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = add i32 %43, 392
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = add i32 %909, 0
  %911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %910, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %912 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %911, %dx.types.Handle %90, float %605, float %606, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %913 = extractvalue %dx.types.ResRet.f32 %912, 0
  %914 = extractvalue %dx.types.ResRet.f32 %912, 1
  %915 = extractvalue %dx.types.ResRet.f32 %912, 2
  %916 = extractvalue %dx.types.ResRet.f32 %912, 3
  %917 = and i32 %906, 255
  %918 = uitofp i32 %917 to float
  %919 = lshr i32 %906, 8
  %920 = and i32 %919, 255
  %921 = uitofp i32 %920 to float
  %922 = lshr i32 %906, 16
  %923 = and i32 %922, 255
  %924 = uitofp i32 %923 to float
  %925 = fmul fast float %924, 0x3F70101000000000
  %926 = fmul fast float %913, %918
  %927 = fadd fast float %926, %921
  %928 = fmul fast float %927, 0x3F70101000000000
  %929 = fadd fast float %914, -5.000000e-01
  %930 = fadd fast float %916, -5.000000e-01
  %931 = fmul fast float %929, %925
  %932 = fmul fast float %930, %925
  %933 = fadd fast float %931, 5.000000e-01
  %934 = fadd fast float %932, 5.000000e-01
  %935 = fmul fast float %933, 2.000000e+00
  %936 = fadd fast float %935, -1.000000e+00
  %937 = fmul fast float %934, 2.000000e+00
  %938 = fadd fast float %937, -1.000000e+00
  %939 = fadd fast float %936, %938
  %940 = fmul fast float %939, 5.000000e-01
  %941 = fsub fast float %936, %938
  %942 = fmul fast float %941, 5.000000e-01
  %943 = call float @dx.op.unary.f32(i32 6, float %940)  ; FAbs(value)
  %944 = fsub fast float 1.000000e+00, %943
  %945 = call float @dx.op.unary.f32(i32 6, float %942)  ; FAbs(value)
  %946 = fsub fast float %944, %945
  %947 = call float @dx.op.dot3.f32(i32 55, float %940, float %942, float %946, float %940, float %942, float %946)  ; Dot3(ax,ay,az,bx,by,bz)
  %948 = call float @dx.op.unary.f32(i32 25, float %947)  ; Rsqrt(value)
  %949 = fmul fast float %940, %948
  %950 = fmul fast float %942, %948
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = and i32 %952, 67108864
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %971, label %955

; <label>:955                                     ; preds = %903
  %956 = add i32 %43, 280
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = and i32 %958, 65535
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = and i32 %962, 65535
  %964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %963)  ; LegacyF16ToF32(value)
  %965 = lshr i32 %958, 16
  %966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %965)  ; LegacyF16ToF32(value)
  %967 = fsub fast float %928, %966
  %968 = fmul fast float %967, %960
  %969 = fadd fast float %968, %964
  %970 = call float @dx.op.unary.f32(i32 7, float %969)  ; Saturate(value)
  br label %971

; <label>:971                                     ; preds = %955, %903
  %972 = phi float [ %970, %955 ], [ %928, %903 ]
  %973 = call float @dx.op.dot2.f32(i32 54, float %949, float %950, float %509, float %510)  ; Dot2(ax,ay,bx,by)
  %974 = call float @dx.op.dot2.f32(i32 54, float %949, float %950, float %511, float %512)  ; Dot2(ax,ay,bx,by)
  br label %975

; <label>:975                                     ; preds = %971, %881
  %976 = phi float [ %972, %971 ], [ 0x3FD6666660000000, %881 ]
  %977 = phi float [ %973, %971 ], [ 0.000000e+00, %881 ]
  %978 = phi float [ %974, %971 ], [ 0.000000e+00, %881 ]
  %979 = phi float [ %915, %971 ], [ 1.000000e+00, %881 ]
  %980 = add i32 %43, 160
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %980, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = lshr i32 %982, 22
  %984 = shl nuw nsw i32 %983, 5
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = and i32 %987, 64
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %1023, label %990

; <label>:990                                     ; preds = %975
  %991 = add i32 %43, 408
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = add i32 %993, 0
  %995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %994, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = and i32 %997, 131072
  %999 = icmp eq i32 %998, 0
  %1000 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %995, %dx.types.Handle %90, float %605, float %606, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1001 = extractvalue %dx.types.ResRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.ResRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.ResRet.f32 %1000, 2
  %1004 = fmul fast float %1001, %272
  %1005 = fmul fast float %1002, %275
  %1006 = fmul fast float %1003, %278
  br i1 %999, label %1013, label %1007

; <label>:1007                                    ; preds = %990
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1010 = fmul fast float %1009, %1004
  %1011 = fmul fast float %1009, %1005
  %1012 = fmul fast float %1009, %1006
  br label %1013

; <label>:1013                                    ; preds = %1007, %990
  %1014 = phi float [ %1010, %1007 ], [ %1004, %990 ]
  %1015 = phi float [ %1011, %1007 ], [ %1005, %990 ]
  %1016 = phi float [ %1012, %1007 ], [ %1006, %990 ]
  %1017 = fmul fast float %1014, %985
  %1018 = select i1 %255, float %1017, float %1014
  %1019 = call float @dx.op.dot3.f32(i32 55, float %1018, float %1015, float %1016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1020 = select i1 %255, float 0.000000e+00, float %1014
  %1021 = select i1 %255, float %1019, float %1015
  %1022 = select i1 %255, float 0.000000e+00, float %1016
  br label %1023

; <label>:1023                                    ; preds = %1013, %975
  %1024 = phi float [ %1020, %1013 ], [ 0.000000e+00, %975 ]
  %1025 = phi float [ %1021, %1013 ], [ 0.000000e+00, %975 ]
  %1026 = phi float [ %1022, %1013 ], [ 0.000000e+00, %975 ]
  %1027 = add i32 %43, 96
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = and i32 %1029, 255
  %1031 = uitofp i32 %1030 to float
  %1032 = lshr i32 %1029, 8
  %1033 = and i32 %1032, 255
  %1034 = uitofp i32 %1033 to float
  %1035 = call float @dx.op.dot3.f32(i32 55, float %896, float %897, float %898, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1036 = fmul fast float %1034, %1035
  %1037 = fadd fast float %1036, %1031
  %1038 = fmul fast float %1037, 0x3F70101020000000
  %1039 = call float @dx.op.unary.f32(i32 7, float %1038)  ; Saturate(value)
  br label %1040

; <label>:1040                                    ; preds = %1023, %491
  %1041 = phi float [ 0.000000e+00, %491 ], [ %977, %1023 ]
  %1042 = phi float [ 0.000000e+00, %491 ], [ %978, %1023 ]
  %1043 = phi float [ 0.000000e+00, %491 ], [ %896, %1023 ]
  %1044 = phi float [ 0.000000e+00, %491 ], [ %897, %1023 ]
  %1045 = phi float [ 0.000000e+00, %491 ], [ %898, %1023 ]
  %1046 = phi float [ 0.000000e+00, %491 ], [ %1024, %1023 ]
  %1047 = phi float [ 0.000000e+00, %491 ], [ %1025, %1023 ]
  %1048 = phi float [ 0.000000e+00, %491 ], [ %1026, %1023 ]
  %1049 = phi float [ 0.000000e+00, %491 ], [ %882, %1023 ]
  %1050 = phi float [ 0.000000e+00, %491 ], [ %678, %1023 ]
  %1051 = phi float [ 0.000000e+00, %491 ], [ %976, %1023 ]
  %1052 = phi float [ 0.000000e+00, %491 ], [ %979, %1023 ]
  %1053 = phi float [ 0.000000e+00, %491 ], [ %1039, %1023 ]
  br i1 %439, label %1780, label %1054

; <label>:1054                                    ; preds = %1040
  %1055 = icmp ult i32 %497, 2
  %1056 = add i32 %43, 40
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = add i32 %43, 44
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = or i32 %1061, %1058
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1780, label %1064

; <label>:1064                                    ; preds = %1054
  %1065 = and i32 %1058, 262144
  %1066 = icmp ne i32 %1065, 0
  %1067 = select i1 %1066, float %49, float 1.000000e+00
  %1068 = select i1 %1066, float %50, float 0.000000e+00
  %1069 = select i1 %1066, float %51, float 0.000000e+00
  %1070 = select i1 %1066, float %52, float 1.000000e+00
  %1071 = select i1 %1066, float %53, float %76
  %1072 = select i1 %1066, float %54, float %77
  %1073 = add i32 %43, 300
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = lshr i32 %1075, 16
  %1077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1076)  ; LegacyF16ToF32(value)
  %1078 = fmul fast float %1077, 0x3F50624DE0000000
  %1079 = add i32 %43, 104
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = lshr i32 %1081, 16
  %1083 = and i32 %1082, 255
  %1084 = lshr i32 %1081, 24
  %1085 = add i32 %43, 308
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = and i32 %1087, 65535
  %1089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1088)  ; LegacyF16ToF32(value)
  %1090 = lshr i32 %1087, 16
  %1091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1090)  ; LegacyF16ToF32(value)
  %1092 = add i32 %43, 48
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = lshr i32 %1094, 22
  %1096 = shl nuw nsw i32 %1095, 5
  %1097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1096)  ; LegacyF16ToF32(value)
  %1098 = shl i32 %1094, 4
  %1099 = and i32 %1098, 32752
  %1100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1099)  ; LegacyF16ToF32(value)
  %1101 = lshr i32 %1094, 7
  %1102 = and i32 %1101, 32752
  %1103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1102)  ; LegacyF16ToF32(value)
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 3
  %1106 = fmul fast float %1105, 1.000000e+03
  %1107 = fmul fast float %349, %1106
  %1108 = call float @dx.op.unary.f32(i32 22, float %1107)  ; Frc(value)
  %1109 = fadd fast float %1108, %339
  %1110 = fmul fast float %350, %1106
  %1111 = call float @dx.op.unary.f32(i32 22, float %1110)  ; Frc(value)
  %1112 = fadd fast float %1111, %341
  %1113 = fmul fast float %1078, %1106
  %1114 = call float @dx.op.unary.f32(i32 22, float %1113)  ; Frc(value)
  %1115 = fmul fast float %1114, 0x401921FB60000000
  %1116 = fadd fast float %1115, %1097
  %1117 = call float @dx.op.unary.f32(i32 13, float %1116)  ; Sin(value)
  %1118 = call float @dx.op.unary.f32(i32 12, float %1116)  ; Cos(value)
  %1119 = fsub fast float -0.000000e+00, %1117
  %1120 = fadd fast float %1071, -5.000000e-01
  %1121 = fadd fast float %1072, -5.000000e-01
  %1122 = fmul fast float %1089, %1120
  %1123 = fmul fast float %1091, %1121
  %1124 = fadd fast float %1122, 5.000000e-01
  %1125 = fadd fast float %1123, 5.000000e-01
  %1126 = fmul fast float %1100, %1124
  %1127 = fmul fast float %1103, %1125
  %1128 = fmul fast float %1118, %1126
  %1129 = call float @dx.op.tertiary.f32(i32 46, float %1119, float %1127, float %1128)  ; FMad(a,b,c)
  %1130 = fmul fast float %1117, %1126
  %1131 = call float @dx.op.tertiary.f32(i32 46, float %1118, float %1127, float %1130)  ; FMad(a,b,c)
  %1132 = fadd fast float %1109, %1129
  %1133 = fadd fast float %1112, %1131
  %1134 = icmp ugt i32 %1083, 1
  %1135 = icmp ugt i32 %1081, 33554431
  %1136 = or i1 %1135, %1134
  br i1 %1136, label %1137, label %1162

; <label>:1137                                    ; preds = %1064
  %1138 = add i32 %43, 244
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = lshr i32 %1140, 16
  %1142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1141)  ; LegacyF16ToF32(value)
  %1143 = fmul fast float %1105, %1142
  %1144 = call float @dx.op.unary.f32(i32 22, float %1143)  ; Frc(value)
  %1145 = mul nuw nsw i32 %1083, %1084
  %1146 = uitofp i32 %1145 to float
  %1147 = fmul fast float %1144, %1146
  %1148 = call float @dx.op.unary.f32(i32 27, float %1147)  ; Round_ni(value)
  %1149 = fptoui float %1148 to i32
  %1150 = urem i32 %1149, %1083
  %1151 = udiv i32 %1149, %1084
  %1152 = call float @dx.op.unary.f32(i32 22, float %1132)  ; Frc(value)
  %1153 = call float @dx.op.unary.f32(i32 22, float %1133)  ; Frc(value)
  %1154 = uitofp i32 %1150 to float
  %1155 = uitofp i32 %1151 to float
  %1156 = fadd fast float %1152, %1154
  %1157 = fadd fast float %1153, %1155
  %1158 = uitofp i32 %1083 to float
  %1159 = uitofp i32 %1084 to float
  %1160 = fdiv fast float %1156, %1158
  %1161 = fdiv fast float %1157, %1159
  br label %1162

; <label>:1162                                    ; preds = %1137, %1064
  %1163 = phi float [ %1160, %1137 ], [ %1132, %1064 ]
  %1164 = phi float [ %1161, %1137 ], [ %1133, %1064 ]
  %1165 = and i32 %1058, 256
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1213, label %1167

; <label>:1167                                    ; preds = %1162
  %1168 = add i32 %43, 444
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = add i32 %1170, 0
  %1172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1172, %dx.types.Handle %91, float %1163, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1175 = add i32 %43, 116
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = shl i32 %1177, 4
  %1179 = and i32 %1178, 32752
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = lshr i32 %1177, 7
  %1182 = and i32 %1181, 32752
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = fsub fast float 1.000000e+00, %494
  %1185 = call float @dx.op.binary.f32(i32 35, float %1184, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1186 = bitcast float %494 to i32
  %1187 = sitofp i32 %1186 to float
  %1188 = fadd fast float %1187, 0xC1CFBF8940000000
  %1189 = fmul fast float %1183, %1188
  %1190 = fadd fast float %1189, 0x41CFBF8940000000
  %1191 = fptosi float %1190 to i32
  %1192 = bitcast i32 %1191 to float
  %1193 = bitcast float %1185 to i32
  %1194 = sitofp i32 %1193 to float
  %1195 = fadd fast float %1194, 0xC1CFBF8940000000
  %1196 = fmul fast float %1195, %1183
  %1197 = fadd fast float %1196, 0x41CFBF8940000000
  %1198 = fptosi float %1197 to i32
  %1199 = bitcast i32 %1198 to float
  %1200 = fmul fast float %1192, %1180
  %1201 = fmul fast float %1199, %1180
  %1202 = fsub fast float %1185, %1200
  %1203 = fadd fast float %1201, %1185
  %1204 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1205 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1206 = fsub fast float %1174, %1204
  %1207 = fsub fast float %1205, %1204
  %1208 = bitcast float %1207 to i32
  %1209 = sub nsw i32 2129859010, %1208
  %1210 = bitcast i32 %1209 to float
  %1211 = fmul fast float %1210, %1206
  %1212 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  br label %1213

; <label>:1213                                    ; preds = %1167, %1162
  %1214 = phi float [ %1212, %1167 ], [ %494, %1162 ]
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = and i32 %1216, 128
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1235, label %1219

; <label>:1219                                    ; preds = %1213
  %1220 = add i32 %43, 428
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = add i32 %1222, 0
  %1224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1224, %dx.types.Handle %91, float %1163, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = and i32 %1228, 524288
  %1230 = icmp ne i32 %1229, 0
  %1231 = fcmp fast ogt float %1226, 0x3FE0101020000000
  %1232 = select i1 %1231, float 1.000000e+00, float 0.000000e+00
  %1233 = select i1 %1230, float %1232, float %1226
  %1234 = fmul fast float %1233, %1214
  br label %1235

; <label>:1235                                    ; preds = %1219, %1213
  %1236 = phi float [ %1234, %1219 ], [ %1214, %1213 ]
  %1237 = fcmp fast ult float %1236, 0x3F70101020000000
  br i1 %1237, label %1780, label %1238

; <label>:1238                                    ; preds = %1235
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = and i32 %1240, 16
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1441, label %1243

; <label>:1243                                    ; preds = %1238
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = add i32 %43, 380
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = add i32 %1248, 0
  %1250 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1249, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1251 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1250, %dx.types.Handle %90, float %1163, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.ResRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.ResRet.f32 %1251, 2
  %1255 = extractvalue %dx.types.ResRet.f32 %1251, 3
  %1256 = and i32 %1245, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = lshr i32 %1245, 8
  %1259 = and i32 %1258, 255
  %1260 = uitofp i32 %1259 to float
  %1261 = fmul fast float %1255, %1257
  %1262 = fadd fast float %1261, %1260
  %1263 = fmul fast float %1262, 0x3F70101000000000
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = and i32 %1265, 512
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1276, label %1268

; <label>:1268                                    ; preds = %1243
  %1269 = add i32 %43, 464
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = add i32 %1271, 0
  %1273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1273, %dx.types.Handle %91, float %1163, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  br label %1276

; <label>:1276                                    ; preds = %1268, %1243
  %1277 = phi float [ %1275, %1268 ], [ 1.000000e+00, %1243 ]
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = and i32 %1279, 33554432
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1388, label %1282

; <label>:1282                                    ; preds = %1276
  %1283 = add i32 %43, 240
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = and i32 %1285, 65535
  %1287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1286)  ; LegacyF16ToF32(value)
  %1288 = lshr i32 %1285, 16
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = add i32 %43, 244
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = and i32 %1292, 65535
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = lshr i32 %1296, 24
  %1298 = uitofp i32 %1297 to float
  %1299 = fmul fast float %1298, 0x3F70101020000000
  %1300 = and i32 %1296, 255
  %1301 = uitofp i32 %1300 to float
  %1302 = fmul fast float %1301, 0x3F70101020000000
  %1303 = lshr i32 %1296, 8
  %1304 = and i32 %1303, 255
  %1305 = uitofp i32 %1304 to float
  %1306 = fmul fast float %1305, 0x3F70101020000000
  %1307 = lshr i32 %1296, 16
  %1308 = and i32 %1307, 255
  %1309 = uitofp i32 %1308 to float
  %1310 = fmul fast float %1309, 0x3F70101020000000
  %1311 = add i32 %43, 236
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = lshr i32 %1313, 24
  %1315 = uitofp i32 %1314 to float
  %1316 = fmul fast float %1315, 0x3F70101020000000
  %1317 = and i32 %1313, 255
  %1318 = uitofp i32 %1317 to float
  %1319 = fmul fast float %1318, 0x3F70101020000000
  %1320 = lshr i32 %1313, 8
  %1321 = and i32 %1320, 255
  %1322 = uitofp i32 %1321 to float
  %1323 = fmul fast float %1322, 0x3F70101020000000
  %1324 = lshr i32 %1313, 16
  %1325 = and i32 %1324, 255
  %1326 = uitofp i32 %1325 to float
  %1327 = fmul fast float %1326, 0x3F70101020000000
  %1328 = bitcast float %1252 to i32
  %1329 = ashr i32 %1328, 1
  %1330 = sub nsw i32 1597463174, %1329
  %1331 = bitcast i32 %1330 to float
  %1332 = fmul fast float %1252, 5.000000e-01
  %1333 = fmul fast float %1331, %1331
  %1334 = fmul fast float %1333, %1332
  %1335 = fsub fast float 1.500000e+00, %1334
  %1336 = fmul fast float %1331, %1252
  %1337 = fmul fast float %1336, %1335
  %1338 = bitcast float %1253 to i32
  %1339 = ashr i32 %1338, 1
  %1340 = sub nsw i32 1597463174, %1339
  %1341 = bitcast i32 %1340 to float
  %1342 = fmul fast float %1253, 5.000000e-01
  %1343 = fmul fast float %1341, %1341
  %1344 = fmul fast float %1343, %1342
  %1345 = fsub fast float 1.500000e+00, %1344
  %1346 = fmul fast float %1341, %1253
  %1347 = fmul fast float %1346, %1345
  %1348 = bitcast float %1254 to i32
  %1349 = ashr i32 %1348, 1
  %1350 = sub nsw i32 1597463174, %1349
  %1351 = bitcast i32 %1350 to float
  %1352 = fmul fast float %1254, 5.000000e-01
  %1353 = fmul fast float %1351, %1351
  %1354 = fmul fast float %1353, %1352
  %1355 = fsub fast float 1.500000e+00, %1354
  %1356 = fmul fast float %1351, %1254
  %1357 = fmul fast float %1356, %1355
  %1358 = fsub fast float %1337, %1319
  %1359 = fsub fast float %1347, %1323
  %1360 = fsub fast float %1357, %1327
  %1361 = fmul fast float %1358, %1287
  %1362 = fmul fast float %1359, %1289
  %1363 = fmul fast float %1360, %1294
  %1364 = fadd fast float %1361, %1302
  %1365 = fadd fast float %1362, %1306
  %1366 = fadd fast float %1363, %1310
  %1367 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1368 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1369 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1370 = fmul fast float %1367, %1367
  %1371 = fmul fast float %1368, %1368
  %1372 = fmul fast float %1369, %1369
  %1373 = fsub fast float %1370, %1252
  %1374 = fsub fast float %1371, %1253
  %1375 = fsub fast float %1372, %1254
  %1376 = fmul fast float %1373, %1277
  %1377 = fmul fast float %1374, %1277
  %1378 = fmul fast float %1375, %1277
  %1379 = fadd fast float %1376, %1252
  %1380 = fadd fast float %1377, %1253
  %1381 = fadd fast float %1378, %1254
  %1382 = fadd fast float %1299, %1263
  %1383 = fsub fast float %1382, %1316
  %1384 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1385 = fsub fast float %1384, %1263
  %1386 = fmul fast float %1385, %1277
  %1387 = fadd fast float %1386, %1263
  br label %1441

; <label>:1388                                    ; preds = %1276
  %1389 = and i32 %1279, 134217728
  %1390 = icmp eq i32 %1389, 0
  br i1 %1390, label %1425, label %1391

; <label>:1391                                    ; preds = %1388
  %1392 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %1393 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %1394 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %1395 = fadd fast float %1392, -5.000000e-01
  %1396 = fadd fast float %1393, -5.000000e-01
  %1397 = fadd fast float %1394, -5.000000e-01
  %1398 = fmul fast float %1395, %1277
  %1399 = fmul fast float %1396, %1277
  %1400 = fmul fast float %1397, %1277
  %1401 = fadd fast float %1398, 5.000000e-01
  %1402 = fadd fast float %1399, 5.000000e-01
  %1403 = fadd fast float %1400, 5.000000e-01
  %1404 = call float @dx.op.unary.f32(i32 24, float %1252)  ; Sqrt(value)
  %1405 = call float @dx.op.unary.f32(i32 24, float %1253)  ; Sqrt(value)
  %1406 = call float @dx.op.unary.f32(i32 24, float %1254)  ; Sqrt(value)
  %1407 = fmul fast float %1401, 2.000000e+00
  %1408 = fsub fast float 1.000000e+00, %1407
  %1409 = fmul fast float %1408, %1404
  %1410 = fadd fast float %1409, %1407
  %1411 = fmul fast float %1410, %1404
  %1412 = fmul fast float %1402, 2.000000e+00
  %1413 = fsub fast float 1.000000e+00, %1412
  %1414 = fmul fast float %1413, %1405
  %1415 = fadd fast float %1414, %1412
  %1416 = fmul fast float %1415, %1405
  %1417 = fmul fast float %1403, 2.000000e+00
  %1418 = fsub fast float 1.000000e+00, %1417
  %1419 = fmul fast float %1418, %1406
  %1420 = fadd fast float %1419, %1417
  %1421 = fmul fast float %1420, %1406
  %1422 = fmul fast float %1411, %1411
  %1423 = fmul fast float %1416, %1416
  %1424 = fmul fast float %1421, %1421
  br label %1441

; <label>:1425                                    ; preds = %1388
  %1426 = fmul fast float %326, %326
  %1427 = fmul fast float %330, %330
  %1428 = fmul fast float %334, %334
  %1429 = fadd fast float %1426, -1.000000e+00
  %1430 = fadd fast float %1427, -1.000000e+00
  %1431 = fadd fast float %1428, -1.000000e+00
  %1432 = fmul fast float %1277, %1429
  %1433 = fmul fast float %1277, %1430
  %1434 = fmul fast float %1277, %1431
  %1435 = fadd fast float %1432, 1.000000e+00
  %1436 = fadd fast float %1433, 1.000000e+00
  %1437 = fadd fast float %1434, 1.000000e+00
  %1438 = fmul fast float %1435, %1252
  %1439 = fmul fast float %1436, %1253
  %1440 = fmul fast float %1437, %1254
  br label %1441

; <label>:1441                                    ; preds = %1425, %1391, %1282, %1238
  %1442 = phi float [ %1387, %1282 ], [ %1263, %1391 ], [ %1263, %1425 ], [ 0x3FA23C0BE0000000, %1238 ]
  %1443 = phi float [ %1379, %1282 ], [ %1422, %1391 ], [ %1438, %1425 ], [ 1.000000e+00, %1238 ]
  %1444 = phi float [ %1380, %1282 ], [ %1423, %1391 ], [ %1439, %1425 ], [ 1.000000e+00, %1238 ]
  %1445 = phi float [ %1381, %1282 ], [ %1424, %1391 ], [ %1440, %1425 ], [ 1.000000e+00, %1238 ]
  %1446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.i32 %1446, 1
  %1448 = and i32 %1447, 1
  %1449 = icmp ne i32 %1448, 0
  %1450 = add i32 %43, 356
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1450, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = and i32 %1452, 32
  %1454 = icmp ne i32 %1453, 0
  %1455 = and i1 %1449, %1454
  %1456 = select i1 %1455, float 1.000000e+00, float %1443
  %1457 = select i1 %1455, float 0x3FD3333340000000, float %1444
  %1458 = select i1 %1455, float 0x3FD3333340000000, float %1445
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = and i32 %1460, 32
  %1462 = icmp eq i32 %1461, 0
  br i1 %1462, label %1535, label %1463

; <label>:1463                                    ; preds = %1441
  %1464 = add i32 %43, 108
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %43, 396
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = add i32 %1469, 0
  %1471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1472 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1471, %dx.types.Handle %90, float %1163, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  %1474 = extractvalue %dx.types.ResRet.f32 %1472, 1
  %1475 = extractvalue %dx.types.ResRet.f32 %1472, 2
  %1476 = extractvalue %dx.types.ResRet.f32 %1472, 3
  %1477 = and i32 %1466, 255
  %1478 = uitofp i32 %1477 to float
  %1479 = lshr i32 %1466, 8
  %1480 = and i32 %1479, 255
  %1481 = uitofp i32 %1480 to float
  %1482 = lshr i32 %1466, 16
  %1483 = and i32 %1482, 255
  %1484 = uitofp i32 %1483 to float
  %1485 = fmul fast float %1484, 0x3F70101000000000
  %1486 = fmul fast float %1473, %1478
  %1487 = fadd fast float %1486, %1481
  %1488 = fmul fast float %1487, 0x3F70101000000000
  %1489 = fadd fast float %1474, -5.000000e-01
  %1490 = fadd fast float %1476, -5.000000e-01
  %1491 = fmul fast float %1489, %1485
  %1492 = fmul fast float %1490, %1485
  %1493 = fadd fast float %1491, 5.000000e-01
  %1494 = fadd fast float %1492, 5.000000e-01
  %1495 = fmul fast float %1493, 2.000000e+00
  %1496 = fadd fast float %1495, -1.000000e+00
  %1497 = fmul fast float %1494, 2.000000e+00
  %1498 = fadd fast float %1497, -1.000000e+00
  %1499 = fadd fast float %1496, %1498
  %1500 = fmul fast float %1499, 5.000000e-01
  %1501 = fsub fast float %1496, %1498
  %1502 = fmul fast float %1501, 5.000000e-01
  %1503 = call float @dx.op.unary.f32(i32 6, float %1500)  ; FAbs(value)
  %1504 = fsub fast float 1.000000e+00, %1503
  %1505 = call float @dx.op.unary.f32(i32 6, float %1502)  ; FAbs(value)
  %1506 = fsub fast float %1504, %1505
  %1507 = call float @dx.op.dot3.f32(i32 55, float %1500, float %1502, float %1506, float %1500, float %1502, float %1506)  ; Dot3(ax,ay,az,bx,by,bz)
  %1508 = call float @dx.op.unary.f32(i32 25, float %1507)  ; Rsqrt(value)
  %1509 = fmul fast float %1500, %1508
  %1510 = fmul fast float %1502, %1508
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 67108864
  %1514 = icmp eq i32 %1513, 0
  br i1 %1514, label %1531, label %1515

; <label>:1515                                    ; preds = %1463
  %1516 = add i32 %43, 296
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = and i32 %1518, 65535
  %1520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1519)  ; LegacyF16ToF32(value)
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 65535
  %1524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1523)  ; LegacyF16ToF32(value)
  %1525 = lshr i32 %1518, 16
  %1526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1525)  ; LegacyF16ToF32(value)
  %1527 = fsub fast float %1488, %1526
  %1528 = fmul fast float %1527, %1520
  %1529 = fadd fast float %1528, %1524
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  br label %1531

; <label>:1531                                    ; preds = %1515, %1463
  %1532 = phi float [ %1530, %1515 ], [ %1488, %1463 ]
  %1533 = call float @dx.op.dot2.f32(i32 54, float %1509, float %1510, float %1067, float %1068)  ; Dot2(ax,ay,bx,by)
  %1534 = call float @dx.op.dot2.f32(i32 54, float %1509, float %1510, float %1069, float %1070)  ; Dot2(ax,ay,bx,by)
  br label %1535

; <label>:1535                                    ; preds = %1531, %1441
  %1536 = phi float [ %1532, %1531 ], [ 0x3FD6666660000000, %1441 ]
  %1537 = phi float [ %1533, %1531 ], [ 0.000000e+00, %1441 ]
  %1538 = phi float [ %1534, %1531 ], [ 0.000000e+00, %1441 ]
  %1539 = phi float [ %1475, %1531 ], [ 1.000000e+00, %1441 ]
  %1540 = add i32 %43, 176
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = lshr i32 %1542, 22
  %1544 = shl nuw nsw i32 %1543, 5
  %1545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1544)  ; LegacyF16ToF32(value)
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 64
  %1549 = icmp eq i32 %1548, 0
  br i1 %1549, label %1583, label %1550

; <label>:1550                                    ; preds = %1535
  %1551 = add i32 %43, 412
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = add i32 %1553, 0
  %1555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = and i32 %1557, 131072
  %1559 = icmp eq i32 %1558, 0
  %1560 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1555, %dx.types.Handle %90, float %1163, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1561 = extractvalue %dx.types.ResRet.f32 %1560, 0
  %1562 = extractvalue %dx.types.ResRet.f32 %1560, 1
  %1563 = extractvalue %dx.types.ResRet.f32 %1560, 2
  %1564 = fmul fast float %1561, %314
  %1565 = fmul fast float %1562, %317
  %1566 = fmul fast float %1563, %320
  br i1 %1559, label %1573, label %1567

; <label>:1567                                    ; preds = %1550
  %1568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1568, 0
  %1570 = fmul fast float %1569, %1564
  %1571 = fmul fast float %1569, %1565
  %1572 = fmul fast float %1569, %1566
  br label %1573

; <label>:1573                                    ; preds = %1567, %1550
  %1574 = phi float [ %1570, %1567 ], [ %1564, %1550 ]
  %1575 = phi float [ %1571, %1567 ], [ %1565, %1550 ]
  %1576 = phi float [ %1572, %1567 ], [ %1566, %1550 ]
  %1577 = fmul fast float %1574, %1545
  %1578 = select i1 %255, float %1577, float %1574
  %1579 = call float @dx.op.dot3.f32(i32 55, float %1578, float %1575, float %1576, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = select i1 %255, float 0.000000e+00, float %1574
  %1581 = select i1 %255, float %1579, float %1575
  %1582 = select i1 %255, float 0.000000e+00, float %1576
  br label %1583

; <label>:1583                                    ; preds = %1573, %1535
  %1584 = phi float [ %1580, %1573 ], [ 0.000000e+00, %1535 ]
  %1585 = phi float [ %1581, %1573 ], [ 0.000000e+00, %1535 ]
  %1586 = phi float [ %1582, %1573 ], [ 0.000000e+00, %1535 ]
  %1587 = add i32 %43, 112
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1587, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 255
  %1591 = uitofp i32 %1590 to float
  %1592 = lshr i32 %1589, 8
  %1593 = and i32 %1592, 255
  %1594 = uitofp i32 %1593 to float
  %1595 = call float @dx.op.dot3.f32(i32 55, float %1456, float %1457, float %1458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1596 = fmul fast float %1594, %1595
  %1597 = fadd fast float %1596, %1591
  %1598 = fmul fast float %1597, 0x3F70101020000000
  %1599 = call float @dx.op.unary.f32(i32 7, float %1598)  ; Saturate(value)
  br i1 %1055, label %1600, label %1608

; <label>:1600                                    ; preds = %1583
  %1601 = fsub fast float 1.000000e+00, %1236
  %1602 = fmul fast float %1601, %1043
  %1603 = fmul fast float %1601, %1044
  %1604 = fmul fast float %1601, %1045
  %1605 = fmul fast float %1601, %1046
  %1606 = fmul fast float %1601, %1047
  %1607 = fmul fast float %1601, %1048
  br label %1608

; <label>:1608                                    ; preds = %1600, %1583
  %1609 = phi float [ %1602, %1600 ], [ %1043, %1583 ]
  %1610 = phi float [ %1603, %1600 ], [ %1044, %1583 ]
  %1611 = phi float [ %1604, %1600 ], [ %1045, %1583 ]
  %1612 = phi float [ %1605, %1600 ], [ %1046, %1583 ]
  %1613 = phi float [ %1606, %1600 ], [ %1047, %1583 ]
  %1614 = phi float [ %1607, %1600 ], [ %1048, %1583 ]
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 3
  %1618 = icmp eq i32 %1617, 3
  br i1 %1618, label %1697, label %1619

; <label>:1619                                    ; preds = %1608
  %1620 = and i32 %1616, 16
  %1621 = icmp ne i32 %1620, 0
  %1622 = select i1 %1621, float %1236, float 0.000000e+00
  %1623 = icmp eq i32 %1617, 0
  br i1 %1623, label %1624, label %1652

; <label>:1624                                    ; preds = %1619
  %1625 = and i32 %1616, 64
  %1626 = icmp ne i32 %1625, 0
  %1627 = select i1 %1626, float %1236, float 0.000000e+00
  %1628 = fsub fast float %1456, %1609
  %1629 = fsub fast float %1457, %1610
  %1630 = fsub fast float %1458, %1611
  %1631 = fmul fast float %1622, %1628
  %1632 = fmul fast float %1622, %1629
  %1633 = fmul fast float %1622, %1630
  %1634 = fadd fast float %1631, %1609
  %1635 = fadd fast float %1632, %1610
  %1636 = fadd fast float %1633, %1611
  %1637 = fsub fast float %1442, %1049
  %1638 = fmul fast float %1622, %1637
  %1639 = fadd fast float %1638, %1049
  %1640 = fsub fast float %1584, %1612
  %1641 = fsub fast float %1585, %1613
  %1642 = fsub fast float %1586, %1614
  %1643 = fmul fast float %1627, %1640
  %1644 = fmul fast float %1627, %1641
  %1645 = fmul fast float %1627, %1642
  %1646 = fadd fast float %1643, %1612
  %1647 = fadd fast float %1644, %1613
  %1648 = fadd fast float %1645, %1614
  %1649 = fsub fast float %1599, %1053
  %1650 = fmul fast float %1622, %1649
  %1651 = fadd fast float %1650, %1053
  br label %1697

; <label>:1652                                    ; preds = %1619
  %1653 = icmp eq i32 %1617, 1
  br i1 %1653, label %1654, label %1667

; <label>:1654                                    ; preds = %1652
  %1655 = fadd fast float %1456, -1.000000e+00
  %1656 = fadd fast float %1457, -1.000000e+00
  %1657 = fadd fast float %1458, -1.000000e+00
  %1658 = fmul fast float %1622, %1655
  %1659 = fmul fast float %1622, %1656
  %1660 = fmul fast float %1622, %1657
  %1661 = fadd fast float %1658, 1.000000e+00
  %1662 = fadd fast float %1659, 1.000000e+00
  %1663 = fadd fast float %1660, 1.000000e+00
  %1664 = fmul fast float %1661, %1609
  %1665 = fmul fast float %1662, %1610
  %1666 = fmul fast float %1663, %1611
  br label %1697

; <label>:1667                                    ; preds = %1652
  %1668 = icmp eq i32 %1617, 2
  br i1 %1668, label %1669, label %1697

; <label>:1669                                    ; preds = %1667
  %1670 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1671 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1672 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1673 = fadd fast float %1670, -5.000000e-01
  %1674 = fadd fast float %1671, -5.000000e-01
  %1675 = fadd fast float %1672, -5.000000e-01
  %1676 = fmul fast float %1673, %1622
  %1677 = fmul fast float %1674, %1622
  %1678 = fmul fast float %1675, %1622
  %1679 = fadd fast float %1676, 5.000000e-01
  %1680 = fadd fast float %1677, 5.000000e-01
  %1681 = fadd fast float %1678, 5.000000e-01
  %1682 = fmul fast float %1679, 2.000000e+00
  %1683 = fsub fast float 1.000000e+00, %1682
  %1684 = fmul fast float %1683, %1609
  %1685 = fadd fast float %1684, %1682
  %1686 = fmul fast float %1685, %1609
  %1687 = fmul fast float %1680, 2.000000e+00
  %1688 = fsub fast float 1.000000e+00, %1687
  %1689 = fmul fast float %1688, %1610
  %1690 = fadd fast float %1689, %1687
  %1691 = fmul fast float %1690, %1610
  %1692 = fmul fast float %1681, 2.000000e+00
  %1693 = fsub fast float 1.000000e+00, %1692
  %1694 = fmul fast float %1693, %1611
  %1695 = fadd fast float %1694, %1692
  %1696 = fmul fast float %1695, %1611
  br label %1697

; <label>:1697                                    ; preds = %1669, %1667, %1654, %1624, %1608
  %1698 = phi float [ %1609, %1608 ], [ %1686, %1669 ], [ %1609, %1667 ], [ %1664, %1654 ], [ %1634, %1624 ]
  %1699 = phi float [ %1610, %1608 ], [ %1691, %1669 ], [ %1610, %1667 ], [ %1665, %1654 ], [ %1635, %1624 ]
  %1700 = phi float [ %1611, %1608 ], [ %1696, %1669 ], [ %1611, %1667 ], [ %1666, %1654 ], [ %1636, %1624 ]
  %1701 = phi float [ %1612, %1608 ], [ %1612, %1669 ], [ %1612, %1667 ], [ %1612, %1654 ], [ %1646, %1624 ]
  %1702 = phi float [ %1613, %1608 ], [ %1613, %1669 ], [ %1613, %1667 ], [ %1613, %1654 ], [ %1647, %1624 ]
  %1703 = phi float [ %1614, %1608 ], [ %1614, %1669 ], [ %1614, %1667 ], [ %1614, %1654 ], [ %1648, %1624 ]
  %1704 = phi float [ %1049, %1608 ], [ %1049, %1669 ], [ %1049, %1667 ], [ %1049, %1654 ], [ %1639, %1624 ]
  %1705 = phi float [ %1053, %1608 ], [ %1053, %1669 ], [ %1053, %1667 ], [ %1053, %1654 ], [ %1651, %1624 ]
  %1706 = and i32 %1616, 12
  %1707 = icmp eq i32 %1706, 12
  br i1 %1707, label %1780, label %1708

; <label>:1708                                    ; preds = %1697
  %1709 = and i32 %1616, 2097184
  %1710 = icmp eq i32 %1709, 2097184
  %1711 = select i1 %1710, float %1236, float 0.000000e+00
  %1712 = and i32 %1616, 4194336
  %1713 = icmp eq i32 %1712, 4194336
  %1714 = select i1 %1713, float %1236, float 0.000000e+00
  %1715 = and i32 %1616, 8388640
  %1716 = icmp eq i32 %1715, 8388640
  %1717 = select i1 %1716, float %1236, float 0.000000e+00
  %1718 = icmp eq i32 %1706, 0
  br i1 %1718, label %1719, label %1732

; <label>:1719                                    ; preds = %1708
  %1720 = fsub fast float %1537, %1041
  %1721 = fsub fast float %1538, %1042
  %1722 = fmul fast float %1711, %1720
  %1723 = fmul fast float %1711, %1721
  %1724 = fadd fast float %1722, %1041
  %1725 = fadd fast float %1723, %1042
  %1726 = fsub fast float %1539, %1052
  %1727 = fmul fast float %1714, %1726
  %1728 = fadd fast float %1727, %1052
  %1729 = fsub fast float %1536, %1051
  %1730 = fmul fast float %1717, %1729
  %1731 = fadd fast float %1730, %1051
  br label %1780

; <label>:1732                                    ; preds = %1708
  %1733 = icmp eq i32 %1706, 4
  br i1 %1733, label %1734, label %1766

; <label>:1734                                    ; preds = %1732
  %1735 = fmul fast float %1711, %1537
  %1736 = fmul fast float %1711, %1538
  %1737 = fadd fast float %1735, %1041
  %1738 = fadd fast float %1736, %1042
  %1739 = call float @dx.op.binary.f32(i32 36, float %1052, float %1539)  ; FMin(a,b)
  %1740 = fsub fast float %1739, %1052
  %1741 = fmul fast float %1740, %1714
  %1742 = fadd fast float %1741, %1052
  %1743 = fadd fast float %1536, %1051
  %1744 = fmul fast float %1743, 0x3FF337FAE0000000
  %1745 = fmul fast float %1051, %1051
  %1746 = fmul fast float %1536, %1536
  %1747 = fadd fast float %1746, %1745
  %1748 = fmul fast float %1747, 0x3FE5152B00000000
  %1749 = fmul fast float %1051, 0xBFCC1F85E0000000
  %1750 = fmul fast float %1749, %1536
  %1751 = fadd fast float %1750, 0xBFE1363700000000
  %1752 = fadd fast float %1751, %1744
  %1753 = fsub fast float %1752, %1748
  %1754 = fmul fast float %1743, 0x3FBA6F0D00000000
  %1755 = fmul fast float %1747, 0x3FD0432880000000
  %1756 = fmul fast float %1051, 0xBFEF110800000000
  %1757 = fmul fast float %1756, %1536
  %1758 = fadd fast float %1757, 1.000000e+00
  %1759 = fsub fast float %1758, %1754
  %1760 = fadd fast float %1759, %1755
  %1761 = fdiv fast float %1753, %1760
  %1762 = call float @dx.op.unary.f32(i32 7, float %1761)  ; Saturate(value)
  %1763 = fsub fast float %1762, %1051
  %1764 = fmul fast float %1763, %1717
  %1765 = fadd fast float %1764, %1051
  br label %1780

; <label>:1766                                    ; preds = %1732
  %1767 = icmp eq i32 %1706, 8
  br i1 %1767, label %1768, label %1780

; <label>:1768                                    ; preds = %1766
  %1769 = fmul fast float %1711, %1537
  %1770 = fmul fast float %1711, %1538
  %1771 = fadd fast float %1769, %1041
  %1772 = fadd fast float %1770, %1042
  %1773 = call float @dx.op.binary.f32(i32 36, float %1052, float %1539)  ; FMin(a,b)
  %1774 = fsub fast float %1773, %1052
  %1775 = fmul fast float %1774, %1714
  %1776 = fadd fast float %1775, %1052
  %1777 = fsub fast float %1536, %1051
  %1778 = fmul fast float %1717, %1777
  %1779 = fadd fast float %1778, %1051
  br label %1780

; <label>:1780                                    ; preds = %1768, %1766, %1734, %1719, %1697, %1235, %1054, %1040
  %1781 = phi float [ %1041, %1697 ], [ %1041, %1235 ], [ %1041, %1040 ], [ %1771, %1768 ], [ %1041, %1766 ], [ %1737, %1734 ], [ %1724, %1719 ], [ %1041, %1054 ]
  %1782 = phi float [ %1042, %1697 ], [ %1042, %1235 ], [ %1042, %1040 ], [ %1772, %1768 ], [ %1042, %1766 ], [ %1738, %1734 ], [ %1725, %1719 ], [ %1042, %1054 ]
  %1783 = phi float [ %1698, %1697 ], [ %1043, %1235 ], [ %1043, %1040 ], [ %1698, %1768 ], [ %1698, %1766 ], [ %1698, %1734 ], [ %1698, %1719 ], [ %1043, %1054 ]
  %1784 = phi float [ %1699, %1697 ], [ %1044, %1235 ], [ %1044, %1040 ], [ %1699, %1768 ], [ %1699, %1766 ], [ %1699, %1734 ], [ %1699, %1719 ], [ %1044, %1054 ]
  %1785 = phi float [ %1700, %1697 ], [ %1045, %1235 ], [ %1045, %1040 ], [ %1700, %1768 ], [ %1700, %1766 ], [ %1700, %1734 ], [ %1700, %1719 ], [ %1045, %1054 ]
  %1786 = phi float [ %1701, %1697 ], [ %1046, %1235 ], [ %1046, %1040 ], [ %1701, %1768 ], [ %1701, %1766 ], [ %1701, %1734 ], [ %1701, %1719 ], [ %1046, %1054 ]
  %1787 = phi float [ %1702, %1697 ], [ %1047, %1235 ], [ %1047, %1040 ], [ %1702, %1768 ], [ %1702, %1766 ], [ %1702, %1734 ], [ %1702, %1719 ], [ %1047, %1054 ]
  %1788 = phi float [ %1703, %1697 ], [ %1048, %1235 ], [ %1048, %1040 ], [ %1703, %1768 ], [ %1703, %1766 ], [ %1703, %1734 ], [ %1703, %1719 ], [ %1048, %1054 ]
  %1789 = phi float [ %1704, %1697 ], [ %1049, %1235 ], [ %1049, %1040 ], [ %1704, %1768 ], [ %1704, %1766 ], [ %1704, %1734 ], [ %1704, %1719 ], [ %1049, %1054 ]
  %1790 = phi float [ %1051, %1697 ], [ %1051, %1235 ], [ %1051, %1040 ], [ %1779, %1768 ], [ %1051, %1766 ], [ %1765, %1734 ], [ %1731, %1719 ], [ %1051, %1054 ]
  %1791 = phi float [ %1052, %1697 ], [ %1052, %1235 ], [ %1052, %1040 ], [ %1776, %1768 ], [ %1052, %1766 ], [ %1742, %1734 ], [ %1728, %1719 ], [ %1052, %1054 ]
  %1792 = phi float [ %1705, %1697 ], [ %1053, %1235 ], [ %1053, %1040 ], [ %1705, %1768 ], [ %1705, %1766 ], [ %1705, %1734 ], [ %1705, %1719 ], [ %1053, %1054 ]
  br i1 %441, label %2519, label %1793

; <label>:1793                                    ; preds = %1780
  %1794 = icmp ult i32 %497, 3
  %1795 = add i32 %43, 56
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = add i32 %43, 60
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = or i32 %1800, %1797
  %1802 = icmp eq i32 %1801, 0
  br i1 %1802, label %2519, label %1803

; <label>:1803                                    ; preds = %1793
  %1804 = and i32 %1797, 262144
  %1805 = icmp ne i32 %1804, 0
  %1806 = select i1 %1805, float %49, float 1.000000e+00
  %1807 = select i1 %1805, float %50, float 0.000000e+00
  %1808 = select i1 %1805, float %51, float 0.000000e+00
  %1809 = select i1 %1805, float %52, float 1.000000e+00
  %1810 = select i1 %1805, float %53, float %76
  %1811 = select i1 %1805, float %54, float %77
  %1812 = add i32 %43, 316
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1812, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = lshr i32 %1814, 16
  %1816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1815)  ; LegacyF16ToF32(value)
  %1817 = fmul fast float %1816, 0x3F50624DE0000000
  %1818 = add i32 %43, 120
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = lshr i32 %1820, 16
  %1822 = and i32 %1821, 255
  %1823 = lshr i32 %1820, 24
  %1824 = add i32 %43, 324
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1824, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = and i32 %1826, 65535
  %1828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1827)  ; LegacyF16ToF32(value)
  %1829 = lshr i32 %1826, 16
  %1830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1829)  ; LegacyF16ToF32(value)
  %1831 = add i32 %43, 64
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = lshr i32 %1833, 22
  %1835 = shl nuw nsw i32 %1834, 5
  %1836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1835)  ; LegacyF16ToF32(value)
  %1837 = shl i32 %1833, 4
  %1838 = and i32 %1837, 32752
  %1839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1838)  ; LegacyF16ToF32(value)
  %1840 = lshr i32 %1833, 7
  %1841 = and i32 %1840, 32752
  %1842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1841)  ; LegacyF16ToF32(value)
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 3
  %1845 = fmul fast float %1844, 1.000000e+03
  %1846 = fmul fast float %391, %1845
  %1847 = call float @dx.op.unary.f32(i32 22, float %1846)  ; Frc(value)
  %1848 = fadd fast float %1847, %381
  %1849 = fmul fast float %392, %1845
  %1850 = call float @dx.op.unary.f32(i32 22, float %1849)  ; Frc(value)
  %1851 = fadd fast float %1850, %383
  %1852 = fmul fast float %1817, %1845
  %1853 = call float @dx.op.unary.f32(i32 22, float %1852)  ; Frc(value)
  %1854 = fmul fast float %1853, 0x401921FB60000000
  %1855 = fadd fast float %1854, %1836
  %1856 = call float @dx.op.unary.f32(i32 13, float %1855)  ; Sin(value)
  %1857 = call float @dx.op.unary.f32(i32 12, float %1855)  ; Cos(value)
  %1858 = fsub fast float -0.000000e+00, %1856
  %1859 = fadd fast float %1810, -5.000000e-01
  %1860 = fadd fast float %1811, -5.000000e-01
  %1861 = fmul fast float %1828, %1859
  %1862 = fmul fast float %1830, %1860
  %1863 = fadd fast float %1861, 5.000000e-01
  %1864 = fadd fast float %1862, 5.000000e-01
  %1865 = fmul fast float %1839, %1863
  %1866 = fmul fast float %1842, %1864
  %1867 = fmul fast float %1857, %1865
  %1868 = call float @dx.op.tertiary.f32(i32 46, float %1858, float %1866, float %1867)  ; FMad(a,b,c)
  %1869 = fmul fast float %1856, %1865
  %1870 = call float @dx.op.tertiary.f32(i32 46, float %1857, float %1866, float %1869)  ; FMad(a,b,c)
  %1871 = fadd fast float %1848, %1868
  %1872 = fadd fast float %1851, %1870
  %1873 = icmp ugt i32 %1822, 1
  %1874 = icmp ugt i32 %1820, 33554431
  %1875 = or i1 %1874, %1873
  br i1 %1875, label %1876, label %1901

; <label>:1876                                    ; preds = %1803
  %1877 = add i32 %43, 260
  %1878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.i32 %1878, 0
  %1880 = lshr i32 %1879, 16
  %1881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1880)  ; LegacyF16ToF32(value)
  %1882 = fmul fast float %1844, %1881
  %1883 = call float @dx.op.unary.f32(i32 22, float %1882)  ; Frc(value)
  %1884 = mul nuw nsw i32 %1822, %1823
  %1885 = uitofp i32 %1884 to float
  %1886 = fmul fast float %1883, %1885
  %1887 = call float @dx.op.unary.f32(i32 27, float %1886)  ; Round_ni(value)
  %1888 = fptoui float %1887 to i32
  %1889 = urem i32 %1888, %1822
  %1890 = udiv i32 %1888, %1823
  %1891 = call float @dx.op.unary.f32(i32 22, float %1871)  ; Frc(value)
  %1892 = call float @dx.op.unary.f32(i32 22, float %1872)  ; Frc(value)
  %1893 = uitofp i32 %1889 to float
  %1894 = uitofp i32 %1890 to float
  %1895 = fadd fast float %1891, %1893
  %1896 = fadd fast float %1892, %1894
  %1897 = uitofp i32 %1822 to float
  %1898 = uitofp i32 %1823 to float
  %1899 = fdiv fast float %1895, %1897
  %1900 = fdiv fast float %1896, %1898
  br label %1901

; <label>:1901                                    ; preds = %1876, %1803
  %1902 = phi float [ %1899, %1876 ], [ %1871, %1803 ]
  %1903 = phi float [ %1900, %1876 ], [ %1872, %1803 ]
  %1904 = and i32 %1797, 256
  %1905 = icmp eq i32 %1904, 0
  br i1 %1905, label %1952, label %1906

; <label>:1906                                    ; preds = %1901
  %1907 = add i32 %43, 448
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = add i32 %1909, 0
  %1911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1910, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1912 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1911, %dx.types.Handle %91, float %1902, float %1903, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1913 = extractvalue %dx.types.ResRet.f32 %1912, 0
  %1914 = add i32 %43, 132
  %1915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.i32 %1915, 0
  %1917 = shl i32 %1916, 4
  %1918 = and i32 %1917, 32752
  %1919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1918)  ; LegacyF16ToF32(value)
  %1920 = lshr i32 %1916, 7
  %1921 = and i32 %1920, 32752
  %1922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1921)  ; LegacyF16ToF32(value)
  %1923 = fsub fast float 1.000000e+00, %493
  %1924 = call float @dx.op.binary.f32(i32 35, float %1923, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1925 = bitcast float %493 to i32
  %1926 = sitofp i32 %1925 to float
  %1927 = fadd fast float %1926, 0xC1CFBF8940000000
  %1928 = fmul fast float %1922, %1927
  %1929 = fadd fast float %1928, 0x41CFBF8940000000
  %1930 = fptosi float %1929 to i32
  %1931 = bitcast i32 %1930 to float
  %1932 = bitcast float %1924 to i32
  %1933 = sitofp i32 %1932 to float
  %1934 = fadd fast float %1933, 0xC1CFBF8940000000
  %1935 = fmul fast float %1934, %1922
  %1936 = fadd fast float %1935, 0x41CFBF8940000000
  %1937 = fptosi float %1936 to i32
  %1938 = bitcast i32 %1937 to float
  %1939 = fmul fast float %1931, %1919
  %1940 = fmul fast float %1938, %1919
  %1941 = fsub fast float %1924, %1939
  %1942 = fadd fast float %1940, %1924
  %1943 = call float @dx.op.unary.f32(i32 7, float %1941)  ; Saturate(value)
  %1944 = call float @dx.op.unary.f32(i32 7, float %1942)  ; Saturate(value)
  %1945 = fsub fast float %1913, %1943
  %1946 = fsub fast float %1944, %1943
  %1947 = bitcast float %1946 to i32
  %1948 = sub nsw i32 2129859010, %1947
  %1949 = bitcast i32 %1948 to float
  %1950 = fmul fast float %1949, %1945
  %1951 = call float @dx.op.unary.f32(i32 7, float %1950)  ; Saturate(value)
  br label %1952

; <label>:1952                                    ; preds = %1906, %1901
  %1953 = phi float [ %1951, %1906 ], [ %493, %1901 ]
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = and i32 %1955, 128
  %1957 = icmp eq i32 %1956, 0
  br i1 %1957, label %1974, label %1958

; <label>:1958                                    ; preds = %1952
  %1959 = add i32 %43, 432
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = add i32 %1961, 0
  %1963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1963, %dx.types.Handle %91, float %1902, float %1903, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 0
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = and i32 %1967, 524288
  %1969 = icmp ne i32 %1968, 0
  %1970 = fcmp fast ogt float %1965, 0x3FE0101020000000
  %1971 = select i1 %1970, float 1.000000e+00, float 0.000000e+00
  %1972 = select i1 %1969, float %1971, float %1965
  %1973 = fmul fast float %1972, %1953
  br label %1974

; <label>:1974                                    ; preds = %1958, %1952
  %1975 = phi float [ %1973, %1958 ], [ %1953, %1952 ]
  %1976 = fcmp fast ult float %1975, 0x3F70101020000000
  br i1 %1976, label %2519, label %1977

; <label>:1977                                    ; preds = %1974
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = and i32 %1979, 16
  %1981 = icmp eq i32 %1980, 0
  br i1 %1981, label %2180, label %1982

; <label>:1982                                    ; preds = %1977
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = add i32 %43, 384
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = add i32 %1987, 0
  %1989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1990 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1989, %dx.types.Handle %90, float %1902, float %1903, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1991 = extractvalue %dx.types.ResRet.f32 %1990, 0
  %1992 = extractvalue %dx.types.ResRet.f32 %1990, 1
  %1993 = extractvalue %dx.types.ResRet.f32 %1990, 2
  %1994 = extractvalue %dx.types.ResRet.f32 %1990, 3
  %1995 = and i32 %1984, 255
  %1996 = uitofp i32 %1995 to float
  %1997 = lshr i32 %1984, 8
  %1998 = and i32 %1997, 255
  %1999 = uitofp i32 %1998 to float
  %2000 = fmul fast float %1994, %1996
  %2001 = fadd fast float %2000, %1999
  %2002 = fmul fast float %2001, 0x3F70101000000000
  %2003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.i32 %2003, 0
  %2005 = and i32 %2004, 512
  %2006 = icmp eq i32 %2005, 0
  br i1 %2006, label %2015, label %2007

; <label>:2007                                    ; preds = %1982
  %2008 = add i32 %43, 468
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = add i32 %2010, 0
  %2012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2013 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2012, %dx.types.Handle %91, float %1902, float %1903, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2014 = extractvalue %dx.types.ResRet.f32 %2013, 0
  br label %2015

; <label>:2015                                    ; preds = %2007, %1982
  %2016 = phi float [ %2014, %2007 ], [ 1.000000e+00, %1982 ]
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = and i32 %2018, 33554432
  %2020 = icmp eq i32 %2019, 0
  br i1 %2020, label %2127, label %2021

; <label>:2021                                    ; preds = %2015
  %2022 = add i32 %43, 256
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = and i32 %2024, 65535
  %2026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2025)  ; LegacyF16ToF32(value)
  %2027 = lshr i32 %2024, 16
  %2028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2027)  ; LegacyF16ToF32(value)
  %2029 = add i32 %43, 260
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = and i32 %2031, 65535
  %2033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2032)  ; LegacyF16ToF32(value)
  %2034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.i32 %2034, 0
  %2036 = lshr i32 %2035, 24
  %2037 = uitofp i32 %2036 to float
  %2038 = fmul fast float %2037, 0x3F70101020000000
  %2039 = and i32 %2035, 255
  %2040 = uitofp i32 %2039 to float
  %2041 = fmul fast float %2040, 0x3F70101020000000
  %2042 = lshr i32 %2035, 8
  %2043 = and i32 %2042, 255
  %2044 = uitofp i32 %2043 to float
  %2045 = fmul fast float %2044, 0x3F70101020000000
  %2046 = lshr i32 %2035, 16
  %2047 = and i32 %2046, 255
  %2048 = uitofp i32 %2047 to float
  %2049 = fmul fast float %2048, 0x3F70101020000000
  %2050 = add i32 %43, 252
  %2051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.i32 %2051, 0
  %2053 = lshr i32 %2052, 24
  %2054 = uitofp i32 %2053 to float
  %2055 = fmul fast float %2054, 0x3F70101020000000
  %2056 = and i32 %2052, 255
  %2057 = uitofp i32 %2056 to float
  %2058 = fmul fast float %2057, 0x3F70101020000000
  %2059 = lshr i32 %2052, 8
  %2060 = and i32 %2059, 255
  %2061 = uitofp i32 %2060 to float
  %2062 = fmul fast float %2061, 0x3F70101020000000
  %2063 = lshr i32 %2052, 16
  %2064 = and i32 %2063, 255
  %2065 = uitofp i32 %2064 to float
  %2066 = fmul fast float %2065, 0x3F70101020000000
  %2067 = bitcast float %1991 to i32
  %2068 = ashr i32 %2067, 1
  %2069 = sub nsw i32 1597463174, %2068
  %2070 = bitcast i32 %2069 to float
  %2071 = fmul fast float %1991, 5.000000e-01
  %2072 = fmul fast float %2070, %2070
  %2073 = fmul fast float %2072, %2071
  %2074 = fsub fast float 1.500000e+00, %2073
  %2075 = fmul fast float %2070, %1991
  %2076 = fmul fast float %2075, %2074
  %2077 = bitcast float %1992 to i32
  %2078 = ashr i32 %2077, 1
  %2079 = sub nsw i32 1597463174, %2078
  %2080 = bitcast i32 %2079 to float
  %2081 = fmul fast float %1992, 5.000000e-01
  %2082 = fmul fast float %2080, %2080
  %2083 = fmul fast float %2082, %2081
  %2084 = fsub fast float 1.500000e+00, %2083
  %2085 = fmul fast float %2080, %1992
  %2086 = fmul fast float %2085, %2084
  %2087 = bitcast float %1993 to i32
  %2088 = ashr i32 %2087, 1
  %2089 = sub nsw i32 1597463174, %2088
  %2090 = bitcast i32 %2089 to float
  %2091 = fmul fast float %1993, 5.000000e-01
  %2092 = fmul fast float %2090, %2090
  %2093 = fmul fast float %2092, %2091
  %2094 = fsub fast float 1.500000e+00, %2093
  %2095 = fmul fast float %2090, %1993
  %2096 = fmul fast float %2095, %2094
  %2097 = fsub fast float %2076, %2058
  %2098 = fsub fast float %2086, %2062
  %2099 = fsub fast float %2096, %2066
  %2100 = fmul fast float %2097, %2026
  %2101 = fmul fast float %2098, %2028
  %2102 = fmul fast float %2099, %2033
  %2103 = fadd fast float %2100, %2041
  %2104 = fadd fast float %2101, %2045
  %2105 = fadd fast float %2102, %2049
  %2106 = call float @dx.op.unary.f32(i32 7, float %2103)  ; Saturate(value)
  %2107 = call float @dx.op.unary.f32(i32 7, float %2104)  ; Saturate(value)
  %2108 = call float @dx.op.unary.f32(i32 7, float %2105)  ; Saturate(value)
  %2109 = fmul fast float %2106, %2106
  %2110 = fmul fast float %2107, %2107
  %2111 = fmul fast float %2108, %2108
  %2112 = fsub fast float %2109, %1991
  %2113 = fsub fast float %2110, %1992
  %2114 = fsub fast float %2111, %1993
  %2115 = fmul fast float %2112, %2016
  %2116 = fmul fast float %2113, %2016
  %2117 = fmul fast float %2114, %2016
  %2118 = fadd fast float %2115, %1991
  %2119 = fadd fast float %2116, %1992
  %2120 = fadd fast float %2117, %1993
  %2121 = fadd fast float %2038, %2002
  %2122 = fsub fast float %2121, %2055
  %2123 = call float @dx.op.unary.f32(i32 7, float %2122)  ; Saturate(value)
  %2124 = fsub fast float %2123, %2002
  %2125 = fmul fast float %2124, %2016
  %2126 = fadd fast float %2125, %2002
  br label %2180

; <label>:2127                                    ; preds = %2015
  %2128 = and i32 %2018, 134217728
  %2129 = icmp eq i32 %2128, 0
  br i1 %2129, label %2164, label %2130

; <label>:2130                                    ; preds = %2127
  %2131 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %2132 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %2133 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %2134 = fadd fast float %2131, -5.000000e-01
  %2135 = fadd fast float %2132, -5.000000e-01
  %2136 = fadd fast float %2133, -5.000000e-01
  %2137 = fmul fast float %2134, %2016
  %2138 = fmul fast float %2135, %2016
  %2139 = fmul fast float %2136, %2016
  %2140 = fadd fast float %2137, 5.000000e-01
  %2141 = fadd fast float %2138, 5.000000e-01
  %2142 = fadd fast float %2139, 5.000000e-01
  %2143 = call float @dx.op.unary.f32(i32 24, float %1991)  ; Sqrt(value)
  %2144 = call float @dx.op.unary.f32(i32 24, float %1992)  ; Sqrt(value)
  %2145 = call float @dx.op.unary.f32(i32 24, float %1993)  ; Sqrt(value)
  %2146 = fmul fast float %2140, 2.000000e+00
  %2147 = fsub fast float 1.000000e+00, %2146
  %2148 = fmul fast float %2147, %2143
  %2149 = fadd fast float %2148, %2146
  %2150 = fmul fast float %2149, %2143
  %2151 = fmul fast float %2141, 2.000000e+00
  %2152 = fsub fast float 1.000000e+00, %2151
  %2153 = fmul fast float %2152, %2144
  %2154 = fadd fast float %2153, %2151
  %2155 = fmul fast float %2154, %2144
  %2156 = fmul fast float %2142, 2.000000e+00
  %2157 = fsub fast float 1.000000e+00, %2156
  %2158 = fmul fast float %2157, %2145
  %2159 = fadd fast float %2158, %2156
  %2160 = fmul fast float %2159, %2145
  %2161 = fmul fast float %2150, %2150
  %2162 = fmul fast float %2155, %2155
  %2163 = fmul fast float %2160, %2160
  br label %2180

; <label>:2164                                    ; preds = %2127
  %2165 = fmul fast float %368, %368
  %2166 = fmul fast float %372, %372
  %2167 = fmul fast float %376, %376
  %2168 = fadd fast float %2165, -1.000000e+00
  %2169 = fadd fast float %2166, -1.000000e+00
  %2170 = fadd fast float %2167, -1.000000e+00
  %2171 = fmul fast float %2016, %2168
  %2172 = fmul fast float %2016, %2169
  %2173 = fmul fast float %2016, %2170
  %2174 = fadd fast float %2171, 1.000000e+00
  %2175 = fadd fast float %2172, 1.000000e+00
  %2176 = fadd fast float %2173, 1.000000e+00
  %2177 = fmul fast float %2174, %1991
  %2178 = fmul fast float %2175, %1992
  %2179 = fmul fast float %2176, %1993
  br label %2180

; <label>:2180                                    ; preds = %2164, %2130, %2021, %1977
  %2181 = phi float [ %2126, %2021 ], [ %2002, %2130 ], [ %2002, %2164 ], [ 0x3FA23C0BE0000000, %1977 ]
  %2182 = phi float [ %2118, %2021 ], [ %2161, %2130 ], [ %2177, %2164 ], [ 1.000000e+00, %1977 ]
  %2183 = phi float [ %2119, %2021 ], [ %2162, %2130 ], [ %2178, %2164 ], [ 1.000000e+00, %1977 ]
  %2184 = phi float [ %2120, %2021 ], [ %2163, %2130 ], [ %2179, %2164 ], [ 1.000000e+00, %1977 ]
  %2185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2186 = extractvalue %dx.types.CBufRet.i32 %2185, 1
  %2187 = and i32 %2186, 1
  %2188 = icmp ne i32 %2187, 0
  %2189 = add i32 %43, 356
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = and i32 %2191, 32
  %2193 = icmp ne i32 %2192, 0
  %2194 = and i1 %2188, %2193
  %2195 = select i1 %2194, float 1.000000e+00, float %2182
  %2196 = select i1 %2194, float 0x3FD3333340000000, float %2183
  %2197 = select i1 %2194, float 0x3FD3333340000000, float %2184
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 32
  %2201 = icmp eq i32 %2200, 0
  br i1 %2201, label %2274, label %2202

; <label>:2202                                    ; preds = %2180
  %2203 = add i32 %43, 124
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2203, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = add i32 %43, 400
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = add i32 %2208, 0
  %2210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2209, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2210, %dx.types.Handle %90, float %1902, float %1903, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2212 = extractvalue %dx.types.ResRet.f32 %2211, 0
  %2213 = extractvalue %dx.types.ResRet.f32 %2211, 1
  %2214 = extractvalue %dx.types.ResRet.f32 %2211, 2
  %2215 = extractvalue %dx.types.ResRet.f32 %2211, 3
  %2216 = and i32 %2205, 255
  %2217 = uitofp i32 %2216 to float
  %2218 = lshr i32 %2205, 8
  %2219 = and i32 %2218, 255
  %2220 = uitofp i32 %2219 to float
  %2221 = lshr i32 %2205, 16
  %2222 = and i32 %2221, 255
  %2223 = uitofp i32 %2222 to float
  %2224 = fmul fast float %2223, 0x3F70101000000000
  %2225 = fmul fast float %2212, %2217
  %2226 = fadd fast float %2225, %2220
  %2227 = fmul fast float %2226, 0x3F70101000000000
  %2228 = fadd fast float %2213, -5.000000e-01
  %2229 = fadd fast float %2215, -5.000000e-01
  %2230 = fmul fast float %2228, %2224
  %2231 = fmul fast float %2229, %2224
  %2232 = fadd fast float %2230, 5.000000e-01
  %2233 = fadd fast float %2231, 5.000000e-01
  %2234 = fmul fast float %2232, 2.000000e+00
  %2235 = fadd fast float %2234, -1.000000e+00
  %2236 = fmul fast float %2233, 2.000000e+00
  %2237 = fadd fast float %2236, -1.000000e+00
  %2238 = fadd fast float %2235, %2237
  %2239 = fmul fast float %2238, 5.000000e-01
  %2240 = fsub fast float %2235, %2237
  %2241 = fmul fast float %2240, 5.000000e-01
  %2242 = call float @dx.op.unary.f32(i32 6, float %2239)  ; FAbs(value)
  %2243 = fsub fast float 1.000000e+00, %2242
  %2244 = call float @dx.op.unary.f32(i32 6, float %2241)  ; FAbs(value)
  %2245 = fsub fast float %2243, %2244
  %2246 = call float @dx.op.dot3.f32(i32 55, float %2239, float %2241, float %2245, float %2239, float %2241, float %2245)  ; Dot3(ax,ay,az,bx,by,bz)
  %2247 = call float @dx.op.unary.f32(i32 25, float %2246)  ; Rsqrt(value)
  %2248 = fmul fast float %2239, %2247
  %2249 = fmul fast float %2241, %2247
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = and i32 %2251, 67108864
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2270, label %2254

; <label>:2254                                    ; preds = %2202
  %2255 = add i32 %43, 312
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = and i32 %2257, 65535
  %2259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2258)  ; LegacyF16ToF32(value)
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = and i32 %2261, 65535
  %2263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2262)  ; LegacyF16ToF32(value)
  %2264 = lshr i32 %2257, 16
  %2265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2264)  ; LegacyF16ToF32(value)
  %2266 = fsub fast float %2227, %2265
  %2267 = fmul fast float %2266, %2259
  %2268 = fadd fast float %2267, %2263
  %2269 = call float @dx.op.unary.f32(i32 7, float %2268)  ; Saturate(value)
  br label %2270

; <label>:2270                                    ; preds = %2254, %2202
  %2271 = phi float [ %2269, %2254 ], [ %2227, %2202 ]
  %2272 = call float @dx.op.dot2.f32(i32 54, float %2248, float %2249, float %1806, float %1807)  ; Dot2(ax,ay,bx,by)
  %2273 = call float @dx.op.dot2.f32(i32 54, float %2248, float %2249, float %1808, float %1809)  ; Dot2(ax,ay,bx,by)
  br label %2274

; <label>:2274                                    ; preds = %2270, %2180
  %2275 = phi float [ %2271, %2270 ], [ 0x3FD6666660000000, %2180 ]
  %2276 = phi float [ %2272, %2270 ], [ 0.000000e+00, %2180 ]
  %2277 = phi float [ %2273, %2270 ], [ 0.000000e+00, %2180 ]
  %2278 = phi float [ %2214, %2270 ], [ 1.000000e+00, %2180 ]
  %2279 = add i32 %43, 192
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = lshr i32 %2281, 22
  %2283 = shl nuw nsw i32 %2282, 5
  %2284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2283)  ; LegacyF16ToF32(value)
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = and i32 %2286, 64
  %2288 = icmp eq i32 %2287, 0
  br i1 %2288, label %2322, label %2289

; <label>:2289                                    ; preds = %2274
  %2290 = add i32 %43, 416
  %2291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2290, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.i32 %2291, 0
  %2293 = add i32 %2292, 0
  %2294 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2293, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2296 = extractvalue %dx.types.ResRet.i32 %2295, 0
  %2297 = and i32 %2296, 131072
  %2298 = icmp eq i32 %2297, 0
  %2299 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2294, %dx.types.Handle %90, float %1902, float %1903, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2300 = extractvalue %dx.types.ResRet.f32 %2299, 0
  %2301 = extractvalue %dx.types.ResRet.f32 %2299, 1
  %2302 = extractvalue %dx.types.ResRet.f32 %2299, 2
  %2303 = fmul fast float %2300, %356
  %2304 = fmul fast float %2301, %359
  %2305 = fmul fast float %2302, %362
  br i1 %2298, label %2312, label %2306

; <label>:2306                                    ; preds = %2289
  %2307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2308 = extractvalue %dx.types.CBufRet.f32 %2307, 0
  %2309 = fmul fast float %2308, %2303
  %2310 = fmul fast float %2308, %2304
  %2311 = fmul fast float %2308, %2305
  br label %2312

; <label>:2312                                    ; preds = %2306, %2289
  %2313 = phi float [ %2309, %2306 ], [ %2303, %2289 ]
  %2314 = phi float [ %2310, %2306 ], [ %2304, %2289 ]
  %2315 = phi float [ %2311, %2306 ], [ %2305, %2289 ]
  %2316 = fmul fast float %2313, %2284
  %2317 = select i1 %255, float %2316, float %2313
  %2318 = call float @dx.op.dot3.f32(i32 55, float %2317, float %2314, float %2315, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2319 = select i1 %255, float 0.000000e+00, float %2313
  %2320 = select i1 %255, float %2318, float %2314
  %2321 = select i1 %255, float 0.000000e+00, float %2315
  br label %2322

; <label>:2322                                    ; preds = %2312, %2274
  %2323 = phi float [ %2319, %2312 ], [ 0.000000e+00, %2274 ]
  %2324 = phi float [ %2320, %2312 ], [ 0.000000e+00, %2274 ]
  %2325 = phi float [ %2321, %2312 ], [ 0.000000e+00, %2274 ]
  %2326 = add i32 %43, 128
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = and i32 %2328, 255
  %2330 = uitofp i32 %2329 to float
  %2331 = lshr i32 %2328, 8
  %2332 = and i32 %2331, 255
  %2333 = uitofp i32 %2332 to float
  %2334 = call float @dx.op.dot3.f32(i32 55, float %2195, float %2196, float %2197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2335 = fmul fast float %2333, %2334
  %2336 = fadd fast float %2335, %2330
  %2337 = fmul fast float %2336, 0x3F70101020000000
  %2338 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  br i1 %1794, label %2339, label %2347

; <label>:2339                                    ; preds = %2322
  %2340 = fsub fast float 1.000000e+00, %1975
  %2341 = fmul fast float %2340, %1783
  %2342 = fmul fast float %2340, %1784
  %2343 = fmul fast float %2340, %1785
  %2344 = fmul fast float %2340, %1786
  %2345 = fmul fast float %2340, %1787
  %2346 = fmul fast float %2340, %1788
  br label %2347

; <label>:2347                                    ; preds = %2339, %2322
  %2348 = phi float [ %2341, %2339 ], [ %1783, %2322 ]
  %2349 = phi float [ %2342, %2339 ], [ %1784, %2322 ]
  %2350 = phi float [ %2343, %2339 ], [ %1785, %2322 ]
  %2351 = phi float [ %2344, %2339 ], [ %1786, %2322 ]
  %2352 = phi float [ %2345, %2339 ], [ %1787, %2322 ]
  %2353 = phi float [ %2346, %2339 ], [ %1788, %2322 ]
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = and i32 %2355, 3
  %2357 = icmp eq i32 %2356, 3
  br i1 %2357, label %2436, label %2358

; <label>:2358                                    ; preds = %2347
  %2359 = and i32 %2355, 16
  %2360 = icmp ne i32 %2359, 0
  %2361 = select i1 %2360, float %1975, float 0.000000e+00
  %2362 = icmp eq i32 %2356, 0
  br i1 %2362, label %2363, label %2391

; <label>:2363                                    ; preds = %2358
  %2364 = and i32 %2355, 64
  %2365 = icmp ne i32 %2364, 0
  %2366 = select i1 %2365, float %1975, float 0.000000e+00
  %2367 = fsub fast float %2195, %2348
  %2368 = fsub fast float %2196, %2349
  %2369 = fsub fast float %2197, %2350
  %2370 = fmul fast float %2361, %2367
  %2371 = fmul fast float %2361, %2368
  %2372 = fmul fast float %2361, %2369
  %2373 = fadd fast float %2370, %2348
  %2374 = fadd fast float %2371, %2349
  %2375 = fadd fast float %2372, %2350
  %2376 = fsub fast float %2181, %1789
  %2377 = fmul fast float %2361, %2376
  %2378 = fadd fast float %2377, %1789
  %2379 = fsub fast float %2323, %2351
  %2380 = fsub fast float %2324, %2352
  %2381 = fsub fast float %2325, %2353
  %2382 = fmul fast float %2366, %2379
  %2383 = fmul fast float %2366, %2380
  %2384 = fmul fast float %2366, %2381
  %2385 = fadd fast float %2382, %2351
  %2386 = fadd fast float %2383, %2352
  %2387 = fadd fast float %2384, %2353
  %2388 = fsub fast float %2338, %1792
  %2389 = fmul fast float %2361, %2388
  %2390 = fadd fast float %2389, %1792
  br label %2436

; <label>:2391                                    ; preds = %2358
  %2392 = icmp eq i32 %2356, 1
  br i1 %2392, label %2393, label %2406

; <label>:2393                                    ; preds = %2391
  %2394 = fadd fast float %2195, -1.000000e+00
  %2395 = fadd fast float %2196, -1.000000e+00
  %2396 = fadd fast float %2197, -1.000000e+00
  %2397 = fmul fast float %2361, %2394
  %2398 = fmul fast float %2361, %2395
  %2399 = fmul fast float %2361, %2396
  %2400 = fadd fast float %2397, 1.000000e+00
  %2401 = fadd fast float %2398, 1.000000e+00
  %2402 = fadd fast float %2399, 1.000000e+00
  %2403 = fmul fast float %2400, %2348
  %2404 = fmul fast float %2401, %2349
  %2405 = fmul fast float %2402, %2350
  br label %2436

; <label>:2406                                    ; preds = %2391
  %2407 = icmp eq i32 %2356, 2
  br i1 %2407, label %2408, label %2436

; <label>:2408                                    ; preds = %2406
  %2409 = call float @dx.op.unary.f32(i32 24, float %2195)  ; Sqrt(value)
  %2410 = call float @dx.op.unary.f32(i32 24, float %2196)  ; Sqrt(value)
  %2411 = call float @dx.op.unary.f32(i32 24, float %2197)  ; Sqrt(value)
  %2412 = fadd fast float %2409, -5.000000e-01
  %2413 = fadd fast float %2410, -5.000000e-01
  %2414 = fadd fast float %2411, -5.000000e-01
  %2415 = fmul fast float %2412, %2361
  %2416 = fmul fast float %2413, %2361
  %2417 = fmul fast float %2414, %2361
  %2418 = fadd fast float %2415, 5.000000e-01
  %2419 = fadd fast float %2416, 5.000000e-01
  %2420 = fadd fast float %2417, 5.000000e-01
  %2421 = fmul fast float %2418, 2.000000e+00
  %2422 = fsub fast float 1.000000e+00, %2421
  %2423 = fmul fast float %2422, %2348
  %2424 = fadd fast float %2423, %2421
  %2425 = fmul fast float %2424, %2348
  %2426 = fmul fast float %2419, 2.000000e+00
  %2427 = fsub fast float 1.000000e+00, %2426
  %2428 = fmul fast float %2427, %2349
  %2429 = fadd fast float %2428, %2426
  %2430 = fmul fast float %2429, %2349
  %2431 = fmul fast float %2420, 2.000000e+00
  %2432 = fsub fast float 1.000000e+00, %2431
  %2433 = fmul fast float %2432, %2350
  %2434 = fadd fast float %2433, %2431
  %2435 = fmul fast float %2434, %2350
  br label %2436

; <label>:2436                                    ; preds = %2408, %2406, %2393, %2363, %2347
  %2437 = phi float [ %2348, %2347 ], [ %2425, %2408 ], [ %2348, %2406 ], [ %2403, %2393 ], [ %2373, %2363 ]
  %2438 = phi float [ %2349, %2347 ], [ %2430, %2408 ], [ %2349, %2406 ], [ %2404, %2393 ], [ %2374, %2363 ]
  %2439 = phi float [ %2350, %2347 ], [ %2435, %2408 ], [ %2350, %2406 ], [ %2405, %2393 ], [ %2375, %2363 ]
  %2440 = phi float [ %2351, %2347 ], [ %2351, %2408 ], [ %2351, %2406 ], [ %2351, %2393 ], [ %2385, %2363 ]
  %2441 = phi float [ %2352, %2347 ], [ %2352, %2408 ], [ %2352, %2406 ], [ %2352, %2393 ], [ %2386, %2363 ]
  %2442 = phi float [ %2353, %2347 ], [ %2353, %2408 ], [ %2353, %2406 ], [ %2353, %2393 ], [ %2387, %2363 ]
  %2443 = phi float [ %1789, %2347 ], [ %1789, %2408 ], [ %1789, %2406 ], [ %1789, %2393 ], [ %2378, %2363 ]
  %2444 = phi float [ %1792, %2347 ], [ %1792, %2408 ], [ %1792, %2406 ], [ %1792, %2393 ], [ %2390, %2363 ]
  %2445 = and i32 %2355, 12
  %2446 = icmp eq i32 %2445, 12
  br i1 %2446, label %2519, label %2447

; <label>:2447                                    ; preds = %2436
  %2448 = and i32 %2355, 2097184
  %2449 = icmp eq i32 %2448, 2097184
  %2450 = select i1 %2449, float %1975, float 0.000000e+00
  %2451 = and i32 %2355, 4194336
  %2452 = icmp eq i32 %2451, 4194336
  %2453 = select i1 %2452, float %1975, float 0.000000e+00
  %2454 = and i32 %2355, 8388640
  %2455 = icmp eq i32 %2454, 8388640
  %2456 = select i1 %2455, float %1975, float 0.000000e+00
  %2457 = icmp eq i32 %2445, 0
  br i1 %2457, label %2458, label %2471

; <label>:2458                                    ; preds = %2447
  %2459 = fsub fast float %2276, %1781
  %2460 = fsub fast float %2277, %1782
  %2461 = fmul fast float %2450, %2459
  %2462 = fmul fast float %2450, %2460
  %2463 = fadd fast float %2461, %1781
  %2464 = fadd fast float %2462, %1782
  %2465 = fsub fast float %2278, %1791
  %2466 = fmul fast float %2453, %2465
  %2467 = fadd fast float %2466, %1791
  %2468 = fsub fast float %2275, %1790
  %2469 = fmul fast float %2456, %2468
  %2470 = fadd fast float %2469, %1790
  br label %2519

; <label>:2471                                    ; preds = %2447
  %2472 = icmp eq i32 %2445, 4
  br i1 %2472, label %2473, label %2505

; <label>:2473                                    ; preds = %2471
  %2474 = fmul fast float %2450, %2276
  %2475 = fmul fast float %2450, %2277
  %2476 = fadd fast float %2474, %1781
  %2477 = fadd fast float %2475, %1782
  %2478 = call float @dx.op.binary.f32(i32 36, float %1791, float %2278)  ; FMin(a,b)
  %2479 = fsub fast float %2478, %1791
  %2480 = fmul fast float %2479, %2453
  %2481 = fadd fast float %2480, %1791
  %2482 = fadd fast float %2275, %1790
  %2483 = fmul fast float %2482, 0x3FF337FAE0000000
  %2484 = fmul fast float %1790, %1790
  %2485 = fmul fast float %2275, %2275
  %2486 = fadd fast float %2485, %2484
  %2487 = fmul fast float %2486, 0x3FE5152B00000000
  %2488 = fmul fast float %1790, 0xBFCC1F85E0000000
  %2489 = fmul fast float %2488, %2275
  %2490 = fadd fast float %2489, 0xBFE1363700000000
  %2491 = fadd fast float %2490, %2483
  %2492 = fsub fast float %2491, %2487
  %2493 = fmul fast float %2482, 0x3FBA6F0D00000000
  %2494 = fmul fast float %2486, 0x3FD0432880000000
  %2495 = fmul fast float %1790, 0xBFEF110800000000
  %2496 = fmul fast float %2495, %2275
  %2497 = fadd fast float %2496, 1.000000e+00
  %2498 = fsub fast float %2497, %2493
  %2499 = fadd fast float %2498, %2494
  %2500 = fdiv fast float %2492, %2499
  %2501 = call float @dx.op.unary.f32(i32 7, float %2500)  ; Saturate(value)
  %2502 = fsub fast float %2501, %1790
  %2503 = fmul fast float %2502, %2456
  %2504 = fadd fast float %2503, %1790
  br label %2519

; <label>:2505                                    ; preds = %2471
  %2506 = icmp eq i32 %2445, 8
  br i1 %2506, label %2507, label %2519

; <label>:2507                                    ; preds = %2505
  %2508 = fmul fast float %2450, %2276
  %2509 = fmul fast float %2450, %2277
  %2510 = fadd fast float %2508, %1781
  %2511 = fadd fast float %2509, %1782
  %2512 = call float @dx.op.binary.f32(i32 36, float %1791, float %2278)  ; FMin(a,b)
  %2513 = fsub fast float %2512, %1791
  %2514 = fmul fast float %2513, %2453
  %2515 = fadd fast float %2514, %1791
  %2516 = fsub fast float %2275, %1790
  %2517 = fmul fast float %2456, %2516
  %2518 = fadd fast float %2517, %1790
  br label %2519

; <label>:2519                                    ; preds = %2507, %2505, %2473, %2458, %2436, %1974, %1793, %1780
  %2520 = phi float [ %1781, %2436 ], [ %1781, %1974 ], [ %1781, %1780 ], [ %2510, %2507 ], [ %1781, %2505 ], [ %2476, %2473 ], [ %2463, %2458 ], [ %1781, %1793 ]
  %2521 = phi float [ %1782, %2436 ], [ %1782, %1974 ], [ %1782, %1780 ], [ %2511, %2507 ], [ %1782, %2505 ], [ %2477, %2473 ], [ %2464, %2458 ], [ %1782, %1793 ]
  %2522 = phi float [ %2437, %2436 ], [ %1783, %1974 ], [ %1783, %1780 ], [ %2437, %2507 ], [ %2437, %2505 ], [ %2437, %2473 ], [ %2437, %2458 ], [ %1783, %1793 ]
  %2523 = phi float [ %2438, %2436 ], [ %1784, %1974 ], [ %1784, %1780 ], [ %2438, %2507 ], [ %2438, %2505 ], [ %2438, %2473 ], [ %2438, %2458 ], [ %1784, %1793 ]
  %2524 = phi float [ %2439, %2436 ], [ %1785, %1974 ], [ %1785, %1780 ], [ %2439, %2507 ], [ %2439, %2505 ], [ %2439, %2473 ], [ %2439, %2458 ], [ %1785, %1793 ]
  %2525 = phi float [ %2440, %2436 ], [ %1786, %1974 ], [ %1786, %1780 ], [ %2440, %2507 ], [ %2440, %2505 ], [ %2440, %2473 ], [ %2440, %2458 ], [ %1786, %1793 ]
  %2526 = phi float [ %2441, %2436 ], [ %1787, %1974 ], [ %1787, %1780 ], [ %2441, %2507 ], [ %2441, %2505 ], [ %2441, %2473 ], [ %2441, %2458 ], [ %1787, %1793 ]
  %2527 = phi float [ %2442, %2436 ], [ %1788, %1974 ], [ %1788, %1780 ], [ %2442, %2507 ], [ %2442, %2505 ], [ %2442, %2473 ], [ %2442, %2458 ], [ %1788, %1793 ]
  %2528 = phi float [ %2443, %2436 ], [ %1789, %1974 ], [ %1789, %1780 ], [ %2443, %2507 ], [ %2443, %2505 ], [ %2443, %2473 ], [ %2443, %2458 ], [ %1789, %1793 ]
  %2529 = phi float [ %1790, %2436 ], [ %1790, %1974 ], [ %1790, %1780 ], [ %2518, %2507 ], [ %1790, %2505 ], [ %2504, %2473 ], [ %2470, %2458 ], [ %1790, %1793 ]
  %2530 = phi float [ %1791, %2436 ], [ %1791, %1974 ], [ %1791, %1780 ], [ %2515, %2507 ], [ %1791, %2505 ], [ %2481, %2473 ], [ %2467, %2458 ], [ %1791, %1793 ]
  %2531 = phi float [ %2444, %2436 ], [ %1792, %1974 ], [ %1792, %1780 ], [ %2444, %2507 ], [ %2444, %2505 ], [ %2444, %2473 ], [ %2444, %2458 ], [ %1792, %1793 ]
  br i1 %443, label %3258, label %2532

; <label>:2532                                    ; preds = %2519
  %2533 = icmp ult i32 %497, 4
  %2534 = add i32 %43, 72
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = add i32 %43, 76
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2537, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = or i32 %2539, %2536
  %2541 = icmp eq i32 %2540, 0
  br i1 %2541, label %3258, label %2542

; <label>:2542                                    ; preds = %2532
  %2543 = and i32 %2536, 262144
  %2544 = icmp ne i32 %2543, 0
  %2545 = select i1 %2544, float %49, float 1.000000e+00
  %2546 = select i1 %2544, float %50, float 0.000000e+00
  %2547 = select i1 %2544, float %51, float 0.000000e+00
  %2548 = select i1 %2544, float %52, float 1.000000e+00
  %2549 = select i1 %2544, float %53, float %76
  %2550 = select i1 %2544, float %54, float %77
  %2551 = add i32 %43, 332
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = lshr i32 %2553, 16
  %2555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2554)  ; LegacyF16ToF32(value)
  %2556 = fmul fast float %2555, 0x3F50624DE0000000
  %2557 = add i32 %43, 136
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = lshr i32 %2559, 16
  %2561 = and i32 %2560, 255
  %2562 = lshr i32 %2559, 24
  %2563 = add i32 %43, 340
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = and i32 %2565, 65535
  %2567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2566)  ; LegacyF16ToF32(value)
  %2568 = lshr i32 %2565, 16
  %2569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2568)  ; LegacyF16ToF32(value)
  %2570 = add i32 %43, 80
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = lshr i32 %2572, 22
  %2574 = shl nuw nsw i32 %2573, 5
  %2575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2574)  ; LegacyF16ToF32(value)
  %2576 = shl i32 %2572, 4
  %2577 = and i32 %2576, 32752
  %2578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2577)  ; LegacyF16ToF32(value)
  %2579 = lshr i32 %2572, 7
  %2580 = and i32 %2579, 32752
  %2581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2580)  ; LegacyF16ToF32(value)
  %2582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2583 = extractvalue %dx.types.CBufRet.f32 %2582, 3
  %2584 = fmul fast float %2583, 1.000000e+03
  %2585 = fmul fast float %433, %2584
  %2586 = call float @dx.op.unary.f32(i32 22, float %2585)  ; Frc(value)
  %2587 = fadd fast float %2586, %423
  %2588 = fmul fast float %434, %2584
  %2589 = call float @dx.op.unary.f32(i32 22, float %2588)  ; Frc(value)
  %2590 = fadd fast float %2589, %425
  %2591 = fmul fast float %2556, %2584
  %2592 = call float @dx.op.unary.f32(i32 22, float %2591)  ; Frc(value)
  %2593 = fmul fast float %2592, 0x401921FB60000000
  %2594 = fadd fast float %2593, %2575
  %2595 = call float @dx.op.unary.f32(i32 13, float %2594)  ; Sin(value)
  %2596 = call float @dx.op.unary.f32(i32 12, float %2594)  ; Cos(value)
  %2597 = fsub fast float -0.000000e+00, %2595
  %2598 = fadd fast float %2549, -5.000000e-01
  %2599 = fadd fast float %2550, -5.000000e-01
  %2600 = fmul fast float %2567, %2598
  %2601 = fmul fast float %2569, %2599
  %2602 = fadd fast float %2600, 5.000000e-01
  %2603 = fadd fast float %2601, 5.000000e-01
  %2604 = fmul fast float %2578, %2602
  %2605 = fmul fast float %2581, %2603
  %2606 = fmul fast float %2596, %2604
  %2607 = call float @dx.op.tertiary.f32(i32 46, float %2597, float %2605, float %2606)  ; FMad(a,b,c)
  %2608 = fmul fast float %2595, %2604
  %2609 = call float @dx.op.tertiary.f32(i32 46, float %2596, float %2605, float %2608)  ; FMad(a,b,c)
  %2610 = fadd fast float %2587, %2607
  %2611 = fadd fast float %2590, %2609
  %2612 = icmp ugt i32 %2561, 1
  %2613 = icmp ugt i32 %2559, 33554431
  %2614 = or i1 %2613, %2612
  br i1 %2614, label %2615, label %2640

; <label>:2615                                    ; preds = %2542
  %2616 = add i32 %43, 276
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = lshr i32 %2618, 16
  %2620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2619)  ; LegacyF16ToF32(value)
  %2621 = fmul fast float %2583, %2620
  %2622 = call float @dx.op.unary.f32(i32 22, float %2621)  ; Frc(value)
  %2623 = mul nuw nsw i32 %2561, %2562
  %2624 = uitofp i32 %2623 to float
  %2625 = fmul fast float %2622, %2624
  %2626 = call float @dx.op.unary.f32(i32 27, float %2625)  ; Round_ni(value)
  %2627 = fptoui float %2626 to i32
  %2628 = urem i32 %2627, %2561
  %2629 = udiv i32 %2627, %2562
  %2630 = call float @dx.op.unary.f32(i32 22, float %2610)  ; Frc(value)
  %2631 = call float @dx.op.unary.f32(i32 22, float %2611)  ; Frc(value)
  %2632 = uitofp i32 %2628 to float
  %2633 = uitofp i32 %2629 to float
  %2634 = fadd fast float %2630, %2632
  %2635 = fadd fast float %2631, %2633
  %2636 = uitofp i32 %2561 to float
  %2637 = uitofp i32 %2562 to float
  %2638 = fdiv fast float %2634, %2636
  %2639 = fdiv fast float %2635, %2637
  br label %2640

; <label>:2640                                    ; preds = %2615, %2542
  %2641 = phi float [ %2638, %2615 ], [ %2610, %2542 ]
  %2642 = phi float [ %2639, %2615 ], [ %2611, %2542 ]
  %2643 = and i32 %2536, 256
  %2644 = icmp eq i32 %2643, 0
  br i1 %2644, label %2691, label %2645

; <label>:2645                                    ; preds = %2640
  %2646 = add i32 %43, 452
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2646, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = add i32 %2648, 0
  %2650 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2649, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2651 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2650, %dx.types.Handle %91, float %2641, float %2642, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2652 = extractvalue %dx.types.ResRet.f32 %2651, 0
  %2653 = add i32 %43, 148
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = shl i32 %2655, 4
  %2657 = and i32 %2656, 32752
  %2658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2657)  ; LegacyF16ToF32(value)
  %2659 = lshr i32 %2655, 7
  %2660 = and i32 %2659, 32752
  %2661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2660)  ; LegacyF16ToF32(value)
  %2662 = fsub fast float 1.000000e+00, %492
  %2663 = call float @dx.op.binary.f32(i32 35, float %2662, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2664 = bitcast float %492 to i32
  %2665 = sitofp i32 %2664 to float
  %2666 = fadd fast float %2665, 0xC1CFBF8940000000
  %2667 = fmul fast float %2661, %2666
  %2668 = fadd fast float %2667, 0x41CFBF8940000000
  %2669 = fptosi float %2668 to i32
  %2670 = bitcast i32 %2669 to float
  %2671 = bitcast float %2663 to i32
  %2672 = sitofp i32 %2671 to float
  %2673 = fadd fast float %2672, 0xC1CFBF8940000000
  %2674 = fmul fast float %2673, %2661
  %2675 = fadd fast float %2674, 0x41CFBF8940000000
  %2676 = fptosi float %2675 to i32
  %2677 = bitcast i32 %2676 to float
  %2678 = fmul fast float %2670, %2658
  %2679 = fmul fast float %2677, %2658
  %2680 = fsub fast float %2663, %2678
  %2681 = fadd fast float %2679, %2663
  %2682 = call float @dx.op.unary.f32(i32 7, float %2680)  ; Saturate(value)
  %2683 = call float @dx.op.unary.f32(i32 7, float %2681)  ; Saturate(value)
  %2684 = fsub fast float %2652, %2682
  %2685 = fsub fast float %2683, %2682
  %2686 = bitcast float %2685 to i32
  %2687 = sub nsw i32 2129859010, %2686
  %2688 = bitcast i32 %2687 to float
  %2689 = fmul fast float %2688, %2684
  %2690 = call float @dx.op.unary.f32(i32 7, float %2689)  ; Saturate(value)
  br label %2691

; <label>:2691                                    ; preds = %2645, %2640
  %2692 = phi float [ %2690, %2645 ], [ %492, %2640 ]
  %2693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2694 = extractvalue %dx.types.ResRet.i32 %2693, 0
  %2695 = and i32 %2694, 128
  %2696 = icmp eq i32 %2695, 0
  br i1 %2696, label %2713, label %2697

; <label>:2697                                    ; preds = %2691
  %2698 = add i32 %43, 436
  %2699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2698, i32 undef)  ; BufferLoad(srv,index,wot)
  %2700 = extractvalue %dx.types.ResRet.i32 %2699, 0
  %2701 = add i32 %2700, 0
  %2702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2703 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2702, %dx.types.Handle %91, float %2641, float %2642, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2704 = extractvalue %dx.types.ResRet.f32 %2703, 0
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = and i32 %2706, 524288
  %2708 = icmp ne i32 %2707, 0
  %2709 = fcmp fast ogt float %2704, 0x3FE0101020000000
  %2710 = select i1 %2709, float 1.000000e+00, float 0.000000e+00
  %2711 = select i1 %2708, float %2710, float %2704
  %2712 = fmul fast float %2711, %2692
  br label %2713

; <label>:2713                                    ; preds = %2697, %2691
  %2714 = phi float [ %2712, %2697 ], [ %2692, %2691 ]
  %2715 = fcmp fast ult float %2714, 0x3F70101020000000
  br i1 %2715, label %3258, label %2716

; <label>:2716                                    ; preds = %2713
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = and i32 %2718, 16
  %2720 = icmp eq i32 %2719, 0
  br i1 %2720, label %2919, label %2721

; <label>:2721                                    ; preds = %2716
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = add i32 %43, 388
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = add i32 %2726, 0
  %2728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2727, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2729 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2728, %dx.types.Handle %90, float %2641, float %2642, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2730 = extractvalue %dx.types.ResRet.f32 %2729, 0
  %2731 = extractvalue %dx.types.ResRet.f32 %2729, 1
  %2732 = extractvalue %dx.types.ResRet.f32 %2729, 2
  %2733 = extractvalue %dx.types.ResRet.f32 %2729, 3
  %2734 = and i32 %2723, 255
  %2735 = uitofp i32 %2734 to float
  %2736 = lshr i32 %2723, 8
  %2737 = and i32 %2736, 255
  %2738 = uitofp i32 %2737 to float
  %2739 = fmul fast float %2733, %2735
  %2740 = fadd fast float %2739, %2738
  %2741 = fmul fast float %2740, 0x3F70101000000000
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = and i32 %2743, 512
  %2745 = icmp eq i32 %2744, 0
  br i1 %2745, label %2754, label %2746

; <label>:2746                                    ; preds = %2721
  %2747 = add i32 %43, 472
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = add i32 %2749, 0
  %2751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2750, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2752 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2751, %dx.types.Handle %91, float %2641, float %2642, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 0
  br label %2754

; <label>:2754                                    ; preds = %2746, %2721
  %2755 = phi float [ %2753, %2746 ], [ 1.000000e+00, %2721 ]
  %2756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.i32 %2756, 0
  %2758 = and i32 %2757, 33554432
  %2759 = icmp eq i32 %2758, 0
  br i1 %2759, label %2866, label %2760

; <label>:2760                                    ; preds = %2754
  %2761 = add i32 %43, 272
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = and i32 %2763, 65535
  %2765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2764)  ; LegacyF16ToF32(value)
  %2766 = lshr i32 %2763, 16
  %2767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2766)  ; LegacyF16ToF32(value)
  %2768 = add i32 %43, 276
  %2769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2768, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.i32 %2769, 0
  %2771 = and i32 %2770, 65535
  %2772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2771)  ; LegacyF16ToF32(value)
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = lshr i32 %2774, 24
  %2776 = uitofp i32 %2775 to float
  %2777 = fmul fast float %2776, 0x3F70101020000000
  %2778 = and i32 %2774, 255
  %2779 = uitofp i32 %2778 to float
  %2780 = fmul fast float %2779, 0x3F70101020000000
  %2781 = lshr i32 %2774, 8
  %2782 = and i32 %2781, 255
  %2783 = uitofp i32 %2782 to float
  %2784 = fmul fast float %2783, 0x3F70101020000000
  %2785 = lshr i32 %2774, 16
  %2786 = and i32 %2785, 255
  %2787 = uitofp i32 %2786 to float
  %2788 = fmul fast float %2787, 0x3F70101020000000
  %2789 = add i32 %43, 268
  %2790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2789, i32 undef)  ; BufferLoad(srv,index,wot)
  %2791 = extractvalue %dx.types.ResRet.i32 %2790, 0
  %2792 = lshr i32 %2791, 24
  %2793 = uitofp i32 %2792 to float
  %2794 = fmul fast float %2793, 0x3F70101020000000
  %2795 = and i32 %2791, 255
  %2796 = uitofp i32 %2795 to float
  %2797 = fmul fast float %2796, 0x3F70101020000000
  %2798 = lshr i32 %2791, 8
  %2799 = and i32 %2798, 255
  %2800 = uitofp i32 %2799 to float
  %2801 = fmul fast float %2800, 0x3F70101020000000
  %2802 = lshr i32 %2791, 16
  %2803 = and i32 %2802, 255
  %2804 = uitofp i32 %2803 to float
  %2805 = fmul fast float %2804, 0x3F70101020000000
  %2806 = bitcast float %2730 to i32
  %2807 = ashr i32 %2806, 1
  %2808 = sub nsw i32 1597463174, %2807
  %2809 = bitcast i32 %2808 to float
  %2810 = fmul fast float %2730, 5.000000e-01
  %2811 = fmul fast float %2809, %2809
  %2812 = fmul fast float %2811, %2810
  %2813 = fsub fast float 1.500000e+00, %2812
  %2814 = fmul fast float %2809, %2730
  %2815 = fmul fast float %2814, %2813
  %2816 = bitcast float %2731 to i32
  %2817 = ashr i32 %2816, 1
  %2818 = sub nsw i32 1597463174, %2817
  %2819 = bitcast i32 %2818 to float
  %2820 = fmul fast float %2731, 5.000000e-01
  %2821 = fmul fast float %2819, %2819
  %2822 = fmul fast float %2821, %2820
  %2823 = fsub fast float 1.500000e+00, %2822
  %2824 = fmul fast float %2819, %2731
  %2825 = fmul fast float %2824, %2823
  %2826 = bitcast float %2732 to i32
  %2827 = ashr i32 %2826, 1
  %2828 = sub nsw i32 1597463174, %2827
  %2829 = bitcast i32 %2828 to float
  %2830 = fmul fast float %2732, 5.000000e-01
  %2831 = fmul fast float %2829, %2829
  %2832 = fmul fast float %2831, %2830
  %2833 = fsub fast float 1.500000e+00, %2832
  %2834 = fmul fast float %2829, %2732
  %2835 = fmul fast float %2834, %2833
  %2836 = fsub fast float %2815, %2797
  %2837 = fsub fast float %2825, %2801
  %2838 = fsub fast float %2835, %2805
  %2839 = fmul fast float %2836, %2765
  %2840 = fmul fast float %2837, %2767
  %2841 = fmul fast float %2838, %2772
  %2842 = fadd fast float %2839, %2780
  %2843 = fadd fast float %2840, %2784
  %2844 = fadd fast float %2841, %2788
  %2845 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2846 = call float @dx.op.unary.f32(i32 7, float %2843)  ; Saturate(value)
  %2847 = call float @dx.op.unary.f32(i32 7, float %2844)  ; Saturate(value)
  %2848 = fmul fast float %2845, %2845
  %2849 = fmul fast float %2846, %2846
  %2850 = fmul fast float %2847, %2847
  %2851 = fsub fast float %2848, %2730
  %2852 = fsub fast float %2849, %2731
  %2853 = fsub fast float %2850, %2732
  %2854 = fmul fast float %2851, %2755
  %2855 = fmul fast float %2852, %2755
  %2856 = fmul fast float %2853, %2755
  %2857 = fadd fast float %2854, %2730
  %2858 = fadd fast float %2855, %2731
  %2859 = fadd fast float %2856, %2732
  %2860 = fadd fast float %2777, %2741
  %2861 = fsub fast float %2860, %2794
  %2862 = call float @dx.op.unary.f32(i32 7, float %2861)  ; Saturate(value)
  %2863 = fsub fast float %2862, %2741
  %2864 = fmul fast float %2863, %2755
  %2865 = fadd fast float %2864, %2741
  br label %2919

; <label>:2866                                    ; preds = %2754
  %2867 = and i32 %2757, 134217728
  %2868 = icmp eq i32 %2867, 0
  br i1 %2868, label %2903, label %2869

; <label>:2869                                    ; preds = %2866
  %2870 = call float @dx.op.unary.f32(i32 24, float %410)  ; Sqrt(value)
  %2871 = call float @dx.op.unary.f32(i32 24, float %414)  ; Sqrt(value)
  %2872 = call float @dx.op.unary.f32(i32 24, float %418)  ; Sqrt(value)
  %2873 = fadd fast float %2870, -5.000000e-01
  %2874 = fadd fast float %2871, -5.000000e-01
  %2875 = fadd fast float %2872, -5.000000e-01
  %2876 = fmul fast float %2873, %2755
  %2877 = fmul fast float %2874, %2755
  %2878 = fmul fast float %2875, %2755
  %2879 = fadd fast float %2876, 5.000000e-01
  %2880 = fadd fast float %2877, 5.000000e-01
  %2881 = fadd fast float %2878, 5.000000e-01
  %2882 = call float @dx.op.unary.f32(i32 24, float %2730)  ; Sqrt(value)
  %2883 = call float @dx.op.unary.f32(i32 24, float %2731)  ; Sqrt(value)
  %2884 = call float @dx.op.unary.f32(i32 24, float %2732)  ; Sqrt(value)
  %2885 = fmul fast float %2879, 2.000000e+00
  %2886 = fsub fast float 1.000000e+00, %2885
  %2887 = fmul fast float %2886, %2882
  %2888 = fadd fast float %2887, %2885
  %2889 = fmul fast float %2888, %2882
  %2890 = fmul fast float %2880, 2.000000e+00
  %2891 = fsub fast float 1.000000e+00, %2890
  %2892 = fmul fast float %2891, %2883
  %2893 = fadd fast float %2892, %2890
  %2894 = fmul fast float %2893, %2883
  %2895 = fmul fast float %2881, 2.000000e+00
  %2896 = fsub fast float 1.000000e+00, %2895
  %2897 = fmul fast float %2896, %2884
  %2898 = fadd fast float %2897, %2895
  %2899 = fmul fast float %2898, %2884
  %2900 = fmul fast float %2889, %2889
  %2901 = fmul fast float %2894, %2894
  %2902 = fmul fast float %2899, %2899
  br label %2919

; <label>:2903                                    ; preds = %2866
  %2904 = fmul fast float %410, %410
  %2905 = fmul fast float %414, %414
  %2906 = fmul fast float %418, %418
  %2907 = fadd fast float %2904, -1.000000e+00
  %2908 = fadd fast float %2905, -1.000000e+00
  %2909 = fadd fast float %2906, -1.000000e+00
  %2910 = fmul fast float %2755, %2907
  %2911 = fmul fast float %2755, %2908
  %2912 = fmul fast float %2755, %2909
  %2913 = fadd fast float %2910, 1.000000e+00
  %2914 = fadd fast float %2911, 1.000000e+00
  %2915 = fadd fast float %2912, 1.000000e+00
  %2916 = fmul fast float %2913, %2730
  %2917 = fmul fast float %2914, %2731
  %2918 = fmul fast float %2915, %2732
  br label %2919

; <label>:2919                                    ; preds = %2903, %2869, %2760, %2716
  %2920 = phi float [ %2865, %2760 ], [ %2741, %2869 ], [ %2741, %2903 ], [ 0x3FA23C0BE0000000, %2716 ]
  %2921 = phi float [ %2857, %2760 ], [ %2900, %2869 ], [ %2916, %2903 ], [ 1.000000e+00, %2716 ]
  %2922 = phi float [ %2858, %2760 ], [ %2901, %2869 ], [ %2917, %2903 ], [ 1.000000e+00, %2716 ]
  %2923 = phi float [ %2859, %2760 ], [ %2902, %2869 ], [ %2918, %2903 ], [ 1.000000e+00, %2716 ]
  %2924 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2925 = extractvalue %dx.types.CBufRet.i32 %2924, 1
  %2926 = and i32 %2925, 1
  %2927 = icmp ne i32 %2926, 0
  %2928 = add i32 %43, 356
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = and i32 %2930, 32
  %2932 = icmp ne i32 %2931, 0
  %2933 = and i1 %2927, %2932
  %2934 = select i1 %2933, float 1.000000e+00, float %2921
  %2935 = select i1 %2933, float 0x3FD3333340000000, float %2922
  %2936 = select i1 %2933, float 0x3FD3333340000000, float %2923
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = and i32 %2938, 32
  %2940 = icmp eq i32 %2939, 0
  br i1 %2940, label %3013, label %2941

; <label>:2941                                    ; preds = %2919
  %2942 = add i32 %43, 140
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = add i32 %43, 404
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = add i32 %2947, 0
  %2949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2948, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2950 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2949, %dx.types.Handle %90, float %2641, float %2642, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2951 = extractvalue %dx.types.ResRet.f32 %2950, 0
  %2952 = extractvalue %dx.types.ResRet.f32 %2950, 1
  %2953 = extractvalue %dx.types.ResRet.f32 %2950, 2
  %2954 = extractvalue %dx.types.ResRet.f32 %2950, 3
  %2955 = and i32 %2944, 255
  %2956 = uitofp i32 %2955 to float
  %2957 = lshr i32 %2944, 8
  %2958 = and i32 %2957, 255
  %2959 = uitofp i32 %2958 to float
  %2960 = lshr i32 %2944, 16
  %2961 = and i32 %2960, 255
  %2962 = uitofp i32 %2961 to float
  %2963 = fmul fast float %2962, 0x3F70101000000000
  %2964 = fmul fast float %2951, %2956
  %2965 = fadd fast float %2964, %2959
  %2966 = fmul fast float %2965, 0x3F70101000000000
  %2967 = fadd fast float %2952, -5.000000e-01
  %2968 = fadd fast float %2954, -5.000000e-01
  %2969 = fmul fast float %2967, %2963
  %2970 = fmul fast float %2968, %2963
  %2971 = fadd fast float %2969, 5.000000e-01
  %2972 = fadd fast float %2970, 5.000000e-01
  %2973 = fmul fast float %2971, 2.000000e+00
  %2974 = fadd fast float %2973, -1.000000e+00
  %2975 = fmul fast float %2972, 2.000000e+00
  %2976 = fadd fast float %2975, -1.000000e+00
  %2977 = fadd fast float %2974, %2976
  %2978 = fmul fast float %2977, 5.000000e-01
  %2979 = fsub fast float %2974, %2976
  %2980 = fmul fast float %2979, 5.000000e-01
  %2981 = call float @dx.op.unary.f32(i32 6, float %2978)  ; FAbs(value)
  %2982 = fsub fast float 1.000000e+00, %2981
  %2983 = call float @dx.op.unary.f32(i32 6, float %2980)  ; FAbs(value)
  %2984 = fsub fast float %2982, %2983
  %2985 = call float @dx.op.dot3.f32(i32 55, float %2978, float %2980, float %2984, float %2978, float %2980, float %2984)  ; Dot3(ax,ay,az,bx,by,bz)
  %2986 = call float @dx.op.unary.f32(i32 25, float %2985)  ; Rsqrt(value)
  %2987 = fmul fast float %2978, %2986
  %2988 = fmul fast float %2980, %2986
  %2989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.i32 %2989, 0
  %2991 = and i32 %2990, 67108864
  %2992 = icmp eq i32 %2991, 0
  br i1 %2992, label %3009, label %2993

; <label>:2993                                    ; preds = %2941
  %2994 = add i32 %43, 328
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = and i32 %2996, 65535
  %2998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2997)  ; LegacyF16ToF32(value)
  %2999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.i32 %2999, 0
  %3001 = and i32 %3000, 65535
  %3002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3001)  ; LegacyF16ToF32(value)
  %3003 = lshr i32 %2996, 16
  %3004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3003)  ; LegacyF16ToF32(value)
  %3005 = fsub fast float %2966, %3004
  %3006 = fmul fast float %3005, %2998
  %3007 = fadd fast float %3006, %3002
  %3008 = call float @dx.op.unary.f32(i32 7, float %3007)  ; Saturate(value)
  br label %3009

; <label>:3009                                    ; preds = %2993, %2941
  %3010 = phi float [ %3008, %2993 ], [ %2966, %2941 ]
  %3011 = call float @dx.op.dot2.f32(i32 54, float %2987, float %2988, float %2545, float %2546)  ; Dot2(ax,ay,bx,by)
  %3012 = call float @dx.op.dot2.f32(i32 54, float %2987, float %2988, float %2547, float %2548)  ; Dot2(ax,ay,bx,by)
  br label %3013

; <label>:3013                                    ; preds = %3009, %2919
  %3014 = phi float [ %3010, %3009 ], [ 0x3FD6666660000000, %2919 ]
  %3015 = phi float [ %3011, %3009 ], [ 0.000000e+00, %2919 ]
  %3016 = phi float [ %3012, %3009 ], [ 0.000000e+00, %2919 ]
  %3017 = phi float [ %2953, %3009 ], [ 1.000000e+00, %2919 ]
  %3018 = add i32 %43, 208
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3018, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = lshr i32 %3020, 22
  %3022 = shl nuw nsw i32 %3021, 5
  %3023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3022)  ; LegacyF16ToF32(value)
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = and i32 %3025, 64
  %3027 = icmp eq i32 %3026, 0
  br i1 %3027, label %3061, label %3028

; <label>:3028                                    ; preds = %3013
  %3029 = add i32 %43, 420
  %3030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3029, i32 undef)  ; BufferLoad(srv,index,wot)
  %3031 = extractvalue %dx.types.ResRet.i32 %3030, 0
  %3032 = add i32 %3031, 0
  %3033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3032, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = and i32 %3035, 131072
  %3037 = icmp eq i32 %3036, 0
  %3038 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3033, %dx.types.Handle %90, float %2641, float %2642, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3039 = extractvalue %dx.types.ResRet.f32 %3038, 0
  %3040 = extractvalue %dx.types.ResRet.f32 %3038, 1
  %3041 = extractvalue %dx.types.ResRet.f32 %3038, 2
  %3042 = fmul fast float %3039, %398
  %3043 = fmul fast float %3040, %401
  %3044 = fmul fast float %3041, %404
  br i1 %3037, label %3051, label %3045

; <label>:3045                                    ; preds = %3028
  %3046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3047 = extractvalue %dx.types.CBufRet.f32 %3046, 0
  %3048 = fmul fast float %3047, %3042
  %3049 = fmul fast float %3047, %3043
  %3050 = fmul fast float %3047, %3044
  br label %3051

; <label>:3051                                    ; preds = %3045, %3028
  %3052 = phi float [ %3048, %3045 ], [ %3042, %3028 ]
  %3053 = phi float [ %3049, %3045 ], [ %3043, %3028 ]
  %3054 = phi float [ %3050, %3045 ], [ %3044, %3028 ]
  %3055 = fmul fast float %3052, %3023
  %3056 = select i1 %255, float %3055, float %3052
  %3057 = call float @dx.op.dot3.f32(i32 55, float %3056, float %3053, float %3054, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3058 = select i1 %255, float 0.000000e+00, float %3052
  %3059 = select i1 %255, float %3057, float %3053
  %3060 = select i1 %255, float 0.000000e+00, float %3054
  br label %3061

; <label>:3061                                    ; preds = %3051, %3013
  %3062 = phi float [ %3058, %3051 ], [ 0.000000e+00, %3013 ]
  %3063 = phi float [ %3059, %3051 ], [ 0.000000e+00, %3013 ]
  %3064 = phi float [ %3060, %3051 ], [ 0.000000e+00, %3013 ]
  %3065 = add i32 %43, 144
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = and i32 %3067, 255
  %3069 = uitofp i32 %3068 to float
  %3070 = lshr i32 %3067, 8
  %3071 = and i32 %3070, 255
  %3072 = uitofp i32 %3071 to float
  %3073 = call float @dx.op.dot3.f32(i32 55, float %2934, float %2935, float %2936, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3074 = fmul fast float %3072, %3073
  %3075 = fadd fast float %3074, %3069
  %3076 = fmul fast float %3075, 0x3F70101020000000
  %3077 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  br i1 %2533, label %3078, label %3086

; <label>:3078                                    ; preds = %3061
  %3079 = fsub fast float 1.000000e+00, %2714
  %3080 = fmul fast float %3079, %2522
  %3081 = fmul fast float %3079, %2523
  %3082 = fmul fast float %3079, %2524
  %3083 = fmul fast float %3079, %2525
  %3084 = fmul fast float %3079, %2526
  %3085 = fmul fast float %3079, %2527
  br label %3086

; <label>:3086                                    ; preds = %3078, %3061
  %3087 = phi float [ %3080, %3078 ], [ %2522, %3061 ]
  %3088 = phi float [ %3081, %3078 ], [ %2523, %3061 ]
  %3089 = phi float [ %3082, %3078 ], [ %2524, %3061 ]
  %3090 = phi float [ %3083, %3078 ], [ %2525, %3061 ]
  %3091 = phi float [ %3084, %3078 ], [ %2526, %3061 ]
  %3092 = phi float [ %3085, %3078 ], [ %2527, %3061 ]
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = and i32 %3094, 3
  %3096 = icmp eq i32 %3095, 3
  br i1 %3096, label %3175, label %3097

; <label>:3097                                    ; preds = %3086
  %3098 = and i32 %3094, 16
  %3099 = icmp ne i32 %3098, 0
  %3100 = select i1 %3099, float %2714, float 0.000000e+00
  %3101 = icmp eq i32 %3095, 0
  br i1 %3101, label %3102, label %3130

; <label>:3102                                    ; preds = %3097
  %3103 = and i32 %3094, 64
  %3104 = icmp ne i32 %3103, 0
  %3105 = select i1 %3104, float %2714, float 0.000000e+00
  %3106 = fsub fast float %2934, %3087
  %3107 = fsub fast float %2935, %3088
  %3108 = fsub fast float %2936, %3089
  %3109 = fmul fast float %3100, %3106
  %3110 = fmul fast float %3100, %3107
  %3111 = fmul fast float %3100, %3108
  %3112 = fadd fast float %3109, %3087
  %3113 = fadd fast float %3110, %3088
  %3114 = fadd fast float %3111, %3089
  %3115 = fsub fast float %2920, %2528
  %3116 = fmul fast float %3100, %3115
  %3117 = fadd fast float %3116, %2528
  %3118 = fsub fast float %3062, %3090
  %3119 = fsub fast float %3063, %3091
  %3120 = fsub fast float %3064, %3092
  %3121 = fmul fast float %3105, %3118
  %3122 = fmul fast float %3105, %3119
  %3123 = fmul fast float %3105, %3120
  %3124 = fadd fast float %3121, %3090
  %3125 = fadd fast float %3122, %3091
  %3126 = fadd fast float %3123, %3092
  %3127 = fsub fast float %3077, %2531
  %3128 = fmul fast float %3100, %3127
  %3129 = fadd fast float %3128, %2531
  br label %3175

; <label>:3130                                    ; preds = %3097
  %3131 = icmp eq i32 %3095, 1
  br i1 %3131, label %3132, label %3145

; <label>:3132                                    ; preds = %3130
  %3133 = fadd fast float %2934, -1.000000e+00
  %3134 = fadd fast float %2935, -1.000000e+00
  %3135 = fadd fast float %2936, -1.000000e+00
  %3136 = fmul fast float %3100, %3133
  %3137 = fmul fast float %3100, %3134
  %3138 = fmul fast float %3100, %3135
  %3139 = fadd fast float %3136, 1.000000e+00
  %3140 = fadd fast float %3137, 1.000000e+00
  %3141 = fadd fast float %3138, 1.000000e+00
  %3142 = fmul fast float %3139, %3087
  %3143 = fmul fast float %3140, %3088
  %3144 = fmul fast float %3141, %3089
  br label %3175

; <label>:3145                                    ; preds = %3130
  %3146 = icmp eq i32 %3095, 2
  br i1 %3146, label %3147, label %3175

; <label>:3147                                    ; preds = %3145
  %3148 = call float @dx.op.unary.f32(i32 24, float %2934)  ; Sqrt(value)
  %3149 = call float @dx.op.unary.f32(i32 24, float %2935)  ; Sqrt(value)
  %3150 = call float @dx.op.unary.f32(i32 24, float %2936)  ; Sqrt(value)
  %3151 = fadd fast float %3148, -5.000000e-01
  %3152 = fadd fast float %3149, -5.000000e-01
  %3153 = fadd fast float %3150, -5.000000e-01
  %3154 = fmul fast float %3151, %3100
  %3155 = fmul fast float %3152, %3100
  %3156 = fmul fast float %3153, %3100
  %3157 = fadd fast float %3154, 5.000000e-01
  %3158 = fadd fast float %3155, 5.000000e-01
  %3159 = fadd fast float %3156, 5.000000e-01
  %3160 = fmul fast float %3157, 2.000000e+00
  %3161 = fsub fast float 1.000000e+00, %3160
  %3162 = fmul fast float %3161, %3087
  %3163 = fadd fast float %3162, %3160
  %3164 = fmul fast float %3163, %3087
  %3165 = fmul fast float %3158, 2.000000e+00
  %3166 = fsub fast float 1.000000e+00, %3165
  %3167 = fmul fast float %3166, %3088
  %3168 = fadd fast float %3167, %3165
  %3169 = fmul fast float %3168, %3088
  %3170 = fmul fast float %3159, 2.000000e+00
  %3171 = fsub fast float 1.000000e+00, %3170
  %3172 = fmul fast float %3171, %3089
  %3173 = fadd fast float %3172, %3170
  %3174 = fmul fast float %3173, %3089
  br label %3175

; <label>:3175                                    ; preds = %3147, %3145, %3132, %3102, %3086
  %3176 = phi float [ %3087, %3086 ], [ %3164, %3147 ], [ %3087, %3145 ], [ %3142, %3132 ], [ %3112, %3102 ]
  %3177 = phi float [ %3088, %3086 ], [ %3169, %3147 ], [ %3088, %3145 ], [ %3143, %3132 ], [ %3113, %3102 ]
  %3178 = phi float [ %3089, %3086 ], [ %3174, %3147 ], [ %3089, %3145 ], [ %3144, %3132 ], [ %3114, %3102 ]
  %3179 = phi float [ %3090, %3086 ], [ %3090, %3147 ], [ %3090, %3145 ], [ %3090, %3132 ], [ %3124, %3102 ]
  %3180 = phi float [ %3091, %3086 ], [ %3091, %3147 ], [ %3091, %3145 ], [ %3091, %3132 ], [ %3125, %3102 ]
  %3181 = phi float [ %3092, %3086 ], [ %3092, %3147 ], [ %3092, %3145 ], [ %3092, %3132 ], [ %3126, %3102 ]
  %3182 = phi float [ %2528, %3086 ], [ %2528, %3147 ], [ %2528, %3145 ], [ %2528, %3132 ], [ %3117, %3102 ]
  %3183 = phi float [ %2531, %3086 ], [ %2531, %3147 ], [ %2531, %3145 ], [ %2531, %3132 ], [ %3129, %3102 ]
  %3184 = and i32 %3094, 12
  %3185 = icmp eq i32 %3184, 12
  br i1 %3185, label %3258, label %3186

; <label>:3186                                    ; preds = %3175
  %3187 = and i32 %3094, 2097184
  %3188 = icmp eq i32 %3187, 2097184
  %3189 = select i1 %3188, float %2714, float 0.000000e+00
  %3190 = and i32 %3094, 4194336
  %3191 = icmp eq i32 %3190, 4194336
  %3192 = select i1 %3191, float %2714, float 0.000000e+00
  %3193 = and i32 %3094, 8388640
  %3194 = icmp eq i32 %3193, 8388640
  %3195 = select i1 %3194, float %2714, float 0.000000e+00
  %3196 = icmp eq i32 %3184, 0
  br i1 %3196, label %3197, label %3210

; <label>:3197                                    ; preds = %3186
  %3198 = fsub fast float %3015, %2520
  %3199 = fsub fast float %3016, %2521
  %3200 = fmul fast float %3189, %3198
  %3201 = fmul fast float %3189, %3199
  %3202 = fadd fast float %3200, %2520
  %3203 = fadd fast float %3201, %2521
  %3204 = fsub fast float %3017, %2530
  %3205 = fmul fast float %3192, %3204
  %3206 = fadd fast float %3205, %2530
  %3207 = fsub fast float %3014, %2529
  %3208 = fmul fast float %3195, %3207
  %3209 = fadd fast float %3208, %2529
  br label %3258

; <label>:3210                                    ; preds = %3186
  %3211 = icmp eq i32 %3184, 4
  br i1 %3211, label %3212, label %3244

; <label>:3212                                    ; preds = %3210
  %3213 = fmul fast float %3189, %3015
  %3214 = fmul fast float %3189, %3016
  %3215 = fadd fast float %3213, %2520
  %3216 = fadd fast float %3214, %2521
  %3217 = call float @dx.op.binary.f32(i32 36, float %2530, float %3017)  ; FMin(a,b)
  %3218 = fsub fast float %3217, %2530
  %3219 = fmul fast float %3218, %3192
  %3220 = fadd fast float %3219, %2530
  %3221 = fadd fast float %3014, %2529
  %3222 = fmul fast float %3221, 0x3FF337FAE0000000
  %3223 = fmul fast float %2529, %2529
  %3224 = fmul fast float %3014, %3014
  %3225 = fadd fast float %3224, %3223
  %3226 = fmul fast float %3225, 0x3FE5152B00000000
  %3227 = fmul fast float %2529, 0xBFCC1F85E0000000
  %3228 = fmul fast float %3227, %3014
  %3229 = fadd fast float %3228, 0xBFE1363700000000
  %3230 = fadd fast float %3229, %3222
  %3231 = fsub fast float %3230, %3226
  %3232 = fmul fast float %3221, 0x3FBA6F0D00000000
  %3233 = fmul fast float %3225, 0x3FD0432880000000
  %3234 = fmul fast float %2529, 0xBFEF110800000000
  %3235 = fmul fast float %3234, %3014
  %3236 = fadd fast float %3235, 1.000000e+00
  %3237 = fsub fast float %3236, %3232
  %3238 = fadd fast float %3237, %3233
  %3239 = fdiv fast float %3231, %3238
  %3240 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  %3241 = fsub fast float %3240, %2529
  %3242 = fmul fast float %3241, %3195
  %3243 = fadd fast float %3242, %2529
  br label %3258

; <label>:3244                                    ; preds = %3210
  %3245 = icmp eq i32 %3184, 8
  br i1 %3245, label %3246, label %3258

; <label>:3246                                    ; preds = %3244
  %3247 = fmul fast float %3189, %3015
  %3248 = fmul fast float %3189, %3016
  %3249 = fadd fast float %3247, %2520
  %3250 = fadd fast float %3248, %2521
  %3251 = call float @dx.op.binary.f32(i32 36, float %2530, float %3017)  ; FMin(a,b)
  %3252 = fsub fast float %3251, %2530
  %3253 = fmul fast float %3252, %3192
  %3254 = fadd fast float %3253, %2530
  %3255 = fsub fast float %3014, %2529
  %3256 = fmul fast float %3195, %3255
  %3257 = fadd fast float %3256, %2529
  br label %3258

; <label>:3258                                    ; preds = %3246, %3244, %3212, %3197, %3175, %2713, %2532, %2519
  %3259 = phi float [ %2520, %3175 ], [ %2520, %2713 ], [ %2520, %2519 ], [ %2520, %2532 ], [ %3202, %3197 ], [ %3215, %3212 ], [ %2520, %3244 ], [ %3249, %3246 ]
  %3260 = phi float [ %2521, %3175 ], [ %2521, %2713 ], [ %2521, %2519 ], [ %2521, %2532 ], [ %3203, %3197 ], [ %3216, %3212 ], [ %2521, %3244 ], [ %3250, %3246 ]
  %3261 = phi float [ %3176, %3175 ], [ %2522, %2713 ], [ %2522, %2519 ], [ %2522, %2532 ], [ %3176, %3197 ], [ %3176, %3212 ], [ %3176, %3244 ], [ %3176, %3246 ]
  %3262 = phi float [ %3177, %3175 ], [ %2523, %2713 ], [ %2523, %2519 ], [ %2523, %2532 ], [ %3177, %3197 ], [ %3177, %3212 ], [ %3177, %3244 ], [ %3177, %3246 ]
  %3263 = phi float [ %3178, %3175 ], [ %2524, %2713 ], [ %2524, %2519 ], [ %2524, %2532 ], [ %3178, %3197 ], [ %3178, %3212 ], [ %3178, %3244 ], [ %3178, %3246 ]
  %3264 = phi float [ %3179, %3175 ], [ %2525, %2713 ], [ %2525, %2519 ], [ %2525, %2532 ], [ %3179, %3197 ], [ %3179, %3212 ], [ %3179, %3244 ], [ %3179, %3246 ]
  %3265 = phi float [ %3180, %3175 ], [ %2526, %2713 ], [ %2526, %2519 ], [ %2526, %2532 ], [ %3180, %3197 ], [ %3180, %3212 ], [ %3180, %3244 ], [ %3180, %3246 ]
  %3266 = phi float [ %3181, %3175 ], [ %2527, %2713 ], [ %2527, %2519 ], [ %2527, %2532 ], [ %3181, %3197 ], [ %3181, %3212 ], [ %3181, %3244 ], [ %3181, %3246 ]
  %3267 = phi float [ %3182, %3175 ], [ %2528, %2713 ], [ %2528, %2519 ], [ %2528, %2532 ], [ %3182, %3197 ], [ %3182, %3212 ], [ %3182, %3244 ], [ %3182, %3246 ]
  %3268 = phi float [ %2529, %3175 ], [ %2529, %2713 ], [ %2529, %2519 ], [ %2529, %2532 ], [ %3209, %3197 ], [ %3243, %3212 ], [ %2529, %3244 ], [ %3257, %3246 ]
  %3269 = phi float [ %2530, %3175 ], [ %2530, %2713 ], [ %2530, %2519 ], [ %2530, %2532 ], [ %3206, %3197 ], [ %3220, %3212 ], [ %2530, %3244 ], [ %3254, %3246 ]
  %3270 = phi float [ %3183, %3175 ], [ %2531, %2713 ], [ %2531, %2519 ], [ %2531, %2532 ], [ %3183, %3197 ], [ %3183, %3212 ], [ %3183, %3244 ], [ %3183, %3246 ]
  %3271 = add i32 %43, 360
  %3272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.i32 %3272, 0
  %3274 = extractvalue %dx.types.ResRet.i32 %3272, 1
  %3275 = bitcast i32 %3273 to float
  %3276 = bitcast i32 %3274 to float
  %3277 = fcmp fast oge float %3275, 0.000000e+00
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 0
  %3280 = select i1 %3277, float %3275, float %3279
  %3281 = fadd fast float %3280, %195
  %3282 = fmul fast float %3276, %196
  %3283 = add i32 %43, 456
  %3284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.i32 %3284, 0
  %3286 = add i32 %3285, 0
  %3287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3287, %dx.types.Handle %91, float %76, float %77, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3289 = extractvalue %dx.types.ResRet.f32 %3288, 0
  %3290 = fmul fast float %3282, %3289
  %3291 = fadd fast float %3281, %3290
  %3292 = and i32 %187, 65535
  %3293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3292)  ; LegacyF16ToF32(value)
  %3294 = lshr i32 %187, 16
  %3295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3294)  ; LegacyF16ToF32(value)
  %3296 = and i32 %188, 65535
  %3297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3296)  ; LegacyF16ToF32(value)
  %3298 = fmul fast float %3293, %3261
  %3299 = fmul fast float %3295, %3262
  %3300 = fmul fast float %3297, %3263
  %3301 = shl i32 %189, 4
  %3302 = and i32 %3301, 32752
  %3303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3302)  ; LegacyF16ToF32(value)
  %3304 = lshr i32 %189, 7
  %3305 = and i32 %3304, 32752
  %3306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3305)  ; LegacyF16ToF32(value)
  %3307 = lshr i32 %189, 22
  %3308 = shl nuw nsw i32 %3307, 5
  %3309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3308)  ; LegacyF16ToF32(value)
  %3310 = and i32 %190, 65535
  %3311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3310)  ; LegacyF16ToF32(value)
  %3312 = fmul fast float %3303, %3264
  %3313 = fmul fast float %3312, %3311
  %3314 = fmul fast float %3306, %3265
  %3315 = fmul fast float %3314, %3311
  %3316 = fmul fast float %3309, %3266
  %3317 = fmul fast float %3316, %3311
  %3318 = call float @dx.op.dot2.f32(i32 54, float %3259, float %3260, float %3259, float %3260)  ; Dot2(ax,ay,bx,by)
  %3319 = fmul fast float %3318, 0x3FE3333340000000
  %3320 = fsub fast float 1.000000e+00, %3319
  %3321 = call float @dx.op.dot3.f32(i32 55, float %3259, float %3260, float %3320, float %3259, float %3260, float %3320)  ; Dot3(ax,ay,az,bx,by,bz)
  %3322 = call float @dx.op.unary.f32(i32 25, float %3321)  ; Rsqrt(value)
  %3323 = fmul fast float %3322, %3259
  %3324 = fmul fast float %3322, %3260
  %3325 = fmul fast float %3320, %3322
  %3326 = fmul fast float %3325, %101
  %3327 = fmul fast float %3325, %102
  %3328 = fmul fast float %3325, %103
  %3329 = fmul fast float %3323, %69
  %3330 = fmul fast float %3323, %70
  %3331 = fmul fast float %3323, %71
  %3332 = fadd fast float %3326, %3329
  %3333 = fadd fast float %3327, %3330
  %3334 = fadd fast float %3328, %3331
  %3335 = fmul fast float %113, %3324
  %3336 = fmul fast float %114, %3324
  %3337 = fmul fast float %115, %3324
  %3338 = fadd fast float %3332, %3335
  %3339 = fadd fast float %3333, %3336
  %3340 = fadd fast float %3334, %3337
  %3341 = call float @dx.op.dot3.f32(i32 55, float %3338, float %3339, float %3340, float %3338, float %3339, float %3340)  ; Dot3(ax,ay,az,bx,by,bz)
  %3342 = call float @dx.op.unary.f32(i32 25, float %3341)  ; Rsqrt(value)
  %3343 = fmul fast float %3338, %3342
  %3344 = fmul fast float %3339, %3342
  %3345 = fmul fast float %3340, %3342
  %3346 = icmp eq i32 %45, 65535
  br i1 %3346, label %3865, label %3347

; <label>:3347                                    ; preds = %3258
  %3348 = call float @dx.op.unary.f32(i32 83, float %46)  ; DerivCoarseX(value)
  %3349 = call float @dx.op.unary.f32(i32 83, float %47)  ; DerivCoarseX(value)
  %3350 = call float @dx.op.unary.f32(i32 83, float %48)  ; DerivCoarseX(value)
  %3351 = call float @dx.op.unary.f32(i32 84, float %46)  ; DerivCoarseY(value)
  %3352 = call float @dx.op.unary.f32(i32 84, float %47)  ; DerivCoarseY(value)
  %3353 = call float @dx.op.unary.f32(i32 84, float %48)  ; DerivCoarseY(value)
  %3354 = fadd fast float %3348, %46
  %3355 = fadd fast float %3349, %47
  %3356 = fadd fast float %3350, %48
  %3357 = fadd fast float %3351, %46
  %3358 = fadd fast float %3352, %47
  %3359 = fadd fast float %3353, %48
  %3360 = mul i32 %45, 48
  %3361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3360, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.f32 %3361, 0
  %3363 = extractvalue %dx.types.ResRet.f32 %3361, 1
  %3364 = extractvalue %dx.types.ResRet.f32 %3361, 2
  %3365 = add i32 %3360, 16
  %3366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.f32 %3366, 0
  %3368 = extractvalue %dx.types.ResRet.f32 %3366, 1
  %3369 = extractvalue %dx.types.ResRet.f32 %3366, 2
  %3370 = add i32 %3360, 32
  %3371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.f32 %3371, 0
  %3373 = extractvalue %dx.types.ResRet.f32 %3371, 1
  %3374 = extractvalue %dx.types.ResRet.f32 %3371, 2
  %3375 = extractvalue %dx.types.ResRet.f32 %3371, 3
  %3376 = bitcast float %3375 to i32
  %3377 = fmul fast float %3362, %46
  %3378 = fmul fast float %3363, %47
  %3379 = fmul fast float %3364, %48
  %3380 = fsub fast float %3377, %3367
  %3381 = fsub fast float %3378, %3368
  %3382 = fsub fast float %3379, %3369
  %3383 = call float @dx.op.unary.f32(i32 7, float %3380)  ; Saturate(value)
  %3384 = call float @dx.op.unary.f32(i32 7, float %3381)  ; Saturate(value)
  %3385 = call float @dx.op.unary.f32(i32 7, float %3382)  ; Saturate(value)
  %3386 = fmul fast float %3383, %3372
  %3387 = fmul fast float %3384, %3373
  %3388 = fmul fast float %3385, %3374
  %3389 = fadd fast float %3372, -1.000000e+00
  %3390 = fadd fast float %3373, -1.000000e+00
  %3391 = fadd fast float %3374, -1.000000e+00
  %3392 = call float @dx.op.unary.f32(i32 27, float %3386)  ; Round_ni(value)
  %3393 = call float @dx.op.unary.f32(i32 27, float %3387)  ; Round_ni(value)
  %3394 = call float @dx.op.unary.f32(i32 27, float %3388)  ; Round_ni(value)
  %3395 = call float @dx.op.binary.f32(i32 36, float %3392, float %3389)  ; FMin(a,b)
  %3396 = call float @dx.op.binary.f32(i32 36, float %3393, float %3390)  ; FMin(a,b)
  %3397 = call float @dx.op.binary.f32(i32 36, float %3394, float %3391)  ; FMin(a,b)
  %3398 = fmul fast float %3397, %3373
  %3399 = fadd fast float %3398, %3396
  %3400 = fmul fast float %3399, %3372
  %3401 = fadd fast float %3400, %3395
  %3402 = fptosi float %3401 to i32
  %3403 = add nsw i32 %3402, %3376
  %3404 = shl nsw i32 %3403, 2
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = lshr i32 %3406, 16
  %3408 = icmp eq i32 %3407, 0
  br i1 %3408, label %3833, label %3409

; <label>:3409                                    ; preds = %3347
  br label %3410

; <label>:3410                                    ; preds = %3532, %3409
  %3411 = phi i32 [ %3434, %3532 ], [ %3407, %3409 ]
  %3412 = phi float [ %3533, %3532 ], [ 0.000000e+00, %3409 ]
  %3413 = phi float [ %3534, %3532 ], [ %1050, %3409 ]
  %3414 = phi float [ %3535, %3532 ], [ %3291, %3409 ]
  %3415 = phi float [ %3536, %3532 ], [ %3270, %3409 ]
  %3416 = phi float [ %3537, %3532 ], [ 0.000000e+00, %3409 ]
  %3417 = phi float [ %3538, %3532 ], [ 0.000000e+00, %3409 ]
  %3418 = phi float [ %3539, %3532 ], [ %3313, %3409 ]
  %3419 = phi float [ %3540, %3532 ], [ %3315, %3409 ]
  %3420 = phi float [ %3541, %3532 ], [ %3317, %3409 ]
  %3421 = phi float [ %3542, %3532 ], [ %3343, %3409 ]
  %3422 = phi float [ %3543, %3532 ], [ %3344, %3409 ]
  %3423 = phi float [ %3544, %3532 ], [ %3345, %3409 ]
  %3424 = phi float [ %3545, %3532 ], [ %3269, %3409 ]
  %3425 = phi float [ %3546, %3532 ], [ %3268, %3409 ]
  %3426 = phi float [ %3547, %3532 ], [ 0.000000e+00, %3409 ]
  %3427 = phi float [ %3548, %3532 ], [ %3267, %3409 ]
  %3428 = phi float [ %3549, %3532 ], [ %3298, %3409 ]
  %3429 = phi float [ %3550, %3532 ], [ %3299, %3409 ]
  %3430 = phi float [ %3551, %3532 ], [ %3300, %3409 ]
  %3431 = shl nuw nsw i32 %3411, 2
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = lshr i32 %3433, 16
  %3435 = shl i32 %3433, 8
  %3436 = and i32 %3435, 16776960
  %3437 = or i32 %3436, 48
  %3438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.f32 %3438, 0
  %3440 = extractvalue %dx.types.ResRet.f32 %3438, 1
  %3441 = extractvalue %dx.types.ResRet.f32 %3438, 2
  %3442 = or i32 %3436, 64
  %3443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3442, i32 undef)  ; BufferLoad(srv,index,wot)
  %3444 = extractvalue %dx.types.ResRet.i32 %3443, 0
  %3445 = extractvalue %dx.types.ResRet.i32 %3443, 1
  %3446 = or i32 %3436, 80
  %3447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.f32 %3447, 2
  %3449 = extractvalue %dx.types.ResRet.f32 %3447, 3
  %3450 = or i32 %3436, 96
  %3451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.f32 %3451, 0
  %3453 = extractvalue %dx.types.ResRet.f32 %3451, 1
  %3454 = extractvalue %dx.types.ResRet.f32 %3451, 2
  %3455 = extractvalue %dx.types.ResRet.f32 %3451, 3
  %3456 = or i32 %3436, 112
  %3457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.f32 %3457, 2
  %3459 = or i32 %3436, 128
  %3460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.f32 %3460, 0
  %3462 = extractvalue %dx.types.ResRet.f32 %3460, 1
  %3463 = extractvalue %dx.types.ResRet.f32 %3460, 2
  %3464 = extractvalue %dx.types.ResRet.f32 %3460, 3
  %3465 = or i32 %3436, 144
  %3466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.f32 %3466, 0
  %3468 = extractvalue %dx.types.ResRet.f32 %3466, 1
  %3469 = extractvalue %dx.types.ResRet.f32 %3466, 2
  %3470 = extractvalue %dx.types.ResRet.f32 %3466, 3
  %3471 = or i32 %3436, 160
  %3472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3471, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.f32 %3472, 0
  %3474 = extractvalue %dx.types.ResRet.f32 %3472, 1
  %3475 = extractvalue %dx.types.ResRet.f32 %3472, 2
  %3476 = extractvalue %dx.types.ResRet.f32 %3472, 3
  %3477 = or i32 %3436, 192
  %3478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3477, i32 undef)  ; BufferLoad(srv,index,wot)
  %3479 = extractvalue %dx.types.ResRet.i32 %3478, 0
  %3480 = or i32 %3436, 208
  %3481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3480, i32 undef)  ; BufferLoad(srv,index,wot)
  %3482 = extractvalue %dx.types.ResRet.f32 %3481, 0
  %3483 = or i32 %3436, 248
  %3484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.f32 %3484, 0
  %3486 = extractvalue %dx.types.ResRet.f32 %3484, 1
  %3487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.f32 %3487, 0
  %3489 = extractvalue %dx.types.ResRet.f32 %3487, 1
  %3490 = extractvalue %dx.types.ResRet.f32 %3487, 2
  %3491 = extractvalue %dx.types.ResRet.f32 %3487, 3
  %3492 = call float @dx.op.dot4.f32(i32 56, float %3488, float %3489, float %3490, float %3491, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3493 = or i32 %3436, 16
  %3494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.f32 %3494, 0
  %3496 = extractvalue %dx.types.ResRet.f32 %3494, 1
  %3497 = extractvalue %dx.types.ResRet.f32 %3494, 2
  %3498 = extractvalue %dx.types.ResRet.f32 %3494, 3
  %3499 = call float @dx.op.dot4.f32(i32 56, float %3495, float %3496, float %3497, float %3498, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3500 = or i32 %3436, 32
  %3501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.f32 %3501, 0
  %3503 = extractvalue %dx.types.ResRet.f32 %3501, 1
  %3504 = extractvalue %dx.types.ResRet.f32 %3501, 2
  %3505 = extractvalue %dx.types.ResRet.f32 %3501, 3
  %3506 = call float @dx.op.dot4.f32(i32 56, float %3502, float %3503, float %3504, float %3505, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3507 = call float @dx.op.unary.f32(i32 27, float %3492)  ; Round_ni(value)
  %3508 = call float @dx.op.unary.f32(i32 6, float %3507)  ; FAbs(value)
  %3509 = call float @dx.op.unary.f32(i32 27, float %3499)  ; Round_ni(value)
  %3510 = call float @dx.op.unary.f32(i32 6, float %3509)  ; FAbs(value)
  %3511 = call float @dx.op.unary.f32(i32 6, float %3506)  ; FAbs(value)
  %3512 = call float @dx.op.unary.f32(i32 27, float %3511)  ; Round_ni(value)
  %3513 = fadd fast float %3510, %3508
  %3514 = fadd fast float %3513, %3512
  %3515 = fcmp fast oeq float %3514, 0.000000e+00
  %3516 = call float @dx.op.dot4.f32(i32 56, float %3488, float %3489, float %3490, float %3491, float %3354, float %3355, float %3356, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3517 = call float @dx.op.dot4.f32(i32 56, float %3495, float %3496, float %3497, float %3498, float %3354, float %3355, float %3356, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3518 = call float @dx.op.dot4.f32(i32 56, float %3488, float %3489, float %3490, float %3491, float %3357, float %3358, float %3359, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3519 = call float @dx.op.dot4.f32(i32 56, float %3495, float %3496, float %3497, float %3498, float %3357, float %3358, float %3359, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3520 = fsub fast float %3516, %3492
  %3521 = fsub fast float %3518, %3492
  %3522 = fsub fast float %3517, %3499
  %3523 = fsub fast float %3519, %3499
  %3524 = call float @dx.op.dot3.f32(i32 55, float %3439, float %3440, float %3441, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %3525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3526 = extractvalue %dx.types.CBufRet.f32 %3525, 2
  %3527 = fadd fast float %3526, %3524
  %3528 = call float @dx.op.unary.f32(i32 7, float %3527)  ; Saturate(value)
  %3529 = extractvalue %dx.types.CBufRet.f32 %3525, 0
  %3530 = fcmp fast ogt float %3528, %3529
  %3531 = and i1 %3515, %3530
  br i1 %3531, label %3553, label %3532

; <label>:3532                                    ; preds = %3819, %3636, %3553, %3410
  %3533 = phi float [ %3412, %3553 ], [ %3639, %3636 ], [ %3639, %3819 ], [ %3412, %3410 ]
  %3534 = phi float [ %3413, %3553 ], [ %3413, %3636 ], [ %3794, %3819 ], [ %3413, %3410 ]
  %3535 = phi float [ %3414, %3553 ], [ %3414, %3636 ], [ %3793, %3819 ], [ %3414, %3410 ]
  %3536 = phi float [ %3415, %3553 ], [ %3415, %3636 ], [ %3791, %3819 ], [ %3415, %3410 ]
  %3537 = phi float [ %3416, %3553 ], [ %3416, %3636 ], [ %3763, %3819 ], [ %3416, %3410 ]
  %3538 = phi float [ %3417, %3553 ], [ %3417, %3636 ], [ %3761, %3819 ], [ %3417, %3410 ]
  %3539 = phi float [ %3418, %3553 ], [ %3418, %3636 ], [ %3829, %3819 ], [ %3418, %3410 ]
  %3540 = phi float [ %3419, %3553 ], [ %3419, %3636 ], [ %3830, %3819 ], [ %3419, %3410 ]
  %3541 = phi float [ %3420, %3553 ], [ %3420, %3636 ], [ %3831, %3819 ], [ %3420, %3410 ]
  %3542 = phi float [ %3421, %3553 ], [ %3421, %3636 ], [ %3742, %3819 ], [ %3421, %3410 ]
  %3543 = phi float [ %3422, %3553 ], [ %3422, %3636 ], [ %3743, %3819 ], [ %3422, %3410 ]
  %3544 = phi float [ %3423, %3553 ], [ %3423, %3636 ], [ %3744, %3819 ], [ %3423, %3410 ]
  %3545 = phi float [ %3424, %3553 ], [ %3424, %3636 ], [ %3771, %3819 ], [ %3424, %3410 ]
  %3546 = phi float [ %3425, %3553 ], [ %3425, %3636 ], [ %3768, %3819 ], [ %3425, %3410 ]
  %3547 = phi float [ %3426, %3553 ], [ %3426, %3636 ], [ %3765, %3819 ], [ %3426, %3410 ]
  %3548 = phi float [ %3427, %3553 ], [ %3427, %3636 ], [ %3759, %3819 ], [ %3427, %3410 ]
  %3549 = phi float [ %3428, %3553 ], [ %3428, %3636 ], [ %3754, %3819 ], [ %3428, %3410 ]
  %3550 = phi float [ %3429, %3553 ], [ %3429, %3636 ], [ %3755, %3819 ], [ %3429, %3410 ]
  %3551 = phi float [ %3430, %3553 ], [ %3430, %3636 ], [ %3756, %3819 ], [ %3430, %3410 ]
  %3552 = icmp eq i32 %3434, 0
  br i1 %3552, label %3832, label %3410

; <label>:3553                                    ; preds = %3410
  %3554 = extractvalue %dx.types.ResRet.f32 %3438, 3
  %3555 = extractvalue %dx.types.ResRet.f32 %3457, 3
  %3556 = extractvalue %dx.types.ResRet.f32 %3457, 1
  %3557 = extractvalue %dx.types.ResRet.f32 %3457, 0
  %3558 = extractvalue %dx.types.ResRet.f32 %3447, 1
  %3559 = extractvalue %dx.types.ResRet.f32 %3447, 0
  %3560 = extractvalue %dx.types.ResRet.i32 %3443, 3
  %3561 = extractvalue %dx.types.ResRet.i32 %3443, 2
  %3562 = bitcast float %3554 to i32
  %3563 = add i32 %3560, 0
  %3564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3563, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3566 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3564, %dx.types.Handle %3565, float %3492, float %3499, float undef, float undef, i32 0, i32 0, i32 undef, float %3520, float %3522, float undef, float %3521, float %3523, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3567 = extractvalue %dx.types.ResRet.f32 %3566, 0
  %3568 = fmul fast float %3567, %3559
  %3569 = fadd fast float %3568, %3558
  %3570 = call float @dx.op.unary.f32(i32 7, float %3569)  ; Saturate(value)
  %3571 = fmul fast float %3492, %3452
  %3572 = call float @dx.op.tertiary.f32(i32 46, float %3453, float %3499, float %3571)  ; FMad(a,b,c)
  %3573 = fadd fast float %3572, %3557
  %3574 = fmul fast float %3492, %3454
  %3575 = call float @dx.op.tertiary.f32(i32 46, float %3455, float %3499, float %3574)  ; FMad(a,b,c)
  %3576 = fadd fast float %3575, %3556
  %3577 = fmul fast float %3520, %3452
  %3578 = call float @dx.op.tertiary.f32(i32 46, float %3453, float %3522, float %3577)  ; FMad(a,b,c)
  %3579 = fmul fast float %3520, %3454
  %3580 = call float @dx.op.tertiary.f32(i32 46, float %3455, float %3522, float %3579)  ; FMad(a,b,c)
  %3581 = fmul fast float %3521, %3452
  %3582 = call float @dx.op.tertiary.f32(i32 46, float %3453, float %3523, float %3581)  ; FMad(a,b,c)
  %3583 = fmul fast float %3521, %3454
  %3584 = call float @dx.op.tertiary.f32(i32 46, float %3455, float %3523, float %3583)  ; FMad(a,b,c)
  %3585 = add i32 %3561, 0
  %3586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3585, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3587 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3586, %dx.types.Handle %3565, float %3573, float %3576, float undef, float undef, i32 0, i32 0, i32 undef, float %3578, float %3580, float undef, float %3582, float %3584, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = and i32 %3562, 1024
  %3590 = icmp ne i32 %3589, 0
  %3591 = fcmp fast ogt float %3588, 0x3FE0101020000000
  %3592 = uitofp i1 %3591 to float
  %3593 = select i1 %3590, float %3592, float %3588
  %3594 = and i32 %3562, 8192
  %3595 = icmp ne i32 %3594, 0
  %3596 = select i1 %3595, float %3555, float 1.000000e+00
  %3597 = fmul fast float %3492, 2.000000e+00
  %3598 = fadd fast float %3597, -1.000000e+00
  %3599 = call float @dx.op.unary.f32(i32 6, float %3598)  ; FAbs(value)
  %3600 = fmul fast float %3599, %3485
  %3601 = fsub fast float %3600, %3485
  %3602 = call float @dx.op.unary.f32(i32 7, float %3601)  ; Saturate(value)
  %3603 = fmul fast float %3499, 2.000000e+00
  %3604 = fadd fast float %3603, -1.000000e+00
  %3605 = call float @dx.op.unary.f32(i32 6, float %3604)  ; FAbs(value)
  %3606 = fmul fast float %3605, %3486
  %3607 = fsub fast float %3606, %3486
  %3608 = call float @dx.op.unary.f32(i32 7, float %3607)  ; Saturate(value)
  %3609 = fmul fast float %3511, %3448
  %3610 = fsub fast float %3609, %3448
  %3611 = call float @dx.op.unary.f32(i32 7, float %3610)  ; Saturate(value)
  %3612 = fmul fast float %3570, %3596
  %3613 = fmul fast float %3612, %3567
  %3614 = fmul fast float %3613, %3602
  %3615 = fmul fast float %3614, %3593
  %3616 = fmul fast float %3615, %3608
  %3617 = fmul fast float %3616, %3611
  %3618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3619 = extractvalue %dx.types.CBufRet.f32 %3618, 1
  %3620 = extractvalue %dx.types.CBufRet.f32 %3618, 0
  %3621 = fsub fast float %3528, %3620
  %3622 = fmul fast float %3621, %3619
  %3623 = call float @dx.op.unary.f32(i32 7, float %3622)  ; Saturate(value)
  %3624 = fmul fast float %3617, %3449
  %3625 = fadd fast float %3617, %3449
  %3626 = fmul fast float %3625, %3458
  %3627 = fsub fast float %3626, %3458
  %3628 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  %3629 = and i32 %3562, 128
  %3630 = icmp ne i32 %3629, 0
  %3631 = select i1 %3630, float %3628, float %3624
  %3632 = fmul fast float %3631, %3623
  %3633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3634 = extractvalue %dx.types.CBufRet.f32 %3633, 0
  %3635 = fcmp fast ugt float %3632, %3634
  br i1 %3635, label %3636, label %3532

; <label>:3636                                    ; preds = %3553
  %3637 = select i1 %3595, float %3632, float 0.000000e+00
  %3638 = fadd fast float %3637, %3412
  %3639 = call float @dx.op.unary.f32(i32 7, float %3638)  ; Saturate(value)
  br i1 %3595, label %3532, label %3640

; <label>:3640                                    ; preds = %3636
  %3641 = and i32 %3562, 4
  %3642 = and i32 %3562, 8
  %3643 = add i32 %3444, 0
  %3644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3643, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3646 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3644, %dx.types.Handle %3645, float %3573, float %3576, float undef, float undef, i32 0, i32 0, i32 undef, float %3578, float %3580, float undef, float %3582, float %3584, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3647 = extractvalue %dx.types.ResRet.f32 %3646, 0
  %3648 = extractvalue %dx.types.ResRet.f32 %3646, 1
  %3649 = extractvalue %dx.types.ResRet.f32 %3646, 2
  %3650 = extractvalue %dx.types.ResRet.f32 %3646, 3
  %3651 = bitcast float %3470 to i32
  %3652 = and i32 %3651, 255
  %3653 = uitofp i32 %3652 to float
  %3654 = lshr i32 %3651, 8
  %3655 = and i32 %3654, 255
  %3656 = uitofp i32 %3655 to float
  %3657 = fmul fast float %3650, %3653
  %3658 = fadd fast float %3657, %3656
  %3659 = fmul fast float %3658, 0x3F70101000000000
  %3660 = add i32 %3445, 0
  %3661 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3660, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3662 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3661, %dx.types.Handle %3645, float %3573, float %3576, float undef, float undef, i32 0, i32 0, i32 undef, float %3578, float %3580, float undef, float %3582, float %3584, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3663 = extractvalue %dx.types.ResRet.f32 %3662, 0
  %3664 = extractvalue %dx.types.ResRet.f32 %3662, 1
  %3665 = extractvalue %dx.types.ResRet.f32 %3662, 2
  %3666 = extractvalue %dx.types.ResRet.f32 %3662, 3
  %3667 = bitcast float %3464 to i32
  %3668 = and i32 %3667, 255
  %3669 = uitofp i32 %3668 to float
  %3670 = lshr i32 %3667, 8
  %3671 = and i32 %3670, 255
  %3672 = uitofp i32 %3671 to float
  %3673 = lshr i32 %3667, 16
  %3674 = and i32 %3673, 255
  %3675 = uitofp i32 %3674 to float
  %3676 = fmul fast float %3675, 0x3F70101000000000
  %3677 = fmul fast float %3663, %3669
  %3678 = fadd fast float %3677, %3672
  %3679 = fmul fast float %3678, 0x3F70101000000000
  %3680 = fadd fast float %3664, -5.000000e-01
  %3681 = fadd fast float %3666, -5.000000e-01
  %3682 = fmul fast float %3680, %3676
  %3683 = fmul fast float %3681, %3676
  %3684 = fadd fast float %3682, 5.000000e-01
  %3685 = fadd fast float %3683, 5.000000e-01
  %3686 = fmul fast float %3647, %3473
  %3687 = fmul fast float %3648, %3474
  %3688 = fmul fast float %3649, %3475
  %3689 = fmul fast float %3684, 2.000000e+00
  %3690 = fadd fast float %3689, -1.000000e+00
  %3691 = fmul fast float %3685, 2.000000e+00
  %3692 = fadd fast float %3691, -1.000000e+00
  %3693 = fadd fast float %3690, %3692
  %3694 = fmul fast float %3693, 5.000000e-01
  %3695 = fsub fast float %3690, %3692
  %3696 = fmul fast float %3695, 5.000000e-01
  %3697 = call float @dx.op.unary.f32(i32 6, float %3694)  ; FAbs(value)
  %3698 = fsub fast float 1.000000e+00, %3697
  %3699 = call float @dx.op.unary.f32(i32 6, float %3696)  ; FAbs(value)
  %3700 = fsub fast float %3698, %3699
  %3701 = call float @dx.op.dot3.f32(i32 55, float %3694, float %3696, float %3700, float %3694, float %3696, float %3700)  ; Dot3(ax,ay,az,bx,by,bz)
  %3702 = call float @dx.op.unary.f32(i32 25, float %3701)  ; Rsqrt(value)
  %3703 = fmul fast float %3694, %3702
  %3704 = fmul fast float %3696, %3702
  %3705 = fmul fast float %3702, %3700
  %3706 = fmul fast float %3705, %3439
  %3707 = fmul fast float %3705, %3440
  %3708 = fmul fast float %3705, %3441
  %3709 = fmul fast float %3703, %3461
  %3710 = fmul fast float %3703, %3462
  %3711 = fmul fast float %3703, %3463
  %3712 = fadd fast float %3709, %3706
  %3713 = fadd fast float %3710, %3707
  %3714 = fadd fast float %3711, %3708
  %3715 = fmul fast float %3704, %3467
  %3716 = fmul fast float %3704, %3468
  %3717 = fmul fast float %3704, %3469
  %3718 = fadd fast float %3712, %3715
  %3719 = fadd fast float %3713, %3716
  %3720 = fadd fast float %3714, %3717
  %3721 = call float @dx.op.dot3.f32(i32 55, float %3718, float %3719, float %3720, float %3718, float %3719, float %3720)  ; Dot3(ax,ay,az,bx,by,bz)
  %3722 = call float @dx.op.unary.f32(i32 25, float %3721)  ; Rsqrt(value)
  %3723 = fmul fast float %3718, %3722
  %3724 = fmul fast float %3719, %3722
  %3725 = fmul fast float %3720, %3722
  %3726 = icmp ne i32 %3642, 0
  %3727 = select i1 %3726, float 1.000000e+00, float 0.000000e+00
  %3728 = fmul fast float %3632, %3727
  %3729 = and i32 %3562, 1
  %3730 = icmp eq i32 %3729, 0
  br i1 %3730, label %3731, label %3735

; <label>:3731                                    ; preds = %3640
  %3732 = fsub fast float %3723, %3421
  %3733 = fsub fast float %3724, %3422
  %3734 = fsub fast float %3725, %3423
  br label %3735

; <label>:3735                                    ; preds = %3731, %3640
  %3736 = phi float [ %3732, %3731 ], [ %3723, %3640 ]
  %3737 = phi float [ %3733, %3731 ], [ %3724, %3640 ]
  %3738 = phi float [ %3734, %3731 ], [ %3725, %3640 ]
  %3739 = fmul float %3738, %3728
  %3740 = fmul float %3737, %3728
  %3741 = fmul float %3736, %3728
  %3742 = fadd fast float %3741, %3421
  %3743 = fadd fast float %3740, %3422
  %3744 = fadd fast float %3739, %3423
  %3745 = icmp ne i32 %3641, 0
  %3746 = select i1 %3745, float 1.000000e+00, float 0.000000e+00
  %3747 = fmul fast float %3632, %3746
  %3748 = fsub fast float %3686, %3428
  %3749 = fsub fast float %3687, %3429
  %3750 = fsub fast float %3688, %3430
  %3751 = fmul fast float %3748, %3747
  %3752 = fmul fast float %3749, %3747
  %3753 = fmul fast float %3750, %3747
  %3754 = fadd fast float %3751, %3428
  %3755 = fadd fast float %3752, %3429
  %3756 = fadd fast float %3753, %3430
  %3757 = fsub fast float %3659, %3427
  %3758 = fmul fast float %3757, %3747
  %3759 = fadd fast float %3758, %3427
  %3760 = fmul fast float %3747, %3417
  %3761 = fsub fast float %3417, %3760
  %3762 = fmul fast float %3747, %3416
  %3763 = fsub fast float %3416, %3762
  %3764 = fadd fast float %3632, %3426
  %3765 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3766 = fsub fast float %3679, %3425
  %3767 = fmul fast float %3766, %3728
  %3768 = fadd fast float %3767, %3425
  %3769 = fsub fast float %3665, %3424
  %3770 = fmul fast float %3769, %3728
  %3771 = fadd fast float %3770, %3424
  %3772 = call float @dx.op.dot3.f32(i32 55, float %3686, float %3687, float %3688, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.CBufRet.f32 %3773, 1
  %3776 = fmul fast float %3775, %3772
  %3777 = fadd fast float %3776, %3774
  %3778 = call float @dx.op.unary.f32(i32 7, float %3777)  ; Saturate(value)
  %3779 = bitcast float %3476 to i32
  %3780 = and i32 %3779, 65535
  %3781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3780)  ; LegacyF16ToF32(value)
  %3782 = lshr i32 %3779, 16
  %3783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3782)  ; LegacyF16ToF32(value)
  %3784 = fcmp fast oge float %3781, 0.000000e+00
  %3785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3786 = extractvalue %dx.types.CBufRet.f32 %3785, 0
  %3787 = select i1 %3784, float %3781, float %3786
  %3788 = fadd fast float %3787, %3783
  %3789 = fsub fast float %3778, %3415
  %3790 = fmul fast float %3789, %3632
  %3791 = fadd fast float %3790, %3415
  %3792 = fmul fast float %3788, %3632
  %3793 = call float @dx.op.binary.f32(i32 35, float %3414, float %3792)  ; FMax(a,b)
  %3794 = call float @dx.op.binary.f32(i32 35, float %3413, float %3632)  ; FMax(a,b)
  %3795 = and i32 %3562, 16
  %3796 = icmp eq i32 %3795, 0
  br i1 %3796, label %3819, label %3797

; <label>:3797                                    ; preds = %3735
  %3798 = bitcast float %3482 to i32
  %3799 = add i32 %3479, 0
  %3800 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3799, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3801 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3800, %dx.types.Handle %3645, float %3573, float %3576, float undef, float undef, i32 0, i32 0, i32 undef, float %3578, float %3580, float undef, float %3582, float %3584, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3802 = extractvalue %dx.types.ResRet.f32 %3801, 0
  %3803 = extractvalue %dx.types.ResRet.f32 %3801, 1
  %3804 = extractvalue %dx.types.ResRet.f32 %3801, 2
  %3805 = and i32 %3798, 65535
  %3806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3805)  ; LegacyF16ToF32(value)
  %3807 = fmul fast float %3802, %3473
  %3808 = fmul fast float %3803, %3474
  %3809 = fmul fast float %3804, %3475
  %3810 = and i32 %3562, 16384
  %3811 = icmp ne i32 %3810, 0
  %3812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3813 = extractvalue %dx.types.CBufRet.f32 %3812, 0
  %3814 = select i1 %3811, float %3813, float 1.000000e+00
  %3815 = fmul fast float %3814, %3806
  %3816 = fmul fast float %3807, %3815
  %3817 = fmul fast float %3808, %3815
  %3818 = fmul fast float %3809, %3815
  br label %3819

; <label>:3819                                    ; preds = %3797, %3735
  %3820 = phi float [ %3816, %3797 ], [ 0.000000e+00, %3735 ]
  %3821 = phi float [ %3817, %3797 ], [ 0.000000e+00, %3735 ]
  %3822 = phi float [ %3818, %3797 ], [ 0.000000e+00, %3735 ]
  %3823 = fsub fast float %3820, %3418
  %3824 = fsub fast float %3821, %3419
  %3825 = fsub fast float %3822, %3420
  %3826 = fmul fast float %3823, %3632
  %3827 = fmul fast float %3824, %3632
  %3828 = fmul fast float %3825, %3632
  %3829 = fadd fast float %3826, %3418
  %3830 = fadd fast float %3827, %3419
  %3831 = fadd fast float %3828, %3420
  br label %3532

; <label>:3832                                    ; preds = %3532
  br label %3833

; <label>:3833                                    ; preds = %3832, %3347
  %3834 = phi float [ 0.000000e+00, %3347 ], [ %3533, %3832 ]
  %3835 = phi float [ %1050, %3347 ], [ %3534, %3832 ]
  %3836 = phi float [ %3291, %3347 ], [ %3535, %3832 ]
  %3837 = phi float [ %3270, %3347 ], [ %3536, %3832 ]
  %3838 = phi float [ 0.000000e+00, %3347 ], [ %3537, %3832 ]
  %3839 = phi float [ 0.000000e+00, %3347 ], [ %3538, %3832 ]
  %3840 = phi float [ %3313, %3347 ], [ %3539, %3832 ]
  %3841 = phi float [ %3315, %3347 ], [ %3540, %3832 ]
  %3842 = phi float [ %3317, %3347 ], [ %3541, %3832 ]
  %3843 = phi float [ %3343, %3347 ], [ %3542, %3832 ]
  %3844 = phi float [ %3344, %3347 ], [ %3543, %3832 ]
  %3845 = phi float [ %3345, %3347 ], [ %3544, %3832 ]
  %3846 = phi float [ %3269, %3347 ], [ %3545, %3832 ]
  %3847 = phi float [ %3268, %3347 ], [ %3546, %3832 ]
  %3848 = phi float [ 0.000000e+00, %3347 ], [ %3547, %3832 ]
  %3849 = phi float [ %3267, %3347 ], [ %3548, %3832 ]
  %3850 = phi float [ %3298, %3347 ], [ %3549, %3832 ]
  %3851 = phi float [ %3299, %3347 ], [ %3550, %3832 ]
  %3852 = phi float [ %3300, %3347 ], [ %3551, %3832 ]
  %3853 = call float @dx.op.dot3.f32(i32 55, float %3843, float %3844, float %3845, float %3843, float %3844, float %3845)  ; Dot3(ax,ay,az,bx,by,bz)
  %3854 = call float @dx.op.unary.f32(i32 25, float %3853)  ; Rsqrt(value)
  %3855 = fmul fast float %3854, %3843
  %3856 = fmul fast float %3854, %3844
  %3857 = fmul fast float %3854, %3845
  %3858 = fadd fast float %3848, %1050
  %3859 = call float @dx.op.unary.f32(i32 7, float %3858)  ; Saturate(value)
  %3860 = call float @dx.op.dot3.f32(i32 55, float %3855, float %3856, float %3857, float %3855, float %3856, float %3857)  ; Dot3(ax,ay,az,bx,by,bz)
  %3861 = call float @dx.op.unary.f32(i32 25, float %3860)  ; Rsqrt(value)
  %3862 = fmul fast float %3861, %3855
  %3863 = fmul fast float %3861, %3856
  %3864 = fmul fast float %3861, %3857
  br label %3865

; <label>:3865                                    ; preds = %3833, %3258
  %3866 = phi float [ %3862, %3833 ], [ %3343, %3258 ]
  %3867 = phi float [ %3863, %3833 ], [ %3344, %3258 ]
  %3868 = phi float [ %3864, %3833 ], [ %3345, %3258 ]
  %3869 = phi float [ %3850, %3833 ], [ %3298, %3258 ]
  %3870 = phi float [ %3851, %3833 ], [ %3299, %3258 ]
  %3871 = phi float [ %3852, %3833 ], [ %3300, %3258 ]
  %3872 = phi float [ %3840, %3833 ], [ %3313, %3258 ]
  %3873 = phi float [ %3841, %3833 ], [ %3315, %3258 ]
  %3874 = phi float [ %3842, %3833 ], [ %3317, %3258 ]
  %3875 = phi float [ %3849, %3833 ], [ %3267, %3258 ]
  %3876 = phi float [ %3859, %3833 ], [ %1050, %3258 ]
  %3877 = phi float [ %3847, %3833 ], [ %3268, %3258 ]
  %3878 = phi float [ %3846, %3833 ], [ %3269, %3258 ]
  %3879 = phi float [ %3839, %3833 ], [ 0.000000e+00, %3258 ]
  %3880 = phi float [ %3838, %3833 ], [ 0.000000e+00, %3258 ]
  %3881 = phi float [ %3834, %3833 ], [ 0.000000e+00, %3258 ]
  %3882 = phi float [ %3836, %3833 ], [ %3291, %3258 ]
  %3883 = phi float [ %3835, %3833 ], [ %1050, %3258 ]
  %3884 = phi float [ %3837, %3833 ], [ %3270, %3258 ]
  %3885 = fadd fast float %3875, 0xBFB99999A0000000
  %3886 = call float @dx.op.unary.f32(i32 7, float %3885)  ; Saturate(value)
  %3887 = fmul fast float %3886, 0x3FF1C71C80000000
  %3888 = call float @dx.op.binary.f32(i32 36, float %3875, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3889 = fsub fast float 1.000000e+00, %3887
  %3890 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3891 = fmul fast float %3890, %3869
  %3892 = fmul fast float %3890, %3870
  %3893 = fmul fast float %3890, %3871
  %3894 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3895 = call float @dx.op.unary.f32(i32 7, float %3892)  ; Saturate(value)
  %3896 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3897 = fmul fast float %3887, %3869
  %3898 = fmul fast float %3887, %3870
  %3899 = fmul fast float %3887, %3871
  %3900 = fadd fast float %3897, %3888
  %3901 = fadd fast float %3898, %3888
  %3902 = fadd fast float %3899, %3888
  %3903 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3904 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3905 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3906 = call float @dx.op.unary.f32(i32 7, float %3877)  ; Saturate(value)
  %3907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3908 = extractvalue %dx.types.CBufRet.i32 %3907, 3
  %3909 = and i32 %3908, 8
  %3910 = icmp ne i32 %3909, 0
  %3911 = call float @dx.op.binary.f32(i32 35, float %3894, float %3869)  ; FMax(a,b)
  %3912 = call float @dx.op.binary.f32(i32 35, float %3895, float %3869)  ; FMax(a,b)
  %3913 = call float @dx.op.binary.f32(i32 35, float %3896, float %3869)  ; FMax(a,b)
  %3914 = call float @dx.op.dot3.f32(i32 55, float %3894, float %3895, float %3896, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3915 = select i1 %255, float %3869, float %3894
  %3916 = select i1 %255, float %3914, float %3895
  %3917 = select i1 %255, float 1.000000e+00, float %3896
  %3918 = select i1 %3910, float %3911, float %3915
  %3919 = select i1 %3910, float %3912, float %3916
  %3920 = select i1 %3910, float %3913, float %3917
  %3921 = and i32 %231, 3
  %3922 = select i1 %225, i32 %3921, i32 0
  %3923 = icmp eq i32 %3922, 1
  br i1 %3923, label %3924, label %4000

; <label>:3924                                    ; preds = %3865
  %3925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3926 = extractvalue %dx.types.CBufRet.f32 %3925, 0
  %3927 = extractvalue %dx.types.CBufRet.f32 %3925, 1
  %3928 = fadd fast float %3926, %181
  %3929 = fadd fast float %3927, %182
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 0
  %3932 = extractvalue %dx.types.CBufRet.f32 %3930, 1
  %3933 = fsub fast float %3928, %3931
  %3934 = fsub fast float %3929, %3932
  %3935 = fmul fast float %3933, %3933
  %3936 = fmul fast float %3934, %3934
  %3937 = fadd fast float %3935, %3936
  %3938 = call float @dx.op.unary.f32(i32 24, float %3937)  ; Sqrt(value)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3930, 2
  %3940 = fcmp fast olt float %3938, %3939
  br i1 %3940, label %3941, label %3994

; <label>:3941                                    ; preds = %3924
  %3942 = extractvalue %dx.types.CBufRet.f32 %3925, 2
  %3943 = fadd fast float %3942, %183
  %3944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3945 = extractvalue %dx.types.CBufRet.f32 %3944, 0
  %3946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3946, 0
  %3948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.CBufRet.f32 %3944, 1
  %3951 = extractvalue %dx.types.CBufRet.f32 %3946, 1
  %3952 = extractvalue %dx.types.CBufRet.f32 %3948, 1
  %3953 = extractvalue %dx.types.CBufRet.f32 %3944, 3
  %3954 = extractvalue %dx.types.CBufRet.f32 %3946, 3
  %3955 = extractvalue %dx.types.CBufRet.f32 %3948, 3
  %3956 = fadd fast float %3953, %3928
  %3957 = fadd fast float %3954, %3929
  %3958 = fadd fast float %3943, %3955
  %3959 = fmul fast float %3956, %3945
  %3960 = call float @dx.op.tertiary.f32(i32 46, float %3957, float %3947, float %3959)  ; FMad(a,b,c)
  %3961 = call float @dx.op.tertiary.f32(i32 46, float %3958, float %3949, float %3960)  ; FMad(a,b,c)
  %3962 = fmul fast float %3956, %3950
  %3963 = call float @dx.op.tertiary.f32(i32 46, float %3957, float %3951, float %3962)  ; FMad(a,b,c)
  %3964 = call float @dx.op.tertiary.f32(i32 46, float %3958, float %3952, float %3963)  ; FMad(a,b,c)
  %3965 = fsub fast float %3961, %3953
  %3966 = fsub fast float %3964, %3954
  %3967 = fsub fast float %3965, %3931
  %3968 = fadd fast float %3967, %3939
  %3969 = fsub fast float %3966, %3932
  %3970 = fadd fast float %3969, %3939
  %3971 = extractvalue %dx.types.CBufRet.f32 %3930, 3
  %3972 = fmul fast float %3968, %3971
  %3973 = fmul fast float %3970, %3971
  %3974 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3975 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3976 = fsub fast float 1.000000e+00, %3974
  %3977 = fsub fast float 1.000000e+00, %3975
  %3978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %37, float %3976, float %3977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3979 = extractvalue %dx.types.ResRet.f32 %3978, 0
  %3980 = fcmp fast ugt float %3979, 0.000000e+00
  br i1 %3980, label %3981, label %3994

; <label>:3981                                    ; preds = %3941
  %3982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.f32 %3982, 2
  %3984 = fmul fast float %3983, %3979
  %3985 = extractvalue %dx.types.CBufRet.f32 %3982, 3
  %3986 = fadd fast float %3985, %3984
  %3987 = extractvalue %dx.types.CBufRet.f32 %3948, 2
  %3988 = fadd fast float %3986, %3955
  %3989 = fmul fast float %3961, %3949
  %3990 = call float @dx.op.tertiary.f32(i32 46, float %3964, float %3952, float %3989)  ; FMad(a,b,c)
  %3991 = call float @dx.op.tertiary.f32(i32 46, float %3988, float %3987, float %3990)  ; FMad(a,b,c)
  %3992 = fsub fast float %3991, %3955
  %3993 = fsub fast float %3992, %3942
  br label %3994

; <label>:3994                                    ; preds = %3981, %3941, %3924
  %3995 = phi i1 [ true, %3981 ], [ false, %3941 ], [ false, %3924 ]
  %3996 = phi float [ %3993, %3981 ], [ -1.310720e+05, %3941 ], [ -1.310720e+05, %3924 ]
  %3997 = fsub fast float %3996, %183
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = select i1 %3995, float %3998, float 1.000000e+00
  br label %4000

; <label>:4000                                    ; preds = %3994, %3865
  %4001 = phi float [ %3999, %3994 ], [ 0.000000e+00, %3865 ]
  %4002 = icmp eq i32 %3922, 3
  %4003 = select i1 %4002, float 1.000000e+00, float %4001
  %4004 = call float @dx.op.binary.f32(i32 35, float %3881, float %4003)  ; FMax(a,b)
  %4005 = fcmp fast olt float %4003, 1.000000e+00
  %4006 = fcmp uge float %59, 0.000000e+00
  %4007 = and i1 %4006, %4005
  br i1 %4007, label %4008, label %4018

; <label>:4008                                    ; preds = %4000
  %4009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %35, float %59, float %60, float %61, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4010 = extractvalue %dx.types.ResRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.ResRet.f32 %4009, 1
  %4012 = extractvalue %dx.types.ResRet.f32 %4009, 2
  %4013 = fadd fast float %4010, %4004
  %4014 = fcmp ule float %58, 0.000000e+00
  %4015 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4016 = select i1 %4014, float %4015, float 1.000000e+00
  %4017 = fmul fast float %4016, %4012
  br label %4018

; <label>:4018                                    ; preds = %4008, %4000
  %4019 = phi float [ %4013, %4008 ], [ %4004, %4000 ]
  %4020 = phi float [ %4011, %4008 ], [ 0.000000e+00, %4000 ]
  %4021 = phi float [ %4017, %4008 ], [ 0.000000e+00, %4000 ]
  %4022 = call float @dx.op.unary.f32(i32 7, float %4019)  ; Saturate(value)
  %4023 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4024 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4025 = fcmp fast une float %4023, 0.000000e+00
  %4026 = fcmp fast une float %4024, 0.000000e+00
  %4027 = or i1 %4025, %4026
  br i1 %4027, label %4028, label %4587

; <label>:4028                                    ; preds = %4018
  br i1 %4025, label %4029, label %4302

; <label>:4029                                    ; preds = %4028
  %4030 = call float @dx.op.unary.f32(i32 23, float %3878)  ; Log(value)
  %4031 = fmul fast float %4030, 4.000000e+00
  %4032 = call float @dx.op.unary.f32(i32 21, float %4031)  ; Exp(value)
  %4033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4034 = extractvalue %dx.types.CBufRet.f32 %4033, 0
  %4035 = fmul fast float %4034, %46
  %4036 = fmul fast float %4034, %47
  %4037 = fmul fast float %4034, %48
  %4038 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4039 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %4040 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %4041 = call float @dx.op.unary.f32(i32 23, float %4038)  ; Log(value)
  %4042 = call float @dx.op.unary.f32(i32 23, float %4039)  ; Log(value)
  %4043 = call float @dx.op.unary.f32(i32 23, float %4040)  ; Log(value)
  %4044 = fmul fast float %4041, 4.000000e+00
  %4045 = fmul fast float %4042, 4.000000e+00
  %4046 = fmul fast float %4043, 4.000000e+00
  %4047 = call float @dx.op.unary.f32(i32 21, float %4044)  ; Exp(value)
  %4048 = call float @dx.op.unary.f32(i32 21, float %4045)  ; Exp(value)
  %4049 = call float @dx.op.unary.f32(i32 21, float %4046)  ; Exp(value)
  %4050 = fadd fast float %4048, %4047
  %4051 = fadd fast float %4050, %4049
  %4052 = fdiv fast float 1.000000e+00, %4051
  %4053 = fmul fast float %4052, %4047
  %4054 = fcmp fast ogt float %55, 0.000000e+00
  %4055 = fcmp fast ogt float %56, 0.000000e+00
  %4056 = fcmp fast ogt float %57, 0.000000e+00
  %4057 = fcmp fast olt float %55, 0.000000e+00
  %4058 = fcmp fast olt float %56, 0.000000e+00
  %4059 = fcmp fast olt float %57, 0.000000e+00
  %4060 = zext i1 %4054 to i32
  %4061 = zext i1 %4055 to i32
  %4062 = zext i1 %4056 to i32
  %4063 = zext i1 %4057 to i32
  %4064 = zext i1 %4058 to i32
  %4065 = zext i1 %4059 to i32
  %4066 = sub nsw i32 %4060, %4063
  %4067 = sub nsw i32 %4061, %4064
  %4068 = sub nsw i32 %4062, %4065
  %4069 = call float @dx.op.unary.f32(i32 83, float %4035)  ; DerivCoarseX(value)
  %4070 = call float @dx.op.unary.f32(i32 83, float %4036)  ; DerivCoarseX(value)
  %4071 = call float @dx.op.unary.f32(i32 83, float %4037)  ; DerivCoarseX(value)
  %4072 = call float @dx.op.unary.f32(i32 84, float %4035)  ; DerivCoarseY(value)
  %4073 = call float @dx.op.unary.f32(i32 84, float %4036)  ; DerivCoarseY(value)
  %4074 = call float @dx.op.unary.f32(i32 84, float %4037)  ; DerivCoarseY(value)
  %4075 = fcmp fast ole float %266, %4053
  %4076 = fmul fast float %4052, %4050
  %4077 = fcmp fast ole float %266, %4076
  %4078 = select i1 %4077, float %4037, float %4035
  %4079 = select i1 %4077, float %4035, float %4036
  %4080 = select i1 %4075, float %4036, float %4078
  %4081 = select i1 %4075, float %4037, float %4079
  %4082 = select i1 %4077, float %4071, float %4069
  %4083 = select i1 %4077, float %4069, float %4070
  %4084 = select i1 %4075, float %4070, float %4082
  %4085 = select i1 %4075, float %4071, float %4083
  %4086 = select i1 %4077, float %4074, float %4072
  %4087 = select i1 %4077, float %4072, float %4073
  %4088 = select i1 %4075, float %4073, float %4086
  %4089 = select i1 %4075, float %4074, float %4087
  %4090 = call float @dx.op.unary.f32(i32 27, float %4080)  ; Round_ni(value)
  %4091 = call float @dx.op.unary.f32(i32 27, float %4081)  ; Round_ni(value)
  %4092 = fptosi float %4090 to i32
  %4093 = fptosi float %4091 to i32
  %4094 = xor i32 %4093, %4092
  %4095 = sitofp i32 %4094 to float
  %4096 = fptosi float %4095 to i32
  %4097 = sitofp i32 %4096 to float
  %4098 = fmul fast float %4097, 0x3FE3C6EF40000000
  %4099 = frem fast float %4090, 2.560000e+02
  %4100 = frem fast float %4091, 2.560000e+02
  %4101 = fptoui float %4099 to i32
  %4102 = fptoui float %4100 to i32
  %4103 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4101, i32 %4102, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4104 = extractvalue %dx.types.ResRet.f32 %4103, 0
  %4105 = extractvalue %dx.types.ResRet.f32 %4103, 1
  %4106 = extractvalue %dx.types.ResRet.f32 %4103, 2
  %4107 = fadd fast float %4104, %4098
  %4108 = fadd fast float %4105, %4098
  %4109 = fadd fast float %4106, %4098
  %4110 = call float @dx.op.unary.f32(i32 22, float %4107)  ; Frc(value)
  %4111 = call float @dx.op.unary.f32(i32 22, float %4108)  ; Frc(value)
  %4112 = call float @dx.op.unary.f32(i32 22, float %4109)  ; Frc(value)
  %4113 = fmul fast float %4112, 0x401921FB60000000
  %4114 = call float @dx.op.unary.f32(i32 13, float %4113)  ; Sin(value)
  %4115 = call float @dx.op.unary.f32(i32 12, float %4113)  ; Cos(value)
  %4116 = fsub fast float -0.000000e+00, %4115
  %4117 = fmul fast float %4115, %4080
  %4118 = call float @dx.op.tertiary.f32(i32 46, float %4114, float %4081, float %4117)  ; FMad(a,b,c)
  %4119 = fmul fast float %4114, %4080
  %4120 = call float @dx.op.tertiary.f32(i32 46, float %4116, float %4081, float %4119)  ; FMad(a,b,c)
  %4121 = fadd fast float %4118, %4110
  %4122 = fadd fast float %4120, %4111
  %4123 = extractvalue %dx.types.CBufRet.f32 %4033, 3
  %4124 = bitcast float %4123 to i32
  %4125 = icmp eq i32 %4124, 0
  br i1 %4125, label %4164, label %4126

; <label>:4126                                    ; preds = %4029
  %4127 = add i32 %4124, 0
  %4128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4127, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4129 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4128, %dx.types.Handle %91, float %4121, float %4122, float undef, float undef, i32 0, i32 0, i32 undef, float %4084, float %4085, float undef, float %4088, float %4089, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4130 = extractvalue %dx.types.ResRet.f32 %4129, 0
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 1
  %4133 = extractvalue %dx.types.CBufRet.f32 %4131, 2
  %4134 = fsub fast float 1.000000e+00, %4023
  %4135 = call float @dx.op.binary.f32(i32 35, float %4134, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4136 = bitcast float %4023 to i32
  %4137 = sitofp i32 %4136 to float
  %4138 = fadd fast float %4137, 0xC1CFBF8940000000
  %4139 = fmul fast float %4133, %4138
  %4140 = fadd fast float %4139, 0x41CFBF8940000000
  %4141 = fptosi float %4140 to i32
  %4142 = bitcast i32 %4141 to float
  %4143 = bitcast float %4135 to i32
  %4144 = sitofp i32 %4143 to float
  %4145 = fadd fast float %4144, 0xC1CFBF8940000000
  %4146 = fmul fast float %4145, %4133
  %4147 = fadd fast float %4146, 0x41CFBF8940000000
  %4148 = fptosi float %4147 to i32
  %4149 = bitcast i32 %4148 to float
  %4150 = fmul fast float %4142, %4132
  %4151 = fmul fast float %4149, %4132
  %4152 = fsub fast float %4135, %4150
  %4153 = fadd fast float %4151, %4135
  %4154 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4155 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4156 = fsub fast float %4130, %4154
  %4157 = fsub fast float %4155, %4154
  %4158 = bitcast float %4157 to i32
  %4159 = sub nsw i32 2129859010, %4158
  %4160 = bitcast i32 %4159 to float
  %4161 = fmul fast float %4160, %4156
  %4162 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4163 = fcmp fast olt float %4162, 0x3F70101020000000
  br i1 %4163, label %4302, label %4164

; <label>:4164                                    ; preds = %4126, %4029
  %4165 = phi float [ %4162, %4126 ], [ %4023, %4029 ]
  %4166 = fmul fast float %4165, %4032
  %4167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.i32 %4167, 1
  %4169 = extractvalue %dx.types.CBufRet.i32 %4167, 0
  %4170 = add i32 %4169, 0
  %4171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4172 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4171, %dx.types.Handle %90, float %4121, float %4122, float undef, float undef, i32 0, i32 0, i32 undef, float %4084, float %4085, float undef, float %4088, float %4089, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.ResRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.ResRet.f32 %4172, 2
  %4176 = extractvalue %dx.types.ResRet.f32 %4172, 3
  %4177 = and i32 %4168, 255
  %4178 = uitofp i32 %4177 to float
  %4179 = lshr i32 %4168, 8
  %4180 = and i32 %4179, 255
  %4181 = uitofp i32 %4180 to float
  %4182 = fmul fast float %4176, %4178
  %4183 = fadd fast float %4182, %4181
  %4184 = fmul fast float %4183, 0x3F70101000000000
  %4185 = fadd fast float %4184, 0xBFB99999A0000000
  %4186 = call float @dx.op.unary.f32(i32 7, float %4185)  ; Saturate(value)
  %4187 = fmul fast float %4186, 0x3FF1C71C80000000
  %4188 = call float @dx.op.binary.f32(i32 36, float %4184, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4189 = fsub fast float 1.000000e+00, %4187
  %4190 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  %4191 = fmul fast float %4190, %4173
  %4192 = fmul fast float %4190, %4174
  %4193 = fmul fast float %4190, %4175
  %4194 = call float @dx.op.unary.f32(i32 7, float %4191)  ; Saturate(value)
  %4195 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  %4196 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4197 = fmul fast float %4187, %4173
  %4198 = fmul fast float %4187, %4174
  %4199 = fmul fast float %4187, %4175
  %4200 = fadd fast float %4197, %4188
  %4201 = fadd fast float %4198, %4188
  %4202 = fadd fast float %4199, %4188
  %4203 = call float @dx.op.unary.f32(i32 7, float %4200)  ; Saturate(value)
  %4204 = call float @dx.op.unary.f32(i32 7, float %4201)  ; Saturate(value)
  %4205 = call float @dx.op.unary.f32(i32 7, float %4202)  ; Saturate(value)
  %4206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.i32 %4206, 3
  %4208 = extractvalue %dx.types.CBufRet.i32 %4206, 2
  %4209 = add i32 %4208, 0
  %4210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4209, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4211 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4210, %dx.types.Handle %90, float %4121, float %4122, float undef, float undef, i32 0, i32 0, i32 undef, float %4084, float %4085, float undef, float %4088, float %4089, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4212 = extractvalue %dx.types.ResRet.f32 %4211, 0
  %4213 = extractvalue %dx.types.ResRet.f32 %4211, 1
  %4214 = extractvalue %dx.types.ResRet.f32 %4211, 2
  %4215 = extractvalue %dx.types.ResRet.f32 %4211, 3
  %4216 = and i32 %4207, 255
  %4217 = uitofp i32 %4216 to float
  %4218 = lshr i32 %4207, 8
  %4219 = and i32 %4218, 255
  %4220 = uitofp i32 %4219 to float
  %4221 = lshr i32 %4207, 16
  %4222 = and i32 %4221, 255
  %4223 = uitofp i32 %4222 to float
  %4224 = fmul fast float %4223, 0x3F70101000000000
  %4225 = fmul fast float %4212, %4217
  %4226 = fadd fast float %4225, %4220
  %4227 = fmul fast float %4226, 0x3F70101000000000
  %4228 = fadd fast float %4213, -5.000000e-01
  %4229 = fadd fast float %4215, -5.000000e-01
  %4230 = fmul fast float %4228, %4224
  %4231 = fmul fast float %4229, %4224
  %4232 = fadd fast float %4230, 5.000000e-01
  %4233 = fadd fast float %4231, 5.000000e-01
  %4234 = fmul fast float %4232, 2.000000e+00
  %4235 = fadd fast float %4234, -1.000000e+00
  %4236 = fmul fast float %4233, 2.000000e+00
  %4237 = fadd fast float %4236, -1.000000e+00
  %4238 = fadd fast float %4235, %4237
  %4239 = fmul fast float %4238, 5.000000e-01
  %4240 = fsub fast float %4235, %4237
  %4241 = fmul fast float %4240, 5.000000e-01
  %4242 = call float @dx.op.unary.f32(i32 6, float %4239)  ; FAbs(value)
  %4243 = fsub fast float 1.000000e+00, %4242
  %4244 = call float @dx.op.unary.f32(i32 6, float %4241)  ; FAbs(value)
  %4245 = fsub fast float %4243, %4244
  %4246 = call float @dx.op.dot3.f32(i32 55, float %4239, float %4241, float %4245, float %4239, float %4241, float %4245)  ; Dot3(ax,ay,az,bx,by,bz)
  %4247 = call float @dx.op.unary.f32(i32 25, float %4246)  ; Rsqrt(value)
  %4248 = fmul fast float %4239, %4247
  %4249 = fmul fast float %4241, %4247
  %4250 = select i1 %4077, i32 %4067, i32 %4068
  %4251 = select i1 %4075, i32 %4066, i32 %4250
  %4252 = sitofp i32 %4251 to float
  %4253 = fmul fast float %4245, %4252
  %4254 = fmul fast float %4253, %4247
  %4255 = select i1 %4077, float %4254, float %4249
  %4256 = select i1 %4077, float %4249, float %4254
  %4257 = select i1 %4075, float %4254, float %4248
  %4258 = select i1 %4075, float %4249, float %4255
  %4259 = select i1 %4075, float %4248, float %4256
  %4260 = fsub fast float %4194, %3918
  %4261 = fsub fast float %4195, %3919
  %4262 = fsub fast float %4196, %3920
  %4263 = fmul fast float %4260, %4166
  %4264 = fmul fast float %4261, %4166
  %4265 = fmul fast float %4262, %4166
  %4266 = fadd fast float %4263, %3918
  %4267 = fadd fast float %4264, %3919
  %4268 = fadd fast float %4265, %3920
  %4269 = fsub fast float %4203, %3903
  %4270 = fsub fast float %4204, %3904
  %4271 = fsub fast float %4205, %3905
  %4272 = fmul fast float %4269, %4166
  %4273 = fmul fast float %4270, %4166
  %4274 = fmul fast float %4271, %4166
  %4275 = fadd fast float %4272, %3903
  %4276 = fadd fast float %4273, %3904
  %4277 = fadd fast float %4274, %3905
  %4278 = fadd fast float %4257, %3866
  %4279 = fadd fast float %4258, %3867
  %4280 = fadd fast float %4259, %3868
  %4281 = call float @dx.op.dot3.f32(i32 55, float %4278, float %4279, float %4280, float %4278, float %4279, float %4280)  ; Dot3(ax,ay,az,bx,by,bz)
  %4282 = call float @dx.op.unary.f32(i32 25, float %4281)  ; Rsqrt(value)
  %4283 = fmul fast float %4278, %4282
  %4284 = fmul fast float %4279, %4282
  %4285 = fmul fast float %4280, %4282
  %4286 = fsub fast float %4283, %3866
  %4287 = fsub fast float %4284, %3867
  %4288 = fsub fast float %4285, %3868
  %4289 = fmul fast float %4286, %4166
  %4290 = fmul fast float %4287, %4166
  %4291 = fmul fast float %4288, %4166
  %4292 = fadd fast float %4289, %3866
  %4293 = fadd fast float %4290, %3867
  %4294 = fadd fast float %4291, %3868
  %4295 = call float @dx.op.binary.f32(i32 36, float %3878, float %4214)  ; FMin(a,b)
  %4296 = fsub fast float %4295, %3878
  %4297 = fmul fast float %4296, %4166
  %4298 = fadd fast float %4297, %3878
  %4299 = fsub fast float %4227, %3906
  %4300 = fmul fast float %4299, %4166
  %4301 = fadd fast float %4300, %3906
  br label %4302

; <label>:4302                                    ; preds = %4164, %4126, %4028
  %4303 = phi float [ %4266, %4164 ], [ %3918, %4126 ], [ %3918, %4028 ]
  %4304 = phi float [ %4267, %4164 ], [ %3919, %4126 ], [ %3919, %4028 ]
  %4305 = phi float [ %4268, %4164 ], [ %3920, %4126 ], [ %3920, %4028 ]
  %4306 = phi float [ %4292, %4164 ], [ %3866, %4126 ], [ %3866, %4028 ]
  %4307 = phi float [ %4293, %4164 ], [ %3867, %4126 ], [ %3867, %4028 ]
  %4308 = phi float [ %4294, %4164 ], [ %3868, %4126 ], [ %3868, %4028 ]
  %4309 = phi float [ %4275, %4164 ], [ %3903, %4126 ], [ %3903, %4028 ]
  %4310 = phi float [ %4276, %4164 ], [ %3904, %4126 ], [ %3904, %4028 ]
  %4311 = phi float [ %4277, %4164 ], [ %3905, %4126 ], [ %3905, %4028 ]
  %4312 = phi float [ %4301, %4164 ], [ %3906, %4126 ], [ %3906, %4028 ]
  %4313 = phi float [ %4298, %4164 ], [ %3878, %4126 ], [ %3878, %4028 ]
  br i1 %4026, label %4314, label %4587

; <label>:4314                                    ; preds = %4302
  %4315 = call float @dx.op.unary.f32(i32 23, float %4313)  ; Log(value)
  %4316 = fmul fast float %4315, 4.000000e+00
  %4317 = call float @dx.op.unary.f32(i32 21, float %4316)  ; Exp(value)
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 0
  %4320 = fmul fast float %4319, %46
  %4321 = fmul fast float %4319, %47
  %4322 = fmul fast float %4319, %48
  %4323 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4324 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %4325 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %4326 = call float @dx.op.unary.f32(i32 23, float %4323)  ; Log(value)
  %4327 = call float @dx.op.unary.f32(i32 23, float %4324)  ; Log(value)
  %4328 = call float @dx.op.unary.f32(i32 23, float %4325)  ; Log(value)
  %4329 = fmul fast float %4326, 4.000000e+00
  %4330 = fmul fast float %4327, 4.000000e+00
  %4331 = fmul fast float %4328, 4.000000e+00
  %4332 = call float @dx.op.unary.f32(i32 21, float %4329)  ; Exp(value)
  %4333 = call float @dx.op.unary.f32(i32 21, float %4330)  ; Exp(value)
  %4334 = call float @dx.op.unary.f32(i32 21, float %4331)  ; Exp(value)
  %4335 = fadd fast float %4333, %4332
  %4336 = fadd fast float %4335, %4334
  %4337 = fdiv fast float 1.000000e+00, %4336
  %4338 = fmul fast float %4337, %4332
  %4339 = fcmp fast ogt float %55, 0.000000e+00
  %4340 = fcmp fast ogt float %56, 0.000000e+00
  %4341 = fcmp fast ogt float %57, 0.000000e+00
  %4342 = fcmp fast olt float %55, 0.000000e+00
  %4343 = fcmp fast olt float %56, 0.000000e+00
  %4344 = fcmp fast olt float %57, 0.000000e+00
  %4345 = zext i1 %4339 to i32
  %4346 = zext i1 %4340 to i32
  %4347 = zext i1 %4341 to i32
  %4348 = zext i1 %4342 to i32
  %4349 = zext i1 %4343 to i32
  %4350 = zext i1 %4344 to i32
  %4351 = sub nsw i32 %4345, %4348
  %4352 = sub nsw i32 %4346, %4349
  %4353 = sub nsw i32 %4347, %4350
  %4354 = call float @dx.op.unary.f32(i32 83, float %4320)  ; DerivCoarseX(value)
  %4355 = call float @dx.op.unary.f32(i32 83, float %4321)  ; DerivCoarseX(value)
  %4356 = call float @dx.op.unary.f32(i32 83, float %4322)  ; DerivCoarseX(value)
  %4357 = call float @dx.op.unary.f32(i32 84, float %4320)  ; DerivCoarseY(value)
  %4358 = call float @dx.op.unary.f32(i32 84, float %4321)  ; DerivCoarseY(value)
  %4359 = call float @dx.op.unary.f32(i32 84, float %4322)  ; DerivCoarseY(value)
  %4360 = fcmp fast ole float %266, %4338
  %4361 = fmul fast float %4337, %4335
  %4362 = fcmp fast ole float %266, %4361
  %4363 = select i1 %4362, float %4322, float %4320
  %4364 = select i1 %4362, float %4320, float %4321
  %4365 = select i1 %4360, float %4321, float %4363
  %4366 = select i1 %4360, float %4322, float %4364
  %4367 = select i1 %4362, float %4356, float %4354
  %4368 = select i1 %4362, float %4354, float %4355
  %4369 = select i1 %4360, float %4355, float %4367
  %4370 = select i1 %4360, float %4356, float %4368
  %4371 = select i1 %4362, float %4359, float %4357
  %4372 = select i1 %4362, float %4357, float %4358
  %4373 = select i1 %4360, float %4358, float %4371
  %4374 = select i1 %4360, float %4359, float %4372
  %4375 = call float @dx.op.unary.f32(i32 27, float %4365)  ; Round_ni(value)
  %4376 = call float @dx.op.unary.f32(i32 27, float %4366)  ; Round_ni(value)
  %4377 = fptosi float %4375 to i32
  %4378 = fptosi float %4376 to i32
  %4379 = xor i32 %4378, %4377
  %4380 = sitofp i32 %4379 to float
  %4381 = fptosi float %4380 to i32
  %4382 = sitofp i32 %4381 to float
  %4383 = fmul fast float %4382, 0x3FE3C6EF40000000
  %4384 = frem fast float %4375, 2.560000e+02
  %4385 = frem fast float %4376, 2.560000e+02
  %4386 = fptoui float %4384 to i32
  %4387 = fptoui float %4385 to i32
  %4388 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4386, i32 %4387, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.ResRet.f32 %4388, 1
  %4391 = extractvalue %dx.types.ResRet.f32 %4388, 2
  %4392 = fadd fast float %4389, %4383
  %4393 = fadd fast float %4390, %4383
  %4394 = fadd fast float %4391, %4383
  %4395 = call float @dx.op.unary.f32(i32 22, float %4392)  ; Frc(value)
  %4396 = call float @dx.op.unary.f32(i32 22, float %4393)  ; Frc(value)
  %4397 = call float @dx.op.unary.f32(i32 22, float %4394)  ; Frc(value)
  %4398 = fmul fast float %4397, 0x401921FB60000000
  %4399 = call float @dx.op.unary.f32(i32 13, float %4398)  ; Sin(value)
  %4400 = call float @dx.op.unary.f32(i32 12, float %4398)  ; Cos(value)
  %4401 = fsub fast float -0.000000e+00, %4400
  %4402 = fmul fast float %4400, %4365
  %4403 = call float @dx.op.tertiary.f32(i32 46, float %4399, float %4366, float %4402)  ; FMad(a,b,c)
  %4404 = fmul fast float %4399, %4365
  %4405 = call float @dx.op.tertiary.f32(i32 46, float %4401, float %4366, float %4404)  ; FMad(a,b,c)
  %4406 = fadd fast float %4403, %4395
  %4407 = fadd fast float %4405, %4396
  %4408 = extractvalue %dx.types.CBufRet.f32 %4318, 3
  %4409 = bitcast float %4408 to i32
  %4410 = icmp eq i32 %4409, 0
  br i1 %4410, label %4449, label %4411

; <label>:4411                                    ; preds = %4314
  %4412 = add i32 %4409, 0
  %4413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4414 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4413, %dx.types.Handle %91, float %4406, float %4407, float undef, float undef, i32 0, i32 0, i32 undef, float %4369, float %4370, float undef, float %4373, float %4374, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4415 = extractvalue %dx.types.ResRet.f32 %4414, 0
  %4416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4417 = extractvalue %dx.types.CBufRet.f32 %4416, 1
  %4418 = extractvalue %dx.types.CBufRet.f32 %4416, 2
  %4419 = fsub fast float 1.000000e+00, %4024
  %4420 = call float @dx.op.binary.f32(i32 35, float %4419, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4421 = bitcast float %4024 to i32
  %4422 = sitofp i32 %4421 to float
  %4423 = fadd fast float %4422, 0xC1CFBF8940000000
  %4424 = fmul fast float %4418, %4423
  %4425 = fadd fast float %4424, 0x41CFBF8940000000
  %4426 = fptosi float %4425 to i32
  %4427 = bitcast i32 %4426 to float
  %4428 = bitcast float %4420 to i32
  %4429 = sitofp i32 %4428 to float
  %4430 = fadd fast float %4429, 0xC1CFBF8940000000
  %4431 = fmul fast float %4430, %4418
  %4432 = fadd fast float %4431, 0x41CFBF8940000000
  %4433 = fptosi float %4432 to i32
  %4434 = bitcast i32 %4433 to float
  %4435 = fmul fast float %4427, %4417
  %4436 = fmul fast float %4434, %4417
  %4437 = fsub fast float %4420, %4435
  %4438 = fadd fast float %4436, %4420
  %4439 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4440 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4441 = fsub fast float %4415, %4439
  %4442 = fsub fast float %4440, %4439
  %4443 = bitcast float %4442 to i32
  %4444 = sub nsw i32 2129859010, %4443
  %4445 = bitcast i32 %4444 to float
  %4446 = fmul fast float %4445, %4441
  %4447 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4448 = fcmp fast olt float %4447, 0x3F70101020000000
  br i1 %4448, label %4587, label %4449

; <label>:4449                                    ; preds = %4411, %4314
  %4450 = phi float [ %4447, %4411 ], [ %4024, %4314 ]
  %4451 = fmul fast float %4450, %4317
  %4452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.i32 %4452, 1
  %4454 = extractvalue %dx.types.CBufRet.i32 %4452, 0
  %4455 = add i32 %4454, 0
  %4456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4455, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4457 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4456, %dx.types.Handle %90, float %4406, float %4407, float undef, float undef, i32 0, i32 0, i32 undef, float %4369, float %4370, float undef, float %4373, float %4374, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4458 = extractvalue %dx.types.ResRet.f32 %4457, 0
  %4459 = extractvalue %dx.types.ResRet.f32 %4457, 1
  %4460 = extractvalue %dx.types.ResRet.f32 %4457, 2
  %4461 = extractvalue %dx.types.ResRet.f32 %4457, 3
  %4462 = and i32 %4453, 255
  %4463 = uitofp i32 %4462 to float
  %4464 = lshr i32 %4453, 8
  %4465 = and i32 %4464, 255
  %4466 = uitofp i32 %4465 to float
  %4467 = fmul fast float %4461, %4463
  %4468 = fadd fast float %4467, %4466
  %4469 = fmul fast float %4468, 0x3F70101000000000
  %4470 = fadd fast float %4469, 0xBFB99999A0000000
  %4471 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4472 = fmul fast float %4471, 0x3FF1C71C80000000
  %4473 = call float @dx.op.binary.f32(i32 36, float %4469, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4474 = fsub fast float 1.000000e+00, %4472
  %4475 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4476 = fmul fast float %4475, %4458
  %4477 = fmul fast float %4475, %4459
  %4478 = fmul fast float %4475, %4460
  %4479 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4480 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4481 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4482 = fmul fast float %4472, %4458
  %4483 = fmul fast float %4472, %4459
  %4484 = fmul fast float %4472, %4460
  %4485 = fadd fast float %4482, %4473
  %4486 = fadd fast float %4483, %4473
  %4487 = fadd fast float %4484, %4473
  %4488 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4489 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4490 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.i32 %4491, 3
  %4493 = extractvalue %dx.types.CBufRet.i32 %4491, 2
  %4494 = add i32 %4493, 0
  %4495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4496 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4495, %dx.types.Handle %90, float %4406, float %4407, float undef, float undef, i32 0, i32 0, i32 undef, float %4369, float %4370, float undef, float %4373, float %4374, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4497 = extractvalue %dx.types.ResRet.f32 %4496, 0
  %4498 = extractvalue %dx.types.ResRet.f32 %4496, 1
  %4499 = extractvalue %dx.types.ResRet.f32 %4496, 2
  %4500 = extractvalue %dx.types.ResRet.f32 %4496, 3
  %4501 = and i32 %4492, 255
  %4502 = uitofp i32 %4501 to float
  %4503 = lshr i32 %4492, 8
  %4504 = and i32 %4503, 255
  %4505 = uitofp i32 %4504 to float
  %4506 = lshr i32 %4492, 16
  %4507 = and i32 %4506, 255
  %4508 = uitofp i32 %4507 to float
  %4509 = fmul fast float %4508, 0x3F70101000000000
  %4510 = fmul fast float %4497, %4502
  %4511 = fadd fast float %4510, %4505
  %4512 = fmul fast float %4511, 0x3F70101000000000
  %4513 = fadd fast float %4498, -5.000000e-01
  %4514 = fadd fast float %4500, -5.000000e-01
  %4515 = fmul fast float %4513, %4509
  %4516 = fmul fast float %4514, %4509
  %4517 = fadd fast float %4515, 5.000000e-01
  %4518 = fadd fast float %4516, 5.000000e-01
  %4519 = fmul fast float %4517, 2.000000e+00
  %4520 = fadd fast float %4519, -1.000000e+00
  %4521 = fmul fast float %4518, 2.000000e+00
  %4522 = fadd fast float %4521, -1.000000e+00
  %4523 = fadd fast float %4520, %4522
  %4524 = fmul fast float %4523, 5.000000e-01
  %4525 = fsub fast float %4520, %4522
  %4526 = fmul fast float %4525, 5.000000e-01
  %4527 = call float @dx.op.unary.f32(i32 6, float %4524)  ; FAbs(value)
  %4528 = fsub fast float 1.000000e+00, %4527
  %4529 = call float @dx.op.unary.f32(i32 6, float %4526)  ; FAbs(value)
  %4530 = fsub fast float %4528, %4529
  %4531 = call float @dx.op.dot3.f32(i32 55, float %4524, float %4526, float %4530, float %4524, float %4526, float %4530)  ; Dot3(ax,ay,az,bx,by,bz)
  %4532 = call float @dx.op.unary.f32(i32 25, float %4531)  ; Rsqrt(value)
  %4533 = fmul fast float %4524, %4532
  %4534 = fmul fast float %4526, %4532
  %4535 = select i1 %4362, i32 %4352, i32 %4353
  %4536 = select i1 %4360, i32 %4351, i32 %4535
  %4537 = sitofp i32 %4536 to float
  %4538 = fmul fast float %4530, %4537
  %4539 = fmul fast float %4538, %4532
  %4540 = select i1 %4362, float %4539, float %4534
  %4541 = select i1 %4362, float %4534, float %4539
  %4542 = select i1 %4360, float %4539, float %4533
  %4543 = select i1 %4360, float %4534, float %4540
  %4544 = select i1 %4360, float %4533, float %4541
  %4545 = fsub fast float %4479, %4303
  %4546 = fsub fast float %4480, %4304
  %4547 = fsub fast float %4481, %4305
  %4548 = fmul fast float %4545, %4451
  %4549 = fmul fast float %4546, %4451
  %4550 = fmul fast float %4547, %4451
  %4551 = fadd fast float %4548, %4303
  %4552 = fadd fast float %4549, %4304
  %4553 = fadd fast float %4550, %4305
  %4554 = fsub fast float %4488, %4309
  %4555 = fsub fast float %4489, %4310
  %4556 = fsub fast float %4490, %4311
  %4557 = fmul fast float %4554, %4451
  %4558 = fmul fast float %4555, %4451
  %4559 = fmul fast float %4556, %4451
  %4560 = fadd fast float %4557, %4309
  %4561 = fadd fast float %4558, %4310
  %4562 = fadd fast float %4559, %4311
  %4563 = fadd fast float %4542, %4306
  %4564 = fadd fast float %4543, %4307
  %4565 = fadd fast float %4544, %4308
  %4566 = call float @dx.op.dot3.f32(i32 55, float %4563, float %4564, float %4565, float %4563, float %4564, float %4565)  ; Dot3(ax,ay,az,bx,by,bz)
  %4567 = call float @dx.op.unary.f32(i32 25, float %4566)  ; Rsqrt(value)
  %4568 = fmul fast float %4563, %4567
  %4569 = fmul fast float %4564, %4567
  %4570 = fmul fast float %4565, %4567
  %4571 = fsub fast float %4568, %4306
  %4572 = fsub fast float %4569, %4307
  %4573 = fsub fast float %4570, %4308
  %4574 = fmul fast float %4571, %4451
  %4575 = fmul fast float %4572, %4451
  %4576 = fmul fast float %4573, %4451
  %4577 = fadd fast float %4574, %4306
  %4578 = fadd fast float %4575, %4307
  %4579 = fadd fast float %4576, %4308
  %4580 = call float @dx.op.binary.f32(i32 36, float %4313, float %4499)  ; FMin(a,b)
  %4581 = fsub fast float %4580, %4313
  %4582 = fmul fast float %4581, %4451
  %4583 = fadd fast float %4582, %4313
  %4584 = fsub fast float %4512, %4312
  %4585 = fmul fast float %4584, %4451
  %4586 = fadd fast float %4585, %4312
  br label %4587

; <label>:4587                                    ; preds = %4449, %4411, %4302, %4018
  %4588 = phi float [ %4551, %4449 ], [ %4303, %4411 ], [ %4303, %4302 ], [ %3918, %4018 ]
  %4589 = phi float [ %4552, %4449 ], [ %4304, %4411 ], [ %4304, %4302 ], [ %3919, %4018 ]
  %4590 = phi float [ %4553, %4449 ], [ %4305, %4411 ], [ %4305, %4302 ], [ %3920, %4018 ]
  %4591 = phi float [ %4577, %4449 ], [ %4306, %4411 ], [ %4306, %4302 ], [ %3866, %4018 ]
  %4592 = phi float [ %4578, %4449 ], [ %4307, %4411 ], [ %4307, %4302 ], [ %3867, %4018 ]
  %4593 = phi float [ %4579, %4449 ], [ %4308, %4411 ], [ %4308, %4302 ], [ %3868, %4018 ]
  %4594 = phi float [ %4560, %4449 ], [ %4309, %4411 ], [ %4309, %4302 ], [ %3903, %4018 ]
  %4595 = phi float [ %4561, %4449 ], [ %4310, %4411 ], [ %4310, %4302 ], [ %3904, %4018 ]
  %4596 = phi float [ %4562, %4449 ], [ %4311, %4411 ], [ %4311, %4302 ], [ %3905, %4018 ]
  %4597 = phi float [ %4586, %4449 ], [ %4312, %4411 ], [ %4312, %4302 ], [ %3906, %4018 ]
  %4598 = phi float [ %4583, %4449 ], [ %4313, %4411 ], [ %4313, %4302 ], [ %3878, %4018 ]
  %4599 = fcmp fast une float %4022, 0.000000e+00
  %4600 = call float @dx.op.dot3.f32(i32 55, float %181, float %182, float %183, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %4601 = call float @dx.op.unary.f32(i32 25, float %4600)  ; Rsqrt(value)
  br i1 %4599, label %4609, label %4602

; <label>:4602                                    ; preds = %4587
  %4603 = fmul fast float %4601, %181
  %4604 = fmul fast float %4601, %182
  %4605 = fmul fast float %4601, %183
  %4606 = fsub fast float -0.000000e+00, %4603
  %4607 = fsub fast float -0.000000e+00, %4604
  %4608 = fsub fast float -0.000000e+00, %4605
  br label %4776

; <label>:4609                                    ; preds = %4587
  %4610 = fmul fast float %181, %4601
  %4611 = fsub fast float -0.000000e+00, %4610
  %4612 = fmul fast float %182, %4601
  %4613 = fsub fast float -0.000000e+00, %4612
  %4614 = fmul fast float %183, %4601
  %4615 = fsub fast float -0.000000e+00, %4614
  %4616 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4613, float %4615, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4617 = fmul fast float %4022, 2.500000e+00
  %4618 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4619 = fmul fast float %4022, 0x4013FFFFE0000000
  %4620 = fadd fast float %4619, 0xBFFFFFFFE0000000
  %4621 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4622 = fmul fast float %4022, 0x4004000020000000
  %4623 = fadd fast float %4622, 0xBFF8000040000000
  %4624 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4625 = fmul fast float %3885, 1.000000e+01
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = fmul fast float %4626, 2.000000e+00
  %4628 = fsub fast float 3.000000e+00, %4627
  %4629 = fmul fast float %4626, %4626
  %4630 = fmul fast float %4629, %4628
  %4631 = fsub fast float 1.000000e+00, %4630
  %4632 = fsub fast float 0x3FE3333340000000, %4597
  %4633 = fmul fast float %4632, 0x400AAAAAA0000000
  %4634 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4635 = fmul fast float %4631, %4634
  %4636 = fmul fast float %4588, 0x3FEA2B8620000000
  %4637 = fmul fast float %4589, 0x3FEA2B8620000000
  %4638 = fmul fast float %4590, 0x3FEA2B8620000000
  %4639 = fadd fast float %4636, 0x3FC81DFBA0000000
  %4640 = fmul fast float %4639, %4588
  %4641 = fadd fast float %4640, 0x3F910E6020000000
  %4642 = fadd fast float %4637, 0x3FC81DFBA0000000
  %4643 = fmul fast float %4642, %4589
  %4644 = fadd fast float %4643, 0x3F910E6020000000
  %4645 = fadd fast float %4638, 0x3FC81DFBA0000000
  %4646 = fmul fast float %4645, %4590
  %4647 = fadd fast float %4646, 0x3F910E6020000000
  %4648 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4649 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4650 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4651 = fsub fast float %4648, %4588
  %4652 = fsub fast float %4649, %4589
  %4653 = fsub fast float %4650, %4590
  %4654 = fmul fast float %4651, %4618
  %4655 = fmul fast float %4654, %4635
  %4656 = fmul fast float %4652, %4618
  %4657 = fmul fast float %4656, %4635
  %4658 = fmul fast float %4653, %4618
  %4659 = fmul fast float %4658, %4635
  %4660 = fadd fast float %4655, %4588
  %4661 = fadd fast float %4657, %4589
  %4662 = fadd fast float %4659, %4590
  %4663 = fmul fast float %4598, %4598
  %4664 = fmul fast float %4663, %4663
  %4665 = fadd fast float %4621, 1.000000e+00
  %4666 = fsub fast float %4665, %4635
  %4667 = call float @dx.op.unary.f32(i32 7, float %4666)  ; Saturate(value)
  %4668 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4670 = fsub fast float 1.000000e+00, %4664
  %4671 = call float @dx.op.binary.f32(i32 36, float %4667, float %4670)  ; FMin(a,b)
  %4672 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  %4673 = call float @dx.op.binary.f32(i32 35, float %4671, float %4672)  ; FMax(a,b)
  %4674 = fadd fast float %4669, 0xBFE4CCCCC0000000
  %4675 = fmul fast float %4674, 0x4006DB6DA0000000
  %4676 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4677 = fmul fast float %4676, 2.000000e+00
  %4678 = fsub fast float 3.000000e+00, %4677
  %4679 = bitcast float %4594 to i32
  %4680 = ashr i32 %4679, 1
  %4681 = add nsw i32 %4680, 532487669
  %4682 = bitcast i32 %4681 to float
  %4683 = fsub fast float 1.000000e+00, %4682
  %4684 = bitcast float %4683 to i32
  %4685 = sub nsw i32 2129859010, %4684
  %4686 = bitcast i32 %4685 to float
  %4687 = fmul fast float %4686, 2.000000e+00
  %4688 = bitcast float %4595 to i32
  %4689 = ashr i32 %4688, 1
  %4690 = add nsw i32 %4689, 532487669
  %4691 = bitcast i32 %4690 to float
  %4692 = fsub fast float 1.000000e+00, %4691
  %4693 = bitcast float %4692 to i32
  %4694 = sub nsw i32 2129859010, %4693
  %4695 = bitcast i32 %4694 to float
  %4696 = fmul fast float %4695, 2.000000e+00
  %4697 = bitcast float %4596 to i32
  %4698 = ashr i32 %4697, 1
  %4699 = add nsw i32 %4698, 532487669
  %4700 = bitcast i32 %4699 to float
  %4701 = fsub fast float 1.000000e+00, %4700
  %4702 = bitcast float %4701 to i32
  %4703 = sub nsw i32 2129859010, %4702
  %4704 = bitcast i32 %4703 to float
  %4705 = fmul fast float %4704, 2.000000e+00
  %4706 = fsub fast float 0x4002A9FBE0000000, %4687
  %4707 = fadd fast float %4687, 0x3FD54FDF00000000
  %4708 = bitcast float %4707 to i32
  %4709 = sub nsw i32 2129859010, %4708
  %4710 = bitcast i32 %4709 to float
  %4711 = fmul fast float %4710, %4706
  %4712 = fmul fast float %4711, %4711
  %4713 = fsub fast float 0x4002A9FBE0000000, %4696
  %4714 = fadd fast float %4696, 0x3FD54FDF00000000
  %4715 = bitcast float %4714 to i32
  %4716 = sub nsw i32 2129859010, %4715
  %4717 = bitcast i32 %4716 to float
  %4718 = fmul fast float %4717, %4713
  %4719 = fmul fast float %4718, %4718
  %4720 = fsub fast float 0x4002A9FBE0000000, %4705
  %4721 = fadd fast float %4705, 0x3FD54FDF00000000
  %4722 = bitcast float %4721 to i32
  %4723 = sub nsw i32 2129859010, %4722
  %4724 = bitcast i32 %4723 to float
  %4725 = fmul fast float %4724, %4720
  %4726 = fmul fast float %4725, %4725
  %4727 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4712)  ; FMax(a,b)
  %4728 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4719)  ; FMax(a,b)
  %4729 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4726)  ; FMax(a,b)
  %4730 = fsub fast float 1.000000e+00, %4616
  %4731 = fadd fast float %4730, %4631
  %4732 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4733 = fsub fast float 1.000000e+00, %4003
  %4734 = fmul fast float %4673, %4733
  %4735 = fmul fast float %4676, %4676
  %4736 = fmul fast float %4735, %4734
  %4737 = fmul fast float %4736, %4678
  %4738 = fmul fast float %4733, 0xBFE99999A0000000
  %4739 = fmul fast float %4738, %4618
  %4740 = fmul fast float %4739, %4635
  %4741 = fadd fast float %4740, 1.000000e+00
  %4742 = fadd fast float %4597, -1.000000e+00
  %4743 = fmul fast float %4741, %4742
  %4744 = fadd fast float %4743, 1.000000e+00
  %4745 = fsub fast float %4727, %4594
  %4746 = fsub fast float %4728, %4595
  %4747 = fsub fast float %4729, %4596
  %4748 = fmul fast float %4737, %4745
  %4749 = fmul fast float %4737, %4746
  %4750 = fmul fast float %4737, %4747
  %4751 = fadd fast float %4748, %4594
  %4752 = fadd fast float %4749, %4595
  %4753 = fadd fast float %4750, %4596
  %4754 = fsub fast float %101, %4591
  %4755 = fsub fast float %102, %4592
  %4756 = fsub fast float %103, %4593
  %4757 = fmul fast float %4737, %4754
  %4758 = fmul fast float %4737, %4755
  %4759 = fmul fast float %4737, %4756
  %4760 = fadd fast float %4757, %4591
  %4761 = fadd fast float %4758, %4592
  %4762 = fadd fast float %4759, %4593
  %4763 = fmul fast float %4737, %4732
  %4764 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4765 = fsub fast float 1.000000e+00, %4764
  %4766 = fmul fast float %4763, %4765
  %4767 = fadd fast float %4766, %4764
  %4768 = fsub fast float 1.000000e+00, %4598
  %4769 = fmul fast float %4737, %4768
  %4770 = fadd fast float %4769, %4598
  %4771 = call float @dx.op.dot3.f32(i32 55, float %4760, float %4761, float %4762, float %4760, float %4761, float %4762)  ; Dot3(ax,ay,az,bx,by,bz)
  %4772 = call float @dx.op.unary.f32(i32 25, float %4771)  ; Rsqrt(value)
  %4773 = fmul fast float %4760, %4772
  %4774 = fmul fast float %4761, %4772
  %4775 = fmul fast float %4762, %4772
  br label %4776

; <label>:4776                                    ; preds = %4609, %4602
  %4777 = phi float [ %4608, %4602 ], [ %4615, %4609 ]
  %4778 = phi float [ %4607, %4602 ], [ %4613, %4609 ]
  %4779 = phi float [ %4606, %4602 ], [ %4611, %4609 ]
  %4780 = phi float [ %4605, %4602 ], [ %4614, %4609 ]
  %4781 = phi float [ %4604, %4602 ], [ %4612, %4609 ]
  %4782 = phi float [ %4603, %4602 ], [ %4610, %4609 ]
  %4783 = phi float [ %4588, %4602 ], [ %4660, %4609 ]
  %4784 = phi float [ %4589, %4602 ], [ %4661, %4609 ]
  %4785 = phi float [ %4590, %4602 ], [ %4662, %4609 ]
  %4786 = phi float [ %4591, %4602 ], [ %4773, %4609 ]
  %4787 = phi float [ %4592, %4602 ], [ %4774, %4609 ]
  %4788 = phi float [ %4593, %4602 ], [ %4775, %4609 ]
  %4789 = phi float [ %4594, %4602 ], [ %4751, %4609 ]
  %4790 = phi float [ %4595, %4602 ], [ %4752, %4609 ]
  %4791 = phi float [ %4596, %4602 ], [ %4753, %4609 ]
  %4792 = phi float [ %4597, %4602 ], [ %4767, %4609 ]
  %4793 = phi float [ %4598, %4602 ], [ %4770, %4609 ]
  %4794 = select i1 %255, float 0.000000e+00, float %4791
  %4795 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4787, float %4788, float %4779, float %4778, float %4777)  ; Dot3(ax,ay,az,bx,by,bz)
  %4796 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4797 = call float @dx.op.dot3.f32(i32 55, float %4782, float %4781, float %4780, float %4786, float %4787, float %4788)  ; Dot3(ax,ay,az,bx,by,bz)
  %4798 = fmul fast float %4797, 2.000000e+00
  %4799 = fmul fast float %4798, %4786
  %4800 = fmul fast float %4798, %4787
  %4801 = fmul fast float %4798, %4788
  %4802 = fsub fast float %4782, %4799
  %4803 = fsub fast float %4781, %4800
  %4804 = fsub fast float %4780, %4801
  %4805 = call float @dx.op.binary.f32(i32 36, float %4793, float 1.000000e+00)  ; FMin(a,b)
  %4806 = fsub fast float 1.000000e+00, %4793
  %4807 = bitcast float %4806 to i32
  %4808 = sub nsw i32 2129859010, %4807
  %4809 = bitcast i32 %4808 to float
  %4810 = fsub fast float 1.000000e+00, %65
  %4811 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4812 = call float @dx.op.binary.f32(i32 35, float %4811, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4813 = fdiv fast float %4810, %4812
  %4814 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4787, float %4788, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4815 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4816 = fmul fast float %4815, 5.000000e-01
  %4817 = fadd fast float %4816, 5.000000e-01
  %4818 = fmul fast float %4817, %65
  %4819 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4787, float %4788, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4820 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4821 = fmul fast float %4820, %4813
  %4822 = fadd fast float %4818, %4821
  %4823 = fsub fast float 5.000000e-01, %4816
  %4824 = fmul fast float %4823, %4783
  %4825 = fmul fast float %4823, %4784
  %4826 = fmul fast float %4823, %4785
  %4827 = fadd fast float %4822, %4824
  %4828 = fadd fast float %4822, %4825
  %4829 = fadd fast float %4822, %4826
  %4830 = call float @dx.op.dot3.f32(i32 55, float %4802, float %4803, float %4804, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4831 = call float @dx.op.unary.f32(i32 7, float %4830)  ; Saturate(value)
  %4832 = fmul fast float %4831, 5.000000e-01
  %4833 = fadd fast float %4832, 5.000000e-01
  %4834 = fmul fast float %4833, %65
  %4835 = call float @dx.op.dot3.f32(i32 55, float %4802, float %4803, float %4804, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4836 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4837 = fmul fast float %4836, %4813
  %4838 = fadd fast float %4834, %4837
  %4839 = fsub fast float 5.000000e-01, %4832
  %4840 = fmul fast float %4839, %4783
  %4841 = fmul fast float %4839, %4784
  %4842 = fmul fast float %4839, %4785
  %4843 = fadd fast float %4838, %4840
  %4844 = fadd fast float %4838, %4841
  %4845 = fadd fast float %4838, %4842
  %4846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4847 = extractvalue %dx.types.CBufRet.f32 %4846, 0
  %4848 = call float @dx.op.binary.f32(i32 36, float %4783, float %4847)  ; FMin(a,b)
  %4849 = fsub fast float 1.000000e+00, %4805
  %4850 = fmul fast float %4848, %4849
  %4851 = fsub fast float 1.000000e+00, %4850
  %4852 = bitcast float %4851 to i32
  %4853 = sub nsw i32 2129859010, %4852
  %4854 = bitcast i32 %4853 to float
  %4855 = call float @dx.op.binary.f32(i32 36, float %4784, float %4847)  ; FMin(a,b)
  %4856 = fmul fast float %4855, %4849
  %4857 = fsub fast float 1.000000e+00, %4856
  %4858 = bitcast float %4857 to i32
  %4859 = sub nsw i32 2129859010, %4858
  %4860 = bitcast i32 %4859 to float
  %4861 = call float @dx.op.binary.f32(i32 36, float %4785, float %4847)  ; FMin(a,b)
  %4862 = fmul fast float %4861, %4849
  %4863 = fsub fast float 1.000000e+00, %4862
  %4864 = bitcast float %4863 to i32
  %4865 = sub nsw i32 2129859010, %4864
  %4866 = bitcast i32 %4865 to float
  %4867 = fmul fast float %4805, %66
  %4868 = fmul fast float %4867, %4827
  %4869 = fmul fast float %4868, %4854
  %4870 = fmul fast float %4805, %67
  %4871 = fmul fast float %4870, %4828
  %4872 = fmul fast float %4871, %4860
  %4873 = fmul fast float %4805, %68
  %4874 = fmul fast float %4873, %4829
  %4875 = fmul fast float %4874, %4866
  %4876 = call float @dx.op.binary.f32(i32 36, float %4789, float %4847)  ; FMin(a,b)
  %4877 = fmul fast float %4876, %4849
  %4878 = fsub fast float 1.000000e+00, %4877
  %4879 = bitcast float %4878 to i32
  %4880 = sub nsw i32 2129859010, %4879
  %4881 = bitcast i32 %4880 to float
  %4882 = call float @dx.op.binary.f32(i32 36, float %4790, float %4847)  ; FMin(a,b)
  %4883 = fmul fast float %4882, %4849
  %4884 = fsub fast float 1.000000e+00, %4883
  %4885 = bitcast float %4884 to i32
  %4886 = sub nsw i32 2129859010, %4885
  %4887 = bitcast i32 %4886 to float
  %4888 = call float @dx.op.binary.f32(i32 36, float %4794, float %4847)  ; FMin(a,b)
  %4889 = fmul fast float %4888, %4849
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = bitcast float %4890 to i32
  %4892 = sub nsw i32 2129859010, %4891
  %4893 = bitcast i32 %4892 to float
  %4894 = fmul fast float %4867, %4843
  %4895 = fmul fast float %4894, %4881
  %4896 = fmul fast float %4870, %4844
  %4897 = fmul fast float %4896, %4887
  %4898 = fmul fast float %4873, %4845
  %4899 = fmul fast float %4898, %4893
  %4900 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4872, float %4875, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4901 = select i1 %255, float 0.000000e+00, float %4869
  %4902 = select i1 %255, float %4900, float %4872
  %4903 = select i1 %255, float 0.000000e+00, float %4875
  %4904 = call float @dx.op.dot3.f32(i32 55, float %4895, float %4897, float %4899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4905 = select i1 %255, float 0.000000e+00, float %4895
  %4906 = select i1 %255, float %4904, float %4897
  %4907 = select i1 %255, float 0.000000e+00, float %4899
  %4908 = fmul fast float %4796, 9.843750e-01
  %4909 = fmul fast float %4792, 9.843750e-01
  %4910 = fadd fast float %4908, 7.812500e-03
  %4911 = fadd fast float %4909, 7.812500e-03
  %4912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %4910, float %4911, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4913 = extractvalue %dx.types.ResRet.f32 %4912, 2
  %4914 = extractvalue %dx.types.ResRet.f32 %4912, 3
  %4915 = fmul fast float %4913, %4789
  %4916 = fmul fast float %4913, %4790
  %4917 = fmul fast float %4913, %4794
  %4918 = fadd fast float %4915, %4914
  %4919 = fadd fast float %4916, %4914
  %4920 = fadd fast float %4917, %4914
  %4921 = fcmp fast ogt float %3879, 0.000000e+00
  br i1 %4921, label %4922, label %4948

; <label>:4922                                    ; preds = %4776
  %4923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %3879, float %4796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4924 = extractvalue %dx.types.ResRet.f32 %4923, 0
  %4925 = extractvalue %dx.types.ResRet.f32 %4923, 1
  %4926 = extractvalue %dx.types.ResRet.f32 %4923, 2
  %4927 = fadd fast float %4924, -5.000000e-01
  %4928 = fadd fast float %4925, -5.000000e-01
  %4929 = fadd fast float %4926, -5.000000e-01
  %4930 = fsub fast float 1.000000e+00, %4789
  %4931 = fsub fast float 1.000000e+00, %4790
  %4932 = fsub fast float 1.000000e+00, %4794
  %4933 = fmul fast float %4789, 4.000000e+00
  %4934 = fmul fast float %4933, %4930
  %4935 = fmul fast float %4934, %4927
  %4936 = fmul fast float %4790, 4.000000e+00
  %4937 = fmul fast float %4936, %4931
  %4938 = fmul fast float %4937, %4928
  %4939 = fmul fast float %4794, 4.000000e+00
  %4940 = fmul fast float %4939, %4932
  %4941 = fmul fast float %4940, %4929
  %4942 = fadd fast float %4935, %4918
  %4943 = fadd fast float %4938, %4919
  %4944 = fadd fast float %4941, %4920
  %4945 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4946 = call float @dx.op.unary.f32(i32 7, float %4943)  ; Saturate(value)
  %4947 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  br label %4948

; <label>:4948                                    ; preds = %4922, %4776
  %4949 = phi float [ %4945, %4922 ], [ %4918, %4776 ]
  %4950 = phi float [ %4946, %4922 ], [ %4919, %4776 ]
  %4951 = phi float [ %4947, %4922 ], [ %4920, %4776 ]
  %4952 = call float @dx.op.binary.f32(i32 35, float %4950, float %4951)  ; FMax(a,b)
  %4953 = call float @dx.op.binary.f32(i32 35, float %4949, float %4952)  ; FMax(a,b)
  %4954 = fsub fast float 1.000000e+00, %4953
  %4955 = fmul fast float %4954, %4901
  %4956 = fmul fast float %4954, %4902
  %4957 = fmul fast float %4954, %4903
  %4958 = call float @dx.op.dot3.f32(i32 55, float %4783, float %4784, float %4785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4959 = fcmp fast ogt float %4958, 0x3E7FF19E20000000
  %4960 = fdiv fast float 1.000000e+00, %4958
  %4961 = select i1 %4959, float %4960, float 0.000000e+00
  %4962 = fmul fast float %4961, %4783
  %4963 = fmul fast float %4961, %4784
  %4964 = fmul fast float %4961, %4785
  %4965 = fadd fast float %4962, -1.000000e+00
  %4966 = fadd fast float %4963, -1.000000e+00
  %4967 = fadd fast float %4964, -1.000000e+00
  %4968 = fmul fast float %4965, 5.000000e-01
  %4969 = fmul fast float %4966, 5.000000e-01
  %4970 = fmul fast float %4967, 5.000000e-01
  %4971 = fadd fast float %4968, 1.000000e+00
  %4972 = fadd fast float %4969, 1.000000e+00
  %4973 = fadd fast float %4970, 1.000000e+00
  %4974 = fmul fast float %4949, %4905
  %4975 = fmul fast float %4950, %4906
  %4976 = fmul fast float %4951, %4907
  %4977 = fsub fast float 1.000000e+00, %4796
  %4978 = bitcast float %4977 to i32
  %4979 = sitofp i32 %4978 to float
  %4980 = fmul fast float %4979, 5.000000e+00
  %4981 = fadd fast float %4980, 0xC1EFBF8940000000
  %4982 = fptosi float %4981 to i32
  %4983 = bitcast i32 %4982 to float
  %4984 = fmul fast float %4983, %3880
  %4985 = fmul fast float %4901, %4984
  %4986 = fmul fast float %4985, %4954
  %4987 = fmul fast float %4986, %4971
  %4988 = fmul fast float %4902, %4984
  %4989 = fmul fast float %4988, %4954
  %4990 = fmul fast float %4989, %4972
  %4991 = fmul fast float %4903, %4984
  %4992 = fmul fast float %4991, %4954
  %4993 = fmul fast float %4992, %4973
  %4994 = fmul fast float %4955, %3876
  %4995 = fmul fast float %4956, %3876
  %4996 = fmul fast float %4957, %3876
  %4997 = fadd fast float %4974, %3872
  %4998 = fadd fast float %4997, %4987
  %4999 = fmul fast float %4998, %3876
  %5000 = fadd fast float %4975, %3873
  %5001 = fadd fast float %5000, %4990
  %5002 = fmul fast float %5001, %3876
  %5003 = fadd fast float %4976, %3874
  %5004 = fadd fast float %5003, %4993
  %5005 = fmul fast float %5004, %3876
  %5006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5007 = extractvalue %dx.types.CBufRet.f32 %5006, 3
  %5008 = fcmp fast oeq float %5007, 0.000000e+00
  br i1 %5008, label %6018, label %5009

; <label>:5009                                    ; preds = %4948
  %5010 = extractvalue %dx.types.CBufRet.f32 %5006, 0
  %5011 = extractvalue %dx.types.CBufRet.f32 %5006, 1
  %5012 = extractvalue %dx.types.CBufRet.f32 %5006, 2
  %5013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5014 = extractvalue %dx.types.CBufRet.f32 %5013, 0
  %5015 = extractvalue %dx.types.CBufRet.f32 %5013, 1
  %5016 = extractvalue %dx.types.CBufRet.f32 %5013, 2
  %5017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.f32 %5017, 0
  %5019 = extractvalue %dx.types.CBufRet.f32 %5017, 1
  %5020 = call float @dx.op.dot3.f32(i32 55, float %5014, float %5015, float %5016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5021 = select i1 %255, float %5018, float %5014
  %5022 = select i1 %255, float %5020, float %5015
  %5023 = select i1 %255, float %5019, float %5016
  %5024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5025 = extractvalue %dx.types.CBufRet.f32 %5024, 2
  %5026 = fmul fast float %5025, %101
  %5027 = fmul fast float %5025, %102
  %5028 = fmul fast float %5025, %103
  %5029 = fadd fast float %5026, %181
  %5030 = fadd fast float %5027, %182
  %5031 = fadd fast float %5028, %183
  %5032 = fcmp fast olt float %5007, 0.000000e+00
  br i1 %5032, label %5672, label %5033

; <label>:5033                                    ; preds = %5009
  %5034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5035 = extractvalue %dx.types.CBufRet.f32 %5034, 0
  %5036 = extractvalue %dx.types.CBufRet.f32 %5034, 1
  %5037 = extractvalue %dx.types.CBufRet.f32 %5034, 2
  %5038 = extractvalue %dx.types.CBufRet.f32 %5034, 3
  %5039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5040 = extractvalue %dx.types.CBufRet.f32 %5039, 0
  %5041 = extractvalue %dx.types.CBufRet.f32 %5039, 1
  %5042 = extractvalue %dx.types.CBufRet.f32 %5039, 2
  %5043 = extractvalue %dx.types.CBufRet.f32 %5039, 3
  %5044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5045 = extractvalue %dx.types.CBufRet.f32 %5044, 0
  %5046 = extractvalue %dx.types.CBufRet.f32 %5044, 1
  %5047 = extractvalue %dx.types.CBufRet.f32 %5044, 2
  %5048 = extractvalue %dx.types.CBufRet.f32 %5044, 3
  %5049 = fmul fast float %5035, %5029
  %5050 = call float @dx.op.tertiary.f32(i32 46, float %5030, float %5036, float %5049)  ; FMad(a,b,c)
  %5051 = call float @dx.op.tertiary.f32(i32 46, float %5031, float %5037, float %5050)  ; FMad(a,b,c)
  %5052 = fadd fast float %5051, %5038
  %5053 = fmul fast float %5040, %5029
  %5054 = call float @dx.op.tertiary.f32(i32 46, float %5030, float %5041, float %5053)  ; FMad(a,b,c)
  %5055 = call float @dx.op.tertiary.f32(i32 46, float %5031, float %5042, float %5054)  ; FMad(a,b,c)
  %5056 = fadd fast float %5055, %5043
  %5057 = fmul fast float %5045, %5029
  %5058 = call float @dx.op.tertiary.f32(i32 46, float %5030, float %5046, float %5057)  ; FMad(a,b,c)
  %5059 = call float @dx.op.tertiary.f32(i32 46, float %5031, float %5047, float %5058)  ; FMad(a,b,c)
  %5060 = fadd fast float %5059, %5048
  %5061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5062 = extractvalue %dx.types.CBufRet.f32 %5061, 0
  %5063 = fcmp fast une float %5062, 0.000000e+00
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 0
  %5066 = extractvalue %dx.types.CBufRet.f32 %5064, 1
  %5067 = extractvalue %dx.types.CBufRet.f32 %5064, 3
  %5068 = fmul fast float %5067, %5052
  %5069 = fmul fast float %5067, %5056
  %5070 = fadd fast float %5068, %5065
  %5071 = fadd fast float %5069, %5066
  %5072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5073 = extractvalue %dx.types.CBufRet.f32 %5072, 0
  %5074 = extractvalue %dx.types.CBufRet.f32 %5072, 1
  %5075 = extractvalue %dx.types.CBufRet.f32 %5072, 3
  %5076 = fmul fast float %5075, %5052
  %5077 = fmul fast float %5075, %5056
  %5078 = fadd fast float %5076, %5073
  %5079 = fadd fast float %5077, %5074
  %5080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5081 = extractvalue %dx.types.CBufRet.f32 %5080, 1
  %5082 = fsub fast float %5081, %5060
  %5083 = extractvalue %dx.types.CBufRet.f32 %5080, 2
  %5084 = fmul fast float %5082, %5083
  %5085 = fsub fast float 1.000000e+00, %5084
  %5086 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  br i1 %5063, label %5147, label %5087

; <label>:5087                                    ; preds = %5033
  %5088 = extractvalue %dx.types.CBufRet.f32 %5072, 2
  %5089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5090 = extractvalue %dx.types.CBufRet.f32 %5089, 2
  %5091 = fadd fast float %5090, %5088
  %5092 = fcmp fast ogt float %5091, 0.000000e+00
  br i1 %5092, label %5093, label %5117

; <label>:5093                                    ; preds = %5087
  %5094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5095 = extractvalue %dx.types.CBufRet.f32 %5094, 0
  %5096 = extractvalue %dx.types.CBufRet.f32 %5094, 1
  %5097 = fsub fast float %5078, %5095
  %5098 = fsub fast float %5079, %5096
  %5099 = fcmp fast olt float %5097, 0.000000e+00
  %5100 = fcmp fast olt float %5098, 0.000000e+00
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 0
  %5103 = extractvalue %dx.types.CBufRet.f32 %5101, 1
  %5104 = extractvalue %dx.types.CBufRet.f32 %5101, 2
  %5105 = extractvalue %dx.types.CBufRet.f32 %5101, 3
  %5106 = select i1 %5099, float %5102, float %5104
  %5107 = select i1 %5100, float %5103, float %5105
  %5108 = fmul fast float %5106, %5097
  %5109 = fmul fast float %5107, %5098
  %5110 = call float @dx.op.unary.f32(i32 6, float %5108)  ; FAbs(value)
  %5111 = call float @dx.op.unary.f32(i32 6, float %5109)  ; FAbs(value)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5024, 0
  %5113 = call float @dx.op.binary.f32(i32 35, float %5110, float %5111)  ; FMax(a,b)
  %5114 = fsub fast float %5112, %5113
  %5115 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5116 = fmul fast float %5115, %5086
  br label %5117

; <label>:5117                                    ; preds = %5093, %5087
  %5118 = phi float [ %5116, %5093 ], [ 0.000000e+00, %5087 ]
  %5119 = extractvalue %dx.types.CBufRet.f32 %5064, 2
  %5120 = extractvalue %dx.types.CBufRet.f32 %5089, 1
  %5121 = fadd fast float %5120, %5119
  %5122 = fcmp fast ogt float %5121, 0.000000e+00
  br i1 %5122, label %5123, label %5147

; <label>:5123                                    ; preds = %5117
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 0
  %5126 = extractvalue %dx.types.CBufRet.f32 %5124, 1
  %5127 = fsub fast float %5070, %5125
  %5128 = fsub fast float %5071, %5126
  %5129 = fcmp fast olt float %5127, 0.000000e+00
  %5130 = fcmp fast olt float %5128, 0.000000e+00
  %5131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.f32 %5131, 0
  %5133 = extractvalue %dx.types.CBufRet.f32 %5131, 1
  %5134 = extractvalue %dx.types.CBufRet.f32 %5131, 2
  %5135 = extractvalue %dx.types.CBufRet.f32 %5131, 3
  %5136 = select i1 %5129, float %5132, float %5134
  %5137 = select i1 %5130, float %5133, float %5135
  %5138 = fmul fast float %5136, %5127
  %5139 = fmul fast float %5137, %5128
  %5140 = call float @dx.op.unary.f32(i32 6, float %5138)  ; FAbs(value)
  %5141 = call float @dx.op.unary.f32(i32 6, float %5139)  ; FAbs(value)
  %5142 = extractvalue %dx.types.CBufRet.f32 %5024, 0
  %5143 = call float @dx.op.binary.f32(i32 35, float %5140, float %5141)  ; FMax(a,b)
  %5144 = fsub fast float %5142, %5143
  %5145 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5146 = fmul fast float %5145, %5086
  br label %5147

; <label>:5147                                    ; preds = %5123, %5117, %5033
  %5148 = phi float [ 0.000000e+00, %5033 ], [ %5146, %5123 ], [ 0.000000e+00, %5117 ]
  %5149 = phi float [ 0.000000e+00, %5033 ], [ %5118, %5123 ], [ %5118, %5117 ]
  %5150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5151 = extractvalue %dx.types.CBufRet.f32 %5150, 1
  %5152 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 0
  %5155 = extractvalue %dx.types.CBufRet.f32 %5153, 1
  %5156 = fsub fast float %5052, %5154
  %5157 = fsub fast float %5056, %5155
  %5158 = fcmp fast olt float %5156, 0.000000e+00
  %5159 = fcmp fast olt float %5157, 0.000000e+00
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5163 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5164 = extractvalue %dx.types.CBufRet.f32 %5160, 3
  %5165 = select i1 %5158, float %5161, float %5163
  %5166 = select i1 %5159, float %5162, float %5164
  %5167 = fmul fast float %5165, %5156
  %5168 = fmul fast float %5166, %5157
  %5169 = call float @dx.op.unary.f32(i32 6, float %5167)  ; FAbs(value)
  %5170 = call float @dx.op.unary.f32(i32 6, float %5168)  ; FAbs(value)
  %5171 = extractvalue %dx.types.CBufRet.f32 %5024, 0
  %5172 = call float @dx.op.binary.f32(i32 35, float %5169, float %5170)  ; FMax(a,b)
  %5173 = fsub fast float %5171, %5172
  %5174 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5175 = call float @dx.op.binary.f32(i32 36, float %5174, float %5152)  ; FMin(a,b)
  %5176 = fmul fast float %5175, %5086
  %5177 = fsub fast float %5148, %5176
  %5178 = fsub fast float %5149, %5148
  %5179 = fsub fast float %5178, %5176
  %5180 = call float @dx.op.binary.f32(i32 35, float %5148, float %5149)  ; FMax(a,b)
  %5181 = call float @dx.op.binary.f32(i32 35, float %5176, float %5180)  ; FMax(a,b)
  %5182 = fcmp fast olt float %5181, 1.000000e+00
  br i1 %5182, label %5183, label %5581, !dx.controlflow.hints !83

; <label>:5183                                    ; preds = %5147
  %5184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5185 = extractvalue %dx.types.CBufRet.f32 %5184, 0
  %5186 = fcmp fast une float %5185, 0.000000e+00
  br i1 %5186, label %5187, label %5581, !dx.controlflow.hints !84

; <label>:5187                                    ; preds = %5183
  %5188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5189 = extractvalue %dx.types.CBufRet.f32 %5188, 0
  %5190 = extractvalue %dx.types.CBufRet.f32 %5188, 1
  %5191 = extractvalue %dx.types.CBufRet.f32 %5188, 2
  %5192 = extractvalue %dx.types.CBufRet.f32 %5188, 3
  %5193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5194 = extractvalue %dx.types.CBufRet.f32 %5193, 0
  %5195 = extractvalue %dx.types.CBufRet.f32 %5193, 1
  %5196 = extractvalue %dx.types.CBufRet.f32 %5193, 2
  %5197 = extractvalue %dx.types.CBufRet.f32 %5193, 3
  %5198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5199 = extractvalue %dx.types.CBufRet.f32 %5198, 0
  %5200 = extractvalue %dx.types.CBufRet.f32 %5198, 1
  %5201 = extractvalue %dx.types.CBufRet.f32 %5198, 2
  %5202 = extractvalue %dx.types.CBufRet.f32 %5198, 3
  %5203 = fmul fast float %5189, %5029
  %5204 = call float @dx.op.tertiary.f32(i32 46, float %5030, float %5190, float %5203)  ; FMad(a,b,c)
  %5205 = call float @dx.op.tertiary.f32(i32 46, float %5031, float %5191, float %5204)  ; FMad(a,b,c)
  %5206 = fadd fast float %5205, %5192
  %5207 = fmul fast float %5194, %5029
  %5208 = call float @dx.op.tertiary.f32(i32 46, float %5030, float %5195, float %5207)  ; FMad(a,b,c)
  %5209 = call float @dx.op.tertiary.f32(i32 46, float %5031, float %5196, float %5208)  ; FMad(a,b,c)
  %5210 = fadd fast float %5209, %5197
  %5211 = fmul fast float %5199, %5029
  %5212 = call float @dx.op.tertiary.f32(i32 46, float %5030, float %5200, float %5211)  ; FMad(a,b,c)
  %5213 = call float @dx.op.tertiary.f32(i32 46, float %5031, float %5201, float %5212)  ; FMad(a,b,c)
  %5214 = fadd fast float %5213, %5202
  %5215 = fcmp fast oge float %5206, 1.000000e+00
  %5216 = fcmp fast oge float %5210, 1.000000e+00
  %5217 = or i1 %5215, %5216
  %5218 = fcmp fast olt float %5206, 0.000000e+00
  %5219 = fcmp fast olt float %5210, 0.000000e+00
  %5220 = or i1 %5218, %5219
  %5221 = or i1 %5217, %5220
  br i1 %5221, label %5581, label %5222, !dx.controlflow.hints !85

; <label>:5222                                    ; preds = %5187
  %5223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5224 = extractvalue %dx.types.CBufRet.f32 %5223, 0
  %5225 = extractvalue %dx.types.CBufRet.f32 %5223, 1
  %5226 = extractvalue %dx.types.CBufRet.f32 %5223, 2
  %5227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.i32 %5227, 2
  %5229 = uitofp i32 %5228 to float
  %5230 = extractvalue %dx.types.CBufRet.i32 %5227, 3
  %5231 = uitofp i32 %5230 to float
  %5232 = extractvalue %dx.types.CBufRet.f32 %5223, 3
  %5233 = fmul fast float %5232, 2.000000e+00
  %5234 = fsub fast float %5206, %5224
  %5235 = fsub fast float %5210, %5225
  %5236 = fmul fast float %5233, %5234
  %5237 = fmul fast float %5233, %5235
  %5238 = fdiv fast float 1.000000e+00, %5012
  %5239 = fmul fast float %5237, %5238
  %5240 = call float @dx.op.unary.f32(i32 6, float %5239)  ; FAbs(value)
  %5241 = fmul fast float %5226, %5031
  %5242 = fmul fast float %5241, %5233
  %5243 = call float @dx.op.unary.f32(i32 6, float %5242)  ; FAbs(value)
  %5244 = call float @dx.op.unary.f32(i32 6, float %5236)  ; FAbs(value)
  %5245 = call float @dx.op.binary.f32(i32 35, float %5243, float %5240)  ; FMax(a,b)
  %5246 = call float @dx.op.binary.f32(i32 35, float %5244, float %5245)  ; FMax(a,b)
  %5247 = fmul fast float %5246, 2.000000e+00
  %5248 = call float @dx.op.unary.f32(i32 23, float %5247)  ; Log(value)
  %5249 = call float @dx.op.binary.f32(i32 35, float %5248, float %5229)  ; FMax(a,b)
  %5250 = call float @dx.op.unary.f32(i32 22, float %5249)  ; Frc(value)
  %5251 = fadd fast float %5250, 0xBFEA666660000000
  %5252 = fmul fast float %5251, 8.000000e+00
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = call float @dx.op.unary.f32(i32 27, float %5249)  ; Round_ni(value)
  %5255 = fadd fast float %5254, %5253
  %5256 = call float @dx.op.binary.f32(i32 36, float %5255, float %5231)  ; FMin(a,b)
  %5257 = call float @dx.op.unary.f32(i32 27, float %5256)  ; Round_ni(value)
  %5258 = fsub fast float -0.000000e+00, %5257
  %5259 = call float @dx.op.unary.f32(i32 21, float %5258)  ; Exp(value)
  %5260 = fmul fast float %5259, %5233
  %5261 = fmul fast float %5260, %5206
  %5262 = fmul fast float %5260, %5210
  %5263 = fmul fast float %5261, 2.500000e-01
  %5264 = fmul fast float %5262, 2.500000e-01
  %5265 = fadd fast float %5263, 5.000000e-01
  %5266 = fadd fast float %5264, 5.000000e-01
  %5267 = fsub fast float %5231, %5229
  %5268 = fptoui float %5267 to i32
  %5269 = add i32 %5268, 320
  %5270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %5269)  ; CBufferLoadLegacy(handle,regIndex)
  %5271 = extractvalue %dx.types.CBufRet.f32 %5270, 0
  %5272 = extractvalue %dx.types.CBufRet.f32 %5270, 1
  %5273 = fcmp fast une float %5256, %5231
  %5274 = fsub fast float %5206, %5271
  %5275 = fsub fast float %5210, %5272
  %5276 = call float @dx.op.unary.f32(i32 6, float %5274)  ; FAbs(value)
  %5277 = call float @dx.op.unary.f32(i32 6, float %5275)  ; FAbs(value)
  %5278 = fmul fast float %5276, %5260
  %5279 = fmul fast float %5277, %5260
  %5280 = fcmp fast olt float %5278, 1.000000e+00
  %5281 = fcmp fast olt float %5279, 1.000000e+00
  %5282 = and i1 %5280, %5281
  %5283 = or i1 %5273, %5282
  br i1 %5283, label %5284, label %5581, !dx.controlflow.hints !86

; <label>:5284                                    ; preds = %5222
  %5285 = fmul fast float %5262, 5.000000e-01
  %5286 = fmul fast float %5261, 5.000000e-01
  %5287 = fadd fast float %5285, 5.000000e-01
  %5288 = fadd fast float %5286, 5.000000e-01
  %5289 = sitofp i32 %5228 to float
  %5290 = fsub fast float %5256, %5289
  %5291 = call float @dx.op.unary.f32(i32 27, float %5290)  ; Round_ni(value)
  %5292 = call float @dx.op.unary.f32(i32 22, float %5256)  ; Frc(value)
  %5293 = call float @dx.op.unary.f32(i32 22, float %5288)  ; Frc(value)
  %5294 = call float @dx.op.unary.f32(i32 22, float %5287)  ; Frc(value)
  %5295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %36, float %5293, float %5294, float %5291, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5296 = extractvalue %dx.types.ResRet.f32 %5295, 0
  %5297 = extractvalue %dx.types.ResRet.f32 %5295, 1
  %5298 = extractvalue %dx.types.ResRet.f32 %5295, 2
  %5299 = extractvalue %dx.types.ResRet.f32 %5295, 3
  %5300 = fcmp fast ogt float %5292, 0.000000e+00
  br i1 %5300, label %5301, label %5322, !dx.controlflow.hints !87

; <label>:5301                                    ; preds = %5284
  %5302 = fadd fast float %5291, 1.000000e+00
  %5303 = call float @dx.op.unary.f32(i32 22, float %5265)  ; Frc(value)
  %5304 = call float @dx.op.unary.f32(i32 22, float %5266)  ; Frc(value)
  %5305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %36, float %5303, float %5304, float %5302, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5306 = extractvalue %dx.types.ResRet.f32 %5305, 0
  %5307 = extractvalue %dx.types.ResRet.f32 %5305, 1
  %5308 = extractvalue %dx.types.ResRet.f32 %5305, 2
  %5309 = extractvalue %dx.types.ResRet.f32 %5305, 3
  %5310 = fsub fast float %5306, %5296
  %5311 = fsub fast float %5307, %5297
  %5312 = fsub fast float %5308, %5298
  %5313 = fsub fast float %5309, %5299
  %5314 = fmul fast float %5310, %5292
  %5315 = fmul fast float %5311, %5292
  %5316 = fmul fast float %5312, %5292
  %5317 = fmul fast float %5313, %5292
  %5318 = fadd fast float %5314, %5296
  %5319 = fadd fast float %5315, %5297
  %5320 = fadd fast float %5316, %5298
  %5321 = fadd fast float %5317, %5299
  br label %5322

; <label>:5322                                    ; preds = %5301, %5284
  %5323 = phi float [ %5318, %5301 ], [ %5296, %5284 ]
  %5324 = phi float [ %5319, %5301 ], [ %5297, %5284 ]
  %5325 = phi float [ %5320, %5301 ], [ %5298, %5284 ]
  %5326 = phi float [ %5321, %5301 ], [ %5299, %5284 ]
  %5327 = fadd fast float %5323, -5.000000e-01
  %5328 = fadd fast float %5325, -5.000000e-01
  %5329 = fmul fast float %5327, 0xBFD5555560000000
  %5330 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5328, float %5329)  ; FMad(a,b,c)
  %5331 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5324, float 0.000000e+00)  ; FMad(a,b,c)
  %5332 = fadd fast float %5331, %5326
  %5333 = fmul fast float %5327, -7.500000e-01
  %5334 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5328, float %5333)  ; FMad(a,b,c)
  %5335 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5324, float 0.000000e+00)  ; FMad(a,b,c)
  %5336 = fadd fast float %5335, %5326
  %5337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.f32 %5337, 0
  %5339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5340 = extractvalue %dx.types.CBufRet.f32 %5339, 0
  %5341 = extractvalue %dx.types.CBufRet.f32 %5339, 1
  %5342 = extractvalue %dx.types.CBufRet.f32 %5339, 2
  %5343 = extractvalue %dx.types.CBufRet.f32 %5339, 3
  %5344 = fsub fast float %5340, %5330
  %5345 = fsub fast float %5341, %5332
  %5346 = fsub fast float %5342, %5334
  %5347 = fsub fast float %5343, %5336
  %5348 = fmul fast float %5344, %5338
  %5349 = fmul fast float %5345, %5338
  %5350 = fmul fast float %5346, %5338
  %5351 = fmul fast float %5347, %5338
  %5352 = fadd fast float %5348, %5330
  %5353 = fadd fast float %5349, %5332
  %5354 = fadd fast float %5350, %5334
  %5355 = fadd fast float %5351, %5336
  %5356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5357 = extractvalue %dx.types.ResRet.i32 %5356, 0
  %5358 = and i32 %5357, 536870911
  %5359 = uitofp i32 %5358 to float
  %5360 = fmul fast float %5359, %5206
  %5361 = fmul fast float %5359, %5210
  %5362 = fptoui float %5360 to i32
  %5363 = fptoui float %5361 to i32
  %5364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5365 = extractvalue %dx.types.ResRet.i32 %5364, 0
  %5366 = and i32 %5365, 31
  %5367 = lshr i32 %5362, %5366
  %5368 = lshr i32 %5363, %5366
  %5369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5370 = extractvalue %dx.types.ResRet.i32 %5369, 0
  %5371 = and i32 %5370, 31
  %5372 = shl i32 1, %5371
  %5373 = call i32 @dx.op.binary.i32(i32 40, i32 %5372, i32 4)  ; UMin(a,b)
  %5374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5375 = extractvalue %dx.types.ResRet.i32 %5374, 0
  %5376 = extractvalue %dx.types.ResRet.i32 %5374, 1
  %5377 = icmp eq i32 %5373, 0
  br i1 %5377, label %5419, label %5378

; <label>:5378                                    ; preds = %5322
  br label %5379

; <label>:5379                                    ; preds = %5407, %5378
  %5380 = phi i32 [ %5410, %5407 ], [ 0, %5378 ]
  %5381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5382 = extractvalue %dx.types.ResRet.i32 %5381, 0
  %5383 = lshr i32 %5382, 16
  %5384 = and i32 %5383, 31
  %5385 = shl i32 %5368, %5384
  %5386 = add i32 %5385, %5367
  %5387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5388 = extractvalue %dx.types.ResRet.i32 %5387, 0
  %5389 = and i32 %5388, 31
  %5390 = shl i32 %5386, %5389
  %5391 = add i32 %5390, %5380
  %5392 = shl i32 %5391, 2
  %5393 = add i32 %5392, 32
  %5394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5393, i32 undef)  ; BufferLoad(srv,index,wot)
  %5395 = extractvalue %dx.types.ResRet.i32 %5394, 0
  %5396 = icmp slt i32 %5395, 0
  %5397 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %5380
  %5398 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5380
  %5399 = bitcast float* %5397 to i32*
  %5400 = bitcast float* %5398 to i32*
  br i1 %5396, label %5401, label %5407

; <label>:5401                                    ; preds = %5379
  %5402 = and i32 %5395, 1073741823
  %5403 = add nuw nsw i32 %5402, 20
  %5404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5403, i32 undef)  ; BufferLoad(srv,index,wot)
  %5405 = extractvalue %dx.types.ResRet.i32 %5404, 0
  %5406 = extractvalue %dx.types.ResRet.i32 %5404, 1
  br label %5407

; <label>:5407                                    ; preds = %5401, %5379
  %5408 = phi i32 [ %5405, %5401 ], [ %5375, %5379 ]
  %5409 = phi i32 [ %5406, %5401 ], [ %5376, %5379 ]
  store i32 %5408, i32* %5399, align 4
  store i32 %5409, i32* %5400, align 4
  %5410 = add nuw i32 %5380, 1
  %5411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.i32 %5411, 2
  %5413 = icmp eq i32 %5412, 0
  %5414 = icmp ugt i32 %5395, -1073741825
  %5415 = and i1 %5414, %5413
  %5416 = icmp ult i32 %5410, %5373
  %5417 = and i1 %5415, %5416
  br i1 %5417, label %5379, label %5418

; <label>:5418                                    ; preds = %5407
  br label %5419

; <label>:5419                                    ; preds = %5418, %5322
  %5420 = phi i32 [ 0, %5322 ], [ %5410, %5418 ]
  %5421 = extractvalue %dx.types.CBufRet.f32 %5184, 2
  %5422 = fptoui float %5421 to i32
  %5423 = icmp eq i32 %5422, 0
  br i1 %5423, label %5475, label %5424

; <label>:5424                                    ; preds = %5419
  br label %5425

; <label>:5425                                    ; preds = %5470, %5424
  %5426 = phi i32 [ %5471, %5470 ], [ %5420, %5424 ]
  %5427 = phi i32 [ %5472, %5470 ], [ 0, %5424 ]
  %5428 = lshr i32 %5427, 2
  %5429 = and i32 %5427, 3
  %5430 = add nuw nsw i32 %5428, 83
  %5431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 %5430)  ; CBufferLoadLegacy(handle,regIndex)
  %5432 = extractvalue %dx.types.CBufRet.i32 %5431, 0
  %5433 = extractvalue %dx.types.CBufRet.i32 %5431, 1
  %5434 = extractvalue %dx.types.CBufRet.i32 %5431, 2
  %5435 = extractvalue %dx.types.CBufRet.i32 %5431, 3
  %5436 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 0
  store i32 %5432, i32* %5436, align 4
  %5437 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 1
  store i32 %5433, i32* %5437, align 4
  %5438 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 2
  store i32 %5434, i32* %5438, align 4
  %5439 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 3
  store i32 %5435, i32* %5439, align 4
  %5440 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 %5429
  %5441 = load i32, i32* %5440, align 4, !tbaa !88, !noalias !92
  %5442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5443 = extractvalue %dx.types.ResRet.i32 %5442, 0
  %5444 = lshr i32 %5443, 16
  %5445 = and i32 %5444, 31
  %5446 = shl i32 %5368, %5445
  %5447 = add i32 %5446, %5367
  %5448 = shl i32 %5447, 2
  %5449 = add i32 %5448, %5441
  %5450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5449, i32 undef)  ; BufferLoad(srv,index,wot)
  %5451 = extractvalue %dx.types.ResRet.i32 %5450, 0
  %5452 = icmp eq i32 %5451, 0
  br i1 %5452, label %5470, label %5453

; <label>:5453                                    ; preds = %5425
  %5454 = icmp slt i32 %5451, 0
  %5455 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %5426
  %5456 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5426
  %5457 = bitcast float* %5455 to i32*
  %5458 = bitcast float* %5456 to i32*
  br i1 %5454, label %5459, label %5466

; <label>:5459                                    ; preds = %5453
  %5460 = and i32 %5451, 1073741823
  %5461 = add i32 %5441, 20
  %5462 = add i32 %5461, %5460
  %5463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5462, i32 undef)  ; BufferLoad(srv,index,wot)
  %5464 = extractvalue %dx.types.ResRet.i32 %5463, 0
  %5465 = extractvalue %dx.types.ResRet.i32 %5463, 1
  br label %5466

; <label>:5466                                    ; preds = %5459, %5453
  %5467 = phi i32 [ %5464, %5459 ], [ %5375, %5453 ]
  %5468 = phi i32 [ %5465, %5459 ], [ %5376, %5453 ]
  store i32 %5467, i32* %5457, align 4
  store i32 %5468, i32* %5458, align 4
  %5469 = add i32 %5426, 1
  br label %5470

; <label>:5470                                    ; preds = %5466, %5425
  %5471 = phi i32 [ %5426, %5425 ], [ %5469, %5466 ]
  %5472 = add nuw i32 %5427, 1
  %5473 = icmp eq i32 %5472, %5422
  br i1 %5473, label %5474, label %5425

; <label>:5474                                    ; preds = %5470
  br label %5475

; <label>:5475                                    ; preds = %5474, %5419
  %5476 = phi i32 [ %5420, %5419 ], [ %5471, %5474 ]
  %5477 = icmp eq i32 %5476, 1
  %5478 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 0
  %5479 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  br i1 %5477, label %5480, label %5483

; <label>:5480                                    ; preds = %5475
  %5481 = load float, float* %5478, align 4
  %5482 = load float, float* %5479, align 4
  br label %5510

; <label>:5483                                    ; preds = %5475
  %5484 = load float, float* %5478, align 4
  %5485 = load float, float* %5479, align 4
  %5486 = fdiv fast float 1.000000e+00, %5485
  %5487 = fsub fast float %5484, %5486
  %5488 = icmp ugt i32 %5476, 1
  br i1 %5488, label %5489, label %5505

; <label>:5489                                    ; preds = %5483
  br label %5490

; <label>:5490                                    ; preds = %5490, %5489
  %5491 = phi float [ %5500, %5490 ], [ %5487, %5489 ]
  %5492 = phi float [ %5501, %5490 ], [ %5484, %5489 ]
  %5493 = phi i32 [ %5502, %5490 ], [ 1, %5489 ]
  %5494 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %5493
  %5495 = load float, float* %5494, align 4
  %5496 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5493
  %5497 = load float, float* %5496, align 4
  %5498 = fdiv fast float 1.000000e+00, %5497
  %5499 = fsub fast float %5495, %5498
  %5500 = call float @dx.op.binary.f32(i32 36, float %5491, float %5499)  ; FMin(a,b)
  %5501 = call float @dx.op.binary.f32(i32 35, float %5492, float %5495)  ; FMax(a,b)
  %5502 = add nuw i32 %5493, 1
  %5503 = icmp eq i32 %5502, %5476
  br i1 %5503, label %5504, label %5490

; <label>:5504                                    ; preds = %5490
  br label %5505

; <label>:5505                                    ; preds = %5504, %5483
  %5506 = phi float [ %5487, %5483 ], [ %5500, %5504 ]
  %5507 = phi float [ %5484, %5483 ], [ %5501, %5504 ]
  %5508 = fsub fast float %5507, %5506
  %5509 = fdiv fast float 1.000000e+00, %5508
  br label %5510

; <label>:5510                                    ; preds = %5505, %5480
  %5511 = phi float [ %5481, %5480 ], [ %5507, %5505 ]
  %5512 = phi float [ %5482, %5480 ], [ %5509, %5505 ]
  %5513 = fadd fast float %5214, %5511
  %5514 = fmul fast float %5513, %5512
  %5515 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5516 = fmul fast float %5515, 2.000000e+00
  %5517 = fsub fast float 1.000000e+00, %5516
  %5518 = fmul fast float %5352, %5352
  %5519 = fsub fast float %5353, %5518
  %5520 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5519)  ; FMax(a,b)
  %5521 = fdiv fast float 1.000000e+00, %5520
  %5522 = fmul fast float %5353, %5352
  %5523 = fsub fast float %5354, %5522
  %5524 = fsub fast float %5517, %5352
  %5525 = fmul fast float %5517, %5517
  %5526 = fsub fast float %5525, %5353
  %5527 = fmul fast float %5521, %5523
  %5528 = fmul fast float %5527, %5524
  %5529 = fsub fast float %5526, %5528
  %5530 = fmul fast float %5353, %5353
  %5531 = fsub fast float %5355, %5530
  %5532 = fmul fast float %5523, %5523
  %5533 = fmul fast float %5532, %5521
  %5534 = fsub fast float %5531, %5533
  %5535 = fdiv fast float %5529, %5534
  %5536 = fmul fast float %5535, %5523
  %5537 = fsub fast float %5524, %5536
  %5538 = fmul fast float %5537, %5521
  %5539 = fmul fast float %5538, %5352
  %5540 = fsub fast float 1.000000e+00, %5539
  %5541 = fmul fast float %5535, %5353
  %5542 = fsub fast float %5540, %5541
  %5543 = fmul fast float %5538, %5538
  %5544 = fmul fast float %5535, 4.000000e+00
  %5545 = fmul fast float %5544, %5542
  %5546 = fsub fast float %5543, %5545
  %5547 = call float @dx.op.unary.f32(i32 24, float %5546)  ; Sqrt(value)
  %5548 = fcmp fast oge float %5538, 0.000000e+00
  %5549 = fsub fast float -0.000000e+00, %5547
  %5550 = select i1 %5548, float %5549, float %5547
  %5551 = fsub fast float %5550, %5538
  %5552 = fdiv fast float %5551, %5535
  %5553 = fdiv fast float %5542, %5551
  %5554 = fmul fast float %5552, 5.000000e-01
  %5555 = fmul fast float %5553, 2.000000e+00
  %5556 = select i1 %5548, float %5554, float %5555
  %5557 = select i1 %5548, float %5555, float %5554
  %5558 = call float @dx.op.binary.f32(i32 35, float %5556, float %5557)  ; FMax(a,b)
  %5559 = call float @dx.op.binary.f32(i32 36, float %5556, float %5557)  ; FMin(a,b)
  %5560 = fcmp fast ogt float %5517, %5558
  %5561 = fsub fast float %5517, %5559
  %5562 = fsub fast float %5517, %5558
  %5563 = fsub fast float %5558, %5559
  %5564 = select i1 %5560, float %5562, float %5563
  %5565 = fmul float %5561, %5564
  %5566 = select i1 %5560, float %5559, float %5517
  %5567 = fcmp fast ogt float %5517, %5559
  %5568 = fmul fast float %5566, %5558
  %5569 = fadd fast float %5566, %5558
  %5570 = fmul fast float %5569, %5352
  %5571 = fadd fast float %5568, %5353
  %5572 = fsub fast float %5571, %5570
  %5573 = fdiv fast float %5572, %5565
  %5574 = select i1 %5567, float %5573, float 0.000000e+00
  %5575 = fsub fast float 1.000000e+00, %5574
  %5576 = select i1 %5560, float %5575, float %5574
  %5577 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  %5578 = extractvalue %dx.types.CBufRet.f32 %5337, 3
  %5579 = fmul fast float %5578, %5577
  %5580 = fsub fast float 1.000000e+00, %5579
  br label %5581

; <label>:5581                                    ; preds = %5510, %5222, %5187, %5183, %5147
  %5582 = phi float [ 1.000000e+00, %5147 ], [ %5580, %5510 ], [ 1.000000e+00, %5187 ], [ 1.000000e+00, %5222 ], [ 1.000000e+00, %5183 ]
  %5583 = fcmp fast ogt float %5179, 0.000000e+00
  br i1 %5583, label %5584, label %5592, !dx.controlflow.hints !101

; <label>:5584                                    ; preds = %5581
  %5585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5586 = extractvalue %dx.types.CBufRet.f32 %5585, 2
  %5587 = fadd fast float %5586, %5060
  %5588 = call float @dx.op.binary.f32(i32 35, float %5587, float 0.000000e+00)  ; FMax(a,b)
  %5589 = fadd fast float %5588, 0x3F10000000000000
  %5590 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %39, float %5078, float %5079, float undef, float undef, i32 0, i32 0, i32 undef, float %5589)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5591 = extractvalue %dx.types.ResRet.f32 %5590, 0
  br label %5592

; <label>:5592                                    ; preds = %5584, %5581
  %5593 = phi float [ %5591, %5584 ], [ 1.000000e+00, %5581 ]
  %5594 = fcmp fast ogt float %5177, 0.000000e+00
  br i1 %5594, label %5595, label %5603, !dx.controlflow.hints !102

; <label>:5595                                    ; preds = %5592
  %5596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5597 = extractvalue %dx.types.CBufRet.f32 %5596, 1
  %5598 = fadd fast float %5597, %5060
  %5599 = call float @dx.op.binary.f32(i32 35, float %5598, float 0.000000e+00)  ; FMax(a,b)
  %5600 = fadd fast float %5599, 0x3F10000000000000
  %5601 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %39, float %5070, float %5071, float undef, float undef, i32 0, i32 0, i32 undef, float %5600)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5602 = extractvalue %dx.types.ResRet.f32 %5601, 0
  br label %5603

; <label>:5603                                    ; preds = %5595, %5592
  %5604 = phi float [ %5602, %5595 ], [ 1.000000e+00, %5592 ]
  %5605 = fcmp fast ogt float %5176, 0.000000e+00
  br i1 %5605, label %5606, label %5618, !dx.controlflow.hints !103

; <label>:5606                                    ; preds = %5603
  %5607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5608 = extractvalue %dx.types.CBufRet.f32 %5607, 0
  %5609 = fadd fast float %5608, %5060
  %5610 = call float @dx.op.binary.f32(i32 35, float %5609, float 0.000000e+00)  ; FMax(a,b)
  %5611 = fadd fast float %5610, 0x3F10000000000000
  br i1 %5063, label %5612, label %5615, !dx.controlflow.hints !104

; <label>:5612                                    ; preds = %5606
  %5613 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %39, float %5052, float %5056, float undef, float undef, i32 0, i32 0, i32 undef, float %5611)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5614 = extractvalue %dx.types.ResRet.f32 %5613, 0
  br label %5618

; <label>:5615                                    ; preds = %5606
  %5616 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %39, float %5052, float %5056, float undef, float undef, i32 0, i32 0, i32 undef, float %5611)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5617 = extractvalue %dx.types.ResRet.f32 %5616, 0
  br label %5618

; <label>:5618                                    ; preds = %5615, %5612, %5603
  %5619 = phi float [ %5614, %5612 ], [ %5617, %5615 ], [ 1.000000e+00, %5603 ]
  %5620 = fsub fast float %5593, %5582
  %5621 = fmul fast float %5620, %5149
  %5622 = fadd fast float %5621, %5582
  %5623 = fsub fast float %5604, %5622
  %5624 = fmul fast float %5623, %5148
  %5625 = fadd fast float %5624, %5622
  %5626 = fsub fast float %5619, %5625
  %5627 = fmul fast float %5626, %5176
  %5628 = fadd fast float %5627, %5625
  %5629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5630 = extractvalue %dx.types.CBufRet.f32 %5629, 2
  %5631 = fcmp fast ogt float %5630, 0.000000e+00
  br i1 %5631, label %5632, label %5672, !dx.controlflow.hints !105

; <label>:5632                                    ; preds = %5618
  %5633 = fcmp fast ugt float %5630, 0.000000e+00
  br i1 %5633, label %5634, label %5669

; <label>:5634                                    ; preds = %5632
  %5635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5636 = extractvalue %dx.types.CBufRet.f32 %5635, 0
  %5637 = extractvalue %dx.types.CBufRet.f32 %5635, 1
  %5638 = extractvalue %dx.types.CBufRet.f32 %5635, 2
  %5639 = extractvalue %dx.types.CBufRet.f32 %5635, 3
  %5640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5641 = extractvalue %dx.types.CBufRet.f32 %5640, 0
  %5642 = extractvalue %dx.types.CBufRet.f32 %5640, 1
  %5643 = extractvalue %dx.types.CBufRet.f32 %5640, 2
  %5644 = extractvalue %dx.types.CBufRet.f32 %5640, 3
  %5645 = extractvalue %dx.types.CBufRet.f32 %5629, 0
  %5646 = extractvalue %dx.types.CBufRet.f32 %5629, 1
  %5647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5648 = extractvalue %dx.types.CBufRet.f32 %5647, 0
  %5649 = extractvalue %dx.types.CBufRet.f32 %5647, 1
  %5650 = extractvalue %dx.types.CBufRet.f32 %5647, 2
  %5651 = fadd fast float %5648, %5029
  %5652 = fadd fast float %5649, %5030
  %5653 = fadd fast float %5650, %5031
  %5654 = fmul fast float %5651, %5636
  %5655 = call float @dx.op.tertiary.f32(i32 46, float %5637, float %5652, float %5654)  ; FMad(a,b,c)
  %5656 = call float @dx.op.tertiary.f32(i32 46, float %5638, float %5653, float %5655)  ; FMad(a,b,c)
  %5657 = fadd fast float %5656, %5639
  %5658 = fmul fast float %5651, %5641
  %5659 = call float @dx.op.tertiary.f32(i32 46, float %5642, float %5652, float %5658)  ; FMad(a,b,c)
  %5660 = call float @dx.op.tertiary.f32(i32 46, float %5643, float %5653, float %5659)  ; FMad(a,b,c)
  %5661 = fadd fast float %5660, %5644
  %5662 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %34, float %5657, float %5661, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5663 = extractvalue %dx.types.ResRet.f32 %5662, 0
  %5664 = fmul fast float %5663, %5646
  %5665 = fadd fast float %5664, %5645
  %5666 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5667 = fmul fast float %5666, %5630
  %5668 = fsub fast float 1.000000e+00, %5667
  br label %5669

; <label>:5669                                    ; preds = %5634, %5632
  %5670 = phi float [ %5668, %5634 ], [ 1.000000e+00, %5632 ]
  %5671 = fmul fast float %5670, %5628
  br label %5672

; <label>:5672                                    ; preds = %5669, %5618, %5009
  %5673 = phi float [ 1.000000e+00, %5009 ], [ %5671, %5669 ], [ %5628, %5618 ]
  %5674 = call float @dx.op.binary.f32(i32 36, float %5673, float %5673)  ; FMin(a,b)
  %5675 = call float @dx.op.binary.f32(i32 36, float %5673, float %5674)  ; FMin(a,b)
  %5676 = fcmp fast ogt float %5675, 0.000000e+00
  br i1 %5676, label %5677, label %5838, !dx.controlflow.hints !106

; <label>:5677                                    ; preds = %5672
  %5678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5679 = extractvalue %dx.types.CBufRet.f32 %5678, 0
  %5680 = extractvalue %dx.types.CBufRet.f32 %5678, 1
  %5681 = extractvalue %dx.types.CBufRet.f32 %5678, 2
  %5682 = extractvalue %dx.types.CBufRet.f32 %5678, 3
  %5683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.f32 %5683, 0
  %5685 = extractvalue %dx.types.CBufRet.f32 %5683, 1
  %5686 = extractvalue %dx.types.CBufRet.f32 %5683, 2
  %5687 = extractvalue %dx.types.CBufRet.f32 %5683, 3
  %5688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5689 = extractvalue %dx.types.CBufRet.f32 %5688, 0
  %5690 = extractvalue %dx.types.CBufRet.f32 %5688, 1
  %5691 = extractvalue %dx.types.CBufRet.f32 %5688, 2
  %5692 = extractvalue %dx.types.CBufRet.f32 %5688, 3
  %5693 = fmul fast float %5679, %5029
  %5694 = call float @dx.op.tertiary.f32(i32 46, float %5030, float %5680, float %5693)  ; FMad(a,b,c)
  %5695 = call float @dx.op.tertiary.f32(i32 46, float %5031, float %5681, float %5694)  ; FMad(a,b,c)
  %5696 = fadd fast float %5695, %5682
  %5697 = fmul fast float %5684, %5029
  %5698 = call float @dx.op.tertiary.f32(i32 46, float %5030, float %5685, float %5697)  ; FMad(a,b,c)
  %5699 = call float @dx.op.tertiary.f32(i32 46, float %5031, float %5686, float %5698)  ; FMad(a,b,c)
  %5700 = fadd fast float %5699, %5687
  %5701 = fmul fast float %5689, %5029
  %5702 = call float @dx.op.tertiary.f32(i32 46, float %5030, float %5690, float %5701)  ; FMad(a,b,c)
  %5703 = call float @dx.op.tertiary.f32(i32 46, float %5031, float %5691, float %5702)  ; FMad(a,b,c)
  %5704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5705 = extractvalue %dx.types.CBufRet.f32 %5704, 0
  %5706 = extractvalue %dx.types.CBufRet.f32 %5704, 1
  %5707 = extractvalue %dx.types.CBufRet.f32 %5704, 3
  %5708 = fmul fast float %5707, %5696
  %5709 = fmul fast float %5707, %5700
  %5710 = fadd fast float %5708, %5705
  %5711 = fadd fast float %5709, %5706
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 0
  %5714 = extractvalue %dx.types.CBufRet.f32 %5712, 1
  %5715 = fsub fast float %5710, %5713
  %5716 = fsub fast float %5711, %5714
  %5717 = fcmp fast olt float %5715, 0.000000e+00
  %5718 = fcmp fast olt float %5716, 0.000000e+00
  %5719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5720 = extractvalue %dx.types.CBufRet.f32 %5719, 0
  %5721 = extractvalue %dx.types.CBufRet.f32 %5719, 1
  %5722 = extractvalue %dx.types.CBufRet.f32 %5719, 2
  %5723 = extractvalue %dx.types.CBufRet.f32 %5719, 3
  %5724 = select i1 %5717, float %5720, float %5722
  %5725 = select i1 %5718, float %5721, float %5723
  %5726 = fmul fast float %5724, %5715
  %5727 = fmul fast float %5725, %5716
  %5728 = call float @dx.op.unary.f32(i32 6, float %5726)  ; FAbs(value)
  %5729 = call float @dx.op.unary.f32(i32 6, float %5727)  ; FAbs(value)
  %5730 = extractvalue %dx.types.CBufRet.f32 %5024, 0
  %5731 = call float @dx.op.binary.f32(i32 35, float %5728, float %5729)  ; FMax(a,b)
  %5732 = fsub fast float %5730, %5731
  %5733 = call float @dx.op.unary.f32(i32 7, float %5732)  ; Saturate(value)
  %5734 = fcmp fast ogt float %5733, 0.000000e+00
  br i1 %5734, label %5735, label %5776, !dx.controlflow.hints !107

; <label>:5735                                    ; preds = %5677
  %5736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %37, float %5710, float %5711, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5737 = extractvalue %dx.types.ResRet.f32 %5736, 1
  %5738 = fcmp fast ogt float %5737, 0.000000e+00
  br i1 %5738, label %5739, label %5771

; <label>:5739                                    ; preds = %5735
  %5740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5710, float %5711, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5741 = extractvalue %dx.types.ResRet.f32 %5740, 0
  %5742 = extractvalue %dx.types.ResRet.f32 %5740, 1
  %5743 = extractvalue %dx.types.ResRet.f32 %5740, 2
  %5744 = extractvalue %dx.types.ResRet.f32 %5740, 3
  %5745 = fsub fast float 1.000000e+00, %5692
  %5746 = fsub fast float %5745, %5703
  %5747 = fmul fast float %5746, 0x400921FB60000000
  %5748 = fadd fast float %5747, 0x3FF921FB60000000
  %5749 = call float @dx.op.unary.f32(i32 13, float %5748)  ; Sin(value)
  %5750 = fadd fast float %5749, -1.000000e+00
  %5751 = fmul fast float %5750, 0x3FD45F3060000000
  %5752 = fmul fast float %5746, 0x401921FB60000000
  %5753 = fadd fast float %5752, 0x400921FB60000000
  %5754 = call float @dx.op.unary.f32(i32 13, float %5753)  ; Sin(value)
  %5755 = fadd fast float %5754, 0x3E7777A5C0000000
  %5756 = fmul fast float %5755, 0x3FC45F3060000000
  %5757 = fmul fast float %5746, 0x4022D97C80000000
  %5758 = fadd fast float %5757, 0x4012D97C80000000
  %5759 = call float @dx.op.unary.f32(i32 13, float %5758)  ; Sin(value)
  %5760 = fadd fast float %5759, 1.000000e+00
  %5761 = fmul fast float %5760, 0x3FBB2995E0000000
  %5762 = fmul fast float %5746, 0x402921FB60000000
  %5763 = fadd fast float %5762, 0x401921FB60000000
  %5764 = call float @dx.op.unary.f32(i32 13, float %5763)  ; Sin(value)
  %5765 = fadd fast float %5764, 0xBE8777A5C0000000
  %5766 = fmul fast float %5765, 0x3FB45F3060000000
  %5767 = call float @dx.op.dot4.f32(i32 56, float %5741, float %5742, float %5743, float %5744, float %5751, float %5756, float %5761, float %5766)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5768 = fmul fast float %5767, 0xBFF7154760000000
  %5769 = call float @dx.op.unary.f32(i32 21, float %5768)  ; Exp(value)
  %5770 = call float @dx.op.unary.f32(i32 7, float %5769)  ; Saturate(value)
  br label %5771

; <label>:5771                                    ; preds = %5739, %5735
  %5772 = phi float [ %5770, %5739 ], [ 1.000000e+00, %5735 ]
  %5773 = fadd fast float %5772, -1.000000e+00
  %5774 = fmul fast float %5773, %5733
  %5775 = fadd fast float %5774, 1.000000e+00
  br label %5776

; <label>:5776                                    ; preds = %5771, %5677
  %5777 = phi float [ %5775, %5771 ], [ 1.000000e+00, %5677 ]
  %5778 = fmul fast float %5777, %5673
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5783 = fadd fast float %5780, %181
  %5784 = fadd fast float %5781, %182
  %5785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5785, 1
  %5787 = fsub fast float -0.000000e+00, %5783
  %5788 = fsub fast float -0.000000e+00, %5784
  %5789 = fsub fast float -0.000000e+00, %183
  %5790 = fsub fast float %5789, %5782
  %5791 = fadd fast float %5790, %5786
  %5792 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5787, float %5788, float %5791)  ; Dot3(ax,ay,az,bx,by,bz)
  %5793 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5010, float %5011, float %5012)  ; Dot3(ax,ay,az,bx,by,bz)
  %5794 = fdiv fast float 1.000000e+00, %5793
  %5795 = fmul fast float %5794, %5792
  %5796 = fmul fast float %5010, %5795
  %5797 = fmul fast float %5011, %5795
  %5798 = fadd fast float %5796, %5783
  %5799 = fadd fast float %5797, %5784
  %5800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.CBufRet.f32 %5800, 1
  %5803 = fsub fast float %5798, %5801
  %5804 = fsub fast float %5799, %5802
  %5805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5806 = extractvalue %dx.types.CBufRet.f32 %5805, 2
  %5807 = extractvalue %dx.types.CBufRet.f32 %5805, 3
  %5808 = fmul fast float %5803, %5806
  %5809 = fmul fast float %5804, %5807
  %5810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.i32 %5810, 3
  %5812 = icmp eq i32 %5811, 0
  br i1 %5812, label %5818, label %5813

; <label>:5813                                    ; preds = %5776
  %5814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %36, float %5808, float %5809, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5815 = extractvalue %dx.types.ResRet.f32 %5814, 0
  %5816 = extractvalue %dx.types.ResRet.f32 %5814, 1
  %5817 = extractvalue %dx.types.ResRet.f32 %5814, 2
  br label %5823

; <label>:5818                                    ; preds = %5776
  %5819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %5808, float %5809, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5820 = extractvalue %dx.types.ResRet.f32 %5819, 0
  %5821 = extractvalue %dx.types.ResRet.f32 %5819, 1
  %5822 = extractvalue %dx.types.ResRet.f32 %5819, 2
  br label %5823

; <label>:5823                                    ; preds = %5818, %5813
  %5824 = phi float [ %5815, %5813 ], [ %5820, %5818 ]
  %5825 = phi float [ %5816, %5813 ], [ %5821, %5818 ]
  %5826 = phi float [ %5817, %5813 ], [ %5822, %5818 ]
  %5827 = extractvalue %dx.types.CBufRet.f32 %5785, 2
  %5828 = fmul fast float %5827, %5824
  %5829 = extractvalue %dx.types.CBufRet.f32 %5785, 0
  %5830 = fsub fast float %5795, %5829
  %5831 = fsub fast float %5830, %5828
  %5832 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5831)  ; FMax(a,b)
  %5833 = fmul fast float %5832, %5825
  %5834 = call float @dx.op.binary.f32(i32 36, float %5826, float %5833)  ; FMin(a,b)
  %5835 = fmul fast float %5834, 0xBFF7154760000000
  %5836 = call float @dx.op.unary.f32(i32 21, float %5835)  ; Exp(value)
  %5837 = fmul fast float %5778, %5836
  br label %5838

; <label>:5838                                    ; preds = %5823, %5672
  %5839 = phi float [ %5837, %5823 ], [ %5673, %5672 ]
  %5840 = call float @dx.op.binary.f32(i32 36, float %5839, float %5839)  ; FMin(a,b)
  %5841 = call float @dx.op.binary.f32(i32 36, float %5839, float %5840)  ; FMin(a,b)
  %5842 = fcmp fast ogt float %5841, 0.000000e+00
  br i1 %5842, label %5843, label %6018, !dx.controlflow.hints !108

; <label>:5843                                    ; preds = %5838
  %5844 = fmul fast float %5839, %5021
  %5845 = fmul fast float %5839, %5022
  %5846 = fmul fast float %5839, %5023
  %5847 = fsub fast float %5010, %4782
  %5848 = fsub fast float %5011, %4781
  %5849 = fsub fast float %5012, %4780
  %5850 = call float @dx.op.dot3.f32(i32 55, float %5847, float %5848, float %5849, float %5847, float %5848, float %5849)  ; Dot3(ax,ay,az,bx,by,bz)
  %5851 = call float @dx.op.unary.f32(i32 25, float %5850)  ; Rsqrt(value)
  %5852 = fmul fast float %5851, %5847
  %5853 = fmul fast float %5851, %5848
  %5854 = fmul fast float %5851, %5849
  %5855 = call float @dx.op.dot3.f32(i32 55, float %5010, float %5011, float %5012, float %4786, float %4787, float %4788)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4778, float %4777, float %5852, float %5853, float %5854)  ; Dot3(ax,ay,az,bx,by,bz)
  %5857 = call float @dx.op.unary.f32(i32 7, float %5855)  ; Saturate(value)
  %5858 = fmul fast float %5857, %5857
  %5859 = fmul fast float %5858, %4809
  %5860 = call float @dx.op.unary.f32(i32 7, float %5859)  ; Saturate(value)
  %5861 = fmul fast float %5860, %5857
  %5862 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4787, float %4788, float %5852, float %5853, float %5854)  ; Dot3(ax,ay,az,bx,by,bz)
  %5863 = fmul fast float %5862, %5862
  %5864 = call float @dx.op.unary.f32(i32 6, float %5855)  ; FAbs(value)
  %5865 = fsub fast float 1.000000e+00, %4792
  %5866 = call float @dx.op.binary.f32(i32 35, float %5865, float 0x3F847AE140000000)  ; FMax(a,b)
  %5867 = fmul fast float %5866, %5866
  %5868 = fmul fast float %5867, %5867
  %5869 = fsub fast float 1.000000e+00, %5868
  %5870 = fmul fast float %4796, %4796
  %5871 = fmul fast float %5870, %5869
  %5872 = fadd fast float %5871, %5868
  %5873 = bitcast float %5872 to i32
  %5874 = ashr i32 %5873, 1
  %5875 = add nsw i32 %5874, 532487669
  %5876 = bitcast i32 %5875 to float
  %5877 = fadd fast float %5876, %4796
  %5878 = fmul fast float %5868, %5863
  %5879 = fsub fast float 1.000000e+00, %5863
  %5880 = fadd fast float %5879, %5878
  %5881 = fmul fast float %5864, %5864
  %5882 = fmul fast float %5881, %5869
  %5883 = fadd fast float %5882, %5868
  %5884 = bitcast float %5883 to i32
  %5885 = ashr i32 %5884, 1
  %5886 = add nsw i32 %5885, 532487669
  %5887 = bitcast i32 %5886 to float
  %5888 = fadd fast float %5887, %5864
  %5889 = fmul fast float %5880, %5880
  %5890 = fmul fast float %5889, %5877
  %5891 = fmul fast float %5890, %5888
  %5892 = fdiv fast float 0x3FF0A00000000000, %5891
  %5893 = fmul fast float %5892, %5868
  %5894 = call float @dx.op.unary.f32(i32 6, float %5856)  ; FAbs(value)
  %5895 = fsub fast float 1.000000e+00, %5894
  %5896 = bitcast float %5895 to i32
  %5897 = sitofp i32 %5896 to float
  %5898 = fmul fast float %5897, 5.000000e+00
  %5899 = fadd fast float %5898, 0xC1EFBF8940000000
  %5900 = fptosi float %5899 to i32
  %5901 = bitcast i32 %5900 to float
  %5902 = fsub fast float 1.000000e+00, %4789
  %5903 = fsub fast float 1.000000e+00, %4790
  %5904 = fsub fast float 1.000000e+00, %4794
  %5905 = fmul fast float %5901, %5902
  %5906 = fmul fast float %5901, %5903
  %5907 = fmul fast float %5901, %5904
  %5908 = fadd fast float %5905, %4789
  %5909 = fadd fast float %5906, %4790
  %5910 = fadd fast float %5907, %4794
  br i1 %4921, label %5911, label %5934

; <label>:5911                                    ; preds = %5843
  %5912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %3879, float %5894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5913 = extractvalue %dx.types.ResRet.f32 %5912, 0
  %5914 = extractvalue %dx.types.ResRet.f32 %5912, 1
  %5915 = extractvalue %dx.types.ResRet.f32 %5912, 2
  %5916 = fadd fast float %5913, -5.000000e-01
  %5917 = fadd fast float %5914, -5.000000e-01
  %5918 = fadd fast float %5915, -5.000000e-01
  %5919 = fmul fast float %4789, 4.000000e+00
  %5920 = fmul fast float %5919, %5902
  %5921 = fmul fast float %5920, %5916
  %5922 = fmul fast float %4790, 4.000000e+00
  %5923 = fmul fast float %5922, %5903
  %5924 = fmul fast float %5923, %5917
  %5925 = fmul fast float %4794, 4.000000e+00
  %5926 = fmul fast float %5925, %5904
  %5927 = fmul fast float %5926, %5918
  %5928 = fadd fast float %5921, %5908
  %5929 = fadd fast float %5924, %5909
  %5930 = fadd fast float %5927, %5910
  %5931 = call float @dx.op.unary.f32(i32 7, float %5928)  ; Saturate(value)
  %5932 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5933 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  br label %5934

; <label>:5934                                    ; preds = %5911, %5843
  %5935 = phi float [ %5931, %5911 ], [ %5908, %5843 ]
  %5936 = phi float [ %5932, %5911 ], [ %5909, %5843 ]
  %5937 = phi float [ %5933, %5911 ], [ %5910, %5843 ]
  %5938 = fmul fast float %5855, 9.843750e-01
  %5939 = fadd fast float %5938, 7.812500e-03
  %5940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %5939, float %4911, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5941 = extractvalue %dx.types.ResRet.f32 %5940, 2
  %5942 = extractvalue %dx.types.ResRet.f32 %5940, 3
  %5943 = fmul fast float %5941, %4789
  %5944 = fmul fast float %5941, %4790
  %5945 = fmul fast float %5941, %4794
  %5946 = fadd fast float %5943, %5942
  %5947 = fadd fast float %5944, %5942
  %5948 = fadd fast float %5945, %5942
  br i1 %4921, label %5949, label %5972

; <label>:5949                                    ; preds = %5934
  %5950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %3879, float %5855, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5951 = extractvalue %dx.types.ResRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.ResRet.f32 %5950, 1
  %5953 = extractvalue %dx.types.ResRet.f32 %5950, 2
  %5954 = fadd fast float %5951, -5.000000e-01
  %5955 = fadd fast float %5952, -5.000000e-01
  %5956 = fadd fast float %5953, -5.000000e-01
  %5957 = fmul fast float %4789, 4.000000e+00
  %5958 = fmul fast float %5957, %5902
  %5959 = fmul fast float %5958, %5954
  %5960 = fmul fast float %4790, 4.000000e+00
  %5961 = fmul fast float %5960, %5903
  %5962 = fmul fast float %5961, %5955
  %5963 = fmul fast float %4794, 4.000000e+00
  %5964 = fmul fast float %5963, %5904
  %5965 = fmul fast float %5964, %5956
  %5966 = fadd fast float %5959, %5946
  %5967 = fadd fast float %5962, %5947
  %5968 = fadd fast float %5965, %5948
  %5969 = call float @dx.op.unary.f32(i32 7, float %5966)  ; Saturate(value)
  %5970 = call float @dx.op.unary.f32(i32 7, float %5967)  ; Saturate(value)
  %5971 = call float @dx.op.unary.f32(i32 7, float %5968)  ; Saturate(value)
  br label %5972

; <label>:5972                                    ; preds = %5949, %5934
  %5973 = phi float [ %5969, %5949 ], [ %5946, %5934 ]
  %5974 = phi float [ %5970, %5949 ], [ %5947, %5934 ]
  %5975 = phi float [ %5971, %5949 ], [ %5948, %5934 ]
  %5976 = call float @dx.op.binary.f32(i32 35, float %5974, float %5975)  ; FMax(a,b)
  %5977 = call float @dx.op.binary.f32(i32 35, float %5973, float %5976)  ; FMax(a,b)
  %5978 = fsub fast float 1.000000e+00, %5977
  %5979 = fmul fast float %5935, %5893
  %5980 = fmul fast float %5936, %5893
  %5981 = fmul fast float %5937, %5893
  %5982 = fsub fast float 1.000000e+00, %5856
  %5983 = bitcast float %5982 to i32
  %5984 = sitofp i32 %5983 to float
  %5985 = fmul fast float %5984, 5.000000e+00
  %5986 = fadd fast float %5985, 0xC1EFBF8940000000
  %5987 = fptosi float %5986 to i32
  %5988 = bitcast i32 %5987 to float
  %5989 = fmul fast float %5988, %3880
  %5990 = fmul fast float %5978, %5989
  %5991 = fmul fast float %5990, %4971
  %5992 = fmul fast float %5990, %4972
  %5993 = fmul fast float %5990, %4973
  %5994 = fadd fast float %5991, %5979
  %5995 = fadd fast float %5992, %5980
  %5996 = fadd fast float %5993, %5981
  %5997 = fmul fast float %5861, %5844
  %5998 = fmul fast float %5997, %5978
  %5999 = fmul fast float %5861, %5845
  %6000 = fmul fast float %5999, %5978
  %6001 = fmul fast float %5861, %5846
  %6002 = fmul fast float %6001, %5978
  %6003 = fmul fast float %5997, %5994
  %6004 = fmul fast float %5999, %5995
  %6005 = fmul fast float %6001, %5996
  %6006 = fadd fast float %5998, %4955
  %6007 = fmul fast float %6006, %3876
  %6008 = fadd fast float %6000, %4956
  %6009 = fmul fast float %6008, %3876
  %6010 = fadd fast float %6002, %4957
  %6011 = fmul fast float %6010, %3876
  %6012 = fadd fast float %6003, %4998
  %6013 = fmul fast float %6012, %3876
  %6014 = fadd fast float %6004, %5001
  %6015 = fmul fast float %6014, %3876
  %6016 = fadd fast float %6005, %5004
  %6017 = fmul fast float %6016, %3876
  br label %6018

; <label>:6018                                    ; preds = %5972, %5838, %4948
  %6019 = phi float [ %4999, %4948 ], [ %4999, %5838 ], [ %6013, %5972 ]
  %6020 = phi float [ %5002, %4948 ], [ %5002, %5838 ], [ %6015, %5972 ]
  %6021 = phi float [ %5005, %4948 ], [ %5005, %5838 ], [ %6017, %5972 ]
  %6022 = phi float [ %4994, %4948 ], [ %4994, %5838 ], [ %6007, %5972 ]
  %6023 = phi float [ %4995, %4948 ], [ %4995, %5838 ], [ %6009, %5972 ]
  %6024 = phi float [ %4996, %4948 ], [ %4996, %5838 ], [ %6011, %5972 ]
  %6025 = fmul fast float %3876, %3876
  %6026 = fsub fast float 1.000000e+00, %6025
  %6027 = call float @dx.op.dot3.f32(i32 55, float %6026, float %6026, float %6026, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6028 = fsub fast float 1.000000e+00, %6027
  %6029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6030 = extractvalue %dx.types.CBufRet.f32 %6029, 0
  %6031 = fmul fast float %6030, %4977
  %6032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6033 = extractvalue %dx.types.CBufRet.f32 %6032, 3
  %6034 = fsub fast float 1.000000e+00, %3884
  %6035 = call float @dx.op.unary.f32(i32 7, float %6034)  ; Saturate(value)
  %6036 = fadd fast float %6024, %3882
  %6037 = fmul fast float %6036, %3884
  %6038 = fmul fast float %6035, %6033
  %6039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6040 = extractvalue %dx.types.CBufRet.f32 %6039, 3
  %6041 = fmul fast float %6022, %4783
  %6042 = fmul fast float %6023, %4784
  %6043 = fmul fast float %6024, %4785
  %6044 = fcmp fast ogt float %85, %216
  %6045 = and i1 %6044, %3923
  %6046 = or i1 %4002, %6045
  %6047 = icmp eq i32 %3922, 2
  %6048 = fcmp fast ole float %85, %216
  %6049 = and i1 %6048, %6047
  %6050 = or i1 %6049, %6046
  br i1 %6045, label %6051, label %6308

; <label>:6051                                    ; preds = %6018
  %6052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6053 = extractvalue %dx.types.CBufRet.f32 %6052, 2
  %6054 = extractvalue %dx.types.CBufRet.f32 %6052, 3
  %6055 = fmul fast float %6053, %94
  %6056 = fmul fast float %6054, %95
  %6057 = call float @dx.op.unary.f32(i32 7, float %6055)  ; Saturate(value)
  %6058 = call float @dx.op.unary.f32(i32 7, float %6056)  ; Saturate(value)
  %6059 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %6057, float %6058, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6060 = extractvalue %dx.types.ResRet.f32 %6059, 0
  %6061 = extractvalue %dx.types.ResRet.f32 %6059, 1
  %6062 = extractvalue %dx.types.ResRet.f32 %6059, 2
  %6063 = extractvalue %dx.types.ResRet.f32 %6059, 3
  %6064 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %6057, float %6058, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6065 = extractvalue %dx.types.ResRet.f32 %6064, 0
  %6066 = extractvalue %dx.types.ResRet.f32 %6064, 1
  %6067 = extractvalue %dx.types.ResRet.f32 %6064, 2
  %6068 = extractvalue %dx.types.ResRet.f32 %6064, 3
  %6069 = call float @dx.op.binary.f32(i32 35, float %6061, float %6062)  ; FMax(a,b)
  %6070 = call float @dx.op.binary.f32(i32 35, float %6060, float %6069)  ; FMax(a,b)
  %6071 = call float @dx.op.binary.f32(i32 35, float %6070, float %6063)  ; FMax(a,b)
  %6072 = call float @dx.op.binary.f32(i32 36, float %6066, float %6067)  ; FMin(a,b)
  %6073 = call float @dx.op.binary.f32(i32 36, float %6065, float %6072)  ; FMin(a,b)
  %6074 = call float @dx.op.binary.f32(i32 36, float %6073, float %6068)  ; FMin(a,b)
  %6075 = fmul fast float %6071, 2.550000e+02
  %6076 = fadd fast float %6075, 0x3F70101020000000
  %6077 = fptoui float %6076 to i32
  %6078 = fmul fast float %6074, 2.550000e+02
  %6079 = fadd fast float %6078, 0x3F70101020000000
  %6080 = fptoui float %6079 to i32
  %6081 = icmp ult i32 %6077, %6080
  br i1 %6081, label %6082, label %6250

; <label>:6082                                    ; preds = %6051
  %6083 = fcmp fast ogt float %84, 9.843750e-01
  %6084 = fadd fast float %85, -4.000000e+00
  %6085 = select i1 %6083, float -4.000000e+00, float %6084
  %6086 = call float @dx.op.binary.f32(i32 35, float %6085, float 0.000000e+00)  ; FMax(a,b)
  %6087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6088 = extractvalue %dx.types.CBufRet.f32 %6087, 0
  %6089 = fadd fast float %6088, %6086
  %6090 = extractvalue %dx.types.CBufRet.f32 %6087, 2
  %6091 = fmul fast float %6089, %6090
  %6092 = call float @dx.op.unary.f32(i32 23, float %6091)  ; Log(value)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6087, 3
  %6094 = fmul fast float %6093, %6092
  %6095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.f32 %6095, 2
  %6097 = fmul fast float %6094, %6096
  %6098 = call float @dx.op.unary.f32(i32 7, float %6097)  ; Saturate(value)
  %6099 = uitofp i32 %6077 to float
  %6100 = uitofp i32 %6080 to float
  %6101 = fadd fast float %6099, 5.000000e-01
  %6102 = fadd fast float %6100, 5.000000e-01
  %6103 = fmul fast float %6096, %6101
  %6104 = fmul fast float %6096, %6102
  %6105 = fadd fast float %6103, 0x3F0FFB4800000000
  %6106 = fadd fast float %6104, 0xBF0FFB4800000000
  %6107 = call float @dx.op.binary.f32(i32 35, float %6098, float %6105)  ; FMax(a,b)
  %6108 = call float @dx.op.binary.f32(i32 36, float %6107, float %6106)  ; FMin(a,b)
  %6109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.f32 %6109, 1
  %6111 = extractvalue %dx.types.CBufRet.f32 %6109, 2
  %6112 = extractvalue %dx.types.CBufRet.f32 %6109, 0
  %6113 = fmul fast float %6110, %6108
  %6114 = fadd fast float %6112, %6113
  %6115 = fadd fast float %6112, %6111
  %6116 = fsub fast float %6110, %6111
  %6117 = fadd fast float %6116, %6112
  %6118 = call float @dx.op.binary.f32(i32 35, float %6114, float %6115)  ; FMax(a,b)
  %6119 = call float @dx.op.binary.f32(i32 36, float %6118, float %6117)  ; FMin(a,b)
  %6120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %6057, float %6058, float %6119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6121 = extractvalue %dx.types.ResRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.ResRet.f32 %6120, 1
  %6123 = extractvalue %dx.types.ResRet.f32 %6120, 2
  %6124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6125 = extractvalue %dx.types.CBufRet.i32 %6124, 0
  %6126 = extractvalue %dx.types.CBufRet.i32 %6124, 1
  %6127 = uitofp i32 %6125 to float
  %6128 = uitofp i32 %6126 to float
  %6129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6130 = extractvalue %dx.types.CBufRet.f32 %6129, 0
  %6131 = extractvalue %dx.types.CBufRet.f32 %6129, 1
  %6132 = fmul fast float %6127, %6057
  %6133 = fmul fast float %6128, %6058
  %6134 = fadd fast float %6132, -5.000000e-01
  %6135 = fadd fast float %6133, -5.000000e-01
  %6136 = call float @dx.op.unary.f32(i32 22, float %6134)  ; Frc(value)
  %6137 = call float @dx.op.unary.f32(i32 22, float %6135)  ; Frc(value)
  %6138 = fmul fast float %6136, %6136
  %6139 = fmul fast float %6138, %6136
  %6140 = fsub fast float 3.000000e+00, %6136
  %6141 = fmul fast float %6138, %6140
  %6142 = fmul fast float %6136, 3.000000e+00
  %6143 = fmul fast float %6139, 3.000000e+00
  %6144 = fmul fast float %6138, 6.000000e+00
  %6145 = fsub fast float %6143, %6144
  %6146 = fadd fast float %6145, 4.000000e+00
  %6147 = fmul fast float %6146, 0x3FC5555560000000
  %6148 = fmul fast float %6139, -3.000000e+00
  %6149 = fadd fast float %6138, %6136
  %6150 = fmul fast float %6149, 3.000000e+00
  %6151 = fadd fast float %6148, 1.000000e+00
  %6152 = fadd fast float %6151, %6150
  %6153 = fmul fast float %6139, 0x3FC5555560000000
  %6154 = fmul fast float %6137, %6137
  %6155 = fmul fast float %6154, %6137
  %6156 = fsub fast float 3.000000e+00, %6137
  %6157 = fmul fast float %6154, %6156
  %6158 = fmul fast float %6137, 3.000000e+00
  %6159 = fmul fast float %6155, 3.000000e+00
  %6160 = fmul fast float %6154, 6.000000e+00
  %6161 = fsub fast float %6159, %6160
  %6162 = fadd fast float %6161, 4.000000e+00
  %6163 = fmul fast float %6162, 0x3FC5555560000000
  %6164 = fmul fast float %6155, -3.000000e+00
  %6165 = fadd fast float %6154, %6137
  %6166 = fmul fast float %6165, 3.000000e+00
  %6167 = fadd fast float %6164, 1.000000e+00
  %6168 = fadd fast float %6167, %6166
  %6169 = fmul fast float %6155, 0x3FC5555560000000
  %6170 = fadd fast float %6136, 1.000000e+00
  %6171 = fsub fast float 1.000000e+00, %6142
  %6172 = fadd fast float %6171, %6141
  %6173 = fadd fast float %6172, %6146
  %6174 = fmul fast float %6173, 0x3FC5555560000000
  %6175 = fdiv fast float %6147, %6174
  %6176 = fsub fast float %6170, %6175
  %6177 = fsub fast float 1.000000e+00, %6136
  %6178 = fadd fast float %6152, %6139
  %6179 = fmul fast float %6178, 0x3FC5555560000000
  %6180 = fdiv fast float %6153, %6179
  %6181 = fadd fast float %6177, %6180
  %6182 = fadd fast float %6137, 1.000000e+00
  %6183 = fsub fast float 1.000000e+00, %6158
  %6184 = fadd fast float %6183, %6157
  %6185 = fadd fast float %6184, %6162
  %6186 = fmul fast float %6185, 0x3FC5555560000000
  %6187 = fdiv fast float %6163, %6186
  %6188 = fsub fast float %6182, %6187
  %6189 = fsub fast float 1.000000e+00, %6137
  %6190 = fadd fast float %6168, %6155
  %6191 = fmul fast float %6190, 0x3FC5555560000000
  %6192 = fdiv fast float %6169, %6191
  %6193 = fadd fast float %6192, %6189
  %6194 = fmul fast float %6176, %6130
  %6195 = fsub fast float %6057, %6194
  %6196 = fmul fast float %6181, %6130
  %6197 = fadd fast float %6196, %6057
  %6198 = fmul fast float %6193, %6131
  %6199 = fadd fast float %6198, %6058
  %6200 = fmul fast float %6188, %6131
  %6201 = fsub fast float %6058, %6200
  %6202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %6195, float %6201, float %6119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6203 = extractvalue %dx.types.ResRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.ResRet.f32 %6202, 1
  %6205 = extractvalue %dx.types.ResRet.f32 %6202, 2
  %6206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %6197, float %6201, float %6119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6207 = extractvalue %dx.types.ResRet.f32 %6206, 0
  %6208 = extractvalue %dx.types.ResRet.f32 %6206, 1
  %6209 = extractvalue %dx.types.ResRet.f32 %6206, 2
  %6210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %6195, float %6199, float %6119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6211 = extractvalue %dx.types.ResRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.ResRet.f32 %6210, 1
  %6213 = extractvalue %dx.types.ResRet.f32 %6210, 2
  %6214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %6197, float %6199, float %6119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6215 = extractvalue %dx.types.ResRet.f32 %6214, 0
  %6216 = extractvalue %dx.types.ResRet.f32 %6214, 1
  %6217 = extractvalue %dx.types.ResRet.f32 %6214, 2
  %6218 = fsub fast float %6211, %6203
  %6219 = fsub fast float %6212, %6204
  %6220 = fsub fast float %6213, %6205
  %6221 = fmul fast float %6218, %6191
  %6222 = fmul fast float %6219, %6191
  %6223 = fmul fast float %6220, %6191
  %6224 = fadd fast float %6221, %6203
  %6225 = fadd fast float %6222, %6204
  %6226 = fadd fast float %6223, %6205
  %6227 = fsub fast float %6215, %6207
  %6228 = fsub fast float %6216, %6208
  %6229 = fsub fast float %6217, %6209
  %6230 = fmul fast float %6227, %6191
  %6231 = fmul fast float %6228, %6191
  %6232 = fmul fast float %6229, %6191
  %6233 = fsub fast float %6207, %6224
  %6234 = fadd fast float %6233, %6230
  %6235 = fsub fast float %6208, %6225
  %6236 = fadd fast float %6235, %6231
  %6237 = fsub fast float %6209, %6226
  %6238 = fadd fast float %6237, %6232
  %6239 = fmul fast float %6234, %6179
  %6240 = fmul fast float %6236, %6179
  %6241 = fmul fast float %6238, %6179
  %6242 = fadd fast float %6239, %6224
  %6243 = fadd fast float %6240, %6225
  %6244 = fadd fast float %6241, %6226
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 1
  %6247 = fmul fast float %6242, %6246
  %6248 = fmul fast float %6243, %6246
  %6249 = fmul fast float %6244, %6246
  br label %6250

; <label>:6250                                    ; preds = %6082, %6051
  %6251 = phi float [ %6121, %6082 ], [ 1.000000e+00, %6051 ]
  %6252 = phi float [ %6122, %6082 ], [ 1.000000e+00, %6051 ]
  %6253 = phi float [ %6123, %6082 ], [ 1.000000e+00, %6051 ]
  %6254 = phi float [ %6247, %6082 ], [ 0.000000e+00, %6051 ]
  %6255 = phi float [ %6248, %6082 ], [ 0.000000e+00, %6051 ]
  %6256 = phi float [ %6249, %6082 ], [ 0.000000e+00, %6051 ]
  %6257 = fmul fast float %6254, %6028
  %6258 = fmul fast float %6255, %6028
  %6259 = fmul fast float %6256, %6028
  %6260 = call float @dx.op.dot3.f32(i32 55, float %6251, float %6252, float %6253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6261 = call float @dx.op.dot3.f32(i32 55, float %6257, float %6258, float %6259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6262 = select i1 %255, float %6260, float %6251
  %6263 = select i1 %255, float %6260, float %6252
  %6264 = select i1 %255, float 1.000000e+00, float %6253
  %6265 = select i1 %255, float %6261, float %6257
  %6266 = select i1 %255, float 0.000000e+00, float %6258
  %6267 = select i1 %255, float 0.000000e+00, float %6259
  %6268 = fmul fast float %6262, %6041
  %6269 = fmul fast float %6263, %6042
  %6270 = fmul fast float %6264, %6043
  %6271 = fadd fast float %6268, %6265
  %6272 = fadd fast float %6269, %6266
  %6273 = fadd fast float %6267, %6270
  %6274 = fmul fast float %6262, %6019
  %6275 = fmul fast float %6263, %6020
  %6276 = fmul fast float %6264, %6021
  %6277 = fmul fast float %130, %6053
  %6278 = fmul fast float %132, %6054
  %6279 = fsub fast float 1.000000e+00, %6277
  %6280 = fsub fast float 1.000000e+00, %6278
  %6281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6282 = extractvalue %dx.types.CBufRet.f32 %6281, 0
  %6283 = extractvalue %dx.types.CBufRet.f32 %6281, 1
  %6284 = extractvalue %dx.types.CBufRet.f32 %6281, 2
  %6285 = fmul fast float %6279, %6282
  %6286 = fmul fast float %6279, %6283
  %6287 = fmul fast float %6279, %6284
  %6288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6289 = extractvalue %dx.types.CBufRet.f32 %6288, 0
  %6290 = extractvalue %dx.types.CBufRet.f32 %6288, 1
  %6291 = extractvalue %dx.types.CBufRet.f32 %6288, 2
  %6292 = fmul fast float %6280, %6289
  %6293 = fmul fast float %6280, %6290
  %6294 = fmul fast float %6280, %6291
  %6295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6296 = extractvalue %dx.types.CBufRet.f32 %6295, 0
  %6297 = extractvalue %dx.types.CBufRet.f32 %6295, 1
  %6298 = extractvalue %dx.types.CBufRet.f32 %6295, 2
  %6299 = fadd fast float %6292, %6296
  %6300 = fadd fast float %6299, %6285
  %6301 = fadd fast float %6293, %6297
  %6302 = fadd fast float %6301, %6286
  %6303 = fadd fast float %6294, %6298
  %6304 = fadd fast float %6303, %6287
  %6305 = fmul fast float %6300, %216
  %6306 = fmul fast float %6302, %216
  %6307 = fmul fast float %6304, %216
  br label %6308

; <label>:6308                                    ; preds = %6250, %6018
  %6309 = phi float [ %6305, %6250 ], [ %181, %6018 ]
  %6310 = phi float [ %6306, %6250 ], [ %182, %6018 ]
  %6311 = phi float [ %6307, %6250 ], [ %183, %6018 ]
  %6312 = phi float [ %216, %6250 ], [ %85, %6018 ]
  %6313 = phi float [ %6271, %6250 ], [ %6041, %6018 ]
  %6314 = phi float [ %6272, %6250 ], [ %6042, %6018 ]
  %6315 = phi float [ %6273, %6250 ], [ %6043, %6018 ]
  %6316 = phi float [ %6274, %6250 ], [ %6019, %6018 ]
  %6317 = phi float [ %6275, %6250 ], [ %6020, %6018 ]
  %6318 = phi float [ %6276, %6250 ], [ %6021, %6018 ]
  %6319 = phi float [ %6251, %6250 ], [ 1.000000e+00, %6018 ]
  br i1 %6050, label %7474, label %6320

; <label>:6320                                    ; preds = %6308
  %6321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6322 = extractvalue %dx.types.CBufRet.f32 %6321, 0
  %6323 = extractvalue %dx.types.CBufRet.f32 %6321, 1
  %6324 = extractvalue %dx.types.CBufRet.f32 %6321, 2
  %6325 = extractvalue %dx.types.CBufRet.f32 %6321, 3
  %6326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6327 = extractvalue %dx.types.CBufRet.f32 %6326, 0
  %6328 = extractvalue %dx.types.CBufRet.f32 %6326, 1
  %6329 = extractvalue %dx.types.CBufRet.f32 %6326, 2
  %6330 = extractvalue %dx.types.CBufRet.f32 %6326, 3
  %6331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6332 = extractvalue %dx.types.CBufRet.f32 %6331, 0
  %6333 = extractvalue %dx.types.CBufRet.f32 %6331, 1
  %6334 = extractvalue %dx.types.CBufRet.f32 %6331, 2
  %6335 = extractvalue %dx.types.CBufRet.f32 %6331, 3
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 0
  %6338 = extractvalue %dx.types.CBufRet.f32 %6336, 1
  %6339 = extractvalue %dx.types.CBufRet.f32 %6336, 2
  %6340 = extractvalue %dx.types.CBufRet.f32 %6336, 3
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 3
  %6343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6344 = extractvalue %dx.types.CBufRet.f32 %6343, 3
  %6345 = extractvalue %dx.types.CBufRet.f32 %6343, 0
  %6346 = extractvalue %dx.types.CBufRet.f32 %6343, 1
  %6347 = extractvalue %dx.types.CBufRet.f32 %6343, 2
  %6348 = fcmp fast olt float %6347, -5.000000e-01
  %6349 = call float @dx.op.dot3.f32(i32 55, float %6309, float %6310, float %6311, float %6309, float %6310, float %6311)  ; Dot3(ax,ay,az,bx,by,bz)
  %6350 = call float @dx.op.unary.f32(i32 25, float %6349)  ; Rsqrt(value)
  %6351 = fmul fast float %6350, %6349
  %6352 = fmul fast float %6350, %6309
  %6353 = fmul fast float %6350, %6310
  %6354 = fmul fast float %6350, %6311
  %6355 = fadd fast float %6351, %6325
  %6356 = call float @dx.op.dot3.f32(i32 55, float %6352, float %6353, float %6354, float %6322, float %6323, float %6324)  ; Dot3(ax,ay,az,bx,by,bz)
  %6357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6358 = extractvalue %dx.types.CBufRet.i32 %6357, 1
  %6359 = and i32 %6358, 1
  %6360 = icmp ne i32 %6359, 0
  %6361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6362 = extractvalue %dx.types.CBufRet.f32 %6361, 2
  %6363 = fcmp fast ogt float %6362, 0.000000e+00
  %6364 = and i1 %6360, %6363
  br i1 %6364, label %6365, label %6771, !dx.controlflow.hints !109

; <label>:6365                                    ; preds = %6320
  %6366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6367 = extractvalue %dx.types.CBufRet.f32 %6366, 3
  %6368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6369 = extractvalue %dx.types.CBufRet.f32 %6368, 2
  %6370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6371 = extractvalue %dx.types.CBufRet.f32 %6370, 2
  %6372 = fsub fast float %6369, %6371
  %6373 = and i32 %6358, 2
  %6374 = extractvalue %dx.types.CBufRet.i32 %6357, 0
  %6375 = call i32 @dx.op.binary.i32(i32 40, i32 %6374, i32 3)  ; UMin(a,b)
  %6376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6377 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  %6378 = extractvalue %dx.types.CBufRet.f32 %6376, 1
  %6379 = extractvalue %dx.types.CBufRet.f32 %6370, 0
  %6380 = extractvalue %dx.types.CBufRet.f32 %6370, 1
  %6381 = fsub fast float %6377, %6379
  %6382 = fsub fast float %6378, %6380
  %6383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  %6385 = fcmp fast ogt float %6384, 0.000000e+00
  %6386 = fsub fast float -0.000000e+00, %6381
  %6387 = fsub fast float -0.000000e+00, %6382
  %6388 = call float @dx.op.dot2.f32(i32 54, float %6352, float %6353, float %6352, float %6353)  ; Dot2(ax,ay,bx,by)
  %6389 = call float @dx.op.dot2.f32(i32 54, float %6352, float %6353, float %6386, float %6387)  ; Dot2(ax,ay,bx,by)
  %6390 = fmul fast float %6389, 2.000000e+00
  %6391 = call float @dx.op.dot2.f32(i32 54, float %6386, float %6387, float %6386, float %6387)  ; Dot2(ax,ay,bx,by)
  %6392 = fmul fast float %6384, %6384
  %6393 = fsub fast float %6391, %6392
  %6394 = fmul fast float %6390, %6390
  %6395 = fmul fast float %6388, 4.000000e+00
  %6396 = fmul fast float %6395, %6393
  %6397 = fsub fast float %6394, %6396
  %6398 = fcmp fast ogt float %6397, 0.000000e+00
  br i1 %6398, label %6399, label %6414

; <label>:6399                                    ; preds = %6365
  %6400 = fcmp fast ogt float %6390, 0.000000e+00
  %6401 = call float @dx.op.unary.f32(i32 24, float %6397)  ; Sqrt(value)
  %6402 = fsub fast float -0.000000e+00, %6401
  %6403 = select i1 %6400, float %6401, float %6402
  %6404 = fadd fast float %6403, %6390
  %6405 = fmul float %6404, -5.000000e-01
  %6406 = fdiv fast float %6405, %6388
  %6407 = call float @dx.op.binary.f32(i32 35, float %6406, float 0.000000e+00)  ; FMax(a,b)
  %6408 = call float @dx.op.binary.f32(i32 36, float %6351, float %6407)  ; FMin(a,b)
  %6409 = fdiv fast float %6393, %6405
  %6410 = call float @dx.op.binary.f32(i32 35, float %6409, float 0.000000e+00)  ; FMax(a,b)
  %6411 = call float @dx.op.binary.f32(i32 36, float %6351, float %6410)  ; FMin(a,b)
  %6412 = call float @dx.op.binary.f32(i32 36, float %6408, float %6411)  ; FMin(a,b)
  %6413 = call float @dx.op.binary.f32(i32 35, float %6408, float %6411)  ; FMax(a,b)
  br label %6414

; <label>:6414                                    ; preds = %6399, %6365
  %6415 = phi float [ %6413, %6399 ], [ -1.000000e+00, %6365 ]
  %6416 = phi float [ %6412, %6399 ], [ -1.000000e+00, %6365 ]
  %6417 = phi i1 [ true, %6399 ], [ false, %6365 ]
  %6418 = and i1 %6385, %6417
  br i1 %6418, label %6419, label %6421

; <label>:6419                                    ; preds = %6414
  %6420 = fcmp fast oeq float %6416, %6415
  br i1 %6420, label %6724, label %6422

; <label>:6421                                    ; preds = %6414
  br i1 %6385, label %6724, label %6422

; <label>:6422                                    ; preds = %6421, %6419
  %6423 = phi float [ %6351, %6421 ], [ %6415, %6419 ]
  %6424 = phi float [ 0.000000e+00, %6421 ], [ %6416, %6419 ]
  %6425 = icmp ne i32 %6373, 0
  %6426 = fmul fast float %6423, %6354
  %6427 = fadd fast float %6426, %6367
  %6428 = fmul fast float %6427, %6423
  %6429 = select i1 %6425, float 0.000000e+00, float %6428
  %6430 = fcmp fast oeq float %6354, 0.000000e+00
  %6431 = fdiv fast float %6372, %6354
  %6432 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6431)  ; FMax(a,b)
  %6433 = select i1 %6430, float %6423, float %6432
  %6434 = call float @dx.op.binary.f32(i32 36, float %6423, float %6433)  ; FMin(a,b)
  %6435 = fcmp fast ogt float %6354, 0.000000e+00
  %6436 = fcmp fast olt float %6372, 0.000000e+00
  br i1 %6435, label %6437, label %6494

; <label>:6437                                    ; preds = %6422
  %6438 = icmp eq i32 %6373, 0
  br i1 %6436, label %6439, label %6483

; <label>:6439                                    ; preds = %6437
  %6440 = select i1 %6438, float %6423, float 0.000000e+00
  %6441 = fsub fast float -0.000000e+00, %6440
  %6442 = call float @dx.op.unary.f32(i32 6, float %6441)  ; FAbs(value)
  %6443 = fmul fast float %6440, %6354
  %6444 = fadd fast float %6443, %6367
  %6445 = fmul fast float %6442, %6444
  %6446 = fsub fast float %6429, %6445
  %6447 = fsub fast float %6423, %6442
  %6448 = select i1 %6438, float %6447, float 0.000000e+00
  %6449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.f32 %6449, 0
  %6451 = extractvalue %dx.types.CBufRet.f32 %6449, 1
  %6452 = extractvalue %dx.types.CBufRet.f32 %6449, 2
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6456 = extractvalue %dx.types.CBufRet.f32 %6453, 2
  %6457 = extractvalue %dx.types.CBufRet.f32 %6453, 3
  %6458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6459 = extractvalue %dx.types.CBufRet.f32 %6458, 3
  %6460 = call float @dx.op.binary.f32(i32 36, float %6446, float %6459)  ; FMin(a,b)
  %6461 = fmul fast float %6457, %6448
  %6462 = call float @dx.op.unary.f32(i32 7, float %6461)  ; Saturate(value)
  %6463 = fsub fast float %6454, %6450
  %6464 = fsub fast float %6455, %6451
  %6465 = fsub fast float %6456, %6452
  %6466 = fmul fast float %6462, %6463
  %6467 = fmul fast float %6462, %6464
  %6468 = fmul fast float %6462, %6465
  %6469 = fadd fast float %6466, %6450
  %6470 = fadd fast float %6467, %6451
  %6471 = fadd fast float %6468, %6452
  %6472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6473 = extractvalue %dx.types.CBufRet.f32 %6472, 0
  %6474 = extractvalue %dx.types.CBufRet.f32 %6472, 1
  %6475 = fadd fast float %6474, %6473
  %6476 = call float @dx.op.unary.f32(i32 7, float %6475)  ; Saturate(value)
  %6477 = extractvalue %dx.types.CBufRet.f32 %6472, 2
  %6478 = extractvalue %dx.types.CBufRet.f32 %6472, 3
  %6479 = fadd fast float %6478, %6477
  %6480 = call float @dx.op.unary.f32(i32 7, float %6479)  ; Saturate(value)
  %6481 = fmul fast float %6476, %6460
  %6482 = fmul fast float %6481, %6480
  br label %6724

; <label>:6483                                    ; preds = %6437
  br i1 %6438, label %6484, label %6505

; <label>:6484                                    ; preds = %6483
  %6485 = call float @dx.op.binary.f32(i32 36, float %6434, float %6424)  ; FMin(a,b)
  %6486 = fsub fast float %6434, %6485
  %6487 = fsub fast float %6486, %6423
  %6488 = call float @dx.op.unary.f32(i32 6, float %6487)  ; FAbs(value)
  %6489 = fadd fast float %6486, %6423
  %6490 = fmul fast float %6489, %6354
  %6491 = fadd fast float %6490, %6367
  %6492 = fmul fast float %6491, %6488
  %6493 = fsub fast float %6429, %6492
  br label %6505

; <label>:6494                                    ; preds = %6422
  br i1 %6436, label %6495, label %6505

; <label>:6495                                    ; preds = %6494
  %6496 = call float @dx.op.binary.f32(i32 35, float %6424, float %6434)  ; FMax(a,b)
  %6497 = icmp eq i32 %6373, 0
  %6498 = select i1 %6497, float %6434, float 0.000000e+00
  %6499 = fsub fast float -0.000000e+00, %6498
  %6500 = call float @dx.op.unary.f32(i32 6, float %6499)  ; FAbs(value)
  %6501 = fmul fast float %6498, %6354
  %6502 = fadd fast float %6501, %6367
  %6503 = fmul fast float %6500, %6502
  %6504 = fsub fast float %6429, %6503
  br label %6505

; <label>:6505                                    ; preds = %6495, %6494, %6484, %6483
  %6506 = phi float [ %6424, %6483 ], [ %6424, %6484 ], [ %6496, %6495 ], [ %6424, %6494 ]
  %6507 = phi float [ 0.000000e+00, %6483 ], [ %6488, %6484 ], [ %6500, %6495 ], [ 0.000000e+00, %6494 ]
  %6508 = phi float [ %6429, %6483 ], [ %6493, %6484 ], [ %6504, %6495 ], [ %6429, %6494 ]
  %6509 = phi float [ %6434, %6483 ], [ %6434, %6484 ], [ %6423, %6495 ], [ %6423, %6494 ]
  %6510 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 0
  store float -1.000000e+00, float* %6510, align 4, !tbaa !110, !noalias !112
  %6511 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 1
  store float -1.000000e+00, float* %6511, align 4, !tbaa !110, !noalias !112
  %6512 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 2
  store float -1.000000e+00, float* %6512, align 4, !tbaa !110, !noalias !112
  %6513 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %6513, align 4, !tbaa !110, !noalias !112
  %6514 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %6514, align 4, !tbaa !110, !noalias !112
  %6515 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %6515, align 4, !tbaa !110, !noalias !112
  %6516 = icmp sgt i32 %6375, 0
  br i1 %6516, label %6517, label %6578

; <label>:6517                                    ; preds = %6505
  br label %6518

; <label>:6518                                    ; preds = %6567, %6517
  %6519 = phi i32 [ %6568, %6567 ], [ 0, %6517 ]
  %6520 = phi i32 [ %6569, %6567 ], [ 0, %6517 ]
  %6521 = add nuw i32 %6520, 171
  %6522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %6521)  ; CBufferLoadLegacy(handle,regIndex)
  %6523 = extractvalue %dx.types.CBufRet.f32 %6522, 0
  %6524 = extractvalue %dx.types.CBufRet.f32 %6522, 1
  %6525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6526 = extractvalue %dx.types.CBufRet.f32 %6525, 0
  %6527 = extractvalue %dx.types.CBufRet.f32 %6525, 1
  %6528 = fsub fast float %6523, %6526
  %6529 = fsub fast float %6524, %6527
  %6530 = extractvalue %dx.types.CBufRet.f32 %6522, 2
  %6531 = fsub fast float -0.000000e+00, %6528
  %6532 = fsub fast float -0.000000e+00, %6529
  %6533 = call float @dx.op.dot2.f32(i32 54, float %6352, float %6353, float %6531, float %6532)  ; Dot2(ax,ay,bx,by)
  %6534 = fmul fast float %6533, 2.000000e+00
  %6535 = call float @dx.op.dot2.f32(i32 54, float %6531, float %6532, float %6531, float %6532)  ; Dot2(ax,ay,bx,by)
  %6536 = fmul fast float %6530, %6530
  %6537 = fsub fast float %6535, %6536
  %6538 = fmul fast float %6534, %6534
  %6539 = fmul fast float %6395, %6537
  %6540 = fsub fast float %6538, %6539
  %6541 = fcmp fast ogt float %6540, 0.000000e+00
  br i1 %6541, label %6542, label %6557

; <label>:6542                                    ; preds = %6518
  %6543 = fcmp fast ogt float %6534, 0.000000e+00
  %6544 = call float @dx.op.unary.f32(i32 24, float %6540)  ; Sqrt(value)
  %6545 = fsub fast float -0.000000e+00, %6544
  %6546 = select i1 %6543, float %6544, float %6545
  %6547 = fadd fast float %6546, %6534
  %6548 = fmul float %6547, -5.000000e-01
  %6549 = fdiv fast float %6548, %6388
  %6550 = call float @dx.op.binary.f32(i32 35, float %6549, float 0.000000e+00)  ; FMax(a,b)
  %6551 = call float @dx.op.binary.f32(i32 36, float %6423, float %6550)  ; FMin(a,b)
  %6552 = fdiv fast float %6537, %6548
  %6553 = call float @dx.op.binary.f32(i32 35, float %6552, float 0.000000e+00)  ; FMax(a,b)
  %6554 = call float @dx.op.binary.f32(i32 36, float %6423, float %6553)  ; FMin(a,b)
  %6555 = call float @dx.op.binary.f32(i32 36, float %6551, float %6554)  ; FMin(a,b)
  %6556 = call float @dx.op.binary.f32(i32 35, float %6551, float %6554)  ; FMax(a,b)
  br label %6557

; <label>:6557                                    ; preds = %6542, %6518
  %6558 = phi float [ %6556, %6542 ], [ -1.000000e+00, %6518 ]
  %6559 = phi float [ %6555, %6542 ], [ -1.000000e+00, %6518 ]
  %6560 = phi i1 [ true, %6542 ], [ false, %6518 ]
  br i1 %6560, label %6561, label %6567

; <label>:6561                                    ; preds = %6557
  %6562 = call float @dx.op.binary.f32(i32 35, float %6506, float %6559)  ; FMax(a,b)
  %6563 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %6520
  store float %6562, float* %6563, align 4, !tbaa !110, !noalias !112
  %6564 = call float @dx.op.binary.f32(i32 35, float %6506, float %6558)  ; FMax(a,b)
  %6565 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6520
  store float %6564, float* %6565, align 4, !tbaa !110, !noalias !112
  %6566 = add nsw i32 %6519, 1
  br label %6567

; <label>:6567                                    ; preds = %6561, %6557
  %6568 = phi i32 [ %6566, %6561 ], [ %6519, %6557 ]
  %6569 = add nuw nsw i32 %6520, 1
  %6570 = icmp eq i32 %6569, %6375
  br i1 %6570, label %6571, label %6518

; <label>:6571                                    ; preds = %6567
  %6572 = load float, float* %6512, align 4, !tbaa !110, !alias.scope !128, !noalias !131
  %6573 = load float, float* %6511, align 4, !tbaa !110, !alias.scope !134, !noalias !135
  %6574 = load float, float* %6510, align 4, !tbaa !110, !alias.scope !136, !noalias !137
  %6575 = load float, float* %6515, align 4, !tbaa !110, !alias.scope !138, !noalias !141
  %6576 = load float, float* %6514, align 4, !tbaa !110, !alias.scope !144, !noalias !145
  %6577 = load float, float* %6513, align 4, !tbaa !110, !alias.scope !146, !noalias !147
  br label %6578

; <label>:6578                                    ; preds = %6571, %6505
  %6579 = phi float [ -1.000000e+00, %6505 ], [ %6577, %6571 ]
  %6580 = phi float [ -1.000000e+00, %6505 ], [ %6576, %6571 ]
  %6581 = phi float [ -1.000000e+00, %6505 ], [ %6575, %6571 ]
  %6582 = phi float [ -1.000000e+00, %6505 ], [ %6574, %6571 ]
  %6583 = phi float [ -1.000000e+00, %6505 ], [ %6573, %6571 ]
  %6584 = phi float [ -1.000000e+00, %6505 ], [ %6572, %6571 ]
  %6585 = phi i32 [ 0, %6505 ], [ %6568, %6571 ]
  %6586 = call float @dx.op.binary.f32(i32 36, float %6583, float %6584)  ; FMin(a,b)
  %6587 = call float @dx.op.binary.f32(i32 36, float %6582, float %6586)  ; FMin(a,b)
  %6588 = call float @dx.op.binary.f32(i32 35, float %6582, float %6583)  ; FMax(a,b)
  %6589 = call float @dx.op.binary.f32(i32 36, float %6588, float %6584)  ; FMin(a,b)
  %6590 = call float @dx.op.binary.f32(i32 36, float %6582, float %6583)  ; FMin(a,b)
  %6591 = call float @dx.op.binary.f32(i32 35, float %6590, float %6589)  ; FMax(a,b)
  %6592 = call float @dx.op.binary.f32(i32 35, float %6583, float %6584)  ; FMax(a,b)
  %6593 = call float @dx.op.binary.f32(i32 35, float %6582, float %6592)  ; FMax(a,b)
  store float %6587, float* %6510, align 4, !tbaa !110, !alias.scope !136, !noalias !137
  store float %6591, float* %6511, align 4, !tbaa !110, !alias.scope !134, !noalias !135
  store float %6593, float* %6512, align 4, !tbaa !110, !alias.scope !128, !noalias !131
  %6594 = call float @dx.op.binary.f32(i32 36, float %6580, float %6581)  ; FMin(a,b)
  %6595 = call float @dx.op.binary.f32(i32 36, float %6579, float %6594)  ; FMin(a,b)
  %6596 = call float @dx.op.binary.f32(i32 35, float %6579, float %6580)  ; FMax(a,b)
  %6597 = call float @dx.op.binary.f32(i32 36, float %6596, float %6581)  ; FMin(a,b)
  %6598 = call float @dx.op.binary.f32(i32 36, float %6579, float %6580)  ; FMin(a,b)
  %6599 = call float @dx.op.binary.f32(i32 35, float %6598, float %6597)  ; FMax(a,b)
  %6600 = call float @dx.op.binary.f32(i32 35, float %6580, float %6581)  ; FMax(a,b)
  %6601 = call float @dx.op.binary.f32(i32 35, float %6579, float %6600)  ; FMax(a,b)
  store float %6595, float* %6513, align 4, !tbaa !110, !alias.scope !146, !noalias !147
  store float %6599, float* %6514, align 4, !tbaa !110, !alias.scope !144, !noalias !145
  store float %6601, float* %6515, align 4, !tbaa !110, !alias.scope !138, !noalias !141
  %6602 = sub nsw i32 3, %6585
  %6603 = icmp sgt i32 %6602, 2
  br i1 %6603, label %6604, label %6642

; <label>:6604                                    ; preds = %6578
  %6605 = icmp eq i32 %6373, 0
  %6606 = fsub fast float %6423, %6507
  %6607 = select i1 %6605, float %6606, float %6507
  %6608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6609 = extractvalue %dx.types.CBufRet.f32 %6608, 0
  %6610 = extractvalue %dx.types.CBufRet.f32 %6608, 1
  %6611 = extractvalue %dx.types.CBufRet.f32 %6608, 2
  %6612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6613 = extractvalue %dx.types.CBufRet.f32 %6612, 0
  %6614 = extractvalue %dx.types.CBufRet.f32 %6612, 1
  %6615 = extractvalue %dx.types.CBufRet.f32 %6612, 2
  %6616 = extractvalue %dx.types.CBufRet.f32 %6612, 3
  %6617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6618 = extractvalue %dx.types.CBufRet.f32 %6617, 3
  %6619 = call float @dx.op.binary.f32(i32 36, float %6508, float %6618)  ; FMin(a,b)
  %6620 = fmul fast float %6616, %6607
  %6621 = call float @dx.op.unary.f32(i32 7, float %6620)  ; Saturate(value)
  %6622 = fsub fast float %6613, %6609
  %6623 = fsub fast float %6614, %6610
  %6624 = fsub fast float %6615, %6611
  %6625 = fmul fast float %6621, %6622
  %6626 = fmul fast float %6621, %6623
  %6627 = fmul fast float %6621, %6624
  %6628 = fadd fast float %6625, %6609
  %6629 = fadd fast float %6626, %6610
  %6630 = fadd fast float %6627, %6611
  %6631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6632 = extractvalue %dx.types.CBufRet.f32 %6631, 0
  %6633 = extractvalue %dx.types.CBufRet.f32 %6631, 1
  %6634 = fadd fast float %6633, %6632
  %6635 = call float @dx.op.unary.f32(i32 7, float %6634)  ; Saturate(value)
  %6636 = extractvalue %dx.types.CBufRet.f32 %6631, 2
  %6637 = extractvalue %dx.types.CBufRet.f32 %6631, 3
  %6638 = fadd fast float %6637, %6636
  %6639 = call float @dx.op.unary.f32(i32 7, float %6638)  ; Saturate(value)
  %6640 = fmul fast float %6635, %6619
  %6641 = fmul fast float %6640, %6639
  br label %6724

; <label>:6642                                    ; preds = %6578
  %6643 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %6602
  %6644 = load float, float* %6643, align 4, !tbaa !110, !noalias !112
  %6645 = fcmp fast olt float %6644, %6509
  %6646 = icmp sgt i32 %6585, 0
  %6647 = and i1 %6646, %6645
  br i1 %6647, label %6648, label %6685

; <label>:6648                                    ; preds = %6642
  br label %6649

; <label>:6649                                    ; preds = %6678, %6648
  %6650 = phi float [ %6679, %6678 ], [ %6507, %6648 ]
  %6651 = phi float [ %6680, %6678 ], [ %6508, %6648 ]
  %6652 = phi float [ %6660, %6678 ], [ %6644, %6648 ]
  %6653 = phi i32 [ %6657, %6678 ], [ %6602, %6648 ]
  %6654 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6653
  %6655 = load float, float* %6654, align 4, !tbaa !110, !noalias !112
  %6656 = icmp slt i32 %6653, 2
  %6657 = add nsw i32 %6653, 1
  %6658 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %6657
  %6659 = load float, float* %6658, align 4, !tbaa !110, !noalias !112
  %6660 = select i1 %6656, float %6659, float %6423
  %6661 = call float @dx.op.binary.f32(i32 36, float %6660, float %6655)  ; FMin(a,b)
  %6662 = call float @dx.op.binary.f32(i32 36, float %6509, float %6661)  ; FMin(a,b)
  %6663 = icmp eq i32 %6373, 0
  %6664 = fadd fast float %6662, %6652
  %6665 = fmul fast float %6664, %6354
  %6666 = fadd fast float %6665, %6367
  br i1 %6663, label %6672, label %6667

; <label>:6667                                    ; preds = %6649
  %6668 = fsub fast float %6662, %6652
  %6669 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6668)  ; FMax(a,b)
  %6670 = fmul fast float %6669, %6666
  %6671 = fadd fast float %6670, %6651
  br label %6678

; <label>:6672                                    ; preds = %6649
  %6673 = fsub fast float %6652, %6662
  %6674 = call float @dx.op.unary.f32(i32 6, float %6673)  ; FAbs(value)
  %6675 = fadd fast float %6674, %6650
  %6676 = fmul fast float %6674, %6666
  %6677 = fsub fast float %6651, %6676
  br label %6678

; <label>:6678                                    ; preds = %6672, %6667
  %6679 = phi float [ %6669, %6667 ], [ %6675, %6672 ]
  %6680 = phi float [ %6671, %6667 ], [ %6677, %6672 ]
  %6681 = fcmp fast olt float %6660, %6509
  %6682 = icmp slt i32 %6657, 3
  %6683 = and i1 %6682, %6681
  br i1 %6683, label %6649, label %6684

; <label>:6684                                    ; preds = %6678
  br label %6685

; <label>:6685                                    ; preds = %6684, %6642
  %6686 = phi float [ %6507, %6642 ], [ %6679, %6684 ]
  %6687 = phi float [ %6508, %6642 ], [ %6680, %6684 ]
  %6688 = fsub fast float %6423, %6686
  %6689 = select i1 %6425, float %6686, float %6688
  %6690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6691 = extractvalue %dx.types.CBufRet.f32 %6690, 0
  %6692 = extractvalue %dx.types.CBufRet.f32 %6690, 1
  %6693 = extractvalue %dx.types.CBufRet.f32 %6690, 2
  %6694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6695 = extractvalue %dx.types.CBufRet.f32 %6694, 0
  %6696 = extractvalue %dx.types.CBufRet.f32 %6694, 1
  %6697 = extractvalue %dx.types.CBufRet.f32 %6694, 2
  %6698 = extractvalue %dx.types.CBufRet.f32 %6694, 3
  %6699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6700 = extractvalue %dx.types.CBufRet.f32 %6699, 3
  %6701 = call float @dx.op.binary.f32(i32 36, float %6687, float %6700)  ; FMin(a,b)
  %6702 = fmul fast float %6698, %6689
  %6703 = call float @dx.op.unary.f32(i32 7, float %6702)  ; Saturate(value)
  %6704 = fsub fast float %6695, %6691
  %6705 = fsub fast float %6696, %6692
  %6706 = fsub fast float %6697, %6693
  %6707 = fmul fast float %6703, %6704
  %6708 = fmul fast float %6703, %6705
  %6709 = fmul fast float %6703, %6706
  %6710 = fadd fast float %6707, %6691
  %6711 = fadd fast float %6708, %6692
  %6712 = fadd fast float %6709, %6693
  %6713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6714 = extractvalue %dx.types.CBufRet.f32 %6713, 0
  %6715 = extractvalue %dx.types.CBufRet.f32 %6713, 1
  %6716 = fadd fast float %6715, %6714
  %6717 = call float @dx.op.unary.f32(i32 7, float %6716)  ; Saturate(value)
  %6718 = extractvalue %dx.types.CBufRet.f32 %6713, 2
  %6719 = extractvalue %dx.types.CBufRet.f32 %6713, 3
  %6720 = fadd fast float %6719, %6718
  %6721 = call float @dx.op.unary.f32(i32 7, float %6720)  ; Saturate(value)
  %6722 = fmul fast float %6717, %6701
  %6723 = fmul fast float %6722, %6721
  br label %6724

; <label>:6724                                    ; preds = %6685, %6604, %6439, %6421, %6419
  %6725 = phi float [ %6448, %6439 ], [ %6607, %6604 ], [ %6689, %6685 ], [ 0.000000e+00, %6419 ], [ 0.000000e+00, %6421 ]
  %6726 = phi float [ %6482, %6439 ], [ %6641, %6604 ], [ %6723, %6685 ], [ 0.000000e+00, %6419 ], [ 0.000000e+00, %6421 ]
  %6727 = phi float [ %6469, %6439 ], [ %6628, %6604 ], [ %6710, %6685 ], [ 0.000000e+00, %6419 ], [ 0.000000e+00, %6421 ]
  %6728 = phi float [ %6470, %6439 ], [ %6629, %6604 ], [ %6711, %6685 ], [ 0.000000e+00, %6419 ], [ 0.000000e+00, %6421 ]
  %6729 = phi float [ %6471, %6439 ], [ %6630, %6604 ], [ %6712, %6685 ], [ 0.000000e+00, %6419 ], [ 0.000000e+00, %6421 ]
  %6730 = fmul fast float %6362, %6726
  %6731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6732 = extractvalue %dx.types.CBufRet.f32 %6731, 2
  %6733 = fsub fast float %6369, %6732
  %6734 = fcmp fast olt float %6730, -2.000000e+01
  %6735 = call float @dx.op.unary.f32(i32 21, float %6730)  ; Exp(value)
  %6736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6737 = extractvalue %dx.types.CBufRet.f32 %6736, 2
  %6738 = extractvalue %dx.types.CBufRet.f32 %6736, 3
  %6739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.f32 %6739, 2
  %6741 = fmul fast float %6738, %6733
  %6742 = call float @dx.op.unary.f32(i32 7, float %6741)  ; Saturate(value)
  %6743 = fsub fast float 1.000000e+00, %6742
  %6744 = fmul fast float %6354, 5.000000e-01
  %6745 = fadd fast float %6744, 5.000000e-01
  %6746 = call float @dx.op.unary.f32(i32 7, float %6745)  ; Saturate(value)
  %6747 = fsub fast float 1.000000e+00, %6746
  %6748 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6743)  ; FMax(a,b)
  %6749 = fdiv fast float %6747, %6748
  %6750 = fsub fast float %6733, %6311
  %6751 = call float @dx.op.unary.f32(i32 6, float %6750)  ; FAbs(value)
  %6752 = fmul fast float %6751, %6737
  %6753 = call float @dx.op.unary.f32(i32 7, float %6749)  ; Saturate(value)
  %6754 = fsub fast float 1.000000e+00, %6752
  %6755 = fmul fast float %6754, %6753
  %6756 = fadd fast float %6755, %6752
  %6757 = fmul fast float %6740, %6733
  %6758 = call float @dx.op.unary.f32(i32 7, float %6757)  ; Saturate(value)
  %6759 = fsub fast float 1.000000e+00, %6756
  %6760 = fmul fast float %6759, %6758
  %6761 = fadd fast float %6760, %6756
  %6762 = call float @dx.op.unary.f32(i32 7, float %6761)  ; Saturate(value)
  %6763 = fadd fast float %6735, -1.000000e+00
  %6764 = select i1 %6734, float -1.000000e+00, float %6763
  %6765 = fmul fast float %6762, %6764
  %6766 = fadd fast float %6765, 1.000000e+00
  %6767 = fsub fast float -0.000000e+00, %6765
  %6768 = fmul fast float %6727, %6767
  %6769 = fmul fast float %6728, %6767
  %6770 = fmul fast float %6729, %6767
  br label %6771

; <label>:6771                                    ; preds = %6724, %6320
  %6772 = phi float [ %6725, %6724 ], [ 0.000000e+00, %6320 ]
  %6773 = phi float [ %6766, %6724 ], [ 1.000000e+00, %6320 ]
  %6774 = phi float [ %6768, %6724 ], [ 0.000000e+00, %6320 ]
  %6775 = phi float [ %6769, %6724 ], [ 0.000000e+00, %6320 ]
  %6776 = phi float [ %6770, %6724 ], [ 0.000000e+00, %6320 ]
  %6777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6778 = extractvalue %dx.types.CBufRet.f32 %6777, 1
  %6779 = fsub fast float 1.000000e+00, %6773
  %6780 = fmul fast float %6779, %6355
  %6781 = fmul fast float %6780, %6778
  %6782 = fsub fast float %6355, %6781
  br i1 %6348, label %6783, label %6812, !dx.controlflow.hints !148

; <label>:6783                                    ; preds = %6771
  %6784 = fmul fast float %6356, %6345
  %6785 = fadd fast float %6784, %6346
  %6786 = call float @dx.op.unary.f32(i32 7, float %6785)  ; Saturate(value)
  %6787 = fmul fast float %6327, %6782
  %6788 = fsub fast float -0.000000e+00, %6787
  %6789 = fmul fast float %6328, %6782
  %6790 = fsub fast float -0.000000e+00, %6789
  %6791 = call float @dx.op.unary.f32(i32 21, float %6788)  ; Exp(value)
  %6792 = call float @dx.op.unary.f32(i32 21, float %6790)  ; Exp(value)
  %6793 = call float @dx.op.binary.f32(i32 35, float %6335, float %6791)  ; FMax(a,b)
  %6794 = call float @dx.op.binary.f32(i32 35, float %6335, float %6792)  ; FMax(a,b)
  %6795 = fsub fast float %6794, %6793
  %6796 = fmul fast float %6795, %6786
  %6797 = fadd fast float %6796, %6793
  %6798 = call float @dx.op.unary.f32(i32 7, float %6797)  ; Saturate(value)
  %6799 = fsub fast float %6332, %6337
  %6800 = fsub fast float %6333, %6338
  %6801 = fsub fast float %6334, %6339
  %6802 = fmul fast float %6786, %6799
  %6803 = fmul fast float %6786, %6800
  %6804 = fmul fast float %6786, %6801
  %6805 = fadd fast float %6802, %6337
  %6806 = fadd fast float %6803, %6338
  %6807 = fadd fast float %6804, %6339
  %6808 = fsub fast float 1.000000e+00, %6798
  %6809 = fmul fast float %6808, %6805
  %6810 = fmul fast float %6808, %6806
  %6811 = fmul fast float %6808, %6807
  br label %6871

; <label>:6812                                    ; preds = %6771
  %6813 = fmul fast float %6782, %6344
  %6814 = call float @dx.op.unary.f32(i32 7, float %6813)  ; Saturate(value)
  %6815 = fsub fast float 2.000000e+00, %6814
  %6816 = fmul fast float %6814, 9.921875e-01
  %6817 = fmul fast float %6816, %6815
  %6818 = fadd fast float %6817, 3.906250e-03
  %6819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %37, float %6818, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6820 = extractvalue %dx.types.ResRet.f32 %6819, 0
  %6821 = fsub fast float %6814, %6820
  %6822 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6821)  ; FMax(a,b)
  %6823 = fmul fast float %6330, %6311
  %6824 = call float @dx.op.unary.f32(i32 6, float %6823)  ; FAbs(value)
  %6825 = fcmp fast ogt float %6824, 0x3EB0C6F7A0000000
  br i1 %6825, label %6826, label %6832, !dx.controlflow.hints !149

; <label>:6826                                    ; preds = %6812
  %6827 = fmul fast float %6823, 0xBFF7154760000000
  %6828 = call float @dx.op.unary.f32(i32 21, float %6827)  ; Exp(value)
  %6829 = fsub fast float 1.000000e+00, %6828
  %6830 = fdiv fast float %6829, %6823
  %6831 = fmul fast float %6830, %6340
  br label %6832

; <label>:6832                                    ; preds = %6826, %6812
  %6833 = phi float [ %6831, %6826 ], [ %6340, %6812 ]
  %6834 = fadd fast float %6833, %6342
  %6835 = fmul fast float %6834, %6822
  %6836 = fmul fast float %6327, %6835
  %6837 = fsub fast float -0.000000e+00, %6836
  %6838 = fmul fast float %6328, %6835
  %6839 = fsub fast float -0.000000e+00, %6838
  %6840 = fmul fast float %6329, %6835
  %6841 = fsub fast float -0.000000e+00, %6840
  %6842 = call float @dx.op.unary.f32(i32 21, float %6837)  ; Exp(value)
  %6843 = call float @dx.op.unary.f32(i32 21, float %6839)  ; Exp(value)
  %6844 = call float @dx.op.unary.f32(i32 21, float %6841)  ; Exp(value)
  %6845 = fmul fast float %6356, %6356
  %6846 = fadd fast float %6845, 1.000000e+00
  %6847 = fmul fast float %6846, 0x3FAE8EC8A0000000
  %6848 = fmul fast float %6847, %6337
  %6849 = fmul fast float %6847, %6338
  %6850 = fmul fast float %6847, %6339
  %6851 = fmul fast float %6356, %6335
  %6852 = fsub fast float 1.000000e+00, %6851
  %6853 = fmul fast float %6335, %6335
  %6854 = fsub fast float 1.000000e+00, %6853
  %6855 = fmul fast float %6854, 0x3FB45F3060000000
  %6856 = fmul fast float %6852, %6852
  %6857 = fdiv fast float 1.000000e+00, %6856
  %6858 = fmul fast float %6855, %6857
  %6859 = fmul fast float %6858, %6332
  %6860 = fmul fast float %6858, %6333
  %6861 = fmul fast float %6858, %6334
  %6862 = fadd fast float %6859, %6848
  %6863 = fadd fast float %6860, %6849
  %6864 = fadd fast float %6861, %6850
  %6865 = fsub fast float 1.000000e+00, %6842
  %6866 = fsub fast float 1.000000e+00, %6843
  %6867 = fsub fast float 1.000000e+00, %6844
  %6868 = fmul fast float %6862, %6865
  %6869 = fmul fast float %6863, %6866
  %6870 = fmul fast float %6864, %6867
  br label %6871

; <label>:6871                                    ; preds = %6832, %6783
  %6872 = phi float [ %6809, %6783 ], [ %6868, %6832 ]
  %6873 = phi float [ %6810, %6783 ], [ %6869, %6832 ]
  %6874 = phi float [ %6811, %6783 ], [ %6870, %6832 ]
  %6875 = phi float [ %6798, %6783 ], [ %6842, %6832 ]
  %6876 = phi float [ %6798, %6783 ], [ %6843, %6832 ]
  %6877 = phi float [ %6798, %6783 ], [ %6844, %6832 ]
  br i1 %6364, label %6878, label %7076, !dx.controlflow.hints !150

; <label>:6878                                    ; preds = %6871
  %6879 = extractvalue %dx.types.CBufRet.f32 %6777, 0
  %6880 = fmul fast float %6879, %6779
  %6881 = fsub fast float %6774, %6872
  %6882 = fsub fast float %6775, %6873
  %6883 = fsub fast float %6776, %6874
  %6884 = fmul fast float %6880, %6881
  %6885 = fmul fast float %6880, %6882
  %6886 = fmul fast float %6880, %6883
  %6887 = fadd fast float %6884, %6872
  %6888 = fadd fast float %6885, %6873
  %6889 = fadd fast float %6886, %6874
  %6890 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6875)  ; FMax(a,b)
  %6891 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6876)  ; FMax(a,b)
  %6892 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6877)  ; FMax(a,b)
  %6893 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6773)  ; FMax(a,b)
  %6894 = call float @dx.op.binary.f32(i32 35, float %6772, float %6782)  ; FMax(a,b)
  %6895 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6894)  ; FMax(a,b)
  %6896 = fdiv fast float %6772, %6895
  %6897 = call float @dx.op.unary.f32(i32 7, float %6896)  ; Saturate(value)
  %6898 = fdiv fast float %6782, %6895
  %6899 = call float @dx.op.unary.f32(i32 7, float %6898)  ; Saturate(value)
  %6900 = fcmp fast une float %6893, 1.000000e+00
  br i1 %6900, label %6901, label %6914, !dx.controlflow.hints !151

; <label>:6901                                    ; preds = %6878
  %6902 = call float @dx.op.unary.f32(i32 23, float %6893)  ; Log(value)
  %6903 = fmul fast float %6902, 0x3FE62E4300000000
  %6904 = fmul fast float %6774, %6903
  %6905 = fsub fast float -0.000000e+00, %6904
  %6906 = fmul fast float %6775, %6903
  %6907 = fsub fast float -0.000000e+00, %6906
  %6908 = fmul fast float %6776, %6903
  %6909 = fsub fast float -0.000000e+00, %6908
  %6910 = fsub fast float 1.000000e+00, %6893
  %6911 = fdiv fast float %6905, %6910
  %6912 = fdiv fast float %6907, %6910
  %6913 = fdiv fast float %6909, %6910
  br label %6914

; <label>:6914                                    ; preds = %6901, %6878
  %6915 = phi float [ %6911, %6901 ], [ %6774, %6878 ]
  %6916 = phi float [ %6912, %6901 ], [ %6775, %6878 ]
  %6917 = phi float [ %6913, %6901 ], [ %6776, %6878 ]
  %6918 = phi float [ %6903, %6901 ], [ 0.000000e+00, %6878 ]
  %6919 = fcmp fast une float %6890, 1.000000e+00
  br i1 %6919, label %6920, label %6927, !dx.controlflow.hints !152

; <label>:6920                                    ; preds = %6914
  %6921 = call float @dx.op.unary.f32(i32 23, float %6890)  ; Log(value)
  %6922 = fmul fast float %6921, 0x3FE62E4300000000
  %6923 = fmul fast float %6887, %6922
  %6924 = fsub fast float -0.000000e+00, %6923
  %6925 = fsub fast float 1.000000e+00, %6890
  %6926 = fdiv fast float %6924, %6925
  br label %6927

; <label>:6927                                    ; preds = %6920, %6914
  %6928 = phi float [ %6926, %6920 ], [ %6887, %6914 ]
  %6929 = phi float [ %6922, %6920 ], [ 0.000000e+00, %6914 ]
  %6930 = fcmp fast une float %6891, 1.000000e+00
  br i1 %6930, label %6931, label %6938, !dx.controlflow.hints !152

; <label>:6931                                    ; preds = %6927
  %6932 = call float @dx.op.unary.f32(i32 23, float %6891)  ; Log(value)
  %6933 = fmul fast float %6932, 0x3FE62E4300000000
  %6934 = fmul fast float %6888, %6933
  %6935 = fsub fast float -0.000000e+00, %6934
  %6936 = fsub fast float 1.000000e+00, %6891
  %6937 = fdiv fast float %6935, %6936
  br label %6938

; <label>:6938                                    ; preds = %6931, %6927
  %6939 = phi float [ %6937, %6931 ], [ %6888, %6927 ]
  %6940 = phi float [ %6933, %6931 ], [ 0.000000e+00, %6927 ]
  %6941 = fcmp fast une float %6892, 1.000000e+00
  br i1 %6941, label %6942, label %6949, !dx.controlflow.hints !152

; <label>:6942                                    ; preds = %6938
  %6943 = call float @dx.op.unary.f32(i32 23, float %6892)  ; Log(value)
  %6944 = fmul fast float %6943, 0x3FE62E4300000000
  %6945 = fmul fast float %6889, %6944
  %6946 = fsub fast float -0.000000e+00, %6945
  %6947 = fsub fast float 1.000000e+00, %6892
  %6948 = fdiv fast float %6946, %6947
  br label %6949

; <label>:6949                                    ; preds = %6942, %6938
  %6950 = phi float [ %6948, %6942 ], [ %6889, %6938 ]
  %6951 = phi float [ %6944, %6942 ], [ 0.000000e+00, %6938 ]
  %6952 = fmul fast float %6915, %6899
  %6953 = fmul fast float %6916, %6899
  %6954 = fmul fast float %6917, %6899
  %6955 = fmul fast float %6918, %6899
  %6956 = fmul fast float %6928, %6897
  %6957 = fmul fast float %6939, %6897
  %6958 = fmul fast float %6950, %6897
  %6959 = fmul fast float %6929, %6897
  %6960 = fmul fast float %6940, %6897
  %6961 = fmul fast float %6951, %6897
  %6962 = fadd fast float %6956, %6952
  %6963 = fadd fast float %6957, %6953
  %6964 = fadd fast float %6958, %6954
  %6965 = fadd fast float %6959, %6955
  %6966 = fadd fast float %6960, %6955
  %6967 = fadd fast float %6961, %6955
  %6968 = fcmp fast une float %6965, 0.000000e+00
  br i1 %6968, label %6969, label %6976, !dx.controlflow.hints !153

; <label>:6969                                    ; preds = %6949
  %6970 = fmul fast float %6965, 0x3FF7154760000000
  %6971 = call float @dx.op.unary.f32(i32 21, float %6970)  ; Exp(value)
  %6972 = fsub fast float 1.000000e+00, %6971
  %6973 = fmul fast float %6962, %6972
  %6974 = fsub fast float -0.000000e+00, %6973
  %6975 = fdiv fast float %6974, %6965
  br label %6976

; <label>:6976                                    ; preds = %6969, %6949
  %6977 = phi float [ %6971, %6969 ], [ 1.000000e+00, %6949 ]
  %6978 = phi float [ %6975, %6969 ], [ %6962, %6949 ]
  %6979 = fcmp fast une float %6966, 0.000000e+00
  br i1 %6979, label %6980, label %6987, !dx.controlflow.hints !153

; <label>:6980                                    ; preds = %6976
  %6981 = fmul fast float %6966, 0x3FF7154760000000
  %6982 = call float @dx.op.unary.f32(i32 21, float %6981)  ; Exp(value)
  %6983 = fsub fast float 1.000000e+00, %6982
  %6984 = fmul fast float %6963, %6983
  %6985 = fsub fast float -0.000000e+00, %6984
  %6986 = fdiv fast float %6985, %6966
  br label %6987

; <label>:6987                                    ; preds = %6980, %6976
  %6988 = phi float [ %6982, %6980 ], [ 1.000000e+00, %6976 ]
  %6989 = phi float [ %6986, %6980 ], [ %6963, %6976 ]
  %6990 = fcmp fast une float %6967, 0.000000e+00
  br i1 %6990, label %6991, label %6998, !dx.controlflow.hints !153

; <label>:6991                                    ; preds = %6987
  %6992 = fmul fast float %6967, 0x3FF7154760000000
  %6993 = call float @dx.op.unary.f32(i32 21, float %6992)  ; Exp(value)
  %6994 = fsub fast float 1.000000e+00, %6993
  %6995 = fmul fast float %6964, %6994
  %6996 = fsub fast float -0.000000e+00, %6995
  %6997 = fdiv fast float %6996, %6967
  br label %6998

; <label>:6998                                    ; preds = %6991, %6987
  %6999 = phi float [ %6993, %6991 ], [ 1.000000e+00, %6987 ]
  %7000 = phi float [ %6997, %6991 ], [ %6964, %6987 ]
  %7001 = fcmp fast ogt float %6897, %6899
  br i1 %7001, label %7002, label %7022

; <label>:7002                                    ; preds = %6998
  %7003 = fsub fast float 1.000000e+00, %6899
  %7004 = fmul fast float %6915, %7003
  %7005 = fmul fast float %6916, %7003
  %7006 = fmul fast float %6917, %7003
  %7007 = fmul fast float %6918, %7003
  %7008 = fcmp fast une float %7007, 0.000000e+00
  br i1 %7008, label %7009, label %7060, !dx.controlflow.hints !154

; <label>:7009                                    ; preds = %7002
  %7010 = fmul fast float %7007, 0x3FF7154760000000
  %7011 = call float @dx.op.unary.f32(i32 21, float %7010)  ; Exp(value)
  %7012 = fsub fast float 1.000000e+00, %7011
  %7013 = fmul fast float %7004, %7012
  %7014 = fsub fast float -0.000000e+00, %7013
  %7015 = fmul fast float %7005, %7012
  %7016 = fsub fast float -0.000000e+00, %7015
  %7017 = fmul fast float %7006, %7012
  %7018 = fsub fast float -0.000000e+00, %7017
  %7019 = fdiv fast float %7014, %7007
  %7020 = fdiv fast float %7016, %7007
  %7021 = fdiv fast float %7018, %7007
  br label %7060

; <label>:7022                                    ; preds = %6998
  %7023 = fsub fast float 1.000000e+00, %6897
  %7024 = fmul fast float %6928, %7023
  %7025 = fmul fast float %6939, %7023
  %7026 = fmul fast float %6950, %7023
  %7027 = fmul fast float %6929, %7023
  %7028 = fmul fast float %6940, %7023
  %7029 = fmul fast float %6951, %7023
  %7030 = fcmp fast une float %7027, 0.000000e+00
  br i1 %7030, label %7031, label %7038, !dx.controlflow.hints !153

; <label>:7031                                    ; preds = %7022
  %7032 = fmul fast float %7027, 0x3FF7154760000000
  %7033 = call float @dx.op.unary.f32(i32 21, float %7032)  ; Exp(value)
  %7034 = fsub fast float 1.000000e+00, %7033
  %7035 = fmul fast float %7024, %7034
  %7036 = fsub fast float -0.000000e+00, %7035
  %7037 = fdiv fast float %7036, %7027
  br label %7038

; <label>:7038                                    ; preds = %7031, %7022
  %7039 = phi float [ %7037, %7031 ], [ %7024, %7022 ]
  %7040 = phi float [ %7033, %7031 ], [ 1.000000e+00, %7022 ]
  %7041 = fcmp fast une float %7028, 0.000000e+00
  br i1 %7041, label %7042, label %7049, !dx.controlflow.hints !153

; <label>:7042                                    ; preds = %7038
  %7043 = fmul fast float %7028, 0x3FF7154760000000
  %7044 = call float @dx.op.unary.f32(i32 21, float %7043)  ; Exp(value)
  %7045 = fsub fast float 1.000000e+00, %7044
  %7046 = fmul fast float %7025, %7045
  %7047 = fsub fast float -0.000000e+00, %7046
  %7048 = fdiv fast float %7047, %7028
  br label %7049

; <label>:7049                                    ; preds = %7042, %7038
  %7050 = phi float [ %7048, %7042 ], [ %7025, %7038 ]
  %7051 = phi float [ %7044, %7042 ], [ 1.000000e+00, %7038 ]
  %7052 = fcmp fast une float %7029, 0.000000e+00
  br i1 %7052, label %7053, label %7060, !dx.controlflow.hints !153

; <label>:7053                                    ; preds = %7049
  %7054 = fmul fast float %7029, 0x3FF7154760000000
  %7055 = call float @dx.op.unary.f32(i32 21, float %7054)  ; Exp(value)
  %7056 = fsub fast float 1.000000e+00, %7055
  %7057 = fmul fast float %7026, %7056
  %7058 = fsub fast float -0.000000e+00, %7057
  %7059 = fdiv fast float %7058, %7029
  br label %7060

; <label>:7060                                    ; preds = %7053, %7049, %7009, %7002
  %7061 = phi float [ %7059, %7053 ], [ %7021, %7009 ], [ %7006, %7002 ], [ %7026, %7049 ]
  %7062 = phi float [ %7050, %7053 ], [ %7020, %7009 ], [ %7005, %7002 ], [ %7050, %7049 ]
  %7063 = phi float [ %7039, %7053 ], [ %7019, %7009 ], [ %7004, %7002 ], [ %7039, %7049 ]
  %7064 = phi float [ %7055, %7053 ], [ %7011, %7009 ], [ 1.000000e+00, %7002 ], [ 1.000000e+00, %7049 ]
  %7065 = phi float [ %7051, %7053 ], [ %7011, %7009 ], [ 1.000000e+00, %7002 ], [ %7051, %7049 ]
  %7066 = phi float [ %7040, %7053 ], [ %7011, %7009 ], [ 1.000000e+00, %7002 ], [ %7040, %7049 ]
  %7067 = fmul fast float %7066, %6978
  %7068 = fmul fast float %7065, %6989
  %7069 = fmul fast float %7064, %7000
  %7070 = fadd fast float %7067, %7063
  %7071 = fadd fast float %7068, %7062
  %7072 = fadd fast float %7069, %7061
  %7073 = fmul fast float %7066, %6977
  %7074 = fmul fast float %7065, %6988
  %7075 = fmul fast float %7064, %6999
  br label %7076

; <label>:7076                                    ; preds = %7060, %6871
  %7077 = phi float [ %7075, %7060 ], [ %6877, %6871 ]
  %7078 = phi float [ %7074, %7060 ], [ %6876, %6871 ]
  %7079 = phi float [ %7073, %7060 ], [ %6875, %6871 ]
  %7080 = phi float [ %7072, %7060 ], [ %6874, %6871 ]
  %7081 = phi float [ %7071, %7060 ], [ %6873, %6871 ]
  %7082 = phi float [ %7070, %7060 ], [ %6872, %6871 ]
  %7083 = fmul fast float %7082, %6028
  %7084 = fmul fast float %7081, %6028
  %7085 = fmul fast float %7080, %6028
  %7086 = fmul fast float %7079, %6319
  %7087 = call float @dx.op.dot3.f32(i32 55, float %7079, float %7078, float %7077, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7088 = call float @dx.op.dot3.f32(i32 55, float %7083, float %7084, float %7085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7089 = select i1 %255, float %7087, float %7079
  %7090 = select i1 %255, float %7087, float %7078
  %7091 = select i1 %255, float 1.000000e+00, float %7077
  %7092 = select i1 %255, float %7088, float %7083
  %7093 = select i1 %255, float 0.000000e+00, float %7084
  %7094 = select i1 %255, float 0.000000e+00, float %7085
  %7095 = fmul fast float %7089, %6313
  %7096 = fmul fast float %7090, %6314
  %7097 = fmul fast float %7091, %6315
  %7098 = fadd fast float %7095, %7092
  %7099 = fadd fast float %7096, %7093
  %7100 = fadd fast float %7094, %7097
  %7101 = fmul fast float %7089, %6316
  %7102 = fmul fast float %7090, %6317
  %7103 = fmul fast float %7091, %6318
  %7104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7105 = extractvalue %dx.types.CBufRet.i32 %7104, 0
  %7106 = icmp eq i32 %7105, 0
  br i1 %7106, label %7474, label %7107, !dx.controlflow.hints !155

; <label>:7107                                    ; preds = %7076
  %7108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7109 = extractvalue %dx.types.CBufRet.f32 %7108, 2
  %7110 = extractvalue %dx.types.CBufRet.f32 %7108, 3
  %7111 = fmul fast float %7109, %94
  %7112 = fmul fast float %7110, %95
  %7113 = fmul fast float %7111, 2.000000e+00
  %7114 = fmul fast float %7112, 2.000000e+00
  %7115 = fsub fast float 1.000000e+00, %7113
  %7116 = fsub fast float 1.000000e+00, %7114
  %7117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7118 = extractvalue %dx.types.CBufRet.f32 %7117, 0
  %7119 = extractvalue %dx.types.CBufRet.f32 %7117, 1
  %7120 = extractvalue %dx.types.CBufRet.f32 %7117, 2
  %7121 = fmul fast float %7115, %7118
  %7122 = fmul fast float %7115, %7119
  %7123 = fmul fast float %7115, %7120
  %7124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7125 = extractvalue %dx.types.CBufRet.f32 %7124, 0
  %7126 = extractvalue %dx.types.CBufRet.f32 %7124, 1
  %7127 = extractvalue %dx.types.CBufRet.f32 %7124, 2
  %7128 = fmul fast float %7116, %7125
  %7129 = fmul fast float %7116, %7126
  %7130 = fmul fast float %7116, %7127
  %7131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7132 = extractvalue %dx.types.CBufRet.f32 %7131, 0
  %7133 = extractvalue %dx.types.CBufRet.f32 %7131, 1
  %7134 = extractvalue %dx.types.CBufRet.f32 %7131, 2
  %7135 = fadd fast float %7128, %7132
  %7136 = fadd fast float %7135, %7121
  %7137 = fadd fast float %7129, %7133
  %7138 = fadd fast float %7137, %7122
  %7139 = fadd fast float %7130, %7134
  %7140 = fadd fast float %7139, %7123
  %7141 = fmul fast float %7136, %6312
  %7142 = fmul fast float %7138, %6312
  %7143 = fmul fast float %7140, %6312
  %7144 = fmul fast float %7141, %7141
  %7145 = fmul fast float %7142, %7142
  %7146 = fadd fast float %7144, %7145
  %7147 = fmul fast float %7143, %7143
  %7148 = fadd fast float %7146, %7147
  %7149 = call float @dx.op.unary.f32(i32 24, float %7148)  ; Sqrt(value)
  %7150 = extractvalue %dx.types.CBufRet.f32 %6039, 0
  %7151 = fsub fast float %7149, %7150
  %7152 = extractvalue %dx.types.CBufRet.f32 %6039, 2
  %7153 = fmul fast float %7151, %7152
  %7154 = call float @dx.op.unary.f32(i32 7, float %7153)  ; Saturate(value)
  %7155 = fadd fast float %7154, -5.000000e-01
  %7156 = fmul fast float %7155, 2.000000e+00
  %7157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7158 = extractvalue %dx.types.CBufRet.f32 %7157, 2
  %7159 = call float @dx.op.binary.f32(i32 36, float %7158, float %7156)  ; FMin(a,b)
  %7160 = fsub fast float -0.000000e+00, %7158
  %7161 = fcmp fast ogt float %7159, %7160
  br i1 %7161, label %7162, label %7474, !dx.controlflow.hints !156

; <label>:7162                                    ; preds = %7107
  %7163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7164 = extractvalue %dx.types.CBufRet.f32 %7163, 3
  %7165 = fcmp fast ogt float %7164, 0.000000e+00
  br i1 %7165, label %7166, label %7241, !dx.controlflow.hints !157

; <label>:7166                                    ; preds = %7162
  %7167 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %7168 = extractvalue %dx.types.Dimensions %7167, 0
  %7169 = sitofp i32 %7168 to float
  %7170 = extractvalue %dx.types.Dimensions %7167, 1
  %7171 = sitofp i32 %7170 to float
  %7172 = fmul fast float %7111, %7169
  %7173 = fmul fast float %7112, %7171
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 1
  %7176 = fsub fast float -0.000000e+00, %7175
  %7177 = fptoui float %7176 to i32
  %7178 = fptoui float %7172 to i32
  %7179 = fptoui float %7173 to i32
  %7180 = and i32 %7177, 31
  %7181 = lshr i32 %7178, %7180
  %7182 = lshr i32 %7179, %7180
  %7183 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 %7177, i32 %7181, i32 %7182, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7184 = extractvalue %dx.types.ResRet.f32 %7183, 0
  %7185 = fcmp fast olt float %7184, -1.000000e+00
  %7186 = fcmp fast ogt float %7184, -1.000000e+00
  %7187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7188 = extractvalue %dx.types.CBufRet.f32 %7187, 1
  %7189 = select i1 %7186, float %7188, float 1.000000e+00
  %7190 = fadd fast float %7184, 1.000000e+00
  %7191 = fmul fast float %7189, %7190
  %7192 = call float @dx.op.unary.f32(i32 6, float %7191)  ; FAbs(value)
  %7193 = extractvalue %dx.types.CBufRet.f32 %7187, 3
  %7194 = fcmp fast oge float %7192, %7193
  %7195 = select i1 %7194, float 0x4197782600000000, float %7192
  %7196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7197 = extractvalue %dx.types.CBufRet.f32 %7196, 0
  %7198 = extractvalue %dx.types.CBufRet.f32 %7196, 1
  %7199 = extractvalue %dx.types.CBufRet.f32 %7196, 2
  %7200 = select i1 %7185, float %7197, float %7118
  %7201 = select i1 %7185, float %7198, float %7119
  %7202 = select i1 %7185, float %7199, float %7120
  %7203 = fmul fast float %7200, %7115
  %7204 = fmul fast float %7201, %7115
  %7205 = fmul fast float %7202, %7115
  %7206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7207 = extractvalue %dx.types.CBufRet.f32 %7206, 0
  %7208 = extractvalue %dx.types.CBufRet.f32 %7206, 1
  %7209 = extractvalue %dx.types.CBufRet.f32 %7206, 2
  %7210 = select i1 %7185, float %7207, float %7125
  %7211 = select i1 %7185, float %7208, float %7126
  %7212 = select i1 %7185, float %7209, float %7127
  %7213 = fmul fast float %7210, %7116
  %7214 = fmul fast float %7211, %7116
  %7215 = fmul fast float %7212, %7116
  %7216 = fadd fast float %7213, %7203
  %7217 = fadd fast float %7214, %7204
  %7218 = fadd fast float %7215, %7205
  %7219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7220 = extractvalue %dx.types.CBufRet.f32 %7219, 0
  %7221 = extractvalue %dx.types.CBufRet.f32 %7219, 1
  %7222 = extractvalue %dx.types.CBufRet.f32 %7219, 2
  %7223 = select i1 %7185, float %7220, float %7132
  %7224 = select i1 %7185, float %7221, float %7133
  %7225 = select i1 %7185, float %7222, float %7134
  %7226 = fadd fast float %7216, %7223
  %7227 = fadd fast float %7217, %7224
  %7228 = fadd fast float %7218, %7225
  %7229 = fmul fast float %7226, %7195
  %7230 = fmul fast float %7227, %7195
  %7231 = fmul fast float %7228, %7195
  %7232 = fmul fast float %7229, %7229
  %7233 = fmul fast float %7230, %7230
  %7234 = fadd fast float %7232, %7233
  %7235 = fmul fast float %7231, %7231
  %7236 = fadd fast float %7234, %7235
  %7237 = call float @dx.op.unary.f32(i32 24, float %7236)  ; Sqrt(value)
  %7238 = fsub fast float %7237, %7150
  %7239 = fmul fast float %7238, %7152
  %7240 = call float @dx.op.unary.f32(i32 7, float %7239)  ; Saturate(value)
  br label %7241

; <label>:7241                                    ; preds = %7166, %7162
  %7242 = phi float [ %7240, %7166 ], [ 1.000000e+00, %7162 ]
  %7243 = fmul fast float %7159, 5.000000e-01
  %7244 = fadd fast float %7243, 5.000000e-01
  %7245 = call float @dx.op.unary.f32(i32 22, float %7244)  ; Frc(value)
  %7246 = call float @dx.op.unary.f32(i32 27, float %7245)  ; Round_ni(value)
  %7247 = call float @dx.op.unary.f32(i32 22, float %7245)  ; Frc(value)
  %7248 = fmul fast float %7247, 2.000000e+00
  %7249 = fadd fast float %7248, -1.000000e+00
  %7250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %37, float %7111, float %7112, float %7246, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7251 = extractvalue %dx.types.ResRet.f32 %7250, 0
  %7252 = extractvalue %dx.types.ResRet.f32 %7250, 1
  %7253 = extractvalue %dx.types.ResRet.f32 %7250, 2
  %7254 = extractvalue %dx.types.ResRet.f32 %7250, 3
  %7255 = fadd fast float %7251, -5.000000e-01
  %7256 = fadd fast float %7253, -5.000000e-01
  %7257 = fmul fast float %7255, 0xBFD5555560000000
  %7258 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7256, float %7257)  ; FMad(a,b,c)
  %7259 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7252, float 0.000000e+00)  ; FMad(a,b,c)
  %7260 = fadd fast float %7259, %7254
  %7261 = fmul fast float %7255, -7.500000e-01
  %7262 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7256, float %7261)  ; FMad(a,b,c)
  %7263 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7252, float 0.000000e+00)  ; FMad(a,b,c)
  %7264 = fadd fast float %7263, %7254
  %7265 = call float @dx.op.binary.f32(i32 35, float %7258, float -1.000000e+00)  ; FMax(a,b)
  %7266 = call float @dx.op.binary.f32(i32 35, float %7260, float -1.000000e+00)  ; FMax(a,b)
  %7267 = call float @dx.op.binary.f32(i32 35, float %7262, float -1.000000e+00)  ; FMax(a,b)
  %7268 = call float @dx.op.binary.f32(i32 35, float %7264, float -1.000000e+00)  ; FMax(a,b)
  %7269 = call float @dx.op.binary.f32(i32 36, float %7265, float 1.000000e+00)  ; FMin(a,b)
  %7270 = call float @dx.op.binary.f32(i32 36, float %7266, float 1.000000e+00)  ; FMin(a,b)
  %7271 = call float @dx.op.binary.f32(i32 36, float %7267, float 1.000000e+00)  ; FMin(a,b)
  %7272 = call float @dx.op.binary.f32(i32 36, float %7268, float 1.000000e+00)  ; FMin(a,b)
  %7273 = fcmp fast olt float %7269, 0x3FEFFF8020000000
  br i1 %7273, label %7274, label %7389, !dx.controlflow.hints !158

; <label>:7274                                    ; preds = %7241
  %7275 = extractvalue %dx.types.CBufRet.f32 %7157, 3
  %7276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7277 = extractvalue %dx.types.CBufRet.f32 %7276, 0
  %7278 = extractvalue %dx.types.CBufRet.f32 %7276, 1
  %7279 = extractvalue %dx.types.CBufRet.f32 %7276, 2
  %7280 = extractvalue %dx.types.CBufRet.f32 %7276, 3
  %7281 = fsub fast float %7277, %7269
  %7282 = fsub fast float %7278, %7270
  %7283 = fsub fast float %7279, %7271
  %7284 = fsub fast float %7280, %7272
  %7285 = fmul fast float %7281, %7275
  %7286 = fmul fast float %7282, %7275
  %7287 = fmul fast float %7283, %7275
  %7288 = fmul fast float %7284, %7275
  %7289 = fadd fast float %7285, %7269
  %7290 = fadd fast float %7286, %7270
  %7291 = fsub fast float -0.000000e+00, %7290
  %7292 = fadd fast float %7287, %7271
  %7293 = fadd fast float %7288, %7272
  %7294 = fmul fast float %7289, %7289
  %7295 = fsub fast float %7290, %7294
  %7296 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7295)  ; FMax(a,b)
  %7297 = fdiv fast float 1.000000e+00, %7296
  %7298 = fmul fast float %7290, %7289
  %7299 = fsub fast float %7292, %7298
  %7300 = fsub fast float %7249, %7289
  %7301 = fmul fast float %7249, %7249
  %7302 = fsub fast float %7301, %7290
  %7303 = fmul fast float %7300, %7297
  %7304 = fmul fast float %7303, %7299
  %7305 = fsub fast float %7302, %7304
  %7306 = fmul fast float %7290, %7290
  %7307 = fsub fast float %7293, %7306
  %7308 = fmul fast float %7299, %7299
  %7309 = fmul fast float %7308, %7297
  %7310 = fsub fast float %7307, %7309
  %7311 = fdiv fast float %7305, %7310
  %7312 = fmul fast float %7299, %7311
  %7313 = fsub fast float %7300, %7312
  %7314 = fmul fast float %7313, %7297
  %7315 = fmul fast float %7314, %7289
  %7316 = fsub fast float 1.000000e+00, %7315
  %7317 = fmul fast float %7290, %7311
  %7318 = fsub fast float %7316, %7317
  %7319 = fmul fast float %7314, %7314
  %7320 = fmul fast float %7311, 4.000000e+00
  %7321 = fmul fast float %7320, %7318
  %7322 = fsub fast float %7319, %7321
  %7323 = call float @dx.op.unary.f32(i32 24, float %7322)  ; Sqrt(value)
  %7324 = fcmp fast oge float %7314, 0.000000e+00
  %7325 = fsub fast float -0.000000e+00, %7323
  %7326 = select i1 %7324, float %7325, float %7323
  %7327 = fsub fast float %7326, %7314
  %7328 = fdiv fast float %7327, %7311
  %7329 = fdiv fast float %7318, %7327
  %7330 = fmul fast float %7328, 5.000000e-01
  %7331 = fmul fast float %7329, 2.000000e+00
  %7332 = select i1 %7324, float %7330, float %7331
  %7333 = select i1 %7324, float %7331, float %7330
  %7334 = call float @dx.op.binary.f32(i32 35, float %7332, float %7333)  ; FMax(a,b)
  %7335 = call float @dx.op.binary.f32(i32 36, float %7332, float %7333)  ; FMin(a,b)
  %7336 = fcmp fast ogt float %7249, %7335
  br i1 %7336, label %7337, label %7347

; <label>:7337                                    ; preds = %7274
  %7338 = fsub fast float %7249, %7335
  %7339 = fsub fast float %7334, %7335
  %7340 = fmul fast float %7338, %7339
  %7341 = fmul fast float %7334, %7249
  %7342 = fadd fast float %7334, %7249
  %7343 = fmul fast float %7342, %7289
  %7344 = fadd fast float %7341, %7290
  %7345 = fsub fast float %7344, %7343
  %7346 = fdiv fast float %7345, %7340
  br label %7347

; <label>:7347                                    ; preds = %7337, %7274
  %7348 = phi float [ %7346, %7337 ], [ 0.000000e+00, %7274 ]
  %7349 = fcmp fast ogt float %7249, %7334
  %7350 = fsub fast float %7249, %7334
  br i1 %7349, label %7351, label %7361

; <label>:7351                                    ; preds = %7347
  %7352 = fsub fast float %7334, %7335
  %7353 = fmul fast float %7352, %7350
  %7354 = fmul fast float %7335, %7249
  %7355 = fadd fast float %7335, %7249
  %7356 = fmul fast float %7355, %7289
  %7357 = fsub fast float %7291, %7354
  %7358 = fadd fast float %7357, %7356
  %7359 = fdiv fast float %7358, %7353
  %7360 = fadd fast float %7359, %7348
  br label %7361

; <label>:7361                                    ; preds = %7351, %7347
  %7362 = phi float [ %7360, %7351 ], [ %7348, %7347 ]
  %7363 = fsub fast float %7249, %7335
  %7364 = fmul fast float %7363, %7350
  %7365 = fmul fast float %7335, %7334
  %7366 = fadd fast float %7335, %7334
  %7367 = fmul fast float %7366, %7289
  %7368 = fadd fast float %7365, %7290
  %7369 = fsub fast float %7368, %7367
  %7370 = fdiv fast float %7369, %7364
  %7371 = call float @dx.op.unary.f32(i32 7, float %7362)  ; Saturate(value)
  %7372 = fcmp fast oeq float %6040, 0.000000e+00
  %7373 = extractvalue %dx.types.CBufRet.f32 %7157, 0
  %7374 = fcmp fast oeq float %7373, 0.000000e+00
  %7375 = or i1 %7372, %7374
  %7376 = fmul fast float %7373, 2.000000e+00
  %7377 = fadd fast float %7158, %7159
  %7378 = fdiv fast float %7377, %7376
  %7379 = call float @dx.op.unary.f32(i32 7, float %7378)  ; Saturate(value)
  %7380 = fmul fast float %7379, 2.000000e+00
  %7381 = fsub fast float 3.000000e+00, %7380
  %7382 = fmul fast float %7379, %7379
  %7383 = fmul fast float %7382, %7381
  %7384 = select i1 %7375, float 1.000000e+00, float %7383
  %7385 = fmul fast float %7370, %6040
  %7386 = fadd fast float %7371, %7385
  %7387 = call float @dx.op.unary.f32(i32 7, float %7386)  ; Saturate(value)
  %7388 = fmul fast float %7384, %7387
  br label %7389

; <label>:7389                                    ; preds = %7361, %7241
  %7390 = phi float [ %7388, %7361 ], [ 0.000000e+00, %7241 ]
  %7391 = fsub fast float 1.000000e+00, %7390
  %7392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %37, float %7111, float %7112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7393 = extractvalue %dx.types.ResRet.f32 %7392, 0
  %7394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7395 = extractvalue %dx.types.CBufRet.i32 %7394, 2
  %7396 = icmp eq i32 %7395, 0
  br i1 %7396, label %7402, label %7397

; <label>:7397                                    ; preds = %7389
  %7398 = call float @dx.op.unary.f32(i32 7, float %7390)  ; Saturate(value)
  %7399 = fadd fast float %7393, -1.000000e+00
  %7400 = fmul fast float %7398, %7399
  %7401 = fadd fast float %7400, 1.000000e+00
  br label %7402

; <label>:7402                                    ; preds = %7397, %7389
  %7403 = phi float [ %7401, %7397 ], [ %7391, %7389 ]
  br i1 %7165, label %7404, label %7422

; <label>:7404                                    ; preds = %7402
  %7405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7406 = extractvalue %dx.types.CBufRet.f32 %7405, 1
  %7407 = fsub fast float %7242, %7406
  %7408 = call float @dx.op.unary.f32(i32 7, float %7407)  ; Saturate(value)
  %7409 = fsub fast float %7242, %7164
  %7410 = call float @dx.op.unary.f32(i32 7, float %7409)  ; Saturate(value)
  %7411 = fsub fast float %7408, %7410
  %7412 = fsub fast float %7244, %7410
  %7413 = fdiv fast float %7412, %7411
  %7414 = call float @dx.op.unary.f32(i32 7, float %7413)  ; Saturate(value)
  %7415 = fmul fast float %7414, 2.000000e+00
  %7416 = fsub fast float 3.000000e+00, %7415
  %7417 = fsub fast float %7393, %7403
  %7418 = fmul fast float %7414, %7414
  %7419 = fmul fast float %7418, %7417
  %7420 = fmul fast float %7419, %7416
  %7421 = fadd fast float %7420, %7403
  br label %7422

; <label>:7422                                    ; preds = %7404, %7402
  %7423 = phi float [ %7421, %7404 ], [ %7403, %7402 ]
  %7424 = call float @dx.op.binary.f32(i32 35, float %7393, float %7423)  ; FMax(a,b)
  %7425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7426 = extractvalue %dx.types.CBufRet.i32 %7425, 2
  %7427 = and i32 %7426, 1
  %7428 = icmp eq i32 %7427, 0
  %7429 = fcmp fast une float %7424, 1.000000e+00
  %7430 = and i1 %7429, %7428
  br i1 %7430, label %7431, label %7450

; <label>:7431                                    ; preds = %7422
  %7432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %37, float %7111, float %7112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7433 = extractvalue %dx.types.ResRet.f32 %7432, 0
  %7434 = extractvalue %dx.types.ResRet.f32 %7432, 1
  %7435 = extractvalue %dx.types.ResRet.f32 %7432, 2
  %7436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7437 = extractvalue %dx.types.CBufRet.f32 %7436, 1
  %7438 = fmul fast float %7437, %7433
  %7439 = fmul fast float %7437, %7434
  %7440 = fmul fast float %7437, %7435
  %7441 = fcmp fast ogt float %7393, 0x3FEFFF2E40000000
  %7442 = fsub fast float 1.000000e+00, %7424
  %7443 = fsub fast float 1.000000e+00, %7393
  %7444 = fdiv fast float %7442, %7443
  %7445 = call float @dx.op.unary.f32(i32 7, float %7444)  ; Saturate(value)
  %7446 = select i1 %7441, float 0.000000e+00, float %7445
  %7447 = fmul fast float %7438, %7446
  %7448 = fmul fast float %7439, %7446
  %7449 = fmul fast float %7440, %7446
  br label %7450

; <label>:7450                                    ; preds = %7431, %7422
  %7451 = phi float [ 0.000000e+00, %7422 ], [ %7447, %7431 ]
  %7452 = phi float [ 0.000000e+00, %7422 ], [ %7448, %7431 ]
  %7453 = phi float [ 0.000000e+00, %7422 ], [ %7449, %7431 ]
  %7454 = fmul fast float %7451, %6028
  %7455 = fmul fast float %7452, %6028
  %7456 = fmul fast float %7453, %6028
  %7457 = fmul fast float %7424, %7086
  %7458 = call float @dx.op.dot3.f32(i32 55, float %7424, float %7424, float %7424, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7459 = call float @dx.op.dot3.f32(i32 55, float %7454, float %7455, float %7456, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7460 = select i1 %255, float %7458, float %7424
  %7461 = select i1 %255, float 1.000000e+00, float %7424
  %7462 = select i1 %255, float %7459, float %7454
  %7463 = select i1 %255, float 0.000000e+00, float %7455
  %7464 = select i1 %255, float 0.000000e+00, float %7456
  %7465 = fmul fast float %7460, %7098
  %7466 = fmul fast float %7460, %7099
  %7467 = fmul fast float %7461, %7100
  %7468 = fadd fast float %7465, %7462
  %7469 = fadd fast float %7466, %7463
  %7470 = fadd fast float %7464, %7467
  %7471 = fmul fast float %7460, %7101
  %7472 = fmul fast float %7460, %7102
  %7473 = fmul fast float %7461, %7103
  br label %7474

; <label>:7474                                    ; preds = %7450, %7107, %7076, %6308
  %7475 = phi float [ %6313, %6308 ], [ %7098, %7076 ], [ %7468, %7450 ], [ %7098, %7107 ]
  %7476 = phi float [ %6314, %6308 ], [ %7099, %7076 ], [ %7469, %7450 ], [ %7099, %7107 ]
  %7477 = phi float [ %6315, %6308 ], [ %7100, %7076 ], [ %7470, %7450 ], [ %7100, %7107 ]
  %7478 = phi float [ %6316, %6308 ], [ %7101, %7076 ], [ %7471, %7450 ], [ %7101, %7107 ]
  %7479 = phi float [ %6317, %6308 ], [ %7102, %7076 ], [ %7472, %7450 ], [ %7102, %7107 ]
  %7480 = phi float [ %6318, %6308 ], [ %7103, %7076 ], [ %7473, %7450 ], [ %7103, %7107 ]
  %7481 = phi float [ %6319, %6308 ], [ %7086, %7076 ], [ %7457, %7450 ], [ %7086, %7107 ]
  %7482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7483 = extractvalue %dx.types.CBufRet.f32 %7482, 2
  %7484 = extractvalue %dx.types.CBufRet.f32 %7482, 3
  %7485 = fmul fast float %7483, %94
  %7486 = fmul fast float %7484, %95
  %7487 = call float @dx.op.unary.f32(i32 7, float %7485)  ; Saturate(value)
  %7488 = call float @dx.op.unary.f32(i32 7, float %7486)  ; Saturate(value)
  %7489 = select i1 %6050, i32 2, i32 0
  %7490 = or i32 %7489, 1
  %7491 = uitofp i32 %7490 to float
  %7492 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %7487, float %7488, float %7491, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7493 = extractvalue %dx.types.ResRet.f32 %7492, 0
  %7494 = extractvalue %dx.types.ResRet.f32 %7492, 1
  %7495 = extractvalue %dx.types.ResRet.f32 %7492, 2
  %7496 = extractvalue %dx.types.ResRet.f32 %7492, 3
  %7497 = add nuw nsw i32 %7489, 2
  %7498 = uitofp i32 %7497 to float
  %7499 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %7487, float %7488, float %7498, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7500 = extractvalue %dx.types.ResRet.f32 %7499, 0
  %7501 = extractvalue %dx.types.ResRet.f32 %7499, 1
  %7502 = extractvalue %dx.types.ResRet.f32 %7499, 2
  %7503 = extractvalue %dx.types.ResRet.f32 %7499, 3
  %7504 = call float @dx.op.binary.f32(i32 35, float %7494, float %7495)  ; FMax(a,b)
  %7505 = call float @dx.op.binary.f32(i32 35, float %7493, float %7504)  ; FMax(a,b)
  %7506 = call float @dx.op.binary.f32(i32 35, float %7505, float %7496)  ; FMax(a,b)
  %7507 = call float @dx.op.binary.f32(i32 36, float %7501, float %7502)  ; FMin(a,b)
  %7508 = call float @dx.op.binary.f32(i32 36, float %7500, float %7507)  ; FMin(a,b)
  %7509 = call float @dx.op.binary.f32(i32 36, float %7508, float %7503)  ; FMin(a,b)
  %7510 = fmul fast float %7506, 2.550000e+02
  %7511 = fadd fast float %7510, 0x3F70101020000000
  %7512 = fptoui float %7511 to i32
  %7513 = fmul fast float %7509, 2.550000e+02
  %7514 = fadd fast float %7513, 0x3F70101020000000
  %7515 = fptoui float %7514 to i32
  %7516 = icmp ult i32 %7512, %7515
  br i1 %7516, label %7517, label %7686

; <label>:7517                                    ; preds = %7474
  %7518 = fcmp fast ogt float %84, 9.843750e-01
  %7519 = fadd fast float %6312, -4.000000e+00
  %7520 = select i1 %7518, float -4.000000e+00, float %7519
  %7521 = call float @dx.op.binary.f32(i32 35, float %7520, float 0.000000e+00)  ; FMax(a,b)
  %7522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7523 = extractvalue %dx.types.CBufRet.f32 %7522, 0
  %7524 = fadd fast float %7523, %7521
  %7525 = extractvalue %dx.types.CBufRet.f32 %7522, 2
  %7526 = fmul fast float %7524, %7525
  %7527 = call float @dx.op.unary.f32(i32 23, float %7526)  ; Log(value)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7522, 3
  %7529 = fmul fast float %7528, %7527
  %7530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7531 = extractvalue %dx.types.CBufRet.f32 %7530, 2
  %7532 = fmul fast float %7529, %7531
  %7533 = call float @dx.op.unary.f32(i32 7, float %7532)  ; Saturate(value)
  %7534 = uitofp i32 %7512 to float
  %7535 = uitofp i32 %7515 to float
  %7536 = fadd fast float %7534, 5.000000e-01
  %7537 = fadd fast float %7535, 5.000000e-01
  %7538 = fmul fast float %7531, %7536
  %7539 = fmul fast float %7531, %7537
  %7540 = fadd fast float %7538, 0x3F0FFB4800000000
  %7541 = fadd fast float %7539, 0xBF0FFB4800000000
  %7542 = call float @dx.op.binary.f32(i32 35, float %7533, float %7540)  ; FMax(a,b)
  %7543 = call float @dx.op.binary.f32(i32 36, float %7542, float %7541)  ; FMin(a,b)
  %7544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7545 = extractvalue %dx.types.CBufRet.f32 %7544, 1
  %7546 = extractvalue %dx.types.CBufRet.f32 %7544, 2
  %7547 = extractvalue %dx.types.CBufRet.f32 %7544, 0
  %7548 = select i1 %6050, float %7547, float 0.000000e+00
  %7549 = fmul fast float %7545, %7543
  %7550 = fadd fast float %7548, %7549
  %7551 = fadd fast float %7548, %7546
  %7552 = fsub fast float %7545, %7546
  %7553 = fadd fast float %7552, %7548
  %7554 = call float @dx.op.binary.f32(i32 35, float %7550, float %7551)  ; FMax(a,b)
  %7555 = call float @dx.op.binary.f32(i32 36, float %7554, float %7553)  ; FMin(a,b)
  %7556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %7487, float %7488, float %7555, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7557 = extractvalue %dx.types.ResRet.f32 %7556, 0
  %7558 = extractvalue %dx.types.ResRet.f32 %7556, 1
  %7559 = extractvalue %dx.types.ResRet.f32 %7556, 2
  %7560 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7561 = extractvalue %dx.types.CBufRet.i32 %7560, 0
  %7562 = extractvalue %dx.types.CBufRet.i32 %7560, 1
  %7563 = uitofp i32 %7561 to float
  %7564 = uitofp i32 %7562 to float
  %7565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7566 = extractvalue %dx.types.CBufRet.f32 %7565, 0
  %7567 = extractvalue %dx.types.CBufRet.f32 %7565, 1
  %7568 = fmul fast float %7563, %7487
  %7569 = fmul fast float %7564, %7488
  %7570 = fadd fast float %7568, -5.000000e-01
  %7571 = fadd fast float %7569, -5.000000e-01
  %7572 = call float @dx.op.unary.f32(i32 22, float %7570)  ; Frc(value)
  %7573 = call float @dx.op.unary.f32(i32 22, float %7571)  ; Frc(value)
  %7574 = fmul fast float %7572, %7572
  %7575 = fmul fast float %7574, %7572
  %7576 = fsub fast float 3.000000e+00, %7572
  %7577 = fmul fast float %7574, %7576
  %7578 = fmul fast float %7572, 3.000000e+00
  %7579 = fmul fast float %7575, 3.000000e+00
  %7580 = fmul fast float %7574, 6.000000e+00
  %7581 = fsub fast float %7579, %7580
  %7582 = fadd fast float %7581, 4.000000e+00
  %7583 = fmul fast float %7582, 0x3FC5555560000000
  %7584 = fmul fast float %7575, -3.000000e+00
  %7585 = fadd fast float %7574, %7572
  %7586 = fmul fast float %7585, 3.000000e+00
  %7587 = fadd fast float %7584, 1.000000e+00
  %7588 = fadd fast float %7587, %7586
  %7589 = fmul fast float %7575, 0x3FC5555560000000
  %7590 = fmul fast float %7573, %7573
  %7591 = fmul fast float %7590, %7573
  %7592 = fsub fast float 3.000000e+00, %7573
  %7593 = fmul fast float %7590, %7592
  %7594 = fmul fast float %7573, 3.000000e+00
  %7595 = fmul fast float %7591, 3.000000e+00
  %7596 = fmul fast float %7590, 6.000000e+00
  %7597 = fsub fast float %7595, %7596
  %7598 = fadd fast float %7597, 4.000000e+00
  %7599 = fmul fast float %7598, 0x3FC5555560000000
  %7600 = fmul fast float %7591, -3.000000e+00
  %7601 = fadd fast float %7590, %7573
  %7602 = fmul fast float %7601, 3.000000e+00
  %7603 = fadd fast float %7600, 1.000000e+00
  %7604 = fadd fast float %7603, %7602
  %7605 = fmul fast float %7591, 0x3FC5555560000000
  %7606 = fadd fast float %7572, 1.000000e+00
  %7607 = fsub fast float 1.000000e+00, %7578
  %7608 = fadd fast float %7607, %7577
  %7609 = fadd fast float %7608, %7582
  %7610 = fmul fast float %7609, 0x3FC5555560000000
  %7611 = fdiv fast float %7583, %7610
  %7612 = fsub fast float %7606, %7611
  %7613 = fsub fast float 1.000000e+00, %7572
  %7614 = fadd fast float %7588, %7575
  %7615 = fmul fast float %7614, 0x3FC5555560000000
  %7616 = fdiv fast float %7589, %7615
  %7617 = fadd fast float %7613, %7616
  %7618 = fadd fast float %7573, 1.000000e+00
  %7619 = fsub fast float 1.000000e+00, %7594
  %7620 = fadd fast float %7619, %7593
  %7621 = fadd fast float %7620, %7598
  %7622 = fmul fast float %7621, 0x3FC5555560000000
  %7623 = fdiv fast float %7599, %7622
  %7624 = fsub fast float %7618, %7623
  %7625 = fsub fast float 1.000000e+00, %7573
  %7626 = fadd fast float %7604, %7591
  %7627 = fmul fast float %7626, 0x3FC5555560000000
  %7628 = fdiv fast float %7605, %7627
  %7629 = fadd fast float %7628, %7625
  %7630 = fmul fast float %7612, %7566
  %7631 = fsub fast float %7487, %7630
  %7632 = fmul fast float %7617, %7566
  %7633 = fadd fast float %7632, %7487
  %7634 = fmul fast float %7629, %7567
  %7635 = fadd fast float %7634, %7488
  %7636 = fmul fast float %7624, %7567
  %7637 = fsub fast float %7488, %7636
  %7638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7631, float %7637, float %7555, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7639 = extractvalue %dx.types.ResRet.f32 %7638, 0
  %7640 = extractvalue %dx.types.ResRet.f32 %7638, 1
  %7641 = extractvalue %dx.types.ResRet.f32 %7638, 2
  %7642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7633, float %7637, float %7555, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7643 = extractvalue %dx.types.ResRet.f32 %7642, 0
  %7644 = extractvalue %dx.types.ResRet.f32 %7642, 1
  %7645 = extractvalue %dx.types.ResRet.f32 %7642, 2
  %7646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7631, float %7635, float %7555, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7647 = extractvalue %dx.types.ResRet.f32 %7646, 0
  %7648 = extractvalue %dx.types.ResRet.f32 %7646, 1
  %7649 = extractvalue %dx.types.ResRet.f32 %7646, 2
  %7650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7633, float %7635, float %7555, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7651 = extractvalue %dx.types.ResRet.f32 %7650, 0
  %7652 = extractvalue %dx.types.ResRet.f32 %7650, 1
  %7653 = extractvalue %dx.types.ResRet.f32 %7650, 2
  %7654 = fsub fast float %7647, %7639
  %7655 = fsub fast float %7648, %7640
  %7656 = fsub fast float %7649, %7641
  %7657 = fmul fast float %7654, %7627
  %7658 = fmul fast float %7655, %7627
  %7659 = fmul fast float %7656, %7627
  %7660 = fadd fast float %7657, %7639
  %7661 = fadd fast float %7658, %7640
  %7662 = fadd fast float %7659, %7641
  %7663 = fsub fast float %7651, %7643
  %7664 = fsub fast float %7652, %7644
  %7665 = fsub fast float %7653, %7645
  %7666 = fmul fast float %7663, %7627
  %7667 = fmul fast float %7664, %7627
  %7668 = fmul fast float %7665, %7627
  %7669 = fsub fast float %7643, %7660
  %7670 = fadd fast float %7669, %7666
  %7671 = fsub fast float %7644, %7661
  %7672 = fadd fast float %7671, %7667
  %7673 = fsub fast float %7645, %7662
  %7674 = fadd fast float %7673, %7668
  %7675 = fmul fast float %7670, %7615
  %7676 = fmul fast float %7672, %7615
  %7677 = fmul fast float %7674, %7615
  %7678 = fadd fast float %7675, %7660
  %7679 = fadd fast float %7676, %7661
  %7680 = fadd fast float %7677, %7662
  %7681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7682 = extractvalue %dx.types.CBufRet.f32 %7681, 1
  %7683 = fmul fast float %7678, %7682
  %7684 = fmul fast float %7679, %7682
  %7685 = fmul fast float %7680, %7682
  br label %7686

; <label>:7686                                    ; preds = %7517, %7474
  %7687 = phi float [ %7557, %7517 ], [ 1.000000e+00, %7474 ]
  %7688 = phi float [ %7558, %7517 ], [ 1.000000e+00, %7474 ]
  %7689 = phi float [ %7559, %7517 ], [ 1.000000e+00, %7474 ]
  %7690 = phi float [ %7683, %7517 ], [ 0.000000e+00, %7474 ]
  %7691 = phi float [ %7684, %7517 ], [ 0.000000e+00, %7474 ]
  %7692 = phi float [ %7685, %7517 ], [ 0.000000e+00, %7474 ]
  %7693 = fmul fast float %7690, %6028
  %7694 = fmul fast float %7691, %6028
  %7695 = fmul fast float %7692, %6028
  %7696 = fmul fast float %7687, %7481
  %7697 = call float @dx.op.dot3.f32(i32 55, float %7687, float %7688, float %7689, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7698 = call float @dx.op.dot3.f32(i32 55, float %7693, float %7694, float %7695, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7699 = select i1 %255, float %7697, float %7687
  %7700 = select i1 %255, float %7697, float %7688
  %7701 = select i1 %255, float 1.000000e+00, float %7689
  %7702 = select i1 %255, float %7698, float %7693
  %7703 = select i1 %255, float 0.000000e+00, float %7694
  %7704 = select i1 %255, float 0.000000e+00, float %7695
  %7705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7706 = extractvalue %dx.types.CBufRet.i32 %7705, 3
  %7707 = and i32 %7706, 3
  %7708 = icmp ne i32 %7707, 0
  %7709 = and i32 %7706, 4
  %7710 = icmp ne i32 %7709, 0
  %7711 = and i1 %7708, %7710
  %7712 = and i1 %255, %7711
  br i1 %7712, label %7713, label %7719

; <label>:7713                                    ; preds = %7686
  %7714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7715 = extractvalue %dx.types.CBufRet.f32 %7714, 1
  %7716 = fadd fast float %7696, -1.000000e+00
  %7717 = fmul fast float %7715, %7716
  %7718 = fadd fast float %7717, 1.000000e+00
  br label %7719

; <label>:7719                                    ; preds = %7713, %7686
  %7720 = phi float [ %7718, %7713 ], [ %7696, %7686 ]
  %7721 = fadd fast float %7478, %7475
  %7722 = fmul fast float %7699, %7721
  %7723 = fadd fast float %7722, %7702
  %7724 = fadd fast float %7479, %7476
  %7725 = fmul fast float %7700, %7724
  %7726 = fadd fast float %7725, %7703
  %7727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7728 = extractvalue %dx.types.CBufRet.f32 %7727, 0
  br i1 %255, label %7729, label %7753

; <label>:7729                                    ; preds = %7719
  %7730 = fadd fast float %7723, %7726
  %7731 = fmul fast float %7728, %7730
  %7732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7733 = extractvalue %dx.types.CBufRet.f32 %7732, 3
  %7734 = extractvalue %dx.types.CBufRet.f32 %6032, 1
  %7735 = fsub fast float %6037, %6031
  %7736 = fadd fast float %7735, %6038
  %7737 = fsub fast float %7736, %7734
  %7738 = extractvalue %dx.types.CBufRet.f32 %6032, 2
  %7739 = fmul fast float %7737, %7738
  %7740 = call float @dx.op.unary.f32(i32 7, float %7739)  ; Saturate(value)
  %7741 = fsub fast float %7740, %7733
  %7742 = fmul fast float %7741, %7720
  %7743 = fadd fast float %7742, %7733
  %7744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7745 = extractvalue %dx.types.CBufRet.f32 %7744, 0
  %7746 = fsub fast float %7743, %7745
  %7747 = fmul fast float %7746, 1.000000e+01
  %7748 = call float @dx.op.unary.f32(i32 7, float %7747)  ; Saturate(value)
  %7749 = fsub fast float %3883, %6028
  %7750 = fmul fast float %7748, %7749
  %7751 = fadd fast float %7750, %6028
  %7752 = fmul fast float %7751, %7743
  br label %7777

; <label>:7753                                    ; preds = %7719
  %7754 = fadd fast float %7480, %7477
  %7755 = fmul fast float %7701, %7754
  %7756 = fadd fast float %7755, %7704
  %7757 = fmul fast float %7728, %7723
  %7758 = fmul fast float %7728, %7726
  %7759 = fmul fast float %7728, %7756
  %7760 = call float @dx.op.binary.f32(i32 35, float %7758, float %7759)  ; FMax(a,b)
  %7761 = call float @dx.op.binary.f32(i32 35, float %7757, float %7760)  ; FMax(a,b)
  %7762 = call float @dx.op.binary.f32(i32 35, float %7761, float %6028)  ; FMax(a,b)
  %7763 = fcmp fast ugt float %7762, 0x3F10000000000000
  br i1 %7763, label %7765, label %7764

; <label>:7764                                    ; preds = %7753
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7765

; <label>:7765                                    ; preds = %7764, %7753
  %7766 = add i32 %43, 356
  %7767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %7766, i32 undef)  ; BufferLoad(srv,index,wot)
  %7768 = extractvalue %dx.types.ResRet.i32 %7767, 0
  %7769 = and i32 %7768, 32
  %7770 = icmp eq i32 %7769, 0
  br i1 %7770, label %7777, label %7771

; <label>:7771                                    ; preds = %7765
  %7772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7773 = extractvalue %dx.types.CBufRet.f32 %7772, 0
  %7774 = fmul fast float %7773, 0x3FE99999A0000000
  %7775 = fadd fast float %7773, %7757
  %7776 = fadd fast float %7774, %7759
  br label %7777

; <label>:7777                                    ; preds = %7771, %7765, %7729
  %7778 = phi float [ %7731, %7729 ], [ %7775, %7771 ], [ %7757, %7765 ]
  %7779 = phi float [ %7752, %7729 ], [ %7758, %7771 ], [ %7758, %7765 ]
  %7780 = phi float [ %7751, %7729 ], [ %7776, %7771 ], [ %7759, %7765 ]
  %7781 = phi float [ %7751, %7729 ], [ %6028, %7771 ], [ %6028, %7765 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7782 = call float @dx.op.binary.f32(i32 36, float %7778, float 3.225500e+04)  ; FMin(a,b)
  %7783 = call float @dx.op.binary.f32(i32 36, float %7779, float 3.225500e+04)  ; FMin(a,b)
  %7784 = call float @dx.op.binary.f32(i32 36, float %7780, float 3.225500e+04)  ; FMin(a,b)
  %7785 = call float @dx.op.binary.f32(i32 36, float %7781, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7782)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7783)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7784)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7785)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!55 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!56 = !{void ()* @ps_main, !"ps_main", !57, !4, !82}
!57 = !{!58, !80, null}
!58 = !{!59, !62, !63, !65, !67, !68, !69, !70, !71, !72, !73, !74, !75, !77, !78, !79}
!59 = !{i32 0, !"SV_Position", i8 9, i8 3, !60, i8 4, i32 1, i8 4, i32 0, i8 0, !61}
!60 = !{i32 0}
!61 = !{i32 3, i32 15}
!62 = !{i32 1, !"COLOR", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 1, i8 0, !61}
!63 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 2, i8 0, !64}
!64 = !{i32 3, i32 3}
!65 = !{i32 3, !"NORMAL", i8 9, i8 0, !60, i8 2, i32 1, i8 3, i32 3, i8 0, !66}
!66 = !{i32 3, i32 7}
!67 = !{i32 4, !"TANGENT", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 4, i8 0, !61}
!68 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !60, i8 2, i32 1, i8 3, i32 5, i8 0, !66}
!69 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 6, i8 0, !61}
!70 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !60, i8 2, i32 1, i8 3, i32 7, i8 0, !66}
!71 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 8, i8 0, !61}
!72 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !60, i8 2, i32 1, i8 2, i32 9, i8 0, !64}
!73 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 10, i8 0, !61}
!74 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 11, i8 0, !66}
!75 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !60, i8 1, i32 1, i8 1, i32 12, i8 0, !76}
!76 = !{i32 3, i32 1}
!77 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !60, i8 1, i32 1, i8 2, i32 12, i8 1, !76}
!78 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !60, i8 1, i32 1, i8 4, i32 13, i8 0, !76}
!79 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !60, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!80 = !{!81}
!81 = !{i32 0, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!82 = !{i32 0, i64 16}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = !{!89, !89, i64 0}
!89 = !{!"int", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !{!93, !95, !97, !99}
!93 = distinct !{!93, !94, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!94 = distinct !{!94, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!95 = distinct !{!95, !96, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!96 = distinct !{!96, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!97 = distinct !{!97, !98, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!98 = distinct !{!98, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!99 = distinct !{!99, !100, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!100 = distinct !{!100, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = !{!111, !111, i64 0}
!111 = !{!"float", !90, i64 0}
!112 = !{!113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!113 = distinct !{!113, !114, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!114 = distinct !{!114, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!115 = distinct !{!115, !116, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!116 = distinct !{!116, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!117 = distinct !{!117, !116, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!118 = distinct !{!118, !119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!119 = distinct !{!119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!120 = distinct !{!120, !119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!121 = distinct !{!121, !119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!122 = distinct !{!122, !123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!123 = distinct !{!123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!124 = distinct !{!124, !123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!125 = distinct !{!125, !123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!126 = distinct !{!126, !127, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!127 = distinct !{!127, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"\01?sort@@YAXAIAM00@Z: %c"}
!130 = distinct !{!130, !"\01?sort@@YAXAIAM00@Z"}
!131 = !{!132, !133, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!132 = distinct !{!132, !130, !"\01?sort@@YAXAIAM00@Z: %a"}
!133 = distinct !{!133, !130, !"\01?sort@@YAXAIAM00@Z: %b"}
!134 = !{!133}
!135 = !{!132, !129, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!136 = !{!132}
!137 = !{!133, !129, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!138 = !{!139}
!139 = distinct !{!139, !140, !"\01?sort@@YAXAIAM00@Z: %c"}
!140 = distinct !{!140, !"\01?sort@@YAXAIAM00@Z"}
!141 = !{!142, !143, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!142 = distinct !{!142, !140, !"\01?sort@@YAXAIAM00@Z: %a"}
!143 = distinct !{!143, !140, !"\01?sort@@YAXAIAM00@Z: %b"}
!144 = !{!143}
!145 = !{!142, !139, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!146 = !{!142}
!147 = !{!143, !139, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 2}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}

