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
; SV_IsFrontFace           0    y         13    FFACE    uint    y  
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
; shader hash: 66fe42dc2ee22b36e9e5130787b7bc56
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
; SV_IsFrontFace           0        nointerpolation       
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
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          3d      T3     t52,space2     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture    byte         r/o      T5      t3,space1     1
;                                   texture    byte         r/o      T6      t4,space1     1
;                                   texture    byte         r/o      T7      t5,space1     1
;                                   texture    byte         r/o      T8      t6,space1     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture    byte         r/o     T10     t18,space1     1
;                                   texture    byte         r/o     T11     t19,space1     1
;                                   texture    byte         r/o     T12     t20,space1     1
;                                   texture    byte         r/o     T13     t21,space1     1
;                                   texture     f32          2d     T14     t37,space2     1
;                                   texture     f32          2d     T15             t0     1
;                                   texture     f32          2d     T16     t58,space2     1
;                                   texture     f32          2d     T17     t57,space2     1
;                                   texture    byte         r/o     T18     t69,space1     1
;                                   texture     u32          2d     T19     t56,space2     1
;                                   texture     f32     2darray     T20     t35,space2     1
;                                   texture     f32          2d     T21     t34,space2     1
;                                   texture     f32          3d     T22     t31,space2     1
;                                   texture     f32          1d     T23     t30,space2     1
;                                   texture     f32          3d     T24     t44,space2     1
;                                   texture     f32          3d     T25     t45,space2     1
;                                   texture     f32     2darray     T26     t47,space2     1
;                                   textureunorm_f32     2darray     T27     t85,space2     1
;                                   texture     f32          2d     T28     t83,space2     1
;                                   texture     f32          2d     T29     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = icmp ne i32 %34, 0
  %36 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = alloca [3 x float], align 4
  %84 = alloca [3 x float], align 4
  %85 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %86 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = fmul fast float %88, %79
  %90 = fmul fast float %88, %80
  %91 = select i1 %35, float 1.000000e+00, float -1.000000e+00
  %92 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %93 = bitcast float %92 to i32
  %94 = ashr i32 %93, 1
  %95 = sub nsw i32 1597250115, %94
  %96 = bitcast i32 %95 to float
  %97 = fmul fast float %70, %91
  %98 = fmul fast float %97, %96
  %99 = fmul fast float %71, %91
  %100 = fmul fast float %99, %96
  %101 = fmul fast float %72, %91
  %102 = fmul fast float %101, %96
  %103 = fmul fast float %71, %68
  %104 = fmul fast float %72, %67
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %72, %66
  %107 = fmul fast float %70, %68
  %108 = fsub fast float %106, %107
  %109 = fmul fast float %70, %67
  %110 = fmul fast float %71, %66
  %111 = fsub fast float %109, %110
  %112 = fmul fast float %105, %69
  %113 = fmul fast float %108, %69
  %114 = fmul fast float %111, %69
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = fcmp fast une float %116, 0.000000e+00
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 3
  %121 = fmul fast float %89, 2.000000e+00
  %122 = fmul fast float %121, %119
  %123 = fmul fast float %90, 2.000000e+00
  %124 = fmul fast float %123, %120
  %125 = fsub fast float 1.000000e+00, %122
  %126 = fsub fast float 1.000000e+00, %124
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = select i1 %117, float %128, float %132
  %136 = select i1 %117, float %129, float %133
  %137 = select i1 %117, float %130, float %134
  %138 = fmul fast float %135, %125
  %139 = fmul fast float %136, %125
  %140 = fmul fast float %137, %125
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = select i1 %117, float %142, float %146
  %150 = select i1 %117, float %143, float %147
  %151 = select i1 %117, float %144, float %148
  %152 = fmul fast float %149, %126
  %153 = fmul fast float %150, %126
  %154 = fmul fast float %151, %126
  %155 = fadd fast float %152, %138
  %156 = fadd fast float %153, %139
  %157 = fadd fast float %154, %140
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = select i1 %117, float %159, float %163
  %167 = select i1 %117, float %160, float %164
  %168 = select i1 %117, float %161, float %165
  %169 = fadd fast float %155, %166
  %170 = fadd fast float %156, %167
  %171 = fadd fast float %157, %168
  %172 = fmul fast float %169, %82
  %173 = fmul fast float %170, %82
  %174 = fmul fast float %171, %82
  %175 = fmul fast float %89, 5.000000e-01
  %176 = fmul fast float %90, 5.000000e-01
  %177 = fptosi float %175 to i32
  %178 = fptosi float %176 to i32
  %179 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %177, i32 %178, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = lshr i32 %180, 18
  %182 = uitofp i32 %181 to float
  %183 = fmul fast float %182, 0x3F4C00EBA0000000
  %184 = call float @dx.op.unary.f32(i32 21, float %183)  ; Exp(value)
  %185 = fadd fast float %184, -1.000000e+00
  %186 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %187 = extractvalue %dx.types.Dimensions %186, 0
  %188 = sitofp i32 %187 to float
  %189 = extractvalue %dx.types.Dimensions %186, 1
  %190 = sitofp i32 %189 to float
  %191 = fcmp fast oge float %175, %188
  %192 = fcmp fast oge float %176, %190
  %193 = or i1 %191, %192
  %194 = select i1 %193, float 0x4197782600000000, float %185
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 3
  %198 = fmul fast float %196, %89
  %199 = fmul fast float %197, %90
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = and i32 %201, 114688
  %203 = icmp ne i32 %202, 0
  %204 = select i1 %203, float %198, float 0.000000e+00
  %205 = select i1 %203, float %199, float 0.000000e+00
  %206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %31, float %204, float %205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = fmul fast float %207, 2.550000e+02
  %209 = fptoui float %208 to i32
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.i32 %211, 3
  %213 = and i32 %212, 3
  %214 = icmp ne i32 %213, 0
  %215 = and i32 %212, 4
  %216 = icmp ne i32 %215, 0
  %217 = and i1 %214, %216
  br i1 %217, label %218, label %229

; <label>:218                                     ; preds = %0
  %219 = extractvalue %dx.types.CBufRet.f32 %210, 3
  %220 = fmul fast float %219, %90
  %221 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %222 = fmul fast float %221, %89
  %223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %30, float %222, float %220, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = fsub fast float 1.000000e+00, %224
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 0
  %228 = fcmp fast olt float %225, %227
  br label %232

; <label>:229                                     ; preds = %0
  %230 = icmp eq i32 %215, 0
  %231 = and i1 %214, %230
  br label %232

; <label>:232                                     ; preds = %229, %218
  %233 = phi i1 [ %228, %218 ], [ %231, %229 ]
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %236 = fmul fast float %235, 0x3FE3C6EF40000000
  %237 = frem fast float %89, 2.560000e+02
  %238 = frem fast float %90, 2.560000e+02
  %239 = fptoui float %237 to i32
  %240 = fptoui float %238 to i32
  %241 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %239, i32 %240, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = fadd fast float %242, %236
  %244 = call float @dx.op.unary.f32(i32 22, float %243)  ; Frc(value)
  %245 = add i32 %36, 156
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = shl i32 %247, 4
  %249 = and i32 %248, 32752
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %247, 7
  %252 = and i32 %251, 32752
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %247, 22
  %255 = shl nuw nsw i32 %254, 5
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = add i32 %36, 216
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 255
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F70101020000000
  %263 = lshr i32 %259, 8
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F70101020000000
  %267 = lshr i32 %259, 16
  %268 = and i32 %267, 255
  %269 = uitofp i32 %268 to float
  %270 = fmul fast float %269, 0x3F70101020000000
  %271 = add i32 %36, 36
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 65535
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %273, 16
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = add i32 %36, 288
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 65535
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %280, 16
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = fmul fast float %282, 0x3F50624DE0000000
  %286 = fmul fast float %284, 0x3F50624DE0000000
  %287 = add i32 %36, 172
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = shl i32 %289, 4
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %289, 7
  %294 = and i32 %293, 32752
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %289, 22
  %297 = shl nuw nsw i32 %296, 5
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = add i32 %36, 232
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = lshr i32 %301, 8
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = lshr i32 %301, 16
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F70101020000000
  %313 = add i32 %36, 52
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = add i32 %36, 304
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = fmul fast float %324, 0x3F50624DE0000000
  %328 = fmul fast float %326, 0x3F50624DE0000000
  %329 = add i32 %36, 188
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = shl i32 %331, 4
  %333 = and i32 %332, 32752
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %331, 7
  %336 = and i32 %335, 32752
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %331, 22
  %339 = shl nuw nsw i32 %338, 5
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = add i32 %36, 248
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = lshr i32 %343, 8
  %348 = and i32 %347, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F70101020000000
  %351 = lshr i32 %343, 16
  %352 = and i32 %351, 255
  %353 = uitofp i32 %352 to float
  %354 = fmul fast float %353, 0x3F70101020000000
  %355 = add i32 %36, 68
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 65535
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %357, 16
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = add i32 %36, 320
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 65535
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %364, 16
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = fmul fast float %366, 0x3F50624DE0000000
  %370 = fmul fast float %368, 0x3F50624DE0000000
  %371 = add i32 %36, 204
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = shl i32 %373, 4
  %375 = and i32 %374, 32752
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %373, 7
  %378 = and i32 %377, 32752
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = lshr i32 %373, 22
  %381 = shl nuw nsw i32 %380, 5
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = add i32 %36, 264
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 255
  %387 = uitofp i32 %386 to float
  %388 = fmul fast float %387, 0x3F70101020000000
  %389 = lshr i32 %385, 8
  %390 = and i32 %389, 255
  %391 = uitofp i32 %390 to float
  %392 = fmul fast float %391, 0x3F70101020000000
  %393 = lshr i32 %385, 16
  %394 = and i32 %393, 255
  %395 = uitofp i32 %394 to float
  %396 = fmul fast float %395, 0x3F70101020000000
  %397 = add i32 %36, 84
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 65535
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = lshr i32 %399, 16
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = add i32 %36, 336
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 65535
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %406, 16
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = fmul fast float %408, 0x3F50624DE0000000
  %412 = fmul fast float %410, 0x3F50624DE0000000
  %413 = add i32 %36, 348
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 32
  %417 = icmp eq i32 %416, 0
  %418 = and i32 %415, 64
  %419 = icmp eq i32 %418, 0
  %420 = and i32 %415, 128
  %421 = icmp eq i32 %420, 0
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 2
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %441, label %426

; <label>:426                                     ; preds = %232
  %427 = add i32 %36, 472
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = add i32 %429, 0
  %431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %430, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %432 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %431, %dx.types.Handle %86, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = extractvalue %dx.types.ResRet.f32 %432, 3
  %437 = fmul fast float %436, %75
  %438 = fmul fast float %433, %76
  %439 = fmul fast float %434, %77
  %440 = fmul fast float %435, %78
  br label %441

; <label>:441                                     ; preds = %426, %232
  %442 = phi float [ %78, %232 ], [ %440, %426 ]
  %443 = phi float [ %77, %232 ], [ %439, %426 ]
  %444 = phi float [ %76, %232 ], [ %438, %426 ]
  %445 = phi float [ %75, %232 ], [ %437, %426 ]
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = and i32 %447, 2
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %469, label %450

; <label>:450                                     ; preds = %441
  %451 = add i32 %36, 44
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 1
  %455 = icmp ne i32 %454, 0
  %456 = select i1 %455, float %444, float 1.000000e+00
  %457 = add i32 %36, 60
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 1
  %461 = icmp ne i32 %460, 0
  %462 = select i1 %461, float %443, float 1.000000e+00
  %463 = add i32 %36, 76
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 1
  %467 = icmp ne i32 %466, 0
  %468 = select i1 %467, float %442, float 1.000000e+00
  br label %469

; <label>:469                                     ; preds = %450, %441
  %470 = phi float [ %442, %441 ], [ %468, %450 ]
  %471 = phi float [ %443, %441 ], [ %462, %450 ]
  %472 = phi float [ %444, %441 ], [ %456, %450 ]
  %473 = lshr i32 %447, 20
  %474 = and i32 %473, 3
  %475 = add nuw nsw i32 %474, 1
  %476 = add i32 %36, 24
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = add i32 %36, 28
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = or i32 %481, %478
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %1018, label %484

; <label>:484                                     ; preds = %469
  %485 = and i32 %478, 262144
  %486 = icmp ne i32 %485, 0
  %487 = select i1 %486, float %41, float 1.000000e+00
  %488 = select i1 %486, float %42, float 0.000000e+00
  %489 = select i1 %486, float %43, float 0.000000e+00
  %490 = select i1 %486, float %44, float 1.000000e+00
  %491 = select i1 %486, float %45, float %73
  %492 = select i1 %486, float %46, float %74
  %493 = add i32 %36, 284
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = lshr i32 %495, 16
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = fmul fast float %497, 0x3F50624DE0000000
  %499 = add i32 %36, 88
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = lshr i32 %501, 16
  %503 = and i32 %502, 255
  %504 = lshr i32 %501, 24
  %505 = add i32 %36, 292
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = and i32 %507, 65535
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = lshr i32 %507, 16
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = add i32 %36, 32
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = lshr i32 %514, 22
  %516 = shl nuw nsw i32 %515, 5
  %517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %516)  ; LegacyF16ToF32(value)
  %518 = shl i32 %514, 4
  %519 = and i32 %518, 32752
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = lshr i32 %514, 7
  %522 = and i32 %521, 32752
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 3
  %526 = fmul fast float %525, 1.000000e+03
  %527 = fmul fast float %285, %526
  %528 = call float @dx.op.unary.f32(i32 22, float %527)  ; Frc(value)
  %529 = fadd fast float %528, %275
  %530 = fmul fast float %286, %526
  %531 = call float @dx.op.unary.f32(i32 22, float %530)  ; Frc(value)
  %532 = fadd fast float %531, %277
  %533 = fmul fast float %498, %526
  %534 = call float @dx.op.unary.f32(i32 22, float %533)  ; Frc(value)
  %535 = fmul fast float %534, 0x401921FB60000000
  %536 = fadd fast float %535, %517
  %537 = call float @dx.op.unary.f32(i32 13, float %536)  ; Sin(value)
  %538 = call float @dx.op.unary.f32(i32 12, float %536)  ; Cos(value)
  %539 = fsub fast float -0.000000e+00, %537
  %540 = fadd fast float %491, -5.000000e-01
  %541 = fadd fast float %492, -5.000000e-01
  %542 = fmul fast float %509, %540
  %543 = fmul fast float %511, %541
  %544 = fadd fast float %542, 5.000000e-01
  %545 = fadd fast float %543, 5.000000e-01
  %546 = fmul fast float %520, %544
  %547 = fmul fast float %523, %545
  %548 = fmul fast float %538, %546
  %549 = call float @dx.op.tertiary.f32(i32 46, float %539, float %547, float %548)  ; FMad(a,b,c)
  %550 = fmul fast float %537, %546
  %551 = call float @dx.op.tertiary.f32(i32 46, float %538, float %547, float %550)  ; FMad(a,b,c)
  %552 = fadd fast float %529, %549
  %553 = fadd fast float %532, %551
  %554 = icmp ugt i32 %503, 1
  %555 = icmp ugt i32 %501, 33554431
  %556 = or i1 %555, %554
  br i1 %556, label %557, label %582

; <label>:557                                     ; preds = %484
  %558 = add i32 %36, 228
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = lshr i32 %560, 16
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = fmul fast float %525, %562
  %564 = call float @dx.op.unary.f32(i32 22, float %563)  ; Frc(value)
  %565 = mul nuw nsw i32 %503, %504
  %566 = uitofp i32 %565 to float
  %567 = fmul fast float %564, %566
  %568 = call float @dx.op.unary.f32(i32 27, float %567)  ; Round_ni(value)
  %569 = fptoui float %568 to i32
  %570 = urem i32 %569, %503
  %571 = udiv i32 %569, %504
  %572 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %573 = call float @dx.op.unary.f32(i32 22, float %553)  ; Frc(value)
  %574 = uitofp i32 %570 to float
  %575 = uitofp i32 %571 to float
  %576 = fadd fast float %572, %574
  %577 = fadd fast float %573, %575
  %578 = uitofp i32 %503 to float
  %579 = uitofp i32 %504 to float
  %580 = fdiv fast float %576, %578
  %581 = fdiv fast float %577, %579
  br label %582

; <label>:582                                     ; preds = %557, %484
  %583 = phi float [ %580, %557 ], [ %552, %484 ]
  %584 = phi float [ %581, %557 ], [ %553, %484 ]
  %585 = and i32 %478, 256
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %633, label %587

; <label>:587                                     ; preds = %582
  %588 = add i32 %36, 424
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = add i32 %590, 0
  %592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %592, %dx.types.Handle %86, float %583, float %584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = add i32 %36, 100
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = shl i32 %597, 4
  %599 = and i32 %598, 32752
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = lshr i32 %597, 7
  %602 = and i32 %601, 32752
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = fsub fast float 1.000000e+00, %445
  %605 = call float @dx.op.binary.f32(i32 35, float %604, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %606 = bitcast float %445 to i32
  %607 = sitofp i32 %606 to float
  %608 = fadd fast float %607, 0xC1CFBF8940000000
  %609 = fmul fast float %603, %608
  %610 = fadd fast float %609, 0x41CFBF8940000000
  %611 = fptosi float %610 to i32
  %612 = bitcast i32 %611 to float
  %613 = bitcast float %605 to i32
  %614 = sitofp i32 %613 to float
  %615 = fadd fast float %614, 0xC1CFBF8940000000
  %616 = fmul fast float %615, %603
  %617 = fadd fast float %616, 0x41CFBF8940000000
  %618 = fptosi float %617 to i32
  %619 = bitcast i32 %618 to float
  %620 = fmul fast float %612, %600
  %621 = fmul fast float %619, %600
  %622 = fsub fast float %605, %620
  %623 = fadd fast float %621, %605
  %624 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %625 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  %626 = fsub fast float %594, %624
  %627 = fsub fast float %625, %624
  %628 = bitcast float %627 to i32
  %629 = sub nsw i32 2129859010, %628
  %630 = bitcast i32 %629 to float
  %631 = fmul fast float %630, %626
  %632 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  br label %633

; <label>:633                                     ; preds = %587, %582
  %634 = phi float [ %632, %587 ], [ %445, %582 ]
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = and i32 %636, 128
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %655, label %639

; <label>:639                                     ; preds = %633
  %640 = add i32 %36, 408
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = add i32 %642, 0
  %644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %645 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %644, %dx.types.Handle %86, float %583, float %584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %646 = extractvalue %dx.types.ResRet.f32 %645, 0
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = and i32 %648, 524288
  %650 = icmp ne i32 %649, 0
  %651 = fcmp fast ogt float %646, 0x3FE0101020000000
  %652 = select i1 %651, float 1.000000e+00, float 0.000000e+00
  %653 = select i1 %650, float %652, float %646
  %654 = fmul fast float %653, %634
  br label %655

; <label>:655                                     ; preds = %639, %633
  %656 = phi float [ %654, %639 ], [ %634, %633 ]
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = and i32 %658, 16
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %859, label %661

; <label>:661                                     ; preds = %655
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = add i32 %36, 360
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = add i32 %666, 0
  %668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %668, %dx.types.Handle %85, float %583, float %584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = extractvalue %dx.types.ResRet.f32 %669, 1
  %672 = extractvalue %dx.types.ResRet.f32 %669, 2
  %673 = extractvalue %dx.types.ResRet.f32 %669, 3
  %674 = and i32 %663, 255
  %675 = uitofp i32 %674 to float
  %676 = lshr i32 %663, 8
  %677 = and i32 %676, 255
  %678 = uitofp i32 %677 to float
  %679 = fmul fast float %673, %675
  %680 = fadd fast float %679, %678
  %681 = fmul fast float %680, 0x3F70101000000000
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 512
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %694, label %686

; <label>:686                                     ; preds = %661
  %687 = add i32 %36, 440
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = add i32 %689, 0
  %691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %690, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %692 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %691, %dx.types.Handle %86, float %583, float %584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  br label %694

; <label>:694                                     ; preds = %686, %661
  %695 = phi float [ %693, %686 ], [ 1.000000e+00, %661 ]
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 33554432
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %806, label %700

; <label>:700                                     ; preds = %694
  %701 = add i32 %36, 224
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 65535
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = lshr i32 %703, 16
  %707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %706)  ; LegacyF16ToF32(value)
  %708 = add i32 %36, 228
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 65535
  %712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %711)  ; LegacyF16ToF32(value)
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = lshr i32 %714, 24
  %716 = uitofp i32 %715 to float
  %717 = fmul fast float %716, 0x3F70101020000000
  %718 = and i32 %714, 255
  %719 = uitofp i32 %718 to float
  %720 = fmul fast float %719, 0x3F70101020000000
  %721 = lshr i32 %714, 8
  %722 = and i32 %721, 255
  %723 = uitofp i32 %722 to float
  %724 = fmul fast float %723, 0x3F70101020000000
  %725 = lshr i32 %714, 16
  %726 = and i32 %725, 255
  %727 = uitofp i32 %726 to float
  %728 = fmul fast float %727, 0x3F70101020000000
  %729 = add i32 %36, 220
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = lshr i32 %731, 24
  %733 = uitofp i32 %732 to float
  %734 = fmul fast float %733, 0x3F70101020000000
  %735 = and i32 %731, 255
  %736 = uitofp i32 %735 to float
  %737 = fmul fast float %736, 0x3F70101020000000
  %738 = lshr i32 %731, 8
  %739 = and i32 %738, 255
  %740 = uitofp i32 %739 to float
  %741 = fmul fast float %740, 0x3F70101020000000
  %742 = lshr i32 %731, 16
  %743 = and i32 %742, 255
  %744 = uitofp i32 %743 to float
  %745 = fmul fast float %744, 0x3F70101020000000
  %746 = bitcast float %670 to i32
  %747 = ashr i32 %746, 1
  %748 = sub nsw i32 1597463174, %747
  %749 = bitcast i32 %748 to float
  %750 = fmul fast float %670, 5.000000e-01
  %751 = fmul fast float %749, %749
  %752 = fmul fast float %751, %750
  %753 = fsub fast float 1.500000e+00, %752
  %754 = fmul fast float %749, %670
  %755 = fmul fast float %754, %753
  %756 = bitcast float %671 to i32
  %757 = ashr i32 %756, 1
  %758 = sub nsw i32 1597463174, %757
  %759 = bitcast i32 %758 to float
  %760 = fmul fast float %671, 5.000000e-01
  %761 = fmul fast float %759, %759
  %762 = fmul fast float %761, %760
  %763 = fsub fast float 1.500000e+00, %762
  %764 = fmul fast float %759, %671
  %765 = fmul fast float %764, %763
  %766 = bitcast float %672 to i32
  %767 = ashr i32 %766, 1
  %768 = sub nsw i32 1597463174, %767
  %769 = bitcast i32 %768 to float
  %770 = fmul fast float %672, 5.000000e-01
  %771 = fmul fast float %769, %769
  %772 = fmul fast float %771, %770
  %773 = fsub fast float 1.500000e+00, %772
  %774 = fmul fast float %769, %672
  %775 = fmul fast float %774, %773
  %776 = fsub fast float %755, %737
  %777 = fsub fast float %765, %741
  %778 = fsub fast float %775, %745
  %779 = fmul fast float %776, %705
  %780 = fmul fast float %777, %707
  %781 = fmul fast float %778, %712
  %782 = fadd fast float %779, %720
  %783 = fadd fast float %780, %724
  %784 = fadd fast float %781, %728
  %785 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  %786 = call float @dx.op.unary.f32(i32 7, float %783)  ; Saturate(value)
  %787 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %788 = fmul fast float %785, %785
  %789 = fmul fast float %786, %786
  %790 = fmul fast float %787, %787
  %791 = fsub fast float %788, %670
  %792 = fsub fast float %789, %671
  %793 = fsub fast float %790, %672
  %794 = fmul fast float %791, %695
  %795 = fmul fast float %792, %695
  %796 = fmul fast float %793, %695
  %797 = fadd fast float %794, %670
  %798 = fadd fast float %795, %671
  %799 = fadd fast float %796, %672
  %800 = fadd fast float %717, %681
  %801 = fsub fast float %800, %734
  %802 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %803 = fsub fast float %802, %681
  %804 = fmul fast float %803, %695
  %805 = fadd fast float %804, %681
  br label %859

; <label>:806                                     ; preds = %694
  %807 = and i32 %697, 134217728
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %843, label %809

; <label>:809                                     ; preds = %806
  %810 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %811 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %812 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %813 = fadd fast float %810, -5.000000e-01
  %814 = fadd fast float %811, -5.000000e-01
  %815 = fadd fast float %812, -5.000000e-01
  %816 = fmul fast float %813, %695
  %817 = fmul fast float %814, %695
  %818 = fmul fast float %815, %695
  %819 = fadd fast float %816, 5.000000e-01
  %820 = fadd fast float %817, 5.000000e-01
  %821 = fadd fast float %818, 5.000000e-01
  %822 = call float @dx.op.unary.f32(i32 24, float %670)  ; Sqrt(value)
  %823 = call float @dx.op.unary.f32(i32 24, float %671)  ; Sqrt(value)
  %824 = call float @dx.op.unary.f32(i32 24, float %672)  ; Sqrt(value)
  %825 = fmul fast float %819, 2.000000e+00
  %826 = fsub fast float 1.000000e+00, %825
  %827 = fmul fast float %826, %822
  %828 = fadd fast float %827, %825
  %829 = fmul fast float %828, %822
  %830 = fmul fast float %820, 2.000000e+00
  %831 = fsub fast float 1.000000e+00, %830
  %832 = fmul fast float %831, %823
  %833 = fadd fast float %832, %830
  %834 = fmul fast float %833, %823
  %835 = fmul fast float %821, 2.000000e+00
  %836 = fsub fast float 1.000000e+00, %835
  %837 = fmul fast float %836, %824
  %838 = fadd fast float %837, %835
  %839 = fmul fast float %838, %824
  %840 = fmul fast float %829, %829
  %841 = fmul fast float %834, %834
  %842 = fmul fast float %839, %839
  br label %859

; <label>:843                                     ; preds = %806
  %844 = fmul fast float %262, %262
  %845 = fmul fast float %266, %266
  %846 = fmul fast float %270, %270
  %847 = fadd fast float %844, -1.000000e+00
  %848 = fadd fast float %845, -1.000000e+00
  %849 = fadd fast float %846, -1.000000e+00
  %850 = fmul fast float %695, %847
  %851 = fmul fast float %695, %848
  %852 = fmul fast float %695, %849
  %853 = fadd fast float %850, 1.000000e+00
  %854 = fadd fast float %851, 1.000000e+00
  %855 = fadd fast float %852, 1.000000e+00
  %856 = fmul fast float %853, %670
  %857 = fmul fast float %854, %671
  %858 = fmul fast float %855, %672
  br label %859

; <label>:859                                     ; preds = %843, %809, %700, %655
  %860 = phi float [ %805, %700 ], [ %681, %809 ], [ %681, %843 ], [ 0x3FA23C0BE0000000, %655 ]
  %861 = phi float [ %797, %700 ], [ %840, %809 ], [ %856, %843 ], [ 1.000000e+00, %655 ]
  %862 = phi float [ %798, %700 ], [ %841, %809 ], [ %857, %843 ], [ 1.000000e+00, %655 ]
  %863 = phi float [ %799, %700 ], [ %842, %809 ], [ %858, %843 ], [ 1.000000e+00, %655 ]
  %864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.i32 %864, 1
  %866 = and i32 %865, 1
  %867 = icmp ne i32 %866, 0
  %868 = add i32 %36, 356
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %868, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 32
  %872 = icmp ne i32 %871, 0
  %873 = and i1 %867, %872
  %874 = select i1 %873, float 1.000000e+00, float %861
  %875 = select i1 %873, float 0x3FD3333340000000, float %862
  %876 = select i1 %873, float 0x3FD3333340000000, float %863
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = and i32 %878, 32
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %953, label %881

; <label>:881                                     ; preds = %859
  %882 = add i32 %36, 92
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = add i32 %36, 376
  %886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = add i32 %887, 0
  %889 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %888, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %890 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %889, %dx.types.Handle %85, float %583, float %584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  %892 = extractvalue %dx.types.ResRet.f32 %890, 1
  %893 = extractvalue %dx.types.ResRet.f32 %890, 2
  %894 = extractvalue %dx.types.ResRet.f32 %890, 3
  %895 = and i32 %884, 255
  %896 = uitofp i32 %895 to float
  %897 = lshr i32 %884, 8
  %898 = and i32 %897, 255
  %899 = uitofp i32 %898 to float
  %900 = lshr i32 %884, 16
  %901 = and i32 %900, 255
  %902 = uitofp i32 %901 to float
  %903 = fmul fast float %902, 0x3F70101000000000
  %904 = fmul fast float %891, %896
  %905 = fadd fast float %904, %899
  %906 = fmul fast float %905, 0x3F70101000000000
  %907 = fadd fast float %892, -5.000000e-01
  %908 = fadd fast float %894, -5.000000e-01
  %909 = fmul fast float %907, %903
  %910 = fmul fast float %908, %903
  %911 = fadd fast float %909, 5.000000e-01
  %912 = fadd fast float %910, 5.000000e-01
  %913 = fmul fast float %911, 2.000000e+00
  %914 = fadd fast float %913, -1.000000e+00
  %915 = fmul fast float %912, 2.000000e+00
  %916 = fadd fast float %915, -1.000000e+00
  %917 = fadd fast float %914, %916
  %918 = fmul fast float %917, 5.000000e-01
  %919 = fsub fast float %914, %916
  %920 = fmul fast float %919, 5.000000e-01
  %921 = call float @dx.op.unary.f32(i32 6, float %918)  ; FAbs(value)
  %922 = fsub fast float 1.000000e+00, %921
  %923 = call float @dx.op.unary.f32(i32 6, float %920)  ; FAbs(value)
  %924 = fsub fast float %922, %923
  %925 = call float @dx.op.dot3.f32(i32 55, float %918, float %920, float %924, float %918, float %920, float %924)  ; Dot3(ax,ay,az,bx,by,bz)
  %926 = call float @dx.op.unary.f32(i32 25, float %925)  ; Rsqrt(value)
  %927 = fmul fast float %918, %926
  %928 = fmul fast float %920, %926
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = and i32 %930, 67108864
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %949, label %933

; <label>:933                                     ; preds = %881
  %934 = add i32 %36, 280
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = and i32 %936, 65535
  %938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %937)  ; LegacyF16ToF32(value)
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = and i32 %940, 65535
  %942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %941)  ; LegacyF16ToF32(value)
  %943 = lshr i32 %936, 16
  %944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %943)  ; LegacyF16ToF32(value)
  %945 = fsub fast float %906, %944
  %946 = fmul fast float %945, %938
  %947 = fadd fast float %946, %942
  %948 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  br label %949

; <label>:949                                     ; preds = %933, %881
  %950 = phi float [ %948, %933 ], [ %906, %881 ]
  %951 = call float @dx.op.dot2.f32(i32 54, float %927, float %928, float %487, float %488)  ; Dot2(ax,ay,bx,by)
  %952 = call float @dx.op.dot2.f32(i32 54, float %927, float %928, float %489, float %490)  ; Dot2(ax,ay,bx,by)
  br label %953

; <label>:953                                     ; preds = %949, %859
  %954 = phi float [ %950, %949 ], [ 0x3FD6666660000000, %859 ]
  %955 = phi float [ %951, %949 ], [ 0.000000e+00, %859 ]
  %956 = phi float [ %952, %949 ], [ 0.000000e+00, %859 ]
  %957 = phi float [ %893, %949 ], [ 1.000000e+00, %859 ]
  %958 = add i32 %36, 160
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = lshr i32 %960, 22
  %962 = shl nuw nsw i32 %961, 5
  %963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %962)  ; LegacyF16ToF32(value)
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = and i32 %965, 64
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %1001, label %968

; <label>:968                                     ; preds = %953
  %969 = add i32 %36, 392
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = add i32 %971, 0
  %973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %972, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = and i32 %975, 131072
  %977 = icmp eq i32 %976, 0
  %978 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %973, %dx.types.Handle %85, float %583, float %584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %979 = extractvalue %dx.types.ResRet.f32 %978, 0
  %980 = extractvalue %dx.types.ResRet.f32 %978, 1
  %981 = extractvalue %dx.types.ResRet.f32 %978, 2
  %982 = fmul fast float %979, %250
  %983 = fmul fast float %980, %253
  %984 = fmul fast float %981, %256
  br i1 %977, label %991, label %985

; <label>:985                                     ; preds = %968
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 0
  %988 = fmul fast float %987, %982
  %989 = fmul fast float %987, %983
  %990 = fmul fast float %987, %984
  br label %991

; <label>:991                                     ; preds = %985, %968
  %992 = phi float [ %988, %985 ], [ %982, %968 ]
  %993 = phi float [ %989, %985 ], [ %983, %968 ]
  %994 = phi float [ %990, %985 ], [ %984, %968 ]
  %995 = fmul fast float %992, %963
  %996 = select i1 %233, float %995, float %992
  %997 = call float @dx.op.dot3.f32(i32 55, float %996, float %993, float %994, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %998 = select i1 %233, float 0.000000e+00, float %992
  %999 = select i1 %233, float %997, float %993
  %1000 = select i1 %233, float 0.000000e+00, float %994
  br label %1001

; <label>:1001                                    ; preds = %991, %953
  %1002 = phi float [ %998, %991 ], [ 0.000000e+00, %953 ]
  %1003 = phi float [ %999, %991 ], [ 0.000000e+00, %953 ]
  %1004 = phi float [ %1000, %991 ], [ 0.000000e+00, %953 ]
  %1005 = add i32 %36, 96
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = and i32 %1007, 255
  %1009 = uitofp i32 %1008 to float
  %1010 = lshr i32 %1007, 8
  %1011 = and i32 %1010, 255
  %1012 = uitofp i32 %1011 to float
  %1013 = call float @dx.op.dot3.f32(i32 55, float %874, float %875, float %876, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1014 = fmul fast float %1012, %1013
  %1015 = fadd fast float %1014, %1009
  %1016 = fmul fast float %1015, 0x3F70101020000000
  %1017 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  br label %1018

; <label>:1018                                    ; preds = %1001, %469
  %1019 = phi float [ 0.000000e+00, %469 ], [ %955, %1001 ]
  %1020 = phi float [ 0.000000e+00, %469 ], [ %956, %1001 ]
  %1021 = phi float [ 0.000000e+00, %469 ], [ %1002, %1001 ]
  %1022 = phi float [ 0.000000e+00, %469 ], [ %1003, %1001 ]
  %1023 = phi float [ 0.000000e+00, %469 ], [ %1004, %1001 ]
  %1024 = phi float [ 0.000000e+00, %469 ], [ %874, %1001 ]
  %1025 = phi float [ 0.000000e+00, %469 ], [ %875, %1001 ]
  %1026 = phi float [ 0.000000e+00, %469 ], [ %876, %1001 ]
  %1027 = phi float [ 0.000000e+00, %469 ], [ %860, %1001 ]
  %1028 = phi float [ 0.000000e+00, %469 ], [ %656, %1001 ]
  %1029 = phi float [ 0.000000e+00, %469 ], [ %954, %1001 ]
  %1030 = phi float [ 0.000000e+00, %469 ], [ %957, %1001 ]
  %1031 = phi float [ 0.000000e+00, %469 ], [ %1017, %1001 ]
  br i1 %417, label %1758, label %1032

; <label>:1032                                    ; preds = %1018
  %1033 = icmp ult i32 %475, 2
  %1034 = add i32 %36, 40
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = add i32 %36, 44
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = or i32 %1039, %1036
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1758, label %1042

; <label>:1042                                    ; preds = %1032
  %1043 = and i32 %1036, 262144
  %1044 = icmp ne i32 %1043, 0
  %1045 = select i1 %1044, float %41, float 1.000000e+00
  %1046 = select i1 %1044, float %42, float 0.000000e+00
  %1047 = select i1 %1044, float %43, float 0.000000e+00
  %1048 = select i1 %1044, float %44, float 1.000000e+00
  %1049 = select i1 %1044, float %45, float %73
  %1050 = select i1 %1044, float %46, float %74
  %1051 = add i32 %36, 300
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = lshr i32 %1053, 16
  %1055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1054)  ; LegacyF16ToF32(value)
  %1056 = fmul fast float %1055, 0x3F50624DE0000000
  %1057 = add i32 %36, 104
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = lshr i32 %1059, 16
  %1061 = and i32 %1060, 255
  %1062 = lshr i32 %1059, 24
  %1063 = add i32 %36, 308
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = and i32 %1065, 65535
  %1067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1066)  ; LegacyF16ToF32(value)
  %1068 = lshr i32 %1065, 16
  %1069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1068)  ; LegacyF16ToF32(value)
  %1070 = add i32 %36, 48
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = lshr i32 %1072, 22
  %1074 = shl nuw nsw i32 %1073, 5
  %1075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1074)  ; LegacyF16ToF32(value)
  %1076 = shl i32 %1072, 4
  %1077 = and i32 %1076, 32752
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = lshr i32 %1072, 7
  %1080 = and i32 %1079, 32752
  %1081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1080)  ; LegacyF16ToF32(value)
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 3
  %1084 = fmul fast float %1083, 1.000000e+03
  %1085 = fmul fast float %327, %1084
  %1086 = call float @dx.op.unary.f32(i32 22, float %1085)  ; Frc(value)
  %1087 = fadd fast float %1086, %317
  %1088 = fmul fast float %328, %1084
  %1089 = call float @dx.op.unary.f32(i32 22, float %1088)  ; Frc(value)
  %1090 = fadd fast float %1089, %319
  %1091 = fmul fast float %1056, %1084
  %1092 = call float @dx.op.unary.f32(i32 22, float %1091)  ; Frc(value)
  %1093 = fmul fast float %1092, 0x401921FB60000000
  %1094 = fadd fast float %1093, %1075
  %1095 = call float @dx.op.unary.f32(i32 13, float %1094)  ; Sin(value)
  %1096 = call float @dx.op.unary.f32(i32 12, float %1094)  ; Cos(value)
  %1097 = fsub fast float -0.000000e+00, %1095
  %1098 = fadd fast float %1049, -5.000000e-01
  %1099 = fadd fast float %1050, -5.000000e-01
  %1100 = fmul fast float %1067, %1098
  %1101 = fmul fast float %1069, %1099
  %1102 = fadd fast float %1100, 5.000000e-01
  %1103 = fadd fast float %1101, 5.000000e-01
  %1104 = fmul fast float %1078, %1102
  %1105 = fmul fast float %1081, %1103
  %1106 = fmul fast float %1096, %1104
  %1107 = call float @dx.op.tertiary.f32(i32 46, float %1097, float %1105, float %1106)  ; FMad(a,b,c)
  %1108 = fmul fast float %1095, %1104
  %1109 = call float @dx.op.tertiary.f32(i32 46, float %1096, float %1105, float %1108)  ; FMad(a,b,c)
  %1110 = fadd fast float %1087, %1107
  %1111 = fadd fast float %1090, %1109
  %1112 = icmp ugt i32 %1061, 1
  %1113 = icmp ugt i32 %1059, 33554431
  %1114 = or i1 %1113, %1112
  br i1 %1114, label %1115, label %1140

; <label>:1115                                    ; preds = %1042
  %1116 = add i32 %36, 244
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = lshr i32 %1118, 16
  %1120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1119)  ; LegacyF16ToF32(value)
  %1121 = fmul fast float %1083, %1120
  %1122 = call float @dx.op.unary.f32(i32 22, float %1121)  ; Frc(value)
  %1123 = mul nuw nsw i32 %1061, %1062
  %1124 = uitofp i32 %1123 to float
  %1125 = fmul fast float %1122, %1124
  %1126 = call float @dx.op.unary.f32(i32 27, float %1125)  ; Round_ni(value)
  %1127 = fptoui float %1126 to i32
  %1128 = urem i32 %1127, %1061
  %1129 = udiv i32 %1127, %1062
  %1130 = call float @dx.op.unary.f32(i32 22, float %1110)  ; Frc(value)
  %1131 = call float @dx.op.unary.f32(i32 22, float %1111)  ; Frc(value)
  %1132 = uitofp i32 %1128 to float
  %1133 = uitofp i32 %1129 to float
  %1134 = fadd fast float %1130, %1132
  %1135 = fadd fast float %1131, %1133
  %1136 = uitofp i32 %1061 to float
  %1137 = uitofp i32 %1062 to float
  %1138 = fdiv fast float %1134, %1136
  %1139 = fdiv fast float %1135, %1137
  br label %1140

; <label>:1140                                    ; preds = %1115, %1042
  %1141 = phi float [ %1138, %1115 ], [ %1110, %1042 ]
  %1142 = phi float [ %1139, %1115 ], [ %1111, %1042 ]
  %1143 = and i32 %1036, 256
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1191, label %1145

; <label>:1145                                    ; preds = %1140
  %1146 = add i32 %36, 428
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = add i32 %1148, 0
  %1150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1150, %dx.types.Handle %86, float %1141, float %1142, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  %1153 = add i32 %36, 116
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = shl i32 %1155, 4
  %1157 = and i32 %1156, 32752
  %1158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1157)  ; LegacyF16ToF32(value)
  %1159 = lshr i32 %1155, 7
  %1160 = and i32 %1159, 32752
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = fsub fast float 1.000000e+00, %472
  %1163 = call float @dx.op.binary.f32(i32 35, float %1162, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1164 = bitcast float %472 to i32
  %1165 = sitofp i32 %1164 to float
  %1166 = fadd fast float %1165, 0xC1CFBF8940000000
  %1167 = fmul fast float %1161, %1166
  %1168 = fadd fast float %1167, 0x41CFBF8940000000
  %1169 = fptosi float %1168 to i32
  %1170 = bitcast i32 %1169 to float
  %1171 = bitcast float %1163 to i32
  %1172 = sitofp i32 %1171 to float
  %1173 = fadd fast float %1172, 0xC1CFBF8940000000
  %1174 = fmul fast float %1173, %1161
  %1175 = fadd fast float %1174, 0x41CFBF8940000000
  %1176 = fptosi float %1175 to i32
  %1177 = bitcast i32 %1176 to float
  %1178 = fmul fast float %1170, %1158
  %1179 = fmul fast float %1177, %1158
  %1180 = fsub fast float %1163, %1178
  %1181 = fadd fast float %1179, %1163
  %1182 = call float @dx.op.unary.f32(i32 7, float %1180)  ; Saturate(value)
  %1183 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1184 = fsub fast float %1152, %1182
  %1185 = fsub fast float %1183, %1182
  %1186 = bitcast float %1185 to i32
  %1187 = sub nsw i32 2129859010, %1186
  %1188 = bitcast i32 %1187 to float
  %1189 = fmul fast float %1188, %1184
  %1190 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  br label %1191

; <label>:1191                                    ; preds = %1145, %1140
  %1192 = phi float [ %1190, %1145 ], [ %472, %1140 ]
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = and i32 %1194, 128
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1213, label %1197

; <label>:1197                                    ; preds = %1191
  %1198 = add i32 %36, 412
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = add i32 %1200, 0
  %1202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1201, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1203 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1202, %dx.types.Handle %86, float %1141, float %1142, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = and i32 %1206, 524288
  %1208 = icmp ne i32 %1207, 0
  %1209 = fcmp fast ogt float %1204, 0x3FE0101020000000
  %1210 = select i1 %1209, float 1.000000e+00, float 0.000000e+00
  %1211 = select i1 %1208, float %1210, float %1204
  %1212 = fmul fast float %1211, %1192
  br label %1213

; <label>:1213                                    ; preds = %1197, %1191
  %1214 = phi float [ %1212, %1197 ], [ %1192, %1191 ]
  %1215 = fcmp fast ult float %1214, 0x3F70101020000000
  br i1 %1215, label %1758, label %1216

; <label>:1216                                    ; preds = %1213
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 16
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1419, label %1221

; <label>:1221                                    ; preds = %1216
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = add i32 %36, 364
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = add i32 %1226, 0
  %1228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1229 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1228, %dx.types.Handle %85, float %1141, float %1142, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.ResRet.f32 %1229, 1
  %1232 = extractvalue %dx.types.ResRet.f32 %1229, 2
  %1233 = extractvalue %dx.types.ResRet.f32 %1229, 3
  %1234 = and i32 %1223, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = lshr i32 %1223, 8
  %1237 = and i32 %1236, 255
  %1238 = uitofp i32 %1237 to float
  %1239 = fmul fast float %1233, %1235
  %1240 = fadd fast float %1239, %1238
  %1241 = fmul fast float %1240, 0x3F70101000000000
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = and i32 %1243, 512
  %1245 = icmp eq i32 %1244, 0
  br i1 %1245, label %1254, label %1246

; <label>:1246                                    ; preds = %1221
  %1247 = add i32 %36, 444
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = add i32 %1249, 0
  %1251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1252 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1251, %dx.types.Handle %86, float %1141, float %1142, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  br label %1254

; <label>:1254                                    ; preds = %1246, %1221
  %1255 = phi float [ %1253, %1246 ], [ 1.000000e+00, %1221 ]
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = and i32 %1257, 33554432
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1366, label %1260

; <label>:1260                                    ; preds = %1254
  %1261 = add i32 %36, 240
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = and i32 %1263, 65535
  %1265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1264)  ; LegacyF16ToF32(value)
  %1266 = lshr i32 %1263, 16
  %1267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1266)  ; LegacyF16ToF32(value)
  %1268 = add i32 %36, 244
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = and i32 %1270, 65535
  %1272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1271)  ; LegacyF16ToF32(value)
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = lshr i32 %1274, 24
  %1276 = uitofp i32 %1275 to float
  %1277 = fmul fast float %1276, 0x3F70101020000000
  %1278 = and i32 %1274, 255
  %1279 = uitofp i32 %1278 to float
  %1280 = fmul fast float %1279, 0x3F70101020000000
  %1281 = lshr i32 %1274, 8
  %1282 = and i32 %1281, 255
  %1283 = uitofp i32 %1282 to float
  %1284 = fmul fast float %1283, 0x3F70101020000000
  %1285 = lshr i32 %1274, 16
  %1286 = and i32 %1285, 255
  %1287 = uitofp i32 %1286 to float
  %1288 = fmul fast float %1287, 0x3F70101020000000
  %1289 = add i32 %36, 236
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = lshr i32 %1291, 24
  %1293 = uitofp i32 %1292 to float
  %1294 = fmul fast float %1293, 0x3F70101020000000
  %1295 = and i32 %1291, 255
  %1296 = uitofp i32 %1295 to float
  %1297 = fmul fast float %1296, 0x3F70101020000000
  %1298 = lshr i32 %1291, 8
  %1299 = and i32 %1298, 255
  %1300 = uitofp i32 %1299 to float
  %1301 = fmul fast float %1300, 0x3F70101020000000
  %1302 = lshr i32 %1291, 16
  %1303 = and i32 %1302, 255
  %1304 = uitofp i32 %1303 to float
  %1305 = fmul fast float %1304, 0x3F70101020000000
  %1306 = bitcast float %1230 to i32
  %1307 = ashr i32 %1306, 1
  %1308 = sub nsw i32 1597463174, %1307
  %1309 = bitcast i32 %1308 to float
  %1310 = fmul fast float %1230, 5.000000e-01
  %1311 = fmul fast float %1309, %1309
  %1312 = fmul fast float %1311, %1310
  %1313 = fsub fast float 1.500000e+00, %1312
  %1314 = fmul fast float %1309, %1230
  %1315 = fmul fast float %1314, %1313
  %1316 = bitcast float %1231 to i32
  %1317 = ashr i32 %1316, 1
  %1318 = sub nsw i32 1597463174, %1317
  %1319 = bitcast i32 %1318 to float
  %1320 = fmul fast float %1231, 5.000000e-01
  %1321 = fmul fast float %1319, %1319
  %1322 = fmul fast float %1321, %1320
  %1323 = fsub fast float 1.500000e+00, %1322
  %1324 = fmul fast float %1319, %1231
  %1325 = fmul fast float %1324, %1323
  %1326 = bitcast float %1232 to i32
  %1327 = ashr i32 %1326, 1
  %1328 = sub nsw i32 1597463174, %1327
  %1329 = bitcast i32 %1328 to float
  %1330 = fmul fast float %1232, 5.000000e-01
  %1331 = fmul fast float %1329, %1329
  %1332 = fmul fast float %1331, %1330
  %1333 = fsub fast float 1.500000e+00, %1332
  %1334 = fmul fast float %1329, %1232
  %1335 = fmul fast float %1334, %1333
  %1336 = fsub fast float %1315, %1297
  %1337 = fsub fast float %1325, %1301
  %1338 = fsub fast float %1335, %1305
  %1339 = fmul fast float %1336, %1265
  %1340 = fmul fast float %1337, %1267
  %1341 = fmul fast float %1338, %1272
  %1342 = fadd fast float %1339, %1280
  %1343 = fadd fast float %1340, %1284
  %1344 = fadd fast float %1341, %1288
  %1345 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1346 = call float @dx.op.unary.f32(i32 7, float %1343)  ; Saturate(value)
  %1347 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1348 = fmul fast float %1345, %1345
  %1349 = fmul fast float %1346, %1346
  %1350 = fmul fast float %1347, %1347
  %1351 = fsub fast float %1348, %1230
  %1352 = fsub fast float %1349, %1231
  %1353 = fsub fast float %1350, %1232
  %1354 = fmul fast float %1351, %1255
  %1355 = fmul fast float %1352, %1255
  %1356 = fmul fast float %1353, %1255
  %1357 = fadd fast float %1354, %1230
  %1358 = fadd fast float %1355, %1231
  %1359 = fadd fast float %1356, %1232
  %1360 = fadd fast float %1277, %1241
  %1361 = fsub fast float %1360, %1294
  %1362 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1363 = fsub fast float %1362, %1241
  %1364 = fmul fast float %1363, %1255
  %1365 = fadd fast float %1364, %1241
  br label %1419

; <label>:1366                                    ; preds = %1254
  %1367 = and i32 %1257, 134217728
  %1368 = icmp eq i32 %1367, 0
  br i1 %1368, label %1403, label %1369

; <label>:1369                                    ; preds = %1366
  %1370 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %1371 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %1372 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %1373 = fadd fast float %1370, -5.000000e-01
  %1374 = fadd fast float %1371, -5.000000e-01
  %1375 = fadd fast float %1372, -5.000000e-01
  %1376 = fmul fast float %1373, %1255
  %1377 = fmul fast float %1374, %1255
  %1378 = fmul fast float %1375, %1255
  %1379 = fadd fast float %1376, 5.000000e-01
  %1380 = fadd fast float %1377, 5.000000e-01
  %1381 = fadd fast float %1378, 5.000000e-01
  %1382 = call float @dx.op.unary.f32(i32 24, float %1230)  ; Sqrt(value)
  %1383 = call float @dx.op.unary.f32(i32 24, float %1231)  ; Sqrt(value)
  %1384 = call float @dx.op.unary.f32(i32 24, float %1232)  ; Sqrt(value)
  %1385 = fmul fast float %1379, 2.000000e+00
  %1386 = fsub fast float 1.000000e+00, %1385
  %1387 = fmul fast float %1386, %1382
  %1388 = fadd fast float %1387, %1385
  %1389 = fmul fast float %1388, %1382
  %1390 = fmul fast float %1380, 2.000000e+00
  %1391 = fsub fast float 1.000000e+00, %1390
  %1392 = fmul fast float %1391, %1383
  %1393 = fadd fast float %1392, %1390
  %1394 = fmul fast float %1393, %1383
  %1395 = fmul fast float %1381, 2.000000e+00
  %1396 = fsub fast float 1.000000e+00, %1395
  %1397 = fmul fast float %1396, %1384
  %1398 = fadd fast float %1397, %1395
  %1399 = fmul fast float %1398, %1384
  %1400 = fmul fast float %1389, %1389
  %1401 = fmul fast float %1394, %1394
  %1402 = fmul fast float %1399, %1399
  br label %1419

; <label>:1403                                    ; preds = %1366
  %1404 = fmul fast float %304, %304
  %1405 = fmul fast float %308, %308
  %1406 = fmul fast float %312, %312
  %1407 = fadd fast float %1404, -1.000000e+00
  %1408 = fadd fast float %1405, -1.000000e+00
  %1409 = fadd fast float %1406, -1.000000e+00
  %1410 = fmul fast float %1255, %1407
  %1411 = fmul fast float %1255, %1408
  %1412 = fmul fast float %1255, %1409
  %1413 = fadd fast float %1410, 1.000000e+00
  %1414 = fadd fast float %1411, 1.000000e+00
  %1415 = fadd fast float %1412, 1.000000e+00
  %1416 = fmul fast float %1413, %1230
  %1417 = fmul fast float %1414, %1231
  %1418 = fmul fast float %1415, %1232
  br label %1419

; <label>:1419                                    ; preds = %1403, %1369, %1260, %1216
  %1420 = phi float [ %1365, %1260 ], [ %1241, %1369 ], [ %1241, %1403 ], [ 0x3FA23C0BE0000000, %1216 ]
  %1421 = phi float [ %1357, %1260 ], [ %1400, %1369 ], [ %1416, %1403 ], [ 1.000000e+00, %1216 ]
  %1422 = phi float [ %1358, %1260 ], [ %1401, %1369 ], [ %1417, %1403 ], [ 1.000000e+00, %1216 ]
  %1423 = phi float [ %1359, %1260 ], [ %1402, %1369 ], [ %1418, %1403 ], [ 1.000000e+00, %1216 ]
  %1424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.i32 %1424, 1
  %1426 = and i32 %1425, 1
  %1427 = icmp ne i32 %1426, 0
  %1428 = add i32 %36, 356
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = and i32 %1430, 32
  %1432 = icmp ne i32 %1431, 0
  %1433 = and i1 %1427, %1432
  %1434 = select i1 %1433, float 1.000000e+00, float %1421
  %1435 = select i1 %1433, float 0x3FD3333340000000, float %1422
  %1436 = select i1 %1433, float 0x3FD3333340000000, float %1423
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = and i32 %1438, 32
  %1440 = icmp eq i32 %1439, 0
  br i1 %1440, label %1513, label %1441

; <label>:1441                                    ; preds = %1419
  %1442 = add i32 %36, 108
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = add i32 %36, 380
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = add i32 %1447, 0
  %1449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1448, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1450 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1449, %dx.types.Handle %85, float %1141, float %1142, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1451 = extractvalue %dx.types.ResRet.f32 %1450, 0
  %1452 = extractvalue %dx.types.ResRet.f32 %1450, 1
  %1453 = extractvalue %dx.types.ResRet.f32 %1450, 2
  %1454 = extractvalue %dx.types.ResRet.f32 %1450, 3
  %1455 = and i32 %1444, 255
  %1456 = uitofp i32 %1455 to float
  %1457 = lshr i32 %1444, 8
  %1458 = and i32 %1457, 255
  %1459 = uitofp i32 %1458 to float
  %1460 = lshr i32 %1444, 16
  %1461 = and i32 %1460, 255
  %1462 = uitofp i32 %1461 to float
  %1463 = fmul fast float %1462, 0x3F70101000000000
  %1464 = fmul fast float %1451, %1456
  %1465 = fadd fast float %1464, %1459
  %1466 = fmul fast float %1465, 0x3F70101000000000
  %1467 = fadd fast float %1452, -5.000000e-01
  %1468 = fadd fast float %1454, -5.000000e-01
  %1469 = fmul fast float %1467, %1463
  %1470 = fmul fast float %1468, %1463
  %1471 = fadd fast float %1469, 5.000000e-01
  %1472 = fadd fast float %1470, 5.000000e-01
  %1473 = fmul fast float %1471, 2.000000e+00
  %1474 = fadd fast float %1473, -1.000000e+00
  %1475 = fmul fast float %1472, 2.000000e+00
  %1476 = fadd fast float %1475, -1.000000e+00
  %1477 = fadd fast float %1474, %1476
  %1478 = fmul fast float %1477, 5.000000e-01
  %1479 = fsub fast float %1474, %1476
  %1480 = fmul fast float %1479, 5.000000e-01
  %1481 = call float @dx.op.unary.f32(i32 6, float %1478)  ; FAbs(value)
  %1482 = fsub fast float 1.000000e+00, %1481
  %1483 = call float @dx.op.unary.f32(i32 6, float %1480)  ; FAbs(value)
  %1484 = fsub fast float %1482, %1483
  %1485 = call float @dx.op.dot3.f32(i32 55, float %1478, float %1480, float %1484, float %1478, float %1480, float %1484)  ; Dot3(ax,ay,az,bx,by,bz)
  %1486 = call float @dx.op.unary.f32(i32 25, float %1485)  ; Rsqrt(value)
  %1487 = fmul fast float %1478, %1486
  %1488 = fmul fast float %1480, %1486
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 67108864
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1509, label %1493

; <label>:1493                                    ; preds = %1441
  %1494 = add i32 %36, 296
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = and i32 %1496, 65535
  %1498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1497)  ; LegacyF16ToF32(value)
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = and i32 %1500, 65535
  %1502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1501)  ; LegacyF16ToF32(value)
  %1503 = lshr i32 %1496, 16
  %1504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1503)  ; LegacyF16ToF32(value)
  %1505 = fsub fast float %1466, %1504
  %1506 = fmul fast float %1505, %1498
  %1507 = fadd fast float %1506, %1502
  %1508 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  br label %1509

; <label>:1509                                    ; preds = %1493, %1441
  %1510 = phi float [ %1508, %1493 ], [ %1466, %1441 ]
  %1511 = call float @dx.op.dot2.f32(i32 54, float %1487, float %1488, float %1045, float %1046)  ; Dot2(ax,ay,bx,by)
  %1512 = call float @dx.op.dot2.f32(i32 54, float %1487, float %1488, float %1047, float %1048)  ; Dot2(ax,ay,bx,by)
  br label %1513

; <label>:1513                                    ; preds = %1509, %1419
  %1514 = phi float [ %1510, %1509 ], [ 0x3FD6666660000000, %1419 ]
  %1515 = phi float [ %1511, %1509 ], [ 0.000000e+00, %1419 ]
  %1516 = phi float [ %1512, %1509 ], [ 0.000000e+00, %1419 ]
  %1517 = phi float [ %1453, %1509 ], [ 1.000000e+00, %1419 ]
  %1518 = add i32 %36, 176
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = lshr i32 %1520, 22
  %1522 = shl nuw nsw i32 %1521, 5
  %1523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1522)  ; LegacyF16ToF32(value)
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 64
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1561, label %1528

; <label>:1528                                    ; preds = %1513
  %1529 = add i32 %36, 396
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = add i32 %1531, 0
  %1533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 131072
  %1537 = icmp eq i32 %1536, 0
  %1538 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1533, %dx.types.Handle %85, float %1141, float %1142, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1539 = extractvalue %dx.types.ResRet.f32 %1538, 0
  %1540 = extractvalue %dx.types.ResRet.f32 %1538, 1
  %1541 = extractvalue %dx.types.ResRet.f32 %1538, 2
  %1542 = fmul fast float %1539, %292
  %1543 = fmul fast float %1540, %295
  %1544 = fmul fast float %1541, %298
  br i1 %1537, label %1551, label %1545

; <label>:1545                                    ; preds = %1528
  %1546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1547 = extractvalue %dx.types.CBufRet.f32 %1546, 0
  %1548 = fmul fast float %1547, %1542
  %1549 = fmul fast float %1547, %1543
  %1550 = fmul fast float %1547, %1544
  br label %1551

; <label>:1551                                    ; preds = %1545, %1528
  %1552 = phi float [ %1548, %1545 ], [ %1542, %1528 ]
  %1553 = phi float [ %1549, %1545 ], [ %1543, %1528 ]
  %1554 = phi float [ %1550, %1545 ], [ %1544, %1528 ]
  %1555 = fmul fast float %1552, %1523
  %1556 = select i1 %233, float %1555, float %1552
  %1557 = call float @dx.op.dot3.f32(i32 55, float %1556, float %1553, float %1554, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1558 = select i1 %233, float 0.000000e+00, float %1552
  %1559 = select i1 %233, float %1557, float %1553
  %1560 = select i1 %233, float 0.000000e+00, float %1554
  br label %1561

; <label>:1561                                    ; preds = %1551, %1513
  %1562 = phi float [ %1558, %1551 ], [ 0.000000e+00, %1513 ]
  %1563 = phi float [ %1559, %1551 ], [ 0.000000e+00, %1513 ]
  %1564 = phi float [ %1560, %1551 ], [ 0.000000e+00, %1513 ]
  %1565 = add i32 %36, 112
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = and i32 %1567, 255
  %1569 = uitofp i32 %1568 to float
  %1570 = lshr i32 %1567, 8
  %1571 = and i32 %1570, 255
  %1572 = uitofp i32 %1571 to float
  %1573 = call float @dx.op.dot3.f32(i32 55, float %1434, float %1435, float %1436, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1574 = fmul fast float %1572, %1573
  %1575 = fadd fast float %1574, %1569
  %1576 = fmul fast float %1575, 0x3F70101020000000
  %1577 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  br i1 %1033, label %1578, label %1586

; <label>:1578                                    ; preds = %1561
  %1579 = fsub fast float 1.000000e+00, %1214
  %1580 = fmul fast float %1579, %1024
  %1581 = fmul fast float %1579, %1025
  %1582 = fmul fast float %1579, %1026
  %1583 = fmul fast float %1579, %1021
  %1584 = fmul fast float %1579, %1022
  %1585 = fmul fast float %1579, %1023
  br label %1586

; <label>:1586                                    ; preds = %1578, %1561
  %1587 = phi float [ %1583, %1578 ], [ %1021, %1561 ]
  %1588 = phi float [ %1584, %1578 ], [ %1022, %1561 ]
  %1589 = phi float [ %1585, %1578 ], [ %1023, %1561 ]
  %1590 = phi float [ %1580, %1578 ], [ %1024, %1561 ]
  %1591 = phi float [ %1581, %1578 ], [ %1025, %1561 ]
  %1592 = phi float [ %1582, %1578 ], [ %1026, %1561 ]
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 3
  %1596 = icmp eq i32 %1595, 3
  br i1 %1596, label %1675, label %1597

; <label>:1597                                    ; preds = %1586
  %1598 = and i32 %1594, 16
  %1599 = icmp ne i32 %1598, 0
  %1600 = select i1 %1599, float %1214, float 0.000000e+00
  %1601 = icmp eq i32 %1595, 0
  br i1 %1601, label %1602, label %1630

; <label>:1602                                    ; preds = %1597
  %1603 = and i32 %1594, 64
  %1604 = icmp ne i32 %1603, 0
  %1605 = select i1 %1604, float %1214, float 0.000000e+00
  %1606 = fsub fast float %1434, %1590
  %1607 = fsub fast float %1435, %1591
  %1608 = fsub fast float %1436, %1592
  %1609 = fmul fast float %1600, %1606
  %1610 = fmul fast float %1600, %1607
  %1611 = fmul fast float %1600, %1608
  %1612 = fadd fast float %1609, %1590
  %1613 = fadd fast float %1610, %1591
  %1614 = fadd fast float %1611, %1592
  %1615 = fsub fast float %1420, %1027
  %1616 = fmul fast float %1600, %1615
  %1617 = fadd fast float %1616, %1027
  %1618 = fsub fast float %1562, %1587
  %1619 = fsub fast float %1563, %1588
  %1620 = fsub fast float %1564, %1589
  %1621 = fmul fast float %1605, %1618
  %1622 = fmul fast float %1605, %1619
  %1623 = fmul fast float %1605, %1620
  %1624 = fadd fast float %1621, %1587
  %1625 = fadd fast float %1622, %1588
  %1626 = fadd fast float %1623, %1589
  %1627 = fsub fast float %1577, %1031
  %1628 = fmul fast float %1600, %1627
  %1629 = fadd fast float %1628, %1031
  br label %1675

; <label>:1630                                    ; preds = %1597
  %1631 = icmp eq i32 %1595, 1
  br i1 %1631, label %1632, label %1645

; <label>:1632                                    ; preds = %1630
  %1633 = fadd fast float %1434, -1.000000e+00
  %1634 = fadd fast float %1435, -1.000000e+00
  %1635 = fadd fast float %1436, -1.000000e+00
  %1636 = fmul fast float %1600, %1633
  %1637 = fmul fast float %1600, %1634
  %1638 = fmul fast float %1600, %1635
  %1639 = fadd fast float %1636, 1.000000e+00
  %1640 = fadd fast float %1637, 1.000000e+00
  %1641 = fadd fast float %1638, 1.000000e+00
  %1642 = fmul fast float %1639, %1590
  %1643 = fmul fast float %1640, %1591
  %1644 = fmul fast float %1641, %1592
  br label %1675

; <label>:1645                                    ; preds = %1630
  %1646 = icmp eq i32 %1595, 2
  br i1 %1646, label %1647, label %1675

; <label>:1647                                    ; preds = %1645
  %1648 = call float @dx.op.unary.f32(i32 24, float %1434)  ; Sqrt(value)
  %1649 = call float @dx.op.unary.f32(i32 24, float %1435)  ; Sqrt(value)
  %1650 = call float @dx.op.unary.f32(i32 24, float %1436)  ; Sqrt(value)
  %1651 = fadd fast float %1648, -5.000000e-01
  %1652 = fadd fast float %1649, -5.000000e-01
  %1653 = fadd fast float %1650, -5.000000e-01
  %1654 = fmul fast float %1651, %1600
  %1655 = fmul fast float %1652, %1600
  %1656 = fmul fast float %1653, %1600
  %1657 = fadd fast float %1654, 5.000000e-01
  %1658 = fadd fast float %1655, 5.000000e-01
  %1659 = fadd fast float %1656, 5.000000e-01
  %1660 = fmul fast float %1657, 2.000000e+00
  %1661 = fsub fast float 1.000000e+00, %1660
  %1662 = fmul fast float %1661, %1590
  %1663 = fadd fast float %1662, %1660
  %1664 = fmul fast float %1663, %1590
  %1665 = fmul fast float %1658, 2.000000e+00
  %1666 = fsub fast float 1.000000e+00, %1665
  %1667 = fmul fast float %1666, %1591
  %1668 = fadd fast float %1667, %1665
  %1669 = fmul fast float %1668, %1591
  %1670 = fmul fast float %1659, 2.000000e+00
  %1671 = fsub fast float 1.000000e+00, %1670
  %1672 = fmul fast float %1671, %1592
  %1673 = fadd fast float %1672, %1670
  %1674 = fmul fast float %1673, %1592
  br label %1675

; <label>:1675                                    ; preds = %1647, %1645, %1632, %1602, %1586
  %1676 = phi float [ %1587, %1586 ], [ %1587, %1647 ], [ %1587, %1645 ], [ %1587, %1632 ], [ %1624, %1602 ]
  %1677 = phi float [ %1588, %1586 ], [ %1588, %1647 ], [ %1588, %1645 ], [ %1588, %1632 ], [ %1625, %1602 ]
  %1678 = phi float [ %1589, %1586 ], [ %1589, %1647 ], [ %1589, %1645 ], [ %1589, %1632 ], [ %1626, %1602 ]
  %1679 = phi float [ %1590, %1586 ], [ %1664, %1647 ], [ %1590, %1645 ], [ %1642, %1632 ], [ %1612, %1602 ]
  %1680 = phi float [ %1591, %1586 ], [ %1669, %1647 ], [ %1591, %1645 ], [ %1643, %1632 ], [ %1613, %1602 ]
  %1681 = phi float [ %1592, %1586 ], [ %1674, %1647 ], [ %1592, %1645 ], [ %1644, %1632 ], [ %1614, %1602 ]
  %1682 = phi float [ %1027, %1586 ], [ %1027, %1647 ], [ %1027, %1645 ], [ %1027, %1632 ], [ %1617, %1602 ]
  %1683 = phi float [ %1031, %1586 ], [ %1031, %1647 ], [ %1031, %1645 ], [ %1031, %1632 ], [ %1629, %1602 ]
  %1684 = and i32 %1594, 12
  %1685 = icmp eq i32 %1684, 12
  br i1 %1685, label %1758, label %1686

; <label>:1686                                    ; preds = %1675
  %1687 = and i32 %1594, 2097184
  %1688 = icmp eq i32 %1687, 2097184
  %1689 = select i1 %1688, float %1214, float 0.000000e+00
  %1690 = and i32 %1594, 4194336
  %1691 = icmp eq i32 %1690, 4194336
  %1692 = select i1 %1691, float %1214, float 0.000000e+00
  %1693 = and i32 %1594, 8388640
  %1694 = icmp eq i32 %1693, 8388640
  %1695 = select i1 %1694, float %1214, float 0.000000e+00
  %1696 = icmp eq i32 %1684, 0
  br i1 %1696, label %1697, label %1710

; <label>:1697                                    ; preds = %1686
  %1698 = fsub fast float %1515, %1019
  %1699 = fsub fast float %1516, %1020
  %1700 = fmul fast float %1689, %1698
  %1701 = fmul fast float %1689, %1699
  %1702 = fadd fast float %1700, %1019
  %1703 = fadd fast float %1701, %1020
  %1704 = fsub fast float %1517, %1030
  %1705 = fmul fast float %1692, %1704
  %1706 = fadd fast float %1705, %1030
  %1707 = fsub fast float %1514, %1029
  %1708 = fmul fast float %1695, %1707
  %1709 = fadd fast float %1708, %1029
  br label %1758

; <label>:1710                                    ; preds = %1686
  %1711 = icmp eq i32 %1684, 4
  br i1 %1711, label %1712, label %1744

; <label>:1712                                    ; preds = %1710
  %1713 = fmul fast float %1689, %1515
  %1714 = fmul fast float %1689, %1516
  %1715 = fadd fast float %1713, %1019
  %1716 = fadd fast float %1714, %1020
  %1717 = call float @dx.op.binary.f32(i32 36, float %1030, float %1517)  ; FMin(a,b)
  %1718 = fsub fast float %1717, %1030
  %1719 = fmul fast float %1718, %1692
  %1720 = fadd fast float %1719, %1030
  %1721 = fadd fast float %1514, %1029
  %1722 = fmul fast float %1721, 0x3FF337FAE0000000
  %1723 = fmul fast float %1029, %1029
  %1724 = fmul fast float %1514, %1514
  %1725 = fadd fast float %1724, %1723
  %1726 = fmul fast float %1725, 0x3FE5152B00000000
  %1727 = fmul fast float %1029, 0xBFCC1F85E0000000
  %1728 = fmul fast float %1727, %1514
  %1729 = fadd fast float %1728, 0xBFE1363700000000
  %1730 = fadd fast float %1729, %1722
  %1731 = fsub fast float %1730, %1726
  %1732 = fmul fast float %1721, 0x3FBA6F0D00000000
  %1733 = fmul fast float %1725, 0x3FD0432880000000
  %1734 = fmul fast float %1029, 0xBFEF110800000000
  %1735 = fmul fast float %1734, %1514
  %1736 = fadd fast float %1735, 1.000000e+00
  %1737 = fsub fast float %1736, %1732
  %1738 = fadd fast float %1737, %1733
  %1739 = fdiv fast float %1731, %1738
  %1740 = call float @dx.op.unary.f32(i32 7, float %1739)  ; Saturate(value)
  %1741 = fsub fast float %1740, %1029
  %1742 = fmul fast float %1741, %1695
  %1743 = fadd fast float %1742, %1029
  br label %1758

; <label>:1744                                    ; preds = %1710
  %1745 = icmp eq i32 %1684, 8
  br i1 %1745, label %1746, label %1758

; <label>:1746                                    ; preds = %1744
  %1747 = fmul fast float %1689, %1515
  %1748 = fmul fast float %1689, %1516
  %1749 = fadd fast float %1747, %1019
  %1750 = fadd fast float %1748, %1020
  %1751 = call float @dx.op.binary.f32(i32 36, float %1030, float %1517)  ; FMin(a,b)
  %1752 = fsub fast float %1751, %1030
  %1753 = fmul fast float %1752, %1692
  %1754 = fadd fast float %1753, %1030
  %1755 = fsub fast float %1514, %1029
  %1756 = fmul fast float %1695, %1755
  %1757 = fadd fast float %1756, %1029
  br label %1758

; <label>:1758                                    ; preds = %1746, %1744, %1712, %1697, %1675, %1213, %1032, %1018
  %1759 = phi float [ %1019, %1675 ], [ %1019, %1213 ], [ %1019, %1018 ], [ %1749, %1746 ], [ %1019, %1744 ], [ %1715, %1712 ], [ %1702, %1697 ], [ %1019, %1032 ]
  %1760 = phi float [ %1020, %1675 ], [ %1020, %1213 ], [ %1020, %1018 ], [ %1750, %1746 ], [ %1020, %1744 ], [ %1716, %1712 ], [ %1703, %1697 ], [ %1020, %1032 ]
  %1761 = phi float [ %1676, %1675 ], [ %1021, %1213 ], [ %1021, %1018 ], [ %1676, %1746 ], [ %1676, %1744 ], [ %1676, %1712 ], [ %1676, %1697 ], [ %1021, %1032 ]
  %1762 = phi float [ %1677, %1675 ], [ %1022, %1213 ], [ %1022, %1018 ], [ %1677, %1746 ], [ %1677, %1744 ], [ %1677, %1712 ], [ %1677, %1697 ], [ %1022, %1032 ]
  %1763 = phi float [ %1678, %1675 ], [ %1023, %1213 ], [ %1023, %1018 ], [ %1678, %1746 ], [ %1678, %1744 ], [ %1678, %1712 ], [ %1678, %1697 ], [ %1023, %1032 ]
  %1764 = phi float [ %1679, %1675 ], [ %1024, %1213 ], [ %1024, %1018 ], [ %1679, %1746 ], [ %1679, %1744 ], [ %1679, %1712 ], [ %1679, %1697 ], [ %1024, %1032 ]
  %1765 = phi float [ %1680, %1675 ], [ %1025, %1213 ], [ %1025, %1018 ], [ %1680, %1746 ], [ %1680, %1744 ], [ %1680, %1712 ], [ %1680, %1697 ], [ %1025, %1032 ]
  %1766 = phi float [ %1681, %1675 ], [ %1026, %1213 ], [ %1026, %1018 ], [ %1681, %1746 ], [ %1681, %1744 ], [ %1681, %1712 ], [ %1681, %1697 ], [ %1026, %1032 ]
  %1767 = phi float [ %1682, %1675 ], [ %1027, %1213 ], [ %1027, %1018 ], [ %1682, %1746 ], [ %1682, %1744 ], [ %1682, %1712 ], [ %1682, %1697 ], [ %1027, %1032 ]
  %1768 = phi float [ %1029, %1675 ], [ %1029, %1213 ], [ %1029, %1018 ], [ %1757, %1746 ], [ %1029, %1744 ], [ %1743, %1712 ], [ %1709, %1697 ], [ %1029, %1032 ]
  %1769 = phi float [ %1030, %1675 ], [ %1030, %1213 ], [ %1030, %1018 ], [ %1754, %1746 ], [ %1030, %1744 ], [ %1720, %1712 ], [ %1706, %1697 ], [ %1030, %1032 ]
  %1770 = phi float [ %1683, %1675 ], [ %1031, %1213 ], [ %1031, %1018 ], [ %1683, %1746 ], [ %1683, %1744 ], [ %1683, %1712 ], [ %1683, %1697 ], [ %1031, %1032 ]
  br i1 %419, label %2497, label %1771

; <label>:1771                                    ; preds = %1758
  %1772 = icmp ult i32 %475, 3
  %1773 = add i32 %36, 56
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = add i32 %36, 60
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = or i32 %1778, %1775
  %1780 = icmp eq i32 %1779, 0
  br i1 %1780, label %2497, label %1781

; <label>:1781                                    ; preds = %1771
  %1782 = and i32 %1775, 262144
  %1783 = icmp ne i32 %1782, 0
  %1784 = select i1 %1783, float %41, float 1.000000e+00
  %1785 = select i1 %1783, float %42, float 0.000000e+00
  %1786 = select i1 %1783, float %43, float 0.000000e+00
  %1787 = select i1 %1783, float %44, float 1.000000e+00
  %1788 = select i1 %1783, float %45, float %73
  %1789 = select i1 %1783, float %46, float %74
  %1790 = add i32 %36, 316
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = lshr i32 %1792, 16
  %1794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1793)  ; LegacyF16ToF32(value)
  %1795 = fmul fast float %1794, 0x3F50624DE0000000
  %1796 = add i32 %36, 120
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1796, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = lshr i32 %1798, 16
  %1800 = and i32 %1799, 255
  %1801 = lshr i32 %1798, 24
  %1802 = add i32 %36, 324
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = and i32 %1804, 65535
  %1806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1805)  ; LegacyF16ToF32(value)
  %1807 = lshr i32 %1804, 16
  %1808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1807)  ; LegacyF16ToF32(value)
  %1809 = add i32 %36, 64
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = lshr i32 %1811, 22
  %1813 = shl nuw nsw i32 %1812, 5
  %1814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1813)  ; LegacyF16ToF32(value)
  %1815 = shl i32 %1811, 4
  %1816 = and i32 %1815, 32752
  %1817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1816)  ; LegacyF16ToF32(value)
  %1818 = lshr i32 %1811, 7
  %1819 = and i32 %1818, 32752
  %1820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1819)  ; LegacyF16ToF32(value)
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 3
  %1823 = fmul fast float %1822, 1.000000e+03
  %1824 = fmul fast float %369, %1823
  %1825 = call float @dx.op.unary.f32(i32 22, float %1824)  ; Frc(value)
  %1826 = fadd fast float %1825, %359
  %1827 = fmul fast float %370, %1823
  %1828 = call float @dx.op.unary.f32(i32 22, float %1827)  ; Frc(value)
  %1829 = fadd fast float %1828, %361
  %1830 = fmul fast float %1795, %1823
  %1831 = call float @dx.op.unary.f32(i32 22, float %1830)  ; Frc(value)
  %1832 = fmul fast float %1831, 0x401921FB60000000
  %1833 = fadd fast float %1832, %1814
  %1834 = call float @dx.op.unary.f32(i32 13, float %1833)  ; Sin(value)
  %1835 = call float @dx.op.unary.f32(i32 12, float %1833)  ; Cos(value)
  %1836 = fsub fast float -0.000000e+00, %1834
  %1837 = fadd fast float %1788, -5.000000e-01
  %1838 = fadd fast float %1789, -5.000000e-01
  %1839 = fmul fast float %1806, %1837
  %1840 = fmul fast float %1808, %1838
  %1841 = fadd fast float %1839, 5.000000e-01
  %1842 = fadd fast float %1840, 5.000000e-01
  %1843 = fmul fast float %1817, %1841
  %1844 = fmul fast float %1820, %1842
  %1845 = fmul fast float %1835, %1843
  %1846 = call float @dx.op.tertiary.f32(i32 46, float %1836, float %1844, float %1845)  ; FMad(a,b,c)
  %1847 = fmul fast float %1834, %1843
  %1848 = call float @dx.op.tertiary.f32(i32 46, float %1835, float %1844, float %1847)  ; FMad(a,b,c)
  %1849 = fadd fast float %1826, %1846
  %1850 = fadd fast float %1829, %1848
  %1851 = icmp ugt i32 %1800, 1
  %1852 = icmp ugt i32 %1798, 33554431
  %1853 = or i1 %1852, %1851
  br i1 %1853, label %1854, label %1879

; <label>:1854                                    ; preds = %1781
  %1855 = add i32 %36, 260
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = lshr i32 %1857, 16
  %1859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1858)  ; LegacyF16ToF32(value)
  %1860 = fmul fast float %1822, %1859
  %1861 = call float @dx.op.unary.f32(i32 22, float %1860)  ; Frc(value)
  %1862 = mul nuw nsw i32 %1800, %1801
  %1863 = uitofp i32 %1862 to float
  %1864 = fmul fast float %1861, %1863
  %1865 = call float @dx.op.unary.f32(i32 27, float %1864)  ; Round_ni(value)
  %1866 = fptoui float %1865 to i32
  %1867 = urem i32 %1866, %1800
  %1868 = udiv i32 %1866, %1801
  %1869 = call float @dx.op.unary.f32(i32 22, float %1849)  ; Frc(value)
  %1870 = call float @dx.op.unary.f32(i32 22, float %1850)  ; Frc(value)
  %1871 = uitofp i32 %1867 to float
  %1872 = uitofp i32 %1868 to float
  %1873 = fadd fast float %1869, %1871
  %1874 = fadd fast float %1870, %1872
  %1875 = uitofp i32 %1800 to float
  %1876 = uitofp i32 %1801 to float
  %1877 = fdiv fast float %1873, %1875
  %1878 = fdiv fast float %1874, %1876
  br label %1879

; <label>:1879                                    ; preds = %1854, %1781
  %1880 = phi float [ %1877, %1854 ], [ %1849, %1781 ]
  %1881 = phi float [ %1878, %1854 ], [ %1850, %1781 ]
  %1882 = and i32 %1775, 256
  %1883 = icmp eq i32 %1882, 0
  br i1 %1883, label %1930, label %1884

; <label>:1884                                    ; preds = %1879
  %1885 = add i32 %36, 432
  %1886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = add i32 %1887, 0
  %1889 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1888, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1890 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1889, %dx.types.Handle %86, float %1880, float %1881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1891 = extractvalue %dx.types.ResRet.f32 %1890, 0
  %1892 = add i32 %36, 132
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = shl i32 %1894, 4
  %1896 = and i32 %1895, 32752
  %1897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1896)  ; LegacyF16ToF32(value)
  %1898 = lshr i32 %1894, 7
  %1899 = and i32 %1898, 32752
  %1900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1899)  ; LegacyF16ToF32(value)
  %1901 = fsub fast float 1.000000e+00, %471
  %1902 = call float @dx.op.binary.f32(i32 35, float %1901, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1903 = bitcast float %471 to i32
  %1904 = sitofp i32 %1903 to float
  %1905 = fadd fast float %1904, 0xC1CFBF8940000000
  %1906 = fmul fast float %1900, %1905
  %1907 = fadd fast float %1906, 0x41CFBF8940000000
  %1908 = fptosi float %1907 to i32
  %1909 = bitcast i32 %1908 to float
  %1910 = bitcast float %1902 to i32
  %1911 = sitofp i32 %1910 to float
  %1912 = fadd fast float %1911, 0xC1CFBF8940000000
  %1913 = fmul fast float %1912, %1900
  %1914 = fadd fast float %1913, 0x41CFBF8940000000
  %1915 = fptosi float %1914 to i32
  %1916 = bitcast i32 %1915 to float
  %1917 = fmul fast float %1909, %1897
  %1918 = fmul fast float %1916, %1897
  %1919 = fsub fast float %1902, %1917
  %1920 = fadd fast float %1918, %1902
  %1921 = call float @dx.op.unary.f32(i32 7, float %1919)  ; Saturate(value)
  %1922 = call float @dx.op.unary.f32(i32 7, float %1920)  ; Saturate(value)
  %1923 = fsub fast float %1891, %1921
  %1924 = fsub fast float %1922, %1921
  %1925 = bitcast float %1924 to i32
  %1926 = sub nsw i32 2129859010, %1925
  %1927 = bitcast i32 %1926 to float
  %1928 = fmul fast float %1927, %1923
  %1929 = call float @dx.op.unary.f32(i32 7, float %1928)  ; Saturate(value)
  br label %1930

; <label>:1930                                    ; preds = %1884, %1879
  %1931 = phi float [ %1929, %1884 ], [ %471, %1879 ]
  %1932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.i32 %1932, 0
  %1934 = and i32 %1933, 128
  %1935 = icmp eq i32 %1934, 0
  br i1 %1935, label %1952, label %1936

; <label>:1936                                    ; preds = %1930
  %1937 = add i32 %36, 416
  %1938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.i32 %1938, 0
  %1940 = add i32 %1939, 0
  %1941 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1940, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1942 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1941, %dx.types.Handle %86, float %1880, float %1881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1943 = extractvalue %dx.types.ResRet.f32 %1942, 0
  %1944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.i32 %1944, 0
  %1946 = and i32 %1945, 524288
  %1947 = icmp ne i32 %1946, 0
  %1948 = fcmp fast ogt float %1943, 0x3FE0101020000000
  %1949 = select i1 %1948, float 1.000000e+00, float 0.000000e+00
  %1950 = select i1 %1947, float %1949, float %1943
  %1951 = fmul fast float %1950, %1931
  br label %1952

; <label>:1952                                    ; preds = %1936, %1930
  %1953 = phi float [ %1951, %1936 ], [ %1931, %1930 ]
  %1954 = fcmp fast ult float %1953, 0x3F70101020000000
  br i1 %1954, label %2497, label %1955

; <label>:1955                                    ; preds = %1952
  %1956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.i32 %1956, 0
  %1958 = and i32 %1957, 16
  %1959 = icmp eq i32 %1958, 0
  br i1 %1959, label %2158, label %1960

; <label>:1960                                    ; preds = %1955
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1796, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = add i32 %36, 368
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = add i32 %1965, 0
  %1967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1966, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1968 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1967, %dx.types.Handle %85, float %1880, float %1881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1969 = extractvalue %dx.types.ResRet.f32 %1968, 0
  %1970 = extractvalue %dx.types.ResRet.f32 %1968, 1
  %1971 = extractvalue %dx.types.ResRet.f32 %1968, 2
  %1972 = extractvalue %dx.types.ResRet.f32 %1968, 3
  %1973 = and i32 %1962, 255
  %1974 = uitofp i32 %1973 to float
  %1975 = lshr i32 %1962, 8
  %1976 = and i32 %1975, 255
  %1977 = uitofp i32 %1976 to float
  %1978 = fmul fast float %1972, %1974
  %1979 = fadd fast float %1978, %1977
  %1980 = fmul fast float %1979, 0x3F70101000000000
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = and i32 %1982, 512
  %1984 = icmp eq i32 %1983, 0
  br i1 %1984, label %1993, label %1985

; <label>:1985                                    ; preds = %1960
  %1986 = add i32 %36, 448
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = add i32 %1988, 0
  %1990 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1989, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1991 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1990, %dx.types.Handle %86, float %1880, float %1881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1992 = extractvalue %dx.types.ResRet.f32 %1991, 0
  br label %1993

; <label>:1993                                    ; preds = %1985, %1960
  %1994 = phi float [ %1992, %1985 ], [ 1.000000e+00, %1960 ]
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = and i32 %1996, 33554432
  %1998 = icmp eq i32 %1997, 0
  br i1 %1998, label %2105, label %1999

; <label>:1999                                    ; preds = %1993
  %2000 = add i32 %36, 256
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = and i32 %2002, 65535
  %2004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2003)  ; LegacyF16ToF32(value)
  %2005 = lshr i32 %2002, 16
  %2006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2005)  ; LegacyF16ToF32(value)
  %2007 = add i32 %36, 260
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = and i32 %2009, 65535
  %2011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2010)  ; LegacyF16ToF32(value)
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = lshr i32 %2013, 24
  %2015 = uitofp i32 %2014 to float
  %2016 = fmul fast float %2015, 0x3F70101020000000
  %2017 = and i32 %2013, 255
  %2018 = uitofp i32 %2017 to float
  %2019 = fmul fast float %2018, 0x3F70101020000000
  %2020 = lshr i32 %2013, 8
  %2021 = and i32 %2020, 255
  %2022 = uitofp i32 %2021 to float
  %2023 = fmul fast float %2022, 0x3F70101020000000
  %2024 = lshr i32 %2013, 16
  %2025 = and i32 %2024, 255
  %2026 = uitofp i32 %2025 to float
  %2027 = fmul fast float %2026, 0x3F70101020000000
  %2028 = add i32 %36, 252
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = lshr i32 %2030, 24
  %2032 = uitofp i32 %2031 to float
  %2033 = fmul fast float %2032, 0x3F70101020000000
  %2034 = and i32 %2030, 255
  %2035 = uitofp i32 %2034 to float
  %2036 = fmul fast float %2035, 0x3F70101020000000
  %2037 = lshr i32 %2030, 8
  %2038 = and i32 %2037, 255
  %2039 = uitofp i32 %2038 to float
  %2040 = fmul fast float %2039, 0x3F70101020000000
  %2041 = lshr i32 %2030, 16
  %2042 = and i32 %2041, 255
  %2043 = uitofp i32 %2042 to float
  %2044 = fmul fast float %2043, 0x3F70101020000000
  %2045 = bitcast float %1969 to i32
  %2046 = ashr i32 %2045, 1
  %2047 = sub nsw i32 1597463174, %2046
  %2048 = bitcast i32 %2047 to float
  %2049 = fmul fast float %1969, 5.000000e-01
  %2050 = fmul fast float %2048, %2048
  %2051 = fmul fast float %2050, %2049
  %2052 = fsub fast float 1.500000e+00, %2051
  %2053 = fmul fast float %2048, %1969
  %2054 = fmul fast float %2053, %2052
  %2055 = bitcast float %1970 to i32
  %2056 = ashr i32 %2055, 1
  %2057 = sub nsw i32 1597463174, %2056
  %2058 = bitcast i32 %2057 to float
  %2059 = fmul fast float %1970, 5.000000e-01
  %2060 = fmul fast float %2058, %2058
  %2061 = fmul fast float %2060, %2059
  %2062 = fsub fast float 1.500000e+00, %2061
  %2063 = fmul fast float %2058, %1970
  %2064 = fmul fast float %2063, %2062
  %2065 = bitcast float %1971 to i32
  %2066 = ashr i32 %2065, 1
  %2067 = sub nsw i32 1597463174, %2066
  %2068 = bitcast i32 %2067 to float
  %2069 = fmul fast float %1971, 5.000000e-01
  %2070 = fmul fast float %2068, %2068
  %2071 = fmul fast float %2070, %2069
  %2072 = fsub fast float 1.500000e+00, %2071
  %2073 = fmul fast float %2068, %1971
  %2074 = fmul fast float %2073, %2072
  %2075 = fsub fast float %2054, %2036
  %2076 = fsub fast float %2064, %2040
  %2077 = fsub fast float %2074, %2044
  %2078 = fmul fast float %2075, %2004
  %2079 = fmul fast float %2076, %2006
  %2080 = fmul fast float %2077, %2011
  %2081 = fadd fast float %2078, %2019
  %2082 = fadd fast float %2079, %2023
  %2083 = fadd fast float %2080, %2027
  %2084 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  %2085 = call float @dx.op.unary.f32(i32 7, float %2082)  ; Saturate(value)
  %2086 = call float @dx.op.unary.f32(i32 7, float %2083)  ; Saturate(value)
  %2087 = fmul fast float %2084, %2084
  %2088 = fmul fast float %2085, %2085
  %2089 = fmul fast float %2086, %2086
  %2090 = fsub fast float %2087, %1969
  %2091 = fsub fast float %2088, %1970
  %2092 = fsub fast float %2089, %1971
  %2093 = fmul fast float %2090, %1994
  %2094 = fmul fast float %2091, %1994
  %2095 = fmul fast float %2092, %1994
  %2096 = fadd fast float %2093, %1969
  %2097 = fadd fast float %2094, %1970
  %2098 = fadd fast float %2095, %1971
  %2099 = fadd fast float %2016, %1980
  %2100 = fsub fast float %2099, %2033
  %2101 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  %2102 = fsub fast float %2101, %1980
  %2103 = fmul fast float %2102, %1994
  %2104 = fadd fast float %2103, %1980
  br label %2158

; <label>:2105                                    ; preds = %1993
  %2106 = and i32 %1996, 134217728
  %2107 = icmp eq i32 %2106, 0
  br i1 %2107, label %2142, label %2108

; <label>:2108                                    ; preds = %2105
  %2109 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %2110 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %2111 = call float @dx.op.unary.f32(i32 24, float %354)  ; Sqrt(value)
  %2112 = fadd fast float %2109, -5.000000e-01
  %2113 = fadd fast float %2110, -5.000000e-01
  %2114 = fadd fast float %2111, -5.000000e-01
  %2115 = fmul fast float %2112, %1994
  %2116 = fmul fast float %2113, %1994
  %2117 = fmul fast float %2114, %1994
  %2118 = fadd fast float %2115, 5.000000e-01
  %2119 = fadd fast float %2116, 5.000000e-01
  %2120 = fadd fast float %2117, 5.000000e-01
  %2121 = call float @dx.op.unary.f32(i32 24, float %1969)  ; Sqrt(value)
  %2122 = call float @dx.op.unary.f32(i32 24, float %1970)  ; Sqrt(value)
  %2123 = call float @dx.op.unary.f32(i32 24, float %1971)  ; Sqrt(value)
  %2124 = fmul fast float %2118, 2.000000e+00
  %2125 = fsub fast float 1.000000e+00, %2124
  %2126 = fmul fast float %2125, %2121
  %2127 = fadd fast float %2126, %2124
  %2128 = fmul fast float %2127, %2121
  %2129 = fmul fast float %2119, 2.000000e+00
  %2130 = fsub fast float 1.000000e+00, %2129
  %2131 = fmul fast float %2130, %2122
  %2132 = fadd fast float %2131, %2129
  %2133 = fmul fast float %2132, %2122
  %2134 = fmul fast float %2120, 2.000000e+00
  %2135 = fsub fast float 1.000000e+00, %2134
  %2136 = fmul fast float %2135, %2123
  %2137 = fadd fast float %2136, %2134
  %2138 = fmul fast float %2137, %2123
  %2139 = fmul fast float %2128, %2128
  %2140 = fmul fast float %2133, %2133
  %2141 = fmul fast float %2138, %2138
  br label %2158

; <label>:2142                                    ; preds = %2105
  %2143 = fmul fast float %346, %346
  %2144 = fmul fast float %350, %350
  %2145 = fmul fast float %354, %354
  %2146 = fadd fast float %2143, -1.000000e+00
  %2147 = fadd fast float %2144, -1.000000e+00
  %2148 = fadd fast float %2145, -1.000000e+00
  %2149 = fmul fast float %1994, %2146
  %2150 = fmul fast float %1994, %2147
  %2151 = fmul fast float %1994, %2148
  %2152 = fadd fast float %2149, 1.000000e+00
  %2153 = fadd fast float %2150, 1.000000e+00
  %2154 = fadd fast float %2151, 1.000000e+00
  %2155 = fmul fast float %2152, %1969
  %2156 = fmul fast float %2153, %1970
  %2157 = fmul fast float %2154, %1971
  br label %2158

; <label>:2158                                    ; preds = %2142, %2108, %1999, %1955
  %2159 = phi float [ %2104, %1999 ], [ %1980, %2108 ], [ %1980, %2142 ], [ 0x3FA23C0BE0000000, %1955 ]
  %2160 = phi float [ %2096, %1999 ], [ %2139, %2108 ], [ %2155, %2142 ], [ 1.000000e+00, %1955 ]
  %2161 = phi float [ %2097, %1999 ], [ %2140, %2108 ], [ %2156, %2142 ], [ 1.000000e+00, %1955 ]
  %2162 = phi float [ %2098, %1999 ], [ %2141, %2108 ], [ %2157, %2142 ], [ 1.000000e+00, %1955 ]
  %2163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2164 = extractvalue %dx.types.CBufRet.i32 %2163, 1
  %2165 = and i32 %2164, 1
  %2166 = icmp ne i32 %2165, 0
  %2167 = add i32 %36, 356
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = and i32 %2169, 32
  %2171 = icmp ne i32 %2170, 0
  %2172 = and i1 %2166, %2171
  %2173 = select i1 %2172, float 1.000000e+00, float %2160
  %2174 = select i1 %2172, float 0x3FD3333340000000, float %2161
  %2175 = select i1 %2172, float 0x3FD3333340000000, float %2162
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = and i32 %2177, 32
  %2179 = icmp eq i32 %2178, 0
  br i1 %2179, label %2252, label %2180

; <label>:2180                                    ; preds = %2158
  %2181 = add i32 %36, 124
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = add i32 %36, 384
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = add i32 %2186, 0
  %2188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2189 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2188, %dx.types.Handle %85, float %1880, float %1881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2190 = extractvalue %dx.types.ResRet.f32 %2189, 0
  %2191 = extractvalue %dx.types.ResRet.f32 %2189, 1
  %2192 = extractvalue %dx.types.ResRet.f32 %2189, 2
  %2193 = extractvalue %dx.types.ResRet.f32 %2189, 3
  %2194 = and i32 %2183, 255
  %2195 = uitofp i32 %2194 to float
  %2196 = lshr i32 %2183, 8
  %2197 = and i32 %2196, 255
  %2198 = uitofp i32 %2197 to float
  %2199 = lshr i32 %2183, 16
  %2200 = and i32 %2199, 255
  %2201 = uitofp i32 %2200 to float
  %2202 = fmul fast float %2201, 0x3F70101000000000
  %2203 = fmul fast float %2190, %2195
  %2204 = fadd fast float %2203, %2198
  %2205 = fmul fast float %2204, 0x3F70101000000000
  %2206 = fadd fast float %2191, -5.000000e-01
  %2207 = fadd fast float %2193, -5.000000e-01
  %2208 = fmul fast float %2206, %2202
  %2209 = fmul fast float %2207, %2202
  %2210 = fadd fast float %2208, 5.000000e-01
  %2211 = fadd fast float %2209, 5.000000e-01
  %2212 = fmul fast float %2210, 2.000000e+00
  %2213 = fadd fast float %2212, -1.000000e+00
  %2214 = fmul fast float %2211, 2.000000e+00
  %2215 = fadd fast float %2214, -1.000000e+00
  %2216 = fadd fast float %2213, %2215
  %2217 = fmul fast float %2216, 5.000000e-01
  %2218 = fsub fast float %2213, %2215
  %2219 = fmul fast float %2218, 5.000000e-01
  %2220 = call float @dx.op.unary.f32(i32 6, float %2217)  ; FAbs(value)
  %2221 = fsub fast float 1.000000e+00, %2220
  %2222 = call float @dx.op.unary.f32(i32 6, float %2219)  ; FAbs(value)
  %2223 = fsub fast float %2221, %2222
  %2224 = call float @dx.op.dot3.f32(i32 55, float %2217, float %2219, float %2223, float %2217, float %2219, float %2223)  ; Dot3(ax,ay,az,bx,by,bz)
  %2225 = call float @dx.op.unary.f32(i32 25, float %2224)  ; Rsqrt(value)
  %2226 = fmul fast float %2217, %2225
  %2227 = fmul fast float %2219, %2225
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = and i32 %2229, 67108864
  %2231 = icmp eq i32 %2230, 0
  br i1 %2231, label %2248, label %2232

; <label>:2232                                    ; preds = %2180
  %2233 = add i32 %36, 312
  %2234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2233, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.i32 %2234, 0
  %2236 = and i32 %2235, 65535
  %2237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2236)  ; LegacyF16ToF32(value)
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = and i32 %2239, 65535
  %2241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2240)  ; LegacyF16ToF32(value)
  %2242 = lshr i32 %2235, 16
  %2243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2242)  ; LegacyF16ToF32(value)
  %2244 = fsub fast float %2205, %2243
  %2245 = fmul fast float %2244, %2237
  %2246 = fadd fast float %2245, %2241
  %2247 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  br label %2248

; <label>:2248                                    ; preds = %2232, %2180
  %2249 = phi float [ %2247, %2232 ], [ %2205, %2180 ]
  %2250 = call float @dx.op.dot2.f32(i32 54, float %2226, float %2227, float %1784, float %1785)  ; Dot2(ax,ay,bx,by)
  %2251 = call float @dx.op.dot2.f32(i32 54, float %2226, float %2227, float %1786, float %1787)  ; Dot2(ax,ay,bx,by)
  br label %2252

; <label>:2252                                    ; preds = %2248, %2158
  %2253 = phi float [ %2249, %2248 ], [ 0x3FD6666660000000, %2158 ]
  %2254 = phi float [ %2250, %2248 ], [ 0.000000e+00, %2158 ]
  %2255 = phi float [ %2251, %2248 ], [ 0.000000e+00, %2158 ]
  %2256 = phi float [ %2192, %2248 ], [ 1.000000e+00, %2158 ]
  %2257 = add i32 %36, 192
  %2258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2257, i32 undef)  ; BufferLoad(srv,index,wot)
  %2259 = extractvalue %dx.types.ResRet.i32 %2258, 0
  %2260 = lshr i32 %2259, 22
  %2261 = shl nuw nsw i32 %2260, 5
  %2262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2261)  ; LegacyF16ToF32(value)
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = and i32 %2264, 64
  %2266 = icmp eq i32 %2265, 0
  br i1 %2266, label %2300, label %2267

; <label>:2267                                    ; preds = %2252
  %2268 = add i32 %36, 400
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = add i32 %2270, 0
  %2272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = and i32 %2274, 131072
  %2276 = icmp eq i32 %2275, 0
  %2277 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2272, %dx.types.Handle %85, float %1880, float %1881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2278 = extractvalue %dx.types.ResRet.f32 %2277, 0
  %2279 = extractvalue %dx.types.ResRet.f32 %2277, 1
  %2280 = extractvalue %dx.types.ResRet.f32 %2277, 2
  %2281 = fmul fast float %2278, %334
  %2282 = fmul fast float %2279, %337
  %2283 = fmul fast float %2280, %340
  br i1 %2276, label %2290, label %2284

; <label>:2284                                    ; preds = %2267
  %2285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2286 = extractvalue %dx.types.CBufRet.f32 %2285, 0
  %2287 = fmul fast float %2286, %2281
  %2288 = fmul fast float %2286, %2282
  %2289 = fmul fast float %2286, %2283
  br label %2290

; <label>:2290                                    ; preds = %2284, %2267
  %2291 = phi float [ %2287, %2284 ], [ %2281, %2267 ]
  %2292 = phi float [ %2288, %2284 ], [ %2282, %2267 ]
  %2293 = phi float [ %2289, %2284 ], [ %2283, %2267 ]
  %2294 = fmul fast float %2291, %2262
  %2295 = select i1 %233, float %2294, float %2291
  %2296 = call float @dx.op.dot3.f32(i32 55, float %2295, float %2292, float %2293, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2297 = select i1 %233, float 0.000000e+00, float %2291
  %2298 = select i1 %233, float %2296, float %2292
  %2299 = select i1 %233, float 0.000000e+00, float %2293
  br label %2300

; <label>:2300                                    ; preds = %2290, %2252
  %2301 = phi float [ %2297, %2290 ], [ 0.000000e+00, %2252 ]
  %2302 = phi float [ %2298, %2290 ], [ 0.000000e+00, %2252 ]
  %2303 = phi float [ %2299, %2290 ], [ 0.000000e+00, %2252 ]
  %2304 = add i32 %36, 128
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = and i32 %2306, 255
  %2308 = uitofp i32 %2307 to float
  %2309 = lshr i32 %2306, 8
  %2310 = and i32 %2309, 255
  %2311 = uitofp i32 %2310 to float
  %2312 = call float @dx.op.dot3.f32(i32 55, float %2173, float %2174, float %2175, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2313 = fmul fast float %2311, %2312
  %2314 = fadd fast float %2313, %2308
  %2315 = fmul fast float %2314, 0x3F70101020000000
  %2316 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  br i1 %1772, label %2317, label %2325

; <label>:2317                                    ; preds = %2300
  %2318 = fsub fast float 1.000000e+00, %1953
  %2319 = fmul fast float %2318, %1764
  %2320 = fmul fast float %2318, %1765
  %2321 = fmul fast float %2318, %1766
  %2322 = fmul fast float %2318, %1761
  %2323 = fmul fast float %2318, %1762
  %2324 = fmul fast float %2318, %1763
  br label %2325

; <label>:2325                                    ; preds = %2317, %2300
  %2326 = phi float [ %2322, %2317 ], [ %1761, %2300 ]
  %2327 = phi float [ %2323, %2317 ], [ %1762, %2300 ]
  %2328 = phi float [ %2324, %2317 ], [ %1763, %2300 ]
  %2329 = phi float [ %2319, %2317 ], [ %1764, %2300 ]
  %2330 = phi float [ %2320, %2317 ], [ %1765, %2300 ]
  %2331 = phi float [ %2321, %2317 ], [ %1766, %2300 ]
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = and i32 %2333, 3
  %2335 = icmp eq i32 %2334, 3
  br i1 %2335, label %2414, label %2336

; <label>:2336                                    ; preds = %2325
  %2337 = and i32 %2333, 16
  %2338 = icmp ne i32 %2337, 0
  %2339 = select i1 %2338, float %1953, float 0.000000e+00
  %2340 = icmp eq i32 %2334, 0
  br i1 %2340, label %2341, label %2369

; <label>:2341                                    ; preds = %2336
  %2342 = and i32 %2333, 64
  %2343 = icmp ne i32 %2342, 0
  %2344 = select i1 %2343, float %1953, float 0.000000e+00
  %2345 = fsub fast float %2173, %2329
  %2346 = fsub fast float %2174, %2330
  %2347 = fsub fast float %2175, %2331
  %2348 = fmul fast float %2339, %2345
  %2349 = fmul fast float %2339, %2346
  %2350 = fmul fast float %2339, %2347
  %2351 = fadd fast float %2348, %2329
  %2352 = fadd fast float %2349, %2330
  %2353 = fadd fast float %2350, %2331
  %2354 = fsub fast float %2159, %1767
  %2355 = fmul fast float %2339, %2354
  %2356 = fadd fast float %2355, %1767
  %2357 = fsub fast float %2301, %2326
  %2358 = fsub fast float %2302, %2327
  %2359 = fsub fast float %2303, %2328
  %2360 = fmul fast float %2344, %2357
  %2361 = fmul fast float %2344, %2358
  %2362 = fmul fast float %2344, %2359
  %2363 = fadd fast float %2360, %2326
  %2364 = fadd fast float %2361, %2327
  %2365 = fadd fast float %2362, %2328
  %2366 = fsub fast float %2316, %1770
  %2367 = fmul fast float %2339, %2366
  %2368 = fadd fast float %2367, %1770
  br label %2414

; <label>:2369                                    ; preds = %2336
  %2370 = icmp eq i32 %2334, 1
  br i1 %2370, label %2371, label %2384

; <label>:2371                                    ; preds = %2369
  %2372 = fadd fast float %2173, -1.000000e+00
  %2373 = fadd fast float %2174, -1.000000e+00
  %2374 = fadd fast float %2175, -1.000000e+00
  %2375 = fmul fast float %2339, %2372
  %2376 = fmul fast float %2339, %2373
  %2377 = fmul fast float %2339, %2374
  %2378 = fadd fast float %2375, 1.000000e+00
  %2379 = fadd fast float %2376, 1.000000e+00
  %2380 = fadd fast float %2377, 1.000000e+00
  %2381 = fmul fast float %2378, %2329
  %2382 = fmul fast float %2379, %2330
  %2383 = fmul fast float %2380, %2331
  br label %2414

; <label>:2384                                    ; preds = %2369
  %2385 = icmp eq i32 %2334, 2
  br i1 %2385, label %2386, label %2414

; <label>:2386                                    ; preds = %2384
  %2387 = call float @dx.op.unary.f32(i32 24, float %2173)  ; Sqrt(value)
  %2388 = call float @dx.op.unary.f32(i32 24, float %2174)  ; Sqrt(value)
  %2389 = call float @dx.op.unary.f32(i32 24, float %2175)  ; Sqrt(value)
  %2390 = fadd fast float %2387, -5.000000e-01
  %2391 = fadd fast float %2388, -5.000000e-01
  %2392 = fadd fast float %2389, -5.000000e-01
  %2393 = fmul fast float %2390, %2339
  %2394 = fmul fast float %2391, %2339
  %2395 = fmul fast float %2392, %2339
  %2396 = fadd fast float %2393, 5.000000e-01
  %2397 = fadd fast float %2394, 5.000000e-01
  %2398 = fadd fast float %2395, 5.000000e-01
  %2399 = fmul fast float %2396, 2.000000e+00
  %2400 = fsub fast float 1.000000e+00, %2399
  %2401 = fmul fast float %2400, %2329
  %2402 = fadd fast float %2401, %2399
  %2403 = fmul fast float %2402, %2329
  %2404 = fmul fast float %2397, 2.000000e+00
  %2405 = fsub fast float 1.000000e+00, %2404
  %2406 = fmul fast float %2405, %2330
  %2407 = fadd fast float %2406, %2404
  %2408 = fmul fast float %2407, %2330
  %2409 = fmul fast float %2398, 2.000000e+00
  %2410 = fsub fast float 1.000000e+00, %2409
  %2411 = fmul fast float %2410, %2331
  %2412 = fadd fast float %2411, %2409
  %2413 = fmul fast float %2412, %2331
  br label %2414

; <label>:2414                                    ; preds = %2386, %2384, %2371, %2341, %2325
  %2415 = phi float [ %2326, %2325 ], [ %2326, %2386 ], [ %2326, %2384 ], [ %2326, %2371 ], [ %2363, %2341 ]
  %2416 = phi float [ %2327, %2325 ], [ %2327, %2386 ], [ %2327, %2384 ], [ %2327, %2371 ], [ %2364, %2341 ]
  %2417 = phi float [ %2328, %2325 ], [ %2328, %2386 ], [ %2328, %2384 ], [ %2328, %2371 ], [ %2365, %2341 ]
  %2418 = phi float [ %2329, %2325 ], [ %2403, %2386 ], [ %2329, %2384 ], [ %2381, %2371 ], [ %2351, %2341 ]
  %2419 = phi float [ %2330, %2325 ], [ %2408, %2386 ], [ %2330, %2384 ], [ %2382, %2371 ], [ %2352, %2341 ]
  %2420 = phi float [ %2331, %2325 ], [ %2413, %2386 ], [ %2331, %2384 ], [ %2383, %2371 ], [ %2353, %2341 ]
  %2421 = phi float [ %1767, %2325 ], [ %1767, %2386 ], [ %1767, %2384 ], [ %1767, %2371 ], [ %2356, %2341 ]
  %2422 = phi float [ %1770, %2325 ], [ %1770, %2386 ], [ %1770, %2384 ], [ %1770, %2371 ], [ %2368, %2341 ]
  %2423 = and i32 %2333, 12
  %2424 = icmp eq i32 %2423, 12
  br i1 %2424, label %2497, label %2425

; <label>:2425                                    ; preds = %2414
  %2426 = and i32 %2333, 2097184
  %2427 = icmp eq i32 %2426, 2097184
  %2428 = select i1 %2427, float %1953, float 0.000000e+00
  %2429 = and i32 %2333, 4194336
  %2430 = icmp eq i32 %2429, 4194336
  %2431 = select i1 %2430, float %1953, float 0.000000e+00
  %2432 = and i32 %2333, 8388640
  %2433 = icmp eq i32 %2432, 8388640
  %2434 = select i1 %2433, float %1953, float 0.000000e+00
  %2435 = icmp eq i32 %2423, 0
  br i1 %2435, label %2436, label %2449

; <label>:2436                                    ; preds = %2425
  %2437 = fsub fast float %2254, %1759
  %2438 = fsub fast float %2255, %1760
  %2439 = fmul fast float %2428, %2437
  %2440 = fmul fast float %2428, %2438
  %2441 = fadd fast float %2439, %1759
  %2442 = fadd fast float %2440, %1760
  %2443 = fsub fast float %2256, %1769
  %2444 = fmul fast float %2431, %2443
  %2445 = fadd fast float %2444, %1769
  %2446 = fsub fast float %2253, %1768
  %2447 = fmul fast float %2434, %2446
  %2448 = fadd fast float %2447, %1768
  br label %2497

; <label>:2449                                    ; preds = %2425
  %2450 = icmp eq i32 %2423, 4
  br i1 %2450, label %2451, label %2483

; <label>:2451                                    ; preds = %2449
  %2452 = fmul fast float %2428, %2254
  %2453 = fmul fast float %2428, %2255
  %2454 = fadd fast float %2452, %1759
  %2455 = fadd fast float %2453, %1760
  %2456 = call float @dx.op.binary.f32(i32 36, float %1769, float %2256)  ; FMin(a,b)
  %2457 = fsub fast float %2456, %1769
  %2458 = fmul fast float %2457, %2431
  %2459 = fadd fast float %2458, %1769
  %2460 = fadd fast float %2253, %1768
  %2461 = fmul fast float %2460, 0x3FF337FAE0000000
  %2462 = fmul fast float %1768, %1768
  %2463 = fmul fast float %2253, %2253
  %2464 = fadd fast float %2463, %2462
  %2465 = fmul fast float %2464, 0x3FE5152B00000000
  %2466 = fmul fast float %1768, 0xBFCC1F85E0000000
  %2467 = fmul fast float %2466, %2253
  %2468 = fadd fast float %2467, 0xBFE1363700000000
  %2469 = fadd fast float %2468, %2461
  %2470 = fsub fast float %2469, %2465
  %2471 = fmul fast float %2460, 0x3FBA6F0D00000000
  %2472 = fmul fast float %2464, 0x3FD0432880000000
  %2473 = fmul fast float %1768, 0xBFEF110800000000
  %2474 = fmul fast float %2473, %2253
  %2475 = fadd fast float %2474, 1.000000e+00
  %2476 = fsub fast float %2475, %2471
  %2477 = fadd fast float %2476, %2472
  %2478 = fdiv fast float %2470, %2477
  %2479 = call float @dx.op.unary.f32(i32 7, float %2478)  ; Saturate(value)
  %2480 = fsub fast float %2479, %1768
  %2481 = fmul fast float %2480, %2434
  %2482 = fadd fast float %2481, %1768
  br label %2497

; <label>:2483                                    ; preds = %2449
  %2484 = icmp eq i32 %2423, 8
  br i1 %2484, label %2485, label %2497

; <label>:2485                                    ; preds = %2483
  %2486 = fmul fast float %2428, %2254
  %2487 = fmul fast float %2428, %2255
  %2488 = fadd fast float %2486, %1759
  %2489 = fadd fast float %2487, %1760
  %2490 = call float @dx.op.binary.f32(i32 36, float %1769, float %2256)  ; FMin(a,b)
  %2491 = fsub fast float %2490, %1769
  %2492 = fmul fast float %2491, %2431
  %2493 = fadd fast float %2492, %1769
  %2494 = fsub fast float %2253, %1768
  %2495 = fmul fast float %2434, %2494
  %2496 = fadd fast float %2495, %1768
  br label %2497

; <label>:2497                                    ; preds = %2485, %2483, %2451, %2436, %2414, %1952, %1771, %1758
  %2498 = phi float [ %1759, %2414 ], [ %1759, %1952 ], [ %1759, %1758 ], [ %2488, %2485 ], [ %1759, %2483 ], [ %2454, %2451 ], [ %2441, %2436 ], [ %1759, %1771 ]
  %2499 = phi float [ %1760, %2414 ], [ %1760, %1952 ], [ %1760, %1758 ], [ %2489, %2485 ], [ %1760, %2483 ], [ %2455, %2451 ], [ %2442, %2436 ], [ %1760, %1771 ]
  %2500 = phi float [ %2415, %2414 ], [ %1761, %1952 ], [ %1761, %1758 ], [ %2415, %2485 ], [ %2415, %2483 ], [ %2415, %2451 ], [ %2415, %2436 ], [ %1761, %1771 ]
  %2501 = phi float [ %2416, %2414 ], [ %1762, %1952 ], [ %1762, %1758 ], [ %2416, %2485 ], [ %2416, %2483 ], [ %2416, %2451 ], [ %2416, %2436 ], [ %1762, %1771 ]
  %2502 = phi float [ %2417, %2414 ], [ %1763, %1952 ], [ %1763, %1758 ], [ %2417, %2485 ], [ %2417, %2483 ], [ %2417, %2451 ], [ %2417, %2436 ], [ %1763, %1771 ]
  %2503 = phi float [ %2418, %2414 ], [ %1764, %1952 ], [ %1764, %1758 ], [ %2418, %2485 ], [ %2418, %2483 ], [ %2418, %2451 ], [ %2418, %2436 ], [ %1764, %1771 ]
  %2504 = phi float [ %2419, %2414 ], [ %1765, %1952 ], [ %1765, %1758 ], [ %2419, %2485 ], [ %2419, %2483 ], [ %2419, %2451 ], [ %2419, %2436 ], [ %1765, %1771 ]
  %2505 = phi float [ %2420, %2414 ], [ %1766, %1952 ], [ %1766, %1758 ], [ %2420, %2485 ], [ %2420, %2483 ], [ %2420, %2451 ], [ %2420, %2436 ], [ %1766, %1771 ]
  %2506 = phi float [ %2421, %2414 ], [ %1767, %1952 ], [ %1767, %1758 ], [ %2421, %2485 ], [ %2421, %2483 ], [ %2421, %2451 ], [ %2421, %2436 ], [ %1767, %1771 ]
  %2507 = phi float [ %1768, %2414 ], [ %1768, %1952 ], [ %1768, %1758 ], [ %2496, %2485 ], [ %1768, %2483 ], [ %2482, %2451 ], [ %2448, %2436 ], [ %1768, %1771 ]
  %2508 = phi float [ %1769, %2414 ], [ %1769, %1952 ], [ %1769, %1758 ], [ %2493, %2485 ], [ %1769, %2483 ], [ %2459, %2451 ], [ %2445, %2436 ], [ %1769, %1771 ]
  %2509 = phi float [ %2422, %2414 ], [ %1770, %1952 ], [ %1770, %1758 ], [ %2422, %2485 ], [ %2422, %2483 ], [ %2422, %2451 ], [ %2422, %2436 ], [ %1770, %1771 ]
  br i1 %421, label %3236, label %2510

; <label>:2510                                    ; preds = %2497
  %2511 = icmp ult i32 %475, 4
  %2512 = add i32 %36, 72
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = add i32 %36, 76
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = or i32 %2517, %2514
  %2519 = icmp eq i32 %2518, 0
  br i1 %2519, label %3236, label %2520

; <label>:2520                                    ; preds = %2510
  %2521 = and i32 %2514, 262144
  %2522 = icmp ne i32 %2521, 0
  %2523 = select i1 %2522, float %41, float 1.000000e+00
  %2524 = select i1 %2522, float %42, float 0.000000e+00
  %2525 = select i1 %2522, float %43, float 0.000000e+00
  %2526 = select i1 %2522, float %44, float 1.000000e+00
  %2527 = select i1 %2522, float %45, float %73
  %2528 = select i1 %2522, float %46, float %74
  %2529 = add i32 %36, 332
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = lshr i32 %2531, 16
  %2533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2532)  ; LegacyF16ToF32(value)
  %2534 = fmul fast float %2533, 0x3F50624DE0000000
  %2535 = add i32 %36, 136
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = lshr i32 %2537, 16
  %2539 = and i32 %2538, 255
  %2540 = lshr i32 %2537, 24
  %2541 = add i32 %36, 340
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = and i32 %2543, 65535
  %2545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2544)  ; LegacyF16ToF32(value)
  %2546 = lshr i32 %2543, 16
  %2547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2546)  ; LegacyF16ToF32(value)
  %2548 = add i32 %36, 80
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = lshr i32 %2550, 22
  %2552 = shl nuw nsw i32 %2551, 5
  %2553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2552)  ; LegacyF16ToF32(value)
  %2554 = shl i32 %2550, 4
  %2555 = and i32 %2554, 32752
  %2556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2555)  ; LegacyF16ToF32(value)
  %2557 = lshr i32 %2550, 7
  %2558 = and i32 %2557, 32752
  %2559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2558)  ; LegacyF16ToF32(value)
  %2560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2561 = extractvalue %dx.types.CBufRet.f32 %2560, 3
  %2562 = fmul fast float %2561, 1.000000e+03
  %2563 = fmul fast float %411, %2562
  %2564 = call float @dx.op.unary.f32(i32 22, float %2563)  ; Frc(value)
  %2565 = fadd fast float %2564, %401
  %2566 = fmul fast float %412, %2562
  %2567 = call float @dx.op.unary.f32(i32 22, float %2566)  ; Frc(value)
  %2568 = fadd fast float %2567, %403
  %2569 = fmul fast float %2534, %2562
  %2570 = call float @dx.op.unary.f32(i32 22, float %2569)  ; Frc(value)
  %2571 = fmul fast float %2570, 0x401921FB60000000
  %2572 = fadd fast float %2571, %2553
  %2573 = call float @dx.op.unary.f32(i32 13, float %2572)  ; Sin(value)
  %2574 = call float @dx.op.unary.f32(i32 12, float %2572)  ; Cos(value)
  %2575 = fsub fast float -0.000000e+00, %2573
  %2576 = fadd fast float %2527, -5.000000e-01
  %2577 = fadd fast float %2528, -5.000000e-01
  %2578 = fmul fast float %2545, %2576
  %2579 = fmul fast float %2547, %2577
  %2580 = fadd fast float %2578, 5.000000e-01
  %2581 = fadd fast float %2579, 5.000000e-01
  %2582 = fmul fast float %2556, %2580
  %2583 = fmul fast float %2559, %2581
  %2584 = fmul fast float %2574, %2582
  %2585 = call float @dx.op.tertiary.f32(i32 46, float %2575, float %2583, float %2584)  ; FMad(a,b,c)
  %2586 = fmul fast float %2573, %2582
  %2587 = call float @dx.op.tertiary.f32(i32 46, float %2574, float %2583, float %2586)  ; FMad(a,b,c)
  %2588 = fadd fast float %2565, %2585
  %2589 = fadd fast float %2568, %2587
  %2590 = icmp ugt i32 %2539, 1
  %2591 = icmp ugt i32 %2537, 33554431
  %2592 = or i1 %2591, %2590
  br i1 %2592, label %2593, label %2618

; <label>:2593                                    ; preds = %2520
  %2594 = add i32 %36, 276
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = lshr i32 %2596, 16
  %2598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2597)  ; LegacyF16ToF32(value)
  %2599 = fmul fast float %2561, %2598
  %2600 = call float @dx.op.unary.f32(i32 22, float %2599)  ; Frc(value)
  %2601 = mul nuw nsw i32 %2539, %2540
  %2602 = uitofp i32 %2601 to float
  %2603 = fmul fast float %2600, %2602
  %2604 = call float @dx.op.unary.f32(i32 27, float %2603)  ; Round_ni(value)
  %2605 = fptoui float %2604 to i32
  %2606 = urem i32 %2605, %2539
  %2607 = udiv i32 %2605, %2540
  %2608 = call float @dx.op.unary.f32(i32 22, float %2588)  ; Frc(value)
  %2609 = call float @dx.op.unary.f32(i32 22, float %2589)  ; Frc(value)
  %2610 = uitofp i32 %2606 to float
  %2611 = uitofp i32 %2607 to float
  %2612 = fadd fast float %2608, %2610
  %2613 = fadd fast float %2609, %2611
  %2614 = uitofp i32 %2539 to float
  %2615 = uitofp i32 %2540 to float
  %2616 = fdiv fast float %2612, %2614
  %2617 = fdiv fast float %2613, %2615
  br label %2618

; <label>:2618                                    ; preds = %2593, %2520
  %2619 = phi float [ %2616, %2593 ], [ %2588, %2520 ]
  %2620 = phi float [ %2617, %2593 ], [ %2589, %2520 ]
  %2621 = and i32 %2514, 256
  %2622 = icmp eq i32 %2621, 0
  br i1 %2622, label %2669, label %2623

; <label>:2623                                    ; preds = %2618
  %2624 = add i32 %36, 436
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = add i32 %2626, 0
  %2628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2628, %dx.types.Handle %86, float %2619, float %2620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2630 = extractvalue %dx.types.ResRet.f32 %2629, 0
  %2631 = add i32 %36, 148
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = shl i32 %2633, 4
  %2635 = and i32 %2634, 32752
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = lshr i32 %2633, 7
  %2638 = and i32 %2637, 32752
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = fsub fast float 1.000000e+00, %470
  %2641 = call float @dx.op.binary.f32(i32 35, float %2640, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2642 = bitcast float %470 to i32
  %2643 = sitofp i32 %2642 to float
  %2644 = fadd fast float %2643, 0xC1CFBF8940000000
  %2645 = fmul fast float %2639, %2644
  %2646 = fadd fast float %2645, 0x41CFBF8940000000
  %2647 = fptosi float %2646 to i32
  %2648 = bitcast i32 %2647 to float
  %2649 = bitcast float %2641 to i32
  %2650 = sitofp i32 %2649 to float
  %2651 = fadd fast float %2650, 0xC1CFBF8940000000
  %2652 = fmul fast float %2651, %2639
  %2653 = fadd fast float %2652, 0x41CFBF8940000000
  %2654 = fptosi float %2653 to i32
  %2655 = bitcast i32 %2654 to float
  %2656 = fmul fast float %2648, %2636
  %2657 = fmul fast float %2655, %2636
  %2658 = fsub fast float %2641, %2656
  %2659 = fadd fast float %2657, %2641
  %2660 = call float @dx.op.unary.f32(i32 7, float %2658)  ; Saturate(value)
  %2661 = call float @dx.op.unary.f32(i32 7, float %2659)  ; Saturate(value)
  %2662 = fsub fast float %2630, %2660
  %2663 = fsub fast float %2661, %2660
  %2664 = bitcast float %2663 to i32
  %2665 = sub nsw i32 2129859010, %2664
  %2666 = bitcast i32 %2665 to float
  %2667 = fmul fast float %2666, %2662
  %2668 = call float @dx.op.unary.f32(i32 7, float %2667)  ; Saturate(value)
  br label %2669

; <label>:2669                                    ; preds = %2623, %2618
  %2670 = phi float [ %2668, %2623 ], [ %470, %2618 ]
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = and i32 %2672, 128
  %2674 = icmp eq i32 %2673, 0
  br i1 %2674, label %2691, label %2675

; <label>:2675                                    ; preds = %2669
  %2676 = add i32 %36, 420
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = add i32 %2678, 0
  %2680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2680, %dx.types.Handle %86, float %2619, float %2620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2682 = extractvalue %dx.types.ResRet.f32 %2681, 0
  %2683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2684 = extractvalue %dx.types.ResRet.i32 %2683, 0
  %2685 = and i32 %2684, 524288
  %2686 = icmp ne i32 %2685, 0
  %2687 = fcmp fast ogt float %2682, 0x3FE0101020000000
  %2688 = select i1 %2687, float 1.000000e+00, float 0.000000e+00
  %2689 = select i1 %2686, float %2688, float %2682
  %2690 = fmul fast float %2689, %2670
  br label %2691

; <label>:2691                                    ; preds = %2675, %2669
  %2692 = phi float [ %2690, %2675 ], [ %2670, %2669 ]
  %2693 = fcmp fast ult float %2692, 0x3F70101020000000
  br i1 %2693, label %3236, label %2694

; <label>:2694                                    ; preds = %2691
  %2695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2696 = extractvalue %dx.types.ResRet.i32 %2695, 0
  %2697 = and i32 %2696, 16
  %2698 = icmp eq i32 %2697, 0
  br i1 %2698, label %2897, label %2699

; <label>:2699                                    ; preds = %2694
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = add i32 %36, 372
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = add i32 %2704, 0
  %2706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2706, %dx.types.Handle %85, float %2619, float %2620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2708 = extractvalue %dx.types.ResRet.f32 %2707, 0
  %2709 = extractvalue %dx.types.ResRet.f32 %2707, 1
  %2710 = extractvalue %dx.types.ResRet.f32 %2707, 2
  %2711 = extractvalue %dx.types.ResRet.f32 %2707, 3
  %2712 = and i32 %2701, 255
  %2713 = uitofp i32 %2712 to float
  %2714 = lshr i32 %2701, 8
  %2715 = and i32 %2714, 255
  %2716 = uitofp i32 %2715 to float
  %2717 = fmul fast float %2711, %2713
  %2718 = fadd fast float %2717, %2716
  %2719 = fmul fast float %2718, 0x3F70101000000000
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = and i32 %2721, 512
  %2723 = icmp eq i32 %2722, 0
  br i1 %2723, label %2732, label %2724

; <label>:2724                                    ; preds = %2699
  %2725 = add i32 %36, 452
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = add i32 %2727, 0
  %2729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2730 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2729, %dx.types.Handle %86, float %2619, float %2620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2731 = extractvalue %dx.types.ResRet.f32 %2730, 0
  br label %2732

; <label>:2732                                    ; preds = %2724, %2699
  %2733 = phi float [ %2731, %2724 ], [ 1.000000e+00, %2699 ]
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = and i32 %2735, 33554432
  %2737 = icmp eq i32 %2736, 0
  br i1 %2737, label %2844, label %2738

; <label>:2738                                    ; preds = %2732
  %2739 = add i32 %36, 272
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = and i32 %2741, 65535
  %2743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2742)  ; LegacyF16ToF32(value)
  %2744 = lshr i32 %2741, 16
  %2745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2744)  ; LegacyF16ToF32(value)
  %2746 = add i32 %36, 276
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = and i32 %2748, 65535
  %2750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2749)  ; LegacyF16ToF32(value)
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = lshr i32 %2752, 24
  %2754 = uitofp i32 %2753 to float
  %2755 = fmul fast float %2754, 0x3F70101020000000
  %2756 = and i32 %2752, 255
  %2757 = uitofp i32 %2756 to float
  %2758 = fmul fast float %2757, 0x3F70101020000000
  %2759 = lshr i32 %2752, 8
  %2760 = and i32 %2759, 255
  %2761 = uitofp i32 %2760 to float
  %2762 = fmul fast float %2761, 0x3F70101020000000
  %2763 = lshr i32 %2752, 16
  %2764 = and i32 %2763, 255
  %2765 = uitofp i32 %2764 to float
  %2766 = fmul fast float %2765, 0x3F70101020000000
  %2767 = add i32 %36, 268
  %2768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.i32 %2768, 0
  %2770 = lshr i32 %2769, 24
  %2771 = uitofp i32 %2770 to float
  %2772 = fmul fast float %2771, 0x3F70101020000000
  %2773 = and i32 %2769, 255
  %2774 = uitofp i32 %2773 to float
  %2775 = fmul fast float %2774, 0x3F70101020000000
  %2776 = lshr i32 %2769, 8
  %2777 = and i32 %2776, 255
  %2778 = uitofp i32 %2777 to float
  %2779 = fmul fast float %2778, 0x3F70101020000000
  %2780 = lshr i32 %2769, 16
  %2781 = and i32 %2780, 255
  %2782 = uitofp i32 %2781 to float
  %2783 = fmul fast float %2782, 0x3F70101020000000
  %2784 = bitcast float %2708 to i32
  %2785 = ashr i32 %2784, 1
  %2786 = sub nsw i32 1597463174, %2785
  %2787 = bitcast i32 %2786 to float
  %2788 = fmul fast float %2708, 5.000000e-01
  %2789 = fmul fast float %2787, %2787
  %2790 = fmul fast float %2789, %2788
  %2791 = fsub fast float 1.500000e+00, %2790
  %2792 = fmul fast float %2787, %2708
  %2793 = fmul fast float %2792, %2791
  %2794 = bitcast float %2709 to i32
  %2795 = ashr i32 %2794, 1
  %2796 = sub nsw i32 1597463174, %2795
  %2797 = bitcast i32 %2796 to float
  %2798 = fmul fast float %2709, 5.000000e-01
  %2799 = fmul fast float %2797, %2797
  %2800 = fmul fast float %2799, %2798
  %2801 = fsub fast float 1.500000e+00, %2800
  %2802 = fmul fast float %2797, %2709
  %2803 = fmul fast float %2802, %2801
  %2804 = bitcast float %2710 to i32
  %2805 = ashr i32 %2804, 1
  %2806 = sub nsw i32 1597463174, %2805
  %2807 = bitcast i32 %2806 to float
  %2808 = fmul fast float %2710, 5.000000e-01
  %2809 = fmul fast float %2807, %2807
  %2810 = fmul fast float %2809, %2808
  %2811 = fsub fast float 1.500000e+00, %2810
  %2812 = fmul fast float %2807, %2710
  %2813 = fmul fast float %2812, %2811
  %2814 = fsub fast float %2793, %2775
  %2815 = fsub fast float %2803, %2779
  %2816 = fsub fast float %2813, %2783
  %2817 = fmul fast float %2814, %2743
  %2818 = fmul fast float %2815, %2745
  %2819 = fmul fast float %2816, %2750
  %2820 = fadd fast float %2817, %2758
  %2821 = fadd fast float %2818, %2762
  %2822 = fadd fast float %2819, %2766
  %2823 = call float @dx.op.unary.f32(i32 7, float %2820)  ; Saturate(value)
  %2824 = call float @dx.op.unary.f32(i32 7, float %2821)  ; Saturate(value)
  %2825 = call float @dx.op.unary.f32(i32 7, float %2822)  ; Saturate(value)
  %2826 = fmul fast float %2823, %2823
  %2827 = fmul fast float %2824, %2824
  %2828 = fmul fast float %2825, %2825
  %2829 = fsub fast float %2826, %2708
  %2830 = fsub fast float %2827, %2709
  %2831 = fsub fast float %2828, %2710
  %2832 = fmul fast float %2829, %2733
  %2833 = fmul fast float %2830, %2733
  %2834 = fmul fast float %2831, %2733
  %2835 = fadd fast float %2832, %2708
  %2836 = fadd fast float %2833, %2709
  %2837 = fadd fast float %2834, %2710
  %2838 = fadd fast float %2755, %2719
  %2839 = fsub fast float %2838, %2772
  %2840 = call float @dx.op.unary.f32(i32 7, float %2839)  ; Saturate(value)
  %2841 = fsub fast float %2840, %2719
  %2842 = fmul fast float %2841, %2733
  %2843 = fadd fast float %2842, %2719
  br label %2897

; <label>:2844                                    ; preds = %2732
  %2845 = and i32 %2735, 134217728
  %2846 = icmp eq i32 %2845, 0
  br i1 %2846, label %2881, label %2847

; <label>:2847                                    ; preds = %2844
  %2848 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %2849 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %2850 = call float @dx.op.unary.f32(i32 24, float %396)  ; Sqrt(value)
  %2851 = fadd fast float %2848, -5.000000e-01
  %2852 = fadd fast float %2849, -5.000000e-01
  %2853 = fadd fast float %2850, -5.000000e-01
  %2854 = fmul fast float %2851, %2733
  %2855 = fmul fast float %2852, %2733
  %2856 = fmul fast float %2853, %2733
  %2857 = fadd fast float %2854, 5.000000e-01
  %2858 = fadd fast float %2855, 5.000000e-01
  %2859 = fadd fast float %2856, 5.000000e-01
  %2860 = call float @dx.op.unary.f32(i32 24, float %2708)  ; Sqrt(value)
  %2861 = call float @dx.op.unary.f32(i32 24, float %2709)  ; Sqrt(value)
  %2862 = call float @dx.op.unary.f32(i32 24, float %2710)  ; Sqrt(value)
  %2863 = fmul fast float %2857, 2.000000e+00
  %2864 = fsub fast float 1.000000e+00, %2863
  %2865 = fmul fast float %2864, %2860
  %2866 = fadd fast float %2865, %2863
  %2867 = fmul fast float %2866, %2860
  %2868 = fmul fast float %2858, 2.000000e+00
  %2869 = fsub fast float 1.000000e+00, %2868
  %2870 = fmul fast float %2869, %2861
  %2871 = fadd fast float %2870, %2868
  %2872 = fmul fast float %2871, %2861
  %2873 = fmul fast float %2859, 2.000000e+00
  %2874 = fsub fast float 1.000000e+00, %2873
  %2875 = fmul fast float %2874, %2862
  %2876 = fadd fast float %2875, %2873
  %2877 = fmul fast float %2876, %2862
  %2878 = fmul fast float %2867, %2867
  %2879 = fmul fast float %2872, %2872
  %2880 = fmul fast float %2877, %2877
  br label %2897

; <label>:2881                                    ; preds = %2844
  %2882 = fmul fast float %388, %388
  %2883 = fmul fast float %392, %392
  %2884 = fmul fast float %396, %396
  %2885 = fadd fast float %2882, -1.000000e+00
  %2886 = fadd fast float %2883, -1.000000e+00
  %2887 = fadd fast float %2884, -1.000000e+00
  %2888 = fmul fast float %2733, %2885
  %2889 = fmul fast float %2733, %2886
  %2890 = fmul fast float %2733, %2887
  %2891 = fadd fast float %2888, 1.000000e+00
  %2892 = fadd fast float %2889, 1.000000e+00
  %2893 = fadd fast float %2890, 1.000000e+00
  %2894 = fmul fast float %2891, %2708
  %2895 = fmul fast float %2892, %2709
  %2896 = fmul fast float %2893, %2710
  br label %2897

; <label>:2897                                    ; preds = %2881, %2847, %2738, %2694
  %2898 = phi float [ %2843, %2738 ], [ %2719, %2847 ], [ %2719, %2881 ], [ 0x3FA23C0BE0000000, %2694 ]
  %2899 = phi float [ %2835, %2738 ], [ %2878, %2847 ], [ %2894, %2881 ], [ 1.000000e+00, %2694 ]
  %2900 = phi float [ %2836, %2738 ], [ %2879, %2847 ], [ %2895, %2881 ], [ 1.000000e+00, %2694 ]
  %2901 = phi float [ %2837, %2738 ], [ %2880, %2847 ], [ %2896, %2881 ], [ 1.000000e+00, %2694 ]
  %2902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2903 = extractvalue %dx.types.CBufRet.i32 %2902, 1
  %2904 = and i32 %2903, 1
  %2905 = icmp ne i32 %2904, 0
  %2906 = add i32 %36, 356
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = and i32 %2908, 32
  %2910 = icmp ne i32 %2909, 0
  %2911 = and i1 %2905, %2910
  %2912 = select i1 %2911, float 1.000000e+00, float %2899
  %2913 = select i1 %2911, float 0x3FD3333340000000, float %2900
  %2914 = select i1 %2911, float 0x3FD3333340000000, float %2901
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = and i32 %2916, 32
  %2918 = icmp eq i32 %2917, 0
  br i1 %2918, label %2991, label %2919

; <label>:2919                                    ; preds = %2897
  %2920 = add i32 %36, 140
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = add i32 %36, 388
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = add i32 %2925, 0
  %2927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2926, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2928 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2927, %dx.types.Handle %85, float %2619, float %2620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2929 = extractvalue %dx.types.ResRet.f32 %2928, 0
  %2930 = extractvalue %dx.types.ResRet.f32 %2928, 1
  %2931 = extractvalue %dx.types.ResRet.f32 %2928, 2
  %2932 = extractvalue %dx.types.ResRet.f32 %2928, 3
  %2933 = and i32 %2922, 255
  %2934 = uitofp i32 %2933 to float
  %2935 = lshr i32 %2922, 8
  %2936 = and i32 %2935, 255
  %2937 = uitofp i32 %2936 to float
  %2938 = lshr i32 %2922, 16
  %2939 = and i32 %2938, 255
  %2940 = uitofp i32 %2939 to float
  %2941 = fmul fast float %2940, 0x3F70101000000000
  %2942 = fmul fast float %2929, %2934
  %2943 = fadd fast float %2942, %2937
  %2944 = fmul fast float %2943, 0x3F70101000000000
  %2945 = fadd fast float %2930, -5.000000e-01
  %2946 = fadd fast float %2932, -5.000000e-01
  %2947 = fmul fast float %2945, %2941
  %2948 = fmul fast float %2946, %2941
  %2949 = fadd fast float %2947, 5.000000e-01
  %2950 = fadd fast float %2948, 5.000000e-01
  %2951 = fmul fast float %2949, 2.000000e+00
  %2952 = fadd fast float %2951, -1.000000e+00
  %2953 = fmul fast float %2950, 2.000000e+00
  %2954 = fadd fast float %2953, -1.000000e+00
  %2955 = fadd fast float %2952, %2954
  %2956 = fmul fast float %2955, 5.000000e-01
  %2957 = fsub fast float %2952, %2954
  %2958 = fmul fast float %2957, 5.000000e-01
  %2959 = call float @dx.op.unary.f32(i32 6, float %2956)  ; FAbs(value)
  %2960 = fsub fast float 1.000000e+00, %2959
  %2961 = call float @dx.op.unary.f32(i32 6, float %2958)  ; FAbs(value)
  %2962 = fsub fast float %2960, %2961
  %2963 = call float @dx.op.dot3.f32(i32 55, float %2956, float %2958, float %2962, float %2956, float %2958, float %2962)  ; Dot3(ax,ay,az,bx,by,bz)
  %2964 = call float @dx.op.unary.f32(i32 25, float %2963)  ; Rsqrt(value)
  %2965 = fmul fast float %2956, %2964
  %2966 = fmul fast float %2958, %2964
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = and i32 %2968, 67108864
  %2970 = icmp eq i32 %2969, 0
  br i1 %2970, label %2987, label %2971

; <label>:2971                                    ; preds = %2919
  %2972 = add i32 %36, 328
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = and i32 %2974, 65535
  %2976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2975)  ; LegacyF16ToF32(value)
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = and i32 %2978, 65535
  %2980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2979)  ; LegacyF16ToF32(value)
  %2981 = lshr i32 %2974, 16
  %2982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2981)  ; LegacyF16ToF32(value)
  %2983 = fsub fast float %2944, %2982
  %2984 = fmul fast float %2983, %2976
  %2985 = fadd fast float %2984, %2980
  %2986 = call float @dx.op.unary.f32(i32 7, float %2985)  ; Saturate(value)
  br label %2987

; <label>:2987                                    ; preds = %2971, %2919
  %2988 = phi float [ %2986, %2971 ], [ %2944, %2919 ]
  %2989 = call float @dx.op.dot2.f32(i32 54, float %2965, float %2966, float %2523, float %2524)  ; Dot2(ax,ay,bx,by)
  %2990 = call float @dx.op.dot2.f32(i32 54, float %2965, float %2966, float %2525, float %2526)  ; Dot2(ax,ay,bx,by)
  br label %2991

; <label>:2991                                    ; preds = %2987, %2897
  %2992 = phi float [ %2988, %2987 ], [ 0x3FD6666660000000, %2897 ]
  %2993 = phi float [ %2989, %2987 ], [ 0.000000e+00, %2897 ]
  %2994 = phi float [ %2990, %2987 ], [ 0.000000e+00, %2897 ]
  %2995 = phi float [ %2931, %2987 ], [ 1.000000e+00, %2897 ]
  %2996 = add i32 %36, 208
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = lshr i32 %2998, 22
  %3000 = shl nuw nsw i32 %2999, 5
  %3001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3000)  ; LegacyF16ToF32(value)
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = and i32 %3003, 64
  %3005 = icmp eq i32 %3004, 0
  br i1 %3005, label %3039, label %3006

; <label>:3006                                    ; preds = %2991
  %3007 = add i32 %36, 404
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = add i32 %3009, 0
  %3011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = and i32 %3013, 131072
  %3015 = icmp eq i32 %3014, 0
  %3016 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3011, %dx.types.Handle %85, float %2619, float %2620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3017 = extractvalue %dx.types.ResRet.f32 %3016, 0
  %3018 = extractvalue %dx.types.ResRet.f32 %3016, 1
  %3019 = extractvalue %dx.types.ResRet.f32 %3016, 2
  %3020 = fmul fast float %3017, %376
  %3021 = fmul fast float %3018, %379
  %3022 = fmul fast float %3019, %382
  br i1 %3015, label %3029, label %3023

; <label>:3023                                    ; preds = %3006
  %3024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3025 = extractvalue %dx.types.CBufRet.f32 %3024, 0
  %3026 = fmul fast float %3025, %3020
  %3027 = fmul fast float %3025, %3021
  %3028 = fmul fast float %3025, %3022
  br label %3029

; <label>:3029                                    ; preds = %3023, %3006
  %3030 = phi float [ %3026, %3023 ], [ %3020, %3006 ]
  %3031 = phi float [ %3027, %3023 ], [ %3021, %3006 ]
  %3032 = phi float [ %3028, %3023 ], [ %3022, %3006 ]
  %3033 = fmul fast float %3030, %3001
  %3034 = select i1 %233, float %3033, float %3030
  %3035 = call float @dx.op.dot3.f32(i32 55, float %3034, float %3031, float %3032, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3036 = select i1 %233, float 0.000000e+00, float %3030
  %3037 = select i1 %233, float %3035, float %3031
  %3038 = select i1 %233, float 0.000000e+00, float %3032
  br label %3039

; <label>:3039                                    ; preds = %3029, %2991
  %3040 = phi float [ %3036, %3029 ], [ 0.000000e+00, %2991 ]
  %3041 = phi float [ %3037, %3029 ], [ 0.000000e+00, %2991 ]
  %3042 = phi float [ %3038, %3029 ], [ 0.000000e+00, %2991 ]
  %3043 = add i32 %36, 144
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3043, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = and i32 %3045, 255
  %3047 = uitofp i32 %3046 to float
  %3048 = lshr i32 %3045, 8
  %3049 = and i32 %3048, 255
  %3050 = uitofp i32 %3049 to float
  %3051 = call float @dx.op.dot3.f32(i32 55, float %2912, float %2913, float %2914, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3052 = fmul fast float %3050, %3051
  %3053 = fadd fast float %3052, %3047
  %3054 = fmul fast float %3053, 0x3F70101020000000
  %3055 = call float @dx.op.unary.f32(i32 7, float %3054)  ; Saturate(value)
  br i1 %2511, label %3056, label %3064

; <label>:3056                                    ; preds = %3039
  %3057 = fsub fast float 1.000000e+00, %2692
  %3058 = fmul fast float %3057, %2503
  %3059 = fmul fast float %3057, %2504
  %3060 = fmul fast float %3057, %2505
  %3061 = fmul fast float %3057, %2500
  %3062 = fmul fast float %3057, %2501
  %3063 = fmul fast float %3057, %2502
  br label %3064

; <label>:3064                                    ; preds = %3056, %3039
  %3065 = phi float [ %3061, %3056 ], [ %2500, %3039 ]
  %3066 = phi float [ %3062, %3056 ], [ %2501, %3039 ]
  %3067 = phi float [ %3063, %3056 ], [ %2502, %3039 ]
  %3068 = phi float [ %3058, %3056 ], [ %2503, %3039 ]
  %3069 = phi float [ %3059, %3056 ], [ %2504, %3039 ]
  %3070 = phi float [ %3060, %3056 ], [ %2505, %3039 ]
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = and i32 %3072, 3
  %3074 = icmp eq i32 %3073, 3
  br i1 %3074, label %3153, label %3075

; <label>:3075                                    ; preds = %3064
  %3076 = and i32 %3072, 16
  %3077 = icmp ne i32 %3076, 0
  %3078 = select i1 %3077, float %2692, float 0.000000e+00
  %3079 = icmp eq i32 %3073, 0
  br i1 %3079, label %3080, label %3108

; <label>:3080                                    ; preds = %3075
  %3081 = and i32 %3072, 64
  %3082 = icmp ne i32 %3081, 0
  %3083 = select i1 %3082, float %2692, float 0.000000e+00
  %3084 = fsub fast float %2912, %3068
  %3085 = fsub fast float %2913, %3069
  %3086 = fsub fast float %2914, %3070
  %3087 = fmul fast float %3078, %3084
  %3088 = fmul fast float %3078, %3085
  %3089 = fmul fast float %3078, %3086
  %3090 = fadd fast float %3087, %3068
  %3091 = fadd fast float %3088, %3069
  %3092 = fadd fast float %3089, %3070
  %3093 = fsub fast float %2898, %2506
  %3094 = fmul fast float %3078, %3093
  %3095 = fadd fast float %3094, %2506
  %3096 = fsub fast float %3040, %3065
  %3097 = fsub fast float %3041, %3066
  %3098 = fsub fast float %3042, %3067
  %3099 = fmul fast float %3083, %3096
  %3100 = fmul fast float %3083, %3097
  %3101 = fmul fast float %3083, %3098
  %3102 = fadd fast float %3099, %3065
  %3103 = fadd fast float %3100, %3066
  %3104 = fadd fast float %3101, %3067
  %3105 = fsub fast float %3055, %2509
  %3106 = fmul fast float %3078, %3105
  %3107 = fadd fast float %3106, %2509
  br label %3153

; <label>:3108                                    ; preds = %3075
  %3109 = icmp eq i32 %3073, 1
  br i1 %3109, label %3110, label %3123

; <label>:3110                                    ; preds = %3108
  %3111 = fadd fast float %2912, -1.000000e+00
  %3112 = fadd fast float %2913, -1.000000e+00
  %3113 = fadd fast float %2914, -1.000000e+00
  %3114 = fmul fast float %3078, %3111
  %3115 = fmul fast float %3078, %3112
  %3116 = fmul fast float %3078, %3113
  %3117 = fadd fast float %3114, 1.000000e+00
  %3118 = fadd fast float %3115, 1.000000e+00
  %3119 = fadd fast float %3116, 1.000000e+00
  %3120 = fmul fast float %3117, %3068
  %3121 = fmul fast float %3118, %3069
  %3122 = fmul fast float %3119, %3070
  br label %3153

; <label>:3123                                    ; preds = %3108
  %3124 = icmp eq i32 %3073, 2
  br i1 %3124, label %3125, label %3153

; <label>:3125                                    ; preds = %3123
  %3126 = call float @dx.op.unary.f32(i32 24, float %2912)  ; Sqrt(value)
  %3127 = call float @dx.op.unary.f32(i32 24, float %2913)  ; Sqrt(value)
  %3128 = call float @dx.op.unary.f32(i32 24, float %2914)  ; Sqrt(value)
  %3129 = fadd fast float %3126, -5.000000e-01
  %3130 = fadd fast float %3127, -5.000000e-01
  %3131 = fadd fast float %3128, -5.000000e-01
  %3132 = fmul fast float %3129, %3078
  %3133 = fmul fast float %3130, %3078
  %3134 = fmul fast float %3131, %3078
  %3135 = fadd fast float %3132, 5.000000e-01
  %3136 = fadd fast float %3133, 5.000000e-01
  %3137 = fadd fast float %3134, 5.000000e-01
  %3138 = fmul fast float %3135, 2.000000e+00
  %3139 = fsub fast float 1.000000e+00, %3138
  %3140 = fmul fast float %3139, %3068
  %3141 = fadd fast float %3140, %3138
  %3142 = fmul fast float %3141, %3068
  %3143 = fmul fast float %3136, 2.000000e+00
  %3144 = fsub fast float 1.000000e+00, %3143
  %3145 = fmul fast float %3144, %3069
  %3146 = fadd fast float %3145, %3143
  %3147 = fmul fast float %3146, %3069
  %3148 = fmul fast float %3137, 2.000000e+00
  %3149 = fsub fast float 1.000000e+00, %3148
  %3150 = fmul fast float %3149, %3070
  %3151 = fadd fast float %3150, %3148
  %3152 = fmul fast float %3151, %3070
  br label %3153

; <label>:3153                                    ; preds = %3125, %3123, %3110, %3080, %3064
  %3154 = phi float [ %3065, %3064 ], [ %3065, %3125 ], [ %3065, %3123 ], [ %3065, %3110 ], [ %3102, %3080 ]
  %3155 = phi float [ %3066, %3064 ], [ %3066, %3125 ], [ %3066, %3123 ], [ %3066, %3110 ], [ %3103, %3080 ]
  %3156 = phi float [ %3067, %3064 ], [ %3067, %3125 ], [ %3067, %3123 ], [ %3067, %3110 ], [ %3104, %3080 ]
  %3157 = phi float [ %3068, %3064 ], [ %3142, %3125 ], [ %3068, %3123 ], [ %3120, %3110 ], [ %3090, %3080 ]
  %3158 = phi float [ %3069, %3064 ], [ %3147, %3125 ], [ %3069, %3123 ], [ %3121, %3110 ], [ %3091, %3080 ]
  %3159 = phi float [ %3070, %3064 ], [ %3152, %3125 ], [ %3070, %3123 ], [ %3122, %3110 ], [ %3092, %3080 ]
  %3160 = phi float [ %2506, %3064 ], [ %2506, %3125 ], [ %2506, %3123 ], [ %2506, %3110 ], [ %3095, %3080 ]
  %3161 = phi float [ %2509, %3064 ], [ %2509, %3125 ], [ %2509, %3123 ], [ %2509, %3110 ], [ %3107, %3080 ]
  %3162 = and i32 %3072, 12
  %3163 = icmp eq i32 %3162, 12
  br i1 %3163, label %3236, label %3164

; <label>:3164                                    ; preds = %3153
  %3165 = and i32 %3072, 2097184
  %3166 = icmp eq i32 %3165, 2097184
  %3167 = select i1 %3166, float %2692, float 0.000000e+00
  %3168 = and i32 %3072, 4194336
  %3169 = icmp eq i32 %3168, 4194336
  %3170 = select i1 %3169, float %2692, float 0.000000e+00
  %3171 = and i32 %3072, 8388640
  %3172 = icmp eq i32 %3171, 8388640
  %3173 = select i1 %3172, float %2692, float 0.000000e+00
  %3174 = icmp eq i32 %3162, 0
  br i1 %3174, label %3175, label %3188

; <label>:3175                                    ; preds = %3164
  %3176 = fsub fast float %2993, %2498
  %3177 = fsub fast float %2994, %2499
  %3178 = fmul fast float %3167, %3176
  %3179 = fmul fast float %3167, %3177
  %3180 = fadd fast float %3178, %2498
  %3181 = fadd fast float %3179, %2499
  %3182 = fsub fast float %2995, %2508
  %3183 = fmul fast float %3170, %3182
  %3184 = fadd fast float %3183, %2508
  %3185 = fsub fast float %2992, %2507
  %3186 = fmul fast float %3173, %3185
  %3187 = fadd fast float %3186, %2507
  br label %3236

; <label>:3188                                    ; preds = %3164
  %3189 = icmp eq i32 %3162, 4
  br i1 %3189, label %3190, label %3222

; <label>:3190                                    ; preds = %3188
  %3191 = fmul fast float %3167, %2993
  %3192 = fmul fast float %3167, %2994
  %3193 = fadd fast float %3191, %2498
  %3194 = fadd fast float %3192, %2499
  %3195 = call float @dx.op.binary.f32(i32 36, float %2508, float %2995)  ; FMin(a,b)
  %3196 = fsub fast float %3195, %2508
  %3197 = fmul fast float %3196, %3170
  %3198 = fadd fast float %3197, %2508
  %3199 = fadd fast float %2992, %2507
  %3200 = fmul fast float %3199, 0x3FF337FAE0000000
  %3201 = fmul fast float %2507, %2507
  %3202 = fmul fast float %2992, %2992
  %3203 = fadd fast float %3202, %3201
  %3204 = fmul fast float %3203, 0x3FE5152B00000000
  %3205 = fmul fast float %2507, 0xBFCC1F85E0000000
  %3206 = fmul fast float %3205, %2992
  %3207 = fadd fast float %3206, 0xBFE1363700000000
  %3208 = fadd fast float %3207, %3200
  %3209 = fsub fast float %3208, %3204
  %3210 = fmul fast float %3199, 0x3FBA6F0D00000000
  %3211 = fmul fast float %3203, 0x3FD0432880000000
  %3212 = fmul fast float %2507, 0xBFEF110800000000
  %3213 = fmul fast float %3212, %2992
  %3214 = fadd fast float %3213, 1.000000e+00
  %3215 = fsub fast float %3214, %3210
  %3216 = fadd fast float %3215, %3211
  %3217 = fdiv fast float %3209, %3216
  %3218 = call float @dx.op.unary.f32(i32 7, float %3217)  ; Saturate(value)
  %3219 = fsub fast float %3218, %2507
  %3220 = fmul fast float %3219, %3173
  %3221 = fadd fast float %3220, %2507
  br label %3236

; <label>:3222                                    ; preds = %3188
  %3223 = icmp eq i32 %3162, 8
  br i1 %3223, label %3224, label %3236

; <label>:3224                                    ; preds = %3222
  %3225 = fmul fast float %3167, %2993
  %3226 = fmul fast float %3167, %2994
  %3227 = fadd fast float %3225, %2498
  %3228 = fadd fast float %3226, %2499
  %3229 = call float @dx.op.binary.f32(i32 36, float %2508, float %2995)  ; FMin(a,b)
  %3230 = fsub fast float %3229, %2508
  %3231 = fmul fast float %3230, %3170
  %3232 = fadd fast float %3231, %2508
  %3233 = fsub fast float %2992, %2507
  %3234 = fmul fast float %3173, %3233
  %3235 = fadd fast float %3234, %2507
  br label %3236

; <label>:3236                                    ; preds = %3224, %3222, %3190, %3175, %3153, %2691, %2510, %2497
  %3237 = phi float [ %2498, %3153 ], [ %2498, %2691 ], [ %2498, %2497 ], [ %2498, %2510 ], [ %3180, %3175 ], [ %3193, %3190 ], [ %2498, %3222 ], [ %3227, %3224 ]
  %3238 = phi float [ %2499, %3153 ], [ %2499, %2691 ], [ %2499, %2497 ], [ %2499, %2510 ], [ %3181, %3175 ], [ %3194, %3190 ], [ %2499, %3222 ], [ %3228, %3224 ]
  %3239 = phi float [ %3154, %3153 ], [ %2500, %2691 ], [ %2500, %2497 ], [ %2500, %2510 ], [ %3154, %3175 ], [ %3154, %3190 ], [ %3154, %3222 ], [ %3154, %3224 ]
  %3240 = phi float [ %3155, %3153 ], [ %2501, %2691 ], [ %2501, %2497 ], [ %2501, %2510 ], [ %3155, %3175 ], [ %3155, %3190 ], [ %3155, %3222 ], [ %3155, %3224 ]
  %3241 = phi float [ %3156, %3153 ], [ %2502, %2691 ], [ %2502, %2497 ], [ %2502, %2510 ], [ %3156, %3175 ], [ %3156, %3190 ], [ %3156, %3222 ], [ %3156, %3224 ]
  %3242 = phi float [ %3157, %3153 ], [ %2503, %2691 ], [ %2503, %2497 ], [ %2503, %2510 ], [ %3157, %3175 ], [ %3157, %3190 ], [ %3157, %3222 ], [ %3157, %3224 ]
  %3243 = phi float [ %3158, %3153 ], [ %2504, %2691 ], [ %2504, %2497 ], [ %2504, %2510 ], [ %3158, %3175 ], [ %3158, %3190 ], [ %3158, %3222 ], [ %3158, %3224 ]
  %3244 = phi float [ %3159, %3153 ], [ %2505, %2691 ], [ %2505, %2497 ], [ %2505, %2510 ], [ %3159, %3175 ], [ %3159, %3190 ], [ %3159, %3222 ], [ %3159, %3224 ]
  %3245 = phi float [ %3160, %3153 ], [ %2506, %2691 ], [ %2506, %2497 ], [ %2506, %2510 ], [ %3160, %3175 ], [ %3160, %3190 ], [ %3160, %3222 ], [ %3160, %3224 ]
  %3246 = phi float [ %2507, %3153 ], [ %2507, %2691 ], [ %2507, %2497 ], [ %2507, %2510 ], [ %3187, %3175 ], [ %3221, %3190 ], [ %2507, %3222 ], [ %3235, %3224 ]
  %3247 = phi float [ %2508, %3153 ], [ %2508, %2691 ], [ %2508, %2497 ], [ %2508, %2510 ], [ %3184, %3175 ], [ %3198, %3190 ], [ %2508, %3222 ], [ %3232, %3224 ]
  %3248 = phi float [ %3161, %3153 ], [ %2509, %2691 ], [ %2509, %2497 ], [ %2509, %2510 ], [ %3161, %3175 ], [ %3161, %3190 ], [ %3161, %3222 ], [ %3161, %3224 ]
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 0
  %3251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3252 = extractvalue %dx.types.CBufRet.f32 %3251, 0
  %3253 = fmul fast float %3252, %3239
  %3254 = fmul fast float %3252, %3240
  %3255 = fmul fast float %3252, %3241
  %3256 = call float @dx.op.dot2.f32(i32 54, float %3237, float %3238, float %3237, float %3238)  ; Dot2(ax,ay,bx,by)
  %3257 = fmul fast float %3256, 0x3FE3333340000000
  %3258 = fsub fast float 1.000000e+00, %3257
  %3259 = call float @dx.op.dot3.f32(i32 55, float %3237, float %3238, float %3258, float %3237, float %3238, float %3258)  ; Dot3(ax,ay,az,bx,by,bz)
  %3260 = call float @dx.op.unary.f32(i32 25, float %3259)  ; Rsqrt(value)
  %3261 = fmul fast float %3260, %3237
  %3262 = fmul fast float %3260, %3238
  %3263 = fmul fast float %3258, %3260
  %3264 = fmul fast float %3263, %98
  %3265 = fmul fast float %3263, %100
  %3266 = fmul fast float %3263, %102
  %3267 = fmul fast float %3261, %66
  %3268 = fmul fast float %3261, %67
  %3269 = fmul fast float %3261, %68
  %3270 = fadd fast float %3264, %3267
  %3271 = fadd fast float %3265, %3268
  %3272 = fadd fast float %3266, %3269
  %3273 = fmul fast float %112, %3262
  %3274 = fmul fast float %113, %3262
  %3275 = fmul fast float %114, %3262
  %3276 = fadd fast float %3270, %3273
  %3277 = fadd fast float %3271, %3274
  %3278 = fadd fast float %3272, %3275
  %3279 = call float @dx.op.dot3.f32(i32 55, float %3276, float %3277, float %3278, float %3276, float %3277, float %3278)  ; Dot3(ax,ay,az,bx,by,bz)
  %3280 = call float @dx.op.unary.f32(i32 25, float %3279)  ; Rsqrt(value)
  %3281 = fmul fast float %3276, %3280
  %3282 = fmul fast float %3277, %3280
  %3283 = fmul fast float %3278, %3280
  %3284 = icmp eq i32 %37, 65535
  br i1 %3284, label %3803, label %3285

; <label>:3285                                    ; preds = %3236
  %3286 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3287 = call float @dx.op.unary.f32(i32 83, float %39)  ; DerivCoarseX(value)
  %3288 = call float @dx.op.unary.f32(i32 83, float %40)  ; DerivCoarseX(value)
  %3289 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3290 = call float @dx.op.unary.f32(i32 84, float %39)  ; DerivCoarseY(value)
  %3291 = call float @dx.op.unary.f32(i32 84, float %40)  ; DerivCoarseY(value)
  %3292 = fadd fast float %3286, %38
  %3293 = fadd fast float %3287, %39
  %3294 = fadd fast float %3288, %40
  %3295 = fadd fast float %3289, %38
  %3296 = fadd fast float %3290, %39
  %3297 = fadd fast float %3291, %40
  %3298 = mul i32 %37, 48
  %3299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3298, i32 undef)  ; BufferLoad(srv,index,wot)
  %3300 = extractvalue %dx.types.ResRet.f32 %3299, 0
  %3301 = extractvalue %dx.types.ResRet.f32 %3299, 1
  %3302 = extractvalue %dx.types.ResRet.f32 %3299, 2
  %3303 = add i32 %3298, 16
  %3304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3303, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.f32 %3304, 0
  %3306 = extractvalue %dx.types.ResRet.f32 %3304, 1
  %3307 = extractvalue %dx.types.ResRet.f32 %3304, 2
  %3308 = add i32 %3298, 32
  %3309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.f32 %3309, 0
  %3311 = extractvalue %dx.types.ResRet.f32 %3309, 1
  %3312 = extractvalue %dx.types.ResRet.f32 %3309, 2
  %3313 = extractvalue %dx.types.ResRet.f32 %3309, 3
  %3314 = bitcast float %3313 to i32
  %3315 = fmul fast float %3300, %38
  %3316 = fmul fast float %3301, %39
  %3317 = fmul fast float %3302, %40
  %3318 = fsub fast float %3315, %3305
  %3319 = fsub fast float %3316, %3306
  %3320 = fsub fast float %3317, %3307
  %3321 = call float @dx.op.unary.f32(i32 7, float %3318)  ; Saturate(value)
  %3322 = call float @dx.op.unary.f32(i32 7, float %3319)  ; Saturate(value)
  %3323 = call float @dx.op.unary.f32(i32 7, float %3320)  ; Saturate(value)
  %3324 = fmul fast float %3321, %3310
  %3325 = fmul fast float %3322, %3311
  %3326 = fmul fast float %3323, %3312
  %3327 = fadd fast float %3310, -1.000000e+00
  %3328 = fadd fast float %3311, -1.000000e+00
  %3329 = fadd fast float %3312, -1.000000e+00
  %3330 = call float @dx.op.unary.f32(i32 27, float %3324)  ; Round_ni(value)
  %3331 = call float @dx.op.unary.f32(i32 27, float %3325)  ; Round_ni(value)
  %3332 = call float @dx.op.unary.f32(i32 27, float %3326)  ; Round_ni(value)
  %3333 = call float @dx.op.binary.f32(i32 36, float %3330, float %3327)  ; FMin(a,b)
  %3334 = call float @dx.op.binary.f32(i32 36, float %3331, float %3328)  ; FMin(a,b)
  %3335 = call float @dx.op.binary.f32(i32 36, float %3332, float %3329)  ; FMin(a,b)
  %3336 = fmul fast float %3335, %3311
  %3337 = fadd fast float %3336, %3334
  %3338 = fmul fast float %3337, %3310
  %3339 = fadd fast float %3338, %3333
  %3340 = fptosi float %3339 to i32
  %3341 = add nsw i32 %3340, %3314
  %3342 = shl nsw i32 %3341, 2
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3342, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = lshr i32 %3344, 16
  %3346 = icmp eq i32 %3345, 0
  br i1 %3346, label %3771, label %3347

; <label>:3347                                    ; preds = %3285
  br label %3348

; <label>:3348                                    ; preds = %3470, %3347
  %3349 = phi i32 [ %3372, %3470 ], [ %3345, %3347 ]
  %3350 = phi float [ %3471, %3470 ], [ 0.000000e+00, %3347 ]
  %3351 = phi float [ %3472, %3470 ], [ %1028, %3347 ]
  %3352 = phi float [ %3473, %3470 ], [ %3250, %3347 ]
  %3353 = phi float [ %3474, %3470 ], [ %3248, %3347 ]
  %3354 = phi float [ %3475, %3470 ], [ 0.000000e+00, %3347 ]
  %3355 = phi float [ %3476, %3470 ], [ 0.000000e+00, %3347 ]
  %3356 = phi float [ %3477, %3470 ], [ %3253, %3347 ]
  %3357 = phi float [ %3478, %3470 ], [ %3254, %3347 ]
  %3358 = phi float [ %3479, %3470 ], [ %3255, %3347 ]
  %3359 = phi float [ %3480, %3470 ], [ %3281, %3347 ]
  %3360 = phi float [ %3481, %3470 ], [ %3282, %3347 ]
  %3361 = phi float [ %3482, %3470 ], [ %3283, %3347 ]
  %3362 = phi float [ %3483, %3470 ], [ %3247, %3347 ]
  %3363 = phi float [ %3484, %3470 ], [ %3246, %3347 ]
  %3364 = phi float [ %3485, %3470 ], [ 0.000000e+00, %3347 ]
  %3365 = phi float [ %3486, %3470 ], [ %3245, %3347 ]
  %3366 = phi float [ %3487, %3470 ], [ %3242, %3347 ]
  %3367 = phi float [ %3488, %3470 ], [ %3243, %3347 ]
  %3368 = phi float [ %3489, %3470 ], [ %3244, %3347 ]
  %3369 = shl nuw nsw i32 %3349, 2
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = lshr i32 %3371, 16
  %3373 = shl i32 %3371, 8
  %3374 = and i32 %3373, 16776960
  %3375 = or i32 %3374, 48
  %3376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.f32 %3376, 0
  %3378 = extractvalue %dx.types.ResRet.f32 %3376, 1
  %3379 = extractvalue %dx.types.ResRet.f32 %3376, 2
  %3380 = or i32 %3374, 64
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = extractvalue %dx.types.ResRet.i32 %3381, 1
  %3384 = or i32 %3374, 80
  %3385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3384, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.f32 %3385, 2
  %3387 = extractvalue %dx.types.ResRet.f32 %3385, 3
  %3388 = or i32 %3374, 96
  %3389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = extractvalue %dx.types.ResRet.f32 %3389, 1
  %3392 = extractvalue %dx.types.ResRet.f32 %3389, 2
  %3393 = extractvalue %dx.types.ResRet.f32 %3389, 3
  %3394 = or i32 %3374, 112
  %3395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.f32 %3395, 2
  %3397 = or i32 %3374, 128
  %3398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.f32 %3398, 0
  %3400 = extractvalue %dx.types.ResRet.f32 %3398, 1
  %3401 = extractvalue %dx.types.ResRet.f32 %3398, 2
  %3402 = extractvalue %dx.types.ResRet.f32 %3398, 3
  %3403 = or i32 %3374, 144
  %3404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.f32 %3404, 0
  %3406 = extractvalue %dx.types.ResRet.f32 %3404, 1
  %3407 = extractvalue %dx.types.ResRet.f32 %3404, 2
  %3408 = extractvalue %dx.types.ResRet.f32 %3404, 3
  %3409 = or i32 %3374, 160
  %3410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.f32 %3410, 0
  %3412 = extractvalue %dx.types.ResRet.f32 %3410, 1
  %3413 = extractvalue %dx.types.ResRet.f32 %3410, 2
  %3414 = extractvalue %dx.types.ResRet.f32 %3410, 3
  %3415 = or i32 %3374, 192
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = or i32 %3374, 208
  %3419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.f32 %3419, 0
  %3421 = or i32 %3374, 248
  %3422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3421, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.f32 %3422, 0
  %3424 = extractvalue %dx.types.ResRet.f32 %3422, 1
  %3425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.f32 %3425, 0
  %3427 = extractvalue %dx.types.ResRet.f32 %3425, 1
  %3428 = extractvalue %dx.types.ResRet.f32 %3425, 2
  %3429 = extractvalue %dx.types.ResRet.f32 %3425, 3
  %3430 = call float @dx.op.dot4.f32(i32 56, float %3426, float %3427, float %3428, float %3429, float %38, float %39, float %40, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3431 = or i32 %3374, 16
  %3432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.f32 %3432, 0
  %3434 = extractvalue %dx.types.ResRet.f32 %3432, 1
  %3435 = extractvalue %dx.types.ResRet.f32 %3432, 2
  %3436 = extractvalue %dx.types.ResRet.f32 %3432, 3
  %3437 = call float @dx.op.dot4.f32(i32 56, float %3433, float %3434, float %3435, float %3436, float %38, float %39, float %40, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3438 = or i32 %3374, 32
  %3439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3438, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.f32 %3439, 0
  %3441 = extractvalue %dx.types.ResRet.f32 %3439, 1
  %3442 = extractvalue %dx.types.ResRet.f32 %3439, 2
  %3443 = extractvalue %dx.types.ResRet.f32 %3439, 3
  %3444 = call float @dx.op.dot4.f32(i32 56, float %3440, float %3441, float %3442, float %3443, float %38, float %39, float %40, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3445 = call float @dx.op.unary.f32(i32 27, float %3430)  ; Round_ni(value)
  %3446 = call float @dx.op.unary.f32(i32 6, float %3445)  ; FAbs(value)
  %3447 = call float @dx.op.unary.f32(i32 27, float %3437)  ; Round_ni(value)
  %3448 = call float @dx.op.unary.f32(i32 6, float %3447)  ; FAbs(value)
  %3449 = call float @dx.op.unary.f32(i32 6, float %3444)  ; FAbs(value)
  %3450 = call float @dx.op.unary.f32(i32 27, float %3449)  ; Round_ni(value)
  %3451 = fadd fast float %3448, %3446
  %3452 = fadd fast float %3451, %3450
  %3453 = fcmp fast oeq float %3452, 0.000000e+00
  %3454 = call float @dx.op.dot4.f32(i32 56, float %3426, float %3427, float %3428, float %3429, float %3292, float %3293, float %3294, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3455 = call float @dx.op.dot4.f32(i32 56, float %3433, float %3434, float %3435, float %3436, float %3292, float %3293, float %3294, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3456 = call float @dx.op.dot4.f32(i32 56, float %3426, float %3427, float %3428, float %3429, float %3295, float %3296, float %3297, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3457 = call float @dx.op.dot4.f32(i32 56, float %3433, float %3434, float %3435, float %3436, float %3295, float %3296, float %3297, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3458 = fsub fast float %3454, %3430
  %3459 = fsub fast float %3456, %3430
  %3460 = fsub fast float %3455, %3437
  %3461 = fsub fast float %3457, %3437
  %3462 = call float @dx.op.dot3.f32(i32 55, float %3377, float %3378, float %3379, float %98, float %100, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %3463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3464 = extractvalue %dx.types.CBufRet.f32 %3463, 2
  %3465 = fadd fast float %3464, %3462
  %3466 = call float @dx.op.unary.f32(i32 7, float %3465)  ; Saturate(value)
  %3467 = extractvalue %dx.types.CBufRet.f32 %3463, 0
  %3468 = fcmp fast ogt float %3466, %3467
  %3469 = and i1 %3453, %3468
  br i1 %3469, label %3491, label %3470

; <label>:3470                                    ; preds = %3757, %3574, %3491, %3348
  %3471 = phi float [ %3350, %3491 ], [ %3577, %3574 ], [ %3577, %3757 ], [ %3350, %3348 ]
  %3472 = phi float [ %3351, %3491 ], [ %3351, %3574 ], [ %3732, %3757 ], [ %3351, %3348 ]
  %3473 = phi float [ %3352, %3491 ], [ %3352, %3574 ], [ %3731, %3757 ], [ %3352, %3348 ]
  %3474 = phi float [ %3353, %3491 ], [ %3353, %3574 ], [ %3729, %3757 ], [ %3353, %3348 ]
  %3475 = phi float [ %3354, %3491 ], [ %3354, %3574 ], [ %3701, %3757 ], [ %3354, %3348 ]
  %3476 = phi float [ %3355, %3491 ], [ %3355, %3574 ], [ %3699, %3757 ], [ %3355, %3348 ]
  %3477 = phi float [ %3356, %3491 ], [ %3356, %3574 ], [ %3767, %3757 ], [ %3356, %3348 ]
  %3478 = phi float [ %3357, %3491 ], [ %3357, %3574 ], [ %3768, %3757 ], [ %3357, %3348 ]
  %3479 = phi float [ %3358, %3491 ], [ %3358, %3574 ], [ %3769, %3757 ], [ %3358, %3348 ]
  %3480 = phi float [ %3359, %3491 ], [ %3359, %3574 ], [ %3680, %3757 ], [ %3359, %3348 ]
  %3481 = phi float [ %3360, %3491 ], [ %3360, %3574 ], [ %3681, %3757 ], [ %3360, %3348 ]
  %3482 = phi float [ %3361, %3491 ], [ %3361, %3574 ], [ %3682, %3757 ], [ %3361, %3348 ]
  %3483 = phi float [ %3362, %3491 ], [ %3362, %3574 ], [ %3709, %3757 ], [ %3362, %3348 ]
  %3484 = phi float [ %3363, %3491 ], [ %3363, %3574 ], [ %3706, %3757 ], [ %3363, %3348 ]
  %3485 = phi float [ %3364, %3491 ], [ %3364, %3574 ], [ %3703, %3757 ], [ %3364, %3348 ]
  %3486 = phi float [ %3365, %3491 ], [ %3365, %3574 ], [ %3697, %3757 ], [ %3365, %3348 ]
  %3487 = phi float [ %3366, %3491 ], [ %3366, %3574 ], [ %3692, %3757 ], [ %3366, %3348 ]
  %3488 = phi float [ %3367, %3491 ], [ %3367, %3574 ], [ %3693, %3757 ], [ %3367, %3348 ]
  %3489 = phi float [ %3368, %3491 ], [ %3368, %3574 ], [ %3694, %3757 ], [ %3368, %3348 ]
  %3490 = icmp eq i32 %3372, 0
  br i1 %3490, label %3770, label %3348

; <label>:3491                                    ; preds = %3348
  %3492 = extractvalue %dx.types.ResRet.f32 %3376, 3
  %3493 = extractvalue %dx.types.ResRet.f32 %3395, 3
  %3494 = extractvalue %dx.types.ResRet.f32 %3395, 1
  %3495 = extractvalue %dx.types.ResRet.f32 %3395, 0
  %3496 = extractvalue %dx.types.ResRet.f32 %3385, 1
  %3497 = extractvalue %dx.types.ResRet.f32 %3385, 0
  %3498 = extractvalue %dx.types.ResRet.i32 %3381, 3
  %3499 = extractvalue %dx.types.ResRet.i32 %3381, 2
  %3500 = bitcast float %3492 to i32
  %3501 = add i32 %3498, 0
  %3502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3501, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3504 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3502, %dx.types.Handle %3503, float %3430, float %3437, float undef, float undef, i32 0, i32 0, i32 undef, float %3458, float %3460, float undef, float %3459, float %3461, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3505 = extractvalue %dx.types.ResRet.f32 %3504, 0
  %3506 = fmul fast float %3505, %3497
  %3507 = fadd fast float %3506, %3496
  %3508 = call float @dx.op.unary.f32(i32 7, float %3507)  ; Saturate(value)
  %3509 = fmul fast float %3430, %3390
  %3510 = call float @dx.op.tertiary.f32(i32 46, float %3391, float %3437, float %3509)  ; FMad(a,b,c)
  %3511 = fadd fast float %3510, %3495
  %3512 = fmul fast float %3430, %3392
  %3513 = call float @dx.op.tertiary.f32(i32 46, float %3393, float %3437, float %3512)  ; FMad(a,b,c)
  %3514 = fadd fast float %3513, %3494
  %3515 = fmul fast float %3458, %3390
  %3516 = call float @dx.op.tertiary.f32(i32 46, float %3391, float %3460, float %3515)  ; FMad(a,b,c)
  %3517 = fmul fast float %3458, %3392
  %3518 = call float @dx.op.tertiary.f32(i32 46, float %3393, float %3460, float %3517)  ; FMad(a,b,c)
  %3519 = fmul fast float %3459, %3390
  %3520 = call float @dx.op.tertiary.f32(i32 46, float %3391, float %3461, float %3519)  ; FMad(a,b,c)
  %3521 = fmul fast float %3459, %3392
  %3522 = call float @dx.op.tertiary.f32(i32 46, float %3393, float %3461, float %3521)  ; FMad(a,b,c)
  %3523 = add i32 %3499, 0
  %3524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3523, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3525 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3524, %dx.types.Handle %3503, float %3511, float %3514, float undef, float undef, i32 0, i32 0, i32 undef, float %3516, float %3518, float undef, float %3520, float %3522, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3526 = extractvalue %dx.types.ResRet.f32 %3525, 0
  %3527 = and i32 %3500, 1024
  %3528 = icmp ne i32 %3527, 0
  %3529 = fcmp fast ogt float %3526, 0x3FE0101020000000
  %3530 = uitofp i1 %3529 to float
  %3531 = select i1 %3528, float %3530, float %3526
  %3532 = and i32 %3500, 8192
  %3533 = icmp ne i32 %3532, 0
  %3534 = select i1 %3533, float %3493, float 1.000000e+00
  %3535 = fmul fast float %3430, 2.000000e+00
  %3536 = fadd fast float %3535, -1.000000e+00
  %3537 = call float @dx.op.unary.f32(i32 6, float %3536)  ; FAbs(value)
  %3538 = fmul fast float %3537, %3423
  %3539 = fsub fast float %3538, %3423
  %3540 = call float @dx.op.unary.f32(i32 7, float %3539)  ; Saturate(value)
  %3541 = fmul fast float %3437, 2.000000e+00
  %3542 = fadd fast float %3541, -1.000000e+00
  %3543 = call float @dx.op.unary.f32(i32 6, float %3542)  ; FAbs(value)
  %3544 = fmul fast float %3543, %3424
  %3545 = fsub fast float %3544, %3424
  %3546 = call float @dx.op.unary.f32(i32 7, float %3545)  ; Saturate(value)
  %3547 = fmul fast float %3449, %3386
  %3548 = fsub fast float %3547, %3386
  %3549 = call float @dx.op.unary.f32(i32 7, float %3548)  ; Saturate(value)
  %3550 = fmul fast float %3508, %3534
  %3551 = fmul fast float %3550, %3505
  %3552 = fmul fast float %3551, %3540
  %3553 = fmul fast float %3552, %3531
  %3554 = fmul fast float %3553, %3546
  %3555 = fmul fast float %3554, %3549
  %3556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3556, 1
  %3558 = extractvalue %dx.types.CBufRet.f32 %3556, 0
  %3559 = fsub fast float %3466, %3558
  %3560 = fmul fast float %3559, %3557
  %3561 = call float @dx.op.unary.f32(i32 7, float %3560)  ; Saturate(value)
  %3562 = fmul fast float %3555, %3387
  %3563 = fadd fast float %3555, %3387
  %3564 = fmul fast float %3563, %3396
  %3565 = fsub fast float %3564, %3396
  %3566 = call float @dx.op.unary.f32(i32 7, float %3565)  ; Saturate(value)
  %3567 = and i32 %3500, 128
  %3568 = icmp ne i32 %3567, 0
  %3569 = select i1 %3568, float %3566, float %3562
  %3570 = fmul fast float %3569, %3561
  %3571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3572 = extractvalue %dx.types.CBufRet.f32 %3571, 0
  %3573 = fcmp fast ugt float %3570, %3572
  br i1 %3573, label %3574, label %3470

; <label>:3574                                    ; preds = %3491
  %3575 = select i1 %3533, float %3570, float 0.000000e+00
  %3576 = fadd fast float %3575, %3350
  %3577 = call float @dx.op.unary.f32(i32 7, float %3576)  ; Saturate(value)
  br i1 %3533, label %3470, label %3578

; <label>:3578                                    ; preds = %3574
  %3579 = and i32 %3500, 4
  %3580 = and i32 %3500, 8
  %3581 = add i32 %3382, 0
  %3582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3581, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3584 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3582, %dx.types.Handle %3583, float %3511, float %3514, float undef, float undef, i32 0, i32 0, i32 undef, float %3516, float %3518, float undef, float %3520, float %3522, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3586 = extractvalue %dx.types.ResRet.f32 %3584, 1
  %3587 = extractvalue %dx.types.ResRet.f32 %3584, 2
  %3588 = extractvalue %dx.types.ResRet.f32 %3584, 3
  %3589 = bitcast float %3408 to i32
  %3590 = and i32 %3589, 255
  %3591 = uitofp i32 %3590 to float
  %3592 = lshr i32 %3589, 8
  %3593 = and i32 %3592, 255
  %3594 = uitofp i32 %3593 to float
  %3595 = fmul fast float %3588, %3591
  %3596 = fadd fast float %3595, %3594
  %3597 = fmul fast float %3596, 0x3F70101000000000
  %3598 = add i32 %3383, 0
  %3599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3598, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3600 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3599, %dx.types.Handle %3583, float %3511, float %3514, float undef, float undef, i32 0, i32 0, i32 undef, float %3516, float %3518, float undef, float %3520, float %3522, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3602 = extractvalue %dx.types.ResRet.f32 %3600, 1
  %3603 = extractvalue %dx.types.ResRet.f32 %3600, 2
  %3604 = extractvalue %dx.types.ResRet.f32 %3600, 3
  %3605 = bitcast float %3402 to i32
  %3606 = and i32 %3605, 255
  %3607 = uitofp i32 %3606 to float
  %3608 = lshr i32 %3605, 8
  %3609 = and i32 %3608, 255
  %3610 = uitofp i32 %3609 to float
  %3611 = lshr i32 %3605, 16
  %3612 = and i32 %3611, 255
  %3613 = uitofp i32 %3612 to float
  %3614 = fmul fast float %3613, 0x3F70101000000000
  %3615 = fmul fast float %3601, %3607
  %3616 = fadd fast float %3615, %3610
  %3617 = fmul fast float %3616, 0x3F70101000000000
  %3618 = fadd fast float %3602, -5.000000e-01
  %3619 = fadd fast float %3604, -5.000000e-01
  %3620 = fmul fast float %3618, %3614
  %3621 = fmul fast float %3619, %3614
  %3622 = fadd fast float %3620, 5.000000e-01
  %3623 = fadd fast float %3621, 5.000000e-01
  %3624 = fmul fast float %3585, %3411
  %3625 = fmul fast float %3586, %3412
  %3626 = fmul fast float %3587, %3413
  %3627 = fmul fast float %3622, 2.000000e+00
  %3628 = fadd fast float %3627, -1.000000e+00
  %3629 = fmul fast float %3623, 2.000000e+00
  %3630 = fadd fast float %3629, -1.000000e+00
  %3631 = fadd fast float %3628, %3630
  %3632 = fmul fast float %3631, 5.000000e-01
  %3633 = fsub fast float %3628, %3630
  %3634 = fmul fast float %3633, 5.000000e-01
  %3635 = call float @dx.op.unary.f32(i32 6, float %3632)  ; FAbs(value)
  %3636 = fsub fast float 1.000000e+00, %3635
  %3637 = call float @dx.op.unary.f32(i32 6, float %3634)  ; FAbs(value)
  %3638 = fsub fast float %3636, %3637
  %3639 = call float @dx.op.dot3.f32(i32 55, float %3632, float %3634, float %3638, float %3632, float %3634, float %3638)  ; Dot3(ax,ay,az,bx,by,bz)
  %3640 = call float @dx.op.unary.f32(i32 25, float %3639)  ; Rsqrt(value)
  %3641 = fmul fast float %3632, %3640
  %3642 = fmul fast float %3634, %3640
  %3643 = fmul fast float %3640, %3638
  %3644 = fmul fast float %3643, %3377
  %3645 = fmul fast float %3643, %3378
  %3646 = fmul fast float %3643, %3379
  %3647 = fmul fast float %3641, %3399
  %3648 = fmul fast float %3641, %3400
  %3649 = fmul fast float %3641, %3401
  %3650 = fadd fast float %3647, %3644
  %3651 = fadd fast float %3648, %3645
  %3652 = fadd fast float %3649, %3646
  %3653 = fmul fast float %3642, %3405
  %3654 = fmul fast float %3642, %3406
  %3655 = fmul fast float %3642, %3407
  %3656 = fadd fast float %3650, %3653
  %3657 = fadd fast float %3651, %3654
  %3658 = fadd fast float %3652, %3655
  %3659 = call float @dx.op.dot3.f32(i32 55, float %3656, float %3657, float %3658, float %3656, float %3657, float %3658)  ; Dot3(ax,ay,az,bx,by,bz)
  %3660 = call float @dx.op.unary.f32(i32 25, float %3659)  ; Rsqrt(value)
  %3661 = fmul fast float %3656, %3660
  %3662 = fmul fast float %3657, %3660
  %3663 = fmul fast float %3658, %3660
  %3664 = icmp ne i32 %3580, 0
  %3665 = select i1 %3664, float 1.000000e+00, float 0.000000e+00
  %3666 = fmul fast float %3570, %3665
  %3667 = and i32 %3500, 1
  %3668 = icmp eq i32 %3667, 0
  br i1 %3668, label %3669, label %3673

; <label>:3669                                    ; preds = %3578
  %3670 = fsub fast float %3661, %3359
  %3671 = fsub fast float %3662, %3360
  %3672 = fsub fast float %3663, %3361
  br label %3673

; <label>:3673                                    ; preds = %3669, %3578
  %3674 = phi float [ %3670, %3669 ], [ %3661, %3578 ]
  %3675 = phi float [ %3671, %3669 ], [ %3662, %3578 ]
  %3676 = phi float [ %3672, %3669 ], [ %3663, %3578 ]
  %3677 = fmul float %3676, %3666
  %3678 = fmul float %3675, %3666
  %3679 = fmul float %3674, %3666
  %3680 = fadd fast float %3679, %3359
  %3681 = fadd fast float %3678, %3360
  %3682 = fadd fast float %3677, %3361
  %3683 = icmp ne i32 %3579, 0
  %3684 = select i1 %3683, float 1.000000e+00, float 0.000000e+00
  %3685 = fmul fast float %3570, %3684
  %3686 = fsub fast float %3624, %3366
  %3687 = fsub fast float %3625, %3367
  %3688 = fsub fast float %3626, %3368
  %3689 = fmul fast float %3686, %3685
  %3690 = fmul fast float %3687, %3685
  %3691 = fmul fast float %3688, %3685
  %3692 = fadd fast float %3689, %3366
  %3693 = fadd fast float %3690, %3367
  %3694 = fadd fast float %3691, %3368
  %3695 = fsub fast float %3597, %3365
  %3696 = fmul fast float %3695, %3685
  %3697 = fadd fast float %3696, %3365
  %3698 = fmul fast float %3685, %3355
  %3699 = fsub fast float %3355, %3698
  %3700 = fmul fast float %3685, %3354
  %3701 = fsub fast float %3354, %3700
  %3702 = fadd fast float %3570, %3364
  %3703 = call float @dx.op.unary.f32(i32 7, float %3702)  ; Saturate(value)
  %3704 = fsub fast float %3617, %3363
  %3705 = fmul fast float %3704, %3666
  %3706 = fadd fast float %3705, %3363
  %3707 = fsub fast float %3603, %3362
  %3708 = fmul fast float %3707, %3666
  %3709 = fadd fast float %3708, %3362
  %3710 = call float @dx.op.dot3.f32(i32 55, float %3624, float %3625, float %3626, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3712 = extractvalue %dx.types.CBufRet.f32 %3711, 0
  %3713 = extractvalue %dx.types.CBufRet.f32 %3711, 1
  %3714 = fmul fast float %3713, %3710
  %3715 = fadd fast float %3714, %3712
  %3716 = call float @dx.op.unary.f32(i32 7, float %3715)  ; Saturate(value)
  %3717 = bitcast float %3414 to i32
  %3718 = and i32 %3717, 65535
  %3719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3718)  ; LegacyF16ToF32(value)
  %3720 = lshr i32 %3717, 16
  %3721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3720)  ; LegacyF16ToF32(value)
  %3722 = fcmp fast oge float %3719, 0.000000e+00
  %3723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3724 = extractvalue %dx.types.CBufRet.f32 %3723, 0
  %3725 = select i1 %3722, float %3719, float %3724
  %3726 = fadd fast float %3725, %3721
  %3727 = fsub fast float %3716, %3353
  %3728 = fmul fast float %3727, %3570
  %3729 = fadd fast float %3728, %3353
  %3730 = fmul fast float %3726, %3570
  %3731 = call float @dx.op.binary.f32(i32 35, float %3352, float %3730)  ; FMax(a,b)
  %3732 = call float @dx.op.binary.f32(i32 35, float %3351, float %3570)  ; FMax(a,b)
  %3733 = and i32 %3500, 16
  %3734 = icmp eq i32 %3733, 0
  br i1 %3734, label %3757, label %3735

; <label>:3735                                    ; preds = %3673
  %3736 = bitcast float %3420 to i32
  %3737 = add i32 %3417, 0
  %3738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3737, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3739 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3738, %dx.types.Handle %3583, float %3511, float %3514, float undef, float undef, i32 0, i32 0, i32 undef, float %3516, float %3518, float undef, float %3520, float %3522, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3740 = extractvalue %dx.types.ResRet.f32 %3739, 0
  %3741 = extractvalue %dx.types.ResRet.f32 %3739, 1
  %3742 = extractvalue %dx.types.ResRet.f32 %3739, 2
  %3743 = and i32 %3736, 65535
  %3744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3743)  ; LegacyF16ToF32(value)
  %3745 = fmul fast float %3740, %3411
  %3746 = fmul fast float %3741, %3412
  %3747 = fmul fast float %3742, %3413
  %3748 = and i32 %3500, 16384
  %3749 = icmp ne i32 %3748, 0
  %3750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.f32 %3750, 0
  %3752 = select i1 %3749, float %3751, float 1.000000e+00
  %3753 = fmul fast float %3752, %3744
  %3754 = fmul fast float %3745, %3753
  %3755 = fmul fast float %3746, %3753
  %3756 = fmul fast float %3747, %3753
  br label %3757

; <label>:3757                                    ; preds = %3735, %3673
  %3758 = phi float [ %3754, %3735 ], [ 0.000000e+00, %3673 ]
  %3759 = phi float [ %3755, %3735 ], [ 0.000000e+00, %3673 ]
  %3760 = phi float [ %3756, %3735 ], [ 0.000000e+00, %3673 ]
  %3761 = fsub fast float %3758, %3356
  %3762 = fsub fast float %3759, %3357
  %3763 = fsub fast float %3760, %3358
  %3764 = fmul fast float %3761, %3570
  %3765 = fmul fast float %3762, %3570
  %3766 = fmul fast float %3763, %3570
  %3767 = fadd fast float %3764, %3356
  %3768 = fadd fast float %3765, %3357
  %3769 = fadd fast float %3766, %3358
  br label %3470

; <label>:3770                                    ; preds = %3470
  br label %3771

; <label>:3771                                    ; preds = %3770, %3285
  %3772 = phi float [ 0.000000e+00, %3285 ], [ %3471, %3770 ]
  %3773 = phi float [ %1028, %3285 ], [ %3472, %3770 ]
  %3774 = phi float [ %3250, %3285 ], [ %3473, %3770 ]
  %3775 = phi float [ %3248, %3285 ], [ %3474, %3770 ]
  %3776 = phi float [ 0.000000e+00, %3285 ], [ %3475, %3770 ]
  %3777 = phi float [ 0.000000e+00, %3285 ], [ %3476, %3770 ]
  %3778 = phi float [ %3253, %3285 ], [ %3477, %3770 ]
  %3779 = phi float [ %3254, %3285 ], [ %3478, %3770 ]
  %3780 = phi float [ %3255, %3285 ], [ %3479, %3770 ]
  %3781 = phi float [ %3281, %3285 ], [ %3480, %3770 ]
  %3782 = phi float [ %3282, %3285 ], [ %3481, %3770 ]
  %3783 = phi float [ %3283, %3285 ], [ %3482, %3770 ]
  %3784 = phi float [ %3247, %3285 ], [ %3483, %3770 ]
  %3785 = phi float [ %3246, %3285 ], [ %3484, %3770 ]
  %3786 = phi float [ 0.000000e+00, %3285 ], [ %3485, %3770 ]
  %3787 = phi float [ %3245, %3285 ], [ %3486, %3770 ]
  %3788 = phi float [ %3242, %3285 ], [ %3487, %3770 ]
  %3789 = phi float [ %3243, %3285 ], [ %3488, %3770 ]
  %3790 = phi float [ %3244, %3285 ], [ %3489, %3770 ]
  %3791 = call float @dx.op.dot3.f32(i32 55, float %3781, float %3782, float %3783, float %3781, float %3782, float %3783)  ; Dot3(ax,ay,az,bx,by,bz)
  %3792 = call float @dx.op.unary.f32(i32 25, float %3791)  ; Rsqrt(value)
  %3793 = fmul fast float %3792, %3781
  %3794 = fmul fast float %3792, %3782
  %3795 = fmul fast float %3792, %3783
  %3796 = fadd fast float %3786, %1028
  %3797 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3798 = call float @dx.op.dot3.f32(i32 55, float %3793, float %3794, float %3795, float %3793, float %3794, float %3795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3799 = call float @dx.op.unary.f32(i32 25, float %3798)  ; Rsqrt(value)
  %3800 = fmul fast float %3799, %3793
  %3801 = fmul fast float %3799, %3794
  %3802 = fmul fast float %3799, %3795
  br label %3803

; <label>:3803                                    ; preds = %3771, %3236
  %3804 = phi float [ %3800, %3771 ], [ %3281, %3236 ]
  %3805 = phi float [ %3801, %3771 ], [ %3282, %3236 ]
  %3806 = phi float [ %3802, %3771 ], [ %3283, %3236 ]
  %3807 = phi float [ %3788, %3771 ], [ %3242, %3236 ]
  %3808 = phi float [ %3789, %3771 ], [ %3243, %3236 ]
  %3809 = phi float [ %3790, %3771 ], [ %3244, %3236 ]
  %3810 = phi float [ %3778, %3771 ], [ %3253, %3236 ]
  %3811 = phi float [ %3779, %3771 ], [ %3254, %3236 ]
  %3812 = phi float [ %3780, %3771 ], [ %3255, %3236 ]
  %3813 = phi float [ %3787, %3771 ], [ %3245, %3236 ]
  %3814 = phi float [ %3797, %3771 ], [ %1028, %3236 ]
  %3815 = phi float [ %3785, %3771 ], [ %3246, %3236 ]
  %3816 = phi float [ %3784, %3771 ], [ %3247, %3236 ]
  %3817 = phi float [ %3777, %3771 ], [ 0.000000e+00, %3236 ]
  %3818 = phi float [ %3776, %3771 ], [ 0.000000e+00, %3236 ]
  %3819 = phi float [ %3772, %3771 ], [ 0.000000e+00, %3236 ]
  %3820 = phi float [ %3774, %3771 ], [ %3250, %3236 ]
  %3821 = phi float [ %3773, %3771 ], [ %1028, %3236 ]
  %3822 = phi float [ %3775, %3771 ], [ %3248, %3236 ]
  %3823 = fadd fast float %3813, 0xBFB99999A0000000
  %3824 = call float @dx.op.unary.f32(i32 7, float %3823)  ; Saturate(value)
  %3825 = fmul fast float %3824, 0x3FF1C71C80000000
  %3826 = call float @dx.op.binary.f32(i32 36, float %3813, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3827 = fsub fast float 1.000000e+00, %3825
  %3828 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3829 = fmul fast float %3828, %3807
  %3830 = fmul fast float %3828, %3808
  %3831 = fmul fast float %3828, %3809
  %3832 = call float @dx.op.unary.f32(i32 7, float %3829)  ; Saturate(value)
  %3833 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3834 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3835 = fmul fast float %3825, %3807
  %3836 = fmul fast float %3825, %3808
  %3837 = fmul fast float %3825, %3809
  %3838 = fadd fast float %3835, %3826
  %3839 = fadd fast float %3836, %3826
  %3840 = fadd fast float %3837, %3826
  %3841 = call float @dx.op.unary.f32(i32 7, float %3838)  ; Saturate(value)
  %3842 = call float @dx.op.unary.f32(i32 7, float %3839)  ; Saturate(value)
  %3843 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3844 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3846 = extractvalue %dx.types.CBufRet.i32 %3845, 3
  %3847 = and i32 %3846, 8
  %3848 = icmp ne i32 %3847, 0
  %3849 = call float @dx.op.binary.f32(i32 35, float %3832, float %3807)  ; FMax(a,b)
  %3850 = call float @dx.op.binary.f32(i32 35, float %3833, float %3807)  ; FMax(a,b)
  %3851 = call float @dx.op.binary.f32(i32 35, float %3834, float %3807)  ; FMax(a,b)
  %3852 = call float @dx.op.dot3.f32(i32 55, float %3832, float %3833, float %3834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3853 = select i1 %233, float %3807, float %3832
  %3854 = select i1 %233, float %3852, float %3833
  %3855 = select i1 %233, float 1.000000e+00, float %3834
  %3856 = select i1 %3848, float %3849, float %3853
  %3857 = select i1 %3848, float %3850, float %3854
  %3858 = select i1 %3848, float %3851, float %3855
  %3859 = and i32 %209, 3
  %3860 = select i1 %203, i32 %3859, i32 0
  %3861 = icmp eq i32 %3860, 1
  br i1 %3861, label %3862, label %3938

; <label>:3862                                    ; preds = %3803
  %3863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3864 = extractvalue %dx.types.CBufRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.CBufRet.f32 %3863, 1
  %3866 = fadd fast float %3864, %172
  %3867 = fadd fast float %3865, %173
  %3868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3869 = extractvalue %dx.types.CBufRet.f32 %3868, 0
  %3870 = extractvalue %dx.types.CBufRet.f32 %3868, 1
  %3871 = fsub fast float %3866, %3869
  %3872 = fsub fast float %3867, %3870
  %3873 = fmul fast float %3871, %3871
  %3874 = fmul fast float %3872, %3872
  %3875 = fadd fast float %3873, %3874
  %3876 = call float @dx.op.unary.f32(i32 24, float %3875)  ; Sqrt(value)
  %3877 = extractvalue %dx.types.CBufRet.f32 %3868, 2
  %3878 = fcmp fast olt float %3876, %3877
  br i1 %3878, label %3879, label %3932

; <label>:3879                                    ; preds = %3862
  %3880 = extractvalue %dx.types.CBufRet.f32 %3863, 2
  %3881 = fadd fast float %3880, %174
  %3882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3883 = extractvalue %dx.types.CBufRet.f32 %3882, 0
  %3884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3885 = extractvalue %dx.types.CBufRet.f32 %3884, 0
  %3886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.f32 %3886, 0
  %3888 = extractvalue %dx.types.CBufRet.f32 %3882, 1
  %3889 = extractvalue %dx.types.CBufRet.f32 %3884, 1
  %3890 = extractvalue %dx.types.CBufRet.f32 %3886, 1
  %3891 = extractvalue %dx.types.CBufRet.f32 %3882, 3
  %3892 = extractvalue %dx.types.CBufRet.f32 %3884, 3
  %3893 = extractvalue %dx.types.CBufRet.f32 %3886, 3
  %3894 = fadd fast float %3891, %3866
  %3895 = fadd fast float %3892, %3867
  %3896 = fadd fast float %3881, %3893
  %3897 = fmul fast float %3894, %3883
  %3898 = call float @dx.op.tertiary.f32(i32 46, float %3895, float %3885, float %3897)  ; FMad(a,b,c)
  %3899 = call float @dx.op.tertiary.f32(i32 46, float %3896, float %3887, float %3898)  ; FMad(a,b,c)
  %3900 = fmul fast float %3894, %3888
  %3901 = call float @dx.op.tertiary.f32(i32 46, float %3895, float %3889, float %3900)  ; FMad(a,b,c)
  %3902 = call float @dx.op.tertiary.f32(i32 46, float %3896, float %3890, float %3901)  ; FMad(a,b,c)
  %3903 = fsub fast float %3899, %3891
  %3904 = fsub fast float %3902, %3892
  %3905 = fsub fast float %3903, %3869
  %3906 = fadd fast float %3905, %3877
  %3907 = fsub fast float %3904, %3870
  %3908 = fadd fast float %3907, %3877
  %3909 = extractvalue %dx.types.CBufRet.f32 %3868, 3
  %3910 = fmul fast float %3906, %3909
  %3911 = fmul fast float %3908, %3909
  %3912 = call float @dx.op.unary.f32(i32 7, float %3910)  ; Saturate(value)
  %3913 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3914 = fsub fast float 1.000000e+00, %3912
  %3915 = fsub fast float 1.000000e+00, %3913
  %3916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %30, float %3914, float %3915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3917 = extractvalue %dx.types.ResRet.f32 %3916, 0
  %3918 = fcmp fast ugt float %3917, 0.000000e+00
  br i1 %3918, label %3919, label %3932

; <label>:3919                                    ; preds = %3879
  %3920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.f32 %3920, 2
  %3922 = fmul fast float %3921, %3917
  %3923 = extractvalue %dx.types.CBufRet.f32 %3920, 3
  %3924 = fadd fast float %3923, %3922
  %3925 = extractvalue %dx.types.CBufRet.f32 %3886, 2
  %3926 = fadd fast float %3924, %3893
  %3927 = fmul fast float %3899, %3887
  %3928 = call float @dx.op.tertiary.f32(i32 46, float %3902, float %3890, float %3927)  ; FMad(a,b,c)
  %3929 = call float @dx.op.tertiary.f32(i32 46, float %3926, float %3925, float %3928)  ; FMad(a,b,c)
  %3930 = fsub fast float %3929, %3893
  %3931 = fsub fast float %3930, %3880
  br label %3932

; <label>:3932                                    ; preds = %3919, %3879, %3862
  %3933 = phi i1 [ true, %3919 ], [ false, %3879 ], [ false, %3862 ]
  %3934 = phi float [ %3931, %3919 ], [ -1.310720e+05, %3879 ], [ -1.310720e+05, %3862 ]
  %3935 = fsub fast float %3934, %174
  %3936 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  %3937 = select i1 %3933, float %3936, float 1.000000e+00
  br label %3938

; <label>:3938                                    ; preds = %3932, %3803
  %3939 = phi float [ %3937, %3932 ], [ 0.000000e+00, %3803 ]
  %3940 = icmp eq i32 %3860, 3
  %3941 = select i1 %3940, float 1.000000e+00, float %3939
  %3942 = call float @dx.op.binary.f32(i32 35, float %3819, float %3941)  ; FMax(a,b)
  %3943 = fcmp fast olt float %3941, 1.000000e+00
  %3944 = fcmp uge float %51, 0.000000e+00
  %3945 = and i1 %3944, %3943
  br i1 %3945, label %3946, label %3956

; <label>:3946                                    ; preds = %3938
  %3947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %29, float %51, float %52, float %53, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.ResRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.ResRet.f32 %3947, 2
  %3951 = fadd fast float %3948, %3942
  %3952 = fcmp ule float %50, 0.000000e+00
  %3953 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3954 = select i1 %3952, float %3953, float 1.000000e+00
  %3955 = fmul fast float %3954, %3950
  br label %3956

; <label>:3956                                    ; preds = %3946, %3938
  %3957 = phi float [ %3951, %3946 ], [ %3942, %3938 ]
  %3958 = phi float [ %3949, %3946 ], [ 0.000000e+00, %3938 ]
  %3959 = phi float [ %3955, %3946 ], [ 0.000000e+00, %3938 ]
  %3960 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3961 = call float @dx.op.unary.f32(i32 7, float %3958)  ; Saturate(value)
  %3962 = call float @dx.op.unary.f32(i32 7, float %3959)  ; Saturate(value)
  %3963 = fcmp fast une float %3961, 0.000000e+00
  %3964 = fcmp fast une float %3962, 0.000000e+00
  %3965 = or i1 %3963, %3964
  br i1 %3965, label %3966, label %4525

; <label>:3966                                    ; preds = %3956
  br i1 %3963, label %3967, label %4240

; <label>:3967                                    ; preds = %3966
  %3968 = call float @dx.op.unary.f32(i32 23, float %3816)  ; Log(value)
  %3969 = fmul fast float %3968, 4.000000e+00
  %3970 = call float @dx.op.unary.f32(i32 21, float %3969)  ; Exp(value)
  %3971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.f32 %3971, 0
  %3973 = fmul fast float %3972, %38
  %3974 = fmul fast float %3972, %39
  %3975 = fmul fast float %3972, %40
  %3976 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %3977 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %3978 = call float @dx.op.unary.f32(i32 6, float %49)  ; FAbs(value)
  %3979 = call float @dx.op.unary.f32(i32 23, float %3976)  ; Log(value)
  %3980 = call float @dx.op.unary.f32(i32 23, float %3977)  ; Log(value)
  %3981 = call float @dx.op.unary.f32(i32 23, float %3978)  ; Log(value)
  %3982 = fmul fast float %3979, 4.000000e+00
  %3983 = fmul fast float %3980, 4.000000e+00
  %3984 = fmul fast float %3981, 4.000000e+00
  %3985 = call float @dx.op.unary.f32(i32 21, float %3982)  ; Exp(value)
  %3986 = call float @dx.op.unary.f32(i32 21, float %3983)  ; Exp(value)
  %3987 = call float @dx.op.unary.f32(i32 21, float %3984)  ; Exp(value)
  %3988 = fadd fast float %3986, %3985
  %3989 = fadd fast float %3988, %3987
  %3990 = fdiv fast float 1.000000e+00, %3989
  %3991 = fmul fast float %3990, %3985
  %3992 = fcmp fast ogt float %47, 0.000000e+00
  %3993 = fcmp fast ogt float %48, 0.000000e+00
  %3994 = fcmp fast ogt float %49, 0.000000e+00
  %3995 = fcmp fast olt float %47, 0.000000e+00
  %3996 = fcmp fast olt float %48, 0.000000e+00
  %3997 = fcmp fast olt float %49, 0.000000e+00
  %3998 = zext i1 %3992 to i32
  %3999 = zext i1 %3993 to i32
  %4000 = zext i1 %3994 to i32
  %4001 = zext i1 %3995 to i32
  %4002 = zext i1 %3996 to i32
  %4003 = zext i1 %3997 to i32
  %4004 = sub nsw i32 %3998, %4001
  %4005 = sub nsw i32 %3999, %4002
  %4006 = sub nsw i32 %4000, %4003
  %4007 = call float @dx.op.unary.f32(i32 83, float %3973)  ; DerivCoarseX(value)
  %4008 = call float @dx.op.unary.f32(i32 83, float %3974)  ; DerivCoarseX(value)
  %4009 = call float @dx.op.unary.f32(i32 83, float %3975)  ; DerivCoarseX(value)
  %4010 = call float @dx.op.unary.f32(i32 84, float %3973)  ; DerivCoarseY(value)
  %4011 = call float @dx.op.unary.f32(i32 84, float %3974)  ; DerivCoarseY(value)
  %4012 = call float @dx.op.unary.f32(i32 84, float %3975)  ; DerivCoarseY(value)
  %4013 = fcmp fast ole float %244, %3991
  %4014 = fmul fast float %3990, %3988
  %4015 = fcmp fast ole float %244, %4014
  %4016 = select i1 %4015, float %3975, float %3973
  %4017 = select i1 %4015, float %3973, float %3974
  %4018 = select i1 %4013, float %3974, float %4016
  %4019 = select i1 %4013, float %3975, float %4017
  %4020 = select i1 %4015, float %4009, float %4007
  %4021 = select i1 %4015, float %4007, float %4008
  %4022 = select i1 %4013, float %4008, float %4020
  %4023 = select i1 %4013, float %4009, float %4021
  %4024 = select i1 %4015, float %4012, float %4010
  %4025 = select i1 %4015, float %4010, float %4011
  %4026 = select i1 %4013, float %4011, float %4024
  %4027 = select i1 %4013, float %4012, float %4025
  %4028 = call float @dx.op.unary.f32(i32 27, float %4018)  ; Round_ni(value)
  %4029 = call float @dx.op.unary.f32(i32 27, float %4019)  ; Round_ni(value)
  %4030 = fptosi float %4028 to i32
  %4031 = fptosi float %4029 to i32
  %4032 = xor i32 %4031, %4030
  %4033 = sitofp i32 %4032 to float
  %4034 = fptosi float %4033 to i32
  %4035 = sitofp i32 %4034 to float
  %4036 = fmul fast float %4035, 0x3FE3C6EF40000000
  %4037 = frem fast float %4028, 2.560000e+02
  %4038 = frem fast float %4029, 2.560000e+02
  %4039 = fptoui float %4037 to i32
  %4040 = fptoui float %4038 to i32
  %4041 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4039, i32 %4040, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %4041, 1
  %4044 = extractvalue %dx.types.ResRet.f32 %4041, 2
  %4045 = fadd fast float %4042, %4036
  %4046 = fadd fast float %4043, %4036
  %4047 = fadd fast float %4044, %4036
  %4048 = call float @dx.op.unary.f32(i32 22, float %4045)  ; Frc(value)
  %4049 = call float @dx.op.unary.f32(i32 22, float %4046)  ; Frc(value)
  %4050 = call float @dx.op.unary.f32(i32 22, float %4047)  ; Frc(value)
  %4051 = fmul fast float %4050, 0x401921FB60000000
  %4052 = call float @dx.op.unary.f32(i32 13, float %4051)  ; Sin(value)
  %4053 = call float @dx.op.unary.f32(i32 12, float %4051)  ; Cos(value)
  %4054 = fsub fast float -0.000000e+00, %4053
  %4055 = fmul fast float %4053, %4018
  %4056 = call float @dx.op.tertiary.f32(i32 46, float %4052, float %4019, float %4055)  ; FMad(a,b,c)
  %4057 = fmul fast float %4052, %4018
  %4058 = call float @dx.op.tertiary.f32(i32 46, float %4054, float %4019, float %4057)  ; FMad(a,b,c)
  %4059 = fadd fast float %4056, %4048
  %4060 = fadd fast float %4058, %4049
  %4061 = extractvalue %dx.types.CBufRet.f32 %3971, 3
  %4062 = bitcast float %4061 to i32
  %4063 = icmp eq i32 %4062, 0
  br i1 %4063, label %4102, label %4064

; <label>:4064                                    ; preds = %3967
  %4065 = add i32 %4062, 0
  %4066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4065, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4067 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4066, %dx.types.Handle %86, float %4059, float %4060, float undef, float undef, i32 0, i32 0, i32 undef, float %4022, float %4023, float undef, float %4026, float %4027, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4068 = extractvalue %dx.types.ResRet.f32 %4067, 0
  %4069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4070 = extractvalue %dx.types.CBufRet.f32 %4069, 1
  %4071 = extractvalue %dx.types.CBufRet.f32 %4069, 2
  %4072 = fsub fast float 1.000000e+00, %3961
  %4073 = call float @dx.op.binary.f32(i32 35, float %4072, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4074 = bitcast float %3961 to i32
  %4075 = sitofp i32 %4074 to float
  %4076 = fadd fast float %4075, 0xC1CFBF8940000000
  %4077 = fmul fast float %4071, %4076
  %4078 = fadd fast float %4077, 0x41CFBF8940000000
  %4079 = fptosi float %4078 to i32
  %4080 = bitcast i32 %4079 to float
  %4081 = bitcast float %4073 to i32
  %4082 = sitofp i32 %4081 to float
  %4083 = fadd fast float %4082, 0xC1CFBF8940000000
  %4084 = fmul fast float %4083, %4071
  %4085 = fadd fast float %4084, 0x41CFBF8940000000
  %4086 = fptosi float %4085 to i32
  %4087 = bitcast i32 %4086 to float
  %4088 = fmul fast float %4080, %4070
  %4089 = fmul fast float %4087, %4070
  %4090 = fsub fast float %4073, %4088
  %4091 = fadd fast float %4089, %4073
  %4092 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4093 = call float @dx.op.unary.f32(i32 7, float %4091)  ; Saturate(value)
  %4094 = fsub fast float %4068, %4092
  %4095 = fsub fast float %4093, %4092
  %4096 = bitcast float %4095 to i32
  %4097 = sub nsw i32 2129859010, %4096
  %4098 = bitcast i32 %4097 to float
  %4099 = fmul fast float %4098, %4094
  %4100 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4101 = fcmp fast olt float %4100, 0x3F70101020000000
  br i1 %4101, label %4240, label %4102

; <label>:4102                                    ; preds = %4064, %3967
  %4103 = phi float [ %4100, %4064 ], [ %3961, %3967 ]
  %4104 = fmul fast float %4103, %3970
  %4105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4106 = extractvalue %dx.types.CBufRet.i32 %4105, 1
  %4107 = extractvalue %dx.types.CBufRet.i32 %4105, 0
  %4108 = add i32 %4107, 0
  %4109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4110 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4109, %dx.types.Handle %85, float %4059, float %4060, float undef, float undef, i32 0, i32 0, i32 undef, float %4022, float %4023, float undef, float %4026, float %4027, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4111 = extractvalue %dx.types.ResRet.f32 %4110, 0
  %4112 = extractvalue %dx.types.ResRet.f32 %4110, 1
  %4113 = extractvalue %dx.types.ResRet.f32 %4110, 2
  %4114 = extractvalue %dx.types.ResRet.f32 %4110, 3
  %4115 = and i32 %4106, 255
  %4116 = uitofp i32 %4115 to float
  %4117 = lshr i32 %4106, 8
  %4118 = and i32 %4117, 255
  %4119 = uitofp i32 %4118 to float
  %4120 = fmul fast float %4114, %4116
  %4121 = fadd fast float %4120, %4119
  %4122 = fmul fast float %4121, 0x3F70101000000000
  %4123 = fadd fast float %4122, 0xBFB99999A0000000
  %4124 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4125 = fmul fast float %4124, 0x3FF1C71C80000000
  %4126 = call float @dx.op.binary.f32(i32 36, float %4122, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4127 = fsub fast float 1.000000e+00, %4125
  %4128 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  %4129 = fmul fast float %4128, %4111
  %4130 = fmul fast float %4128, %4112
  %4131 = fmul fast float %4128, %4113
  %4132 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4133 = call float @dx.op.unary.f32(i32 7, float %4130)  ; Saturate(value)
  %4134 = call float @dx.op.unary.f32(i32 7, float %4131)  ; Saturate(value)
  %4135 = fmul fast float %4125, %4111
  %4136 = fmul fast float %4125, %4112
  %4137 = fmul fast float %4125, %4113
  %4138 = fadd fast float %4135, %4126
  %4139 = fadd fast float %4136, %4126
  %4140 = fadd fast float %4137, %4126
  %4141 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  %4142 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  %4143 = call float @dx.op.unary.f32(i32 7, float %4140)  ; Saturate(value)
  %4144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.i32 %4144, 3
  %4146 = extractvalue %dx.types.CBufRet.i32 %4144, 2
  %4147 = add i32 %4146, 0
  %4148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4149 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4148, %dx.types.Handle %85, float %4059, float %4060, float undef, float undef, i32 0, i32 0, i32 undef, float %4022, float %4023, float undef, float %4026, float %4027, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4150 = extractvalue %dx.types.ResRet.f32 %4149, 0
  %4151 = extractvalue %dx.types.ResRet.f32 %4149, 1
  %4152 = extractvalue %dx.types.ResRet.f32 %4149, 2
  %4153 = extractvalue %dx.types.ResRet.f32 %4149, 3
  %4154 = and i32 %4145, 255
  %4155 = uitofp i32 %4154 to float
  %4156 = lshr i32 %4145, 8
  %4157 = and i32 %4156, 255
  %4158 = uitofp i32 %4157 to float
  %4159 = lshr i32 %4145, 16
  %4160 = and i32 %4159, 255
  %4161 = uitofp i32 %4160 to float
  %4162 = fmul fast float %4161, 0x3F70101000000000
  %4163 = fmul fast float %4150, %4155
  %4164 = fadd fast float %4163, %4158
  %4165 = fmul fast float %4164, 0x3F70101000000000
  %4166 = fadd fast float %4151, -5.000000e-01
  %4167 = fadd fast float %4153, -5.000000e-01
  %4168 = fmul fast float %4166, %4162
  %4169 = fmul fast float %4167, %4162
  %4170 = fadd fast float %4168, 5.000000e-01
  %4171 = fadd fast float %4169, 5.000000e-01
  %4172 = fmul fast float %4170, 2.000000e+00
  %4173 = fadd fast float %4172, -1.000000e+00
  %4174 = fmul fast float %4171, 2.000000e+00
  %4175 = fadd fast float %4174, -1.000000e+00
  %4176 = fadd fast float %4173, %4175
  %4177 = fmul fast float %4176, 5.000000e-01
  %4178 = fsub fast float %4173, %4175
  %4179 = fmul fast float %4178, 5.000000e-01
  %4180 = call float @dx.op.unary.f32(i32 6, float %4177)  ; FAbs(value)
  %4181 = fsub fast float 1.000000e+00, %4180
  %4182 = call float @dx.op.unary.f32(i32 6, float %4179)  ; FAbs(value)
  %4183 = fsub fast float %4181, %4182
  %4184 = call float @dx.op.dot3.f32(i32 55, float %4177, float %4179, float %4183, float %4177, float %4179, float %4183)  ; Dot3(ax,ay,az,bx,by,bz)
  %4185 = call float @dx.op.unary.f32(i32 25, float %4184)  ; Rsqrt(value)
  %4186 = fmul fast float %4177, %4185
  %4187 = fmul fast float %4179, %4185
  %4188 = select i1 %4015, i32 %4005, i32 %4006
  %4189 = select i1 %4013, i32 %4004, i32 %4188
  %4190 = sitofp i32 %4189 to float
  %4191 = fmul fast float %4183, %4190
  %4192 = fmul fast float %4191, %4185
  %4193 = select i1 %4015, float %4192, float %4187
  %4194 = select i1 %4015, float %4187, float %4192
  %4195 = select i1 %4013, float %4192, float %4186
  %4196 = select i1 %4013, float %4187, float %4193
  %4197 = select i1 %4013, float %4186, float %4194
  %4198 = fsub fast float %4132, %3856
  %4199 = fsub fast float %4133, %3857
  %4200 = fsub fast float %4134, %3858
  %4201 = fmul fast float %4198, %4104
  %4202 = fmul fast float %4199, %4104
  %4203 = fmul fast float %4200, %4104
  %4204 = fadd fast float %4201, %3856
  %4205 = fadd fast float %4202, %3857
  %4206 = fadd fast float %4203, %3858
  %4207 = fsub fast float %4141, %3841
  %4208 = fsub fast float %4142, %3842
  %4209 = fsub fast float %4143, %3843
  %4210 = fmul fast float %4207, %4104
  %4211 = fmul fast float %4208, %4104
  %4212 = fmul fast float %4209, %4104
  %4213 = fadd fast float %4210, %3841
  %4214 = fadd fast float %4211, %3842
  %4215 = fadd fast float %4212, %3843
  %4216 = fadd fast float %4195, %3804
  %4217 = fadd fast float %4196, %3805
  %4218 = fadd fast float %4197, %3806
  %4219 = call float @dx.op.dot3.f32(i32 55, float %4216, float %4217, float %4218, float %4216, float %4217, float %4218)  ; Dot3(ax,ay,az,bx,by,bz)
  %4220 = call float @dx.op.unary.f32(i32 25, float %4219)  ; Rsqrt(value)
  %4221 = fmul fast float %4216, %4220
  %4222 = fmul fast float %4217, %4220
  %4223 = fmul fast float %4218, %4220
  %4224 = fsub fast float %4221, %3804
  %4225 = fsub fast float %4222, %3805
  %4226 = fsub fast float %4223, %3806
  %4227 = fmul fast float %4224, %4104
  %4228 = fmul fast float %4225, %4104
  %4229 = fmul fast float %4226, %4104
  %4230 = fadd fast float %4227, %3804
  %4231 = fadd fast float %4228, %3805
  %4232 = fadd fast float %4229, %3806
  %4233 = call float @dx.op.binary.f32(i32 36, float %3816, float %4152)  ; FMin(a,b)
  %4234 = fsub fast float %4233, %3816
  %4235 = fmul fast float %4234, %4104
  %4236 = fadd fast float %4235, %3816
  %4237 = fsub fast float %4165, %3844
  %4238 = fmul fast float %4237, %4104
  %4239 = fadd fast float %4238, %3844
  br label %4240

; <label>:4240                                    ; preds = %4102, %4064, %3966
  %4241 = phi float [ %4213, %4102 ], [ %3841, %4064 ], [ %3841, %3966 ]
  %4242 = phi float [ %4214, %4102 ], [ %3842, %4064 ], [ %3842, %3966 ]
  %4243 = phi float [ %4215, %4102 ], [ %3843, %4064 ], [ %3843, %3966 ]
  %4244 = phi float [ %4230, %4102 ], [ %3804, %4064 ], [ %3804, %3966 ]
  %4245 = phi float [ %4231, %4102 ], [ %3805, %4064 ], [ %3805, %3966 ]
  %4246 = phi float [ %4232, %4102 ], [ %3806, %4064 ], [ %3806, %3966 ]
  %4247 = phi float [ %4204, %4102 ], [ %3856, %4064 ], [ %3856, %3966 ]
  %4248 = phi float [ %4205, %4102 ], [ %3857, %4064 ], [ %3857, %3966 ]
  %4249 = phi float [ %4206, %4102 ], [ %3858, %4064 ], [ %3858, %3966 ]
  %4250 = phi float [ %4239, %4102 ], [ %3844, %4064 ], [ %3844, %3966 ]
  %4251 = phi float [ %4236, %4102 ], [ %3816, %4064 ], [ %3816, %3966 ]
  br i1 %3964, label %4252, label %4525

; <label>:4252                                    ; preds = %4240
  %4253 = call float @dx.op.unary.f32(i32 23, float %4251)  ; Log(value)
  %4254 = fmul fast float %4253, 4.000000e+00
  %4255 = call float @dx.op.unary.f32(i32 21, float %4254)  ; Exp(value)
  %4256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4257 = extractvalue %dx.types.CBufRet.f32 %4256, 0
  %4258 = fmul fast float %4257, %38
  %4259 = fmul fast float %4257, %39
  %4260 = fmul fast float %4257, %40
  %4261 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4262 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %4263 = call float @dx.op.unary.f32(i32 6, float %49)  ; FAbs(value)
  %4264 = call float @dx.op.unary.f32(i32 23, float %4261)  ; Log(value)
  %4265 = call float @dx.op.unary.f32(i32 23, float %4262)  ; Log(value)
  %4266 = call float @dx.op.unary.f32(i32 23, float %4263)  ; Log(value)
  %4267 = fmul fast float %4264, 4.000000e+00
  %4268 = fmul fast float %4265, 4.000000e+00
  %4269 = fmul fast float %4266, 4.000000e+00
  %4270 = call float @dx.op.unary.f32(i32 21, float %4267)  ; Exp(value)
  %4271 = call float @dx.op.unary.f32(i32 21, float %4268)  ; Exp(value)
  %4272 = call float @dx.op.unary.f32(i32 21, float %4269)  ; Exp(value)
  %4273 = fadd fast float %4271, %4270
  %4274 = fadd fast float %4273, %4272
  %4275 = fdiv fast float 1.000000e+00, %4274
  %4276 = fmul fast float %4275, %4270
  %4277 = fcmp fast ogt float %47, 0.000000e+00
  %4278 = fcmp fast ogt float %48, 0.000000e+00
  %4279 = fcmp fast ogt float %49, 0.000000e+00
  %4280 = fcmp fast olt float %47, 0.000000e+00
  %4281 = fcmp fast olt float %48, 0.000000e+00
  %4282 = fcmp fast olt float %49, 0.000000e+00
  %4283 = zext i1 %4277 to i32
  %4284 = zext i1 %4278 to i32
  %4285 = zext i1 %4279 to i32
  %4286 = zext i1 %4280 to i32
  %4287 = zext i1 %4281 to i32
  %4288 = zext i1 %4282 to i32
  %4289 = sub nsw i32 %4283, %4286
  %4290 = sub nsw i32 %4284, %4287
  %4291 = sub nsw i32 %4285, %4288
  %4292 = call float @dx.op.unary.f32(i32 83, float %4258)  ; DerivCoarseX(value)
  %4293 = call float @dx.op.unary.f32(i32 83, float %4259)  ; DerivCoarseX(value)
  %4294 = call float @dx.op.unary.f32(i32 83, float %4260)  ; DerivCoarseX(value)
  %4295 = call float @dx.op.unary.f32(i32 84, float %4258)  ; DerivCoarseY(value)
  %4296 = call float @dx.op.unary.f32(i32 84, float %4259)  ; DerivCoarseY(value)
  %4297 = call float @dx.op.unary.f32(i32 84, float %4260)  ; DerivCoarseY(value)
  %4298 = fcmp fast ole float %244, %4276
  %4299 = fmul fast float %4275, %4273
  %4300 = fcmp fast ole float %244, %4299
  %4301 = select i1 %4300, float %4260, float %4258
  %4302 = select i1 %4300, float %4258, float %4259
  %4303 = select i1 %4298, float %4259, float %4301
  %4304 = select i1 %4298, float %4260, float %4302
  %4305 = select i1 %4300, float %4294, float %4292
  %4306 = select i1 %4300, float %4292, float %4293
  %4307 = select i1 %4298, float %4293, float %4305
  %4308 = select i1 %4298, float %4294, float %4306
  %4309 = select i1 %4300, float %4297, float %4295
  %4310 = select i1 %4300, float %4295, float %4296
  %4311 = select i1 %4298, float %4296, float %4309
  %4312 = select i1 %4298, float %4297, float %4310
  %4313 = call float @dx.op.unary.f32(i32 27, float %4303)  ; Round_ni(value)
  %4314 = call float @dx.op.unary.f32(i32 27, float %4304)  ; Round_ni(value)
  %4315 = fptosi float %4313 to i32
  %4316 = fptosi float %4314 to i32
  %4317 = xor i32 %4316, %4315
  %4318 = sitofp i32 %4317 to float
  %4319 = fptosi float %4318 to i32
  %4320 = sitofp i32 %4319 to float
  %4321 = fmul fast float %4320, 0x3FE3C6EF40000000
  %4322 = frem fast float %4313, 2.560000e+02
  %4323 = frem fast float %4314, 2.560000e+02
  %4324 = fptoui float %4322 to i32
  %4325 = fptoui float %4323 to i32
  %4326 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4324, i32 %4325, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4327 = extractvalue %dx.types.ResRet.f32 %4326, 0
  %4328 = extractvalue %dx.types.ResRet.f32 %4326, 1
  %4329 = extractvalue %dx.types.ResRet.f32 %4326, 2
  %4330 = fadd fast float %4327, %4321
  %4331 = fadd fast float %4328, %4321
  %4332 = fadd fast float %4329, %4321
  %4333 = call float @dx.op.unary.f32(i32 22, float %4330)  ; Frc(value)
  %4334 = call float @dx.op.unary.f32(i32 22, float %4331)  ; Frc(value)
  %4335 = call float @dx.op.unary.f32(i32 22, float %4332)  ; Frc(value)
  %4336 = fmul fast float %4335, 0x401921FB60000000
  %4337 = call float @dx.op.unary.f32(i32 13, float %4336)  ; Sin(value)
  %4338 = call float @dx.op.unary.f32(i32 12, float %4336)  ; Cos(value)
  %4339 = fsub fast float -0.000000e+00, %4338
  %4340 = fmul fast float %4338, %4303
  %4341 = call float @dx.op.tertiary.f32(i32 46, float %4337, float %4304, float %4340)  ; FMad(a,b,c)
  %4342 = fmul fast float %4337, %4303
  %4343 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4304, float %4342)  ; FMad(a,b,c)
  %4344 = fadd fast float %4341, %4333
  %4345 = fadd fast float %4343, %4334
  %4346 = extractvalue %dx.types.CBufRet.f32 %4256, 3
  %4347 = bitcast float %4346 to i32
  %4348 = icmp eq i32 %4347, 0
  br i1 %4348, label %4387, label %4349

; <label>:4349                                    ; preds = %4252
  %4350 = add i32 %4347, 0
  %4351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4350, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4352 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4351, %dx.types.Handle %86, float %4344, float %4345, float undef, float undef, i32 0, i32 0, i32 undef, float %4307, float %4308, float undef, float %4311, float %4312, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4353 = extractvalue %dx.types.ResRet.f32 %4352, 0
  %4354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.f32 %4354, 1
  %4356 = extractvalue %dx.types.CBufRet.f32 %4354, 2
  %4357 = fsub fast float 1.000000e+00, %3962
  %4358 = call float @dx.op.binary.f32(i32 35, float %4357, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4359 = bitcast float %3962 to i32
  %4360 = sitofp i32 %4359 to float
  %4361 = fadd fast float %4360, 0xC1CFBF8940000000
  %4362 = fmul fast float %4356, %4361
  %4363 = fadd fast float %4362, 0x41CFBF8940000000
  %4364 = fptosi float %4363 to i32
  %4365 = bitcast i32 %4364 to float
  %4366 = bitcast float %4358 to i32
  %4367 = sitofp i32 %4366 to float
  %4368 = fadd fast float %4367, 0xC1CFBF8940000000
  %4369 = fmul fast float %4368, %4356
  %4370 = fadd fast float %4369, 0x41CFBF8940000000
  %4371 = fptosi float %4370 to i32
  %4372 = bitcast i32 %4371 to float
  %4373 = fmul fast float %4365, %4355
  %4374 = fmul fast float %4372, %4355
  %4375 = fsub fast float %4358, %4373
  %4376 = fadd fast float %4374, %4358
  %4377 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4378 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4379 = fsub fast float %4353, %4377
  %4380 = fsub fast float %4378, %4377
  %4381 = bitcast float %4380 to i32
  %4382 = sub nsw i32 2129859010, %4381
  %4383 = bitcast i32 %4382 to float
  %4384 = fmul fast float %4383, %4379
  %4385 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4386 = fcmp fast olt float %4385, 0x3F70101020000000
  br i1 %4386, label %4525, label %4387

; <label>:4387                                    ; preds = %4349, %4252
  %4388 = phi float [ %4385, %4349 ], [ %3962, %4252 ]
  %4389 = fmul fast float %4388, %4255
  %4390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.i32 %4390, 1
  %4392 = extractvalue %dx.types.CBufRet.i32 %4390, 0
  %4393 = add i32 %4392, 0
  %4394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4393, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4395 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4394, %dx.types.Handle %85, float %4344, float %4345, float undef, float undef, i32 0, i32 0, i32 undef, float %4307, float %4308, float undef, float %4311, float %4312, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4396 = extractvalue %dx.types.ResRet.f32 %4395, 0
  %4397 = extractvalue %dx.types.ResRet.f32 %4395, 1
  %4398 = extractvalue %dx.types.ResRet.f32 %4395, 2
  %4399 = extractvalue %dx.types.ResRet.f32 %4395, 3
  %4400 = and i32 %4391, 255
  %4401 = uitofp i32 %4400 to float
  %4402 = lshr i32 %4391, 8
  %4403 = and i32 %4402, 255
  %4404 = uitofp i32 %4403 to float
  %4405 = fmul fast float %4399, %4401
  %4406 = fadd fast float %4405, %4404
  %4407 = fmul fast float %4406, 0x3F70101000000000
  %4408 = fadd fast float %4407, 0xBFB99999A0000000
  %4409 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4410 = fmul fast float %4409, 0x3FF1C71C80000000
  %4411 = call float @dx.op.binary.f32(i32 36, float %4407, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4412 = fsub fast float 1.000000e+00, %4410
  %4413 = call float @dx.op.unary.f32(i32 7, float %4412)  ; Saturate(value)
  %4414 = fmul fast float %4413, %4396
  %4415 = fmul fast float %4413, %4397
  %4416 = fmul fast float %4413, %4398
  %4417 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4418 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4419 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4420 = fmul fast float %4410, %4396
  %4421 = fmul fast float %4410, %4397
  %4422 = fmul fast float %4410, %4398
  %4423 = fadd fast float %4420, %4411
  %4424 = fadd fast float %4421, %4411
  %4425 = fadd fast float %4422, %4411
  %4426 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4427 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4428 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4430 = extractvalue %dx.types.CBufRet.i32 %4429, 3
  %4431 = extractvalue %dx.types.CBufRet.i32 %4429, 2
  %4432 = add i32 %4431, 0
  %4433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4432, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4434 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4433, %dx.types.Handle %85, float %4344, float %4345, float undef, float undef, i32 0, i32 0, i32 undef, float %4307, float %4308, float undef, float %4311, float %4312, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4435 = extractvalue %dx.types.ResRet.f32 %4434, 0
  %4436 = extractvalue %dx.types.ResRet.f32 %4434, 1
  %4437 = extractvalue %dx.types.ResRet.f32 %4434, 2
  %4438 = extractvalue %dx.types.ResRet.f32 %4434, 3
  %4439 = and i32 %4430, 255
  %4440 = uitofp i32 %4439 to float
  %4441 = lshr i32 %4430, 8
  %4442 = and i32 %4441, 255
  %4443 = uitofp i32 %4442 to float
  %4444 = lshr i32 %4430, 16
  %4445 = and i32 %4444, 255
  %4446 = uitofp i32 %4445 to float
  %4447 = fmul fast float %4446, 0x3F70101000000000
  %4448 = fmul fast float %4435, %4440
  %4449 = fadd fast float %4448, %4443
  %4450 = fmul fast float %4449, 0x3F70101000000000
  %4451 = fadd fast float %4436, -5.000000e-01
  %4452 = fadd fast float %4438, -5.000000e-01
  %4453 = fmul fast float %4451, %4447
  %4454 = fmul fast float %4452, %4447
  %4455 = fadd fast float %4453, 5.000000e-01
  %4456 = fadd fast float %4454, 5.000000e-01
  %4457 = fmul fast float %4455, 2.000000e+00
  %4458 = fadd fast float %4457, -1.000000e+00
  %4459 = fmul fast float %4456, 2.000000e+00
  %4460 = fadd fast float %4459, -1.000000e+00
  %4461 = fadd fast float %4458, %4460
  %4462 = fmul fast float %4461, 5.000000e-01
  %4463 = fsub fast float %4458, %4460
  %4464 = fmul fast float %4463, 5.000000e-01
  %4465 = call float @dx.op.unary.f32(i32 6, float %4462)  ; FAbs(value)
  %4466 = fsub fast float 1.000000e+00, %4465
  %4467 = call float @dx.op.unary.f32(i32 6, float %4464)  ; FAbs(value)
  %4468 = fsub fast float %4466, %4467
  %4469 = call float @dx.op.dot3.f32(i32 55, float %4462, float %4464, float %4468, float %4462, float %4464, float %4468)  ; Dot3(ax,ay,az,bx,by,bz)
  %4470 = call float @dx.op.unary.f32(i32 25, float %4469)  ; Rsqrt(value)
  %4471 = fmul fast float %4462, %4470
  %4472 = fmul fast float %4464, %4470
  %4473 = select i1 %4300, i32 %4290, i32 %4291
  %4474 = select i1 %4298, i32 %4289, i32 %4473
  %4475 = sitofp i32 %4474 to float
  %4476 = fmul fast float %4468, %4475
  %4477 = fmul fast float %4476, %4470
  %4478 = select i1 %4300, float %4477, float %4472
  %4479 = select i1 %4300, float %4472, float %4477
  %4480 = select i1 %4298, float %4477, float %4471
  %4481 = select i1 %4298, float %4472, float %4478
  %4482 = select i1 %4298, float %4471, float %4479
  %4483 = fsub fast float %4417, %4247
  %4484 = fsub fast float %4418, %4248
  %4485 = fsub fast float %4419, %4249
  %4486 = fmul fast float %4483, %4389
  %4487 = fmul fast float %4484, %4389
  %4488 = fmul fast float %4485, %4389
  %4489 = fadd fast float %4486, %4247
  %4490 = fadd fast float %4487, %4248
  %4491 = fadd fast float %4488, %4249
  %4492 = fsub fast float %4426, %4241
  %4493 = fsub fast float %4427, %4242
  %4494 = fsub fast float %4428, %4243
  %4495 = fmul fast float %4492, %4389
  %4496 = fmul fast float %4493, %4389
  %4497 = fmul fast float %4494, %4389
  %4498 = fadd fast float %4495, %4241
  %4499 = fadd fast float %4496, %4242
  %4500 = fadd fast float %4497, %4243
  %4501 = fadd fast float %4480, %4244
  %4502 = fadd fast float %4481, %4245
  %4503 = fadd fast float %4482, %4246
  %4504 = call float @dx.op.dot3.f32(i32 55, float %4501, float %4502, float %4503, float %4501, float %4502, float %4503)  ; Dot3(ax,ay,az,bx,by,bz)
  %4505 = call float @dx.op.unary.f32(i32 25, float %4504)  ; Rsqrt(value)
  %4506 = fmul fast float %4501, %4505
  %4507 = fmul fast float %4502, %4505
  %4508 = fmul fast float %4503, %4505
  %4509 = fsub fast float %4506, %4244
  %4510 = fsub fast float %4507, %4245
  %4511 = fsub fast float %4508, %4246
  %4512 = fmul fast float %4509, %4389
  %4513 = fmul fast float %4510, %4389
  %4514 = fmul fast float %4511, %4389
  %4515 = fadd fast float %4512, %4244
  %4516 = fadd fast float %4513, %4245
  %4517 = fadd fast float %4514, %4246
  %4518 = call float @dx.op.binary.f32(i32 36, float %4251, float %4437)  ; FMin(a,b)
  %4519 = fsub fast float %4518, %4251
  %4520 = fmul fast float %4519, %4389
  %4521 = fadd fast float %4520, %4251
  %4522 = fsub fast float %4450, %4250
  %4523 = fmul fast float %4522, %4389
  %4524 = fadd fast float %4523, %4250
  br label %4525

; <label>:4525                                    ; preds = %4387, %4349, %4240, %3956
  %4526 = phi float [ %4498, %4387 ], [ %4241, %4349 ], [ %4241, %4240 ], [ %3841, %3956 ]
  %4527 = phi float [ %4499, %4387 ], [ %4242, %4349 ], [ %4242, %4240 ], [ %3842, %3956 ]
  %4528 = phi float [ %4500, %4387 ], [ %4243, %4349 ], [ %4243, %4240 ], [ %3843, %3956 ]
  %4529 = phi float [ %4515, %4387 ], [ %4244, %4349 ], [ %4244, %4240 ], [ %3804, %3956 ]
  %4530 = phi float [ %4516, %4387 ], [ %4245, %4349 ], [ %4245, %4240 ], [ %3805, %3956 ]
  %4531 = phi float [ %4517, %4387 ], [ %4246, %4349 ], [ %4246, %4240 ], [ %3806, %3956 ]
  %4532 = phi float [ %4489, %4387 ], [ %4247, %4349 ], [ %4247, %4240 ], [ %3856, %3956 ]
  %4533 = phi float [ %4490, %4387 ], [ %4248, %4349 ], [ %4248, %4240 ], [ %3857, %3956 ]
  %4534 = phi float [ %4491, %4387 ], [ %4249, %4349 ], [ %4249, %4240 ], [ %3858, %3956 ]
  %4535 = phi float [ %4524, %4387 ], [ %4250, %4349 ], [ %4250, %4240 ], [ %3844, %3956 ]
  %4536 = phi float [ %4521, %4387 ], [ %4251, %4349 ], [ %4251, %4240 ], [ %3816, %3956 ]
  %4537 = fcmp fast une float %3960, 0.000000e+00
  %4538 = call float @dx.op.dot3.f32(i32 55, float %172, float %173, float %174, float %172, float %173, float %174)  ; Dot3(ax,ay,az,bx,by,bz)
  %4539 = call float @dx.op.unary.f32(i32 25, float %4538)  ; Rsqrt(value)
  br i1 %4537, label %4547, label %4540

; <label>:4540                                    ; preds = %4525
  %4541 = fmul fast float %4539, %172
  %4542 = fmul fast float %4539, %173
  %4543 = fmul fast float %4539, %174
  %4544 = fsub fast float -0.000000e+00, %4541
  %4545 = fsub fast float -0.000000e+00, %4542
  %4546 = fsub fast float -0.000000e+00, %4543
  br label %4714

; <label>:4547                                    ; preds = %4525
  %4548 = fmul fast float %172, %4539
  %4549 = fsub fast float -0.000000e+00, %4548
  %4550 = fmul fast float %173, %4539
  %4551 = fsub fast float -0.000000e+00, %4550
  %4552 = fmul fast float %174, %4539
  %4553 = fsub fast float -0.000000e+00, %4552
  %4554 = call float @dx.op.dot3.f32(i32 55, float %4549, float %4551, float %4553, float %98, float %100, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %4555 = fmul fast float %3960, 2.500000e+00
  %4556 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4557 = fmul fast float %3960, 0x4013FFFFE0000000
  %4558 = fadd fast float %4557, 0xBFFFFFFFE0000000
  %4559 = call float @dx.op.unary.f32(i32 7, float %4558)  ; Saturate(value)
  %4560 = fmul fast float %3960, 0x4004000020000000
  %4561 = fadd fast float %4560, 0xBFF8000040000000
  %4562 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  %4563 = fmul fast float %3823, 1.000000e+01
  %4564 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4565 = fmul fast float %4564, 2.000000e+00
  %4566 = fsub fast float 3.000000e+00, %4565
  %4567 = fmul fast float %4564, %4564
  %4568 = fmul fast float %4567, %4566
  %4569 = fsub fast float 1.000000e+00, %4568
  %4570 = fsub fast float 0x3FE3333340000000, %4535
  %4571 = fmul fast float %4570, 0x400AAAAAA0000000
  %4572 = call float @dx.op.unary.f32(i32 7, float %4571)  ; Saturate(value)
  %4573 = fmul fast float %4569, %4572
  %4574 = fmul fast float %4532, 0x3FEA2B8620000000
  %4575 = fmul fast float %4533, 0x3FEA2B8620000000
  %4576 = fmul fast float %4534, 0x3FEA2B8620000000
  %4577 = fadd fast float %4574, 0x3FC81DFBA0000000
  %4578 = fmul fast float %4577, %4532
  %4579 = fadd fast float %4578, 0x3F910E6020000000
  %4580 = fadd fast float %4575, 0x3FC81DFBA0000000
  %4581 = fmul fast float %4580, %4533
  %4582 = fadd fast float %4581, 0x3F910E6020000000
  %4583 = fadd fast float %4576, 0x3FC81DFBA0000000
  %4584 = fmul fast float %4583, %4534
  %4585 = fadd fast float %4584, 0x3F910E6020000000
  %4586 = call float @dx.op.unary.f32(i32 7, float %4579)  ; Saturate(value)
  %4587 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4588 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4589 = fsub fast float %4586, %4532
  %4590 = fsub fast float %4587, %4533
  %4591 = fsub fast float %4588, %4534
  %4592 = fmul fast float %4589, %4556
  %4593 = fmul fast float %4592, %4573
  %4594 = fmul fast float %4590, %4556
  %4595 = fmul fast float %4594, %4573
  %4596 = fmul fast float %4591, %4556
  %4597 = fmul fast float %4596, %4573
  %4598 = fadd fast float %4593, %4532
  %4599 = fadd fast float %4595, %4533
  %4600 = fadd fast float %4597, %4534
  %4601 = fmul fast float %4536, %4536
  %4602 = fmul fast float %4601, %4601
  %4603 = fadd fast float %4559, 1.000000e+00
  %4604 = fsub fast float %4603, %4573
  %4605 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4606 = call float @dx.op.dot3.f32(i32 55, float %98, float %100, float %102, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4607 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4608 = fsub fast float 1.000000e+00, %4602
  %4609 = call float @dx.op.binary.f32(i32 36, float %4605, float %4608)  ; FMin(a,b)
  %4610 = call float @dx.op.unary.f32(i32 7, float %4562)  ; Saturate(value)
  %4611 = call float @dx.op.binary.f32(i32 35, float %4609, float %4610)  ; FMax(a,b)
  %4612 = fadd fast float %4607, 0xBFE4CCCCC0000000
  %4613 = fmul fast float %4612, 0x4006DB6DA0000000
  %4614 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4615 = fmul fast float %4614, 2.000000e+00
  %4616 = fsub fast float 3.000000e+00, %4615
  %4617 = bitcast float %4526 to i32
  %4618 = ashr i32 %4617, 1
  %4619 = add nsw i32 %4618, 532487669
  %4620 = bitcast i32 %4619 to float
  %4621 = fsub fast float 1.000000e+00, %4620
  %4622 = bitcast float %4621 to i32
  %4623 = sub nsw i32 2129859010, %4622
  %4624 = bitcast i32 %4623 to float
  %4625 = fmul fast float %4624, 2.000000e+00
  %4626 = bitcast float %4527 to i32
  %4627 = ashr i32 %4626, 1
  %4628 = add nsw i32 %4627, 532487669
  %4629 = bitcast i32 %4628 to float
  %4630 = fsub fast float 1.000000e+00, %4629
  %4631 = bitcast float %4630 to i32
  %4632 = sub nsw i32 2129859010, %4631
  %4633 = bitcast i32 %4632 to float
  %4634 = fmul fast float %4633, 2.000000e+00
  %4635 = bitcast float %4528 to i32
  %4636 = ashr i32 %4635, 1
  %4637 = add nsw i32 %4636, 532487669
  %4638 = bitcast i32 %4637 to float
  %4639 = fsub fast float 1.000000e+00, %4638
  %4640 = bitcast float %4639 to i32
  %4641 = sub nsw i32 2129859010, %4640
  %4642 = bitcast i32 %4641 to float
  %4643 = fmul fast float %4642, 2.000000e+00
  %4644 = fsub fast float 0x4002A9FBE0000000, %4625
  %4645 = fadd fast float %4625, 0x3FD54FDF00000000
  %4646 = bitcast float %4645 to i32
  %4647 = sub nsw i32 2129859010, %4646
  %4648 = bitcast i32 %4647 to float
  %4649 = fmul fast float %4648, %4644
  %4650 = fmul fast float %4649, %4649
  %4651 = fsub fast float 0x4002A9FBE0000000, %4634
  %4652 = fadd fast float %4634, 0x3FD54FDF00000000
  %4653 = bitcast float %4652 to i32
  %4654 = sub nsw i32 2129859010, %4653
  %4655 = bitcast i32 %4654 to float
  %4656 = fmul fast float %4655, %4651
  %4657 = fmul fast float %4656, %4656
  %4658 = fsub fast float 0x4002A9FBE0000000, %4643
  %4659 = fadd fast float %4643, 0x3FD54FDF00000000
  %4660 = bitcast float %4659 to i32
  %4661 = sub nsw i32 2129859010, %4660
  %4662 = bitcast i32 %4661 to float
  %4663 = fmul fast float %4662, %4658
  %4664 = fmul fast float %4663, %4663
  %4665 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4650)  ; FMax(a,b)
  %4666 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4657)  ; FMax(a,b)
  %4667 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4664)  ; FMax(a,b)
  %4668 = fsub fast float 1.000000e+00, %4554
  %4669 = fadd fast float %4668, %4569
  %4670 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4671 = fsub fast float 1.000000e+00, %3941
  %4672 = fmul fast float %4611, %4671
  %4673 = fmul fast float %4614, %4614
  %4674 = fmul fast float %4673, %4672
  %4675 = fmul fast float %4674, %4616
  %4676 = fmul fast float %4671, 0xBFE99999A0000000
  %4677 = fmul fast float %4676, %4556
  %4678 = fmul fast float %4677, %4573
  %4679 = fadd fast float %4678, 1.000000e+00
  %4680 = fadd fast float %4535, -1.000000e+00
  %4681 = fmul fast float %4679, %4680
  %4682 = fadd fast float %4681, 1.000000e+00
  %4683 = fsub fast float %4665, %4526
  %4684 = fsub fast float %4666, %4527
  %4685 = fsub fast float %4667, %4528
  %4686 = fmul fast float %4675, %4683
  %4687 = fmul fast float %4675, %4684
  %4688 = fmul fast float %4675, %4685
  %4689 = fadd fast float %4686, %4526
  %4690 = fadd fast float %4687, %4527
  %4691 = fadd fast float %4688, %4528
  %4692 = fsub fast float %98, %4529
  %4693 = fsub fast float %100, %4530
  %4694 = fsub fast float %102, %4531
  %4695 = fmul fast float %4675, %4692
  %4696 = fmul fast float %4675, %4693
  %4697 = fmul fast float %4675, %4694
  %4698 = fadd fast float %4695, %4529
  %4699 = fadd fast float %4696, %4530
  %4700 = fadd fast float %4697, %4531
  %4701 = fmul fast float %4675, %4670
  %4702 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  %4703 = fsub fast float 1.000000e+00, %4702
  %4704 = fmul fast float %4701, %4703
  %4705 = fadd fast float %4704, %4702
  %4706 = fsub fast float 1.000000e+00, %4536
  %4707 = fmul fast float %4675, %4706
  %4708 = fadd fast float %4707, %4536
  %4709 = call float @dx.op.dot3.f32(i32 55, float %4698, float %4699, float %4700, float %4698, float %4699, float %4700)  ; Dot3(ax,ay,az,bx,by,bz)
  %4710 = call float @dx.op.unary.f32(i32 25, float %4709)  ; Rsqrt(value)
  %4711 = fmul fast float %4698, %4710
  %4712 = fmul fast float %4699, %4710
  %4713 = fmul fast float %4700, %4710
  br label %4714

; <label>:4714                                    ; preds = %4547, %4540
  %4715 = phi float [ %4546, %4540 ], [ %4553, %4547 ]
  %4716 = phi float [ %4545, %4540 ], [ %4551, %4547 ]
  %4717 = phi float [ %4544, %4540 ], [ %4549, %4547 ]
  %4718 = phi float [ %4543, %4540 ], [ %4552, %4547 ]
  %4719 = phi float [ %4542, %4540 ], [ %4550, %4547 ]
  %4720 = phi float [ %4541, %4540 ], [ %4548, %4547 ]
  %4721 = phi float [ %4526, %4540 ], [ %4689, %4547 ]
  %4722 = phi float [ %4527, %4540 ], [ %4690, %4547 ]
  %4723 = phi float [ %4528, %4540 ], [ %4691, %4547 ]
  %4724 = phi float [ %4529, %4540 ], [ %4711, %4547 ]
  %4725 = phi float [ %4530, %4540 ], [ %4712, %4547 ]
  %4726 = phi float [ %4531, %4540 ], [ %4713, %4547 ]
  %4727 = phi float [ %4532, %4540 ], [ %4598, %4547 ]
  %4728 = phi float [ %4533, %4540 ], [ %4599, %4547 ]
  %4729 = phi float [ %4534, %4540 ], [ %4600, %4547 ]
  %4730 = phi float [ %4535, %4540 ], [ %4705, %4547 ]
  %4731 = phi float [ %4536, %4540 ], [ %4708, %4547 ]
  %4732 = select i1 %233, float 0.000000e+00, float %4723
  %4733 = call float @dx.op.dot3.f32(i32 55, float %4724, float %4725, float %4726, float %4717, float %4716, float %4715)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4735 = call float @dx.op.dot3.f32(i32 55, float %4720, float %4719, float %4718, float %4724, float %4725, float %4726)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = fmul fast float %4735, 2.000000e+00
  %4737 = fmul fast float %4736, %4724
  %4738 = fmul fast float %4736, %4725
  %4739 = fmul fast float %4736, %4726
  %4740 = fsub fast float %4720, %4737
  %4741 = fsub fast float %4719, %4738
  %4742 = fsub fast float %4718, %4739
  %4743 = call float @dx.op.binary.f32(i32 36, float %4731, float 1.000000e+00)  ; FMin(a,b)
  %4744 = fsub fast float 1.000000e+00, %4743
  %4745 = bitcast float %4744 to i32
  %4746 = ashr i32 %4745, 1
  %4747 = add nsw i32 %4746, 532487669
  %4748 = bitcast i32 %4747 to float
  %4749 = fsub fast float 1.000000e+00, %4730
  %4750 = call float @dx.op.binary.f32(i32 35, float %4749, float 0x3F847AE140000000)  ; FMax(a,b)
  %4751 = fmul fast float %4750, %4750
  %4752 = fmul fast float %4751, %4751
  %4753 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %4748, float %4752, float %4753, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4755 = extractvalue %dx.types.ResRet.f32 %4754, 0
  %4756 = call float @dx.op.dot3.f32(i32 55, float %62, float %58, float %54, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4757 = fmul fast float %4756, 0x3FD20DD760000000
  %4758 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %4759 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4760 = fcmp fast oeq float %4759, 0.000000e+00
  %4761 = fcmp fast oeq float %4758, 0.000000e+00
  %4762 = or i1 %4761, %4760
  br i1 %4762, label %4792, label %4763

; <label>:4763                                    ; preds = %4714
  %4764 = fsub fast float -0.000000e+00, %65
  %4765 = fsub fast float -0.000000e+00, %63
  %4766 = call float @dx.op.unary.f32(i32 24, float %4759)  ; Sqrt(value)
  %4767 = fdiv fast float %4766, %4758
  %4768 = fcmp fast ogt float %4767, 0x3FFB6F8900000000
  %4769 = select i1 %4768, float 0x3FFB6F8900000000, float %4767
  %4770 = fmul fast float %4769, 0x3FE8A23460000000
  %4771 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4772 = call float @dx.op.binary.f32(i32 35, float %4769, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4773 = fmul fast float %4771, %4758
  %4774 = fmul fast float %4772, 0x3FF279A740000000
  %4775 = fadd fast float %4774, -1.000000e+00
  %4776 = call float @dx.op.dot3.f32(i32 55, float %4764, float %4765, float %64, float %4764, float %4765, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %4777 = call float @dx.op.unary.f32(i32 25, float %4776)  ; Rsqrt(value)
  %4778 = fmul fast float %4777, %4764
  %4779 = fmul fast float %4777, %4765
  %4780 = fmul fast float %4777, %64
  %4781 = fmul fast float %4775, %4775
  %4782 = fsub fast float 1.000000e+00, %4781
  %4783 = fmul fast float %4772, 0x40005F8BE0000000
  %4784 = fsub fast float 0x400C5BF8A0000000, %4783
  %4785 = fdiv fast float %4773, %4784
  %4786 = fmul fast float %4785, 0x3FEE31C3C0000000
  %4787 = fmul fast float %4786, %4782
  %4788 = fmul fast float %4772, 0x3FDACB7480000000
  %4789 = fadd fast float %4788, 0xBFD7347680000000
  %4790 = fmul fast float %4789, %4785
  %4791 = fmul fast float %4790, %4782
  br label %4792

; <label>:4792                                    ; preds = %4763, %4714
  %4793 = phi float [ %4778, %4763 ], [ 0.000000e+00, %4714 ]
  %4794 = phi float [ %4779, %4763 ], [ 0.000000e+00, %4714 ]
  %4795 = phi float [ %4780, %4763 ], [ 0.000000e+00, %4714 ]
  %4796 = phi float [ %4787, %4763 ], [ 0.000000e+00, %4714 ]
  %4797 = phi float [ %4791, %4763 ], [ 0.000000e+00, %4714 ]
  %4798 = call float @dx.op.dot3.f32(i32 55, float %4793, float %4794, float %4795, float %4724, float %4725, float %4726)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = fmul fast float %4798, %4798
  %4800 = fmul fast float %4799, 0x3FEE471020000000
  %4801 = fadd fast float %4800, 0xBFD42F6020000000
  %4802 = fmul fast float %4758, 0x3FD20DD760000000
  %4803 = fmul fast float %4801, %4797
  %4804 = fmul fast float %4796, 0x3FDF454380000000
  %4805 = fmul fast float %4804, %4798
  %4806 = fadd fast float %4805, %4802
  %4807 = fadd fast float %4806, %4803
  %4808 = call float @dx.op.dot3.f32(i32 55, float %4793, float %4794, float %4795, float %4740, float %4741, float %4742)  ; Dot3(ax,ay,az,bx,by,bz)
  %4809 = fmul fast float %4808, 0x3FDF454380000000
  %4810 = fmul fast float %4808, %4808
  %4811 = fmul fast float %4810, 0x3FEE471020000000
  %4812 = fadd fast float %4811, 0xBFD42F6020000000
  %4813 = call float @dx.op.dot3.f32(i32 55, float %4758, float %4796, float %4797, float 0x3FD20DD760000000, float %4809, float %4812)  ; Dot3(ax,ay,az,bx,by,bz)
  %4814 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %4815 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4816 = fcmp fast oeq float %4815, 0.000000e+00
  %4817 = fcmp fast oeq float %4814, 0.000000e+00
  %4818 = or i1 %4817, %4816
  br i1 %4818, label %4848, label %4819

; <label>:4819                                    ; preds = %4792
  %4820 = fsub fast float -0.000000e+00, %61
  %4821 = fsub fast float -0.000000e+00, %59
  %4822 = call float @dx.op.unary.f32(i32 24, float %4815)  ; Sqrt(value)
  %4823 = fdiv fast float %4822, %4814
  %4824 = fcmp fast ogt float %4823, 0x3FFB6F8900000000
  %4825 = select i1 %4824, float 0x3FFB6F8900000000, float %4823
  %4826 = fmul fast float %4825, 0x3FE8A23460000000
  %4827 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  %4828 = call float @dx.op.binary.f32(i32 35, float %4825, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4829 = fmul fast float %4827, %4814
  %4830 = fmul fast float %4828, 0x3FF279A740000000
  %4831 = fadd fast float %4830, -1.000000e+00
  %4832 = call float @dx.op.dot3.f32(i32 55, float %4820, float %4821, float %60, float %4820, float %4821, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4833 = call float @dx.op.unary.f32(i32 25, float %4832)  ; Rsqrt(value)
  %4834 = fmul fast float %4833, %4820
  %4835 = fmul fast float %4833, %4821
  %4836 = fmul fast float %4833, %60
  %4837 = fmul fast float %4831, %4831
  %4838 = fsub fast float 1.000000e+00, %4837
  %4839 = fmul fast float %4828, 0x40005F8BE0000000
  %4840 = fsub fast float 0x400C5BF8A0000000, %4839
  %4841 = fdiv fast float %4829, %4840
  %4842 = fmul fast float %4841, 0x3FEE31C3C0000000
  %4843 = fmul fast float %4842, %4838
  %4844 = fmul fast float %4828, 0x3FDACB7480000000
  %4845 = fadd fast float %4844, 0xBFD7347680000000
  %4846 = fmul fast float %4845, %4841
  %4847 = fmul fast float %4846, %4838
  br label %4848

; <label>:4848                                    ; preds = %4819, %4792
  %4849 = phi float [ %4834, %4819 ], [ 0.000000e+00, %4792 ]
  %4850 = phi float [ %4835, %4819 ], [ 0.000000e+00, %4792 ]
  %4851 = phi float [ %4836, %4819 ], [ 0.000000e+00, %4792 ]
  %4852 = phi float [ %4843, %4819 ], [ 0.000000e+00, %4792 ]
  %4853 = phi float [ %4847, %4819 ], [ 0.000000e+00, %4792 ]
  %4854 = call float @dx.op.dot3.f32(i32 55, float %4849, float %4850, float %4851, float %4724, float %4725, float %4726)  ; Dot3(ax,ay,az,bx,by,bz)
  %4855 = fmul fast float %4854, %4854
  %4856 = fmul fast float %4855, 0x3FEE471020000000
  %4857 = fadd fast float %4856, 0xBFD42F6020000000
  %4858 = fmul fast float %4814, 0x3FD20DD760000000
  %4859 = fmul fast float %4857, %4853
  %4860 = fmul fast float %4852, 0x3FDF454380000000
  %4861 = fmul fast float %4860, %4854
  %4862 = fadd fast float %4861, %4858
  %4863 = fadd fast float %4862, %4859
  %4864 = call float @dx.op.dot3.f32(i32 55, float %4849, float %4850, float %4851, float %4740, float %4741, float %4742)  ; Dot3(ax,ay,az,bx,by,bz)
  %4865 = fmul fast float %4864, 0x3FDF454380000000
  %4866 = fmul fast float %4864, %4864
  %4867 = fmul fast float %4866, 0x3FEE471020000000
  %4868 = fadd fast float %4867, 0xBFD42F6020000000
  %4869 = call float @dx.op.dot3.f32(i32 55, float %4814, float %4852, float %4853, float 0x3FD20DD760000000, float %4865, float %4868)  ; Dot3(ax,ay,az,bx,by,bz)
  %4870 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4871 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4872 = fcmp fast oeq float %4871, 0.000000e+00
  %4873 = fcmp fast oeq float %4870, 0.000000e+00
  %4874 = or i1 %4873, %4872
  br i1 %4874, label %4904, label %4875

; <label>:4875                                    ; preds = %4848
  %4876 = fsub fast float -0.000000e+00, %57
  %4877 = fsub fast float -0.000000e+00, %55
  %4878 = call float @dx.op.unary.f32(i32 24, float %4871)  ; Sqrt(value)
  %4879 = fdiv fast float %4878, %4870
  %4880 = fcmp fast ogt float %4879, 0x3FFB6F8900000000
  %4881 = select i1 %4880, float 0x3FFB6F8900000000, float %4879
  %4882 = fmul fast float %4881, 0x3FE8A23460000000
  %4883 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4884 = call float @dx.op.binary.f32(i32 35, float %4881, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4885 = fmul fast float %4883, %4870
  %4886 = fmul fast float %4884, 0x3FF279A740000000
  %4887 = fadd fast float %4886, -1.000000e+00
  %4888 = call float @dx.op.dot3.f32(i32 55, float %4876, float %4877, float %56, float %4876, float %4877, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4889 = call float @dx.op.unary.f32(i32 25, float %4888)  ; Rsqrt(value)
  %4890 = fmul fast float %4889, %4876
  %4891 = fmul fast float %4889, %4877
  %4892 = fmul fast float %4889, %56
  %4893 = fmul fast float %4887, %4887
  %4894 = fsub fast float 1.000000e+00, %4893
  %4895 = fmul fast float %4884, 0x40005F8BE0000000
  %4896 = fsub fast float 0x400C5BF8A0000000, %4895
  %4897 = fdiv fast float %4885, %4896
  %4898 = fmul fast float %4897, 0x3FEE31C3C0000000
  %4899 = fmul fast float %4898, %4894
  %4900 = fmul fast float %4884, 0x3FDACB7480000000
  %4901 = fadd fast float %4900, 0xBFD7347680000000
  %4902 = fmul fast float %4901, %4897
  %4903 = fmul fast float %4902, %4894
  br label %4904

; <label>:4904                                    ; preds = %4875, %4848
  %4905 = phi float [ %4890, %4875 ], [ 0.000000e+00, %4848 ]
  %4906 = phi float [ %4891, %4875 ], [ 0.000000e+00, %4848 ]
  %4907 = phi float [ %4892, %4875 ], [ 0.000000e+00, %4848 ]
  %4908 = phi float [ %4899, %4875 ], [ 0.000000e+00, %4848 ]
  %4909 = phi float [ %4903, %4875 ], [ 0.000000e+00, %4848 ]
  %4910 = call float @dx.op.dot3.f32(i32 55, float %4905, float %4906, float %4907, float %4724, float %4725, float %4726)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = fmul fast float %4910, %4910
  %4912 = fmul fast float %4911, 0x3FEE471020000000
  %4913 = fadd fast float %4912, 0xBFD42F6020000000
  %4914 = fmul fast float %4870, 0x3FD20DD760000000
  %4915 = fmul fast float %4913, %4909
  %4916 = fmul fast float %4908, 0x3FDF454380000000
  %4917 = fmul fast float %4916, %4910
  %4918 = fadd fast float %4917, %4914
  %4919 = fadd fast float %4918, %4915
  %4920 = call float @dx.op.dot3.f32(i32 55, float %4905, float %4906, float %4907, float %4740, float %4741, float %4742)  ; Dot3(ax,ay,az,bx,by,bz)
  %4921 = fmul fast float %4920, 0x3FDF454380000000
  %4922 = fmul fast float %4920, %4920
  %4923 = fmul fast float %4922, 0x3FEE471020000000
  %4924 = fadd fast float %4923, 0xBFD42F6020000000
  %4925 = call float @dx.op.dot3.f32(i32 55, float %4870, float %4908, float %4909, float 0x3FD20DD760000000, float %4921, float %4924)  ; Dot3(ax,ay,az,bx,by,bz)
  %4926 = call float @dx.op.binary.f32(i32 35, float %4807, float 0.000000e+00)  ; FMax(a,b)
  %4927 = call float @dx.op.binary.f32(i32 35, float %4863, float 0.000000e+00)  ; FMax(a,b)
  %4928 = call float @dx.op.binary.f32(i32 35, float %4919, float 0.000000e+00)  ; FMax(a,b)
  %4929 = call float @dx.op.binary.f32(i32 35, float %4813, float 0.000000e+00)  ; FMax(a,b)
  %4930 = call float @dx.op.binary.f32(i32 35, float %4869, float 0.000000e+00)  ; FMax(a,b)
  %4931 = call float @dx.op.binary.f32(i32 35, float %4925, float 0.000000e+00)  ; FMax(a,b)
  %4932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4933 = extractvalue %dx.types.CBufRet.f32 %4932, 0
  %4934 = call float @dx.op.binary.f32(i32 36, float %4727, float %4933)  ; FMin(a,b)
  %4935 = fmul fast float %4934, %4744
  %4936 = fsub fast float 1.000000e+00, %4935
  %4937 = bitcast float %4936 to i32
  %4938 = sub nsw i32 2129859010, %4937
  %4939 = bitcast i32 %4938 to float
  %4940 = call float @dx.op.binary.f32(i32 36, float %4728, float %4933)  ; FMin(a,b)
  %4941 = fmul fast float %4940, %4744
  %4942 = fsub fast float 1.000000e+00, %4941
  %4943 = bitcast float %4942 to i32
  %4944 = sub nsw i32 2129859010, %4943
  %4945 = bitcast i32 %4944 to float
  %4946 = call float @dx.op.binary.f32(i32 36, float %4729, float %4933)  ; FMin(a,b)
  %4947 = fmul fast float %4946, %4744
  %4948 = fsub fast float 1.000000e+00, %4947
  %4949 = bitcast float %4948 to i32
  %4950 = sub nsw i32 2129859010, %4949
  %4951 = bitcast i32 %4950 to float
  %4952 = fmul fast float %4926, %4743
  %4953 = fmul fast float %4952, %4939
  %4954 = fmul fast float %4927, %4743
  %4955 = fmul fast float %4954, %4945
  %4956 = fmul fast float %4928, %4743
  %4957 = fmul fast float %4956, %4951
  %4958 = call float @dx.op.binary.f32(i32 36, float %4721, float %4933)  ; FMin(a,b)
  %4959 = fmul fast float %4958, %4744
  %4960 = fsub fast float 1.000000e+00, %4959
  %4961 = bitcast float %4960 to i32
  %4962 = sub nsw i32 2129859010, %4961
  %4963 = bitcast i32 %4962 to float
  %4964 = call float @dx.op.binary.f32(i32 36, float %4722, float %4933)  ; FMin(a,b)
  %4965 = fmul fast float %4964, %4744
  %4966 = fsub fast float 1.000000e+00, %4965
  %4967 = bitcast float %4966 to i32
  %4968 = sub nsw i32 2129859010, %4967
  %4969 = bitcast i32 %4968 to float
  %4970 = call float @dx.op.binary.f32(i32 36, float %4732, float %4933)  ; FMin(a,b)
  %4971 = fmul fast float %4970, %4744
  %4972 = fsub fast float 1.000000e+00, %4971
  %4973 = bitcast float %4972 to i32
  %4974 = sub nsw i32 2129859010, %4973
  %4975 = bitcast i32 %4974 to float
  %4976 = fmul fast float %4929, %4743
  %4977 = fmul fast float %4976, %4963
  %4978 = fmul fast float %4930, %4743
  %4979 = fmul fast float %4978, %4969
  %4980 = fmul fast float %4931, %4743
  %4981 = fmul fast float %4980, %4975
  %4982 = call float @dx.op.dot3.f32(i32 55, float %4953, float %4955, float %4957, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4983 = select i1 %233, float 0.000000e+00, float %4953
  %4984 = select i1 %233, float %4982, float %4955
  %4985 = select i1 %233, float 0.000000e+00, float %4957
  %4986 = call float @dx.op.dot3.f32(i32 55, float %4977, float %4979, float %4981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4987 = select i1 %233, float 0.000000e+00, float %4977
  %4988 = select i1 %233, float %4986, float %4979
  %4989 = select i1 %233, float 0.000000e+00, float %4981
  %4990 = fmul fast float %4734, 9.843750e-01
  %4991 = fmul fast float %4730, 9.843750e-01
  %4992 = fadd fast float %4990, 7.812500e-03
  %4993 = fadd fast float %4991, 7.812500e-03
  %4994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %30, float %4992, float %4993, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4995 = extractvalue %dx.types.ResRet.f32 %4994, 2
  %4996 = extractvalue %dx.types.ResRet.f32 %4994, 3
  %4997 = fmul fast float %4995, %4721
  %4998 = fmul fast float %4995, %4722
  %4999 = fmul fast float %4995, %4732
  %5000 = fadd fast float %4997, %4996
  %5001 = fadd fast float %4998, %4996
  %5002 = fadd fast float %4999, %4996
  %5003 = fcmp fast ogt float %3817, 0.000000e+00
  br i1 %5003, label %5004, label %5030

; <label>:5004                                    ; preds = %4904
  %5005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %30, float %3817, float %4734, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5006 = extractvalue %dx.types.ResRet.f32 %5005, 0
  %5007 = extractvalue %dx.types.ResRet.f32 %5005, 1
  %5008 = extractvalue %dx.types.ResRet.f32 %5005, 2
  %5009 = fadd fast float %5006, -5.000000e-01
  %5010 = fadd fast float %5007, -5.000000e-01
  %5011 = fadd fast float %5008, -5.000000e-01
  %5012 = fsub fast float 1.000000e+00, %4721
  %5013 = fsub fast float 1.000000e+00, %4722
  %5014 = fsub fast float 1.000000e+00, %4732
  %5015 = fmul fast float %4721, 4.000000e+00
  %5016 = fmul fast float %5015, %5012
  %5017 = fmul fast float %5016, %5009
  %5018 = fmul fast float %4722, 4.000000e+00
  %5019 = fmul fast float %5018, %5013
  %5020 = fmul fast float %5019, %5010
  %5021 = fmul fast float %4732, 4.000000e+00
  %5022 = fmul fast float %5021, %5014
  %5023 = fmul fast float %5022, %5011
  %5024 = fadd fast float %5017, %5000
  %5025 = fadd fast float %5020, %5001
  %5026 = fadd fast float %5023, %5002
  %5027 = call float @dx.op.unary.f32(i32 7, float %5024)  ; Saturate(value)
  %5028 = call float @dx.op.unary.f32(i32 7, float %5025)  ; Saturate(value)
  %5029 = call float @dx.op.unary.f32(i32 7, float %5026)  ; Saturate(value)
  br label %5030

; <label>:5030                                    ; preds = %5004, %4904
  %5031 = phi float [ %5027, %5004 ], [ %5000, %4904 ]
  %5032 = phi float [ %5028, %5004 ], [ %5001, %4904 ]
  %5033 = phi float [ %5029, %5004 ], [ %5002, %4904 ]
  %5034 = call float @dx.op.binary.f32(i32 35, float %5032, float %5033)  ; FMax(a,b)
  %5035 = call float @dx.op.binary.f32(i32 35, float %5031, float %5034)  ; FMax(a,b)
  %5036 = fsub fast float 1.000000e+00, %5035
  %5037 = fmul fast float %5035, %4730
  %5038 = fadd fast float %5037, %4730
  %5039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5040 = extractvalue %dx.types.CBufRet.f32 %5039, 2
  %5041 = extractvalue %dx.types.CBufRet.f32 %5039, 3
  %5042 = fmul fast float %5038, %5040
  %5043 = fadd fast float %5042, %5041
  %5044 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5045 = fsub fast float 1.000000e+00, %4755
  %5046 = fadd fast float %5045, %5044
  %5047 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5048 = fcmp fast olt float %5047, 1.000000e+00
  br i1 %5048, label %5049, label %5486

; <label>:5049                                    ; preds = %5030
  %5050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5051 = extractvalue %dx.types.CBufRet.f32 %5050, 2
  %5052 = extractvalue %dx.types.CBufRet.f32 %5050, 3
  %5053 = fmul fast float %5051, %89
  %5054 = fmul fast float %5052, %90
  %5055 = fptoui float %5053 to i32
  %5056 = fptoui float %5054 to i32
  %5057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.f32 %5057, 0
  %5059 = extractvalue %dx.types.CBufRet.f32 %5057, 2
  %5060 = extractvalue %dx.types.CBufRet.f32 %5057, 3
  %5061 = fadd fast float %82, -4.000000e+00
  %5062 = call float @dx.op.binary.f32(i32 35, float %5061, float 0.000000e+00)  ; FMax(a,b)
  %5063 = fadd fast float %5062, %5058
  %5064 = fmul fast float %5063, %5059
  %5065 = call float @dx.op.unary.f32(i32 23, float %5064)  ; Log(value)
  %5066 = fmul fast float %5065, %5060
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 2
  %5069 = fmul fast float %5066, %5068
  %5070 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5072 = extractvalue %dx.types.CBufRet.i32 %5071, 1
  %5073 = add i32 %5072, -1
  %5074 = uitofp i32 %5072 to float
  %5075 = fmul fast float %5074, %5070
  %5076 = fptoui float %5075 to i32
  %5077 = call i32 @dx.op.binary.i32(i32 40, i32 %5076, i32 %5073)  ; UMin(a,b)
  %5078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5079 = extractvalue %dx.types.CBufRet.i32 %5078, 2
  %5080 = extractvalue %dx.types.CBufRet.i32 %5078, 3
  %5081 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5056, i32 %5079, i32 %5055)  ; UMad(a,b,c)
  %5082 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5077, i32 %5080, i32 %5081)  ; UMad(a,b,c)
  %5083 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %5084 = fptoui float %5083 to i32
  %5085 = lshr i32 %5084, 5
  %5086 = call i32 @dx.op.binary.i32(i32 40, i32 %5085, i32 8191)  ; UMin(a,b)
  %5087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5088 = extractvalue %dx.types.CBufRet.i32 %5087, 2
  %5089 = add nsw i32 %5088, -1
  %5090 = call i32 @dx.op.binary.i32(i32 37, i32 %5089, i32 0)  ; IMax(a,b)
  %5091 = shl i32 %5086, 2
  %5092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5091, i32 undef)  ; BufferLoad(srv,index,wot)
  %5093 = extractvalue %dx.types.ResRet.i32 %5092, 0
  %5094 = lshr i32 %5093, 16
  %5095 = and i32 %5093, 65535
  %5096 = lshr i32 %5093, 21
  %5097 = lshr i32 %5095, 5
  %5098 = call i32 @dx.op.binary.i32(i32 40, i32 %5097, i32 %5090)  ; UMin(a,b)
  %5099 = icmp ugt i32 %5096, %5098
  br i1 %5099, label %5462, label %5100

; <label>:5100                                    ; preds = %5049
  br label %5101

; <label>:5101                                    ; preds = %5454, %5100
  %5102 = phi float [ %5455, %5454 ], [ 0.000000e+00, %5100 ]
  %5103 = phi float [ %5456, %5454 ], [ 0.000000e+00, %5100 ]
  %5104 = phi float [ %5457, %5454 ], [ 0.000000e+00, %5100 ]
  %5105 = phi float [ %5458, %5454 ], [ 1.000000e+00, %5100 ]
  %5106 = phi i32 [ %5459, %5454 ], [ %5096, %5100 ]
  %5107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5108 = extractvalue %dx.types.CBufRet.i32 %5107, 2
  %5109 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5082, i32 %5108, i32 %5106)  ; UMad(a,b,c)
  %5110 = shl i32 %5109, 2
  %5111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %5110, i32 undef)  ; BufferLoad(srv,index,wot)
  %5112 = extractvalue %dx.types.ResRet.i32 %5111, 0
  %5113 = shl i32 %5106, 5
  %5114 = sub nsw i32 %5094, %5113
  %5115 = call i32 @dx.op.binary.i32(i32 37, i32 %5114, i32 0)  ; IMax(a,b)
  %5116 = call i32 @dx.op.binary.i32(i32 38, i32 %5115, i32 31)  ; IMin(a,b)
  %5117 = sub nsw i32 1, %5094
  %5118 = add nsw i32 %5117, %5095
  %5119 = call i32 @dx.op.binary.i32(i32 37, i32 %5118, i32 0)  ; IMax(a,b)
  %5120 = call i32 @dx.op.binary.i32(i32 38, i32 %5119, i32 32)  ; IMin(a,b)
  %5121 = and i32 %5120, 31
  %5122 = shl i32 -1, %5121
  %5123 = xor i32 %5122, -1
  %5124 = and i32 %5116, 31
  %5125 = shl i32 %5123, %5124
  %5126 = icmp eq i32 %5120, 32
  %5127 = select i1 %5126, i32 -1, i32 %5125
  %5128 = and i32 %5127, %5112
  %5129 = icmp eq i32 %5128, 0
  br i1 %5129, label %5454, label %5130

; <label>:5130                                    ; preds = %5101
  br label %5131

; <label>:5131                                    ; preds = %5237, %5130
  %5132 = phi float [ %5238, %5237 ], [ %5102, %5130 ]
  %5133 = phi float [ %5239, %5237 ], [ %5103, %5130 ]
  %5134 = phi float [ %5240, %5237 ], [ %5104, %5130 ]
  %5135 = phi float [ %5241, %5237 ], [ %5105, %5130 ]
  %5136 = phi i32 [ %5141, %5237 ], [ %5128, %5130 ]
  %5137 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5136)  ; FirstbitLo(value)
  %5138 = add i32 %5137, %5113
  %5139 = and i32 %5137, 31
  %5140 = shl i32 1, %5139
  %5141 = xor i32 %5140, %5136
  %5142 = mul i32 %5138, 72
  %5143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5142, i32 undef)  ; BufferLoad(srv,index,wot)
  %5144 = extractvalue %dx.types.ResRet.f32 %5143, 0
  %5145 = extractvalue %dx.types.ResRet.f32 %5143, 1
  %5146 = extractvalue %dx.types.ResRet.f32 %5143, 2
  %5147 = add i32 %5142, 12
  %5148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %5147, i32 undef)  ; BufferLoad(srv,index,wot)
  %5149 = extractvalue %dx.types.ResRet.i32 %5148, 0
  %5150 = add i32 %5142, 16
  %5151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5150, i32 undef)  ; BufferLoad(srv,index,wot)
  %5152 = extractvalue %dx.types.ResRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.ResRet.f32 %5151, 1
  %5154 = extractvalue %dx.types.ResRet.f32 %5151, 2
  %5155 = add i32 %5142, 28
  %5156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5155, i32 undef)  ; BufferLoad(srv,index,wot)
  %5157 = extractvalue %dx.types.ResRet.f32 %5156, 0
  %5158 = add i32 %5142, 32
  %5159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5158, i32 undef)  ; BufferLoad(srv,index,wot)
  %5160 = extractvalue %dx.types.ResRet.f32 %5159, 0
  %5161 = extractvalue %dx.types.ResRet.f32 %5159, 1
  %5162 = extractvalue %dx.types.ResRet.f32 %5159, 2
  %5163 = extractvalue %dx.types.ResRet.f32 %5159, 3
  %5164 = add i32 %5142, 48
  %5165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5164, i32 undef)  ; BufferLoad(srv,index,wot)
  %5166 = extractvalue %dx.types.ResRet.f32 %5165, 0
  %5167 = extractvalue %dx.types.ResRet.f32 %5165, 1
  %5168 = add i32 %5142, 56
  %5169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5168, i32 undef)  ; BufferLoad(srv,index,wot)
  %5170 = extractvalue %dx.types.ResRet.f32 %5169, 0
  %5171 = extractvalue %dx.types.ResRet.f32 %5169, 1
  %5172 = add i32 %5142, 64
  %5173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5172, i32 undef)  ; BufferLoad(srv,index,wot)
  %5174 = extractvalue %dx.types.ResRet.f32 %5173, 0
  %5175 = extractvalue %dx.types.ResRet.f32 %5173, 1
  %5176 = mul i32 %5138, 60
  %5177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %5176, i32 undef)  ; BufferLoad(srv,index,wot)
  %5178 = extractvalue %dx.types.ResRet.f32 %5177, 0
  %5179 = extractvalue %dx.types.ResRet.f32 %5177, 1
  %5180 = extractvalue %dx.types.ResRet.f32 %5177, 2
  %5181 = add i32 %5176, 12
  %5182 = add i32 %5176, 48
  %5183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %5182, i32 undef)  ; BufferLoad(srv,index,wot)
  %5184 = extractvalue %dx.types.ResRet.f32 %5183, 0
  %5185 = extractvalue %dx.types.ResRet.f32 %5183, 1
  %5186 = extractvalue %dx.types.ResRet.f32 %5183, 2
  %5187 = and i32 %5149, 32767
  %5188 = bitcast float %5144 to i32
  %5189 = icmp eq i32 %5188, -1
  %5190 = bitcast float %5145 to i32
  %5191 = and i32 %5149, 32768
  %5192 = icmp ne i32 %5191, 0
  %5193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5194 = extractvalue %dx.types.CBufRet.f32 %5193, 0
  %5195 = extractvalue %dx.types.CBufRet.f32 %5193, 1
  %5196 = extractvalue %dx.types.CBufRet.f32 %5193, 2
  %5197 = fsub fast float %5178, %5194
  %5198 = fsub fast float %5179, %5195
  %5199 = fsub fast float %5180, %5196
  %5200 = fsub fast float %172, %5197
  %5201 = fsub fast float %173, %5198
  %5202 = fsub fast float %174, %5199
  %5203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %5181, i32 undef)  ; BufferLoad(srv,index,wot)
  %5204 = extractvalue %dx.types.ResRet.f32 %5203, 0
  %5205 = extractvalue %dx.types.ResRet.f32 %5203, 1
  %5206 = extractvalue %dx.types.ResRet.f32 %5203, 2
  %5207 = call float @dx.op.dot3.f32(i32 55, float %5200, float %5201, float %5202, float %5204, float %5205, float %5206)  ; Dot3(ax,ay,az,bx,by,bz)
  %5208 = add i32 %5176, 24
  %5209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %5208, i32 undef)  ; BufferLoad(srv,index,wot)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  %5211 = extractvalue %dx.types.ResRet.f32 %5209, 1
  %5212 = extractvalue %dx.types.ResRet.f32 %5209, 2
  %5213 = call float @dx.op.dot3.f32(i32 55, float %5200, float %5201, float %5202, float %5210, float %5211, float %5212)  ; Dot3(ax,ay,az,bx,by,bz)
  %5214 = add i32 %5176, 36
  %5215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %5214, i32 undef)  ; BufferLoad(srv,index,wot)
  %5216 = extractvalue %dx.types.ResRet.f32 %5215, 0
  %5217 = extractvalue %dx.types.ResRet.f32 %5215, 1
  %5218 = extractvalue %dx.types.ResRet.f32 %5215, 2
  %5219 = call float @dx.op.dot3.f32(i32 55, float %5200, float %5201, float %5202, float %5216, float %5217, float %5218)  ; Dot3(ax,ay,az,bx,by,bz)
  %5220 = call float @dx.op.unary.f32(i32 6, float %5207)  ; FAbs(value)
  %5221 = call float @dx.op.unary.f32(i32 6, float %5213)  ; FAbs(value)
  %5222 = call float @dx.op.unary.f32(i32 6, float %5219)  ; FAbs(value)
  %5223 = fsub fast float %5184, %5220
  %5224 = fsub fast float %5185, %5221
  %5225 = fsub fast float %5186, %5222
  %5226 = fmul fast float %5223, %5152
  %5227 = fmul fast float %5224, %5153
  %5228 = fmul fast float %5225, %5154
  %5229 = call float @dx.op.binary.f32(i32 36, float %5227, float %5228)  ; FMin(a,b)
  %5230 = call float @dx.op.binary.f32(i32 36, float %5226, float %5229)  ; FMin(a,b)
  %5231 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5232 = call float @dx.op.binary.f32(i32 36, float %5135, float %5231)  ; FMin(a,b)
  %5233 = uitofp i1 %5192 to float
  %5234 = fsub fast float 1.000000e+00, %5233
  %5235 = fmul fast float %5232, %5234
  %5236 = fcmp fast ogt float %5235, 0.000000e+00
  br i1 %5236, label %5243, label %5237

; <label>:5237                                    ; preds = %5385, %5131
  %5238 = phi float [ %5449, %5385 ], [ %5132, %5131 ]
  %5239 = phi float [ %5450, %5385 ], [ %5133, %5131 ]
  %5240 = phi float [ %5451, %5385 ], [ %5134, %5131 ]
  %5241 = phi float [ %5452, %5385 ], [ %5135, %5131 ]
  %5242 = icmp eq i32 %5136, %5140
  br i1 %5242, label %5453, label %5131

; <label>:5243                                    ; preds = %5131
  br i1 %5189, label %5301, label %5244

; <label>:5244                                    ; preds = %5243
  %5245 = fsub fast float -0.000000e+00, %5204
  %5246 = fsub fast float -0.000000e+00, %5205
  %5247 = fsub fast float -0.000000e+00, %5206
  %5248 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4741, float %4742, float %5245, float %5246, float %5247)  ; Dot3(ax,ay,az,bx,by,bz)
  %5249 = fsub fast float -0.000000e+00, %5248
  %5250 = call float @dx.op.dot3.f32(i32 55, float %5200, float %5201, float %5202, float %5245, float %5246, float %5247)  ; Dot3(ax,ay,az,bx,by,bz)
  %5251 = fadd fast float %5250, %5167
  %5252 = fadd fast float %5166, %5250
  %5253 = fsub fast float -0.000000e+00, %5252
  %5254 = fcmp ogt float %5248, -0.000000e+00
  %5255 = select i1 %5254, float %5253, float %5251
  %5256 = call float @dx.op.unary.f32(i32 6, float %5249)  ; FAbs(value)
  %5257 = fdiv fast float 1.000000e+00, %5256
  %5258 = fmul fast float %5255, %5257
  %5259 = call float @dx.op.binary.f32(i32 35, float %5258, float 0.000000e+00)  ; FMax(a,b)
  %5260 = fsub fast float -0.000000e+00, %5210
  %5261 = fsub fast float -0.000000e+00, %5211
  %5262 = fsub fast float -0.000000e+00, %5212
  %5263 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4741, float %4742, float %5260, float %5261, float %5262)  ; Dot3(ax,ay,az,bx,by,bz)
  %5264 = fsub fast float -0.000000e+00, %5263
  %5265 = call float @dx.op.dot3.f32(i32 55, float %5200, float %5201, float %5202, float %5260, float %5261, float %5262)  ; Dot3(ax,ay,az,bx,by,bz)
  %5266 = fadd fast float %5265, %5171
  %5267 = fadd fast float %5170, %5265
  %5268 = fsub fast float -0.000000e+00, %5267
  %5269 = fcmp ogt float %5263, -0.000000e+00
  %5270 = select i1 %5269, float %5268, float %5266
  %5271 = call float @dx.op.unary.f32(i32 6, float %5264)  ; FAbs(value)
  %5272 = fdiv fast float 1.000000e+00, %5271
  %5273 = fmul fast float %5270, %5272
  %5274 = call float @dx.op.binary.f32(i32 35, float %5273, float 0.000000e+00)  ; FMax(a,b)
  %5275 = fsub fast float -0.000000e+00, %5216
  %5276 = fsub fast float -0.000000e+00, %5217
  %5277 = fsub fast float -0.000000e+00, %5218
  %5278 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4741, float %4742, float %5275, float %5276, float %5277)  ; Dot3(ax,ay,az,bx,by,bz)
  %5279 = fsub fast float -0.000000e+00, %5278
  %5280 = call float @dx.op.dot3.f32(i32 55, float %5200, float %5201, float %5202, float %5275, float %5276, float %5277)  ; Dot3(ax,ay,az,bx,by,bz)
  %5281 = fadd fast float %5280, %5175
  %5282 = fadd fast float %5174, %5280
  %5283 = fsub fast float -0.000000e+00, %5282
  %5284 = fcmp ogt float %5278, -0.000000e+00
  %5285 = select i1 %5284, float %5283, float %5281
  %5286 = call float @dx.op.unary.f32(i32 6, float %5279)  ; FAbs(value)
  %5287 = fdiv fast float 1.000000e+00, %5286
  %5288 = fmul fast float %5285, %5287
  %5289 = call float @dx.op.binary.f32(i32 35, float %5288, float 0.000000e+00)  ; FMax(a,b)
  %5290 = call float @dx.op.binary.f32(i32 36, float %5274, float %5289)  ; FMin(a,b)
  %5291 = call float @dx.op.binary.f32(i32 36, float %5259, float %5290)  ; FMin(a,b)
  %5292 = fmul fast float %5291, %4740
  %5293 = fmul fast float %5291, %4741
  %5294 = fmul fast float %5291, %4742
  %5295 = fadd fast float %5292, %172
  %5296 = fadd fast float %5293, %173
  %5297 = fadd fast float %5294, %174
  %5298 = fsub fast float %5295, %5144
  %5299 = fsub fast float %5296, %5145
  %5300 = fsub fast float %5297, %5146
  br label %5308

; <label>:5301                                    ; preds = %5243
  %5302 = fmul fast float %4740, 8.096000e+03
  %5303 = fmul fast float %4741, 8.096000e+03
  %5304 = fmul fast float %4742, 8.096000e+03
  %5305 = fadd fast float %5302, %172
  %5306 = fadd fast float %5303, %173
  %5307 = fadd fast float %5304, %174
  br label %5308

; <label>:5308                                    ; preds = %5301, %5244
  %5309 = phi float [ %4740, %5301 ], [ %5298, %5244 ]
  %5310 = phi float [ %4741, %5301 ], [ %5299, %5244 ]
  %5311 = phi float [ %4742, %5301 ], [ %5300, %5244 ]
  %5312 = phi float [ %5305, %5301 ], [ %5295, %5244 ]
  %5313 = phi float [ %5306, %5301 ], [ %5296, %5244 ]
  %5314 = phi float [ %5307, %5301 ], [ %5297, %5244 ]
  %5315 = fcmp fast olt float %5163, 1.000000e+00
  br i1 %5315, label %5316, label %5347, !dx.controlflow.hints !76

; <label>:5316                                    ; preds = %5308
  %5317 = fmul fast float %5311, %5161
  %5318 = fmul fast float %5310, %5162
  %5319 = fsub fast float %5317, %5318
  %5320 = fmul fast float %5309, %5162
  %5321 = fmul fast float %5311, %5160
  %5322 = fsub fast float %5320, %5321
  %5323 = fmul fast float %5310, %5160
  %5324 = fmul fast float %5309, %5161
  %5325 = fsub fast float %5323, %5324
  %5326 = fmul fast float %5319, 2.000000e+00
  %5327 = fmul fast float %5322, 2.000000e+00
  %5328 = fmul fast float %5325, 2.000000e+00
  %5329 = fmul fast float %5326, %5163
  %5330 = fmul fast float %5327, %5163
  %5331 = fmul fast float %5328, %5163
  %5332 = fmul fast float %5328, %5161
  %5333 = fmul fast float %5327, %5162
  %5334 = fmul fast float %5326, %5162
  %5335 = fmul fast float %5328, %5160
  %5336 = fmul fast float %5327, %5160
  %5337 = fmul fast float %5326, %5161
  %5338 = fadd fast float %5332, %5309
  %5339 = fadd fast float %5338, %5329
  %5340 = fsub fast float %5339, %5333
  %5341 = fsub fast float %5310, %5335
  %5342 = fadd fast float %5341, %5330
  %5343 = fadd fast float %5342, %5334
  %5344 = fadd fast float %5331, %5311
  %5345 = fsub fast float %5344, %5337
  %5346 = fadd fast float %5345, %5336
  br label %5347

; <label>:5347                                    ; preds = %5316, %5308
  %5348 = phi float [ %5340, %5316 ], [ %5309, %5308 ]
  %5349 = phi float [ %5343, %5316 ], [ %5310, %5308 ]
  %5350 = phi float [ %5346, %5316 ], [ %5311, %5308 ]
  br i1 %5189, label %5382, label %5351

; <label>:5351                                    ; preds = %5347
  %5352 = fmul fast float %4730, 0x400187C840000000
  %5353 = fadd fast float %5352, 0xC00EFC2120000000
  %5354 = fmul fast float %5353, %4730
  %5355 = fadd fast float %5354, 0x3FE5D16340000000
  %5356 = fmul fast float %5355, %4730
  %5357 = fadd fast float %5356, 1.000000e+00
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5359 = fsub fast float %5312, %172
  %5360 = fsub fast float %5313, %173
  %5361 = fsub fast float %5314, %174
  %5362 = fsub fast float %5312, %5144
  %5363 = fsub fast float %5313, %5145
  %5364 = fsub fast float %5314, %5146
  %5365 = call float @dx.op.dot3.f32(i32 55, float %5359, float %5360, float %5361, float %5359, float %5360, float %5361)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = call float @dx.op.dot3.f32(i32 55, float %5362, float %5363, float %5364, float %5362, float %5363, float %5364)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = fadd fast float %5366, 0x3EE4F8B580000000
  %5368 = fdiv fast float %5365, %5367
  %5369 = bitcast float %5368 to i32
  %5370 = ashr i32 %5369, 1
  %5371 = add nsw i32 %5370, 532487669
  %5372 = bitcast i32 %5371 to float
  %5373 = fmul fast float %5372, %5358
  %5374 = call float @dx.op.unary.f32(i32 7, float %5373)  ; Saturate(value)
  %5375 = fmul fast float %5374, 0x4009981AE0000000
  %5376 = fsub fast float 0x40111BBD80000000, %5375
  %5377 = fmul fast float %5376, %5374
  %5378 = fadd fast float %5377, 0xC0009F6020000000
  %5379 = fmul fast float %5378, %5374
  %5380 = fadd fast float %5379, 1.000000e+00
  %5381 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  br label %5385

; <label>:5382                                    ; preds = %5347
  %5383 = icmp ne i32 %5190, -1
  %5384 = zext i1 %5383 to i32
  br label %5385

; <label>:5385                                    ; preds = %5382, %5351
  %5386 = phi float [ %4730, %5382 ], [ %5381, %5351 ]
  %5387 = phi i32 [ %5384, %5382 ], [ 0, %5351 ]
  %5388 = fmul float %5386, 5.000000e+00
  %5389 = fsub float 5.000000e+00, %5388
  %5390 = icmp ne i32 %5387, 0
  %5391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5392 = extractvalue %dx.types.CBufRet.f32 %5391, 3
  %5393 = fadd fast float %5392, %5389
  %5394 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5393)  ; FMax(a,b)
  %5395 = call float @dx.op.unary.f32(i32 6, float %5348)  ; FAbs(value)
  %5396 = call float @dx.op.unary.f32(i32 6, float %5349)  ; FAbs(value)
  %5397 = fadd fast float %5396, %5395
  %5398 = call float @dx.op.unary.f32(i32 6, float %5350)  ; FAbs(value)
  %5399 = fadd fast float %5397, %5398
  %5400 = fcmp fast oeq float %5399, 0.000000e+00
  %5401 = fdiv fast float 1.000000e+00, %5399
  %5402 = select i1 %5400, float 1.000000e+00, float %5401
  %5403 = fmul fast float %5402, %5348
  %5404 = fmul fast float %5402, %5349
  %5405 = call float @dx.op.unary.f32(i32 6, float %5404)  ; FAbs(value)
  %5406 = call float @dx.op.unary.f32(i32 6, float %5403)  ; FAbs(value)
  %5407 = fsub fast float 1.000000e+00, %5405
  %5408 = fsub fast float 1.000000e+00, %5406
  %5409 = fcmp fast oge float %5403, 0.000000e+00
  %5410 = fcmp fast oge float %5404, 0.000000e+00
  %5411 = select i1 %5409, float 1.000000e+00, float -1.000000e+00
  %5412 = select i1 %5410, float 1.000000e+00, float -1.000000e+00
  %5413 = fcmp fast ole float %5350, 0.000000e+00
  %5414 = fmul fast float %5411, %5407
  %5415 = fmul fast float %5412, %5408
  %5416 = select i1 %5413, float %5414, float %5403
  %5417 = select i1 %5413, float %5415, float %5404
  %5418 = fmul fast float %5416, 5.000000e-01
  %5419 = fmul fast float %5417, 5.000000e-01
  %5420 = fadd fast float %5418, 5.000000e-01
  %5421 = fadd fast float %5419, 5.000000e-01
  %5422 = uitofp i32 %5187 to float
  %5423 = call float @dx.op.binary.f32(i32 36, float %5394, float 3.000000e+00)  ; FMin(a,b)
  %5424 = fadd fast float %5423, 2.000000e+00
  %5425 = call float @dx.op.unary.f32(i32 21, float %5424)  ; Exp(value)
  %5426 = extractvalue %dx.types.CBufRet.f32 %5391, 1
  %5427 = fmul fast float %5426, %5425
  %5428 = fmul fast float %5427, 2.000000e+00
  %5429 = fsub fast float 1.000000e+00, %5428
  %5430 = fmul fast float %5420, %5429
  %5431 = fmul fast float %5421, %5429
  %5432 = fadd fast float %5430, %5427
  %5433 = fadd fast float %5431, %5427
  %5434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %29, float %5432, float %5433, float %5422, float undef, i32 0, i32 0, i32 undef, float %5394)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 0
  %5436 = extractvalue %dx.types.ResRet.f32 %5434, 1
  %5437 = extractvalue %dx.types.ResRet.f32 %5434, 2
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 3
  %5440 = fmul fast float %5439, %5157
  %5441 = call float @dx.op.binary.f32(i32 36, float %4757, float %5440)  ; FMin(a,b)
  %5442 = select i1 %5390, float %5441, float %5440
  %5443 = fmul fast float %5435, %5235
  %5444 = fmul fast float %5443, %5442
  %5445 = fmul fast float %5436, %5235
  %5446 = fmul fast float %5445, %5442
  %5447 = fmul fast float %5437, %5235
  %5448 = fmul fast float %5447, %5442
  %5449 = fadd fast float %5444, %5132
  %5450 = fadd fast float %5446, %5133
  %5451 = fadd fast float %5448, %5134
  %5452 = fsub fast float %5135, %5235
  br label %5237

; <label>:5453                                    ; preds = %5237
  br label %5454

; <label>:5454                                    ; preds = %5453, %5101
  %5455 = phi float [ %5102, %5101 ], [ %5238, %5453 ]
  %5456 = phi float [ %5103, %5101 ], [ %5239, %5453 ]
  %5457 = phi float [ %5104, %5101 ], [ %5240, %5453 ]
  %5458 = phi float [ %5105, %5101 ], [ %5241, %5453 ]
  %5459 = add i32 %5106, 1
  %5460 = icmp ugt i32 %5459, %5098
  br i1 %5460, label %5461, label %5101, !llvm.loop !77

; <label>:5461                                    ; preds = %5454
  br label %5462

; <label>:5462                                    ; preds = %5461, %5049
  %5463 = phi float [ 0.000000e+00, %5049 ], [ %5455, %5461 ]
  %5464 = phi float [ 0.000000e+00, %5049 ], [ %5456, %5461 ]
  %5465 = phi float [ 0.000000e+00, %5049 ], [ %5457, %5461 ]
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %5465, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = select i1 %233, float 0.000000e+00, float %5463
  %5468 = select i1 %233, float %5466, float %5464
  %5469 = select i1 %233, float 0.000000e+00, float %5465
  %5470 = fcmp fast olt float %5047, 0.000000e+00
  %5471 = call float @dx.op.unary.f32(i32 6, float %5047)  ; FAbs(value)
  %5472 = fmul fast float %5471, %4987
  %5473 = fmul fast float %5471, %4988
  %5474 = fmul fast float %5471, %4989
  %5475 = select i1 %5470, float %4987, float %5472
  %5476 = select i1 %5470, float %4988, float %5473
  %5477 = select i1 %5470, float %4989, float %5474
  %5478 = fsub fast float 1.000000e+00, %5471
  %5479 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5480 = fmul fast float %5479, %5467
  %5481 = fmul fast float %5479, %5468
  %5482 = fmul fast float %5479, %5469
  %5483 = fadd fast float %5475, %5480
  %5484 = fadd fast float %5476, %5481
  %5485 = fadd fast float %5477, %5482
  br label %5486

; <label>:5486                                    ; preds = %5462, %5030
  %5487 = phi float [ %4987, %5030 ], [ %5483, %5462 ]
  %5488 = phi float [ %4988, %5030 ], [ %5484, %5462 ]
  %5489 = phi float [ %4989, %5030 ], [ %5485, %5462 ]
  %5490 = call float @dx.op.dot3.f32(i32 55, float %4727, float %4728, float %4729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = fcmp fast ogt float %5490, 0x3E7FF19E20000000
  %5492 = fdiv fast float 1.000000e+00, %5490
  %5493 = select i1 %5491, float %5492, float 0.000000e+00
  %5494 = fmul fast float %5493, %4727
  %5495 = fmul fast float %5493, %4728
  %5496 = fmul fast float %5493, %4729
  %5497 = fadd fast float %5494, -1.000000e+00
  %5498 = fadd fast float %5495, -1.000000e+00
  %5499 = fadd fast float %5496, -1.000000e+00
  %5500 = fmul fast float %5497, 5.000000e-01
  %5501 = fmul fast float %5498, 5.000000e-01
  %5502 = fmul fast float %5499, 5.000000e-01
  %5503 = fadd fast float %5500, 1.000000e+00
  %5504 = fadd fast float %5501, 1.000000e+00
  %5505 = fadd fast float %5502, 1.000000e+00
  %5506 = fmul fast float %5487, %5031
  %5507 = fmul fast float %5488, %5032
  %5508 = fmul fast float %5489, %5033
  %5509 = fsub fast float 1.000000e+00, %4734
  %5510 = bitcast float %5509 to i32
  %5511 = sitofp i32 %5510 to float
  %5512 = fmul fast float %5511, 5.000000e+00
  %5513 = fadd fast float %5512, 0xC1EFBF8940000000
  %5514 = fptosi float %5513 to i32
  %5515 = bitcast i32 %5514 to float
  %5516 = fmul fast float %5515, %3818
  %5517 = fmul fast float %4983, %5516
  %5518 = fmul fast float %5517, %5036
  %5519 = fmul fast float %5518, %5503
  %5520 = fmul fast float %4984, %5516
  %5521 = fmul fast float %5520, %5036
  %5522 = fmul fast float %5521, %5504
  %5523 = fmul fast float %4985, %5516
  %5524 = fmul fast float %5523, %5036
  %5525 = fmul fast float %5524, %5505
  %5526 = fmul fast float %4985, %3814
  %5527 = fmul fast float %5526, %5036
  %5528 = fadd fast float %5506, %3810
  %5529 = fadd fast float %5528, %5519
  %5530 = fmul fast float %5529, %3814
  %5531 = fadd fast float %5507, %3811
  %5532 = fadd fast float %5531, %5522
  %5533 = fmul fast float %5532, %3814
  %5534 = fadd fast float %5508, %3812
  %5535 = fadd fast float %5534, %5525
  %5536 = fmul fast float %5535, %3814
  %5537 = fmul fast float %3814, %3814
  %5538 = fsub fast float 1.000000e+00, %5537
  %5539 = call float @dx.op.dot3.f32(i32 55, float %5538, float %5538, float %5538, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = fsub fast float 1.000000e+00, %5539
  %5541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5542 = extractvalue %dx.types.CBufRet.f32 %5541, 0
  %5543 = fmul fast float %5542, %5509
  %5544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5545 = extractvalue %dx.types.CBufRet.f32 %5544, 3
  %5546 = fsub fast float 1.000000e+00, %3822
  %5547 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5548 = fadd fast float %5527, %3820
  %5549 = fmul fast float %5548, %3822
  %5550 = fmul fast float %5547, %5545
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 3
  %5553 = fmul fast float %4727, %3814
  %5554 = fmul fast float %5553, %4983
  %5555 = fmul fast float %5554, %5036
  %5556 = fmul fast float %4728, %3814
  %5557 = fmul fast float %5556, %4984
  %5558 = fmul fast float %5557, %5036
  %5559 = fmul fast float %5527, %4729
  %5560 = fcmp fast ogt float %82, %194
  %5561 = and i1 %5560, %3861
  %5562 = or i1 %3940, %5561
  %5563 = icmp eq i32 %3860, 2
  %5564 = fcmp fast ole float %82, %194
  %5565 = and i1 %5564, %5563
  %5566 = or i1 %5565, %5562
  br i1 %5561, label %5567, label %5824

; <label>:5567                                    ; preds = %5486
  %5568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5569 = extractvalue %dx.types.CBufRet.f32 %5568, 2
  %5570 = extractvalue %dx.types.CBufRet.f32 %5568, 3
  %5571 = fmul fast float %5569, %89
  %5572 = fmul fast float %5570, %90
  %5573 = call float @dx.op.unary.f32(i32 7, float %5571)  ; Saturate(value)
  %5574 = call float @dx.op.unary.f32(i32 7, float %5572)  ; Saturate(value)
  %5575 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %30, float %5573, float %5574, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5576 = extractvalue %dx.types.ResRet.f32 %5575, 0
  %5577 = extractvalue %dx.types.ResRet.f32 %5575, 1
  %5578 = extractvalue %dx.types.ResRet.f32 %5575, 2
  %5579 = extractvalue %dx.types.ResRet.f32 %5575, 3
  %5580 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %30, float %5573, float %5574, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5581 = extractvalue %dx.types.ResRet.f32 %5580, 0
  %5582 = extractvalue %dx.types.ResRet.f32 %5580, 1
  %5583 = extractvalue %dx.types.ResRet.f32 %5580, 2
  %5584 = extractvalue %dx.types.ResRet.f32 %5580, 3
  %5585 = call float @dx.op.binary.f32(i32 35, float %5577, float %5578)  ; FMax(a,b)
  %5586 = call float @dx.op.binary.f32(i32 35, float %5576, float %5585)  ; FMax(a,b)
  %5587 = call float @dx.op.binary.f32(i32 35, float %5586, float %5579)  ; FMax(a,b)
  %5588 = call float @dx.op.binary.f32(i32 36, float %5582, float %5583)  ; FMin(a,b)
  %5589 = call float @dx.op.binary.f32(i32 36, float %5581, float %5588)  ; FMin(a,b)
  %5590 = call float @dx.op.binary.f32(i32 36, float %5589, float %5584)  ; FMin(a,b)
  %5591 = fmul fast float %5587, 2.550000e+02
  %5592 = fadd fast float %5591, 0x3F70101020000000
  %5593 = fptoui float %5592 to i32
  %5594 = fmul fast float %5590, 2.550000e+02
  %5595 = fadd fast float %5594, 0x3F70101020000000
  %5596 = fptoui float %5595 to i32
  %5597 = icmp ult i32 %5593, %5596
  br i1 %5597, label %5598, label %5766

; <label>:5598                                    ; preds = %5567
  %5599 = fcmp fast ogt float %81, 9.843750e-01
  %5600 = fadd fast float %82, -4.000000e+00
  %5601 = select i1 %5599, float -4.000000e+00, float %5600
  %5602 = call float @dx.op.binary.f32(i32 35, float %5601, float 0.000000e+00)  ; FMax(a,b)
  %5603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5604 = extractvalue %dx.types.CBufRet.f32 %5603, 0
  %5605 = fadd fast float %5604, %5602
  %5606 = extractvalue %dx.types.CBufRet.f32 %5603, 2
  %5607 = fmul fast float %5605, %5606
  %5608 = call float @dx.op.unary.f32(i32 23, float %5607)  ; Log(value)
  %5609 = extractvalue %dx.types.CBufRet.f32 %5603, 3
  %5610 = fmul fast float %5609, %5608
  %5611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5612 = extractvalue %dx.types.CBufRet.f32 %5611, 2
  %5613 = fmul fast float %5610, %5612
  %5614 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5615 = uitofp i32 %5593 to float
  %5616 = uitofp i32 %5596 to float
  %5617 = fadd fast float %5615, 5.000000e-01
  %5618 = fadd fast float %5616, 5.000000e-01
  %5619 = fmul fast float %5612, %5617
  %5620 = fmul fast float %5612, %5618
  %5621 = fadd fast float %5619, 0x3F0FFB4800000000
  %5622 = fadd fast float %5620, 0xBF0FFB4800000000
  %5623 = call float @dx.op.binary.f32(i32 35, float %5614, float %5621)  ; FMax(a,b)
  %5624 = call float @dx.op.binary.f32(i32 36, float %5623, float %5622)  ; FMin(a,b)
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 1
  %5627 = extractvalue %dx.types.CBufRet.f32 %5625, 2
  %5628 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5629 = fmul fast float %5626, %5624
  %5630 = fadd fast float %5628, %5629
  %5631 = fadd fast float %5628, %5627
  %5632 = fsub fast float %5626, %5627
  %5633 = fadd fast float %5632, %5628
  %5634 = call float @dx.op.binary.f32(i32 35, float %5630, float %5631)  ; FMax(a,b)
  %5635 = call float @dx.op.binary.f32(i32 36, float %5634, float %5633)  ; FMin(a,b)
  %5636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %5573, float %5574, float %5635, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5637 = extractvalue %dx.types.ResRet.f32 %5636, 0
  %5638 = extractvalue %dx.types.ResRet.f32 %5636, 1
  %5639 = extractvalue %dx.types.ResRet.f32 %5636, 2
  %5640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5641 = extractvalue %dx.types.CBufRet.i32 %5640, 0
  %5642 = extractvalue %dx.types.CBufRet.i32 %5640, 1
  %5643 = uitofp i32 %5641 to float
  %5644 = uitofp i32 %5642 to float
  %5645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5646 = extractvalue %dx.types.CBufRet.f32 %5645, 0
  %5647 = extractvalue %dx.types.CBufRet.f32 %5645, 1
  %5648 = fmul fast float %5643, %5573
  %5649 = fmul fast float %5644, %5574
  %5650 = fadd fast float %5648, -5.000000e-01
  %5651 = fadd fast float %5649, -5.000000e-01
  %5652 = call float @dx.op.unary.f32(i32 22, float %5650)  ; Frc(value)
  %5653 = call float @dx.op.unary.f32(i32 22, float %5651)  ; Frc(value)
  %5654 = fmul fast float %5652, %5652
  %5655 = fmul fast float %5654, %5652
  %5656 = fsub fast float 3.000000e+00, %5652
  %5657 = fmul fast float %5654, %5656
  %5658 = fmul fast float %5652, 3.000000e+00
  %5659 = fmul fast float %5655, 3.000000e+00
  %5660 = fmul fast float %5654, 6.000000e+00
  %5661 = fsub fast float %5659, %5660
  %5662 = fadd fast float %5661, 4.000000e+00
  %5663 = fmul fast float %5662, 0x3FC5555560000000
  %5664 = fmul fast float %5655, -3.000000e+00
  %5665 = fadd fast float %5654, %5652
  %5666 = fmul fast float %5665, 3.000000e+00
  %5667 = fadd fast float %5664, 1.000000e+00
  %5668 = fadd fast float %5667, %5666
  %5669 = fmul fast float %5655, 0x3FC5555560000000
  %5670 = fmul fast float %5653, %5653
  %5671 = fmul fast float %5670, %5653
  %5672 = fsub fast float 3.000000e+00, %5653
  %5673 = fmul fast float %5670, %5672
  %5674 = fmul fast float %5653, 3.000000e+00
  %5675 = fmul fast float %5671, 3.000000e+00
  %5676 = fmul fast float %5670, 6.000000e+00
  %5677 = fsub fast float %5675, %5676
  %5678 = fadd fast float %5677, 4.000000e+00
  %5679 = fmul fast float %5678, 0x3FC5555560000000
  %5680 = fmul fast float %5671, -3.000000e+00
  %5681 = fadd fast float %5670, %5653
  %5682 = fmul fast float %5681, 3.000000e+00
  %5683 = fadd fast float %5680, 1.000000e+00
  %5684 = fadd fast float %5683, %5682
  %5685 = fmul fast float %5671, 0x3FC5555560000000
  %5686 = fadd fast float %5652, 1.000000e+00
  %5687 = fsub fast float 1.000000e+00, %5658
  %5688 = fadd fast float %5687, %5657
  %5689 = fadd fast float %5688, %5662
  %5690 = fmul fast float %5689, 0x3FC5555560000000
  %5691 = fdiv fast float %5663, %5690
  %5692 = fsub fast float %5686, %5691
  %5693 = fsub fast float 1.000000e+00, %5652
  %5694 = fadd fast float %5668, %5655
  %5695 = fmul fast float %5694, 0x3FC5555560000000
  %5696 = fdiv fast float %5669, %5695
  %5697 = fadd fast float %5693, %5696
  %5698 = fadd fast float %5653, 1.000000e+00
  %5699 = fsub fast float 1.000000e+00, %5674
  %5700 = fadd fast float %5699, %5673
  %5701 = fadd fast float %5700, %5678
  %5702 = fmul fast float %5701, 0x3FC5555560000000
  %5703 = fdiv fast float %5679, %5702
  %5704 = fsub fast float %5698, %5703
  %5705 = fsub fast float 1.000000e+00, %5653
  %5706 = fadd fast float %5684, %5671
  %5707 = fmul fast float %5706, 0x3FC5555560000000
  %5708 = fdiv fast float %5685, %5707
  %5709 = fadd fast float %5708, %5705
  %5710 = fmul fast float %5692, %5646
  %5711 = fsub fast float %5573, %5710
  %5712 = fmul fast float %5697, %5646
  %5713 = fadd fast float %5712, %5573
  %5714 = fmul fast float %5709, %5647
  %5715 = fadd fast float %5714, %5574
  %5716 = fmul fast float %5704, %5647
  %5717 = fsub fast float %5574, %5716
  %5718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5711, float %5717, float %5635, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5719 = extractvalue %dx.types.ResRet.f32 %5718, 0
  %5720 = extractvalue %dx.types.ResRet.f32 %5718, 1
  %5721 = extractvalue %dx.types.ResRet.f32 %5718, 2
  %5722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5713, float %5717, float %5635, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5723 = extractvalue %dx.types.ResRet.f32 %5722, 0
  %5724 = extractvalue %dx.types.ResRet.f32 %5722, 1
  %5725 = extractvalue %dx.types.ResRet.f32 %5722, 2
  %5726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5711, float %5715, float %5635, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5727 = extractvalue %dx.types.ResRet.f32 %5726, 0
  %5728 = extractvalue %dx.types.ResRet.f32 %5726, 1
  %5729 = extractvalue %dx.types.ResRet.f32 %5726, 2
  %5730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5713, float %5715, float %5635, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5731 = extractvalue %dx.types.ResRet.f32 %5730, 0
  %5732 = extractvalue %dx.types.ResRet.f32 %5730, 1
  %5733 = extractvalue %dx.types.ResRet.f32 %5730, 2
  %5734 = fsub fast float %5727, %5719
  %5735 = fsub fast float %5728, %5720
  %5736 = fsub fast float %5729, %5721
  %5737 = fmul fast float %5734, %5707
  %5738 = fmul fast float %5735, %5707
  %5739 = fmul fast float %5736, %5707
  %5740 = fadd fast float %5737, %5719
  %5741 = fadd fast float %5738, %5720
  %5742 = fadd fast float %5739, %5721
  %5743 = fsub fast float %5731, %5723
  %5744 = fsub fast float %5732, %5724
  %5745 = fsub fast float %5733, %5725
  %5746 = fmul fast float %5743, %5707
  %5747 = fmul fast float %5744, %5707
  %5748 = fmul fast float %5745, %5707
  %5749 = fsub fast float %5723, %5740
  %5750 = fadd fast float %5749, %5746
  %5751 = fsub fast float %5724, %5741
  %5752 = fadd fast float %5751, %5747
  %5753 = fsub fast float %5725, %5742
  %5754 = fadd fast float %5753, %5748
  %5755 = fmul fast float %5750, %5695
  %5756 = fmul fast float %5752, %5695
  %5757 = fmul fast float %5754, %5695
  %5758 = fadd fast float %5755, %5740
  %5759 = fadd fast float %5756, %5741
  %5760 = fadd fast float %5757, %5742
  %5761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5762 = extractvalue %dx.types.CBufRet.f32 %5761, 1
  %5763 = fmul fast float %5758, %5762
  %5764 = fmul fast float %5759, %5762
  %5765 = fmul fast float %5760, %5762
  br label %5766

; <label>:5766                                    ; preds = %5598, %5567
  %5767 = phi float [ %5637, %5598 ], [ 1.000000e+00, %5567 ]
  %5768 = phi float [ %5638, %5598 ], [ 1.000000e+00, %5567 ]
  %5769 = phi float [ %5639, %5598 ], [ 1.000000e+00, %5567 ]
  %5770 = phi float [ %5763, %5598 ], [ 0.000000e+00, %5567 ]
  %5771 = phi float [ %5764, %5598 ], [ 0.000000e+00, %5567 ]
  %5772 = phi float [ %5765, %5598 ], [ 0.000000e+00, %5567 ]
  %5773 = fmul fast float %5770, %5540
  %5774 = fmul fast float %5771, %5540
  %5775 = fmul fast float %5772, %5540
  %5776 = call float @dx.op.dot3.f32(i32 55, float %5767, float %5768, float %5769, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5777 = call float @dx.op.dot3.f32(i32 55, float %5773, float %5774, float %5775, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5778 = select i1 %233, float %5776, float %5767
  %5779 = select i1 %233, float %5776, float %5768
  %5780 = select i1 %233, float 1.000000e+00, float %5769
  %5781 = select i1 %233, float %5777, float %5773
  %5782 = select i1 %233, float 0.000000e+00, float %5774
  %5783 = select i1 %233, float 0.000000e+00, float %5775
  %5784 = fmul fast float %5778, %5555
  %5785 = fmul fast float %5779, %5558
  %5786 = fmul fast float %5780, %5559
  %5787 = fadd fast float %5784, %5781
  %5788 = fadd fast float %5785, %5782
  %5789 = fadd fast float %5783, %5786
  %5790 = fmul fast float %5778, %5530
  %5791 = fmul fast float %5779, %5533
  %5792 = fmul fast float %5780, %5536
  %5793 = fmul fast float %121, %5569
  %5794 = fmul fast float %123, %5570
  %5795 = fsub fast float 1.000000e+00, %5793
  %5796 = fsub fast float 1.000000e+00, %5794
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  %5799 = extractvalue %dx.types.CBufRet.f32 %5797, 1
  %5800 = extractvalue %dx.types.CBufRet.f32 %5797, 2
  %5801 = fmul fast float %5795, %5798
  %5802 = fmul fast float %5795, %5799
  %5803 = fmul fast float %5795, %5800
  %5804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5804, 0
  %5806 = extractvalue %dx.types.CBufRet.f32 %5804, 1
  %5807 = extractvalue %dx.types.CBufRet.f32 %5804, 2
  %5808 = fmul fast float %5796, %5805
  %5809 = fmul fast float %5796, %5806
  %5810 = fmul fast float %5796, %5807
  %5811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5812 = extractvalue %dx.types.CBufRet.f32 %5811, 0
  %5813 = extractvalue %dx.types.CBufRet.f32 %5811, 1
  %5814 = extractvalue %dx.types.CBufRet.f32 %5811, 2
  %5815 = fadd fast float %5808, %5812
  %5816 = fadd fast float %5815, %5801
  %5817 = fadd fast float %5809, %5813
  %5818 = fadd fast float %5817, %5802
  %5819 = fadd fast float %5810, %5814
  %5820 = fadd fast float %5819, %5803
  %5821 = fmul fast float %5816, %194
  %5822 = fmul fast float %5818, %194
  %5823 = fmul fast float %5820, %194
  br label %5824

; <label>:5824                                    ; preds = %5766, %5486
  %5825 = phi float [ %5821, %5766 ], [ %172, %5486 ]
  %5826 = phi float [ %5822, %5766 ], [ %173, %5486 ]
  %5827 = phi float [ %5823, %5766 ], [ %174, %5486 ]
  %5828 = phi float [ %194, %5766 ], [ %82, %5486 ]
  %5829 = phi float [ %5787, %5766 ], [ %5555, %5486 ]
  %5830 = phi float [ %5788, %5766 ], [ %5558, %5486 ]
  %5831 = phi float [ %5789, %5766 ], [ %5559, %5486 ]
  %5832 = phi float [ %5790, %5766 ], [ %5530, %5486 ]
  %5833 = phi float [ %5791, %5766 ], [ %5533, %5486 ]
  %5834 = phi float [ %5792, %5766 ], [ %5536, %5486 ]
  %5835 = phi float [ %5767, %5766 ], [ 1.000000e+00, %5486 ]
  br i1 %5566, label %6990, label %5836

; <label>:5836                                    ; preds = %5824
  %5837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5837, 0
  %5839 = extractvalue %dx.types.CBufRet.f32 %5837, 1
  %5840 = extractvalue %dx.types.CBufRet.f32 %5837, 2
  %5841 = extractvalue %dx.types.CBufRet.f32 %5837, 3
  %5842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5843 = extractvalue %dx.types.CBufRet.f32 %5842, 0
  %5844 = extractvalue %dx.types.CBufRet.f32 %5842, 1
  %5845 = extractvalue %dx.types.CBufRet.f32 %5842, 2
  %5846 = extractvalue %dx.types.CBufRet.f32 %5842, 3
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 0
  %5849 = extractvalue %dx.types.CBufRet.f32 %5847, 1
  %5850 = extractvalue %dx.types.CBufRet.f32 %5847, 2
  %5851 = extractvalue %dx.types.CBufRet.f32 %5847, 3
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5855 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5856 = extractvalue %dx.types.CBufRet.f32 %5852, 3
  %5857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.f32 %5857, 3
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 3
  %5861 = extractvalue %dx.types.CBufRet.f32 %5859, 0
  %5862 = extractvalue %dx.types.CBufRet.f32 %5859, 1
  %5863 = extractvalue %dx.types.CBufRet.f32 %5859, 2
  %5864 = fcmp fast olt float %5863, -5.000000e-01
  %5865 = call float @dx.op.dot3.f32(i32 55, float %5825, float %5826, float %5827, float %5825, float %5826, float %5827)  ; Dot3(ax,ay,az,bx,by,bz)
  %5866 = call float @dx.op.unary.f32(i32 25, float %5865)  ; Rsqrt(value)
  %5867 = fmul fast float %5866, %5865
  %5868 = fmul fast float %5866, %5825
  %5869 = fmul fast float %5866, %5826
  %5870 = fmul fast float %5866, %5827
  %5871 = fadd fast float %5867, %5841
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5868, float %5869, float %5870, float %5838, float %5839, float %5840)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.i32 %5873, 1
  %5875 = and i32 %5874, 1
  %5876 = icmp ne i32 %5875, 0
  %5877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5878 = extractvalue %dx.types.CBufRet.f32 %5877, 2
  %5879 = fcmp fast ogt float %5878, 0.000000e+00
  %5880 = and i1 %5876, %5879
  br i1 %5880, label %5881, label %6287, !dx.controlflow.hints !79

; <label>:5881                                    ; preds = %5836
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 3
  %5884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5884, 2
  %5886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5887 = extractvalue %dx.types.CBufRet.f32 %5886, 2
  %5888 = fsub fast float %5885, %5887
  %5889 = and i32 %5874, 2
  %5890 = extractvalue %dx.types.CBufRet.i32 %5873, 0
  %5891 = call i32 @dx.op.binary.i32(i32 40, i32 %5890, i32 3)  ; UMin(a,b)
  %5892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5892, 0
  %5894 = extractvalue %dx.types.CBufRet.f32 %5892, 1
  %5895 = extractvalue %dx.types.CBufRet.f32 %5886, 0
  %5896 = extractvalue %dx.types.CBufRet.f32 %5886, 1
  %5897 = fsub fast float %5893, %5895
  %5898 = fsub fast float %5894, %5896
  %5899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5900 = extractvalue %dx.types.CBufRet.f32 %5899, 0
  %5901 = fcmp fast ogt float %5900, 0.000000e+00
  %5902 = fsub fast float -0.000000e+00, %5897
  %5903 = fsub fast float -0.000000e+00, %5898
  %5904 = call float @dx.op.dot2.f32(i32 54, float %5868, float %5869, float %5868, float %5869)  ; Dot2(ax,ay,bx,by)
  %5905 = call float @dx.op.dot2.f32(i32 54, float %5868, float %5869, float %5902, float %5903)  ; Dot2(ax,ay,bx,by)
  %5906 = fmul fast float %5905, 2.000000e+00
  %5907 = call float @dx.op.dot2.f32(i32 54, float %5902, float %5903, float %5902, float %5903)  ; Dot2(ax,ay,bx,by)
  %5908 = fmul fast float %5900, %5900
  %5909 = fsub fast float %5907, %5908
  %5910 = fmul fast float %5906, %5906
  %5911 = fmul fast float %5904, 4.000000e+00
  %5912 = fmul fast float %5911, %5909
  %5913 = fsub fast float %5910, %5912
  %5914 = fcmp fast ogt float %5913, 0.000000e+00
  br i1 %5914, label %5915, label %5930

; <label>:5915                                    ; preds = %5881
  %5916 = fcmp fast ogt float %5906, 0.000000e+00
  %5917 = call float @dx.op.unary.f32(i32 24, float %5913)  ; Sqrt(value)
  %5918 = fsub fast float -0.000000e+00, %5917
  %5919 = select i1 %5916, float %5917, float %5918
  %5920 = fadd fast float %5919, %5906
  %5921 = fmul float %5920, -5.000000e-01
  %5922 = fdiv fast float %5921, %5904
  %5923 = call float @dx.op.binary.f32(i32 35, float %5922, float 0.000000e+00)  ; FMax(a,b)
  %5924 = call float @dx.op.binary.f32(i32 36, float %5867, float %5923)  ; FMin(a,b)
  %5925 = fdiv fast float %5909, %5921
  %5926 = call float @dx.op.binary.f32(i32 35, float %5925, float 0.000000e+00)  ; FMax(a,b)
  %5927 = call float @dx.op.binary.f32(i32 36, float %5867, float %5926)  ; FMin(a,b)
  %5928 = call float @dx.op.binary.f32(i32 36, float %5924, float %5927)  ; FMin(a,b)
  %5929 = call float @dx.op.binary.f32(i32 35, float %5924, float %5927)  ; FMax(a,b)
  br label %5930

; <label>:5930                                    ; preds = %5915, %5881
  %5931 = phi float [ %5929, %5915 ], [ -1.000000e+00, %5881 ]
  %5932 = phi float [ %5928, %5915 ], [ -1.000000e+00, %5881 ]
  %5933 = phi i1 [ true, %5915 ], [ false, %5881 ]
  %5934 = and i1 %5901, %5933
  br i1 %5934, label %5935, label %5937

; <label>:5935                                    ; preds = %5930
  %5936 = fcmp fast oeq float %5932, %5931
  br i1 %5936, label %6240, label %5938

; <label>:5937                                    ; preds = %5930
  br i1 %5901, label %6240, label %5938

; <label>:5938                                    ; preds = %5937, %5935
  %5939 = phi float [ %5867, %5937 ], [ %5931, %5935 ]
  %5940 = phi float [ 0.000000e+00, %5937 ], [ %5932, %5935 ]
  %5941 = icmp ne i32 %5889, 0
  %5942 = fmul fast float %5939, %5870
  %5943 = fadd fast float %5942, %5883
  %5944 = fmul fast float %5943, %5939
  %5945 = select i1 %5941, float 0.000000e+00, float %5944
  %5946 = fcmp fast oeq float %5870, 0.000000e+00
  %5947 = fdiv fast float %5888, %5870
  %5948 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5947)  ; FMax(a,b)
  %5949 = select i1 %5946, float %5939, float %5948
  %5950 = call float @dx.op.binary.f32(i32 36, float %5939, float %5949)  ; FMin(a,b)
  %5951 = fcmp fast ogt float %5870, 0.000000e+00
  %5952 = fcmp fast olt float %5888, 0.000000e+00
  br i1 %5951, label %5953, label %6010

; <label>:5953                                    ; preds = %5938
  %5954 = icmp eq i32 %5889, 0
  br i1 %5952, label %5955, label %5999

; <label>:5955                                    ; preds = %5953
  %5956 = select i1 %5954, float %5939, float 0.000000e+00
  %5957 = fsub fast float -0.000000e+00, %5956
  %5958 = call float @dx.op.unary.f32(i32 6, float %5957)  ; FAbs(value)
  %5959 = fmul fast float %5956, %5870
  %5960 = fadd fast float %5959, %5883
  %5961 = fmul fast float %5958, %5960
  %5962 = fsub fast float %5945, %5961
  %5963 = fsub fast float %5939, %5958
  %5964 = select i1 %5954, float %5963, float 0.000000e+00
  %5965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5966 = extractvalue %dx.types.CBufRet.f32 %5965, 0
  %5967 = extractvalue %dx.types.CBufRet.f32 %5965, 1
  %5968 = extractvalue %dx.types.CBufRet.f32 %5965, 2
  %5969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5970 = extractvalue %dx.types.CBufRet.f32 %5969, 0
  %5971 = extractvalue %dx.types.CBufRet.f32 %5969, 1
  %5972 = extractvalue %dx.types.CBufRet.f32 %5969, 2
  %5973 = extractvalue %dx.types.CBufRet.f32 %5969, 3
  %5974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5975 = extractvalue %dx.types.CBufRet.f32 %5974, 3
  %5976 = call float @dx.op.binary.f32(i32 36, float %5962, float %5975)  ; FMin(a,b)
  %5977 = fmul fast float %5973, %5964
  %5978 = call float @dx.op.unary.f32(i32 7, float %5977)  ; Saturate(value)
  %5979 = fsub fast float %5970, %5966
  %5980 = fsub fast float %5971, %5967
  %5981 = fsub fast float %5972, %5968
  %5982 = fmul fast float %5978, %5979
  %5983 = fmul fast float %5978, %5980
  %5984 = fmul fast float %5978, %5981
  %5985 = fadd fast float %5982, %5966
  %5986 = fadd fast float %5983, %5967
  %5987 = fadd fast float %5984, %5968
  %5988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5989 = extractvalue %dx.types.CBufRet.f32 %5988, 0
  %5990 = extractvalue %dx.types.CBufRet.f32 %5988, 1
  %5991 = fadd fast float %5990, %5989
  %5992 = call float @dx.op.unary.f32(i32 7, float %5991)  ; Saturate(value)
  %5993 = extractvalue %dx.types.CBufRet.f32 %5988, 2
  %5994 = extractvalue %dx.types.CBufRet.f32 %5988, 3
  %5995 = fadd fast float %5994, %5993
  %5996 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  %5997 = fmul fast float %5992, %5976
  %5998 = fmul fast float %5997, %5996
  br label %6240

; <label>:5999                                    ; preds = %5953
  br i1 %5954, label %6000, label %6021

; <label>:6000                                    ; preds = %5999
  %6001 = call float @dx.op.binary.f32(i32 36, float %5950, float %5940)  ; FMin(a,b)
  %6002 = fsub fast float %5950, %6001
  %6003 = fsub fast float %6002, %5939
  %6004 = call float @dx.op.unary.f32(i32 6, float %6003)  ; FAbs(value)
  %6005 = fadd fast float %6002, %5939
  %6006 = fmul fast float %6005, %5870
  %6007 = fadd fast float %6006, %5883
  %6008 = fmul fast float %6007, %6004
  %6009 = fsub fast float %5945, %6008
  br label %6021

; <label>:6010                                    ; preds = %5938
  br i1 %5952, label %6011, label %6021

; <label>:6011                                    ; preds = %6010
  %6012 = call float @dx.op.binary.f32(i32 35, float %5940, float %5950)  ; FMax(a,b)
  %6013 = icmp eq i32 %5889, 0
  %6014 = select i1 %6013, float %5950, float 0.000000e+00
  %6015 = fsub fast float -0.000000e+00, %6014
  %6016 = call float @dx.op.unary.f32(i32 6, float %6015)  ; FAbs(value)
  %6017 = fmul fast float %6014, %5870
  %6018 = fadd fast float %6017, %5883
  %6019 = fmul fast float %6016, %6018
  %6020 = fsub fast float %5945, %6019
  br label %6021

; <label>:6021                                    ; preds = %6011, %6010, %6000, %5999
  %6022 = phi float [ %5940, %5999 ], [ %5940, %6000 ], [ %6012, %6011 ], [ %5940, %6010 ]
  %6023 = phi float [ 0.000000e+00, %5999 ], [ %6004, %6000 ], [ %6016, %6011 ], [ 0.000000e+00, %6010 ]
  %6024 = phi float [ %5945, %5999 ], [ %6009, %6000 ], [ %6020, %6011 ], [ %5945, %6010 ]
  %6025 = phi float [ %5950, %5999 ], [ %5950, %6000 ], [ %5939, %6011 ], [ %5939, %6010 ]
  %6026 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 0
  store float -1.000000e+00, float* %6026, align 4, !tbaa !80, !noalias !84
  %6027 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 1
  store float -1.000000e+00, float* %6027, align 4, !tbaa !80, !noalias !84
  %6028 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 2
  store float -1.000000e+00, float* %6028, align 4, !tbaa !80, !noalias !84
  %6029 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 0
  store float -1.000000e+00, float* %6029, align 4, !tbaa !80, !noalias !84
  %6030 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 1
  store float -1.000000e+00, float* %6030, align 4, !tbaa !80, !noalias !84
  %6031 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 2
  store float -1.000000e+00, float* %6031, align 4, !tbaa !80, !noalias !84
  %6032 = icmp sgt i32 %5891, 0
  br i1 %6032, label %6033, label %6094

; <label>:6033                                    ; preds = %6021
  br label %6034

; <label>:6034                                    ; preds = %6083, %6033
  %6035 = phi i32 [ %6084, %6083 ], [ 0, %6033 ]
  %6036 = phi i32 [ %6085, %6083 ], [ 0, %6033 ]
  %6037 = add nuw i32 %6036, 171
  %6038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 %6037)  ; CBufferLoadLegacy(handle,regIndex)
  %6039 = extractvalue %dx.types.CBufRet.f32 %6038, 0
  %6040 = extractvalue %dx.types.CBufRet.f32 %6038, 1
  %6041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6042 = extractvalue %dx.types.CBufRet.f32 %6041, 0
  %6043 = extractvalue %dx.types.CBufRet.f32 %6041, 1
  %6044 = fsub fast float %6039, %6042
  %6045 = fsub fast float %6040, %6043
  %6046 = extractvalue %dx.types.CBufRet.f32 %6038, 2
  %6047 = fsub fast float -0.000000e+00, %6044
  %6048 = fsub fast float -0.000000e+00, %6045
  %6049 = call float @dx.op.dot2.f32(i32 54, float %5868, float %5869, float %6047, float %6048)  ; Dot2(ax,ay,bx,by)
  %6050 = fmul fast float %6049, 2.000000e+00
  %6051 = call float @dx.op.dot2.f32(i32 54, float %6047, float %6048, float %6047, float %6048)  ; Dot2(ax,ay,bx,by)
  %6052 = fmul fast float %6046, %6046
  %6053 = fsub fast float %6051, %6052
  %6054 = fmul fast float %6050, %6050
  %6055 = fmul fast float %5911, %6053
  %6056 = fsub fast float %6054, %6055
  %6057 = fcmp fast ogt float %6056, 0.000000e+00
  br i1 %6057, label %6058, label %6073

; <label>:6058                                    ; preds = %6034
  %6059 = fcmp fast ogt float %6050, 0.000000e+00
  %6060 = call float @dx.op.unary.f32(i32 24, float %6056)  ; Sqrt(value)
  %6061 = fsub fast float -0.000000e+00, %6060
  %6062 = select i1 %6059, float %6060, float %6061
  %6063 = fadd fast float %6062, %6050
  %6064 = fmul float %6063, -5.000000e-01
  %6065 = fdiv fast float %6064, %5904
  %6066 = call float @dx.op.binary.f32(i32 35, float %6065, float 0.000000e+00)  ; FMax(a,b)
  %6067 = call float @dx.op.binary.f32(i32 36, float %5939, float %6066)  ; FMin(a,b)
  %6068 = fdiv fast float %6053, %6064
  %6069 = call float @dx.op.binary.f32(i32 35, float %6068, float 0.000000e+00)  ; FMax(a,b)
  %6070 = call float @dx.op.binary.f32(i32 36, float %5939, float %6069)  ; FMin(a,b)
  %6071 = call float @dx.op.binary.f32(i32 36, float %6067, float %6070)  ; FMin(a,b)
  %6072 = call float @dx.op.binary.f32(i32 35, float %6067, float %6070)  ; FMax(a,b)
  br label %6073

; <label>:6073                                    ; preds = %6058, %6034
  %6074 = phi float [ %6072, %6058 ], [ -1.000000e+00, %6034 ]
  %6075 = phi float [ %6071, %6058 ], [ -1.000000e+00, %6034 ]
  %6076 = phi i1 [ true, %6058 ], [ false, %6034 ]
  br i1 %6076, label %6077, label %6083

; <label>:6077                                    ; preds = %6073
  %6078 = call float @dx.op.binary.f32(i32 35, float %6022, float %6075)  ; FMax(a,b)
  %6079 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 %6036
  store float %6078, float* %6079, align 4, !tbaa !80, !noalias !84
  %6080 = call float @dx.op.binary.f32(i32 35, float %6022, float %6074)  ; FMax(a,b)
  %6081 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %6036
  store float %6080, float* %6081, align 4, !tbaa !80, !noalias !84
  %6082 = add nsw i32 %6035, 1
  br label %6083

; <label>:6083                                    ; preds = %6077, %6073
  %6084 = phi i32 [ %6082, %6077 ], [ %6035, %6073 ]
  %6085 = add nuw nsw i32 %6036, 1
  %6086 = icmp eq i32 %6085, %5891
  br i1 %6086, label %6087, label %6034

; <label>:6087                                    ; preds = %6083
  %6088 = load float, float* %6028, align 4, !tbaa !80, !alias.scope !100, !noalias !103
  %6089 = load float, float* %6027, align 4, !tbaa !80, !alias.scope !106, !noalias !107
  %6090 = load float, float* %6026, align 4, !tbaa !80, !alias.scope !108, !noalias !109
  %6091 = load float, float* %6031, align 4, !tbaa !80, !alias.scope !110, !noalias !113
  %6092 = load float, float* %6030, align 4, !tbaa !80, !alias.scope !116, !noalias !117
  %6093 = load float, float* %6029, align 4, !tbaa !80, !alias.scope !118, !noalias !119
  br label %6094

; <label>:6094                                    ; preds = %6087, %6021
  %6095 = phi float [ -1.000000e+00, %6021 ], [ %6093, %6087 ]
  %6096 = phi float [ -1.000000e+00, %6021 ], [ %6092, %6087 ]
  %6097 = phi float [ -1.000000e+00, %6021 ], [ %6091, %6087 ]
  %6098 = phi float [ -1.000000e+00, %6021 ], [ %6090, %6087 ]
  %6099 = phi float [ -1.000000e+00, %6021 ], [ %6089, %6087 ]
  %6100 = phi float [ -1.000000e+00, %6021 ], [ %6088, %6087 ]
  %6101 = phi i32 [ 0, %6021 ], [ %6084, %6087 ]
  %6102 = call float @dx.op.binary.f32(i32 36, float %6099, float %6100)  ; FMin(a,b)
  %6103 = call float @dx.op.binary.f32(i32 36, float %6098, float %6102)  ; FMin(a,b)
  %6104 = call float @dx.op.binary.f32(i32 35, float %6098, float %6099)  ; FMax(a,b)
  %6105 = call float @dx.op.binary.f32(i32 36, float %6104, float %6100)  ; FMin(a,b)
  %6106 = call float @dx.op.binary.f32(i32 36, float %6098, float %6099)  ; FMin(a,b)
  %6107 = call float @dx.op.binary.f32(i32 35, float %6106, float %6105)  ; FMax(a,b)
  %6108 = call float @dx.op.binary.f32(i32 35, float %6099, float %6100)  ; FMax(a,b)
  %6109 = call float @dx.op.binary.f32(i32 35, float %6098, float %6108)  ; FMax(a,b)
  store float %6103, float* %6026, align 4, !tbaa !80, !alias.scope !108, !noalias !109
  store float %6107, float* %6027, align 4, !tbaa !80, !alias.scope !106, !noalias !107
  store float %6109, float* %6028, align 4, !tbaa !80, !alias.scope !100, !noalias !103
  %6110 = call float @dx.op.binary.f32(i32 36, float %6096, float %6097)  ; FMin(a,b)
  %6111 = call float @dx.op.binary.f32(i32 36, float %6095, float %6110)  ; FMin(a,b)
  %6112 = call float @dx.op.binary.f32(i32 35, float %6095, float %6096)  ; FMax(a,b)
  %6113 = call float @dx.op.binary.f32(i32 36, float %6112, float %6097)  ; FMin(a,b)
  %6114 = call float @dx.op.binary.f32(i32 36, float %6095, float %6096)  ; FMin(a,b)
  %6115 = call float @dx.op.binary.f32(i32 35, float %6114, float %6113)  ; FMax(a,b)
  %6116 = call float @dx.op.binary.f32(i32 35, float %6096, float %6097)  ; FMax(a,b)
  %6117 = call float @dx.op.binary.f32(i32 35, float %6095, float %6116)  ; FMax(a,b)
  store float %6111, float* %6029, align 4, !tbaa !80, !alias.scope !118, !noalias !119
  store float %6115, float* %6030, align 4, !tbaa !80, !alias.scope !116, !noalias !117
  store float %6117, float* %6031, align 4, !tbaa !80, !alias.scope !110, !noalias !113
  %6118 = sub nsw i32 3, %6101
  %6119 = icmp sgt i32 %6118, 2
  br i1 %6119, label %6120, label %6158

; <label>:6120                                    ; preds = %6094
  %6121 = icmp eq i32 %5889, 0
  %6122 = fsub fast float %5939, %6023
  %6123 = select i1 %6121, float %6122, float %6023
  %6124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6125 = extractvalue %dx.types.CBufRet.f32 %6124, 0
  %6126 = extractvalue %dx.types.CBufRet.f32 %6124, 1
  %6127 = extractvalue %dx.types.CBufRet.f32 %6124, 2
  %6128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6129 = extractvalue %dx.types.CBufRet.f32 %6128, 0
  %6130 = extractvalue %dx.types.CBufRet.f32 %6128, 1
  %6131 = extractvalue %dx.types.CBufRet.f32 %6128, 2
  %6132 = extractvalue %dx.types.CBufRet.f32 %6128, 3
  %6133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6134 = extractvalue %dx.types.CBufRet.f32 %6133, 3
  %6135 = call float @dx.op.binary.f32(i32 36, float %6024, float %6134)  ; FMin(a,b)
  %6136 = fmul fast float %6132, %6123
  %6137 = call float @dx.op.unary.f32(i32 7, float %6136)  ; Saturate(value)
  %6138 = fsub fast float %6129, %6125
  %6139 = fsub fast float %6130, %6126
  %6140 = fsub fast float %6131, %6127
  %6141 = fmul fast float %6137, %6138
  %6142 = fmul fast float %6137, %6139
  %6143 = fmul fast float %6137, %6140
  %6144 = fadd fast float %6141, %6125
  %6145 = fadd fast float %6142, %6126
  %6146 = fadd fast float %6143, %6127
  %6147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6148 = extractvalue %dx.types.CBufRet.f32 %6147, 0
  %6149 = extractvalue %dx.types.CBufRet.f32 %6147, 1
  %6150 = fadd fast float %6149, %6148
  %6151 = call float @dx.op.unary.f32(i32 7, float %6150)  ; Saturate(value)
  %6152 = extractvalue %dx.types.CBufRet.f32 %6147, 2
  %6153 = extractvalue %dx.types.CBufRet.f32 %6147, 3
  %6154 = fadd fast float %6153, %6152
  %6155 = call float @dx.op.unary.f32(i32 7, float %6154)  ; Saturate(value)
  %6156 = fmul fast float %6151, %6135
  %6157 = fmul fast float %6156, %6155
  br label %6240

; <label>:6158                                    ; preds = %6094
  %6159 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 %6118
  %6160 = load float, float* %6159, align 4, !tbaa !80, !noalias !84
  %6161 = fcmp fast olt float %6160, %6025
  %6162 = icmp sgt i32 %6101, 0
  %6163 = and i1 %6162, %6161
  br i1 %6163, label %6164, label %6201

; <label>:6164                                    ; preds = %6158
  br label %6165

; <label>:6165                                    ; preds = %6194, %6164
  %6166 = phi float [ %6195, %6194 ], [ %6023, %6164 ]
  %6167 = phi float [ %6196, %6194 ], [ %6024, %6164 ]
  %6168 = phi float [ %6176, %6194 ], [ %6160, %6164 ]
  %6169 = phi i32 [ %6173, %6194 ], [ %6118, %6164 ]
  %6170 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %6169
  %6171 = load float, float* %6170, align 4, !tbaa !80, !noalias !84
  %6172 = icmp slt i32 %6169, 2
  %6173 = add nsw i32 %6169, 1
  %6174 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 %6173
  %6175 = load float, float* %6174, align 4, !tbaa !80, !noalias !84
  %6176 = select i1 %6172, float %6175, float %5939
  %6177 = call float @dx.op.binary.f32(i32 36, float %6176, float %6171)  ; FMin(a,b)
  %6178 = call float @dx.op.binary.f32(i32 36, float %6025, float %6177)  ; FMin(a,b)
  %6179 = icmp eq i32 %5889, 0
  %6180 = fadd fast float %6178, %6168
  %6181 = fmul fast float %6180, %5870
  %6182 = fadd fast float %6181, %5883
  br i1 %6179, label %6188, label %6183

; <label>:6183                                    ; preds = %6165
  %6184 = fsub fast float %6178, %6168
  %6185 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6184)  ; FMax(a,b)
  %6186 = fmul fast float %6185, %6182
  %6187 = fadd fast float %6186, %6167
  br label %6194

; <label>:6188                                    ; preds = %6165
  %6189 = fsub fast float %6168, %6178
  %6190 = call float @dx.op.unary.f32(i32 6, float %6189)  ; FAbs(value)
  %6191 = fadd fast float %6190, %6166
  %6192 = fmul fast float %6190, %6182
  %6193 = fsub fast float %6167, %6192
  br label %6194

; <label>:6194                                    ; preds = %6188, %6183
  %6195 = phi float [ %6185, %6183 ], [ %6191, %6188 ]
  %6196 = phi float [ %6187, %6183 ], [ %6193, %6188 ]
  %6197 = fcmp fast olt float %6176, %6025
  %6198 = icmp slt i32 %6173, 3
  %6199 = and i1 %6198, %6197
  br i1 %6199, label %6165, label %6200

; <label>:6200                                    ; preds = %6194
  br label %6201

; <label>:6201                                    ; preds = %6200, %6158
  %6202 = phi float [ %6023, %6158 ], [ %6195, %6200 ]
  %6203 = phi float [ %6024, %6158 ], [ %6196, %6200 ]
  %6204 = fsub fast float %5939, %6202
  %6205 = select i1 %5941, float %6202, float %6204
  %6206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6207 = extractvalue %dx.types.CBufRet.f32 %6206, 0
  %6208 = extractvalue %dx.types.CBufRet.f32 %6206, 1
  %6209 = extractvalue %dx.types.CBufRet.f32 %6206, 2
  %6210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.CBufRet.f32 %6210, 1
  %6213 = extractvalue %dx.types.CBufRet.f32 %6210, 2
  %6214 = extractvalue %dx.types.CBufRet.f32 %6210, 3
  %6215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6216 = extractvalue %dx.types.CBufRet.f32 %6215, 3
  %6217 = call float @dx.op.binary.f32(i32 36, float %6203, float %6216)  ; FMin(a,b)
  %6218 = fmul fast float %6214, %6205
  %6219 = call float @dx.op.unary.f32(i32 7, float %6218)  ; Saturate(value)
  %6220 = fsub fast float %6211, %6207
  %6221 = fsub fast float %6212, %6208
  %6222 = fsub fast float %6213, %6209
  %6223 = fmul fast float %6219, %6220
  %6224 = fmul fast float %6219, %6221
  %6225 = fmul fast float %6219, %6222
  %6226 = fadd fast float %6223, %6207
  %6227 = fadd fast float %6224, %6208
  %6228 = fadd fast float %6225, %6209
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 0
  %6231 = extractvalue %dx.types.CBufRet.f32 %6229, 1
  %6232 = fadd fast float %6231, %6230
  %6233 = call float @dx.op.unary.f32(i32 7, float %6232)  ; Saturate(value)
  %6234 = extractvalue %dx.types.CBufRet.f32 %6229, 2
  %6235 = extractvalue %dx.types.CBufRet.f32 %6229, 3
  %6236 = fadd fast float %6235, %6234
  %6237 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6238 = fmul fast float %6233, %6217
  %6239 = fmul fast float %6238, %6237
  br label %6240

; <label>:6240                                    ; preds = %6201, %6120, %5955, %5937, %5935
  %6241 = phi float [ %5964, %5955 ], [ %6123, %6120 ], [ %6205, %6201 ], [ 0.000000e+00, %5935 ], [ 0.000000e+00, %5937 ]
  %6242 = phi float [ %5998, %5955 ], [ %6157, %6120 ], [ %6239, %6201 ], [ 0.000000e+00, %5935 ], [ 0.000000e+00, %5937 ]
  %6243 = phi float [ %5985, %5955 ], [ %6144, %6120 ], [ %6226, %6201 ], [ 0.000000e+00, %5935 ], [ 0.000000e+00, %5937 ]
  %6244 = phi float [ %5986, %5955 ], [ %6145, %6120 ], [ %6227, %6201 ], [ 0.000000e+00, %5935 ], [ 0.000000e+00, %5937 ]
  %6245 = phi float [ %5987, %5955 ], [ %6146, %6120 ], [ %6228, %6201 ], [ 0.000000e+00, %5935 ], [ 0.000000e+00, %5937 ]
  %6246 = fmul fast float %5878, %6242
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 2
  %6249 = fsub fast float %5885, %6248
  %6250 = fcmp fast olt float %6246, -2.000000e+01
  %6251 = call float @dx.op.unary.f32(i32 21, float %6246)  ; Exp(value)
  %6252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6253 = extractvalue %dx.types.CBufRet.f32 %6252, 2
  %6254 = extractvalue %dx.types.CBufRet.f32 %6252, 3
  %6255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.f32 %6255, 2
  %6257 = fmul fast float %6254, %6249
  %6258 = call float @dx.op.unary.f32(i32 7, float %6257)  ; Saturate(value)
  %6259 = fsub fast float 1.000000e+00, %6258
  %6260 = fmul fast float %5870, 5.000000e-01
  %6261 = fadd fast float %6260, 5.000000e-01
  %6262 = call float @dx.op.unary.f32(i32 7, float %6261)  ; Saturate(value)
  %6263 = fsub fast float 1.000000e+00, %6262
  %6264 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6259)  ; FMax(a,b)
  %6265 = fdiv fast float %6263, %6264
  %6266 = fsub fast float %6249, %5827
  %6267 = call float @dx.op.unary.f32(i32 6, float %6266)  ; FAbs(value)
  %6268 = fmul fast float %6267, %6253
  %6269 = call float @dx.op.unary.f32(i32 7, float %6265)  ; Saturate(value)
  %6270 = fsub fast float 1.000000e+00, %6268
  %6271 = fmul fast float %6270, %6269
  %6272 = fadd fast float %6271, %6268
  %6273 = fmul fast float %6256, %6249
  %6274 = call float @dx.op.unary.f32(i32 7, float %6273)  ; Saturate(value)
  %6275 = fsub fast float 1.000000e+00, %6272
  %6276 = fmul fast float %6275, %6274
  %6277 = fadd fast float %6276, %6272
  %6278 = call float @dx.op.unary.f32(i32 7, float %6277)  ; Saturate(value)
  %6279 = fadd fast float %6251, -1.000000e+00
  %6280 = select i1 %6250, float -1.000000e+00, float %6279
  %6281 = fmul fast float %6278, %6280
  %6282 = fadd fast float %6281, 1.000000e+00
  %6283 = fsub fast float -0.000000e+00, %6281
  %6284 = fmul fast float %6243, %6283
  %6285 = fmul fast float %6244, %6283
  %6286 = fmul fast float %6245, %6283
  br label %6287

; <label>:6287                                    ; preds = %6240, %5836
  %6288 = phi float [ %6241, %6240 ], [ 0.000000e+00, %5836 ]
  %6289 = phi float [ %6282, %6240 ], [ 1.000000e+00, %5836 ]
  %6290 = phi float [ %6284, %6240 ], [ 0.000000e+00, %5836 ]
  %6291 = phi float [ %6285, %6240 ], [ 0.000000e+00, %5836 ]
  %6292 = phi float [ %6286, %6240 ], [ 0.000000e+00, %5836 ]
  %6293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6294 = extractvalue %dx.types.CBufRet.f32 %6293, 1
  %6295 = fsub fast float 1.000000e+00, %6289
  %6296 = fmul fast float %6295, %5871
  %6297 = fmul fast float %6296, %6294
  %6298 = fsub fast float %5871, %6297
  br i1 %5864, label %6299, label %6328, !dx.controlflow.hints !120

; <label>:6299                                    ; preds = %6287
  %6300 = fmul fast float %5872, %5861
  %6301 = fadd fast float %6300, %5862
  %6302 = call float @dx.op.unary.f32(i32 7, float %6301)  ; Saturate(value)
  %6303 = fmul fast float %5843, %6298
  %6304 = fsub fast float -0.000000e+00, %6303
  %6305 = fmul fast float %5844, %6298
  %6306 = fsub fast float -0.000000e+00, %6305
  %6307 = call float @dx.op.unary.f32(i32 21, float %6304)  ; Exp(value)
  %6308 = call float @dx.op.unary.f32(i32 21, float %6306)  ; Exp(value)
  %6309 = call float @dx.op.binary.f32(i32 35, float %5851, float %6307)  ; FMax(a,b)
  %6310 = call float @dx.op.binary.f32(i32 35, float %5851, float %6308)  ; FMax(a,b)
  %6311 = fsub fast float %6310, %6309
  %6312 = fmul fast float %6311, %6302
  %6313 = fadd fast float %6312, %6309
  %6314 = call float @dx.op.unary.f32(i32 7, float %6313)  ; Saturate(value)
  %6315 = fsub fast float %5848, %5853
  %6316 = fsub fast float %5849, %5854
  %6317 = fsub fast float %5850, %5855
  %6318 = fmul fast float %6302, %6315
  %6319 = fmul fast float %6302, %6316
  %6320 = fmul fast float %6302, %6317
  %6321 = fadd fast float %6318, %5853
  %6322 = fadd fast float %6319, %5854
  %6323 = fadd fast float %6320, %5855
  %6324 = fsub fast float 1.000000e+00, %6314
  %6325 = fmul fast float %6324, %6321
  %6326 = fmul fast float %6324, %6322
  %6327 = fmul fast float %6324, %6323
  br label %6387

; <label>:6328                                    ; preds = %6287
  %6329 = fmul fast float %6298, %5860
  %6330 = call float @dx.op.unary.f32(i32 7, float %6329)  ; Saturate(value)
  %6331 = fsub fast float 2.000000e+00, %6330
  %6332 = fmul fast float %6330, 9.921875e-01
  %6333 = fmul fast float %6332, %6331
  %6334 = fadd fast float %6333, 3.906250e-03
  %6335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %30, float %6334, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6336 = extractvalue %dx.types.ResRet.f32 %6335, 0
  %6337 = fsub fast float %6330, %6336
  %6338 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6337)  ; FMax(a,b)
  %6339 = fmul fast float %5846, %5827
  %6340 = call float @dx.op.unary.f32(i32 6, float %6339)  ; FAbs(value)
  %6341 = fcmp fast ogt float %6340, 0x3EB0C6F7A0000000
  br i1 %6341, label %6342, label %6348, !dx.controlflow.hints !121

; <label>:6342                                    ; preds = %6328
  %6343 = fmul fast float %6339, 0xBFF7154760000000
  %6344 = call float @dx.op.unary.f32(i32 21, float %6343)  ; Exp(value)
  %6345 = fsub fast float 1.000000e+00, %6344
  %6346 = fdiv fast float %6345, %6339
  %6347 = fmul fast float %6346, %5856
  br label %6348

; <label>:6348                                    ; preds = %6342, %6328
  %6349 = phi float [ %6347, %6342 ], [ %5856, %6328 ]
  %6350 = fadd fast float %6349, %5858
  %6351 = fmul fast float %6350, %6338
  %6352 = fmul fast float %5843, %6351
  %6353 = fsub fast float -0.000000e+00, %6352
  %6354 = fmul fast float %5844, %6351
  %6355 = fsub fast float -0.000000e+00, %6354
  %6356 = fmul fast float %5845, %6351
  %6357 = fsub fast float -0.000000e+00, %6356
  %6358 = call float @dx.op.unary.f32(i32 21, float %6353)  ; Exp(value)
  %6359 = call float @dx.op.unary.f32(i32 21, float %6355)  ; Exp(value)
  %6360 = call float @dx.op.unary.f32(i32 21, float %6357)  ; Exp(value)
  %6361 = fmul fast float %5872, %5872
  %6362 = fadd fast float %6361, 1.000000e+00
  %6363 = fmul fast float %6362, 0x3FAE8EC8A0000000
  %6364 = fmul fast float %6363, %5853
  %6365 = fmul fast float %6363, %5854
  %6366 = fmul fast float %6363, %5855
  %6367 = fmul fast float %5872, %5851
  %6368 = fsub fast float 1.000000e+00, %6367
  %6369 = fmul fast float %5851, %5851
  %6370 = fsub fast float 1.000000e+00, %6369
  %6371 = fmul fast float %6370, 0x3FB45F3060000000
  %6372 = fmul fast float %6368, %6368
  %6373 = fdiv fast float 1.000000e+00, %6372
  %6374 = fmul fast float %6371, %6373
  %6375 = fmul fast float %6374, %5848
  %6376 = fmul fast float %6374, %5849
  %6377 = fmul fast float %6374, %5850
  %6378 = fadd fast float %6375, %6364
  %6379 = fadd fast float %6376, %6365
  %6380 = fadd fast float %6377, %6366
  %6381 = fsub fast float 1.000000e+00, %6358
  %6382 = fsub fast float 1.000000e+00, %6359
  %6383 = fsub fast float 1.000000e+00, %6360
  %6384 = fmul fast float %6378, %6381
  %6385 = fmul fast float %6379, %6382
  %6386 = fmul fast float %6380, %6383
  br label %6387

; <label>:6387                                    ; preds = %6348, %6299
  %6388 = phi float [ %6325, %6299 ], [ %6384, %6348 ]
  %6389 = phi float [ %6326, %6299 ], [ %6385, %6348 ]
  %6390 = phi float [ %6327, %6299 ], [ %6386, %6348 ]
  %6391 = phi float [ %6314, %6299 ], [ %6358, %6348 ]
  %6392 = phi float [ %6314, %6299 ], [ %6359, %6348 ]
  %6393 = phi float [ %6314, %6299 ], [ %6360, %6348 ]
  br i1 %5880, label %6394, label %6592, !dx.controlflow.hints !122

; <label>:6394                                    ; preds = %6387
  %6395 = extractvalue %dx.types.CBufRet.f32 %6293, 0
  %6396 = fmul fast float %6395, %6295
  %6397 = fsub fast float %6290, %6388
  %6398 = fsub fast float %6291, %6389
  %6399 = fsub fast float %6292, %6390
  %6400 = fmul fast float %6396, %6397
  %6401 = fmul fast float %6396, %6398
  %6402 = fmul fast float %6396, %6399
  %6403 = fadd fast float %6400, %6388
  %6404 = fadd fast float %6401, %6389
  %6405 = fadd fast float %6402, %6390
  %6406 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6391)  ; FMax(a,b)
  %6407 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6392)  ; FMax(a,b)
  %6408 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6393)  ; FMax(a,b)
  %6409 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6289)  ; FMax(a,b)
  %6410 = call float @dx.op.binary.f32(i32 35, float %6288, float %6298)  ; FMax(a,b)
  %6411 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6410)  ; FMax(a,b)
  %6412 = fdiv fast float %6288, %6411
  %6413 = call float @dx.op.unary.f32(i32 7, float %6412)  ; Saturate(value)
  %6414 = fdiv fast float %6298, %6411
  %6415 = call float @dx.op.unary.f32(i32 7, float %6414)  ; Saturate(value)
  %6416 = fcmp fast une float %6409, 1.000000e+00
  br i1 %6416, label %6417, label %6430, !dx.controlflow.hints !123

; <label>:6417                                    ; preds = %6394
  %6418 = call float @dx.op.unary.f32(i32 23, float %6409)  ; Log(value)
  %6419 = fmul fast float %6418, 0x3FE62E4300000000
  %6420 = fmul fast float %6290, %6419
  %6421 = fsub fast float -0.000000e+00, %6420
  %6422 = fmul fast float %6291, %6419
  %6423 = fsub fast float -0.000000e+00, %6422
  %6424 = fmul fast float %6292, %6419
  %6425 = fsub fast float -0.000000e+00, %6424
  %6426 = fsub fast float 1.000000e+00, %6409
  %6427 = fdiv fast float %6421, %6426
  %6428 = fdiv fast float %6423, %6426
  %6429 = fdiv fast float %6425, %6426
  br label %6430

; <label>:6430                                    ; preds = %6417, %6394
  %6431 = phi float [ %6427, %6417 ], [ %6290, %6394 ]
  %6432 = phi float [ %6428, %6417 ], [ %6291, %6394 ]
  %6433 = phi float [ %6429, %6417 ], [ %6292, %6394 ]
  %6434 = phi float [ %6419, %6417 ], [ 0.000000e+00, %6394 ]
  %6435 = fcmp fast une float %6406, 1.000000e+00
  br i1 %6435, label %6436, label %6443, !dx.controlflow.hints !124

; <label>:6436                                    ; preds = %6430
  %6437 = call float @dx.op.unary.f32(i32 23, float %6406)  ; Log(value)
  %6438 = fmul fast float %6437, 0x3FE62E4300000000
  %6439 = fmul fast float %6403, %6438
  %6440 = fsub fast float -0.000000e+00, %6439
  %6441 = fsub fast float 1.000000e+00, %6406
  %6442 = fdiv fast float %6440, %6441
  br label %6443

; <label>:6443                                    ; preds = %6436, %6430
  %6444 = phi float [ %6442, %6436 ], [ %6403, %6430 ]
  %6445 = phi float [ %6438, %6436 ], [ 0.000000e+00, %6430 ]
  %6446 = fcmp fast une float %6407, 1.000000e+00
  br i1 %6446, label %6447, label %6454, !dx.controlflow.hints !124

; <label>:6447                                    ; preds = %6443
  %6448 = call float @dx.op.unary.f32(i32 23, float %6407)  ; Log(value)
  %6449 = fmul fast float %6448, 0x3FE62E4300000000
  %6450 = fmul fast float %6404, %6449
  %6451 = fsub fast float -0.000000e+00, %6450
  %6452 = fsub fast float 1.000000e+00, %6407
  %6453 = fdiv fast float %6451, %6452
  br label %6454

; <label>:6454                                    ; preds = %6447, %6443
  %6455 = phi float [ %6453, %6447 ], [ %6404, %6443 ]
  %6456 = phi float [ %6449, %6447 ], [ 0.000000e+00, %6443 ]
  %6457 = fcmp fast une float %6408, 1.000000e+00
  br i1 %6457, label %6458, label %6465, !dx.controlflow.hints !124

; <label>:6458                                    ; preds = %6454
  %6459 = call float @dx.op.unary.f32(i32 23, float %6408)  ; Log(value)
  %6460 = fmul fast float %6459, 0x3FE62E4300000000
  %6461 = fmul fast float %6405, %6460
  %6462 = fsub fast float -0.000000e+00, %6461
  %6463 = fsub fast float 1.000000e+00, %6408
  %6464 = fdiv fast float %6462, %6463
  br label %6465

; <label>:6465                                    ; preds = %6458, %6454
  %6466 = phi float [ %6464, %6458 ], [ %6405, %6454 ]
  %6467 = phi float [ %6460, %6458 ], [ 0.000000e+00, %6454 ]
  %6468 = fmul fast float %6431, %6415
  %6469 = fmul fast float %6432, %6415
  %6470 = fmul fast float %6433, %6415
  %6471 = fmul fast float %6434, %6415
  %6472 = fmul fast float %6444, %6413
  %6473 = fmul fast float %6455, %6413
  %6474 = fmul fast float %6466, %6413
  %6475 = fmul fast float %6445, %6413
  %6476 = fmul fast float %6456, %6413
  %6477 = fmul fast float %6467, %6413
  %6478 = fadd fast float %6472, %6468
  %6479 = fadd fast float %6473, %6469
  %6480 = fadd fast float %6474, %6470
  %6481 = fadd fast float %6475, %6471
  %6482 = fadd fast float %6476, %6471
  %6483 = fadd fast float %6477, %6471
  %6484 = fcmp fast une float %6481, 0.000000e+00
  br i1 %6484, label %6485, label %6492, !dx.controlflow.hints !125

; <label>:6485                                    ; preds = %6465
  %6486 = fmul fast float %6481, 0x3FF7154760000000
  %6487 = call float @dx.op.unary.f32(i32 21, float %6486)  ; Exp(value)
  %6488 = fsub fast float 1.000000e+00, %6487
  %6489 = fmul fast float %6478, %6488
  %6490 = fsub fast float -0.000000e+00, %6489
  %6491 = fdiv fast float %6490, %6481
  br label %6492

; <label>:6492                                    ; preds = %6485, %6465
  %6493 = phi float [ %6487, %6485 ], [ 1.000000e+00, %6465 ]
  %6494 = phi float [ %6491, %6485 ], [ %6478, %6465 ]
  %6495 = fcmp fast une float %6482, 0.000000e+00
  br i1 %6495, label %6496, label %6503, !dx.controlflow.hints !125

; <label>:6496                                    ; preds = %6492
  %6497 = fmul fast float %6482, 0x3FF7154760000000
  %6498 = call float @dx.op.unary.f32(i32 21, float %6497)  ; Exp(value)
  %6499 = fsub fast float 1.000000e+00, %6498
  %6500 = fmul fast float %6479, %6499
  %6501 = fsub fast float -0.000000e+00, %6500
  %6502 = fdiv fast float %6501, %6482
  br label %6503

; <label>:6503                                    ; preds = %6496, %6492
  %6504 = phi float [ %6498, %6496 ], [ 1.000000e+00, %6492 ]
  %6505 = phi float [ %6502, %6496 ], [ %6479, %6492 ]
  %6506 = fcmp fast une float %6483, 0.000000e+00
  br i1 %6506, label %6507, label %6514, !dx.controlflow.hints !125

; <label>:6507                                    ; preds = %6503
  %6508 = fmul fast float %6483, 0x3FF7154760000000
  %6509 = call float @dx.op.unary.f32(i32 21, float %6508)  ; Exp(value)
  %6510 = fsub fast float 1.000000e+00, %6509
  %6511 = fmul fast float %6480, %6510
  %6512 = fsub fast float -0.000000e+00, %6511
  %6513 = fdiv fast float %6512, %6483
  br label %6514

; <label>:6514                                    ; preds = %6507, %6503
  %6515 = phi float [ %6509, %6507 ], [ 1.000000e+00, %6503 ]
  %6516 = phi float [ %6513, %6507 ], [ %6480, %6503 ]
  %6517 = fcmp fast ogt float %6413, %6415
  br i1 %6517, label %6518, label %6538

; <label>:6518                                    ; preds = %6514
  %6519 = fsub fast float 1.000000e+00, %6415
  %6520 = fmul fast float %6431, %6519
  %6521 = fmul fast float %6432, %6519
  %6522 = fmul fast float %6433, %6519
  %6523 = fmul fast float %6434, %6519
  %6524 = fcmp fast une float %6523, 0.000000e+00
  br i1 %6524, label %6525, label %6576, !dx.controlflow.hints !126

; <label>:6525                                    ; preds = %6518
  %6526 = fmul fast float %6523, 0x3FF7154760000000
  %6527 = call float @dx.op.unary.f32(i32 21, float %6526)  ; Exp(value)
  %6528 = fsub fast float 1.000000e+00, %6527
  %6529 = fmul fast float %6520, %6528
  %6530 = fsub fast float -0.000000e+00, %6529
  %6531 = fmul fast float %6521, %6528
  %6532 = fsub fast float -0.000000e+00, %6531
  %6533 = fmul fast float %6522, %6528
  %6534 = fsub fast float -0.000000e+00, %6533
  %6535 = fdiv fast float %6530, %6523
  %6536 = fdiv fast float %6532, %6523
  %6537 = fdiv fast float %6534, %6523
  br label %6576

; <label>:6538                                    ; preds = %6514
  %6539 = fsub fast float 1.000000e+00, %6413
  %6540 = fmul fast float %6444, %6539
  %6541 = fmul fast float %6455, %6539
  %6542 = fmul fast float %6466, %6539
  %6543 = fmul fast float %6445, %6539
  %6544 = fmul fast float %6456, %6539
  %6545 = fmul fast float %6467, %6539
  %6546 = fcmp fast une float %6543, 0.000000e+00
  br i1 %6546, label %6547, label %6554, !dx.controlflow.hints !125

; <label>:6547                                    ; preds = %6538
  %6548 = fmul fast float %6543, 0x3FF7154760000000
  %6549 = call float @dx.op.unary.f32(i32 21, float %6548)  ; Exp(value)
  %6550 = fsub fast float 1.000000e+00, %6549
  %6551 = fmul fast float %6540, %6550
  %6552 = fsub fast float -0.000000e+00, %6551
  %6553 = fdiv fast float %6552, %6543
  br label %6554

; <label>:6554                                    ; preds = %6547, %6538
  %6555 = phi float [ %6553, %6547 ], [ %6540, %6538 ]
  %6556 = phi float [ %6549, %6547 ], [ 1.000000e+00, %6538 ]
  %6557 = fcmp fast une float %6544, 0.000000e+00
  br i1 %6557, label %6558, label %6565, !dx.controlflow.hints !125

; <label>:6558                                    ; preds = %6554
  %6559 = fmul fast float %6544, 0x3FF7154760000000
  %6560 = call float @dx.op.unary.f32(i32 21, float %6559)  ; Exp(value)
  %6561 = fsub fast float 1.000000e+00, %6560
  %6562 = fmul fast float %6541, %6561
  %6563 = fsub fast float -0.000000e+00, %6562
  %6564 = fdiv fast float %6563, %6544
  br label %6565

; <label>:6565                                    ; preds = %6558, %6554
  %6566 = phi float [ %6564, %6558 ], [ %6541, %6554 ]
  %6567 = phi float [ %6560, %6558 ], [ 1.000000e+00, %6554 ]
  %6568 = fcmp fast une float %6545, 0.000000e+00
  br i1 %6568, label %6569, label %6576, !dx.controlflow.hints !125

; <label>:6569                                    ; preds = %6565
  %6570 = fmul fast float %6545, 0x3FF7154760000000
  %6571 = call float @dx.op.unary.f32(i32 21, float %6570)  ; Exp(value)
  %6572 = fsub fast float 1.000000e+00, %6571
  %6573 = fmul fast float %6542, %6572
  %6574 = fsub fast float -0.000000e+00, %6573
  %6575 = fdiv fast float %6574, %6545
  br label %6576

; <label>:6576                                    ; preds = %6569, %6565, %6525, %6518
  %6577 = phi float [ %6575, %6569 ], [ %6537, %6525 ], [ %6522, %6518 ], [ %6542, %6565 ]
  %6578 = phi float [ %6566, %6569 ], [ %6536, %6525 ], [ %6521, %6518 ], [ %6566, %6565 ]
  %6579 = phi float [ %6555, %6569 ], [ %6535, %6525 ], [ %6520, %6518 ], [ %6555, %6565 ]
  %6580 = phi float [ %6571, %6569 ], [ %6527, %6525 ], [ 1.000000e+00, %6518 ], [ 1.000000e+00, %6565 ]
  %6581 = phi float [ %6567, %6569 ], [ %6527, %6525 ], [ 1.000000e+00, %6518 ], [ %6567, %6565 ]
  %6582 = phi float [ %6556, %6569 ], [ %6527, %6525 ], [ 1.000000e+00, %6518 ], [ %6556, %6565 ]
  %6583 = fmul fast float %6582, %6494
  %6584 = fmul fast float %6581, %6505
  %6585 = fmul fast float %6580, %6516
  %6586 = fadd fast float %6583, %6579
  %6587 = fadd fast float %6584, %6578
  %6588 = fadd fast float %6585, %6577
  %6589 = fmul fast float %6582, %6493
  %6590 = fmul fast float %6581, %6504
  %6591 = fmul fast float %6580, %6515
  br label %6592

; <label>:6592                                    ; preds = %6576, %6387
  %6593 = phi float [ %6591, %6576 ], [ %6393, %6387 ]
  %6594 = phi float [ %6590, %6576 ], [ %6392, %6387 ]
  %6595 = phi float [ %6589, %6576 ], [ %6391, %6387 ]
  %6596 = phi float [ %6588, %6576 ], [ %6390, %6387 ]
  %6597 = phi float [ %6587, %6576 ], [ %6389, %6387 ]
  %6598 = phi float [ %6586, %6576 ], [ %6388, %6387 ]
  %6599 = fmul fast float %6598, %5540
  %6600 = fmul fast float %6597, %5540
  %6601 = fmul fast float %6596, %5540
  %6602 = fmul fast float %6595, %5835
  %6603 = call float @dx.op.dot3.f32(i32 55, float %6595, float %6594, float %6593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6604 = call float @dx.op.dot3.f32(i32 55, float %6599, float %6600, float %6601, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6605 = select i1 %233, float %6603, float %6595
  %6606 = select i1 %233, float %6603, float %6594
  %6607 = select i1 %233, float 1.000000e+00, float %6593
  %6608 = select i1 %233, float %6604, float %6599
  %6609 = select i1 %233, float 0.000000e+00, float %6600
  %6610 = select i1 %233, float 0.000000e+00, float %6601
  %6611 = fmul fast float %6605, %5829
  %6612 = fmul fast float %6606, %5830
  %6613 = fmul fast float %6607, %5831
  %6614 = fadd fast float %6611, %6608
  %6615 = fadd fast float %6612, %6609
  %6616 = fadd fast float %6610, %6613
  %6617 = fmul fast float %6605, %5832
  %6618 = fmul fast float %6606, %5833
  %6619 = fmul fast float %6607, %5834
  %6620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6621 = extractvalue %dx.types.CBufRet.i32 %6620, 0
  %6622 = icmp eq i32 %6621, 0
  br i1 %6622, label %6990, label %6623, !dx.controlflow.hints !127

; <label>:6623                                    ; preds = %6592
  %6624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6625 = extractvalue %dx.types.CBufRet.f32 %6624, 2
  %6626 = extractvalue %dx.types.CBufRet.f32 %6624, 3
  %6627 = fmul fast float %6625, %89
  %6628 = fmul fast float %6626, %90
  %6629 = fmul fast float %6627, 2.000000e+00
  %6630 = fmul fast float %6628, 2.000000e+00
  %6631 = fsub fast float 1.000000e+00, %6629
  %6632 = fsub fast float 1.000000e+00, %6630
  %6633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.f32 %6633, 0
  %6635 = extractvalue %dx.types.CBufRet.f32 %6633, 1
  %6636 = extractvalue %dx.types.CBufRet.f32 %6633, 2
  %6637 = fmul fast float %6631, %6634
  %6638 = fmul fast float %6631, %6635
  %6639 = fmul fast float %6631, %6636
  %6640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6641 = extractvalue %dx.types.CBufRet.f32 %6640, 0
  %6642 = extractvalue %dx.types.CBufRet.f32 %6640, 1
  %6643 = extractvalue %dx.types.CBufRet.f32 %6640, 2
  %6644 = fmul fast float %6632, %6641
  %6645 = fmul fast float %6632, %6642
  %6646 = fmul fast float %6632, %6643
  %6647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6648 = extractvalue %dx.types.CBufRet.f32 %6647, 0
  %6649 = extractvalue %dx.types.CBufRet.f32 %6647, 1
  %6650 = extractvalue %dx.types.CBufRet.f32 %6647, 2
  %6651 = fadd fast float %6644, %6648
  %6652 = fadd fast float %6651, %6637
  %6653 = fadd fast float %6645, %6649
  %6654 = fadd fast float %6653, %6638
  %6655 = fadd fast float %6646, %6650
  %6656 = fadd fast float %6655, %6639
  %6657 = fmul fast float %6652, %5828
  %6658 = fmul fast float %6654, %5828
  %6659 = fmul fast float %6656, %5828
  %6660 = fmul fast float %6657, %6657
  %6661 = fmul fast float %6658, %6658
  %6662 = fadd fast float %6660, %6661
  %6663 = fmul fast float %6659, %6659
  %6664 = fadd fast float %6662, %6663
  %6665 = call float @dx.op.unary.f32(i32 24, float %6664)  ; Sqrt(value)
  %6666 = extractvalue %dx.types.CBufRet.f32 %5551, 0
  %6667 = fsub fast float %6665, %6666
  %6668 = extractvalue %dx.types.CBufRet.f32 %5551, 2
  %6669 = fmul fast float %6667, %6668
  %6670 = call float @dx.op.unary.f32(i32 7, float %6669)  ; Saturate(value)
  %6671 = fadd fast float %6670, -5.000000e-01
  %6672 = fmul fast float %6671, 2.000000e+00
  %6673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6674 = extractvalue %dx.types.CBufRet.f32 %6673, 2
  %6675 = call float @dx.op.binary.f32(i32 36, float %6674, float %6672)  ; FMin(a,b)
  %6676 = fsub fast float -0.000000e+00, %6674
  %6677 = fcmp fast ogt float %6675, %6676
  br i1 %6677, label %6678, label %6990, !dx.controlflow.hints !128

; <label>:6678                                    ; preds = %6623
  %6679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6680 = extractvalue %dx.types.CBufRet.f32 %6679, 3
  %6681 = fcmp fast ogt float %6680, 0.000000e+00
  br i1 %6681, label %6682, label %6757, !dx.controlflow.hints !129

; <label>:6682                                    ; preds = %6678
  %6683 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %15, i32 0)  ; GetDimensions(handle,mipLevel)
  %6684 = extractvalue %dx.types.Dimensions %6683, 0
  %6685 = sitofp i32 %6684 to float
  %6686 = extractvalue %dx.types.Dimensions %6683, 1
  %6687 = sitofp i32 %6686 to float
  %6688 = fmul fast float %6627, %6685
  %6689 = fmul fast float %6628, %6687
  %6690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6691 = extractvalue %dx.types.CBufRet.f32 %6690, 1
  %6692 = fsub fast float -0.000000e+00, %6691
  %6693 = fptoui float %6692 to i32
  %6694 = fptoui float %6688 to i32
  %6695 = fptoui float %6689 to i32
  %6696 = and i32 %6693, 31
  %6697 = lshr i32 %6694, %6696
  %6698 = lshr i32 %6695, %6696
  %6699 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 %6693, i32 %6697, i32 %6698, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6700 = extractvalue %dx.types.ResRet.f32 %6699, 0
  %6701 = fcmp fast olt float %6700, -1.000000e+00
  %6702 = fcmp fast ogt float %6700, -1.000000e+00
  %6703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6704 = extractvalue %dx.types.CBufRet.f32 %6703, 1
  %6705 = select i1 %6702, float %6704, float 1.000000e+00
  %6706 = fadd fast float %6700, 1.000000e+00
  %6707 = fmul fast float %6705, %6706
  %6708 = call float @dx.op.unary.f32(i32 6, float %6707)  ; FAbs(value)
  %6709 = extractvalue %dx.types.CBufRet.f32 %6703, 3
  %6710 = fcmp fast oge float %6708, %6709
  %6711 = select i1 %6710, float 0x4197782600000000, float %6708
  %6712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6713 = extractvalue %dx.types.CBufRet.f32 %6712, 0
  %6714 = extractvalue %dx.types.CBufRet.f32 %6712, 1
  %6715 = extractvalue %dx.types.CBufRet.f32 %6712, 2
  %6716 = select i1 %6701, float %6713, float %6634
  %6717 = select i1 %6701, float %6714, float %6635
  %6718 = select i1 %6701, float %6715, float %6636
  %6719 = fmul fast float %6716, %6631
  %6720 = fmul fast float %6717, %6631
  %6721 = fmul fast float %6718, %6631
  %6722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.f32 %6722, 0
  %6724 = extractvalue %dx.types.CBufRet.f32 %6722, 1
  %6725 = extractvalue %dx.types.CBufRet.f32 %6722, 2
  %6726 = select i1 %6701, float %6723, float %6641
  %6727 = select i1 %6701, float %6724, float %6642
  %6728 = select i1 %6701, float %6725, float %6643
  %6729 = fmul fast float %6726, %6632
  %6730 = fmul fast float %6727, %6632
  %6731 = fmul fast float %6728, %6632
  %6732 = fadd fast float %6729, %6719
  %6733 = fadd fast float %6730, %6720
  %6734 = fadd fast float %6731, %6721
  %6735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6736 = extractvalue %dx.types.CBufRet.f32 %6735, 0
  %6737 = extractvalue %dx.types.CBufRet.f32 %6735, 1
  %6738 = extractvalue %dx.types.CBufRet.f32 %6735, 2
  %6739 = select i1 %6701, float %6736, float %6648
  %6740 = select i1 %6701, float %6737, float %6649
  %6741 = select i1 %6701, float %6738, float %6650
  %6742 = fadd fast float %6732, %6739
  %6743 = fadd fast float %6733, %6740
  %6744 = fadd fast float %6734, %6741
  %6745 = fmul fast float %6742, %6711
  %6746 = fmul fast float %6743, %6711
  %6747 = fmul fast float %6744, %6711
  %6748 = fmul fast float %6745, %6745
  %6749 = fmul fast float %6746, %6746
  %6750 = fadd fast float %6748, %6749
  %6751 = fmul fast float %6747, %6747
  %6752 = fadd fast float %6750, %6751
  %6753 = call float @dx.op.unary.f32(i32 24, float %6752)  ; Sqrt(value)
  %6754 = fsub fast float %6753, %6666
  %6755 = fmul fast float %6754, %6668
  %6756 = call float @dx.op.unary.f32(i32 7, float %6755)  ; Saturate(value)
  br label %6757

; <label>:6757                                    ; preds = %6682, %6678
  %6758 = phi float [ %6756, %6682 ], [ 1.000000e+00, %6678 ]
  %6759 = fmul fast float %6675, 5.000000e-01
  %6760 = fadd fast float %6759, 5.000000e-01
  %6761 = call float @dx.op.unary.f32(i32 22, float %6760)  ; Frc(value)
  %6762 = call float @dx.op.unary.f32(i32 27, float %6761)  ; Round_ni(value)
  %6763 = call float @dx.op.unary.f32(i32 22, float %6761)  ; Frc(value)
  %6764 = fmul fast float %6763, 2.000000e+00
  %6765 = fadd fast float %6764, -1.000000e+00
  %6766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %6627, float %6628, float %6762, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6767 = extractvalue %dx.types.ResRet.f32 %6766, 0
  %6768 = extractvalue %dx.types.ResRet.f32 %6766, 1
  %6769 = extractvalue %dx.types.ResRet.f32 %6766, 2
  %6770 = extractvalue %dx.types.ResRet.f32 %6766, 3
  %6771 = fadd fast float %6767, -5.000000e-01
  %6772 = fadd fast float %6769, -5.000000e-01
  %6773 = fmul fast float %6771, 0xBFD5555560000000
  %6774 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6772, float %6773)  ; FMad(a,b,c)
  %6775 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6768, float 0.000000e+00)  ; FMad(a,b,c)
  %6776 = fadd fast float %6775, %6770
  %6777 = fmul fast float %6771, -7.500000e-01
  %6778 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6772, float %6777)  ; FMad(a,b,c)
  %6779 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6768, float 0.000000e+00)  ; FMad(a,b,c)
  %6780 = fadd fast float %6779, %6770
  %6781 = call float @dx.op.binary.f32(i32 35, float %6774, float -1.000000e+00)  ; FMax(a,b)
  %6782 = call float @dx.op.binary.f32(i32 35, float %6776, float -1.000000e+00)  ; FMax(a,b)
  %6783 = call float @dx.op.binary.f32(i32 35, float %6778, float -1.000000e+00)  ; FMax(a,b)
  %6784 = call float @dx.op.binary.f32(i32 35, float %6780, float -1.000000e+00)  ; FMax(a,b)
  %6785 = call float @dx.op.binary.f32(i32 36, float %6781, float 1.000000e+00)  ; FMin(a,b)
  %6786 = call float @dx.op.binary.f32(i32 36, float %6782, float 1.000000e+00)  ; FMin(a,b)
  %6787 = call float @dx.op.binary.f32(i32 36, float %6783, float 1.000000e+00)  ; FMin(a,b)
  %6788 = call float @dx.op.binary.f32(i32 36, float %6784, float 1.000000e+00)  ; FMin(a,b)
  %6789 = fcmp fast olt float %6785, 0x3FEFFF8020000000
  br i1 %6789, label %6790, label %6905, !dx.controlflow.hints !130

; <label>:6790                                    ; preds = %6757
  %6791 = extractvalue %dx.types.CBufRet.f32 %6673, 3
  %6792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6793 = extractvalue %dx.types.CBufRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.CBufRet.f32 %6792, 1
  %6795 = extractvalue %dx.types.CBufRet.f32 %6792, 2
  %6796 = extractvalue %dx.types.CBufRet.f32 %6792, 3
  %6797 = fsub fast float %6793, %6785
  %6798 = fsub fast float %6794, %6786
  %6799 = fsub fast float %6795, %6787
  %6800 = fsub fast float %6796, %6788
  %6801 = fmul fast float %6797, %6791
  %6802 = fmul fast float %6798, %6791
  %6803 = fmul fast float %6799, %6791
  %6804 = fmul fast float %6800, %6791
  %6805 = fadd fast float %6801, %6785
  %6806 = fadd fast float %6802, %6786
  %6807 = fsub fast float -0.000000e+00, %6806
  %6808 = fadd fast float %6803, %6787
  %6809 = fadd fast float %6804, %6788
  %6810 = fmul fast float %6805, %6805
  %6811 = fsub fast float %6806, %6810
  %6812 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6811)  ; FMax(a,b)
  %6813 = fdiv fast float 1.000000e+00, %6812
  %6814 = fmul fast float %6806, %6805
  %6815 = fsub fast float %6808, %6814
  %6816 = fsub fast float %6765, %6805
  %6817 = fmul fast float %6765, %6765
  %6818 = fsub fast float %6817, %6806
  %6819 = fmul fast float %6816, %6813
  %6820 = fmul fast float %6819, %6815
  %6821 = fsub fast float %6818, %6820
  %6822 = fmul fast float %6806, %6806
  %6823 = fsub fast float %6809, %6822
  %6824 = fmul fast float %6815, %6815
  %6825 = fmul fast float %6824, %6813
  %6826 = fsub fast float %6823, %6825
  %6827 = fdiv fast float %6821, %6826
  %6828 = fmul fast float %6815, %6827
  %6829 = fsub fast float %6816, %6828
  %6830 = fmul fast float %6829, %6813
  %6831 = fmul fast float %6830, %6805
  %6832 = fsub fast float 1.000000e+00, %6831
  %6833 = fmul fast float %6806, %6827
  %6834 = fsub fast float %6832, %6833
  %6835 = fmul fast float %6830, %6830
  %6836 = fmul fast float %6827, 4.000000e+00
  %6837 = fmul fast float %6836, %6834
  %6838 = fsub fast float %6835, %6837
  %6839 = call float @dx.op.unary.f32(i32 24, float %6838)  ; Sqrt(value)
  %6840 = fcmp fast oge float %6830, 0.000000e+00
  %6841 = fsub fast float -0.000000e+00, %6839
  %6842 = select i1 %6840, float %6841, float %6839
  %6843 = fsub fast float %6842, %6830
  %6844 = fdiv fast float %6843, %6827
  %6845 = fdiv fast float %6834, %6843
  %6846 = fmul fast float %6844, 5.000000e-01
  %6847 = fmul fast float %6845, 2.000000e+00
  %6848 = select i1 %6840, float %6846, float %6847
  %6849 = select i1 %6840, float %6847, float %6846
  %6850 = call float @dx.op.binary.f32(i32 35, float %6848, float %6849)  ; FMax(a,b)
  %6851 = call float @dx.op.binary.f32(i32 36, float %6848, float %6849)  ; FMin(a,b)
  %6852 = fcmp fast ogt float %6765, %6851
  br i1 %6852, label %6853, label %6863

; <label>:6853                                    ; preds = %6790
  %6854 = fsub fast float %6765, %6851
  %6855 = fsub fast float %6850, %6851
  %6856 = fmul fast float %6854, %6855
  %6857 = fmul fast float %6850, %6765
  %6858 = fadd fast float %6850, %6765
  %6859 = fmul fast float %6858, %6805
  %6860 = fadd fast float %6857, %6806
  %6861 = fsub fast float %6860, %6859
  %6862 = fdiv fast float %6861, %6856
  br label %6863

; <label>:6863                                    ; preds = %6853, %6790
  %6864 = phi float [ %6862, %6853 ], [ 0.000000e+00, %6790 ]
  %6865 = fcmp fast ogt float %6765, %6850
  %6866 = fsub fast float %6765, %6850
  br i1 %6865, label %6867, label %6877

; <label>:6867                                    ; preds = %6863
  %6868 = fsub fast float %6850, %6851
  %6869 = fmul fast float %6868, %6866
  %6870 = fmul fast float %6851, %6765
  %6871 = fadd fast float %6851, %6765
  %6872 = fmul fast float %6871, %6805
  %6873 = fsub fast float %6807, %6870
  %6874 = fadd fast float %6873, %6872
  %6875 = fdiv fast float %6874, %6869
  %6876 = fadd fast float %6875, %6864
  br label %6877

; <label>:6877                                    ; preds = %6867, %6863
  %6878 = phi float [ %6876, %6867 ], [ %6864, %6863 ]
  %6879 = fsub fast float %6765, %6851
  %6880 = fmul fast float %6879, %6866
  %6881 = fmul fast float %6851, %6850
  %6882 = fadd fast float %6851, %6850
  %6883 = fmul fast float %6882, %6805
  %6884 = fadd fast float %6881, %6806
  %6885 = fsub fast float %6884, %6883
  %6886 = fdiv fast float %6885, %6880
  %6887 = call float @dx.op.unary.f32(i32 7, float %6878)  ; Saturate(value)
  %6888 = fcmp fast oeq float %5552, 0.000000e+00
  %6889 = extractvalue %dx.types.CBufRet.f32 %6673, 0
  %6890 = fcmp fast oeq float %6889, 0.000000e+00
  %6891 = or i1 %6888, %6890
  %6892 = fmul fast float %6889, 2.000000e+00
  %6893 = fadd fast float %6674, %6675
  %6894 = fdiv fast float %6893, %6892
  %6895 = call float @dx.op.unary.f32(i32 7, float %6894)  ; Saturate(value)
  %6896 = fmul fast float %6895, 2.000000e+00
  %6897 = fsub fast float 3.000000e+00, %6896
  %6898 = fmul fast float %6895, %6895
  %6899 = fmul fast float %6898, %6897
  %6900 = select i1 %6891, float 1.000000e+00, float %6899
  %6901 = fmul fast float %6886, %5552
  %6902 = fadd fast float %6887, %6901
  %6903 = call float @dx.op.unary.f32(i32 7, float %6902)  ; Saturate(value)
  %6904 = fmul fast float %6900, %6903
  br label %6905

; <label>:6905                                    ; preds = %6877, %6757
  %6906 = phi float [ %6904, %6877 ], [ 0.000000e+00, %6757 ]
  %6907 = fsub fast float 1.000000e+00, %6906
  %6908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %30, float %6627, float %6628, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6909 = extractvalue %dx.types.ResRet.f32 %6908, 0
  %6910 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6911 = extractvalue %dx.types.CBufRet.i32 %6910, 2
  %6912 = icmp eq i32 %6911, 0
  br i1 %6912, label %6918, label %6913

; <label>:6913                                    ; preds = %6905
  %6914 = call float @dx.op.unary.f32(i32 7, float %6906)  ; Saturate(value)
  %6915 = fadd fast float %6909, -1.000000e+00
  %6916 = fmul fast float %6914, %6915
  %6917 = fadd fast float %6916, 1.000000e+00
  br label %6918

; <label>:6918                                    ; preds = %6913, %6905
  %6919 = phi float [ %6917, %6913 ], [ %6907, %6905 ]
  br i1 %6681, label %6920, label %6938

; <label>:6920                                    ; preds = %6918
  %6921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6922 = extractvalue %dx.types.CBufRet.f32 %6921, 1
  %6923 = fsub fast float %6758, %6922
  %6924 = call float @dx.op.unary.f32(i32 7, float %6923)  ; Saturate(value)
  %6925 = fsub fast float %6758, %6680
  %6926 = call float @dx.op.unary.f32(i32 7, float %6925)  ; Saturate(value)
  %6927 = fsub fast float %6924, %6926
  %6928 = fsub fast float %6760, %6926
  %6929 = fdiv fast float %6928, %6927
  %6930 = call float @dx.op.unary.f32(i32 7, float %6929)  ; Saturate(value)
  %6931 = fmul fast float %6930, 2.000000e+00
  %6932 = fsub fast float 3.000000e+00, %6931
  %6933 = fsub fast float %6909, %6919
  %6934 = fmul fast float %6930, %6930
  %6935 = fmul fast float %6934, %6933
  %6936 = fmul fast float %6935, %6932
  %6937 = fadd fast float %6936, %6919
  br label %6938

; <label>:6938                                    ; preds = %6920, %6918
  %6939 = phi float [ %6937, %6920 ], [ %6919, %6918 ]
  %6940 = call float @dx.op.binary.f32(i32 35, float %6909, float %6939)  ; FMax(a,b)
  %6941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6942 = extractvalue %dx.types.CBufRet.i32 %6941, 2
  %6943 = and i32 %6942, 1
  %6944 = icmp eq i32 %6943, 0
  %6945 = fcmp fast une float %6940, 1.000000e+00
  %6946 = and i1 %6945, %6944
  br i1 %6946, label %6947, label %6966

; <label>:6947                                    ; preds = %6938
  %6948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %30, float %6627, float %6628, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6949 = extractvalue %dx.types.ResRet.f32 %6948, 0
  %6950 = extractvalue %dx.types.ResRet.f32 %6948, 1
  %6951 = extractvalue %dx.types.ResRet.f32 %6948, 2
  %6952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6953 = extractvalue %dx.types.CBufRet.f32 %6952, 1
  %6954 = fmul fast float %6953, %6949
  %6955 = fmul fast float %6953, %6950
  %6956 = fmul fast float %6953, %6951
  %6957 = fcmp fast ogt float %6909, 0x3FEFFF2E40000000
  %6958 = fsub fast float 1.000000e+00, %6940
  %6959 = fsub fast float 1.000000e+00, %6909
  %6960 = fdiv fast float %6958, %6959
  %6961 = call float @dx.op.unary.f32(i32 7, float %6960)  ; Saturate(value)
  %6962 = select i1 %6957, float 0.000000e+00, float %6961
  %6963 = fmul fast float %6954, %6962
  %6964 = fmul fast float %6955, %6962
  %6965 = fmul fast float %6956, %6962
  br label %6966

; <label>:6966                                    ; preds = %6947, %6938
  %6967 = phi float [ 0.000000e+00, %6938 ], [ %6963, %6947 ]
  %6968 = phi float [ 0.000000e+00, %6938 ], [ %6964, %6947 ]
  %6969 = phi float [ 0.000000e+00, %6938 ], [ %6965, %6947 ]
  %6970 = fmul fast float %6967, %5540
  %6971 = fmul fast float %6968, %5540
  %6972 = fmul fast float %6969, %5540
  %6973 = fmul fast float %6940, %6602
  %6974 = call float @dx.op.dot3.f32(i32 55, float %6940, float %6940, float %6940, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6975 = call float @dx.op.dot3.f32(i32 55, float %6970, float %6971, float %6972, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6976 = select i1 %233, float %6974, float %6940
  %6977 = select i1 %233, float 1.000000e+00, float %6940
  %6978 = select i1 %233, float %6975, float %6970
  %6979 = select i1 %233, float 0.000000e+00, float %6971
  %6980 = select i1 %233, float 0.000000e+00, float %6972
  %6981 = fmul fast float %6976, %6614
  %6982 = fmul fast float %6976, %6615
  %6983 = fmul fast float %6977, %6616
  %6984 = fadd fast float %6981, %6978
  %6985 = fadd fast float %6982, %6979
  %6986 = fadd fast float %6980, %6983
  %6987 = fmul fast float %6976, %6617
  %6988 = fmul fast float %6976, %6618
  %6989 = fmul fast float %6977, %6619
  br label %6990

; <label>:6990                                    ; preds = %6966, %6623, %6592, %5824
  %6991 = phi float [ %5829, %5824 ], [ %6614, %6592 ], [ %6984, %6966 ], [ %6614, %6623 ]
  %6992 = phi float [ %5830, %5824 ], [ %6615, %6592 ], [ %6985, %6966 ], [ %6615, %6623 ]
  %6993 = phi float [ %5831, %5824 ], [ %6616, %6592 ], [ %6986, %6966 ], [ %6616, %6623 ]
  %6994 = phi float [ %5832, %5824 ], [ %6617, %6592 ], [ %6987, %6966 ], [ %6617, %6623 ]
  %6995 = phi float [ %5833, %5824 ], [ %6618, %6592 ], [ %6988, %6966 ], [ %6618, %6623 ]
  %6996 = phi float [ %5834, %5824 ], [ %6619, %6592 ], [ %6989, %6966 ], [ %6619, %6623 ]
  %6997 = phi float [ %5835, %5824 ], [ %6602, %6592 ], [ %6973, %6966 ], [ %6602, %6623 ]
  %6998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6999 = extractvalue %dx.types.CBufRet.f32 %6998, 2
  %7000 = extractvalue %dx.types.CBufRet.f32 %6998, 3
  %7001 = fmul fast float %6999, %89
  %7002 = fmul fast float %7000, %90
  %7003 = call float @dx.op.unary.f32(i32 7, float %7001)  ; Saturate(value)
  %7004 = call float @dx.op.unary.f32(i32 7, float %7002)  ; Saturate(value)
  %7005 = select i1 %5566, i32 2, i32 0
  %7006 = or i32 %7005, 1
  %7007 = uitofp i32 %7006 to float
  %7008 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %30, float %7003, float %7004, float %7007, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7009 = extractvalue %dx.types.ResRet.f32 %7008, 0
  %7010 = extractvalue %dx.types.ResRet.f32 %7008, 1
  %7011 = extractvalue %dx.types.ResRet.f32 %7008, 2
  %7012 = extractvalue %dx.types.ResRet.f32 %7008, 3
  %7013 = add nuw nsw i32 %7005, 2
  %7014 = uitofp i32 %7013 to float
  %7015 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %30, float %7003, float %7004, float %7014, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7016 = extractvalue %dx.types.ResRet.f32 %7015, 0
  %7017 = extractvalue %dx.types.ResRet.f32 %7015, 1
  %7018 = extractvalue %dx.types.ResRet.f32 %7015, 2
  %7019 = extractvalue %dx.types.ResRet.f32 %7015, 3
  %7020 = call float @dx.op.binary.f32(i32 35, float %7010, float %7011)  ; FMax(a,b)
  %7021 = call float @dx.op.binary.f32(i32 35, float %7009, float %7020)  ; FMax(a,b)
  %7022 = call float @dx.op.binary.f32(i32 35, float %7021, float %7012)  ; FMax(a,b)
  %7023 = call float @dx.op.binary.f32(i32 36, float %7017, float %7018)  ; FMin(a,b)
  %7024 = call float @dx.op.binary.f32(i32 36, float %7016, float %7023)  ; FMin(a,b)
  %7025 = call float @dx.op.binary.f32(i32 36, float %7024, float %7019)  ; FMin(a,b)
  %7026 = fmul fast float %7022, 2.550000e+02
  %7027 = fadd fast float %7026, 0x3F70101020000000
  %7028 = fptoui float %7027 to i32
  %7029 = fmul fast float %7025, 2.550000e+02
  %7030 = fadd fast float %7029, 0x3F70101020000000
  %7031 = fptoui float %7030 to i32
  %7032 = icmp ult i32 %7028, %7031
  br i1 %7032, label %7033, label %7202

; <label>:7033                                    ; preds = %6990
  %7034 = fcmp fast ogt float %81, 9.843750e-01
  %7035 = fadd fast float %5828, -4.000000e+00
  %7036 = select i1 %7034, float -4.000000e+00, float %7035
  %7037 = call float @dx.op.binary.f32(i32 35, float %7036, float 0.000000e+00)  ; FMax(a,b)
  %7038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7039 = extractvalue %dx.types.CBufRet.f32 %7038, 0
  %7040 = fadd fast float %7039, %7037
  %7041 = extractvalue %dx.types.CBufRet.f32 %7038, 2
  %7042 = fmul fast float %7040, %7041
  %7043 = call float @dx.op.unary.f32(i32 23, float %7042)  ; Log(value)
  %7044 = extractvalue %dx.types.CBufRet.f32 %7038, 3
  %7045 = fmul fast float %7044, %7043
  %7046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7047 = extractvalue %dx.types.CBufRet.f32 %7046, 2
  %7048 = fmul fast float %7045, %7047
  %7049 = call float @dx.op.unary.f32(i32 7, float %7048)  ; Saturate(value)
  %7050 = uitofp i32 %7028 to float
  %7051 = uitofp i32 %7031 to float
  %7052 = fadd fast float %7050, 5.000000e-01
  %7053 = fadd fast float %7051, 5.000000e-01
  %7054 = fmul fast float %7047, %7052
  %7055 = fmul fast float %7047, %7053
  %7056 = fadd fast float %7054, 0x3F0FFB4800000000
  %7057 = fadd fast float %7055, 0xBF0FFB4800000000
  %7058 = call float @dx.op.binary.f32(i32 35, float %7049, float %7056)  ; FMax(a,b)
  %7059 = call float @dx.op.binary.f32(i32 36, float %7058, float %7057)  ; FMin(a,b)
  %7060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7061 = extractvalue %dx.types.CBufRet.f32 %7060, 1
  %7062 = extractvalue %dx.types.CBufRet.f32 %7060, 2
  %7063 = extractvalue %dx.types.CBufRet.f32 %7060, 0
  %7064 = select i1 %5566, float %7063, float 0.000000e+00
  %7065 = fmul fast float %7061, %7059
  %7066 = fadd fast float %7064, %7065
  %7067 = fadd fast float %7064, %7062
  %7068 = fsub fast float %7061, %7062
  %7069 = fadd fast float %7068, %7064
  %7070 = call float @dx.op.binary.f32(i32 35, float %7066, float %7067)  ; FMax(a,b)
  %7071 = call float @dx.op.binary.f32(i32 36, float %7070, float %7069)  ; FMin(a,b)
  %7072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %7003, float %7004, float %7071, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7073 = extractvalue %dx.types.ResRet.f32 %7072, 0
  %7074 = extractvalue %dx.types.ResRet.f32 %7072, 1
  %7075 = extractvalue %dx.types.ResRet.f32 %7072, 2
  %7076 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7077 = extractvalue %dx.types.CBufRet.i32 %7076, 0
  %7078 = extractvalue %dx.types.CBufRet.i32 %7076, 1
  %7079 = uitofp i32 %7077 to float
  %7080 = uitofp i32 %7078 to float
  %7081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7082 = extractvalue %dx.types.CBufRet.f32 %7081, 0
  %7083 = extractvalue %dx.types.CBufRet.f32 %7081, 1
  %7084 = fmul fast float %7079, %7003
  %7085 = fmul fast float %7080, %7004
  %7086 = fadd fast float %7084, -5.000000e-01
  %7087 = fadd fast float %7085, -5.000000e-01
  %7088 = call float @dx.op.unary.f32(i32 22, float %7086)  ; Frc(value)
  %7089 = call float @dx.op.unary.f32(i32 22, float %7087)  ; Frc(value)
  %7090 = fmul fast float %7088, %7088
  %7091 = fmul fast float %7090, %7088
  %7092 = fsub fast float 3.000000e+00, %7088
  %7093 = fmul fast float %7090, %7092
  %7094 = fmul fast float %7088, 3.000000e+00
  %7095 = fmul fast float %7091, 3.000000e+00
  %7096 = fmul fast float %7090, 6.000000e+00
  %7097 = fsub fast float %7095, %7096
  %7098 = fadd fast float %7097, 4.000000e+00
  %7099 = fmul fast float %7098, 0x3FC5555560000000
  %7100 = fmul fast float %7091, -3.000000e+00
  %7101 = fadd fast float %7090, %7088
  %7102 = fmul fast float %7101, 3.000000e+00
  %7103 = fadd fast float %7100, 1.000000e+00
  %7104 = fadd fast float %7103, %7102
  %7105 = fmul fast float %7091, 0x3FC5555560000000
  %7106 = fmul fast float %7089, %7089
  %7107 = fmul fast float %7106, %7089
  %7108 = fsub fast float 3.000000e+00, %7089
  %7109 = fmul fast float %7106, %7108
  %7110 = fmul fast float %7089, 3.000000e+00
  %7111 = fmul fast float %7107, 3.000000e+00
  %7112 = fmul fast float %7106, 6.000000e+00
  %7113 = fsub fast float %7111, %7112
  %7114 = fadd fast float %7113, 4.000000e+00
  %7115 = fmul fast float %7114, 0x3FC5555560000000
  %7116 = fmul fast float %7107, -3.000000e+00
  %7117 = fadd fast float %7106, %7089
  %7118 = fmul fast float %7117, 3.000000e+00
  %7119 = fadd fast float %7116, 1.000000e+00
  %7120 = fadd fast float %7119, %7118
  %7121 = fmul fast float %7107, 0x3FC5555560000000
  %7122 = fadd fast float %7088, 1.000000e+00
  %7123 = fsub fast float 1.000000e+00, %7094
  %7124 = fadd fast float %7123, %7093
  %7125 = fadd fast float %7124, %7098
  %7126 = fmul fast float %7125, 0x3FC5555560000000
  %7127 = fdiv fast float %7099, %7126
  %7128 = fsub fast float %7122, %7127
  %7129 = fsub fast float 1.000000e+00, %7088
  %7130 = fadd fast float %7104, %7091
  %7131 = fmul fast float %7130, 0x3FC5555560000000
  %7132 = fdiv fast float %7105, %7131
  %7133 = fadd fast float %7129, %7132
  %7134 = fadd fast float %7089, 1.000000e+00
  %7135 = fsub fast float 1.000000e+00, %7110
  %7136 = fadd fast float %7135, %7109
  %7137 = fadd fast float %7136, %7114
  %7138 = fmul fast float %7137, 0x3FC5555560000000
  %7139 = fdiv fast float %7115, %7138
  %7140 = fsub fast float %7134, %7139
  %7141 = fsub fast float 1.000000e+00, %7089
  %7142 = fadd fast float %7120, %7107
  %7143 = fmul fast float %7142, 0x3FC5555560000000
  %7144 = fdiv fast float %7121, %7143
  %7145 = fadd fast float %7144, %7141
  %7146 = fmul fast float %7128, %7082
  %7147 = fsub fast float %7003, %7146
  %7148 = fmul fast float %7133, %7082
  %7149 = fadd fast float %7148, %7003
  %7150 = fmul fast float %7145, %7083
  %7151 = fadd fast float %7150, %7004
  %7152 = fmul fast float %7140, %7083
  %7153 = fsub fast float %7004, %7152
  %7154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %7147, float %7153, float %7071, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7155 = extractvalue %dx.types.ResRet.f32 %7154, 0
  %7156 = extractvalue %dx.types.ResRet.f32 %7154, 1
  %7157 = extractvalue %dx.types.ResRet.f32 %7154, 2
  %7158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %7149, float %7153, float %7071, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7159 = extractvalue %dx.types.ResRet.f32 %7158, 0
  %7160 = extractvalue %dx.types.ResRet.f32 %7158, 1
  %7161 = extractvalue %dx.types.ResRet.f32 %7158, 2
  %7162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %7147, float %7151, float %7071, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7163 = extractvalue %dx.types.ResRet.f32 %7162, 0
  %7164 = extractvalue %dx.types.ResRet.f32 %7162, 1
  %7165 = extractvalue %dx.types.ResRet.f32 %7162, 2
  %7166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %7149, float %7151, float %7071, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7167 = extractvalue %dx.types.ResRet.f32 %7166, 0
  %7168 = extractvalue %dx.types.ResRet.f32 %7166, 1
  %7169 = extractvalue %dx.types.ResRet.f32 %7166, 2
  %7170 = fsub fast float %7163, %7155
  %7171 = fsub fast float %7164, %7156
  %7172 = fsub fast float %7165, %7157
  %7173 = fmul fast float %7170, %7143
  %7174 = fmul fast float %7171, %7143
  %7175 = fmul fast float %7172, %7143
  %7176 = fadd fast float %7173, %7155
  %7177 = fadd fast float %7174, %7156
  %7178 = fadd fast float %7175, %7157
  %7179 = fsub fast float %7167, %7159
  %7180 = fsub fast float %7168, %7160
  %7181 = fsub fast float %7169, %7161
  %7182 = fmul fast float %7179, %7143
  %7183 = fmul fast float %7180, %7143
  %7184 = fmul fast float %7181, %7143
  %7185 = fsub fast float %7159, %7176
  %7186 = fadd fast float %7185, %7182
  %7187 = fsub fast float %7160, %7177
  %7188 = fadd fast float %7187, %7183
  %7189 = fsub fast float %7161, %7178
  %7190 = fadd fast float %7189, %7184
  %7191 = fmul fast float %7186, %7131
  %7192 = fmul fast float %7188, %7131
  %7193 = fmul fast float %7190, %7131
  %7194 = fadd fast float %7191, %7176
  %7195 = fadd fast float %7192, %7177
  %7196 = fadd fast float %7193, %7178
  %7197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7198 = extractvalue %dx.types.CBufRet.f32 %7197, 1
  %7199 = fmul fast float %7194, %7198
  %7200 = fmul fast float %7195, %7198
  %7201 = fmul fast float %7196, %7198
  br label %7202

; <label>:7202                                    ; preds = %7033, %6990
  %7203 = phi float [ %7073, %7033 ], [ 1.000000e+00, %6990 ]
  %7204 = phi float [ %7074, %7033 ], [ 1.000000e+00, %6990 ]
  %7205 = phi float [ %7075, %7033 ], [ 1.000000e+00, %6990 ]
  %7206 = phi float [ %7199, %7033 ], [ 0.000000e+00, %6990 ]
  %7207 = phi float [ %7200, %7033 ], [ 0.000000e+00, %6990 ]
  %7208 = phi float [ %7201, %7033 ], [ 0.000000e+00, %6990 ]
  %7209 = fmul fast float %7206, %5540
  %7210 = fmul fast float %7207, %5540
  %7211 = fmul fast float %7208, %5540
  %7212 = fmul fast float %7203, %6997
  %7213 = call float @dx.op.dot3.f32(i32 55, float %7203, float %7204, float %7205, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7214 = call float @dx.op.dot3.f32(i32 55, float %7209, float %7210, float %7211, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7215 = select i1 %233, float %7213, float %7203
  %7216 = select i1 %233, float %7213, float %7204
  %7217 = select i1 %233, float 1.000000e+00, float %7205
  %7218 = select i1 %233, float %7214, float %7209
  %7219 = select i1 %233, float 0.000000e+00, float %7210
  %7220 = select i1 %233, float 0.000000e+00, float %7211
  %7221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7222 = extractvalue %dx.types.CBufRet.i32 %7221, 3
  %7223 = and i32 %7222, 3
  %7224 = icmp ne i32 %7223, 0
  %7225 = and i32 %7222, 4
  %7226 = icmp ne i32 %7225, 0
  %7227 = and i1 %7224, %7226
  %7228 = and i1 %233, %7227
  br i1 %7228, label %7229, label %7235

; <label>:7229                                    ; preds = %7202
  %7230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7231 = extractvalue %dx.types.CBufRet.f32 %7230, 1
  %7232 = fadd fast float %7212, -1.000000e+00
  %7233 = fmul fast float %7231, %7232
  %7234 = fadd fast float %7233, 1.000000e+00
  br label %7235

; <label>:7235                                    ; preds = %7229, %7202
  %7236 = phi float [ %7234, %7229 ], [ %7212, %7202 ]
  %7237 = fadd fast float %6994, %6991
  %7238 = fmul fast float %7215, %7237
  %7239 = fadd fast float %7238, %7218
  %7240 = fadd fast float %6995, %6992
  %7241 = fmul fast float %7216, %7240
  %7242 = fadd fast float %7241, %7219
  %7243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7244 = extractvalue %dx.types.CBufRet.f32 %7243, 0
  br i1 %233, label %7245, label %7269

; <label>:7245                                    ; preds = %7235
  %7246 = fadd fast float %7239, %7242
  %7247 = fmul fast float %7244, %7246
  %7248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7249 = extractvalue %dx.types.CBufRet.f32 %7248, 3
  %7250 = extractvalue %dx.types.CBufRet.f32 %5544, 1
  %7251 = fsub fast float %5549, %5543
  %7252 = fadd fast float %7251, %5550
  %7253 = fsub fast float %7252, %7250
  %7254 = extractvalue %dx.types.CBufRet.f32 %5544, 2
  %7255 = fmul fast float %7253, %7254
  %7256 = call float @dx.op.unary.f32(i32 7, float %7255)  ; Saturate(value)
  %7257 = fsub fast float %7256, %7249
  %7258 = fmul fast float %7257, %7236
  %7259 = fadd fast float %7258, %7249
  %7260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.f32 %7260, 0
  %7262 = fsub fast float %7259, %7261
  %7263 = fmul fast float %7262, 1.000000e+01
  %7264 = call float @dx.op.unary.f32(i32 7, float %7263)  ; Saturate(value)
  %7265 = fsub fast float %3821, %5540
  %7266 = fmul fast float %7264, %7265
  %7267 = fadd fast float %7266, %5540
  %7268 = fmul fast float %7267, %7259
  br label %7293

; <label>:7269                                    ; preds = %7235
  %7270 = fadd fast float %6996, %6993
  %7271 = fmul fast float %7217, %7270
  %7272 = fadd fast float %7271, %7220
  %7273 = fmul fast float %7244, %7239
  %7274 = fmul fast float %7244, %7242
  %7275 = fmul fast float %7244, %7272
  %7276 = call float @dx.op.binary.f32(i32 35, float %7274, float %7275)  ; FMax(a,b)
  %7277 = call float @dx.op.binary.f32(i32 35, float %7273, float %7276)  ; FMax(a,b)
  %7278 = call float @dx.op.binary.f32(i32 35, float %7277, float %5540)  ; FMax(a,b)
  %7279 = fcmp fast ugt float %7278, 0x3F10000000000000
  br i1 %7279, label %7281, label %7280

; <label>:7280                                    ; preds = %7269
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7281

; <label>:7281                                    ; preds = %7280, %7269
  %7282 = add i32 %36, 356
  %7283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %7282, i32 undef)  ; BufferLoad(srv,index,wot)
  %7284 = extractvalue %dx.types.ResRet.i32 %7283, 0
  %7285 = and i32 %7284, 32
  %7286 = icmp eq i32 %7285, 0
  br i1 %7286, label %7293, label %7287

; <label>:7287                                    ; preds = %7281
  %7288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7289 = extractvalue %dx.types.CBufRet.f32 %7288, 0
  %7290 = fmul fast float %7289, 0x3FE99999A0000000
  %7291 = fadd fast float %7289, %7273
  %7292 = fadd fast float %7290, %7275
  br label %7293

; <label>:7293                                    ; preds = %7287, %7281, %7245
  %7294 = phi float [ %7247, %7245 ], [ %7291, %7287 ], [ %7273, %7281 ]
  %7295 = phi float [ %7268, %7245 ], [ %7274, %7287 ], [ %7274, %7281 ]
  %7296 = phi float [ %7267, %7245 ], [ %7292, %7287 ], [ %7275, %7281 ]
  %7297 = phi float [ %7267, %7245 ], [ %5540, %7287 ], [ %5540, %7281 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7298 = call float @dx.op.binary.f32(i32 36, float %7294, float 3.225500e+04)  ; FMin(a,b)
  %7299 = call float @dx.op.binary.f32(i32 36, float %7295, float 3.225500e+04)  ; FMin(a,b)
  %7300 = call float @dx.op.binary.f32(i32 36, float %7296, float 3.225500e+04)  ; FMin(a,b)
  %7301 = call float @dx.op.binary.f32(i32 36, float %7297, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7298)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7299)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7300)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7301)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!47}
!dx.entryPoints = !{!48}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !39, !42}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !27}
!27 = !{i32 0, i32 5}
!28 = !{i32 20, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!31 = !{i32 23, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!32 = !{i32 24, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!33 = !{i32 25, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!34 = !{i32 26, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!35 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !36}
!36 = !{i32 0, i32 14}
!37 = !{i32 28, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!38 = !{i32 29, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!39 = !{!40, !41}
!40 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!41 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!42 = !{!43, !44, !45, !46}
!43 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!44 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!45 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!46 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!47 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !75}
!49 = !{!50, !73, null}
!50 = !{!51, !54, !55, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72}
!51 = !{i32 0, !"SV_Position", i8 9, i8 3, !52, i8 4, i32 1, i8 4, i32 0, i8 0, !53}
!52 = !{i32 0}
!53 = !{i32 3, i32 15}
!54 = !{i32 1, !"COLOR", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 1, i8 0, !53}
!55 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 2, i8 0, !56}
!56 = !{i32 3, i32 3}
!57 = !{i32 3, !"NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 3, i8 0, !58}
!58 = !{i32 3, i32 7}
!59 = !{i32 4, !"TANGENT", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 4, i8 0, !53}
!60 = !{i32 5, !"SH_RED", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 5, i8 0, !53}
!61 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, !53}
!62 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 7, i8 0, !53}
!63 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 8, i8 0, !58}
!64 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 9, i8 0, !53}
!65 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 2, i32 10, i8 0, !56}
!66 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 11, i8 0, !53}
!67 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 12, i8 0, !58}
!68 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !52, i8 1, i32 1, i8 1, i32 13, i8 0, !69}
!69 = !{i32 3, i32 1}
!70 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !52, i8 1, i32 1, i8 4, i32 14, i8 0, !69}
!71 = !{i32 15, !"SV_IsFrontFace", i8 5, i8 13, !52, i8 1, i32 1, i8 1, i32 13, i8 1, !69}
!72 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!73 = !{!74}
!74 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !53}
!75 = !{i32 0, i64 16}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = !{!81, !81, i64 0}
!81 = !{!"float", !82, i64 0}
!82 = !{!"omnipotent char", !83, i64 0}
!83 = !{!"Simple C/C++ TBAA"}
!84 = !{!85, !87, !89, !90, !92, !93, !94, !96, !97, !98}
!85 = distinct !{!85, !86, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!86 = distinct !{!86, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!87 = distinct !{!87, !88, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!88 = distinct !{!88, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!89 = distinct !{!89, !88, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!90 = distinct !{!90, !91, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!91 = distinct !{!91, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!92 = distinct !{!92, !91, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!93 = distinct !{!93, !91, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!94 = distinct !{!94, !95, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!95 = distinct !{!95, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!96 = distinct !{!96, !95, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!97 = distinct !{!97, !95, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!98 = distinct !{!98, !99, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!99 = distinct !{!99, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"\01?sort@@YAXAIAM00@Z: %c"}
!102 = distinct !{!102, !"\01?sort@@YAXAIAM00@Z"}
!103 = !{!104, !105, !85, !87, !89, !90, !92, !93, !94, !96, !97, !98}
!104 = distinct !{!104, !102, !"\01?sort@@YAXAIAM00@Z: %a"}
!105 = distinct !{!105, !102, !"\01?sort@@YAXAIAM00@Z: %b"}
!106 = !{!105}
!107 = !{!104, !101, !85, !87, !89, !90, !92, !93, !94, !96, !97, !98}
!108 = !{!104}
!109 = !{!105, !101, !85, !87, !89, !90, !92, !93, !94, !96, !97, !98}
!110 = !{!111}
!111 = distinct !{!111, !112, !"\01?sort@@YAXAIAM00@Z: %c"}
!112 = distinct !{!112, !"\01?sort@@YAXAIAM00@Z"}
!113 = !{!114, !115, !85, !87, !89, !90, !92, !93, !94, !96, !97, !98}
!114 = distinct !{!114, !112, !"\01?sort@@YAXAIAM00@Z: %a"}
!115 = distinct !{!115, !112, !"\01?sort@@YAXAIAM00@Z: %b"}
!116 = !{!115}
!117 = !{!114, !111, !85, !87, !89, !90, !92, !93, !94, !96, !97, !98}
!118 = !{!114}
!119 = !{!115, !111, !85, !87, !89, !90, !92, !93, !94, !96, !97, !98}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}

