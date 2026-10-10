;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yzw
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
; shader hash: 15e501241245b17b7227426b046d9072
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
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          3d      T4     t52,space2     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     u32     2darray      T6     t11,space2     1
;                                   texture     f32     2darray      T7     t10,space2     1
;                                   texture     f32          2d      T8     t69,space2     1
;                                   texture    byte         r/o      T9     t18,space1     1
;                                   texture    byte         r/o     T10     t19,space1     1
;                                   texture    byte         r/o     T11     t20,space1     1
;                                   texture    byte         r/o     T12     t21,space1     1
;                                   texture     f32          2d     T13     t37,space2     1
;                                   texture     f32          2d     T14     t58,space2     1
;                                   texture     f32          2d     T15     t59,space2     1
;                                   texture     f32          2d     T16     t60,space2     1
;                                   texture    byte         r/o     T17     t45,space1     1
;                                   texture    byte         r/o     T18     t46,space1     1
;                                   texture    byte         r/o     T19     t47,space1     1
;                                   texture    byte         r/o     T20     t48,space1     1
;                                   texture     f32          2d     T21     t57,space2     1
;                                   texture    byte         r/o     T22     t69,space1     1
;                                   texture     f32          2d     T23     t34,space2     1
;                                   texture    byte         r/o     T24     t10,space1     1
;                                   texture    byte         r/o     T25     t68,space1     1
;                                   texture     f32          2d     T26      t0,space2     1
;                                   texture    byte         r/o     T27     t11,space1     1
;                                   texture    byte         r/o     T28     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
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

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %73 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = fmul fast float %75, %69
  %77 = fmul fast float %75, %70
  %78 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %79 = bitcast float %78 to i32
  %80 = ashr i32 %79, 1
  %81 = sub nsw i32 1597250115, %80
  %82 = bitcast i32 %81 to float
  %83 = fmul fast float %82, %61
  %84 = fmul fast float %82, %62
  %85 = fmul fast float %82, %63
  %86 = fmul fast float %62, %59
  %87 = fmul fast float %63, %58
  %88 = fsub fast float %86, %87
  %89 = fmul fast float %63, %57
  %90 = fmul fast float %61, %59
  %91 = fsub fast float %89, %90
  %92 = fmul fast float %61, %58
  %93 = fmul fast float %62, %57
  %94 = fsub fast float %92, %93
  %95 = fmul fast float %88, %60
  %96 = fmul fast float %91, %60
  %97 = fmul fast float %94, %60
  %98 = call float @dx.op.dot3.f32(i32 55, float %50, float %51, float %52, float %50, float %51, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %99 = bitcast float %98 to i32
  %100 = ashr i32 %99, 1
  %101 = sub nsw i32 1597250115, %100
  %102 = bitcast i32 %101 to float
  %103 = fmul fast float %102, %50
  %104 = fmul fast float %102, %51
  %105 = fmul fast float %102, %52
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = fcmp fast une float %107, 0.000000e+00
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %76, 2.000000e+00
  %113 = fmul fast float %112, %110
  %114 = fmul fast float %77, 2.000000e+00
  %115 = fmul fast float %114, %111
  %116 = fsub fast float 1.000000e+00, %113
  %117 = fsub fast float 1.000000e+00, %115
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = select i1 %108, float %119, float %123
  %127 = select i1 %108, float %120, float %124
  %128 = select i1 %108, float %121, float %125
  %129 = fmul fast float %126, %116
  %130 = fmul fast float %127, %116
  %131 = fmul fast float %128, %116
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = select i1 %108, float %133, float %137
  %141 = select i1 %108, float %134, float %138
  %142 = select i1 %108, float %135, float %139
  %143 = fmul fast float %140, %117
  %144 = fmul fast float %141, %117
  %145 = fmul fast float %142, %117
  %146 = fadd fast float %143, %129
  %147 = fadd fast float %144, %130
  %148 = fadd fast float %145, %131
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = select i1 %108, float %150, float %154
  %158 = select i1 %108, float %151, float %155
  %159 = select i1 %108, float %152, float %156
  %160 = fadd fast float %146, %157
  %161 = fadd fast float %147, %158
  %162 = fadd fast float %148, %159
  %163 = fmul fast float %160, %71
  %164 = fmul fast float %161, %71
  %165 = fmul fast float %162, %71
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %169 = fmul fast float %167, %76
  %170 = fmul fast float %168, %77
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = and i32 %172, 114688
  %174 = icmp ne i32 %173, 0
  %175 = select i1 %174, float %169, float 0.000000e+00
  %176 = select i1 %174, float %170, float 0.000000e+00
  %177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %29, float %175, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = fmul fast float %178, 2.550000e+02
  %180 = fptoui float %179 to i32
  %181 = select i1 %174, i32 %180, i32 0
  %182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.i32 %182, 3
  %184 = and i32 %183, 3
  %185 = icmp ne i32 %184, 0
  %186 = and i32 %183, 4
  %187 = icmp ne i32 %186, 0
  %188 = and i1 %185, %187
  br i1 %188, label %189, label %198

; <label>:189                                     ; preds = %0
  %190 = fmul fast float %111, %77
  %191 = fmul fast float %110, %76
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %191, float %190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fsub fast float 1.000000e+00, %193
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = fcmp fast olt float %194, %196
  br label %201

; <label>:198                                     ; preds = %0
  %199 = icmp eq i32 %186, 0
  %200 = and i1 %185, %199
  br label %201

; <label>:201                                     ; preds = %198, %189
  %202 = phi i1 [ %197, %189 ], [ %200, %198 ]
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %205 = fmul fast float %204, 0x3FE3C6EF40000000
  %206 = frem fast float %76, 2.560000e+02
  %207 = frem fast float %77, 2.560000e+02
  %208 = fptoui float %206 to i32
  %209 = fptoui float %207 to i32
  %210 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fadd fast float %211, %205
  %213 = call float @dx.op.unary.f32(i32 22, float %212)  ; Frc(value)
  %214 = add i32 %32, 156
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = shl i32 %216, 4
  %218 = and i32 %217, 32752
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = lshr i32 %216, 7
  %221 = and i32 %220, 32752
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = lshr i32 %216, 22
  %224 = shl nuw nsw i32 %223, 5
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = add i32 %32, 216
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F70101020000000
  %232 = lshr i32 %228, 8
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F70101020000000
  %236 = lshr i32 %228, 16
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = add i32 %32, 36
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 65535
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %242, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = add i32 %32, 288
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 65535
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %249, 16
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = fmul fast float %251, 0x3F50624DE0000000
  %255 = fmul fast float %253, 0x3F50624DE0000000
  %256 = add i32 %32, 172
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = shl i32 %258, 4
  %260 = and i32 %259, 32752
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %258, 7
  %263 = and i32 %262, 32752
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %258, 22
  %266 = shl nuw nsw i32 %265, 5
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = add i32 %32, 232
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F70101020000000
  %274 = lshr i32 %270, 8
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = lshr i32 %270, 16
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = add i32 %32, 52
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 65535
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %284, 16
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %32, 304
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 65535
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %291, 16
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = fmul fast float %293, 0x3F50624DE0000000
  %297 = fmul fast float %295, 0x3F50624DE0000000
  %298 = add i32 %32, 188
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = shl i32 %300, 4
  %302 = and i32 %301, 32752
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %300, 7
  %305 = and i32 %304, 32752
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %300, 22
  %308 = shl nuw nsw i32 %307, 5
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = add i32 %32, 248
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = lshr i32 %312, 8
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = lshr i32 %312, 16
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = add i32 %32, 68
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %326, 16
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = add i32 %32, 320
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 65535
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %333, 16
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = fmul fast float %335, 0x3F50624DE0000000
  %339 = fmul fast float %337, 0x3F50624DE0000000
  %340 = add i32 %32, 204
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = shl i32 %342, 4
  %344 = and i32 %343, 32752
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %342, 7
  %347 = and i32 %346, 32752
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %342, 22
  %350 = shl nuw nsw i32 %349, 5
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %32, 264
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 255
  %356 = uitofp i32 %355 to float
  %357 = fmul fast float %356, 0x3F70101020000000
  %358 = lshr i32 %354, 8
  %359 = and i32 %358, 255
  %360 = uitofp i32 %359 to float
  %361 = fmul fast float %360, 0x3F70101020000000
  %362 = lshr i32 %354, 16
  %363 = and i32 %362, 255
  %364 = uitofp i32 %363 to float
  %365 = fmul fast float %364, 0x3F70101020000000
  %366 = add i32 %32, 84
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 65535
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %368, 16
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = add i32 %32, 336
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 65535
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %375, 16
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = fmul fast float %377, 0x3F50624DE0000000
  %381 = fmul fast float %379, 0x3F50624DE0000000
  %382 = add i32 %32, 348
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 32
  %386 = icmp eq i32 %385, 0
  %387 = and i32 %384, 64
  %388 = icmp eq i32 %387, 0
  %389 = and i32 %384, 128
  %390 = icmp eq i32 %389, 0
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 2
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %408, label %395

; <label>:395                                     ; preds = %201
  %396 = add i32 %32, 488
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = add i32 %398, 0
  %400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %399, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %401 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %400, %dx.types.Handle %73, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = extractvalue %dx.types.ResRet.f32 %401, 1
  %404 = extractvalue %dx.types.ResRet.f32 %401, 2
  %405 = fmul fast float %402, %66
  %406 = fmul fast float %403, %67
  %407 = fmul fast float %404, %68
  br label %408

; <label>:408                                     ; preds = %395, %201
  %409 = phi float [ %68, %201 ], [ %407, %395 ]
  %410 = phi float [ %67, %201 ], [ %406, %395 ]
  %411 = phi float [ %66, %201 ], [ %405, %395 ]
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 2
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %435, label %416

; <label>:416                                     ; preds = %408
  %417 = add i32 %32, 44
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 1
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %421, float %411, float 1.000000e+00
  %423 = add i32 %32, 60
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 1
  %427 = icmp ne i32 %426, 0
  %428 = select i1 %427, float %410, float 1.000000e+00
  %429 = add i32 %32, 76
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 1
  %433 = icmp ne i32 %432, 0
  %434 = select i1 %433, float %409, float 1.000000e+00
  br label %435

; <label>:435                                     ; preds = %416, %408
  %436 = phi float [ %409, %408 ], [ %434, %416 ]
  %437 = phi float [ %410, %408 ], [ %428, %416 ]
  %438 = phi float [ %411, %408 ], [ %422, %416 ]
  %439 = lshr i32 %413, 20
  %440 = and i32 %439, 3
  %441 = add nuw nsw i32 %440, 1
  %442 = add i32 %32, 24
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = add i32 %32, 28
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = or i32 %447, %444
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %908, label %450

; <label>:450                                     ; preds = %435
  %451 = and i32 %444, 262144
  %452 = icmp ne i32 %451, 0
  %453 = select i1 %452, float %37, float 1.000000e+00
  %454 = select i1 %452, float %38, float 0.000000e+00
  %455 = select i1 %452, float %39, float 0.000000e+00
  %456 = select i1 %452, float %40, float 1.000000e+00
  %457 = select i1 %452, float %41, float %64
  %458 = select i1 %452, float %42, float %65
  %459 = add i32 %32, 284
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = lshr i32 %461, 16
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = fmul fast float %463, 0x3F50624DE0000000
  %465 = add i32 %32, 88
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = lshr i32 %467, 16
  %469 = and i32 %468, 255
  %470 = lshr i32 %467, 24
  %471 = add i32 %32, 292
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 65535
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = lshr i32 %473, 16
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = add i32 %32, 32
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = lshr i32 %480, 22
  %482 = shl nuw nsw i32 %481, 5
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = shl i32 %480, 4
  %485 = and i32 %484, 32752
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = lshr i32 %480, 7
  %488 = and i32 %487, 32752
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 3
  %492 = fmul fast float %491, 1.000000e+03
  %493 = fmul fast float %254, %492
  %494 = call float @dx.op.unary.f32(i32 22, float %493)  ; Frc(value)
  %495 = fadd fast float %494, %244
  %496 = fmul fast float %255, %492
  %497 = call float @dx.op.unary.f32(i32 22, float %496)  ; Frc(value)
  %498 = fadd fast float %497, %246
  %499 = fmul fast float %464, %492
  %500 = call float @dx.op.unary.f32(i32 22, float %499)  ; Frc(value)
  %501 = fmul fast float %500, 0x401921FB60000000
  %502 = fadd fast float %501, %483
  %503 = call float @dx.op.unary.f32(i32 13, float %502)  ; Sin(value)
  %504 = call float @dx.op.unary.f32(i32 12, float %502)  ; Cos(value)
  %505 = fsub fast float -0.000000e+00, %503
  %506 = fadd fast float %457, -5.000000e-01
  %507 = fadd fast float %458, -5.000000e-01
  %508 = fmul fast float %475, %506
  %509 = fmul fast float %477, %507
  %510 = fadd fast float %508, 5.000000e-01
  %511 = fadd fast float %509, 5.000000e-01
  %512 = fmul fast float %486, %510
  %513 = fmul fast float %489, %511
  %514 = fmul fast float %504, %512
  %515 = call float @dx.op.tertiary.f32(i32 46, float %505, float %513, float %514)  ; FMad(a,b,c)
  %516 = fmul fast float %503, %512
  %517 = call float @dx.op.tertiary.f32(i32 46, float %504, float %513, float %516)  ; FMad(a,b,c)
  %518 = fadd fast float %495, %515
  %519 = fadd fast float %498, %517
  %520 = icmp ugt i32 %469, 1
  %521 = icmp ugt i32 %467, 33554431
  %522 = or i1 %521, %520
  br i1 %522, label %523, label %548

; <label>:523                                     ; preds = %450
  %524 = add i32 %32, 228
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = lshr i32 %526, 16
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = fmul fast float %491, %528
  %530 = call float @dx.op.unary.f32(i32 22, float %529)  ; Frc(value)
  %531 = mul nuw nsw i32 %469, %470
  %532 = uitofp i32 %531 to float
  %533 = fmul fast float %530, %532
  %534 = call float @dx.op.unary.f32(i32 27, float %533)  ; Round_ni(value)
  %535 = fptoui float %534 to i32
  %536 = urem i32 %535, %469
  %537 = udiv i32 %535, %470
  %538 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %539 = call float @dx.op.unary.f32(i32 22, float %519)  ; Frc(value)
  %540 = uitofp i32 %536 to float
  %541 = uitofp i32 %537 to float
  %542 = fadd fast float %538, %540
  %543 = fadd fast float %539, %541
  %544 = uitofp i32 %469 to float
  %545 = uitofp i32 %470 to float
  %546 = fdiv fast float %542, %544
  %547 = fdiv fast float %543, %545
  br label %548

; <label>:548                                     ; preds = %523, %450
  %549 = phi float [ %546, %523 ], [ %518, %450 ]
  %550 = phi float [ %547, %523 ], [ %519, %450 ]
  %551 = and i32 %444, 16
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %749, label %553

; <label>:553                                     ; preds = %548
  %554 = add i32 %32, 376
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = add i32 %556, 0
  %558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %557, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %558, %dx.types.Handle %72, float %549, float %550, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = extractvalue %dx.types.ResRet.f32 %559, 2
  %563 = extractvalue %dx.types.ResRet.f32 %559, 3
  %564 = and i32 %467, 255
  %565 = uitofp i32 %564 to float
  %566 = lshr i32 %467, 8
  %567 = and i32 %566, 255
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %563, %565
  %570 = fadd fast float %569, %568
  %571 = fmul fast float %570, 0x3F70101000000000
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 512
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %584, label %576

; <label>:576                                     ; preds = %553
  %577 = add i32 %32, 456
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = add i32 %579, 0
  %581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %580, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %582 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %581, %dx.types.Handle %73, float %549, float %550, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  br label %584

; <label>:584                                     ; preds = %576, %553
  %585 = phi float [ %583, %576 ], [ 1.000000e+00, %553 ]
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %587, 33554432
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %696, label %590

; <label>:590                                     ; preds = %584
  %591 = add i32 %32, 224
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = and i32 %593, 65535
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %593, 16
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = add i32 %32, 228
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = and i32 %600, 65535
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = lshr i32 %604, 24
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %606, 0x3F70101020000000
  %608 = and i32 %604, 255
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = lshr i32 %604, 8
  %612 = and i32 %611, 255
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %613, 0x3F70101020000000
  %615 = lshr i32 %604, 16
  %616 = and i32 %615, 255
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %617, 0x3F70101020000000
  %619 = add i32 %32, 220
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = lshr i32 %621, 24
  %623 = uitofp i32 %622 to float
  %624 = fmul fast float %623, 0x3F70101020000000
  %625 = and i32 %621, 255
  %626 = uitofp i32 %625 to float
  %627 = fmul fast float %626, 0x3F70101020000000
  %628 = lshr i32 %621, 8
  %629 = and i32 %628, 255
  %630 = uitofp i32 %629 to float
  %631 = fmul fast float %630, 0x3F70101020000000
  %632 = lshr i32 %621, 16
  %633 = and i32 %632, 255
  %634 = uitofp i32 %633 to float
  %635 = fmul fast float %634, 0x3F70101020000000
  %636 = bitcast float %560 to i32
  %637 = ashr i32 %636, 1
  %638 = sub nsw i32 1597463174, %637
  %639 = bitcast i32 %638 to float
  %640 = fmul fast float %560, 5.000000e-01
  %641 = fmul fast float %639, %639
  %642 = fmul fast float %641, %640
  %643 = fsub fast float 1.500000e+00, %642
  %644 = fmul fast float %639, %560
  %645 = fmul fast float %644, %643
  %646 = bitcast float %561 to i32
  %647 = ashr i32 %646, 1
  %648 = sub nsw i32 1597463174, %647
  %649 = bitcast i32 %648 to float
  %650 = fmul fast float %561, 5.000000e-01
  %651 = fmul fast float %649, %649
  %652 = fmul fast float %651, %650
  %653 = fsub fast float 1.500000e+00, %652
  %654 = fmul fast float %649, %561
  %655 = fmul fast float %654, %653
  %656 = bitcast float %562 to i32
  %657 = ashr i32 %656, 1
  %658 = sub nsw i32 1597463174, %657
  %659 = bitcast i32 %658 to float
  %660 = fmul fast float %562, 5.000000e-01
  %661 = fmul fast float %659, %659
  %662 = fmul fast float %661, %660
  %663 = fsub fast float 1.500000e+00, %662
  %664 = fmul fast float %659, %562
  %665 = fmul fast float %664, %663
  %666 = fsub fast float %645, %627
  %667 = fsub fast float %655, %631
  %668 = fsub fast float %665, %635
  %669 = fmul fast float %666, %595
  %670 = fmul fast float %667, %597
  %671 = fmul fast float %668, %602
  %672 = fadd fast float %669, %610
  %673 = fadd fast float %670, %614
  %674 = fadd fast float %671, %618
  %675 = call float @dx.op.unary.f32(i32 7, float %672)  ; Saturate(value)
  %676 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %677 = call float @dx.op.unary.f32(i32 7, float %674)  ; Saturate(value)
  %678 = fmul fast float %675, %675
  %679 = fmul fast float %676, %676
  %680 = fmul fast float %677, %677
  %681 = fsub fast float %678, %560
  %682 = fsub fast float %679, %561
  %683 = fsub fast float %680, %562
  %684 = fmul fast float %681, %585
  %685 = fmul fast float %682, %585
  %686 = fmul fast float %683, %585
  %687 = fadd fast float %684, %560
  %688 = fadd fast float %685, %561
  %689 = fadd fast float %686, %562
  %690 = fadd fast float %607, %571
  %691 = fsub fast float %690, %624
  %692 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %693 = fsub fast float %692, %571
  %694 = fmul fast float %693, %585
  %695 = fadd fast float %694, %571
  br label %749

; <label>:696                                     ; preds = %584
  %697 = and i32 %587, 134217728
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %733, label %699

; <label>:699                                     ; preds = %696
  %700 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %701 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %702 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %703 = fadd fast float %700, -5.000000e-01
  %704 = fadd fast float %701, -5.000000e-01
  %705 = fadd fast float %702, -5.000000e-01
  %706 = fmul fast float %703, %585
  %707 = fmul fast float %704, %585
  %708 = fmul fast float %705, %585
  %709 = fadd fast float %706, 5.000000e-01
  %710 = fadd fast float %707, 5.000000e-01
  %711 = fadd fast float %708, 5.000000e-01
  %712 = call float @dx.op.unary.f32(i32 24, float %560)  ; Sqrt(value)
  %713 = call float @dx.op.unary.f32(i32 24, float %561)  ; Sqrt(value)
  %714 = call float @dx.op.unary.f32(i32 24, float %562)  ; Sqrt(value)
  %715 = fmul fast float %709, 2.000000e+00
  %716 = fsub fast float 1.000000e+00, %715
  %717 = fmul fast float %716, %712
  %718 = fadd fast float %717, %715
  %719 = fmul fast float %718, %712
  %720 = fmul fast float %710, 2.000000e+00
  %721 = fsub fast float 1.000000e+00, %720
  %722 = fmul fast float %721, %713
  %723 = fadd fast float %722, %720
  %724 = fmul fast float %723, %713
  %725 = fmul fast float %711, 2.000000e+00
  %726 = fsub fast float 1.000000e+00, %725
  %727 = fmul fast float %726, %714
  %728 = fadd fast float %727, %725
  %729 = fmul fast float %728, %714
  %730 = fmul fast float %719, %719
  %731 = fmul fast float %724, %724
  %732 = fmul fast float %729, %729
  br label %749

; <label>:733                                     ; preds = %696
  %734 = fmul fast float %231, %231
  %735 = fmul fast float %235, %235
  %736 = fmul fast float %239, %239
  %737 = fadd fast float %734, -1.000000e+00
  %738 = fadd fast float %735, -1.000000e+00
  %739 = fadd fast float %736, -1.000000e+00
  %740 = fmul fast float %585, %737
  %741 = fmul fast float %585, %738
  %742 = fmul fast float %585, %739
  %743 = fadd fast float %740, 1.000000e+00
  %744 = fadd fast float %741, 1.000000e+00
  %745 = fadd fast float %742, 1.000000e+00
  %746 = fmul fast float %743, %560
  %747 = fmul fast float %744, %561
  %748 = fmul fast float %745, %562
  br label %749

; <label>:749                                     ; preds = %733, %699, %590, %548
  %750 = phi float [ %695, %590 ], [ %571, %699 ], [ %571, %733 ], [ 0x3FA23C0BE0000000, %548 ]
  %751 = phi float [ %687, %590 ], [ %730, %699 ], [ %746, %733 ], [ 1.000000e+00, %548 ]
  %752 = phi float [ %688, %590 ], [ %731, %699 ], [ %747, %733 ], [ 1.000000e+00, %548 ]
  %753 = phi float [ %689, %590 ], [ %732, %699 ], [ %748, %733 ], [ 1.000000e+00, %548 ]
  %754 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.i32 %754, 1
  %756 = and i32 %755, 1
  %757 = icmp ne i32 %756, 0
  %758 = add i32 %32, 356
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = and i32 %760, 32
  %762 = icmp ne i32 %761, 0
  %763 = and i1 %757, %762
  %764 = select i1 %763, float 1.000000e+00, float %751
  %765 = select i1 %763, float 0x3FD3333340000000, float %752
  %766 = select i1 %763, float 0x3FD3333340000000, float %753
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = and i32 %768, 32
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %843, label %771

; <label>:771                                     ; preds = %749
  %772 = add i32 %32, 92
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = add i32 %32, 392
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = add i32 %777, 0
  %779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %778, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %780 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %779, %dx.types.Handle %72, float %549, float %550, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %781 = extractvalue %dx.types.ResRet.f32 %780, 0
  %782 = extractvalue %dx.types.ResRet.f32 %780, 1
  %783 = extractvalue %dx.types.ResRet.f32 %780, 2
  %784 = extractvalue %dx.types.ResRet.f32 %780, 3
  %785 = and i32 %774, 255
  %786 = uitofp i32 %785 to float
  %787 = lshr i32 %774, 8
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = lshr i32 %774, 16
  %791 = and i32 %790, 255
  %792 = uitofp i32 %791 to float
  %793 = fmul fast float %792, 0x3F70101000000000
  %794 = fmul fast float %781, %786
  %795 = fadd fast float %794, %789
  %796 = fmul fast float %795, 0x3F70101000000000
  %797 = fadd fast float %782, -5.000000e-01
  %798 = fadd fast float %784, -5.000000e-01
  %799 = fmul fast float %797, %793
  %800 = fmul fast float %798, %793
  %801 = fadd fast float %799, 5.000000e-01
  %802 = fadd fast float %800, 5.000000e-01
  %803 = fmul fast float %801, 2.000000e+00
  %804 = fadd fast float %803, -1.000000e+00
  %805 = fmul fast float %802, 2.000000e+00
  %806 = fadd fast float %805, -1.000000e+00
  %807 = fadd fast float %804, %806
  %808 = fmul fast float %807, 5.000000e-01
  %809 = fsub fast float %804, %806
  %810 = fmul fast float %809, 5.000000e-01
  %811 = call float @dx.op.unary.f32(i32 6, float %808)  ; FAbs(value)
  %812 = fsub fast float 1.000000e+00, %811
  %813 = call float @dx.op.unary.f32(i32 6, float %810)  ; FAbs(value)
  %814 = fsub fast float %812, %813
  %815 = call float @dx.op.dot3.f32(i32 55, float %808, float %810, float %814, float %808, float %810, float %814)  ; Dot3(ax,ay,az,bx,by,bz)
  %816 = call float @dx.op.unary.f32(i32 25, float %815)  ; Rsqrt(value)
  %817 = fmul fast float %808, %816
  %818 = fmul fast float %810, %816
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = and i32 %820, 67108864
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %839, label %823

; <label>:823                                     ; preds = %771
  %824 = add i32 %32, 280
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = and i32 %826, 65535
  %828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %827)  ; LegacyF16ToF32(value)
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = and i32 %830, 65535
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = lshr i32 %826, 16
  %834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %833)  ; LegacyF16ToF32(value)
  %835 = fsub fast float %796, %834
  %836 = fmul fast float %835, %828
  %837 = fadd fast float %836, %832
  %838 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  br label %839

; <label>:839                                     ; preds = %823, %771
  %840 = phi float [ %838, %823 ], [ %796, %771 ]
  %841 = call float @dx.op.dot2.f32(i32 54, float %817, float %818, float %453, float %454)  ; Dot2(ax,ay,bx,by)
  %842 = call float @dx.op.dot2.f32(i32 54, float %817, float %818, float %455, float %456)  ; Dot2(ax,ay,bx,by)
  br label %843

; <label>:843                                     ; preds = %839, %749
  %844 = phi float [ %840, %839 ], [ 0x3FD6666660000000, %749 ]
  %845 = phi float [ %841, %839 ], [ 0.000000e+00, %749 ]
  %846 = phi float [ %842, %839 ], [ 0.000000e+00, %749 ]
  %847 = phi float [ %783, %839 ], [ 1.000000e+00, %749 ]
  %848 = add i32 %32, 160
  %849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %848, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = lshr i32 %850, 22
  %852 = shl nuw nsw i32 %851, 5
  %853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %852)  ; LegacyF16ToF32(value)
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = and i32 %855, 64
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %891, label %858

; <label>:858                                     ; preds = %843
  %859 = add i32 %32, 408
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %859, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = add i32 %861, 0
  %863 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %862, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = and i32 %865, 131072
  %867 = icmp eq i32 %866, 0
  %868 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %863, %dx.types.Handle %72, float %549, float %550, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = extractvalue %dx.types.ResRet.f32 %868, 1
  %871 = extractvalue %dx.types.ResRet.f32 %868, 2
  %872 = fmul fast float %869, %219
  %873 = fmul fast float %870, %222
  %874 = fmul fast float %871, %225
  br i1 %867, label %881, label %875

; <label>:875                                     ; preds = %858
  %876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.f32 %876, 0
  %878 = fmul fast float %877, %872
  %879 = fmul fast float %877, %873
  %880 = fmul fast float %877, %874
  br label %881

; <label>:881                                     ; preds = %875, %858
  %882 = phi float [ %878, %875 ], [ %872, %858 ]
  %883 = phi float [ %879, %875 ], [ %873, %858 ]
  %884 = phi float [ %880, %875 ], [ %874, %858 ]
  %885 = fmul fast float %882, %853
  %886 = select i1 %202, float %885, float %882
  %887 = call float @dx.op.dot3.f32(i32 55, float %886, float %883, float %884, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %888 = select i1 %202, float 0.000000e+00, float %882
  %889 = select i1 %202, float %887, float %883
  %890 = select i1 %202, float 0.000000e+00, float %884
  br label %891

; <label>:891                                     ; preds = %881, %843
  %892 = phi float [ %888, %881 ], [ 0.000000e+00, %843 ]
  %893 = phi float [ %889, %881 ], [ 0.000000e+00, %843 ]
  %894 = phi float [ %890, %881 ], [ 0.000000e+00, %843 ]
  %895 = add i32 %32, 96
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = and i32 %897, 255
  %899 = uitofp i32 %898 to float
  %900 = lshr i32 %897, 8
  %901 = and i32 %900, 255
  %902 = uitofp i32 %901 to float
  %903 = call float @dx.op.dot3.f32(i32 55, float %764, float %765, float %766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %904 = fmul fast float %902, %903
  %905 = fadd fast float %904, %899
  %906 = fmul fast float %905, 0x3F70101020000000
  %907 = call float @dx.op.unary.f32(i32 7, float %906)  ; Saturate(value)
  br label %908

; <label>:908                                     ; preds = %891, %435
  %909 = phi float [ 0.000000e+00, %435 ], [ %845, %891 ]
  %910 = phi float [ 0.000000e+00, %435 ], [ %846, %891 ]
  %911 = phi float [ 0.000000e+00, %435 ], [ %892, %891 ]
  %912 = phi float [ 0.000000e+00, %435 ], [ %893, %891 ]
  %913 = phi float [ 0.000000e+00, %435 ], [ %894, %891 ]
  %914 = phi float [ 0.000000e+00, %435 ], [ %764, %891 ]
  %915 = phi float [ 0.000000e+00, %435 ], [ %765, %891 ]
  %916 = phi float [ 0.000000e+00, %435 ], [ %766, %891 ]
  %917 = phi float [ 0.000000e+00, %435 ], [ %750, %891 ]
  %918 = phi float [ 0.000000e+00, %435 ], [ 1.000000e+00, %891 ]
  %919 = phi float [ 0.000000e+00, %435 ], [ %844, %891 ]
  %920 = phi float [ 0.000000e+00, %435 ], [ %847, %891 ]
  %921 = phi float [ 0.000000e+00, %435 ], [ %907, %891 ]
  br i1 %386, label %1648, label %922

; <label>:922                                     ; preds = %908
  %923 = icmp ult i32 %441, 2
  %924 = add i32 %32, 40
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = add i32 %32, 44
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = or i32 %929, %926
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %1648, label %932

; <label>:932                                     ; preds = %922
  %933 = and i32 %926, 262144
  %934 = icmp ne i32 %933, 0
  %935 = select i1 %934, float %37, float 1.000000e+00
  %936 = select i1 %934, float %38, float 0.000000e+00
  %937 = select i1 %934, float %39, float 0.000000e+00
  %938 = select i1 %934, float %40, float 1.000000e+00
  %939 = select i1 %934, float %41, float %64
  %940 = select i1 %934, float %42, float %65
  %941 = add i32 %32, 300
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = lshr i32 %943, 16
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = fmul fast float %945, 0x3F50624DE0000000
  %947 = add i32 %32, 104
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = lshr i32 %949, 16
  %951 = and i32 %950, 255
  %952 = lshr i32 %949, 24
  %953 = add i32 %32, 308
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = and i32 %955, 65535
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = lshr i32 %955, 16
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = add i32 %32, 48
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = lshr i32 %962, 22
  %964 = shl nuw nsw i32 %963, 5
  %965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %964)  ; LegacyF16ToF32(value)
  %966 = shl i32 %962, 4
  %967 = and i32 %966, 32752
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = lshr i32 %962, 7
  %970 = and i32 %969, 32752
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 3
  %974 = fmul fast float %973, 1.000000e+03
  %975 = fmul fast float %296, %974
  %976 = call float @dx.op.unary.f32(i32 22, float %975)  ; Frc(value)
  %977 = fadd fast float %976, %286
  %978 = fmul fast float %297, %974
  %979 = call float @dx.op.unary.f32(i32 22, float %978)  ; Frc(value)
  %980 = fadd fast float %979, %288
  %981 = fmul fast float %946, %974
  %982 = call float @dx.op.unary.f32(i32 22, float %981)  ; Frc(value)
  %983 = fmul fast float %982, 0x401921FB60000000
  %984 = fadd fast float %983, %965
  %985 = call float @dx.op.unary.f32(i32 13, float %984)  ; Sin(value)
  %986 = call float @dx.op.unary.f32(i32 12, float %984)  ; Cos(value)
  %987 = fsub fast float -0.000000e+00, %985
  %988 = fadd fast float %939, -5.000000e-01
  %989 = fadd fast float %940, -5.000000e-01
  %990 = fmul fast float %957, %988
  %991 = fmul fast float %959, %989
  %992 = fadd fast float %990, 5.000000e-01
  %993 = fadd fast float %991, 5.000000e-01
  %994 = fmul fast float %968, %992
  %995 = fmul fast float %971, %993
  %996 = fmul fast float %986, %994
  %997 = call float @dx.op.tertiary.f32(i32 46, float %987, float %995, float %996)  ; FMad(a,b,c)
  %998 = fmul fast float %985, %994
  %999 = call float @dx.op.tertiary.f32(i32 46, float %986, float %995, float %998)  ; FMad(a,b,c)
  %1000 = fadd fast float %977, %997
  %1001 = fadd fast float %980, %999
  %1002 = icmp ugt i32 %951, 1
  %1003 = icmp ugt i32 %949, 33554431
  %1004 = or i1 %1003, %1002
  br i1 %1004, label %1005, label %1030

; <label>:1005                                    ; preds = %932
  %1006 = add i32 %32, 244
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = lshr i32 %1008, 16
  %1010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1009)  ; LegacyF16ToF32(value)
  %1011 = fmul fast float %973, %1010
  %1012 = call float @dx.op.unary.f32(i32 22, float %1011)  ; Frc(value)
  %1013 = mul nuw nsw i32 %951, %952
  %1014 = uitofp i32 %1013 to float
  %1015 = fmul fast float %1012, %1014
  %1016 = call float @dx.op.unary.f32(i32 27, float %1015)  ; Round_ni(value)
  %1017 = fptoui float %1016 to i32
  %1018 = urem i32 %1017, %951
  %1019 = udiv i32 %1017, %952
  %1020 = call float @dx.op.unary.f32(i32 22, float %1000)  ; Frc(value)
  %1021 = call float @dx.op.unary.f32(i32 22, float %1001)  ; Frc(value)
  %1022 = uitofp i32 %1018 to float
  %1023 = uitofp i32 %1019 to float
  %1024 = fadd fast float %1020, %1022
  %1025 = fadd fast float %1021, %1023
  %1026 = uitofp i32 %951 to float
  %1027 = uitofp i32 %952 to float
  %1028 = fdiv fast float %1024, %1026
  %1029 = fdiv fast float %1025, %1027
  br label %1030

; <label>:1030                                    ; preds = %1005, %932
  %1031 = phi float [ %1028, %1005 ], [ %1000, %932 ]
  %1032 = phi float [ %1029, %1005 ], [ %1001, %932 ]
  %1033 = and i32 %926, 256
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1081, label %1035

; <label>:1035                                    ; preds = %1030
  %1036 = add i32 %32, 444
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = add i32 %1038, 0
  %1040 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1039, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1041 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1040, %dx.types.Handle %73, float %1031, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = add i32 %32, 116
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = shl i32 %1045, 4
  %1047 = and i32 %1046, 32752
  %1048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1047)  ; LegacyF16ToF32(value)
  %1049 = lshr i32 %1045, 7
  %1050 = and i32 %1049, 32752
  %1051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1050)  ; LegacyF16ToF32(value)
  %1052 = fsub fast float 1.000000e+00, %438
  %1053 = call float @dx.op.binary.f32(i32 35, float %1052, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1054 = bitcast float %438 to i32
  %1055 = sitofp i32 %1054 to float
  %1056 = fadd fast float %1055, 0xC1CFBF8940000000
  %1057 = fmul fast float %1051, %1056
  %1058 = fadd fast float %1057, 0x41CFBF8940000000
  %1059 = fptosi float %1058 to i32
  %1060 = bitcast i32 %1059 to float
  %1061 = bitcast float %1053 to i32
  %1062 = sitofp i32 %1061 to float
  %1063 = fadd fast float %1062, 0xC1CFBF8940000000
  %1064 = fmul fast float %1063, %1051
  %1065 = fadd fast float %1064, 0x41CFBF8940000000
  %1066 = fptosi float %1065 to i32
  %1067 = bitcast i32 %1066 to float
  %1068 = fmul fast float %1060, %1048
  %1069 = fmul fast float %1067, %1048
  %1070 = fsub fast float %1053, %1068
  %1071 = fadd fast float %1069, %1053
  %1072 = call float @dx.op.unary.f32(i32 7, float %1070)  ; Saturate(value)
  %1073 = call float @dx.op.unary.f32(i32 7, float %1071)  ; Saturate(value)
  %1074 = fsub fast float %1042, %1072
  %1075 = fsub fast float %1073, %1072
  %1076 = bitcast float %1075 to i32
  %1077 = sub nsw i32 2129859010, %1076
  %1078 = bitcast i32 %1077 to float
  %1079 = fmul fast float %1078, %1074
  %1080 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  br label %1081

; <label>:1081                                    ; preds = %1035, %1030
  %1082 = phi float [ %1080, %1035 ], [ %438, %1030 ]
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = and i32 %1084, 128
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1103, label %1087

; <label>:1087                                    ; preds = %1081
  %1088 = add i32 %32, 428
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = add i32 %1090, 0
  %1092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1091, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1093 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1092, %dx.types.Handle %73, float %1031, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = and i32 %1096, 524288
  %1098 = icmp ne i32 %1097, 0
  %1099 = fcmp fast ogt float %1094, 0x3FE0101020000000
  %1100 = select i1 %1099, float 1.000000e+00, float 0.000000e+00
  %1101 = select i1 %1098, float %1100, float %1094
  %1102 = fmul fast float %1101, %1082
  br label %1103

; <label>:1103                                    ; preds = %1087, %1081
  %1104 = phi float [ %1102, %1087 ], [ %1082, %1081 ]
  %1105 = fcmp fast ult float %1104, 0x3F70101020000000
  br i1 %1105, label %1648, label %1106

; <label>:1106                                    ; preds = %1103
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 16
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1309, label %1111

; <label>:1111                                    ; preds = %1106
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = add i32 %32, 380
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = add i32 %1116, 0
  %1118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1119 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1118, %dx.types.Handle %72, float %1031, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.ResRet.f32 %1119, 1
  %1122 = extractvalue %dx.types.ResRet.f32 %1119, 2
  %1123 = extractvalue %dx.types.ResRet.f32 %1119, 3
  %1124 = and i32 %1113, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = lshr i32 %1113, 8
  %1127 = and i32 %1126, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = fmul fast float %1123, %1125
  %1130 = fadd fast float %1129, %1128
  %1131 = fmul fast float %1130, 0x3F70101000000000
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = and i32 %1133, 512
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1144, label %1136

; <label>:1136                                    ; preds = %1111
  %1137 = add i32 %32, 460
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = add i32 %1139, 0
  %1141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1142 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1141, %dx.types.Handle %73, float %1031, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  br label %1144

; <label>:1144                                    ; preds = %1136, %1111
  %1145 = phi float [ %1143, %1136 ], [ 1.000000e+00, %1111 ]
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %1147, 33554432
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1256, label %1150

; <label>:1150                                    ; preds = %1144
  %1151 = add i32 %32, 240
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 65535
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = lshr i32 %1153, 16
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = add i32 %32, 244
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = and i32 %1160, 65535
  %1162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1161)  ; LegacyF16ToF32(value)
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = lshr i32 %1164, 24
  %1166 = uitofp i32 %1165 to float
  %1167 = fmul fast float %1166, 0x3F70101020000000
  %1168 = and i32 %1164, 255
  %1169 = uitofp i32 %1168 to float
  %1170 = fmul fast float %1169, 0x3F70101020000000
  %1171 = lshr i32 %1164, 8
  %1172 = and i32 %1171, 255
  %1173 = uitofp i32 %1172 to float
  %1174 = fmul fast float %1173, 0x3F70101020000000
  %1175 = lshr i32 %1164, 16
  %1176 = and i32 %1175, 255
  %1177 = uitofp i32 %1176 to float
  %1178 = fmul fast float %1177, 0x3F70101020000000
  %1179 = add i32 %32, 236
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = lshr i32 %1181, 24
  %1183 = uitofp i32 %1182 to float
  %1184 = fmul fast float %1183, 0x3F70101020000000
  %1185 = and i32 %1181, 255
  %1186 = uitofp i32 %1185 to float
  %1187 = fmul fast float %1186, 0x3F70101020000000
  %1188 = lshr i32 %1181, 8
  %1189 = and i32 %1188, 255
  %1190 = uitofp i32 %1189 to float
  %1191 = fmul fast float %1190, 0x3F70101020000000
  %1192 = lshr i32 %1181, 16
  %1193 = and i32 %1192, 255
  %1194 = uitofp i32 %1193 to float
  %1195 = fmul fast float %1194, 0x3F70101020000000
  %1196 = bitcast float %1120 to i32
  %1197 = ashr i32 %1196, 1
  %1198 = sub nsw i32 1597463174, %1197
  %1199 = bitcast i32 %1198 to float
  %1200 = fmul fast float %1120, 5.000000e-01
  %1201 = fmul fast float %1199, %1199
  %1202 = fmul fast float %1201, %1200
  %1203 = fsub fast float 1.500000e+00, %1202
  %1204 = fmul fast float %1199, %1120
  %1205 = fmul fast float %1204, %1203
  %1206 = bitcast float %1121 to i32
  %1207 = ashr i32 %1206, 1
  %1208 = sub nsw i32 1597463174, %1207
  %1209 = bitcast i32 %1208 to float
  %1210 = fmul fast float %1121, 5.000000e-01
  %1211 = fmul fast float %1209, %1209
  %1212 = fmul fast float %1211, %1210
  %1213 = fsub fast float 1.500000e+00, %1212
  %1214 = fmul fast float %1209, %1121
  %1215 = fmul fast float %1214, %1213
  %1216 = bitcast float %1122 to i32
  %1217 = ashr i32 %1216, 1
  %1218 = sub nsw i32 1597463174, %1217
  %1219 = bitcast i32 %1218 to float
  %1220 = fmul fast float %1122, 5.000000e-01
  %1221 = fmul fast float %1219, %1219
  %1222 = fmul fast float %1221, %1220
  %1223 = fsub fast float 1.500000e+00, %1222
  %1224 = fmul fast float %1219, %1122
  %1225 = fmul fast float %1224, %1223
  %1226 = fsub fast float %1205, %1187
  %1227 = fsub fast float %1215, %1191
  %1228 = fsub fast float %1225, %1195
  %1229 = fmul fast float %1226, %1155
  %1230 = fmul fast float %1227, %1157
  %1231 = fmul fast float %1228, %1162
  %1232 = fadd fast float %1229, %1170
  %1233 = fadd fast float %1230, %1174
  %1234 = fadd fast float %1231, %1178
  %1235 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1236 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  %1237 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1238 = fmul fast float %1235, %1235
  %1239 = fmul fast float %1236, %1236
  %1240 = fmul fast float %1237, %1237
  %1241 = fsub fast float %1238, %1120
  %1242 = fsub fast float %1239, %1121
  %1243 = fsub fast float %1240, %1122
  %1244 = fmul fast float %1241, %1145
  %1245 = fmul fast float %1242, %1145
  %1246 = fmul fast float %1243, %1145
  %1247 = fadd fast float %1244, %1120
  %1248 = fadd fast float %1245, %1121
  %1249 = fadd fast float %1246, %1122
  %1250 = fadd fast float %1167, %1131
  %1251 = fsub fast float %1250, %1184
  %1252 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  %1253 = fsub fast float %1252, %1131
  %1254 = fmul fast float %1253, %1145
  %1255 = fadd fast float %1254, %1131
  br label %1309

; <label>:1256                                    ; preds = %1144
  %1257 = and i32 %1147, 134217728
  %1258 = icmp eq i32 %1257, 0
  br i1 %1258, label %1293, label %1259

; <label>:1259                                    ; preds = %1256
  %1260 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %1261 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %1262 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %1263 = fadd fast float %1260, -5.000000e-01
  %1264 = fadd fast float %1261, -5.000000e-01
  %1265 = fadd fast float %1262, -5.000000e-01
  %1266 = fmul fast float %1263, %1145
  %1267 = fmul fast float %1264, %1145
  %1268 = fmul fast float %1265, %1145
  %1269 = fadd fast float %1266, 5.000000e-01
  %1270 = fadd fast float %1267, 5.000000e-01
  %1271 = fadd fast float %1268, 5.000000e-01
  %1272 = call float @dx.op.unary.f32(i32 24, float %1120)  ; Sqrt(value)
  %1273 = call float @dx.op.unary.f32(i32 24, float %1121)  ; Sqrt(value)
  %1274 = call float @dx.op.unary.f32(i32 24, float %1122)  ; Sqrt(value)
  %1275 = fmul fast float %1269, 2.000000e+00
  %1276 = fsub fast float 1.000000e+00, %1275
  %1277 = fmul fast float %1276, %1272
  %1278 = fadd fast float %1277, %1275
  %1279 = fmul fast float %1278, %1272
  %1280 = fmul fast float %1270, 2.000000e+00
  %1281 = fsub fast float 1.000000e+00, %1280
  %1282 = fmul fast float %1281, %1273
  %1283 = fadd fast float %1282, %1280
  %1284 = fmul fast float %1283, %1273
  %1285 = fmul fast float %1271, 2.000000e+00
  %1286 = fsub fast float 1.000000e+00, %1285
  %1287 = fmul fast float %1286, %1274
  %1288 = fadd fast float %1287, %1285
  %1289 = fmul fast float %1288, %1274
  %1290 = fmul fast float %1279, %1279
  %1291 = fmul fast float %1284, %1284
  %1292 = fmul fast float %1289, %1289
  br label %1309

; <label>:1293                                    ; preds = %1256
  %1294 = fmul fast float %273, %273
  %1295 = fmul fast float %277, %277
  %1296 = fmul fast float %281, %281
  %1297 = fadd fast float %1294, -1.000000e+00
  %1298 = fadd fast float %1295, -1.000000e+00
  %1299 = fadd fast float %1296, -1.000000e+00
  %1300 = fmul fast float %1145, %1297
  %1301 = fmul fast float %1145, %1298
  %1302 = fmul fast float %1145, %1299
  %1303 = fadd fast float %1300, 1.000000e+00
  %1304 = fadd fast float %1301, 1.000000e+00
  %1305 = fadd fast float %1302, 1.000000e+00
  %1306 = fmul fast float %1303, %1120
  %1307 = fmul fast float %1304, %1121
  %1308 = fmul fast float %1305, %1122
  br label %1309

; <label>:1309                                    ; preds = %1293, %1259, %1150, %1106
  %1310 = phi float [ %1255, %1150 ], [ %1131, %1259 ], [ %1131, %1293 ], [ 0x3FA23C0BE0000000, %1106 ]
  %1311 = phi float [ %1247, %1150 ], [ %1290, %1259 ], [ %1306, %1293 ], [ 1.000000e+00, %1106 ]
  %1312 = phi float [ %1248, %1150 ], [ %1291, %1259 ], [ %1307, %1293 ], [ 1.000000e+00, %1106 ]
  %1313 = phi float [ %1249, %1150 ], [ %1292, %1259 ], [ %1308, %1293 ], [ 1.000000e+00, %1106 ]
  %1314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.i32 %1314, 1
  %1316 = and i32 %1315, 1
  %1317 = icmp ne i32 %1316, 0
  %1318 = add i32 %32, 356
  %1319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.i32 %1319, 0
  %1321 = and i32 %1320, 32
  %1322 = icmp ne i32 %1321, 0
  %1323 = and i1 %1317, %1322
  %1324 = select i1 %1323, float 1.000000e+00, float %1311
  %1325 = select i1 %1323, float 0x3FD3333340000000, float %1312
  %1326 = select i1 %1323, float 0x3FD3333340000000, float %1313
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = and i32 %1328, 32
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1403, label %1331

; <label>:1331                                    ; preds = %1309
  %1332 = add i32 %32, 108
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = add i32 %32, 396
  %1336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.i32 %1336, 0
  %1338 = add i32 %1337, 0
  %1339 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1338, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1340 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1339, %dx.types.Handle %72, float %1031, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1341 = extractvalue %dx.types.ResRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.ResRet.f32 %1340, 1
  %1343 = extractvalue %dx.types.ResRet.f32 %1340, 2
  %1344 = extractvalue %dx.types.ResRet.f32 %1340, 3
  %1345 = and i32 %1334, 255
  %1346 = uitofp i32 %1345 to float
  %1347 = lshr i32 %1334, 8
  %1348 = and i32 %1347, 255
  %1349 = uitofp i32 %1348 to float
  %1350 = lshr i32 %1334, 16
  %1351 = and i32 %1350, 255
  %1352 = uitofp i32 %1351 to float
  %1353 = fmul fast float %1352, 0x3F70101000000000
  %1354 = fmul fast float %1341, %1346
  %1355 = fadd fast float %1354, %1349
  %1356 = fmul fast float %1355, 0x3F70101000000000
  %1357 = fadd fast float %1342, -5.000000e-01
  %1358 = fadd fast float %1344, -5.000000e-01
  %1359 = fmul fast float %1357, %1353
  %1360 = fmul fast float %1358, %1353
  %1361 = fadd fast float %1359, 5.000000e-01
  %1362 = fadd fast float %1360, 5.000000e-01
  %1363 = fmul fast float %1361, 2.000000e+00
  %1364 = fadd fast float %1363, -1.000000e+00
  %1365 = fmul fast float %1362, 2.000000e+00
  %1366 = fadd fast float %1365, -1.000000e+00
  %1367 = fadd fast float %1364, %1366
  %1368 = fmul fast float %1367, 5.000000e-01
  %1369 = fsub fast float %1364, %1366
  %1370 = fmul fast float %1369, 5.000000e-01
  %1371 = call float @dx.op.unary.f32(i32 6, float %1368)  ; FAbs(value)
  %1372 = fsub fast float 1.000000e+00, %1371
  %1373 = call float @dx.op.unary.f32(i32 6, float %1370)  ; FAbs(value)
  %1374 = fsub fast float %1372, %1373
  %1375 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1370, float %1374, float %1368, float %1370, float %1374)  ; Dot3(ax,ay,az,bx,by,bz)
  %1376 = call float @dx.op.unary.f32(i32 25, float %1375)  ; Rsqrt(value)
  %1377 = fmul fast float %1368, %1376
  %1378 = fmul fast float %1370, %1376
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = and i32 %1380, 67108864
  %1382 = icmp eq i32 %1381, 0
  br i1 %1382, label %1399, label %1383

; <label>:1383                                    ; preds = %1331
  %1384 = add i32 %32, 296
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = and i32 %1386, 65535
  %1388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1387)  ; LegacyF16ToF32(value)
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = and i32 %1390, 65535
  %1392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1391)  ; LegacyF16ToF32(value)
  %1393 = lshr i32 %1386, 16
  %1394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1393)  ; LegacyF16ToF32(value)
  %1395 = fsub fast float %1356, %1394
  %1396 = fmul fast float %1395, %1388
  %1397 = fadd fast float %1396, %1392
  %1398 = call float @dx.op.unary.f32(i32 7, float %1397)  ; Saturate(value)
  br label %1399

; <label>:1399                                    ; preds = %1383, %1331
  %1400 = phi float [ %1398, %1383 ], [ %1356, %1331 ]
  %1401 = call float @dx.op.dot2.f32(i32 54, float %1377, float %1378, float %935, float %936)  ; Dot2(ax,ay,bx,by)
  %1402 = call float @dx.op.dot2.f32(i32 54, float %1377, float %1378, float %937, float %938)  ; Dot2(ax,ay,bx,by)
  br label %1403

; <label>:1403                                    ; preds = %1399, %1309
  %1404 = phi float [ %1400, %1399 ], [ 0x3FD6666660000000, %1309 ]
  %1405 = phi float [ %1401, %1399 ], [ 0.000000e+00, %1309 ]
  %1406 = phi float [ %1402, %1399 ], [ 0.000000e+00, %1309 ]
  %1407 = phi float [ %1343, %1399 ], [ 1.000000e+00, %1309 ]
  %1408 = add i32 %32, 176
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = lshr i32 %1410, 22
  %1412 = shl nuw nsw i32 %1411, 5
  %1413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1412)  ; LegacyF16ToF32(value)
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = and i32 %1415, 64
  %1417 = icmp eq i32 %1416, 0
  br i1 %1417, label %1451, label %1418

; <label>:1418                                    ; preds = %1403
  %1419 = add i32 %32, 412
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = add i32 %1421, 0
  %1423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = and i32 %1425, 131072
  %1427 = icmp eq i32 %1426, 0
  %1428 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1423, %dx.types.Handle %72, float %1031, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1429 = extractvalue %dx.types.ResRet.f32 %1428, 0
  %1430 = extractvalue %dx.types.ResRet.f32 %1428, 1
  %1431 = extractvalue %dx.types.ResRet.f32 %1428, 2
  %1432 = fmul fast float %1429, %261
  %1433 = fmul fast float %1430, %264
  %1434 = fmul fast float %1431, %267
  br i1 %1427, label %1441, label %1435

; <label>:1435                                    ; preds = %1418
  %1436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.f32 %1436, 0
  %1438 = fmul fast float %1437, %1432
  %1439 = fmul fast float %1437, %1433
  %1440 = fmul fast float %1437, %1434
  br label %1441

; <label>:1441                                    ; preds = %1435, %1418
  %1442 = phi float [ %1438, %1435 ], [ %1432, %1418 ]
  %1443 = phi float [ %1439, %1435 ], [ %1433, %1418 ]
  %1444 = phi float [ %1440, %1435 ], [ %1434, %1418 ]
  %1445 = fmul fast float %1442, %1413
  %1446 = select i1 %202, float %1445, float %1442
  %1447 = call float @dx.op.dot3.f32(i32 55, float %1446, float %1443, float %1444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1448 = select i1 %202, float 0.000000e+00, float %1442
  %1449 = select i1 %202, float %1447, float %1443
  %1450 = select i1 %202, float 0.000000e+00, float %1444
  br label %1451

; <label>:1451                                    ; preds = %1441, %1403
  %1452 = phi float [ %1448, %1441 ], [ 0.000000e+00, %1403 ]
  %1453 = phi float [ %1449, %1441 ], [ 0.000000e+00, %1403 ]
  %1454 = phi float [ %1450, %1441 ], [ 0.000000e+00, %1403 ]
  %1455 = add i32 %32, 112
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1455, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = and i32 %1457, 255
  %1459 = uitofp i32 %1458 to float
  %1460 = lshr i32 %1457, 8
  %1461 = and i32 %1460, 255
  %1462 = uitofp i32 %1461 to float
  %1463 = call float @dx.op.dot3.f32(i32 55, float %1324, float %1325, float %1326, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1464 = fmul fast float %1462, %1463
  %1465 = fadd fast float %1464, %1459
  %1466 = fmul fast float %1465, 0x3F70101020000000
  %1467 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  br i1 %923, label %1468, label %1476

; <label>:1468                                    ; preds = %1451
  %1469 = fsub fast float 1.000000e+00, %1104
  %1470 = fmul fast float %1469, %914
  %1471 = fmul fast float %1469, %915
  %1472 = fmul fast float %1469, %916
  %1473 = fmul fast float %1469, %911
  %1474 = fmul fast float %1469, %912
  %1475 = fmul fast float %1469, %913
  br label %1476

; <label>:1476                                    ; preds = %1468, %1451
  %1477 = phi float [ %1473, %1468 ], [ %911, %1451 ]
  %1478 = phi float [ %1474, %1468 ], [ %912, %1451 ]
  %1479 = phi float [ %1475, %1468 ], [ %913, %1451 ]
  %1480 = phi float [ %1470, %1468 ], [ %914, %1451 ]
  %1481 = phi float [ %1471, %1468 ], [ %915, %1451 ]
  %1482 = phi float [ %1472, %1468 ], [ %916, %1451 ]
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = and i32 %1484, 3
  %1486 = icmp eq i32 %1485, 3
  br i1 %1486, label %1565, label %1487

; <label>:1487                                    ; preds = %1476
  %1488 = and i32 %1484, 16
  %1489 = icmp ne i32 %1488, 0
  %1490 = select i1 %1489, float %1104, float 0.000000e+00
  %1491 = icmp eq i32 %1485, 0
  br i1 %1491, label %1492, label %1520

; <label>:1492                                    ; preds = %1487
  %1493 = and i32 %1484, 64
  %1494 = icmp ne i32 %1493, 0
  %1495 = select i1 %1494, float %1104, float 0.000000e+00
  %1496 = fsub fast float %1324, %1480
  %1497 = fsub fast float %1325, %1481
  %1498 = fsub fast float %1326, %1482
  %1499 = fmul fast float %1490, %1496
  %1500 = fmul fast float %1490, %1497
  %1501 = fmul fast float %1490, %1498
  %1502 = fadd fast float %1499, %1480
  %1503 = fadd fast float %1500, %1481
  %1504 = fadd fast float %1501, %1482
  %1505 = fsub fast float %1310, %917
  %1506 = fmul fast float %1490, %1505
  %1507 = fadd fast float %1506, %917
  %1508 = fsub fast float %1452, %1477
  %1509 = fsub fast float %1453, %1478
  %1510 = fsub fast float %1454, %1479
  %1511 = fmul fast float %1495, %1508
  %1512 = fmul fast float %1495, %1509
  %1513 = fmul fast float %1495, %1510
  %1514 = fadd fast float %1511, %1477
  %1515 = fadd fast float %1512, %1478
  %1516 = fadd fast float %1513, %1479
  %1517 = fsub fast float %1467, %921
  %1518 = fmul fast float %1490, %1517
  %1519 = fadd fast float %1518, %921
  br label %1565

; <label>:1520                                    ; preds = %1487
  %1521 = icmp eq i32 %1485, 1
  br i1 %1521, label %1522, label %1535

; <label>:1522                                    ; preds = %1520
  %1523 = fadd fast float %1324, -1.000000e+00
  %1524 = fadd fast float %1325, -1.000000e+00
  %1525 = fadd fast float %1326, -1.000000e+00
  %1526 = fmul fast float %1490, %1523
  %1527 = fmul fast float %1490, %1524
  %1528 = fmul fast float %1490, %1525
  %1529 = fadd fast float %1526, 1.000000e+00
  %1530 = fadd fast float %1527, 1.000000e+00
  %1531 = fadd fast float %1528, 1.000000e+00
  %1532 = fmul fast float %1529, %1480
  %1533 = fmul fast float %1530, %1481
  %1534 = fmul fast float %1531, %1482
  br label %1565

; <label>:1535                                    ; preds = %1520
  %1536 = icmp eq i32 %1485, 2
  br i1 %1536, label %1537, label %1565

; <label>:1537                                    ; preds = %1535
  %1538 = call float @dx.op.unary.f32(i32 24, float %1324)  ; Sqrt(value)
  %1539 = call float @dx.op.unary.f32(i32 24, float %1325)  ; Sqrt(value)
  %1540 = call float @dx.op.unary.f32(i32 24, float %1326)  ; Sqrt(value)
  %1541 = fadd fast float %1538, -5.000000e-01
  %1542 = fadd fast float %1539, -5.000000e-01
  %1543 = fadd fast float %1540, -5.000000e-01
  %1544 = fmul fast float %1541, %1490
  %1545 = fmul fast float %1542, %1490
  %1546 = fmul fast float %1543, %1490
  %1547 = fadd fast float %1544, 5.000000e-01
  %1548 = fadd fast float %1545, 5.000000e-01
  %1549 = fadd fast float %1546, 5.000000e-01
  %1550 = fmul fast float %1547, 2.000000e+00
  %1551 = fsub fast float 1.000000e+00, %1550
  %1552 = fmul fast float %1551, %1480
  %1553 = fadd fast float %1552, %1550
  %1554 = fmul fast float %1553, %1480
  %1555 = fmul fast float %1548, 2.000000e+00
  %1556 = fsub fast float 1.000000e+00, %1555
  %1557 = fmul fast float %1556, %1481
  %1558 = fadd fast float %1557, %1555
  %1559 = fmul fast float %1558, %1481
  %1560 = fmul fast float %1549, 2.000000e+00
  %1561 = fsub fast float 1.000000e+00, %1560
  %1562 = fmul fast float %1561, %1482
  %1563 = fadd fast float %1562, %1560
  %1564 = fmul fast float %1563, %1482
  br label %1565

; <label>:1565                                    ; preds = %1537, %1535, %1522, %1492, %1476
  %1566 = phi float [ %1477, %1476 ], [ %1477, %1537 ], [ %1477, %1535 ], [ %1477, %1522 ], [ %1514, %1492 ]
  %1567 = phi float [ %1478, %1476 ], [ %1478, %1537 ], [ %1478, %1535 ], [ %1478, %1522 ], [ %1515, %1492 ]
  %1568 = phi float [ %1479, %1476 ], [ %1479, %1537 ], [ %1479, %1535 ], [ %1479, %1522 ], [ %1516, %1492 ]
  %1569 = phi float [ %1480, %1476 ], [ %1554, %1537 ], [ %1480, %1535 ], [ %1532, %1522 ], [ %1502, %1492 ]
  %1570 = phi float [ %1481, %1476 ], [ %1559, %1537 ], [ %1481, %1535 ], [ %1533, %1522 ], [ %1503, %1492 ]
  %1571 = phi float [ %1482, %1476 ], [ %1564, %1537 ], [ %1482, %1535 ], [ %1534, %1522 ], [ %1504, %1492 ]
  %1572 = phi float [ %917, %1476 ], [ %917, %1537 ], [ %917, %1535 ], [ %917, %1522 ], [ %1507, %1492 ]
  %1573 = phi float [ %921, %1476 ], [ %921, %1537 ], [ %921, %1535 ], [ %921, %1522 ], [ %1519, %1492 ]
  %1574 = and i32 %1484, 12
  %1575 = icmp eq i32 %1574, 12
  br i1 %1575, label %1648, label %1576

; <label>:1576                                    ; preds = %1565
  %1577 = and i32 %1484, 2097184
  %1578 = icmp eq i32 %1577, 2097184
  %1579 = select i1 %1578, float %1104, float 0.000000e+00
  %1580 = and i32 %1484, 4194336
  %1581 = icmp eq i32 %1580, 4194336
  %1582 = select i1 %1581, float %1104, float 0.000000e+00
  %1583 = and i32 %1484, 8388640
  %1584 = icmp eq i32 %1583, 8388640
  %1585 = select i1 %1584, float %1104, float 0.000000e+00
  %1586 = icmp eq i32 %1574, 0
  br i1 %1586, label %1587, label %1600

; <label>:1587                                    ; preds = %1576
  %1588 = fsub fast float %1405, %909
  %1589 = fsub fast float %1406, %910
  %1590 = fmul fast float %1579, %1588
  %1591 = fmul fast float %1579, %1589
  %1592 = fadd fast float %1590, %909
  %1593 = fadd fast float %1591, %910
  %1594 = fsub fast float %1407, %920
  %1595 = fmul fast float %1582, %1594
  %1596 = fadd fast float %1595, %920
  %1597 = fsub fast float %1404, %919
  %1598 = fmul fast float %1585, %1597
  %1599 = fadd fast float %1598, %919
  br label %1648

; <label>:1600                                    ; preds = %1576
  %1601 = icmp eq i32 %1574, 4
  br i1 %1601, label %1602, label %1634

; <label>:1602                                    ; preds = %1600
  %1603 = fmul fast float %1579, %1405
  %1604 = fmul fast float %1579, %1406
  %1605 = fadd fast float %1603, %909
  %1606 = fadd fast float %1604, %910
  %1607 = call float @dx.op.binary.f32(i32 36, float %920, float %1407)  ; FMin(a,b)
  %1608 = fsub fast float %1607, %920
  %1609 = fmul fast float %1608, %1582
  %1610 = fadd fast float %1609, %920
  %1611 = fadd fast float %1404, %919
  %1612 = fmul fast float %1611, 0x3FF337FAE0000000
  %1613 = fmul fast float %919, %919
  %1614 = fmul fast float %1404, %1404
  %1615 = fadd fast float %1614, %1613
  %1616 = fmul fast float %1615, 0x3FE5152B00000000
  %1617 = fmul fast float %919, 0xBFCC1F85E0000000
  %1618 = fmul fast float %1617, %1404
  %1619 = fadd fast float %1618, 0xBFE1363700000000
  %1620 = fadd fast float %1619, %1612
  %1621 = fsub fast float %1620, %1616
  %1622 = fmul fast float %1611, 0x3FBA6F0D00000000
  %1623 = fmul fast float %1615, 0x3FD0432880000000
  %1624 = fmul fast float %919, 0xBFEF110800000000
  %1625 = fmul fast float %1624, %1404
  %1626 = fadd fast float %1625, 1.000000e+00
  %1627 = fsub fast float %1626, %1622
  %1628 = fadd fast float %1627, %1623
  %1629 = fdiv fast float %1621, %1628
  %1630 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1631 = fsub fast float %1630, %919
  %1632 = fmul fast float %1631, %1585
  %1633 = fadd fast float %1632, %919
  br label %1648

; <label>:1634                                    ; preds = %1600
  %1635 = icmp eq i32 %1574, 8
  br i1 %1635, label %1636, label %1648

; <label>:1636                                    ; preds = %1634
  %1637 = fmul fast float %1579, %1405
  %1638 = fmul fast float %1579, %1406
  %1639 = fadd fast float %1637, %909
  %1640 = fadd fast float %1638, %910
  %1641 = call float @dx.op.binary.f32(i32 36, float %920, float %1407)  ; FMin(a,b)
  %1642 = fsub fast float %1641, %920
  %1643 = fmul fast float %1642, %1582
  %1644 = fadd fast float %1643, %920
  %1645 = fsub fast float %1404, %919
  %1646 = fmul fast float %1585, %1645
  %1647 = fadd fast float %1646, %919
  br label %1648

; <label>:1648                                    ; preds = %1636, %1634, %1602, %1587, %1565, %1103, %922, %908
  %1649 = phi float [ %909, %1565 ], [ %909, %1103 ], [ %909, %908 ], [ %1639, %1636 ], [ %909, %1634 ], [ %1605, %1602 ], [ %1592, %1587 ], [ %909, %922 ]
  %1650 = phi float [ %910, %1565 ], [ %910, %1103 ], [ %910, %908 ], [ %1640, %1636 ], [ %910, %1634 ], [ %1606, %1602 ], [ %1593, %1587 ], [ %910, %922 ]
  %1651 = phi float [ %1566, %1565 ], [ %911, %1103 ], [ %911, %908 ], [ %1566, %1636 ], [ %1566, %1634 ], [ %1566, %1602 ], [ %1566, %1587 ], [ %911, %922 ]
  %1652 = phi float [ %1567, %1565 ], [ %912, %1103 ], [ %912, %908 ], [ %1567, %1636 ], [ %1567, %1634 ], [ %1567, %1602 ], [ %1567, %1587 ], [ %912, %922 ]
  %1653 = phi float [ %1568, %1565 ], [ %913, %1103 ], [ %913, %908 ], [ %1568, %1636 ], [ %1568, %1634 ], [ %1568, %1602 ], [ %1568, %1587 ], [ %913, %922 ]
  %1654 = phi float [ %1569, %1565 ], [ %914, %1103 ], [ %914, %908 ], [ %1569, %1636 ], [ %1569, %1634 ], [ %1569, %1602 ], [ %1569, %1587 ], [ %914, %922 ]
  %1655 = phi float [ %1570, %1565 ], [ %915, %1103 ], [ %915, %908 ], [ %1570, %1636 ], [ %1570, %1634 ], [ %1570, %1602 ], [ %1570, %1587 ], [ %915, %922 ]
  %1656 = phi float [ %1571, %1565 ], [ %916, %1103 ], [ %916, %908 ], [ %1571, %1636 ], [ %1571, %1634 ], [ %1571, %1602 ], [ %1571, %1587 ], [ %916, %922 ]
  %1657 = phi float [ %1572, %1565 ], [ %917, %1103 ], [ %917, %908 ], [ %1572, %1636 ], [ %1572, %1634 ], [ %1572, %1602 ], [ %1572, %1587 ], [ %917, %922 ]
  %1658 = phi float [ %919, %1565 ], [ %919, %1103 ], [ %919, %908 ], [ %1647, %1636 ], [ %919, %1634 ], [ %1633, %1602 ], [ %1599, %1587 ], [ %919, %922 ]
  %1659 = phi float [ %920, %1565 ], [ %920, %1103 ], [ %920, %908 ], [ %1644, %1636 ], [ %920, %1634 ], [ %1610, %1602 ], [ %1596, %1587 ], [ %920, %922 ]
  %1660 = phi float [ %1573, %1565 ], [ %921, %1103 ], [ %921, %908 ], [ %1573, %1636 ], [ %1573, %1634 ], [ %1573, %1602 ], [ %1573, %1587 ], [ %921, %922 ]
  br i1 %388, label %2387, label %1661

; <label>:1661                                    ; preds = %1648
  %1662 = icmp ult i32 %441, 3
  %1663 = add i32 %32, 56
  %1664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.i32 %1664, 0
  %1666 = add i32 %32, 60
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = or i32 %1668, %1665
  %1670 = icmp eq i32 %1669, 0
  br i1 %1670, label %2387, label %1671

; <label>:1671                                    ; preds = %1661
  %1672 = and i32 %1665, 262144
  %1673 = icmp ne i32 %1672, 0
  %1674 = select i1 %1673, float %37, float 1.000000e+00
  %1675 = select i1 %1673, float %38, float 0.000000e+00
  %1676 = select i1 %1673, float %39, float 0.000000e+00
  %1677 = select i1 %1673, float %40, float 1.000000e+00
  %1678 = select i1 %1673, float %41, float %64
  %1679 = select i1 %1673, float %42, float %65
  %1680 = add i32 %32, 316
  %1681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1680, i32 undef)  ; BufferLoad(srv,index,wot)
  %1682 = extractvalue %dx.types.ResRet.i32 %1681, 0
  %1683 = lshr i32 %1682, 16
  %1684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1683)  ; LegacyF16ToF32(value)
  %1685 = fmul fast float %1684, 0x3F50624DE0000000
  %1686 = add i32 %32, 120
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = lshr i32 %1688, 16
  %1690 = and i32 %1689, 255
  %1691 = lshr i32 %1688, 24
  %1692 = add i32 %32, 324
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = and i32 %1694, 65535
  %1696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1695)  ; LegacyF16ToF32(value)
  %1697 = lshr i32 %1694, 16
  %1698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1697)  ; LegacyF16ToF32(value)
  %1699 = add i32 %32, 64
  %1700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.i32 %1700, 0
  %1702 = lshr i32 %1701, 22
  %1703 = shl nuw nsw i32 %1702, 5
  %1704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1703)  ; LegacyF16ToF32(value)
  %1705 = shl i32 %1701, 4
  %1706 = and i32 %1705, 32752
  %1707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1706)  ; LegacyF16ToF32(value)
  %1708 = lshr i32 %1701, 7
  %1709 = and i32 %1708, 32752
  %1710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1709)  ; LegacyF16ToF32(value)
  %1711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1711, 3
  %1713 = fmul fast float %1712, 1.000000e+03
  %1714 = fmul fast float %338, %1713
  %1715 = call float @dx.op.unary.f32(i32 22, float %1714)  ; Frc(value)
  %1716 = fadd fast float %1715, %328
  %1717 = fmul fast float %339, %1713
  %1718 = call float @dx.op.unary.f32(i32 22, float %1717)  ; Frc(value)
  %1719 = fadd fast float %1718, %330
  %1720 = fmul fast float %1685, %1713
  %1721 = call float @dx.op.unary.f32(i32 22, float %1720)  ; Frc(value)
  %1722 = fmul fast float %1721, 0x401921FB60000000
  %1723 = fadd fast float %1722, %1704
  %1724 = call float @dx.op.unary.f32(i32 13, float %1723)  ; Sin(value)
  %1725 = call float @dx.op.unary.f32(i32 12, float %1723)  ; Cos(value)
  %1726 = fsub fast float -0.000000e+00, %1724
  %1727 = fadd fast float %1678, -5.000000e-01
  %1728 = fadd fast float %1679, -5.000000e-01
  %1729 = fmul fast float %1696, %1727
  %1730 = fmul fast float %1698, %1728
  %1731 = fadd fast float %1729, 5.000000e-01
  %1732 = fadd fast float %1730, 5.000000e-01
  %1733 = fmul fast float %1707, %1731
  %1734 = fmul fast float %1710, %1732
  %1735 = fmul fast float %1725, %1733
  %1736 = call float @dx.op.tertiary.f32(i32 46, float %1726, float %1734, float %1735)  ; FMad(a,b,c)
  %1737 = fmul fast float %1724, %1733
  %1738 = call float @dx.op.tertiary.f32(i32 46, float %1725, float %1734, float %1737)  ; FMad(a,b,c)
  %1739 = fadd fast float %1716, %1736
  %1740 = fadd fast float %1719, %1738
  %1741 = icmp ugt i32 %1690, 1
  %1742 = icmp ugt i32 %1688, 33554431
  %1743 = or i1 %1742, %1741
  br i1 %1743, label %1744, label %1769

; <label>:1744                                    ; preds = %1671
  %1745 = add i32 %32, 260
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = lshr i32 %1747, 16
  %1749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1748)  ; LegacyF16ToF32(value)
  %1750 = fmul fast float %1712, %1749
  %1751 = call float @dx.op.unary.f32(i32 22, float %1750)  ; Frc(value)
  %1752 = mul nuw nsw i32 %1690, %1691
  %1753 = uitofp i32 %1752 to float
  %1754 = fmul fast float %1751, %1753
  %1755 = call float @dx.op.unary.f32(i32 27, float %1754)  ; Round_ni(value)
  %1756 = fptoui float %1755 to i32
  %1757 = urem i32 %1756, %1690
  %1758 = udiv i32 %1756, %1691
  %1759 = call float @dx.op.unary.f32(i32 22, float %1739)  ; Frc(value)
  %1760 = call float @dx.op.unary.f32(i32 22, float %1740)  ; Frc(value)
  %1761 = uitofp i32 %1757 to float
  %1762 = uitofp i32 %1758 to float
  %1763 = fadd fast float %1759, %1761
  %1764 = fadd fast float %1760, %1762
  %1765 = uitofp i32 %1690 to float
  %1766 = uitofp i32 %1691 to float
  %1767 = fdiv fast float %1763, %1765
  %1768 = fdiv fast float %1764, %1766
  br label %1769

; <label>:1769                                    ; preds = %1744, %1671
  %1770 = phi float [ %1767, %1744 ], [ %1739, %1671 ]
  %1771 = phi float [ %1768, %1744 ], [ %1740, %1671 ]
  %1772 = and i32 %1665, 256
  %1773 = icmp eq i32 %1772, 0
  br i1 %1773, label %1820, label %1774

; <label>:1774                                    ; preds = %1769
  %1775 = add i32 %32, 448
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = add i32 %1777, 0
  %1779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1778, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1780 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1779, %dx.types.Handle %73, float %1770, float %1771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1782 = add i32 %32, 132
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = shl i32 %1784, 4
  %1786 = and i32 %1785, 32752
  %1787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1786)  ; LegacyF16ToF32(value)
  %1788 = lshr i32 %1784, 7
  %1789 = and i32 %1788, 32752
  %1790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1789)  ; LegacyF16ToF32(value)
  %1791 = fsub fast float 1.000000e+00, %437
  %1792 = call float @dx.op.binary.f32(i32 35, float %1791, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1793 = bitcast float %437 to i32
  %1794 = sitofp i32 %1793 to float
  %1795 = fadd fast float %1794, 0xC1CFBF8940000000
  %1796 = fmul fast float %1790, %1795
  %1797 = fadd fast float %1796, 0x41CFBF8940000000
  %1798 = fptosi float %1797 to i32
  %1799 = bitcast i32 %1798 to float
  %1800 = bitcast float %1792 to i32
  %1801 = sitofp i32 %1800 to float
  %1802 = fadd fast float %1801, 0xC1CFBF8940000000
  %1803 = fmul fast float %1802, %1790
  %1804 = fadd fast float %1803, 0x41CFBF8940000000
  %1805 = fptosi float %1804 to i32
  %1806 = bitcast i32 %1805 to float
  %1807 = fmul fast float %1799, %1787
  %1808 = fmul fast float %1806, %1787
  %1809 = fsub fast float %1792, %1807
  %1810 = fadd fast float %1808, %1792
  %1811 = call float @dx.op.unary.f32(i32 7, float %1809)  ; Saturate(value)
  %1812 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  %1813 = fsub fast float %1781, %1811
  %1814 = fsub fast float %1812, %1811
  %1815 = bitcast float %1814 to i32
  %1816 = sub nsw i32 2129859010, %1815
  %1817 = bitcast i32 %1816 to float
  %1818 = fmul fast float %1817, %1813
  %1819 = call float @dx.op.unary.f32(i32 7, float %1818)  ; Saturate(value)
  br label %1820

; <label>:1820                                    ; preds = %1774, %1769
  %1821 = phi float [ %1819, %1774 ], [ %437, %1769 ]
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = and i32 %1823, 128
  %1825 = icmp eq i32 %1824, 0
  br i1 %1825, label %1842, label %1826

; <label>:1826                                    ; preds = %1820
  %1827 = add i32 %32, 432
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1827, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = add i32 %1829, 0
  %1831 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1830, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1832 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1831, %dx.types.Handle %73, float %1770, float %1771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1833 = extractvalue %dx.types.ResRet.f32 %1832, 0
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = and i32 %1835, 524288
  %1837 = icmp ne i32 %1836, 0
  %1838 = fcmp fast ogt float %1833, 0x3FE0101020000000
  %1839 = select i1 %1838, float 1.000000e+00, float 0.000000e+00
  %1840 = select i1 %1837, float %1839, float %1833
  %1841 = fmul fast float %1840, %1821
  br label %1842

; <label>:1842                                    ; preds = %1826, %1820
  %1843 = phi float [ %1841, %1826 ], [ %1821, %1820 ]
  %1844 = fcmp fast ult float %1843, 0x3F70101020000000
  br i1 %1844, label %2387, label %1845

; <label>:1845                                    ; preds = %1842
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = and i32 %1847, 16
  %1849 = icmp eq i32 %1848, 0
  br i1 %1849, label %2048, label %1850

; <label>:1850                                    ; preds = %1845
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = add i32 %32, 384
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = add i32 %1855, 0
  %1857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1856, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1858 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1857, %dx.types.Handle %72, float %1770, float %1771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1859 = extractvalue %dx.types.ResRet.f32 %1858, 0
  %1860 = extractvalue %dx.types.ResRet.f32 %1858, 1
  %1861 = extractvalue %dx.types.ResRet.f32 %1858, 2
  %1862 = extractvalue %dx.types.ResRet.f32 %1858, 3
  %1863 = and i32 %1852, 255
  %1864 = uitofp i32 %1863 to float
  %1865 = lshr i32 %1852, 8
  %1866 = and i32 %1865, 255
  %1867 = uitofp i32 %1866 to float
  %1868 = fmul fast float %1862, %1864
  %1869 = fadd fast float %1868, %1867
  %1870 = fmul fast float %1869, 0x3F70101000000000
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = and i32 %1872, 512
  %1874 = icmp eq i32 %1873, 0
  br i1 %1874, label %1883, label %1875

; <label>:1875                                    ; preds = %1850
  %1876 = add i32 %32, 464
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = add i32 %1878, 0
  %1880 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1879, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1881 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1880, %dx.types.Handle %73, float %1770, float %1771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  br label %1883

; <label>:1883                                    ; preds = %1875, %1850
  %1884 = phi float [ %1882, %1875 ], [ 1.000000e+00, %1850 ]
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = and i32 %1886, 33554432
  %1888 = icmp eq i32 %1887, 0
  br i1 %1888, label %1995, label %1889

; <label>:1889                                    ; preds = %1883
  %1890 = add i32 %32, 256
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = and i32 %1892, 65535
  %1894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1893)  ; LegacyF16ToF32(value)
  %1895 = lshr i32 %1892, 16
  %1896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1895)  ; LegacyF16ToF32(value)
  %1897 = add i32 %32, 260
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = and i32 %1899, 65535
  %1901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1900)  ; LegacyF16ToF32(value)
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = lshr i32 %1903, 24
  %1905 = uitofp i32 %1904 to float
  %1906 = fmul fast float %1905, 0x3F70101020000000
  %1907 = and i32 %1903, 255
  %1908 = uitofp i32 %1907 to float
  %1909 = fmul fast float %1908, 0x3F70101020000000
  %1910 = lshr i32 %1903, 8
  %1911 = and i32 %1910, 255
  %1912 = uitofp i32 %1911 to float
  %1913 = fmul fast float %1912, 0x3F70101020000000
  %1914 = lshr i32 %1903, 16
  %1915 = and i32 %1914, 255
  %1916 = uitofp i32 %1915 to float
  %1917 = fmul fast float %1916, 0x3F70101020000000
  %1918 = add i32 %32, 252
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = lshr i32 %1920, 24
  %1922 = uitofp i32 %1921 to float
  %1923 = fmul fast float %1922, 0x3F70101020000000
  %1924 = and i32 %1920, 255
  %1925 = uitofp i32 %1924 to float
  %1926 = fmul fast float %1925, 0x3F70101020000000
  %1927 = lshr i32 %1920, 8
  %1928 = and i32 %1927, 255
  %1929 = uitofp i32 %1928 to float
  %1930 = fmul fast float %1929, 0x3F70101020000000
  %1931 = lshr i32 %1920, 16
  %1932 = and i32 %1931, 255
  %1933 = uitofp i32 %1932 to float
  %1934 = fmul fast float %1933, 0x3F70101020000000
  %1935 = bitcast float %1859 to i32
  %1936 = ashr i32 %1935, 1
  %1937 = sub nsw i32 1597463174, %1936
  %1938 = bitcast i32 %1937 to float
  %1939 = fmul fast float %1859, 5.000000e-01
  %1940 = fmul fast float %1938, %1938
  %1941 = fmul fast float %1940, %1939
  %1942 = fsub fast float 1.500000e+00, %1941
  %1943 = fmul fast float %1938, %1859
  %1944 = fmul fast float %1943, %1942
  %1945 = bitcast float %1860 to i32
  %1946 = ashr i32 %1945, 1
  %1947 = sub nsw i32 1597463174, %1946
  %1948 = bitcast i32 %1947 to float
  %1949 = fmul fast float %1860, 5.000000e-01
  %1950 = fmul fast float %1948, %1948
  %1951 = fmul fast float %1950, %1949
  %1952 = fsub fast float 1.500000e+00, %1951
  %1953 = fmul fast float %1948, %1860
  %1954 = fmul fast float %1953, %1952
  %1955 = bitcast float %1861 to i32
  %1956 = ashr i32 %1955, 1
  %1957 = sub nsw i32 1597463174, %1956
  %1958 = bitcast i32 %1957 to float
  %1959 = fmul fast float %1861, 5.000000e-01
  %1960 = fmul fast float %1958, %1958
  %1961 = fmul fast float %1960, %1959
  %1962 = fsub fast float 1.500000e+00, %1961
  %1963 = fmul fast float %1958, %1861
  %1964 = fmul fast float %1963, %1962
  %1965 = fsub fast float %1944, %1926
  %1966 = fsub fast float %1954, %1930
  %1967 = fsub fast float %1964, %1934
  %1968 = fmul fast float %1965, %1894
  %1969 = fmul fast float %1966, %1896
  %1970 = fmul fast float %1967, %1901
  %1971 = fadd fast float %1968, %1909
  %1972 = fadd fast float %1969, %1913
  %1973 = fadd fast float %1970, %1917
  %1974 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %1975 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  %1976 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  %1977 = fmul fast float %1974, %1974
  %1978 = fmul fast float %1975, %1975
  %1979 = fmul fast float %1976, %1976
  %1980 = fsub fast float %1977, %1859
  %1981 = fsub fast float %1978, %1860
  %1982 = fsub fast float %1979, %1861
  %1983 = fmul fast float %1980, %1884
  %1984 = fmul fast float %1981, %1884
  %1985 = fmul fast float %1982, %1884
  %1986 = fadd fast float %1983, %1859
  %1987 = fadd fast float %1984, %1860
  %1988 = fadd fast float %1985, %1861
  %1989 = fadd fast float %1906, %1870
  %1990 = fsub fast float %1989, %1923
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1992 = fsub fast float %1991, %1870
  %1993 = fmul fast float %1992, %1884
  %1994 = fadd fast float %1993, %1870
  br label %2048

; <label>:1995                                    ; preds = %1883
  %1996 = and i32 %1886, 134217728
  %1997 = icmp eq i32 %1996, 0
  br i1 %1997, label %2032, label %1998

; <label>:1998                                    ; preds = %1995
  %1999 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %2000 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %2001 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %2002 = fadd fast float %1999, -5.000000e-01
  %2003 = fadd fast float %2000, -5.000000e-01
  %2004 = fadd fast float %2001, -5.000000e-01
  %2005 = fmul fast float %2002, %1884
  %2006 = fmul fast float %2003, %1884
  %2007 = fmul fast float %2004, %1884
  %2008 = fadd fast float %2005, 5.000000e-01
  %2009 = fadd fast float %2006, 5.000000e-01
  %2010 = fadd fast float %2007, 5.000000e-01
  %2011 = call float @dx.op.unary.f32(i32 24, float %1859)  ; Sqrt(value)
  %2012 = call float @dx.op.unary.f32(i32 24, float %1860)  ; Sqrt(value)
  %2013 = call float @dx.op.unary.f32(i32 24, float %1861)  ; Sqrt(value)
  %2014 = fmul fast float %2008, 2.000000e+00
  %2015 = fsub fast float 1.000000e+00, %2014
  %2016 = fmul fast float %2015, %2011
  %2017 = fadd fast float %2016, %2014
  %2018 = fmul fast float %2017, %2011
  %2019 = fmul fast float %2009, 2.000000e+00
  %2020 = fsub fast float 1.000000e+00, %2019
  %2021 = fmul fast float %2020, %2012
  %2022 = fadd fast float %2021, %2019
  %2023 = fmul fast float %2022, %2012
  %2024 = fmul fast float %2010, 2.000000e+00
  %2025 = fsub fast float 1.000000e+00, %2024
  %2026 = fmul fast float %2025, %2013
  %2027 = fadd fast float %2026, %2024
  %2028 = fmul fast float %2027, %2013
  %2029 = fmul fast float %2018, %2018
  %2030 = fmul fast float %2023, %2023
  %2031 = fmul fast float %2028, %2028
  br label %2048

; <label>:2032                                    ; preds = %1995
  %2033 = fmul fast float %315, %315
  %2034 = fmul fast float %319, %319
  %2035 = fmul fast float %323, %323
  %2036 = fadd fast float %2033, -1.000000e+00
  %2037 = fadd fast float %2034, -1.000000e+00
  %2038 = fadd fast float %2035, -1.000000e+00
  %2039 = fmul fast float %1884, %2036
  %2040 = fmul fast float %1884, %2037
  %2041 = fmul fast float %1884, %2038
  %2042 = fadd fast float %2039, 1.000000e+00
  %2043 = fadd fast float %2040, 1.000000e+00
  %2044 = fadd fast float %2041, 1.000000e+00
  %2045 = fmul fast float %2042, %1859
  %2046 = fmul fast float %2043, %1860
  %2047 = fmul fast float %2044, %1861
  br label %2048

; <label>:2048                                    ; preds = %2032, %1998, %1889, %1845
  %2049 = phi float [ %1994, %1889 ], [ %1870, %1998 ], [ %1870, %2032 ], [ 0x3FA23C0BE0000000, %1845 ]
  %2050 = phi float [ %1986, %1889 ], [ %2029, %1998 ], [ %2045, %2032 ], [ 1.000000e+00, %1845 ]
  %2051 = phi float [ %1987, %1889 ], [ %2030, %1998 ], [ %2046, %2032 ], [ 1.000000e+00, %1845 ]
  %2052 = phi float [ %1988, %1889 ], [ %2031, %1998 ], [ %2047, %2032 ], [ 1.000000e+00, %1845 ]
  %2053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.i32 %2053, 1
  %2055 = and i32 %2054, 1
  %2056 = icmp ne i32 %2055, 0
  %2057 = add i32 %32, 356
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = and i32 %2059, 32
  %2061 = icmp ne i32 %2060, 0
  %2062 = and i1 %2056, %2061
  %2063 = select i1 %2062, float 1.000000e+00, float %2050
  %2064 = select i1 %2062, float 0x3FD3333340000000, float %2051
  %2065 = select i1 %2062, float 0x3FD3333340000000, float %2052
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = and i32 %2067, 32
  %2069 = icmp eq i32 %2068, 0
  br i1 %2069, label %2142, label %2070

; <label>:2070                                    ; preds = %2048
  %2071 = add i32 %32, 124
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = add i32 %32, 400
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = add i32 %2076, 0
  %2078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2079 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2078, %dx.types.Handle %72, float %1770, float %1771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2080 = extractvalue %dx.types.ResRet.f32 %2079, 0
  %2081 = extractvalue %dx.types.ResRet.f32 %2079, 1
  %2082 = extractvalue %dx.types.ResRet.f32 %2079, 2
  %2083 = extractvalue %dx.types.ResRet.f32 %2079, 3
  %2084 = and i32 %2073, 255
  %2085 = uitofp i32 %2084 to float
  %2086 = lshr i32 %2073, 8
  %2087 = and i32 %2086, 255
  %2088 = uitofp i32 %2087 to float
  %2089 = lshr i32 %2073, 16
  %2090 = and i32 %2089, 255
  %2091 = uitofp i32 %2090 to float
  %2092 = fmul fast float %2091, 0x3F70101000000000
  %2093 = fmul fast float %2080, %2085
  %2094 = fadd fast float %2093, %2088
  %2095 = fmul fast float %2094, 0x3F70101000000000
  %2096 = fadd fast float %2081, -5.000000e-01
  %2097 = fadd fast float %2083, -5.000000e-01
  %2098 = fmul fast float %2096, %2092
  %2099 = fmul fast float %2097, %2092
  %2100 = fadd fast float %2098, 5.000000e-01
  %2101 = fadd fast float %2099, 5.000000e-01
  %2102 = fmul fast float %2100, 2.000000e+00
  %2103 = fadd fast float %2102, -1.000000e+00
  %2104 = fmul fast float %2101, 2.000000e+00
  %2105 = fadd fast float %2104, -1.000000e+00
  %2106 = fadd fast float %2103, %2105
  %2107 = fmul fast float %2106, 5.000000e-01
  %2108 = fsub fast float %2103, %2105
  %2109 = fmul fast float %2108, 5.000000e-01
  %2110 = call float @dx.op.unary.f32(i32 6, float %2107)  ; FAbs(value)
  %2111 = fsub fast float 1.000000e+00, %2110
  %2112 = call float @dx.op.unary.f32(i32 6, float %2109)  ; FAbs(value)
  %2113 = fsub fast float %2111, %2112
  %2114 = call float @dx.op.dot3.f32(i32 55, float %2107, float %2109, float %2113, float %2107, float %2109, float %2113)  ; Dot3(ax,ay,az,bx,by,bz)
  %2115 = call float @dx.op.unary.f32(i32 25, float %2114)  ; Rsqrt(value)
  %2116 = fmul fast float %2107, %2115
  %2117 = fmul fast float %2109, %2115
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = and i32 %2119, 67108864
  %2121 = icmp eq i32 %2120, 0
  br i1 %2121, label %2138, label %2122

; <label>:2122                                    ; preds = %2070
  %2123 = add i32 %32, 312
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = and i32 %2125, 65535
  %2127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2126)  ; LegacyF16ToF32(value)
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1680, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = and i32 %2129, 65535
  %2131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2130)  ; LegacyF16ToF32(value)
  %2132 = lshr i32 %2125, 16
  %2133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2132)  ; LegacyF16ToF32(value)
  %2134 = fsub fast float %2095, %2133
  %2135 = fmul fast float %2134, %2127
  %2136 = fadd fast float %2135, %2131
  %2137 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  br label %2138

; <label>:2138                                    ; preds = %2122, %2070
  %2139 = phi float [ %2137, %2122 ], [ %2095, %2070 ]
  %2140 = call float @dx.op.dot2.f32(i32 54, float %2116, float %2117, float %1674, float %1675)  ; Dot2(ax,ay,bx,by)
  %2141 = call float @dx.op.dot2.f32(i32 54, float %2116, float %2117, float %1676, float %1677)  ; Dot2(ax,ay,bx,by)
  br label %2142

; <label>:2142                                    ; preds = %2138, %2048
  %2143 = phi float [ %2139, %2138 ], [ 0x3FD6666660000000, %2048 ]
  %2144 = phi float [ %2140, %2138 ], [ 0.000000e+00, %2048 ]
  %2145 = phi float [ %2141, %2138 ], [ 0.000000e+00, %2048 ]
  %2146 = phi float [ %2082, %2138 ], [ 1.000000e+00, %2048 ]
  %2147 = add i32 %32, 192
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = lshr i32 %2149, 22
  %2151 = shl nuw nsw i32 %2150, 5
  %2152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2151)  ; LegacyF16ToF32(value)
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = and i32 %2154, 64
  %2156 = icmp eq i32 %2155, 0
  br i1 %2156, label %2190, label %2157

; <label>:2157                                    ; preds = %2142
  %2158 = add i32 %32, 416
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = add i32 %2160, 0
  %2162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = and i32 %2164, 131072
  %2166 = icmp eq i32 %2165, 0
  %2167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2162, %dx.types.Handle %72, float %1770, float %1771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  %2169 = extractvalue %dx.types.ResRet.f32 %2167, 1
  %2170 = extractvalue %dx.types.ResRet.f32 %2167, 2
  %2171 = fmul fast float %2168, %303
  %2172 = fmul fast float %2169, %306
  %2173 = fmul fast float %2170, %309
  br i1 %2166, label %2180, label %2174

; <label>:2174                                    ; preds = %2157
  %2175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2176 = extractvalue %dx.types.CBufRet.f32 %2175, 0
  %2177 = fmul fast float %2176, %2171
  %2178 = fmul fast float %2176, %2172
  %2179 = fmul fast float %2176, %2173
  br label %2180

; <label>:2180                                    ; preds = %2174, %2157
  %2181 = phi float [ %2177, %2174 ], [ %2171, %2157 ]
  %2182 = phi float [ %2178, %2174 ], [ %2172, %2157 ]
  %2183 = phi float [ %2179, %2174 ], [ %2173, %2157 ]
  %2184 = fmul fast float %2181, %2152
  %2185 = select i1 %202, float %2184, float %2181
  %2186 = call float @dx.op.dot3.f32(i32 55, float %2185, float %2182, float %2183, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2187 = select i1 %202, float 0.000000e+00, float %2181
  %2188 = select i1 %202, float %2186, float %2182
  %2189 = select i1 %202, float 0.000000e+00, float %2183
  br label %2190

; <label>:2190                                    ; preds = %2180, %2142
  %2191 = phi float [ %2187, %2180 ], [ 0.000000e+00, %2142 ]
  %2192 = phi float [ %2188, %2180 ], [ 0.000000e+00, %2142 ]
  %2193 = phi float [ %2189, %2180 ], [ 0.000000e+00, %2142 ]
  %2194 = add i32 %32, 128
  %2195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2194, i32 undef)  ; BufferLoad(srv,index,wot)
  %2196 = extractvalue %dx.types.ResRet.i32 %2195, 0
  %2197 = and i32 %2196, 255
  %2198 = uitofp i32 %2197 to float
  %2199 = lshr i32 %2196, 8
  %2200 = and i32 %2199, 255
  %2201 = uitofp i32 %2200 to float
  %2202 = call float @dx.op.dot3.f32(i32 55, float %2063, float %2064, float %2065, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2203 = fmul fast float %2201, %2202
  %2204 = fadd fast float %2203, %2198
  %2205 = fmul fast float %2204, 0x3F70101020000000
  %2206 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  br i1 %1662, label %2207, label %2215

; <label>:2207                                    ; preds = %2190
  %2208 = fsub fast float 1.000000e+00, %1843
  %2209 = fmul fast float %2208, %1654
  %2210 = fmul fast float %2208, %1655
  %2211 = fmul fast float %2208, %1656
  %2212 = fmul fast float %2208, %1651
  %2213 = fmul fast float %2208, %1652
  %2214 = fmul fast float %2208, %1653
  br label %2215

; <label>:2215                                    ; preds = %2207, %2190
  %2216 = phi float [ %2212, %2207 ], [ %1651, %2190 ]
  %2217 = phi float [ %2213, %2207 ], [ %1652, %2190 ]
  %2218 = phi float [ %2214, %2207 ], [ %1653, %2190 ]
  %2219 = phi float [ %2209, %2207 ], [ %1654, %2190 ]
  %2220 = phi float [ %2210, %2207 ], [ %1655, %2190 ]
  %2221 = phi float [ %2211, %2207 ], [ %1656, %2190 ]
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = and i32 %2223, 3
  %2225 = icmp eq i32 %2224, 3
  br i1 %2225, label %2304, label %2226

; <label>:2226                                    ; preds = %2215
  %2227 = and i32 %2223, 16
  %2228 = icmp ne i32 %2227, 0
  %2229 = select i1 %2228, float %1843, float 0.000000e+00
  %2230 = icmp eq i32 %2224, 0
  br i1 %2230, label %2231, label %2259

; <label>:2231                                    ; preds = %2226
  %2232 = and i32 %2223, 64
  %2233 = icmp ne i32 %2232, 0
  %2234 = select i1 %2233, float %1843, float 0.000000e+00
  %2235 = fsub fast float %2063, %2219
  %2236 = fsub fast float %2064, %2220
  %2237 = fsub fast float %2065, %2221
  %2238 = fmul fast float %2229, %2235
  %2239 = fmul fast float %2229, %2236
  %2240 = fmul fast float %2229, %2237
  %2241 = fadd fast float %2238, %2219
  %2242 = fadd fast float %2239, %2220
  %2243 = fadd fast float %2240, %2221
  %2244 = fsub fast float %2049, %1657
  %2245 = fmul fast float %2229, %2244
  %2246 = fadd fast float %2245, %1657
  %2247 = fsub fast float %2191, %2216
  %2248 = fsub fast float %2192, %2217
  %2249 = fsub fast float %2193, %2218
  %2250 = fmul fast float %2234, %2247
  %2251 = fmul fast float %2234, %2248
  %2252 = fmul fast float %2234, %2249
  %2253 = fadd fast float %2250, %2216
  %2254 = fadd fast float %2251, %2217
  %2255 = fadd fast float %2252, %2218
  %2256 = fsub fast float %2206, %1660
  %2257 = fmul fast float %2229, %2256
  %2258 = fadd fast float %2257, %1660
  br label %2304

; <label>:2259                                    ; preds = %2226
  %2260 = icmp eq i32 %2224, 1
  br i1 %2260, label %2261, label %2274

; <label>:2261                                    ; preds = %2259
  %2262 = fadd fast float %2063, -1.000000e+00
  %2263 = fadd fast float %2064, -1.000000e+00
  %2264 = fadd fast float %2065, -1.000000e+00
  %2265 = fmul fast float %2229, %2262
  %2266 = fmul fast float %2229, %2263
  %2267 = fmul fast float %2229, %2264
  %2268 = fadd fast float %2265, 1.000000e+00
  %2269 = fadd fast float %2266, 1.000000e+00
  %2270 = fadd fast float %2267, 1.000000e+00
  %2271 = fmul fast float %2268, %2219
  %2272 = fmul fast float %2269, %2220
  %2273 = fmul fast float %2270, %2221
  br label %2304

; <label>:2274                                    ; preds = %2259
  %2275 = icmp eq i32 %2224, 2
  br i1 %2275, label %2276, label %2304

; <label>:2276                                    ; preds = %2274
  %2277 = call float @dx.op.unary.f32(i32 24, float %2063)  ; Sqrt(value)
  %2278 = call float @dx.op.unary.f32(i32 24, float %2064)  ; Sqrt(value)
  %2279 = call float @dx.op.unary.f32(i32 24, float %2065)  ; Sqrt(value)
  %2280 = fadd fast float %2277, -5.000000e-01
  %2281 = fadd fast float %2278, -5.000000e-01
  %2282 = fadd fast float %2279, -5.000000e-01
  %2283 = fmul fast float %2280, %2229
  %2284 = fmul fast float %2281, %2229
  %2285 = fmul fast float %2282, %2229
  %2286 = fadd fast float %2283, 5.000000e-01
  %2287 = fadd fast float %2284, 5.000000e-01
  %2288 = fadd fast float %2285, 5.000000e-01
  %2289 = fmul fast float %2286, 2.000000e+00
  %2290 = fsub fast float 1.000000e+00, %2289
  %2291 = fmul fast float %2290, %2219
  %2292 = fadd fast float %2291, %2289
  %2293 = fmul fast float %2292, %2219
  %2294 = fmul fast float %2287, 2.000000e+00
  %2295 = fsub fast float 1.000000e+00, %2294
  %2296 = fmul fast float %2295, %2220
  %2297 = fadd fast float %2296, %2294
  %2298 = fmul fast float %2297, %2220
  %2299 = fmul fast float %2288, 2.000000e+00
  %2300 = fsub fast float 1.000000e+00, %2299
  %2301 = fmul fast float %2300, %2221
  %2302 = fadd fast float %2301, %2299
  %2303 = fmul fast float %2302, %2221
  br label %2304

; <label>:2304                                    ; preds = %2276, %2274, %2261, %2231, %2215
  %2305 = phi float [ %2216, %2215 ], [ %2216, %2276 ], [ %2216, %2274 ], [ %2216, %2261 ], [ %2253, %2231 ]
  %2306 = phi float [ %2217, %2215 ], [ %2217, %2276 ], [ %2217, %2274 ], [ %2217, %2261 ], [ %2254, %2231 ]
  %2307 = phi float [ %2218, %2215 ], [ %2218, %2276 ], [ %2218, %2274 ], [ %2218, %2261 ], [ %2255, %2231 ]
  %2308 = phi float [ %2219, %2215 ], [ %2293, %2276 ], [ %2219, %2274 ], [ %2271, %2261 ], [ %2241, %2231 ]
  %2309 = phi float [ %2220, %2215 ], [ %2298, %2276 ], [ %2220, %2274 ], [ %2272, %2261 ], [ %2242, %2231 ]
  %2310 = phi float [ %2221, %2215 ], [ %2303, %2276 ], [ %2221, %2274 ], [ %2273, %2261 ], [ %2243, %2231 ]
  %2311 = phi float [ %1657, %2215 ], [ %1657, %2276 ], [ %1657, %2274 ], [ %1657, %2261 ], [ %2246, %2231 ]
  %2312 = phi float [ %1660, %2215 ], [ %1660, %2276 ], [ %1660, %2274 ], [ %1660, %2261 ], [ %2258, %2231 ]
  %2313 = and i32 %2223, 12
  %2314 = icmp eq i32 %2313, 12
  br i1 %2314, label %2387, label %2315

; <label>:2315                                    ; preds = %2304
  %2316 = and i32 %2223, 2097184
  %2317 = icmp eq i32 %2316, 2097184
  %2318 = select i1 %2317, float %1843, float 0.000000e+00
  %2319 = and i32 %2223, 4194336
  %2320 = icmp eq i32 %2319, 4194336
  %2321 = select i1 %2320, float %1843, float 0.000000e+00
  %2322 = and i32 %2223, 8388640
  %2323 = icmp eq i32 %2322, 8388640
  %2324 = select i1 %2323, float %1843, float 0.000000e+00
  %2325 = icmp eq i32 %2313, 0
  br i1 %2325, label %2326, label %2339

; <label>:2326                                    ; preds = %2315
  %2327 = fsub fast float %2144, %1649
  %2328 = fsub fast float %2145, %1650
  %2329 = fmul fast float %2318, %2327
  %2330 = fmul fast float %2318, %2328
  %2331 = fadd fast float %2329, %1649
  %2332 = fadd fast float %2330, %1650
  %2333 = fsub fast float %2146, %1659
  %2334 = fmul fast float %2321, %2333
  %2335 = fadd fast float %2334, %1659
  %2336 = fsub fast float %2143, %1658
  %2337 = fmul fast float %2324, %2336
  %2338 = fadd fast float %2337, %1658
  br label %2387

; <label>:2339                                    ; preds = %2315
  %2340 = icmp eq i32 %2313, 4
  br i1 %2340, label %2341, label %2373

; <label>:2341                                    ; preds = %2339
  %2342 = fmul fast float %2318, %2144
  %2343 = fmul fast float %2318, %2145
  %2344 = fadd fast float %2342, %1649
  %2345 = fadd fast float %2343, %1650
  %2346 = call float @dx.op.binary.f32(i32 36, float %1659, float %2146)  ; FMin(a,b)
  %2347 = fsub fast float %2346, %1659
  %2348 = fmul fast float %2347, %2321
  %2349 = fadd fast float %2348, %1659
  %2350 = fadd fast float %2143, %1658
  %2351 = fmul fast float %2350, 0x3FF337FAE0000000
  %2352 = fmul fast float %1658, %1658
  %2353 = fmul fast float %2143, %2143
  %2354 = fadd fast float %2353, %2352
  %2355 = fmul fast float %2354, 0x3FE5152B00000000
  %2356 = fmul fast float %1658, 0xBFCC1F85E0000000
  %2357 = fmul fast float %2356, %2143
  %2358 = fadd fast float %2357, 0xBFE1363700000000
  %2359 = fadd fast float %2358, %2351
  %2360 = fsub fast float %2359, %2355
  %2361 = fmul fast float %2350, 0x3FBA6F0D00000000
  %2362 = fmul fast float %2354, 0x3FD0432880000000
  %2363 = fmul fast float %1658, 0xBFEF110800000000
  %2364 = fmul fast float %2363, %2143
  %2365 = fadd fast float %2364, 1.000000e+00
  %2366 = fsub fast float %2365, %2361
  %2367 = fadd fast float %2366, %2362
  %2368 = fdiv fast float %2360, %2367
  %2369 = call float @dx.op.unary.f32(i32 7, float %2368)  ; Saturate(value)
  %2370 = fsub fast float %2369, %1658
  %2371 = fmul fast float %2370, %2324
  %2372 = fadd fast float %2371, %1658
  br label %2387

; <label>:2373                                    ; preds = %2339
  %2374 = icmp eq i32 %2313, 8
  br i1 %2374, label %2375, label %2387

; <label>:2375                                    ; preds = %2373
  %2376 = fmul fast float %2318, %2144
  %2377 = fmul fast float %2318, %2145
  %2378 = fadd fast float %2376, %1649
  %2379 = fadd fast float %2377, %1650
  %2380 = call float @dx.op.binary.f32(i32 36, float %1659, float %2146)  ; FMin(a,b)
  %2381 = fsub fast float %2380, %1659
  %2382 = fmul fast float %2381, %2321
  %2383 = fadd fast float %2382, %1659
  %2384 = fsub fast float %2143, %1658
  %2385 = fmul fast float %2324, %2384
  %2386 = fadd fast float %2385, %1658
  br label %2387

; <label>:2387                                    ; preds = %2375, %2373, %2341, %2326, %2304, %1842, %1661, %1648
  %2388 = phi float [ %1649, %2304 ], [ %1649, %1842 ], [ %1649, %1648 ], [ %2378, %2375 ], [ %1649, %2373 ], [ %2344, %2341 ], [ %2331, %2326 ], [ %1649, %1661 ]
  %2389 = phi float [ %1650, %2304 ], [ %1650, %1842 ], [ %1650, %1648 ], [ %2379, %2375 ], [ %1650, %2373 ], [ %2345, %2341 ], [ %2332, %2326 ], [ %1650, %1661 ]
  %2390 = phi float [ %2305, %2304 ], [ %1651, %1842 ], [ %1651, %1648 ], [ %2305, %2375 ], [ %2305, %2373 ], [ %2305, %2341 ], [ %2305, %2326 ], [ %1651, %1661 ]
  %2391 = phi float [ %2306, %2304 ], [ %1652, %1842 ], [ %1652, %1648 ], [ %2306, %2375 ], [ %2306, %2373 ], [ %2306, %2341 ], [ %2306, %2326 ], [ %1652, %1661 ]
  %2392 = phi float [ %2307, %2304 ], [ %1653, %1842 ], [ %1653, %1648 ], [ %2307, %2375 ], [ %2307, %2373 ], [ %2307, %2341 ], [ %2307, %2326 ], [ %1653, %1661 ]
  %2393 = phi float [ %2308, %2304 ], [ %1654, %1842 ], [ %1654, %1648 ], [ %2308, %2375 ], [ %2308, %2373 ], [ %2308, %2341 ], [ %2308, %2326 ], [ %1654, %1661 ]
  %2394 = phi float [ %2309, %2304 ], [ %1655, %1842 ], [ %1655, %1648 ], [ %2309, %2375 ], [ %2309, %2373 ], [ %2309, %2341 ], [ %2309, %2326 ], [ %1655, %1661 ]
  %2395 = phi float [ %2310, %2304 ], [ %1656, %1842 ], [ %1656, %1648 ], [ %2310, %2375 ], [ %2310, %2373 ], [ %2310, %2341 ], [ %2310, %2326 ], [ %1656, %1661 ]
  %2396 = phi float [ %2311, %2304 ], [ %1657, %1842 ], [ %1657, %1648 ], [ %2311, %2375 ], [ %2311, %2373 ], [ %2311, %2341 ], [ %2311, %2326 ], [ %1657, %1661 ]
  %2397 = phi float [ %1658, %2304 ], [ %1658, %1842 ], [ %1658, %1648 ], [ %2386, %2375 ], [ %1658, %2373 ], [ %2372, %2341 ], [ %2338, %2326 ], [ %1658, %1661 ]
  %2398 = phi float [ %1659, %2304 ], [ %1659, %1842 ], [ %1659, %1648 ], [ %2383, %2375 ], [ %1659, %2373 ], [ %2349, %2341 ], [ %2335, %2326 ], [ %1659, %1661 ]
  %2399 = phi float [ %2312, %2304 ], [ %1660, %1842 ], [ %1660, %1648 ], [ %2312, %2375 ], [ %2312, %2373 ], [ %2312, %2341 ], [ %2312, %2326 ], [ %1660, %1661 ]
  br i1 %390, label %3126, label %2400

; <label>:2400                                    ; preds = %2387
  %2401 = icmp ult i32 %441, 4
  %2402 = add i32 %32, 72
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = add i32 %32, 76
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = or i32 %2407, %2404
  %2409 = icmp eq i32 %2408, 0
  br i1 %2409, label %3126, label %2410

; <label>:2410                                    ; preds = %2400
  %2411 = and i32 %2404, 262144
  %2412 = icmp ne i32 %2411, 0
  %2413 = select i1 %2412, float %37, float 1.000000e+00
  %2414 = select i1 %2412, float %38, float 0.000000e+00
  %2415 = select i1 %2412, float %39, float 0.000000e+00
  %2416 = select i1 %2412, float %40, float 1.000000e+00
  %2417 = select i1 %2412, float %41, float %64
  %2418 = select i1 %2412, float %42, float %65
  %2419 = add i32 %32, 332
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = lshr i32 %2421, 16
  %2423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2422)  ; LegacyF16ToF32(value)
  %2424 = fmul fast float %2423, 0x3F50624DE0000000
  %2425 = add i32 %32, 136
  %2426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.i32 %2426, 0
  %2428 = lshr i32 %2427, 16
  %2429 = and i32 %2428, 255
  %2430 = lshr i32 %2427, 24
  %2431 = add i32 %32, 340
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2431, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = and i32 %2433, 65535
  %2435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2434)  ; LegacyF16ToF32(value)
  %2436 = lshr i32 %2433, 16
  %2437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2436)  ; LegacyF16ToF32(value)
  %2438 = add i32 %32, 80
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = lshr i32 %2440, 22
  %2442 = shl nuw nsw i32 %2441, 5
  %2443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2442)  ; LegacyF16ToF32(value)
  %2444 = shl i32 %2440, 4
  %2445 = and i32 %2444, 32752
  %2446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2445)  ; LegacyF16ToF32(value)
  %2447 = lshr i32 %2440, 7
  %2448 = and i32 %2447, 32752
  %2449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2448)  ; LegacyF16ToF32(value)
  %2450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2451 = extractvalue %dx.types.CBufRet.f32 %2450, 3
  %2452 = fmul fast float %2451, 1.000000e+03
  %2453 = fmul fast float %380, %2452
  %2454 = call float @dx.op.unary.f32(i32 22, float %2453)  ; Frc(value)
  %2455 = fadd fast float %2454, %370
  %2456 = fmul fast float %381, %2452
  %2457 = call float @dx.op.unary.f32(i32 22, float %2456)  ; Frc(value)
  %2458 = fadd fast float %2457, %372
  %2459 = fmul fast float %2424, %2452
  %2460 = call float @dx.op.unary.f32(i32 22, float %2459)  ; Frc(value)
  %2461 = fmul fast float %2460, 0x401921FB60000000
  %2462 = fadd fast float %2461, %2443
  %2463 = call float @dx.op.unary.f32(i32 13, float %2462)  ; Sin(value)
  %2464 = call float @dx.op.unary.f32(i32 12, float %2462)  ; Cos(value)
  %2465 = fsub fast float -0.000000e+00, %2463
  %2466 = fadd fast float %2417, -5.000000e-01
  %2467 = fadd fast float %2418, -5.000000e-01
  %2468 = fmul fast float %2435, %2466
  %2469 = fmul fast float %2437, %2467
  %2470 = fadd fast float %2468, 5.000000e-01
  %2471 = fadd fast float %2469, 5.000000e-01
  %2472 = fmul fast float %2446, %2470
  %2473 = fmul fast float %2449, %2471
  %2474 = fmul fast float %2464, %2472
  %2475 = call float @dx.op.tertiary.f32(i32 46, float %2465, float %2473, float %2474)  ; FMad(a,b,c)
  %2476 = fmul fast float %2463, %2472
  %2477 = call float @dx.op.tertiary.f32(i32 46, float %2464, float %2473, float %2476)  ; FMad(a,b,c)
  %2478 = fadd fast float %2455, %2475
  %2479 = fadd fast float %2458, %2477
  %2480 = icmp ugt i32 %2429, 1
  %2481 = icmp ugt i32 %2427, 33554431
  %2482 = or i1 %2481, %2480
  br i1 %2482, label %2483, label %2508

; <label>:2483                                    ; preds = %2410
  %2484 = add i32 %32, 276
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2484, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = lshr i32 %2486, 16
  %2488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2487)  ; LegacyF16ToF32(value)
  %2489 = fmul fast float %2451, %2488
  %2490 = call float @dx.op.unary.f32(i32 22, float %2489)  ; Frc(value)
  %2491 = mul nuw nsw i32 %2429, %2430
  %2492 = uitofp i32 %2491 to float
  %2493 = fmul fast float %2490, %2492
  %2494 = call float @dx.op.unary.f32(i32 27, float %2493)  ; Round_ni(value)
  %2495 = fptoui float %2494 to i32
  %2496 = urem i32 %2495, %2429
  %2497 = udiv i32 %2495, %2430
  %2498 = call float @dx.op.unary.f32(i32 22, float %2478)  ; Frc(value)
  %2499 = call float @dx.op.unary.f32(i32 22, float %2479)  ; Frc(value)
  %2500 = uitofp i32 %2496 to float
  %2501 = uitofp i32 %2497 to float
  %2502 = fadd fast float %2498, %2500
  %2503 = fadd fast float %2499, %2501
  %2504 = uitofp i32 %2429 to float
  %2505 = uitofp i32 %2430 to float
  %2506 = fdiv fast float %2502, %2504
  %2507 = fdiv fast float %2503, %2505
  br label %2508

; <label>:2508                                    ; preds = %2483, %2410
  %2509 = phi float [ %2506, %2483 ], [ %2478, %2410 ]
  %2510 = phi float [ %2507, %2483 ], [ %2479, %2410 ]
  %2511 = and i32 %2404, 256
  %2512 = icmp eq i32 %2511, 0
  br i1 %2512, label %2559, label %2513

; <label>:2513                                    ; preds = %2508
  %2514 = add i32 %32, 452
  %2515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2514, i32 undef)  ; BufferLoad(srv,index,wot)
  %2516 = extractvalue %dx.types.ResRet.i32 %2515, 0
  %2517 = add i32 %2516, 0
  %2518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2518, %dx.types.Handle %73, float %2509, float %2510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2520 = extractvalue %dx.types.ResRet.f32 %2519, 0
  %2521 = add i32 %32, 148
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = shl i32 %2523, 4
  %2525 = and i32 %2524, 32752
  %2526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2525)  ; LegacyF16ToF32(value)
  %2527 = lshr i32 %2523, 7
  %2528 = and i32 %2527, 32752
  %2529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2528)  ; LegacyF16ToF32(value)
  %2530 = fsub fast float 1.000000e+00, %436
  %2531 = call float @dx.op.binary.f32(i32 35, float %2530, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2532 = bitcast float %436 to i32
  %2533 = sitofp i32 %2532 to float
  %2534 = fadd fast float %2533, 0xC1CFBF8940000000
  %2535 = fmul fast float %2529, %2534
  %2536 = fadd fast float %2535, 0x41CFBF8940000000
  %2537 = fptosi float %2536 to i32
  %2538 = bitcast i32 %2537 to float
  %2539 = bitcast float %2531 to i32
  %2540 = sitofp i32 %2539 to float
  %2541 = fadd fast float %2540, 0xC1CFBF8940000000
  %2542 = fmul fast float %2541, %2529
  %2543 = fadd fast float %2542, 0x41CFBF8940000000
  %2544 = fptosi float %2543 to i32
  %2545 = bitcast i32 %2544 to float
  %2546 = fmul fast float %2538, %2526
  %2547 = fmul fast float %2545, %2526
  %2548 = fsub fast float %2531, %2546
  %2549 = fadd fast float %2547, %2531
  %2550 = call float @dx.op.unary.f32(i32 7, float %2548)  ; Saturate(value)
  %2551 = call float @dx.op.unary.f32(i32 7, float %2549)  ; Saturate(value)
  %2552 = fsub fast float %2520, %2550
  %2553 = fsub fast float %2551, %2550
  %2554 = bitcast float %2553 to i32
  %2555 = sub nsw i32 2129859010, %2554
  %2556 = bitcast i32 %2555 to float
  %2557 = fmul fast float %2556, %2552
  %2558 = call float @dx.op.unary.f32(i32 7, float %2557)  ; Saturate(value)
  br label %2559

; <label>:2559                                    ; preds = %2513, %2508
  %2560 = phi float [ %2558, %2513 ], [ %436, %2508 ]
  %2561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 0
  %2563 = and i32 %2562, 128
  %2564 = icmp eq i32 %2563, 0
  br i1 %2564, label %2581, label %2565

; <label>:2565                                    ; preds = %2559
  %2566 = add i32 %32, 436
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2566, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = add i32 %2568, 0
  %2570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2569, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2571 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2570, %dx.types.Handle %73, float %2509, float %2510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2572 = extractvalue %dx.types.ResRet.f32 %2571, 0
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = and i32 %2574, 524288
  %2576 = icmp ne i32 %2575, 0
  %2577 = fcmp fast ogt float %2572, 0x3FE0101020000000
  %2578 = select i1 %2577, float 1.000000e+00, float 0.000000e+00
  %2579 = select i1 %2576, float %2578, float %2572
  %2580 = fmul fast float %2579, %2560
  br label %2581

; <label>:2581                                    ; preds = %2565, %2559
  %2582 = phi float [ %2580, %2565 ], [ %2560, %2559 ]
  %2583 = fcmp fast ult float %2582, 0x3F70101020000000
  br i1 %2583, label %3126, label %2584

; <label>:2584                                    ; preds = %2581
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = and i32 %2586, 16
  %2588 = icmp eq i32 %2587, 0
  br i1 %2588, label %2787, label %2589

; <label>:2589                                    ; preds = %2584
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = add i32 %32, 388
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = add i32 %2594, 0
  %2596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2596, %dx.types.Handle %72, float %2509, float %2510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2598 = extractvalue %dx.types.ResRet.f32 %2597, 0
  %2599 = extractvalue %dx.types.ResRet.f32 %2597, 1
  %2600 = extractvalue %dx.types.ResRet.f32 %2597, 2
  %2601 = extractvalue %dx.types.ResRet.f32 %2597, 3
  %2602 = and i32 %2591, 255
  %2603 = uitofp i32 %2602 to float
  %2604 = lshr i32 %2591, 8
  %2605 = and i32 %2604, 255
  %2606 = uitofp i32 %2605 to float
  %2607 = fmul fast float %2601, %2603
  %2608 = fadd fast float %2607, %2606
  %2609 = fmul fast float %2608, 0x3F70101000000000
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = and i32 %2611, 512
  %2613 = icmp eq i32 %2612, 0
  br i1 %2613, label %2622, label %2614

; <label>:2614                                    ; preds = %2589
  %2615 = add i32 %32, 468
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = add i32 %2617, 0
  %2619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2619, %dx.types.Handle %73, float %2509, float %2510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2621 = extractvalue %dx.types.ResRet.f32 %2620, 0
  br label %2622

; <label>:2622                                    ; preds = %2614, %2589
  %2623 = phi float [ %2621, %2614 ], [ 1.000000e+00, %2589 ]
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = and i32 %2625, 33554432
  %2627 = icmp eq i32 %2626, 0
  br i1 %2627, label %2734, label %2628

; <label>:2628                                    ; preds = %2622
  %2629 = add i32 %32, 272
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2629, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = and i32 %2631, 65535
  %2633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2632)  ; LegacyF16ToF32(value)
  %2634 = lshr i32 %2631, 16
  %2635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2634)  ; LegacyF16ToF32(value)
  %2636 = add i32 %32, 276
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 65535
  %2640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2639)  ; LegacyF16ToF32(value)
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = lshr i32 %2642, 24
  %2644 = uitofp i32 %2643 to float
  %2645 = fmul fast float %2644, 0x3F70101020000000
  %2646 = and i32 %2642, 255
  %2647 = uitofp i32 %2646 to float
  %2648 = fmul fast float %2647, 0x3F70101020000000
  %2649 = lshr i32 %2642, 8
  %2650 = and i32 %2649, 255
  %2651 = uitofp i32 %2650 to float
  %2652 = fmul fast float %2651, 0x3F70101020000000
  %2653 = lshr i32 %2642, 16
  %2654 = and i32 %2653, 255
  %2655 = uitofp i32 %2654 to float
  %2656 = fmul fast float %2655, 0x3F70101020000000
  %2657 = add i32 %32, 268
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = lshr i32 %2659, 24
  %2661 = uitofp i32 %2660 to float
  %2662 = fmul fast float %2661, 0x3F70101020000000
  %2663 = and i32 %2659, 255
  %2664 = uitofp i32 %2663 to float
  %2665 = fmul fast float %2664, 0x3F70101020000000
  %2666 = lshr i32 %2659, 8
  %2667 = and i32 %2666, 255
  %2668 = uitofp i32 %2667 to float
  %2669 = fmul fast float %2668, 0x3F70101020000000
  %2670 = lshr i32 %2659, 16
  %2671 = and i32 %2670, 255
  %2672 = uitofp i32 %2671 to float
  %2673 = fmul fast float %2672, 0x3F70101020000000
  %2674 = bitcast float %2598 to i32
  %2675 = ashr i32 %2674, 1
  %2676 = sub nsw i32 1597463174, %2675
  %2677 = bitcast i32 %2676 to float
  %2678 = fmul fast float %2598, 5.000000e-01
  %2679 = fmul fast float %2677, %2677
  %2680 = fmul fast float %2679, %2678
  %2681 = fsub fast float 1.500000e+00, %2680
  %2682 = fmul fast float %2677, %2598
  %2683 = fmul fast float %2682, %2681
  %2684 = bitcast float %2599 to i32
  %2685 = ashr i32 %2684, 1
  %2686 = sub nsw i32 1597463174, %2685
  %2687 = bitcast i32 %2686 to float
  %2688 = fmul fast float %2599, 5.000000e-01
  %2689 = fmul fast float %2687, %2687
  %2690 = fmul fast float %2689, %2688
  %2691 = fsub fast float 1.500000e+00, %2690
  %2692 = fmul fast float %2687, %2599
  %2693 = fmul fast float %2692, %2691
  %2694 = bitcast float %2600 to i32
  %2695 = ashr i32 %2694, 1
  %2696 = sub nsw i32 1597463174, %2695
  %2697 = bitcast i32 %2696 to float
  %2698 = fmul fast float %2600, 5.000000e-01
  %2699 = fmul fast float %2697, %2697
  %2700 = fmul fast float %2699, %2698
  %2701 = fsub fast float 1.500000e+00, %2700
  %2702 = fmul fast float %2697, %2600
  %2703 = fmul fast float %2702, %2701
  %2704 = fsub fast float %2683, %2665
  %2705 = fsub fast float %2693, %2669
  %2706 = fsub fast float %2703, %2673
  %2707 = fmul fast float %2704, %2633
  %2708 = fmul fast float %2705, %2635
  %2709 = fmul fast float %2706, %2640
  %2710 = fadd fast float %2707, %2648
  %2711 = fadd fast float %2708, %2652
  %2712 = fadd fast float %2709, %2656
  %2713 = call float @dx.op.unary.f32(i32 7, float %2710)  ; Saturate(value)
  %2714 = call float @dx.op.unary.f32(i32 7, float %2711)  ; Saturate(value)
  %2715 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  %2716 = fmul fast float %2713, %2713
  %2717 = fmul fast float %2714, %2714
  %2718 = fmul fast float %2715, %2715
  %2719 = fsub fast float %2716, %2598
  %2720 = fsub fast float %2717, %2599
  %2721 = fsub fast float %2718, %2600
  %2722 = fmul fast float %2719, %2623
  %2723 = fmul fast float %2720, %2623
  %2724 = fmul fast float %2721, %2623
  %2725 = fadd fast float %2722, %2598
  %2726 = fadd fast float %2723, %2599
  %2727 = fadd fast float %2724, %2600
  %2728 = fadd fast float %2645, %2609
  %2729 = fsub fast float %2728, %2662
  %2730 = call float @dx.op.unary.f32(i32 7, float %2729)  ; Saturate(value)
  %2731 = fsub fast float %2730, %2609
  %2732 = fmul fast float %2731, %2623
  %2733 = fadd fast float %2732, %2609
  br label %2787

; <label>:2734                                    ; preds = %2622
  %2735 = and i32 %2625, 134217728
  %2736 = icmp eq i32 %2735, 0
  br i1 %2736, label %2771, label %2737

; <label>:2737                                    ; preds = %2734
  %2738 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %2739 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %2740 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %2741 = fadd fast float %2738, -5.000000e-01
  %2742 = fadd fast float %2739, -5.000000e-01
  %2743 = fadd fast float %2740, -5.000000e-01
  %2744 = fmul fast float %2741, %2623
  %2745 = fmul fast float %2742, %2623
  %2746 = fmul fast float %2743, %2623
  %2747 = fadd fast float %2744, 5.000000e-01
  %2748 = fadd fast float %2745, 5.000000e-01
  %2749 = fadd fast float %2746, 5.000000e-01
  %2750 = call float @dx.op.unary.f32(i32 24, float %2598)  ; Sqrt(value)
  %2751 = call float @dx.op.unary.f32(i32 24, float %2599)  ; Sqrt(value)
  %2752 = call float @dx.op.unary.f32(i32 24, float %2600)  ; Sqrt(value)
  %2753 = fmul fast float %2747, 2.000000e+00
  %2754 = fsub fast float 1.000000e+00, %2753
  %2755 = fmul fast float %2754, %2750
  %2756 = fadd fast float %2755, %2753
  %2757 = fmul fast float %2756, %2750
  %2758 = fmul fast float %2748, 2.000000e+00
  %2759 = fsub fast float 1.000000e+00, %2758
  %2760 = fmul fast float %2759, %2751
  %2761 = fadd fast float %2760, %2758
  %2762 = fmul fast float %2761, %2751
  %2763 = fmul fast float %2749, 2.000000e+00
  %2764 = fsub fast float 1.000000e+00, %2763
  %2765 = fmul fast float %2764, %2752
  %2766 = fadd fast float %2765, %2763
  %2767 = fmul fast float %2766, %2752
  %2768 = fmul fast float %2757, %2757
  %2769 = fmul fast float %2762, %2762
  %2770 = fmul fast float %2767, %2767
  br label %2787

; <label>:2771                                    ; preds = %2734
  %2772 = fmul fast float %357, %357
  %2773 = fmul fast float %361, %361
  %2774 = fmul fast float %365, %365
  %2775 = fadd fast float %2772, -1.000000e+00
  %2776 = fadd fast float %2773, -1.000000e+00
  %2777 = fadd fast float %2774, -1.000000e+00
  %2778 = fmul fast float %2623, %2775
  %2779 = fmul fast float %2623, %2776
  %2780 = fmul fast float %2623, %2777
  %2781 = fadd fast float %2778, 1.000000e+00
  %2782 = fadd fast float %2779, 1.000000e+00
  %2783 = fadd fast float %2780, 1.000000e+00
  %2784 = fmul fast float %2781, %2598
  %2785 = fmul fast float %2782, %2599
  %2786 = fmul fast float %2783, %2600
  br label %2787

; <label>:2787                                    ; preds = %2771, %2737, %2628, %2584
  %2788 = phi float [ %2733, %2628 ], [ %2609, %2737 ], [ %2609, %2771 ], [ 0x3FA23C0BE0000000, %2584 ]
  %2789 = phi float [ %2725, %2628 ], [ %2768, %2737 ], [ %2784, %2771 ], [ 1.000000e+00, %2584 ]
  %2790 = phi float [ %2726, %2628 ], [ %2769, %2737 ], [ %2785, %2771 ], [ 1.000000e+00, %2584 ]
  %2791 = phi float [ %2727, %2628 ], [ %2770, %2737 ], [ %2786, %2771 ], [ 1.000000e+00, %2584 ]
  %2792 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.i32 %2792, 1
  %2794 = and i32 %2793, 1
  %2795 = icmp ne i32 %2794, 0
  %2796 = add i32 %32, 356
  %2797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2796, i32 undef)  ; BufferLoad(srv,index,wot)
  %2798 = extractvalue %dx.types.ResRet.i32 %2797, 0
  %2799 = and i32 %2798, 32
  %2800 = icmp ne i32 %2799, 0
  %2801 = and i1 %2795, %2800
  %2802 = select i1 %2801, float 1.000000e+00, float %2789
  %2803 = select i1 %2801, float 0x3FD3333340000000, float %2790
  %2804 = select i1 %2801, float 0x3FD3333340000000, float %2791
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = and i32 %2806, 32
  %2808 = icmp eq i32 %2807, 0
  br i1 %2808, label %2881, label %2809

; <label>:2809                                    ; preds = %2787
  %2810 = add i32 %32, 140
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 0
  %2813 = add i32 %32, 404
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = add i32 %2815, 0
  %2817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2816, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2818 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2817, %dx.types.Handle %72, float %2509, float %2510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2819 = extractvalue %dx.types.ResRet.f32 %2818, 0
  %2820 = extractvalue %dx.types.ResRet.f32 %2818, 1
  %2821 = extractvalue %dx.types.ResRet.f32 %2818, 2
  %2822 = extractvalue %dx.types.ResRet.f32 %2818, 3
  %2823 = and i32 %2812, 255
  %2824 = uitofp i32 %2823 to float
  %2825 = lshr i32 %2812, 8
  %2826 = and i32 %2825, 255
  %2827 = uitofp i32 %2826 to float
  %2828 = lshr i32 %2812, 16
  %2829 = and i32 %2828, 255
  %2830 = uitofp i32 %2829 to float
  %2831 = fmul fast float %2830, 0x3F70101000000000
  %2832 = fmul fast float %2819, %2824
  %2833 = fadd fast float %2832, %2827
  %2834 = fmul fast float %2833, 0x3F70101000000000
  %2835 = fadd fast float %2820, -5.000000e-01
  %2836 = fadd fast float %2822, -5.000000e-01
  %2837 = fmul fast float %2835, %2831
  %2838 = fmul fast float %2836, %2831
  %2839 = fadd fast float %2837, 5.000000e-01
  %2840 = fadd fast float %2838, 5.000000e-01
  %2841 = fmul fast float %2839, 2.000000e+00
  %2842 = fadd fast float %2841, -1.000000e+00
  %2843 = fmul fast float %2840, 2.000000e+00
  %2844 = fadd fast float %2843, -1.000000e+00
  %2845 = fadd fast float %2842, %2844
  %2846 = fmul fast float %2845, 5.000000e-01
  %2847 = fsub fast float %2842, %2844
  %2848 = fmul fast float %2847, 5.000000e-01
  %2849 = call float @dx.op.unary.f32(i32 6, float %2846)  ; FAbs(value)
  %2850 = fsub fast float 1.000000e+00, %2849
  %2851 = call float @dx.op.unary.f32(i32 6, float %2848)  ; FAbs(value)
  %2852 = fsub fast float %2850, %2851
  %2853 = call float @dx.op.dot3.f32(i32 55, float %2846, float %2848, float %2852, float %2846, float %2848, float %2852)  ; Dot3(ax,ay,az,bx,by,bz)
  %2854 = call float @dx.op.unary.f32(i32 25, float %2853)  ; Rsqrt(value)
  %2855 = fmul fast float %2846, %2854
  %2856 = fmul fast float %2848, %2854
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = and i32 %2858, 67108864
  %2860 = icmp eq i32 %2859, 0
  br i1 %2860, label %2877, label %2861

; <label>:2861                                    ; preds = %2809
  %2862 = add i32 %32, 328
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2862, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = and i32 %2864, 65535
  %2866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2865)  ; LegacyF16ToF32(value)
  %2867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.i32 %2867, 0
  %2869 = and i32 %2868, 65535
  %2870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2869)  ; LegacyF16ToF32(value)
  %2871 = lshr i32 %2864, 16
  %2872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2871)  ; LegacyF16ToF32(value)
  %2873 = fsub fast float %2834, %2872
  %2874 = fmul fast float %2873, %2866
  %2875 = fadd fast float %2874, %2870
  %2876 = call float @dx.op.unary.f32(i32 7, float %2875)  ; Saturate(value)
  br label %2877

; <label>:2877                                    ; preds = %2861, %2809
  %2878 = phi float [ %2876, %2861 ], [ %2834, %2809 ]
  %2879 = call float @dx.op.dot2.f32(i32 54, float %2855, float %2856, float %2413, float %2414)  ; Dot2(ax,ay,bx,by)
  %2880 = call float @dx.op.dot2.f32(i32 54, float %2855, float %2856, float %2415, float %2416)  ; Dot2(ax,ay,bx,by)
  br label %2881

; <label>:2881                                    ; preds = %2877, %2787
  %2882 = phi float [ %2878, %2877 ], [ 0x3FD6666660000000, %2787 ]
  %2883 = phi float [ %2879, %2877 ], [ 0.000000e+00, %2787 ]
  %2884 = phi float [ %2880, %2877 ], [ 0.000000e+00, %2787 ]
  %2885 = phi float [ %2821, %2877 ], [ 1.000000e+00, %2787 ]
  %2886 = add i32 %32, 208
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2886, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = lshr i32 %2888, 22
  %2890 = shl nuw nsw i32 %2889, 5
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = and i32 %2893, 64
  %2895 = icmp eq i32 %2894, 0
  br i1 %2895, label %2929, label %2896

; <label>:2896                                    ; preds = %2881
  %2897 = add i32 %32, 420
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = add i32 %2899, 0
  %2901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = and i32 %2903, 131072
  %2905 = icmp eq i32 %2904, 0
  %2906 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2901, %dx.types.Handle %72, float %2509, float %2510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2907 = extractvalue %dx.types.ResRet.f32 %2906, 0
  %2908 = extractvalue %dx.types.ResRet.f32 %2906, 1
  %2909 = extractvalue %dx.types.ResRet.f32 %2906, 2
  %2910 = fmul fast float %2907, %345
  %2911 = fmul fast float %2908, %348
  %2912 = fmul fast float %2909, %351
  br i1 %2905, label %2919, label %2913

; <label>:2913                                    ; preds = %2896
  %2914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2915 = extractvalue %dx.types.CBufRet.f32 %2914, 0
  %2916 = fmul fast float %2915, %2910
  %2917 = fmul fast float %2915, %2911
  %2918 = fmul fast float %2915, %2912
  br label %2919

; <label>:2919                                    ; preds = %2913, %2896
  %2920 = phi float [ %2916, %2913 ], [ %2910, %2896 ]
  %2921 = phi float [ %2917, %2913 ], [ %2911, %2896 ]
  %2922 = phi float [ %2918, %2913 ], [ %2912, %2896 ]
  %2923 = fmul fast float %2920, %2891
  %2924 = select i1 %202, float %2923, float %2920
  %2925 = call float @dx.op.dot3.f32(i32 55, float %2924, float %2921, float %2922, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2926 = select i1 %202, float 0.000000e+00, float %2920
  %2927 = select i1 %202, float %2925, float %2921
  %2928 = select i1 %202, float 0.000000e+00, float %2922
  br label %2929

; <label>:2929                                    ; preds = %2919, %2881
  %2930 = phi float [ %2926, %2919 ], [ 0.000000e+00, %2881 ]
  %2931 = phi float [ %2927, %2919 ], [ 0.000000e+00, %2881 ]
  %2932 = phi float [ %2928, %2919 ], [ 0.000000e+00, %2881 ]
  %2933 = add i32 %32, 144
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = and i32 %2935, 255
  %2937 = uitofp i32 %2936 to float
  %2938 = lshr i32 %2935, 8
  %2939 = and i32 %2938, 255
  %2940 = uitofp i32 %2939 to float
  %2941 = call float @dx.op.dot3.f32(i32 55, float %2802, float %2803, float %2804, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2942 = fmul fast float %2940, %2941
  %2943 = fadd fast float %2942, %2937
  %2944 = fmul fast float %2943, 0x3F70101020000000
  %2945 = call float @dx.op.unary.f32(i32 7, float %2944)  ; Saturate(value)
  br i1 %2401, label %2946, label %2954

; <label>:2946                                    ; preds = %2929
  %2947 = fsub fast float 1.000000e+00, %2582
  %2948 = fmul fast float %2947, %2393
  %2949 = fmul fast float %2947, %2394
  %2950 = fmul fast float %2947, %2395
  %2951 = fmul fast float %2947, %2390
  %2952 = fmul fast float %2947, %2391
  %2953 = fmul fast float %2947, %2392
  br label %2954

; <label>:2954                                    ; preds = %2946, %2929
  %2955 = phi float [ %2951, %2946 ], [ %2390, %2929 ]
  %2956 = phi float [ %2952, %2946 ], [ %2391, %2929 ]
  %2957 = phi float [ %2953, %2946 ], [ %2392, %2929 ]
  %2958 = phi float [ %2948, %2946 ], [ %2393, %2929 ]
  %2959 = phi float [ %2949, %2946 ], [ %2394, %2929 ]
  %2960 = phi float [ %2950, %2946 ], [ %2395, %2929 ]
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = and i32 %2962, 3
  %2964 = icmp eq i32 %2963, 3
  br i1 %2964, label %3043, label %2965

; <label>:2965                                    ; preds = %2954
  %2966 = and i32 %2962, 16
  %2967 = icmp ne i32 %2966, 0
  %2968 = select i1 %2967, float %2582, float 0.000000e+00
  %2969 = icmp eq i32 %2963, 0
  br i1 %2969, label %2970, label %2998

; <label>:2970                                    ; preds = %2965
  %2971 = and i32 %2962, 64
  %2972 = icmp ne i32 %2971, 0
  %2973 = select i1 %2972, float %2582, float 0.000000e+00
  %2974 = fsub fast float %2802, %2958
  %2975 = fsub fast float %2803, %2959
  %2976 = fsub fast float %2804, %2960
  %2977 = fmul fast float %2968, %2974
  %2978 = fmul fast float %2968, %2975
  %2979 = fmul fast float %2968, %2976
  %2980 = fadd fast float %2977, %2958
  %2981 = fadd fast float %2978, %2959
  %2982 = fadd fast float %2979, %2960
  %2983 = fsub fast float %2788, %2396
  %2984 = fmul fast float %2968, %2983
  %2985 = fadd fast float %2984, %2396
  %2986 = fsub fast float %2930, %2955
  %2987 = fsub fast float %2931, %2956
  %2988 = fsub fast float %2932, %2957
  %2989 = fmul fast float %2973, %2986
  %2990 = fmul fast float %2973, %2987
  %2991 = fmul fast float %2973, %2988
  %2992 = fadd fast float %2989, %2955
  %2993 = fadd fast float %2990, %2956
  %2994 = fadd fast float %2991, %2957
  %2995 = fsub fast float %2945, %2399
  %2996 = fmul fast float %2968, %2995
  %2997 = fadd fast float %2996, %2399
  br label %3043

; <label>:2998                                    ; preds = %2965
  %2999 = icmp eq i32 %2963, 1
  br i1 %2999, label %3000, label %3013

; <label>:3000                                    ; preds = %2998
  %3001 = fadd fast float %2802, -1.000000e+00
  %3002 = fadd fast float %2803, -1.000000e+00
  %3003 = fadd fast float %2804, -1.000000e+00
  %3004 = fmul fast float %2968, %3001
  %3005 = fmul fast float %2968, %3002
  %3006 = fmul fast float %2968, %3003
  %3007 = fadd fast float %3004, 1.000000e+00
  %3008 = fadd fast float %3005, 1.000000e+00
  %3009 = fadd fast float %3006, 1.000000e+00
  %3010 = fmul fast float %3007, %2958
  %3011 = fmul fast float %3008, %2959
  %3012 = fmul fast float %3009, %2960
  br label %3043

; <label>:3013                                    ; preds = %2998
  %3014 = icmp eq i32 %2963, 2
  br i1 %3014, label %3015, label %3043

; <label>:3015                                    ; preds = %3013
  %3016 = call float @dx.op.unary.f32(i32 24, float %2802)  ; Sqrt(value)
  %3017 = call float @dx.op.unary.f32(i32 24, float %2803)  ; Sqrt(value)
  %3018 = call float @dx.op.unary.f32(i32 24, float %2804)  ; Sqrt(value)
  %3019 = fadd fast float %3016, -5.000000e-01
  %3020 = fadd fast float %3017, -5.000000e-01
  %3021 = fadd fast float %3018, -5.000000e-01
  %3022 = fmul fast float %3019, %2968
  %3023 = fmul fast float %3020, %2968
  %3024 = fmul fast float %3021, %2968
  %3025 = fadd fast float %3022, 5.000000e-01
  %3026 = fadd fast float %3023, 5.000000e-01
  %3027 = fadd fast float %3024, 5.000000e-01
  %3028 = fmul fast float %3025, 2.000000e+00
  %3029 = fsub fast float 1.000000e+00, %3028
  %3030 = fmul fast float %3029, %2958
  %3031 = fadd fast float %3030, %3028
  %3032 = fmul fast float %3031, %2958
  %3033 = fmul fast float %3026, 2.000000e+00
  %3034 = fsub fast float 1.000000e+00, %3033
  %3035 = fmul fast float %3034, %2959
  %3036 = fadd fast float %3035, %3033
  %3037 = fmul fast float %3036, %2959
  %3038 = fmul fast float %3027, 2.000000e+00
  %3039 = fsub fast float 1.000000e+00, %3038
  %3040 = fmul fast float %3039, %2960
  %3041 = fadd fast float %3040, %3038
  %3042 = fmul fast float %3041, %2960
  br label %3043

; <label>:3043                                    ; preds = %3015, %3013, %3000, %2970, %2954
  %3044 = phi float [ %2955, %2954 ], [ %2955, %3015 ], [ %2955, %3013 ], [ %2955, %3000 ], [ %2992, %2970 ]
  %3045 = phi float [ %2956, %2954 ], [ %2956, %3015 ], [ %2956, %3013 ], [ %2956, %3000 ], [ %2993, %2970 ]
  %3046 = phi float [ %2957, %2954 ], [ %2957, %3015 ], [ %2957, %3013 ], [ %2957, %3000 ], [ %2994, %2970 ]
  %3047 = phi float [ %2958, %2954 ], [ %3032, %3015 ], [ %2958, %3013 ], [ %3010, %3000 ], [ %2980, %2970 ]
  %3048 = phi float [ %2959, %2954 ], [ %3037, %3015 ], [ %2959, %3013 ], [ %3011, %3000 ], [ %2981, %2970 ]
  %3049 = phi float [ %2960, %2954 ], [ %3042, %3015 ], [ %2960, %3013 ], [ %3012, %3000 ], [ %2982, %2970 ]
  %3050 = phi float [ %2396, %2954 ], [ %2396, %3015 ], [ %2396, %3013 ], [ %2396, %3000 ], [ %2985, %2970 ]
  %3051 = phi float [ %2399, %2954 ], [ %2399, %3015 ], [ %2399, %3013 ], [ %2399, %3000 ], [ %2997, %2970 ]
  %3052 = and i32 %2962, 12
  %3053 = icmp eq i32 %3052, 12
  br i1 %3053, label %3126, label %3054

; <label>:3054                                    ; preds = %3043
  %3055 = and i32 %2962, 2097184
  %3056 = icmp eq i32 %3055, 2097184
  %3057 = select i1 %3056, float %2582, float 0.000000e+00
  %3058 = and i32 %2962, 4194336
  %3059 = icmp eq i32 %3058, 4194336
  %3060 = select i1 %3059, float %2582, float 0.000000e+00
  %3061 = and i32 %2962, 8388640
  %3062 = icmp eq i32 %3061, 8388640
  %3063 = select i1 %3062, float %2582, float 0.000000e+00
  %3064 = icmp eq i32 %3052, 0
  br i1 %3064, label %3065, label %3078

; <label>:3065                                    ; preds = %3054
  %3066 = fsub fast float %2883, %2388
  %3067 = fsub fast float %2884, %2389
  %3068 = fmul fast float %3057, %3066
  %3069 = fmul fast float %3057, %3067
  %3070 = fadd fast float %3068, %2388
  %3071 = fadd fast float %3069, %2389
  %3072 = fsub fast float %2885, %2398
  %3073 = fmul fast float %3060, %3072
  %3074 = fadd fast float %3073, %2398
  %3075 = fsub fast float %2882, %2397
  %3076 = fmul fast float %3063, %3075
  %3077 = fadd fast float %3076, %2397
  br label %3126

; <label>:3078                                    ; preds = %3054
  %3079 = icmp eq i32 %3052, 4
  br i1 %3079, label %3080, label %3112

; <label>:3080                                    ; preds = %3078
  %3081 = fmul fast float %3057, %2883
  %3082 = fmul fast float %3057, %2884
  %3083 = fadd fast float %3081, %2388
  %3084 = fadd fast float %3082, %2389
  %3085 = call float @dx.op.binary.f32(i32 36, float %2398, float %2885)  ; FMin(a,b)
  %3086 = fsub fast float %3085, %2398
  %3087 = fmul fast float %3086, %3060
  %3088 = fadd fast float %3087, %2398
  %3089 = fadd fast float %2882, %2397
  %3090 = fmul fast float %3089, 0x3FF337FAE0000000
  %3091 = fmul fast float %2397, %2397
  %3092 = fmul fast float %2882, %2882
  %3093 = fadd fast float %3092, %3091
  %3094 = fmul fast float %3093, 0x3FE5152B00000000
  %3095 = fmul fast float %2397, 0xBFCC1F85E0000000
  %3096 = fmul fast float %3095, %2882
  %3097 = fadd fast float %3096, 0xBFE1363700000000
  %3098 = fadd fast float %3097, %3090
  %3099 = fsub fast float %3098, %3094
  %3100 = fmul fast float %3089, 0x3FBA6F0D00000000
  %3101 = fmul fast float %3093, 0x3FD0432880000000
  %3102 = fmul fast float %2397, 0xBFEF110800000000
  %3103 = fmul fast float %3102, %2882
  %3104 = fadd fast float %3103, 1.000000e+00
  %3105 = fsub fast float %3104, %3100
  %3106 = fadd fast float %3105, %3101
  %3107 = fdiv fast float %3099, %3106
  %3108 = call float @dx.op.unary.f32(i32 7, float %3107)  ; Saturate(value)
  %3109 = fsub fast float %3108, %2397
  %3110 = fmul fast float %3109, %3063
  %3111 = fadd fast float %3110, %2397
  br label %3126

; <label>:3112                                    ; preds = %3078
  %3113 = icmp eq i32 %3052, 8
  br i1 %3113, label %3114, label %3126

; <label>:3114                                    ; preds = %3112
  %3115 = fmul fast float %3057, %2883
  %3116 = fmul fast float %3057, %2884
  %3117 = fadd fast float %3115, %2388
  %3118 = fadd fast float %3116, %2389
  %3119 = call float @dx.op.binary.f32(i32 36, float %2398, float %2885)  ; FMin(a,b)
  %3120 = fsub fast float %3119, %2398
  %3121 = fmul fast float %3120, %3060
  %3122 = fadd fast float %3121, %2398
  %3123 = fsub fast float %2882, %2397
  %3124 = fmul fast float %3063, %3123
  %3125 = fadd fast float %3124, %2397
  br label %3126

; <label>:3126                                    ; preds = %3114, %3112, %3080, %3065, %3043, %2581, %2400, %2387
  %3127 = phi float [ %2388, %3043 ], [ %2388, %2581 ], [ %2388, %2387 ], [ %2388, %2400 ], [ %3070, %3065 ], [ %3083, %3080 ], [ %2388, %3112 ], [ %3117, %3114 ]
  %3128 = phi float [ %2389, %3043 ], [ %2389, %2581 ], [ %2389, %2387 ], [ %2389, %2400 ], [ %3071, %3065 ], [ %3084, %3080 ], [ %2389, %3112 ], [ %3118, %3114 ]
  %3129 = phi float [ %3044, %3043 ], [ %2390, %2581 ], [ %2390, %2387 ], [ %2390, %2400 ], [ %3044, %3065 ], [ %3044, %3080 ], [ %3044, %3112 ], [ %3044, %3114 ]
  %3130 = phi float [ %3045, %3043 ], [ %2391, %2581 ], [ %2391, %2387 ], [ %2391, %2400 ], [ %3045, %3065 ], [ %3045, %3080 ], [ %3045, %3112 ], [ %3045, %3114 ]
  %3131 = phi float [ %3046, %3043 ], [ %2392, %2581 ], [ %2392, %2387 ], [ %2392, %2400 ], [ %3046, %3065 ], [ %3046, %3080 ], [ %3046, %3112 ], [ %3046, %3114 ]
  %3132 = phi float [ %3047, %3043 ], [ %2393, %2581 ], [ %2393, %2387 ], [ %2393, %2400 ], [ %3047, %3065 ], [ %3047, %3080 ], [ %3047, %3112 ], [ %3047, %3114 ]
  %3133 = phi float [ %3048, %3043 ], [ %2394, %2581 ], [ %2394, %2387 ], [ %2394, %2400 ], [ %3048, %3065 ], [ %3048, %3080 ], [ %3048, %3112 ], [ %3048, %3114 ]
  %3134 = phi float [ %3049, %3043 ], [ %2395, %2581 ], [ %2395, %2387 ], [ %2395, %2400 ], [ %3049, %3065 ], [ %3049, %3080 ], [ %3049, %3112 ], [ %3049, %3114 ]
  %3135 = phi float [ %3050, %3043 ], [ %2396, %2581 ], [ %2396, %2387 ], [ %2396, %2400 ], [ %3050, %3065 ], [ %3050, %3080 ], [ %3050, %3112 ], [ %3050, %3114 ]
  %3136 = phi float [ %2397, %3043 ], [ %2397, %2581 ], [ %2397, %2387 ], [ %2397, %2400 ], [ %3077, %3065 ], [ %3111, %3080 ], [ %2397, %3112 ], [ %3125, %3114 ]
  %3137 = phi float [ %2398, %3043 ], [ %2398, %2581 ], [ %2398, %2387 ], [ %2398, %2400 ], [ %3074, %3065 ], [ %3088, %3080 ], [ %2398, %3112 ], [ %3122, %3114 ]
  %3138 = phi float [ %3051, %3043 ], [ %2399, %2581 ], [ %2399, %2387 ], [ %2399, %2400 ], [ %3051, %3065 ], [ %3051, %3080 ], [ %3051, %3112 ], [ %3051, %3114 ]
  %3139 = add i32 %32, 360
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = bitcast i32 %3141 to float
  %3143 = fcmp fast oge float %3142, 0.000000e+00
  %3144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3145 = extractvalue %dx.types.CBufRet.f32 %3144, 0
  %3146 = select i1 %3143, float %3142, float %3145
  %3147 = call float @dx.op.dot2.f32(i32 54, float %3127, float %3128, float %3127, float %3128)  ; Dot2(ax,ay,bx,by)
  %3148 = fmul fast float %3147, 0x3FE3333340000000
  %3149 = fsub fast float 1.000000e+00, %3148
  %3150 = call float @dx.op.dot3.f32(i32 55, float %3127, float %3128, float %3149, float %3127, float %3128, float %3149)  ; Dot3(ax,ay,az,bx,by,bz)
  %3151 = call float @dx.op.unary.f32(i32 25, float %3150)  ; Rsqrt(value)
  %3152 = fmul fast float %3151, %3127
  %3153 = fmul fast float %3151, %3128
  %3154 = fmul fast float %3149, %3151
  %3155 = fmul fast float %3154, %83
  %3156 = fmul fast float %3154, %84
  %3157 = fmul fast float %3154, %85
  %3158 = fmul fast float %3152, %57
  %3159 = fmul fast float %3152, %58
  %3160 = fmul fast float %3152, %59
  %3161 = fadd fast float %3155, %3158
  %3162 = fadd fast float %3156, %3159
  %3163 = fadd fast float %3157, %3160
  %3164 = fmul fast float %95, %3153
  %3165 = fmul fast float %96, %3153
  %3166 = fmul fast float %97, %3153
  %3167 = fadd fast float %3161, %3164
  %3168 = fadd fast float %3162, %3165
  %3169 = fadd fast float %3163, %3166
  %3170 = call float @dx.op.dot3.f32(i32 55, float %3167, float %3168, float %3169, float %3167, float %3168, float %3169)  ; Dot3(ax,ay,az,bx,by,bz)
  %3171 = call float @dx.op.unary.f32(i32 25, float %3170)  ; Rsqrt(value)
  %3172 = fmul fast float %3167, %3171
  %3173 = fmul fast float %3168, %3171
  %3174 = fmul fast float %3169, %3171
  %3175 = icmp eq i32 %33, 65535
  br i1 %3175, label %3690, label %3176

; <label>:3176                                    ; preds = %3126
  %3177 = call float @dx.op.unary.f32(i32 83, float %34)  ; DerivCoarseX(value)
  %3178 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %3179 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3180 = call float @dx.op.unary.f32(i32 84, float %34)  ; DerivCoarseY(value)
  %3181 = call float @dx.op.unary.f32(i32 84, float %35)  ; DerivCoarseY(value)
  %3182 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3183 = fadd fast float %3177, %34
  %3184 = fadd fast float %3178, %35
  %3185 = fadd fast float %3179, %36
  %3186 = fadd fast float %3180, %34
  %3187 = fadd fast float %3181, %35
  %3188 = fadd fast float %3182, %36
  %3189 = mul i32 %33, 48
  %3190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.f32 %3190, 0
  %3192 = extractvalue %dx.types.ResRet.f32 %3190, 1
  %3193 = extractvalue %dx.types.ResRet.f32 %3190, 2
  %3194 = add i32 %3189, 16
  %3195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.f32 %3195, 0
  %3197 = extractvalue %dx.types.ResRet.f32 %3195, 1
  %3198 = extractvalue %dx.types.ResRet.f32 %3195, 2
  %3199 = add i32 %3189, 32
  %3200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.ResRet.f32 %3200, 1
  %3203 = extractvalue %dx.types.ResRet.f32 %3200, 2
  %3204 = extractvalue %dx.types.ResRet.f32 %3200, 3
  %3205 = bitcast float %3204 to i32
  %3206 = fmul fast float %3191, %34
  %3207 = fmul fast float %3192, %35
  %3208 = fmul fast float %3193, %36
  %3209 = fsub fast float %3206, %3196
  %3210 = fsub fast float %3207, %3197
  %3211 = fsub fast float %3208, %3198
  %3212 = call float @dx.op.unary.f32(i32 7, float %3209)  ; Saturate(value)
  %3213 = call float @dx.op.unary.f32(i32 7, float %3210)  ; Saturate(value)
  %3214 = call float @dx.op.unary.f32(i32 7, float %3211)  ; Saturate(value)
  %3215 = fmul fast float %3212, %3201
  %3216 = fmul fast float %3213, %3202
  %3217 = fmul fast float %3214, %3203
  %3218 = fadd fast float %3201, -1.000000e+00
  %3219 = fadd fast float %3202, -1.000000e+00
  %3220 = fadd fast float %3203, -1.000000e+00
  %3221 = call float @dx.op.unary.f32(i32 27, float %3215)  ; Round_ni(value)
  %3222 = call float @dx.op.unary.f32(i32 27, float %3216)  ; Round_ni(value)
  %3223 = call float @dx.op.unary.f32(i32 27, float %3217)  ; Round_ni(value)
  %3224 = call float @dx.op.binary.f32(i32 36, float %3221, float %3218)  ; FMin(a,b)
  %3225 = call float @dx.op.binary.f32(i32 36, float %3222, float %3219)  ; FMin(a,b)
  %3226 = call float @dx.op.binary.f32(i32 36, float %3223, float %3220)  ; FMin(a,b)
  %3227 = fmul fast float %3226, %3202
  %3228 = fadd fast float %3227, %3225
  %3229 = fmul fast float %3228, %3201
  %3230 = fadd fast float %3229, %3224
  %3231 = fptosi float %3230 to i32
  %3232 = add nsw i32 %3231, %3205
  %3233 = shl nsw i32 %3232, 2
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = lshr i32 %3235, 16
  %3237 = icmp eq i32 %3236, 0
  br i1 %3237, label %3659, label %3238

; <label>:3238                                    ; preds = %3176
  br label %3239

; <label>:3239                                    ; preds = %3360, %3238
  %3240 = phi i32 [ %3262, %3360 ], [ %3236, %3238 ]
  %3241 = phi float [ %3361, %3360 ], [ 0.000000e+00, %3238 ]
  %3242 = phi float [ %3362, %3360 ], [ %3146, %3238 ]
  %3243 = phi float [ %3363, %3360 ], [ %3138, %3238 ]
  %3244 = phi float [ %3364, %3360 ], [ 0.000000e+00, %3238 ]
  %3245 = phi float [ %3365, %3360 ], [ 0.000000e+00, %3238 ]
  %3246 = phi float [ %3366, %3360 ], [ %3129, %3238 ]
  %3247 = phi float [ %3367, %3360 ], [ %3130, %3238 ]
  %3248 = phi float [ %3368, %3360 ], [ %3131, %3238 ]
  %3249 = phi float [ %3369, %3360 ], [ %3172, %3238 ]
  %3250 = phi float [ %3370, %3360 ], [ %3173, %3238 ]
  %3251 = phi float [ %3371, %3360 ], [ %3174, %3238 ]
  %3252 = phi float [ %3372, %3360 ], [ %3137, %3238 ]
  %3253 = phi float [ %3373, %3360 ], [ %3136, %3238 ]
  %3254 = phi float [ %3374, %3360 ], [ 0.000000e+00, %3238 ]
  %3255 = phi float [ %3375, %3360 ], [ %3135, %3238 ]
  %3256 = phi float [ %3376, %3360 ], [ %3132, %3238 ]
  %3257 = phi float [ %3377, %3360 ], [ %3133, %3238 ]
  %3258 = phi float [ %3378, %3360 ], [ %3134, %3238 ]
  %3259 = shl nuw nsw i32 %3240, 2
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = lshr i32 %3261, 16
  %3263 = shl i32 %3261, 8
  %3264 = and i32 %3263, 16776960
  %3265 = or i32 %3264, 48
  %3266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.f32 %3266, 0
  %3268 = extractvalue %dx.types.ResRet.f32 %3266, 1
  %3269 = extractvalue %dx.types.ResRet.f32 %3266, 2
  %3270 = or i32 %3264, 64
  %3271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3270, i32 undef)  ; BufferLoad(srv,index,wot)
  %3272 = extractvalue %dx.types.ResRet.i32 %3271, 0
  %3273 = extractvalue %dx.types.ResRet.i32 %3271, 1
  %3274 = or i32 %3264, 80
  %3275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3274, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.f32 %3275, 2
  %3277 = extractvalue %dx.types.ResRet.f32 %3275, 3
  %3278 = or i32 %3264, 96
  %3279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3278, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.f32 %3279, 0
  %3281 = extractvalue %dx.types.ResRet.f32 %3279, 1
  %3282 = extractvalue %dx.types.ResRet.f32 %3279, 2
  %3283 = extractvalue %dx.types.ResRet.f32 %3279, 3
  %3284 = or i32 %3264, 112
  %3285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3284, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.f32 %3285, 2
  %3287 = or i32 %3264, 128
  %3288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.f32 %3288, 0
  %3290 = extractvalue %dx.types.ResRet.f32 %3288, 1
  %3291 = extractvalue %dx.types.ResRet.f32 %3288, 2
  %3292 = extractvalue %dx.types.ResRet.f32 %3288, 3
  %3293 = or i32 %3264, 144
  %3294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.f32 %3294, 0
  %3296 = extractvalue %dx.types.ResRet.f32 %3294, 1
  %3297 = extractvalue %dx.types.ResRet.f32 %3294, 2
  %3298 = extractvalue %dx.types.ResRet.f32 %3294, 3
  %3299 = or i32 %3264, 160
  %3300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.f32 %3300, 0
  %3302 = extractvalue %dx.types.ResRet.f32 %3300, 1
  %3303 = extractvalue %dx.types.ResRet.f32 %3300, 2
  %3304 = extractvalue %dx.types.ResRet.f32 %3300, 3
  %3305 = or i32 %3264, 192
  %3306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.i32 %3306, 0
  %3308 = or i32 %3264, 208
  %3309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.f32 %3309, 0
  %3311 = or i32 %3264, 248
  %3312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 0
  %3314 = extractvalue %dx.types.ResRet.f32 %3312, 1
  %3315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3264, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.f32 %3315, 0
  %3317 = extractvalue %dx.types.ResRet.f32 %3315, 1
  %3318 = extractvalue %dx.types.ResRet.f32 %3315, 2
  %3319 = extractvalue %dx.types.ResRet.f32 %3315, 3
  %3320 = call float @dx.op.dot4.f32(i32 56, float %3316, float %3317, float %3318, float %3319, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3321 = or i32 %3264, 16
  %3322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3321, i32 undef)  ; BufferLoad(srv,index,wot)
  %3323 = extractvalue %dx.types.ResRet.f32 %3322, 0
  %3324 = extractvalue %dx.types.ResRet.f32 %3322, 1
  %3325 = extractvalue %dx.types.ResRet.f32 %3322, 2
  %3326 = extractvalue %dx.types.ResRet.f32 %3322, 3
  %3327 = call float @dx.op.dot4.f32(i32 56, float %3323, float %3324, float %3325, float %3326, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3328 = or i32 %3264, 32
  %3329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.f32 %3329, 0
  %3331 = extractvalue %dx.types.ResRet.f32 %3329, 1
  %3332 = extractvalue %dx.types.ResRet.f32 %3329, 2
  %3333 = extractvalue %dx.types.ResRet.f32 %3329, 3
  %3334 = call float @dx.op.dot4.f32(i32 56, float %3330, float %3331, float %3332, float %3333, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3335 = call float @dx.op.unary.f32(i32 27, float %3320)  ; Round_ni(value)
  %3336 = call float @dx.op.unary.f32(i32 6, float %3335)  ; FAbs(value)
  %3337 = call float @dx.op.unary.f32(i32 27, float %3327)  ; Round_ni(value)
  %3338 = call float @dx.op.unary.f32(i32 6, float %3337)  ; FAbs(value)
  %3339 = call float @dx.op.unary.f32(i32 6, float %3334)  ; FAbs(value)
  %3340 = call float @dx.op.unary.f32(i32 27, float %3339)  ; Round_ni(value)
  %3341 = fadd fast float %3338, %3336
  %3342 = fadd fast float %3341, %3340
  %3343 = fcmp fast oeq float %3342, 0.000000e+00
  %3344 = call float @dx.op.dot4.f32(i32 56, float %3316, float %3317, float %3318, float %3319, float %3183, float %3184, float %3185, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3345 = call float @dx.op.dot4.f32(i32 56, float %3323, float %3324, float %3325, float %3326, float %3183, float %3184, float %3185, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3346 = call float @dx.op.dot4.f32(i32 56, float %3316, float %3317, float %3318, float %3319, float %3186, float %3187, float %3188, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3347 = call float @dx.op.dot4.f32(i32 56, float %3323, float %3324, float %3325, float %3326, float %3186, float %3187, float %3188, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3348 = fsub fast float %3344, %3320
  %3349 = fsub fast float %3346, %3320
  %3350 = fsub fast float %3345, %3327
  %3351 = fsub fast float %3347, %3327
  %3352 = call float @dx.op.dot3.f32(i32 55, float %3267, float %3268, float %3269, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %3353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3354 = extractvalue %dx.types.CBufRet.f32 %3353, 2
  %3355 = fadd fast float %3354, %3352
  %3356 = call float @dx.op.unary.f32(i32 7, float %3355)  ; Saturate(value)
  %3357 = extractvalue %dx.types.CBufRet.f32 %3353, 0
  %3358 = fcmp fast ogt float %3356, %3357
  %3359 = and i1 %3343, %3358
  br i1 %3359, label %3380, label %3360

; <label>:3360                                    ; preds = %3645, %3463, %3380, %3239
  %3361 = phi float [ %3241, %3380 ], [ %3466, %3463 ], [ %3466, %3645 ], [ %3241, %3239 ]
  %3362 = phi float [ %3242, %3380 ], [ %3242, %3463 ], [ %3620, %3645 ], [ %3242, %3239 ]
  %3363 = phi float [ %3243, %3380 ], [ %3243, %3463 ], [ %3618, %3645 ], [ %3243, %3239 ]
  %3364 = phi float [ %3244, %3380 ], [ %3244, %3463 ], [ %3590, %3645 ], [ %3244, %3239 ]
  %3365 = phi float [ %3245, %3380 ], [ %3245, %3463 ], [ %3588, %3645 ], [ %3245, %3239 ]
  %3366 = phi float [ %3246, %3380 ], [ %3246, %3463 ], [ %3655, %3645 ], [ %3246, %3239 ]
  %3367 = phi float [ %3247, %3380 ], [ %3247, %3463 ], [ %3656, %3645 ], [ %3247, %3239 ]
  %3368 = phi float [ %3248, %3380 ], [ %3248, %3463 ], [ %3657, %3645 ], [ %3248, %3239 ]
  %3369 = phi float [ %3249, %3380 ], [ %3249, %3463 ], [ %3569, %3645 ], [ %3249, %3239 ]
  %3370 = phi float [ %3250, %3380 ], [ %3250, %3463 ], [ %3570, %3645 ], [ %3250, %3239 ]
  %3371 = phi float [ %3251, %3380 ], [ %3251, %3463 ], [ %3571, %3645 ], [ %3251, %3239 ]
  %3372 = phi float [ %3252, %3380 ], [ %3252, %3463 ], [ %3598, %3645 ], [ %3252, %3239 ]
  %3373 = phi float [ %3253, %3380 ], [ %3253, %3463 ], [ %3595, %3645 ], [ %3253, %3239 ]
  %3374 = phi float [ %3254, %3380 ], [ %3254, %3463 ], [ %3592, %3645 ], [ %3254, %3239 ]
  %3375 = phi float [ %3255, %3380 ], [ %3255, %3463 ], [ %3586, %3645 ], [ %3255, %3239 ]
  %3376 = phi float [ %3256, %3380 ], [ %3256, %3463 ], [ %3581, %3645 ], [ %3256, %3239 ]
  %3377 = phi float [ %3257, %3380 ], [ %3257, %3463 ], [ %3582, %3645 ], [ %3257, %3239 ]
  %3378 = phi float [ %3258, %3380 ], [ %3258, %3463 ], [ %3583, %3645 ], [ %3258, %3239 ]
  %3379 = icmp eq i32 %3262, 0
  br i1 %3379, label %3658, label %3239

; <label>:3380                                    ; preds = %3239
  %3381 = extractvalue %dx.types.ResRet.f32 %3266, 3
  %3382 = extractvalue %dx.types.ResRet.f32 %3285, 3
  %3383 = extractvalue %dx.types.ResRet.f32 %3285, 1
  %3384 = extractvalue %dx.types.ResRet.f32 %3285, 0
  %3385 = extractvalue %dx.types.ResRet.f32 %3275, 1
  %3386 = extractvalue %dx.types.ResRet.f32 %3275, 0
  %3387 = extractvalue %dx.types.ResRet.i32 %3271, 3
  %3388 = extractvalue %dx.types.ResRet.i32 %3271, 2
  %3389 = bitcast float %3381 to i32
  %3390 = add i32 %3387, 0
  %3391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3390, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3393 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3391, %dx.types.Handle %3392, float %3320, float %3327, float undef, float undef, i32 0, i32 0, i32 undef, float %3348, float %3350, float undef, float %3349, float %3351, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3394 = extractvalue %dx.types.ResRet.f32 %3393, 0
  %3395 = fmul fast float %3394, %3386
  %3396 = fadd fast float %3395, %3385
  %3397 = call float @dx.op.unary.f32(i32 7, float %3396)  ; Saturate(value)
  %3398 = fmul fast float %3320, %3280
  %3399 = call float @dx.op.tertiary.f32(i32 46, float %3281, float %3327, float %3398)  ; FMad(a,b,c)
  %3400 = fadd fast float %3399, %3384
  %3401 = fmul fast float %3320, %3282
  %3402 = call float @dx.op.tertiary.f32(i32 46, float %3283, float %3327, float %3401)  ; FMad(a,b,c)
  %3403 = fadd fast float %3402, %3383
  %3404 = fmul fast float %3348, %3280
  %3405 = call float @dx.op.tertiary.f32(i32 46, float %3281, float %3350, float %3404)  ; FMad(a,b,c)
  %3406 = fmul fast float %3348, %3282
  %3407 = call float @dx.op.tertiary.f32(i32 46, float %3283, float %3350, float %3406)  ; FMad(a,b,c)
  %3408 = fmul fast float %3349, %3280
  %3409 = call float @dx.op.tertiary.f32(i32 46, float %3281, float %3351, float %3408)  ; FMad(a,b,c)
  %3410 = fmul fast float %3349, %3282
  %3411 = call float @dx.op.tertiary.f32(i32 46, float %3283, float %3351, float %3410)  ; FMad(a,b,c)
  %3412 = add i32 %3388, 0
  %3413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3412, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3414 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3413, %dx.types.Handle %3392, float %3400, float %3403, float undef, float undef, i32 0, i32 0, i32 undef, float %3405, float %3407, float undef, float %3409, float %3411, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3415 = extractvalue %dx.types.ResRet.f32 %3414, 0
  %3416 = and i32 %3389, 1024
  %3417 = icmp ne i32 %3416, 0
  %3418 = fcmp fast ogt float %3415, 0x3FE0101020000000
  %3419 = uitofp i1 %3418 to float
  %3420 = select i1 %3417, float %3419, float %3415
  %3421 = and i32 %3389, 8192
  %3422 = icmp ne i32 %3421, 0
  %3423 = select i1 %3422, float %3382, float 1.000000e+00
  %3424 = fmul fast float %3320, 2.000000e+00
  %3425 = fadd fast float %3424, -1.000000e+00
  %3426 = call float @dx.op.unary.f32(i32 6, float %3425)  ; FAbs(value)
  %3427 = fmul fast float %3426, %3313
  %3428 = fsub fast float %3427, %3313
  %3429 = call float @dx.op.unary.f32(i32 7, float %3428)  ; Saturate(value)
  %3430 = fmul fast float %3327, 2.000000e+00
  %3431 = fadd fast float %3430, -1.000000e+00
  %3432 = call float @dx.op.unary.f32(i32 6, float %3431)  ; FAbs(value)
  %3433 = fmul fast float %3432, %3314
  %3434 = fsub fast float %3433, %3314
  %3435 = call float @dx.op.unary.f32(i32 7, float %3434)  ; Saturate(value)
  %3436 = fmul fast float %3339, %3276
  %3437 = fsub fast float %3436, %3276
  %3438 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  %3439 = fmul fast float %3397, %3423
  %3440 = fmul fast float %3439, %3394
  %3441 = fmul fast float %3440, %3429
  %3442 = fmul fast float %3441, %3420
  %3443 = fmul fast float %3442, %3435
  %3444 = fmul fast float %3443, %3438
  %3445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3446 = extractvalue %dx.types.CBufRet.f32 %3445, 1
  %3447 = extractvalue %dx.types.CBufRet.f32 %3445, 0
  %3448 = fsub fast float %3356, %3447
  %3449 = fmul fast float %3448, %3446
  %3450 = call float @dx.op.unary.f32(i32 7, float %3449)  ; Saturate(value)
  %3451 = fmul fast float %3444, %3277
  %3452 = fadd fast float %3444, %3277
  %3453 = fmul fast float %3452, %3286
  %3454 = fsub fast float %3453, %3286
  %3455 = call float @dx.op.unary.f32(i32 7, float %3454)  ; Saturate(value)
  %3456 = and i32 %3389, 128
  %3457 = icmp ne i32 %3456, 0
  %3458 = select i1 %3457, float %3455, float %3451
  %3459 = fmul fast float %3458, %3450
  %3460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3461 = extractvalue %dx.types.CBufRet.f32 %3460, 0
  %3462 = fcmp fast ugt float %3459, %3461
  br i1 %3462, label %3463, label %3360

; <label>:3463                                    ; preds = %3380
  %3464 = select i1 %3422, float %3459, float 0.000000e+00
  %3465 = fadd fast float %3464, %3241
  %3466 = call float @dx.op.unary.f32(i32 7, float %3465)  ; Saturate(value)
  br i1 %3422, label %3360, label %3467

; <label>:3467                                    ; preds = %3463
  %3468 = and i32 %3389, 4
  %3469 = and i32 %3389, 8
  %3470 = add i32 %3272, 0
  %3471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3470, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3473 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3471, %dx.types.Handle %3472, float %3400, float %3403, float undef, float undef, i32 0, i32 0, i32 undef, float %3405, float %3407, float undef, float %3409, float %3411, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3474 = extractvalue %dx.types.ResRet.f32 %3473, 0
  %3475 = extractvalue %dx.types.ResRet.f32 %3473, 1
  %3476 = extractvalue %dx.types.ResRet.f32 %3473, 2
  %3477 = extractvalue %dx.types.ResRet.f32 %3473, 3
  %3478 = bitcast float %3298 to i32
  %3479 = and i32 %3478, 255
  %3480 = uitofp i32 %3479 to float
  %3481 = lshr i32 %3478, 8
  %3482 = and i32 %3481, 255
  %3483 = uitofp i32 %3482 to float
  %3484 = fmul fast float %3477, %3480
  %3485 = fadd fast float %3484, %3483
  %3486 = fmul fast float %3485, 0x3F70101000000000
  %3487 = add i32 %3273, 0
  %3488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3487, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3489 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3488, %dx.types.Handle %3472, float %3400, float %3403, float undef, float undef, i32 0, i32 0, i32 undef, float %3405, float %3407, float undef, float %3409, float %3411, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3491 = extractvalue %dx.types.ResRet.f32 %3489, 1
  %3492 = extractvalue %dx.types.ResRet.f32 %3489, 2
  %3493 = extractvalue %dx.types.ResRet.f32 %3489, 3
  %3494 = bitcast float %3292 to i32
  %3495 = and i32 %3494, 255
  %3496 = uitofp i32 %3495 to float
  %3497 = lshr i32 %3494, 8
  %3498 = and i32 %3497, 255
  %3499 = uitofp i32 %3498 to float
  %3500 = lshr i32 %3494, 16
  %3501 = and i32 %3500, 255
  %3502 = uitofp i32 %3501 to float
  %3503 = fmul fast float %3502, 0x3F70101000000000
  %3504 = fmul fast float %3490, %3496
  %3505 = fadd fast float %3504, %3499
  %3506 = fmul fast float %3505, 0x3F70101000000000
  %3507 = fadd fast float %3491, -5.000000e-01
  %3508 = fadd fast float %3493, -5.000000e-01
  %3509 = fmul fast float %3507, %3503
  %3510 = fmul fast float %3508, %3503
  %3511 = fadd fast float %3509, 5.000000e-01
  %3512 = fadd fast float %3510, 5.000000e-01
  %3513 = fmul fast float %3474, %3301
  %3514 = fmul fast float %3475, %3302
  %3515 = fmul fast float %3476, %3303
  %3516 = fmul fast float %3511, 2.000000e+00
  %3517 = fadd fast float %3516, -1.000000e+00
  %3518 = fmul fast float %3512, 2.000000e+00
  %3519 = fadd fast float %3518, -1.000000e+00
  %3520 = fadd fast float %3517, %3519
  %3521 = fmul fast float %3520, 5.000000e-01
  %3522 = fsub fast float %3517, %3519
  %3523 = fmul fast float %3522, 5.000000e-01
  %3524 = call float @dx.op.unary.f32(i32 6, float %3521)  ; FAbs(value)
  %3525 = fsub fast float 1.000000e+00, %3524
  %3526 = call float @dx.op.unary.f32(i32 6, float %3523)  ; FAbs(value)
  %3527 = fsub fast float %3525, %3526
  %3528 = call float @dx.op.dot3.f32(i32 55, float %3521, float %3523, float %3527, float %3521, float %3523, float %3527)  ; Dot3(ax,ay,az,bx,by,bz)
  %3529 = call float @dx.op.unary.f32(i32 25, float %3528)  ; Rsqrt(value)
  %3530 = fmul fast float %3521, %3529
  %3531 = fmul fast float %3523, %3529
  %3532 = fmul fast float %3529, %3527
  %3533 = fmul fast float %3532, %3267
  %3534 = fmul fast float %3532, %3268
  %3535 = fmul fast float %3532, %3269
  %3536 = fmul fast float %3530, %3289
  %3537 = fmul fast float %3530, %3290
  %3538 = fmul fast float %3530, %3291
  %3539 = fadd fast float %3536, %3533
  %3540 = fadd fast float %3537, %3534
  %3541 = fadd fast float %3538, %3535
  %3542 = fmul fast float %3531, %3295
  %3543 = fmul fast float %3531, %3296
  %3544 = fmul fast float %3531, %3297
  %3545 = fadd fast float %3539, %3542
  %3546 = fadd fast float %3540, %3543
  %3547 = fadd fast float %3541, %3544
  %3548 = call float @dx.op.dot3.f32(i32 55, float %3545, float %3546, float %3547, float %3545, float %3546, float %3547)  ; Dot3(ax,ay,az,bx,by,bz)
  %3549 = call float @dx.op.unary.f32(i32 25, float %3548)  ; Rsqrt(value)
  %3550 = fmul fast float %3545, %3549
  %3551 = fmul fast float %3546, %3549
  %3552 = fmul fast float %3547, %3549
  %3553 = icmp ne i32 %3469, 0
  %3554 = select i1 %3553, float 1.000000e+00, float 0.000000e+00
  %3555 = fmul fast float %3459, %3554
  %3556 = and i32 %3389, 1
  %3557 = icmp eq i32 %3556, 0
  br i1 %3557, label %3558, label %3562

; <label>:3558                                    ; preds = %3467
  %3559 = fsub fast float %3550, %3249
  %3560 = fsub fast float %3551, %3250
  %3561 = fsub fast float %3552, %3251
  br label %3562

; <label>:3562                                    ; preds = %3558, %3467
  %3563 = phi float [ %3559, %3558 ], [ %3550, %3467 ]
  %3564 = phi float [ %3560, %3558 ], [ %3551, %3467 ]
  %3565 = phi float [ %3561, %3558 ], [ %3552, %3467 ]
  %3566 = fmul float %3565, %3555
  %3567 = fmul float %3564, %3555
  %3568 = fmul float %3563, %3555
  %3569 = fadd fast float %3568, %3249
  %3570 = fadd fast float %3567, %3250
  %3571 = fadd fast float %3566, %3251
  %3572 = icmp ne i32 %3468, 0
  %3573 = select i1 %3572, float 1.000000e+00, float 0.000000e+00
  %3574 = fmul fast float %3459, %3573
  %3575 = fsub fast float %3513, %3256
  %3576 = fsub fast float %3514, %3257
  %3577 = fsub fast float %3515, %3258
  %3578 = fmul fast float %3575, %3574
  %3579 = fmul fast float %3576, %3574
  %3580 = fmul fast float %3577, %3574
  %3581 = fadd fast float %3578, %3256
  %3582 = fadd fast float %3579, %3257
  %3583 = fadd fast float %3580, %3258
  %3584 = fsub fast float %3486, %3255
  %3585 = fmul fast float %3584, %3574
  %3586 = fadd fast float %3585, %3255
  %3587 = fmul fast float %3574, %3245
  %3588 = fsub fast float %3245, %3587
  %3589 = fmul fast float %3574, %3244
  %3590 = fsub fast float %3244, %3589
  %3591 = fadd fast float %3459, %3254
  %3592 = call float @dx.op.unary.f32(i32 7, float %3591)  ; Saturate(value)
  %3593 = fsub fast float %3506, %3253
  %3594 = fmul fast float %3593, %3555
  %3595 = fadd fast float %3594, %3253
  %3596 = fsub fast float %3492, %3252
  %3597 = fmul fast float %3596, %3555
  %3598 = fadd fast float %3597, %3252
  %3599 = call float @dx.op.dot3.f32(i32 55, float %3513, float %3514, float %3515, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3601 = extractvalue %dx.types.CBufRet.f32 %3600, 0
  %3602 = extractvalue %dx.types.CBufRet.f32 %3600, 1
  %3603 = fmul fast float %3602, %3599
  %3604 = fadd fast float %3603, %3601
  %3605 = call float @dx.op.unary.f32(i32 7, float %3604)  ; Saturate(value)
  %3606 = bitcast float %3304 to i32
  %3607 = and i32 %3606, 65535
  %3608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3607)  ; LegacyF16ToF32(value)
  %3609 = lshr i32 %3606, 16
  %3610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3609)  ; LegacyF16ToF32(value)
  %3611 = fcmp fast oge float %3608, 0.000000e+00
  %3612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3613 = extractvalue %dx.types.CBufRet.f32 %3612, 0
  %3614 = select i1 %3611, float %3608, float %3613
  %3615 = fadd fast float %3614, %3610
  %3616 = fsub fast float %3605, %3243
  %3617 = fmul fast float %3616, %3459
  %3618 = fadd fast float %3617, %3243
  %3619 = fmul fast float %3615, %3459
  %3620 = call float @dx.op.binary.f32(i32 35, float %3242, float %3619)  ; FMax(a,b)
  %3621 = and i32 %3389, 16
  %3622 = icmp eq i32 %3621, 0
  br i1 %3622, label %3645, label %3623

; <label>:3623                                    ; preds = %3562
  %3624 = bitcast float %3310 to i32
  %3625 = add i32 %3307, 0
  %3626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3625, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3627 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3626, %dx.types.Handle %3472, float %3400, float %3403, float undef, float undef, i32 0, i32 0, i32 undef, float %3405, float %3407, float undef, float %3409, float %3411, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = extractvalue %dx.types.ResRet.f32 %3627, 1
  %3630 = extractvalue %dx.types.ResRet.f32 %3627, 2
  %3631 = and i32 %3624, 65535
  %3632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3631)  ; LegacyF16ToF32(value)
  %3633 = fmul fast float %3628, %3301
  %3634 = fmul fast float %3629, %3302
  %3635 = fmul fast float %3630, %3303
  %3636 = and i32 %3389, 16384
  %3637 = icmp ne i32 %3636, 0
  %3638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3639 = extractvalue %dx.types.CBufRet.f32 %3638, 0
  %3640 = select i1 %3637, float %3639, float 1.000000e+00
  %3641 = fmul fast float %3640, %3632
  %3642 = fmul fast float %3633, %3641
  %3643 = fmul fast float %3634, %3641
  %3644 = fmul fast float %3635, %3641
  br label %3645

; <label>:3645                                    ; preds = %3623, %3562
  %3646 = phi float [ %3642, %3623 ], [ 0.000000e+00, %3562 ]
  %3647 = phi float [ %3643, %3623 ], [ 0.000000e+00, %3562 ]
  %3648 = phi float [ %3644, %3623 ], [ 0.000000e+00, %3562 ]
  %3649 = fsub fast float %3646, %3246
  %3650 = fsub fast float %3647, %3247
  %3651 = fsub fast float %3648, %3248
  %3652 = fmul fast float %3649, %3459
  %3653 = fmul fast float %3650, %3459
  %3654 = fmul fast float %3651, %3459
  %3655 = fadd fast float %3652, %3246
  %3656 = fadd fast float %3653, %3247
  %3657 = fadd fast float %3654, %3248
  br label %3360

; <label>:3658                                    ; preds = %3360
  br label %3659

; <label>:3659                                    ; preds = %3658, %3176
  %3660 = phi float [ 0.000000e+00, %3176 ], [ %3361, %3658 ]
  %3661 = phi float [ %3146, %3176 ], [ %3362, %3658 ]
  %3662 = phi float [ %3138, %3176 ], [ %3363, %3658 ]
  %3663 = phi float [ 0.000000e+00, %3176 ], [ %3364, %3658 ]
  %3664 = phi float [ 0.000000e+00, %3176 ], [ %3365, %3658 ]
  %3665 = phi float [ %3129, %3176 ], [ %3366, %3658 ]
  %3666 = phi float [ %3130, %3176 ], [ %3367, %3658 ]
  %3667 = phi float [ %3131, %3176 ], [ %3368, %3658 ]
  %3668 = phi float [ %3172, %3176 ], [ %3369, %3658 ]
  %3669 = phi float [ %3173, %3176 ], [ %3370, %3658 ]
  %3670 = phi float [ %3174, %3176 ], [ %3371, %3658 ]
  %3671 = phi float [ %3137, %3176 ], [ %3372, %3658 ]
  %3672 = phi float [ %3136, %3176 ], [ %3373, %3658 ]
  %3673 = phi float [ 0.000000e+00, %3176 ], [ %3374, %3658 ]
  %3674 = phi float [ %3135, %3176 ], [ %3375, %3658 ]
  %3675 = phi float [ %3132, %3176 ], [ %3376, %3658 ]
  %3676 = phi float [ %3133, %3176 ], [ %3377, %3658 ]
  %3677 = phi float [ %3134, %3176 ], [ %3378, %3658 ]
  %3678 = call float @dx.op.dot3.f32(i32 55, float %3668, float %3669, float %3670, float %3668, float %3669, float %3670)  ; Dot3(ax,ay,az,bx,by,bz)
  %3679 = call float @dx.op.unary.f32(i32 25, float %3678)  ; Rsqrt(value)
  %3680 = fmul fast float %3679, %3668
  %3681 = fmul fast float %3679, %3669
  %3682 = fmul fast float %3679, %3670
  %3683 = fadd fast float %3673, %918
  %3684 = call float @dx.op.unary.f32(i32 7, float %3683)  ; Saturate(value)
  %3685 = call float @dx.op.dot3.f32(i32 55, float %3680, float %3681, float %3682, float %3680, float %3681, float %3682)  ; Dot3(ax,ay,az,bx,by,bz)
  %3686 = call float @dx.op.unary.f32(i32 25, float %3685)  ; Rsqrt(value)
  %3687 = fmul fast float %3686, %3680
  %3688 = fmul fast float %3686, %3681
  %3689 = fmul fast float %3686, %3682
  br label %3690

; <label>:3690                                    ; preds = %3659, %3126
  %3691 = phi float [ %3687, %3659 ], [ %3172, %3126 ]
  %3692 = phi float [ %3688, %3659 ], [ %3173, %3126 ]
  %3693 = phi float [ %3689, %3659 ], [ %3174, %3126 ]
  %3694 = phi float [ %3665, %3659 ], [ %3129, %3126 ]
  %3695 = phi float [ %3666, %3659 ], [ %3130, %3126 ]
  %3696 = phi float [ %3667, %3659 ], [ %3131, %3126 ]
  %3697 = phi float [ %3675, %3659 ], [ %3132, %3126 ]
  %3698 = phi float [ %3676, %3659 ], [ %3133, %3126 ]
  %3699 = phi float [ %3677, %3659 ], [ %3134, %3126 ]
  %3700 = phi float [ %3674, %3659 ], [ %3135, %3126 ]
  %3701 = phi float [ %3684, %3659 ], [ %918, %3126 ]
  %3702 = phi float [ %3672, %3659 ], [ %3136, %3126 ]
  %3703 = phi float [ %3671, %3659 ], [ %3137, %3126 ]
  %3704 = phi float [ %3664, %3659 ], [ 0.000000e+00, %3126 ]
  %3705 = phi float [ %3663, %3659 ], [ 0.000000e+00, %3126 ]
  %3706 = phi float [ %3660, %3659 ], [ 0.000000e+00, %3126 ]
  %3707 = phi float [ %3661, %3659 ], [ %3146, %3126 ]
  %3708 = phi float [ %3662, %3659 ], [ %3138, %3126 ]
  %3709 = fadd fast float %3700, 0xBFB99999A0000000
  %3710 = call float @dx.op.unary.f32(i32 7, float %3709)  ; Saturate(value)
  %3711 = fmul fast float %3710, 0x3FF1C71C80000000
  %3712 = call float @dx.op.binary.f32(i32 36, float %3700, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3713 = fsub fast float 1.000000e+00, %3711
  %3714 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  %3715 = fmul fast float %3714, %3697
  %3716 = fmul fast float %3714, %3698
  %3717 = fmul fast float %3714, %3699
  %3718 = call float @dx.op.unary.f32(i32 7, float %3715)  ; Saturate(value)
  %3719 = call float @dx.op.unary.f32(i32 7, float %3716)  ; Saturate(value)
  %3720 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3721 = fmul fast float %3711, %3697
  %3722 = fmul fast float %3711, %3698
  %3723 = fmul fast float %3711, %3699
  %3724 = fadd fast float %3721, %3712
  %3725 = fadd fast float %3722, %3712
  %3726 = fadd fast float %3723, %3712
  %3727 = call float @dx.op.unary.f32(i32 7, float %3724)  ; Saturate(value)
  %3728 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3729 = call float @dx.op.unary.f32(i32 7, float %3726)  ; Saturate(value)
  %3730 = call float @dx.op.unary.f32(i32 7, float %3702)  ; Saturate(value)
  %3731 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3732 = extractvalue %dx.types.CBufRet.i32 %3731, 3
  %3733 = and i32 %3732, 8
  %3734 = icmp ne i32 %3733, 0
  %3735 = call float @dx.op.binary.f32(i32 35, float %3718, float %3697)  ; FMax(a,b)
  %3736 = call float @dx.op.binary.f32(i32 35, float %3719, float %3697)  ; FMax(a,b)
  %3737 = call float @dx.op.binary.f32(i32 35, float %3720, float %3697)  ; FMax(a,b)
  %3738 = call float @dx.op.dot3.f32(i32 55, float %3718, float %3719, float %3720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3739 = select i1 %202, float %3697, float %3718
  %3740 = select i1 %202, float %3738, float %3719
  %3741 = select i1 %202, float 1.000000e+00, float %3720
  %3742 = select i1 %3734, float %3735, float %3739
  %3743 = select i1 %3734, float %3736, float %3740
  %3744 = select i1 %3734, float %3737, float %3741
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 0
  %3747 = extractvalue %dx.types.CBufRet.f32 %3745, 1
  %3748 = extractvalue %dx.types.CBufRet.f32 %3745, 2
  %3749 = fadd fast float %3746, %163
  %3750 = fadd fast float %3747, %164
  %3751 = fadd fast float %3748, %165
  %3752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3753 = extractvalue %dx.types.CBufRet.f32 %3752, 0
  %3754 = extractvalue %dx.types.CBufRet.f32 %3752, 1
  %3755 = fsub fast float %3749, %3753
  %3756 = fsub fast float %3750, %3754
  %3757 = fmul fast float %3755, %3755
  %3758 = fmul fast float %3756, %3756
  %3759 = fadd fast float %3757, %3758
  %3760 = call float @dx.op.unary.f32(i32 24, float %3759)  ; Sqrt(value)
  %3761 = extractvalue %dx.types.CBufRet.f32 %3752, 2
  %3762 = fcmp fast olt float %3760, %3761
  br i1 %3762, label %3763, label %3830

; <label>:3763                                    ; preds = %3690
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 0
  %3766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.f32 %3766, 0
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3770 = extractvalue %dx.types.CBufRet.f32 %3764, 1
  %3771 = extractvalue %dx.types.CBufRet.f32 %3766, 1
  %3772 = extractvalue %dx.types.CBufRet.f32 %3768, 1
  %3773 = extractvalue %dx.types.CBufRet.f32 %3764, 3
  %3774 = extractvalue %dx.types.CBufRet.f32 %3766, 3
  %3775 = extractvalue %dx.types.CBufRet.f32 %3768, 3
  %3776 = fadd fast float %3773, %3749
  %3777 = fadd fast float %3774, %3750
  %3778 = fadd fast float %3775, %3751
  %3779 = fmul fast float %3776, %3765
  %3780 = call float @dx.op.tertiary.f32(i32 46, float %3777, float %3767, float %3779)  ; FMad(a,b,c)
  %3781 = call float @dx.op.tertiary.f32(i32 46, float %3778, float %3769, float %3780)  ; FMad(a,b,c)
  %3782 = fmul fast float %3776, %3770
  %3783 = call float @dx.op.tertiary.f32(i32 46, float %3777, float %3771, float %3782)  ; FMad(a,b,c)
  %3784 = call float @dx.op.tertiary.f32(i32 46, float %3778, float %3772, float %3783)  ; FMad(a,b,c)
  %3785 = fsub fast float %3781, %3773
  %3786 = fsub fast float %3784, %3774
  %3787 = fsub fast float %3785, %3753
  %3788 = fadd fast float %3787, %3761
  %3789 = fsub fast float %3786, %3754
  %3790 = fadd fast float %3789, %3761
  %3791 = extractvalue %dx.types.CBufRet.f32 %3752, 3
  %3792 = fmul fast float %3788, %3791
  %3793 = fmul fast float %3790, %3791
  %3794 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  %3795 = call float @dx.op.unary.f32(i32 7, float %3793)  ; Saturate(value)
  %3796 = fsub fast float 1.000000e+00, %3794
  %3797 = fsub fast float 1.000000e+00, %3795
  %3798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %3796, float %3797, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3799 = extractvalue %dx.types.ResRet.f32 %3798, 0
  %3800 = fcmp fast ugt float %3799, 0.000000e+00
  br i1 %3800, label %3801, label %4104

; <label>:3801                                    ; preds = %3763
  %3802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3802, 2
  %3804 = fmul fast float %3803, %3799
  %3805 = extractvalue %dx.types.CBufRet.f32 %3802, 3
  %3806 = fadd fast float %3805, %3804
  %3807 = extractvalue %dx.types.CBufRet.f32 %3768, 2
  %3808 = fadd fast float %3806, %3775
  %3809 = fmul fast float %3781, %3769
  %3810 = call float @dx.op.tertiary.f32(i32 46, float %3784, float %3772, float %3809)  ; FMad(a,b,c)
  %3811 = call float @dx.op.tertiary.f32(i32 46, float %3808, float %3807, float %3810)  ; FMad(a,b,c)
  %3812 = fsub fast float %3811, %3775
  %3813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3813, 2
  %3815 = fsub fast float %3812, %3814
  %3816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %3796, float %3797, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3817 = extractvalue %dx.types.ResRet.f32 %3816, 0
  %3818 = extractvalue %dx.types.ResRet.f32 %3816, 1
  %3819 = extractvalue %dx.types.ResRet.f32 %3816, 2
  %3820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %3796, float %3797, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3821 = extractvalue %dx.types.ResRet.f32 %3820, 0
  %3822 = extractvalue %dx.types.ResRet.f32 %3820, 1
  %3823 = extractvalue %dx.types.ResRet.f32 %3820, 2
  %3824 = fadd fast float %3821, %3817
  %3825 = fmul fast float %3824, 0x3F847AE140000000
  %3826 = fadd fast float %3822, %3818
  %3827 = fmul fast float %3826, 0x3F847AE140000000
  %3828 = fadd fast float %3823, %3819
  %3829 = fmul fast float %3828, 0x3F847AE140000000
  br label %4104

; <label>:3830                                    ; preds = %3690
  %3831 = and i32 %181, 1
  %3832 = icmp eq i32 %3831, 0
  br i1 %3832, label %4104, label %3833

; <label>:3833                                    ; preds = %3830
  %3834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3835 = extractvalue %dx.types.CBufRet.f32 %3834, 0
  %3836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3837 = extractvalue %dx.types.CBufRet.f32 %3836, 0
  %3838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3839 = extractvalue %dx.types.CBufRet.f32 %3838, 0
  %3840 = extractvalue %dx.types.CBufRet.f32 %3834, 1
  %3841 = extractvalue %dx.types.CBufRet.f32 %3836, 1
  %3842 = extractvalue %dx.types.CBufRet.f32 %3838, 1
  %3843 = extractvalue %dx.types.CBufRet.f32 %3834, 3
  %3844 = extractvalue %dx.types.CBufRet.f32 %3836, 3
  %3845 = extractvalue %dx.types.CBufRet.f32 %3838, 3
  %3846 = fadd fast float %3843, %3749
  %3847 = fadd fast float %3844, %3750
  %3848 = fadd fast float %3845, %3751
  %3849 = fmul fast float %3846, %3835
  %3850 = call float @dx.op.tertiary.f32(i32 46, float %3847, float %3837, float %3849)  ; FMad(a,b,c)
  %3851 = call float @dx.op.tertiary.f32(i32 46, float %3848, float %3839, float %3850)  ; FMad(a,b,c)
  %3852 = fmul fast float %3846, %3840
  %3853 = call float @dx.op.tertiary.f32(i32 46, float %3847, float %3841, float %3852)  ; FMad(a,b,c)
  %3854 = call float @dx.op.tertiary.f32(i32 46, float %3848, float %3842, float %3853)  ; FMad(a,b,c)
  %3855 = fsub fast float %3851, %3843
  %3856 = fsub fast float %3854, %3844
  %3857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3858 = extractvalue %dx.types.CBufRet.f32 %3857, 0
  %3859 = extractvalue %dx.types.CBufRet.f32 %3857, 1
  %3860 = extractvalue %dx.types.CBufRet.f32 %3857, 2
  %3861 = extractvalue %dx.types.CBufRet.f32 %3857, 3
  %3862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3863 = extractvalue %dx.types.CBufRet.f32 %3862, 3
  %3864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3865 = extractvalue %dx.types.CBufRet.i32 %3864, 0
  %3866 = extractvalue %dx.types.CBufRet.i32 %3864, 1
  %3867 = udiv i32 %3866, %3865
  %3868 = fsub fast float %3855, %3858
  %3869 = fsub fast float %3856, %3859
  %3870 = call float @dx.op.binary.f32(i32 35, float %3868, float 0.000000e+00)  ; FMax(a,b)
  %3871 = call float @dx.op.binary.f32(i32 35, float %3869, float 0.000000e+00)  ; FMax(a,b)
  %3872 = call float @dx.op.binary.f32(i32 36, float %3870, float %3860)  ; FMin(a,b)
  %3873 = call float @dx.op.binary.f32(i32 36, float %3871, float %3861)  ; FMin(a,b)
  %3874 = add i32 %3865, -1
  %3875 = add i32 %3867, -1
  %3876 = fmul fast float %3872, %3863
  %3877 = fmul fast float %3873, %3863
  %3878 = fptoui float %3876 to i32
  %3879 = fptoui float %3877 to i32
  %3880 = call i32 @dx.op.binary.i32(i32 40, i32 %3878, i32 %3874)  ; UMin(a,b)
  %3881 = call i32 @dx.op.binary.i32(i32 40, i32 %3879, i32 %3875)  ; UMin(a,b)
  %3882 = mul i32 %3881, %3865
  %3883 = add i32 %3882, %3880
  %3884 = shl i32 %3883, 2
  %3885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.i32 %3885, 0
  %3887 = icmp eq i32 %3886, -1
  br i1 %3887, label %4104, label %3888

; <label>:3888                                    ; preds = %3833
  %3889 = mul i32 %3886, 148
  %3890 = add i32 %3889, 4
  %3891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3890, i32 undef)  ; BufferLoad(srv,index,wot)
  %3892 = extractvalue %dx.types.ResRet.f32 %3891, 0
  %3893 = add i32 %3889, 8
  %3894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.f32 %3894, 0
  %3896 = add i32 %3889, 36
  %3897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3896, i32 undef)  ; BufferLoad(srv,index,wot)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = add i32 %3889, 60
  %3900 = add i32 %3889, 92
  %3901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3902 = extractvalue %dx.types.ResRet.i32 %3901, 0
  %3903 = add i32 %3889, 116
  %3904 = fsub fast float %3855, %3892
  %3905 = fsub fast float %3856, %3895
  %3906 = fmul fast float %3863, %3904
  %3907 = fmul fast float %3863, %3905
  %3908 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3909 = call float @dx.op.unary.f32(i32 7, float %3907)  ; Saturate(value)
  %3910 = fsub fast float 1.000000e+00, %3909
  %3911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.f32 %3911, 2
  %3913 = call float @dx.op.unary.f32(i32 83, float %3908)  ; DerivCoarseX(value)
  %3914 = call float @dx.op.unary.f32(i32 83, float %3910)  ; DerivCoarseX(value)
  %3915 = call float @dx.op.unary.f32(i32 84, float %3908)  ; DerivCoarseY(value)
  %3916 = call float @dx.op.unary.f32(i32 84, float %3910)  ; DerivCoarseY(value)
  %3917 = fmul fast float %3913, %3912
  %3918 = fmul fast float %3914, %3912
  %3919 = fmul fast float %3915, %3912
  %3920 = fmul fast float %3916, %3912
  %3921 = call float @dx.op.dot2.f32(i32 54, float %3919, float %3920, float %3919, float %3920)  ; Dot2(ax,ay,bx,by)
  %3922 = call float @dx.op.dot2.f32(i32 54, float %3917, float %3918, float %3917, float %3918)  ; Dot2(ax,ay,bx,by)
  %3923 = call float @dx.op.binary.f32(i32 35, float %3922, float %3921)  ; FMax(a,b)
  %3924 = call float @dx.op.unary.f32(i32 23, float %3923)  ; Log(value)
  %3925 = fmul fast float %3924, 5.000000e-01
  %3926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.f32 %3926, 1
  %3928 = fadd fast float %3927, %3925
  %3929 = call float @dx.op.binary.f32(i32 35, float %3928, float 0.000000e+00)  ; FMax(a,b)
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 3
  %3932 = fadd fast float %3931, %3929
  %3933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3934 = extractvalue %dx.types.CBufRet.f32 %3933, 3
  %3935 = fadd fast float %3932, %3934
  %3936 = add i32 %3902, 0
  %3937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3936, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3938 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3937, i32 0)  ; GetDimensions(handle,mipLevel)
  %3939 = extractvalue %dx.types.Dimensions %3938, 0
  %3940 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3939)  ; FirstbitLo(value)
  %3941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.i32 %3941, 1
  %3943 = sub nsw i32 %3942, %3940
  %3944 = sitofp i32 %3943 to float
  %3945 = fsub fast float %3935, %3944
  %3946 = call float @dx.op.binary.f32(i32 35, float %3945, float 0.000000e+00)  ; FMax(a,b)
  %3947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3937, %dx.types.Handle %27, float %3908, float %3910, float %3898, float undef, i32 0, i32 0, i32 undef, float %3946)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = fcmp ule float %3948, 0x3FE0101020000000
  %3950 = extractvalue %dx.types.CBufRet.i32 %3941, 0
  %3951 = and i32 %3950, 128
  %3952 = icmp ne i32 %3951, 0
  %3953 = and i1 %3949, %3952
  br i1 %3953, label %4104, label %3954

; <label>:3954                                    ; preds = %3888
  %3955 = add i32 %3889, 20
  %3956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3955, i32 undef)  ; BufferLoad(srv,index,wot)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = add i32 %3889, 24
  %3959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3958, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = add i32 %3889, 40
  %3962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3961, i32 undef)  ; BufferLoad(srv,index,wot)
  %3963 = extractvalue %dx.types.ResRet.f32 %3962, 0
  %3964 = add i32 %3889, 96
  %3965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.i32 %3965, 0
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 2
  %3969 = fmul fast float %3968, %3908
  %3970 = fmul fast float %3968, %3910
  %3971 = extractvalue %dx.types.CBufRet.f32 %3967, 3
  %3972 = fadd fast float %3969, %3971
  %3973 = fadd fast float %3970, %3971
  %3974 = add i32 %3966, 0
  %3975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3974, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3976 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3975, i32 0)  ; GetDimensions(handle,mipLevel)
  %3977 = extractvalue %dx.types.Dimensions %3976, 0
  %3978 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3977)  ; FirstbitLo(value)
  %3979 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3980 = extractvalue %dx.types.CBufRet.i32 %3979, 1
  %3981 = sub nsw i32 %3980, %3978
  %3982 = sitofp i32 %3981 to float
  %3983 = fsub fast float %3932, %3982
  %3984 = call float @dx.op.binary.f32(i32 35, float %3983, float 0.000000e+00)  ; FMax(a,b)
  %3985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3975, %dx.types.Handle %27, float %3972, float %3973, float %3963, float undef, i32 0, i32 0, i32 undef, float %3984)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3986 = extractvalue %dx.types.ResRet.f32 %3985, 0
  %3987 = fmul fast float %3986, %3957
  %3988 = fadd fast float %3987, %3960
  %3989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3990 = extractvalue %dx.types.CBufRet.f32 %3989, 0
  %3991 = extractvalue %dx.types.CBufRet.f32 %3989, 1
  %3992 = extractvalue %dx.types.CBufRet.f32 %3989, 2
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 3
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 3
  %3997 = extractvalue %dx.types.CBufRet.f32 %3989, 3
  %3998 = fadd fast float %3994, %3855
  %3999 = fadd fast float %3996, %3856
  %4000 = fadd fast float %3988, %3997
  %4001 = fmul fast float %3998, %3990
  %4002 = call float @dx.op.tertiary.f32(i32 46, float %3999, float %3991, float %4001)  ; FMad(a,b,c)
  %4003 = call float @dx.op.tertiary.f32(i32 46, float %4000, float %3992, float %4002)  ; FMad(a,b,c)
  %4004 = fsub fast float %4003, %3997
  %4005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4006 = extractvalue %dx.types.CBufRet.f32 %4005, 2
  %4007 = fsub fast float %4004, %4006
  %4008 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.i32 %4008, 0
  %4010 = call i32 @dx.op.binary.i32(i32 40, i32 %3886, i32 %4009)  ; UMin(a,b)
  %4011 = mul i32 %4010, 36
  %4012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4011, i32 undef)  ; BufferLoad(srv,index,wot)
  %4013 = extractvalue %dx.types.ResRet.i32 %4012, 0
  %4014 = add i32 %4011, 4
  %4015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4016 = extractvalue %dx.types.CBufRet.f32 %4015, 0
  %4017 = fmul fast float %4016, %3908
  %4018 = fmul fast float %4016, %3910
  %4019 = extractvalue %dx.types.CBufRet.f32 %4015, 1
  %4020 = fadd fast float %4017, %4019
  %4021 = fadd fast float %4018, %4019
  %4022 = icmp eq i32 %4013, 0
  br i1 %4022, label %4091, label %4023

; <label>:4023                                    ; preds = %3954
  br label %4024

; <label>:4024                                    ; preds = %4081, %4023
  %4025 = phi float [ %4082, %4081 ], [ 0.000000e+00, %4023 ]
  %4026 = phi float [ %4083, %4081 ], [ 0.000000e+00, %4023 ]
  %4027 = phi float [ %4084, %4081 ], [ 0.000000e+00, %4023 ]
  %4028 = phi float [ %4085, %4081 ], [ 0.000000e+00, %4023 ]
  %4029 = phi float [ %4086, %4081 ], [ 0.000000e+00, %4023 ]
  %4030 = phi float [ %4087, %4081 ], [ 0.000000e+00, %4023 ]
  %4031 = phi i32 [ %4088, %4081 ], [ 0, %4023 ]
  %4032 = shl i32 %4031, 2
  %4033 = add i32 %3899, %4032
  %4034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4033, i32 undef)  ; BufferLoad(srv,index,wot)
  %4035 = extractvalue %dx.types.ResRet.f32 %4034, 0
  %4036 = add i32 %3903, %4032
  %4037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4036, i32 undef)  ; BufferLoad(srv,index,wot)
  %4038 = extractvalue %dx.types.ResRet.i32 %4037, 0
  %4039 = add i32 %4038, 0
  %4040 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4039, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4041 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4040, i32 0)  ; GetDimensions(handle,mipLevel)
  %4042 = extractvalue %dx.types.Dimensions %4041, 0
  %4043 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4042)  ; FirstbitLo(value)
  %4044 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4045 = extractvalue %dx.types.CBufRet.i32 %4044, 1
  %4046 = sub nsw i32 %4045, %4043
  %4047 = sitofp i32 %4046 to float
  %4048 = fsub fast float %3932, %4047
  %4049 = call float @dx.op.binary.f32(i32 35, float %4048, float 0.000000e+00)  ; FMax(a,b)
  %4050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4040, %dx.types.Handle %27, float %4020, float %4021, float %4035, float undef, i32 0, i32 0, i32 undef, float %4049)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = fcmp fast ogt float %4051, 0.000000e+00
  br i1 %4052, label %4053, label %4081

; <label>:4053                                    ; preds = %4024
  %4054 = add i32 %4014, %4032
  %4055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4054, i32 undef)  ; BufferLoad(srv,index,wot)
  %4056 = extractvalue %dx.types.ResRet.i32 %4055, 0
  %4057 = and i32 %4056, 32767
  %4058 = mul nuw nsw i32 %4057, 928
  %4059 = add nuw nsw i32 %4058, 48
  %4060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4059, i32 undef)  ; BufferLoad(srv,index,wot)
  %4061 = extractvalue %dx.types.ResRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.ResRet.f32 %4060, 1
  %4063 = extractvalue %dx.types.ResRet.f32 %4060, 2
  %4064 = add nuw nsw i32 %4058, 60
  %4065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4064, i32 undef)  ; BufferLoad(srv,index,wot)
  %4066 = extractvalue %dx.types.ResRet.f32 %4065, 0
  %4067 = extractvalue %dx.types.ResRet.f32 %4065, 1
  %4068 = extractvalue %dx.types.ResRet.f32 %4065, 2
  %4069 = fmul fast float %4061, %4051
  %4070 = fmul fast float %4062, %4051
  %4071 = fmul fast float %4063, %4051
  %4072 = fadd fast float %4069, %4025
  %4073 = fadd fast float %4070, %4026
  %4074 = fadd fast float %4071, %4027
  %4075 = fmul fast float %4066, %4051
  %4076 = fmul fast float %4067, %4051
  %4077 = fmul fast float %4068, %4051
  %4078 = fadd fast float %4075, %4028
  %4079 = fadd fast float %4076, %4029
  %4080 = fadd fast float %4077, %4030
  br label %4081

; <label>:4081                                    ; preds = %4053, %4024
  %4082 = phi float [ %4072, %4053 ], [ %4025, %4024 ]
  %4083 = phi float [ %4073, %4053 ], [ %4026, %4024 ]
  %4084 = phi float [ %4074, %4053 ], [ %4027, %4024 ]
  %4085 = phi float [ %4078, %4053 ], [ %4028, %4024 ]
  %4086 = phi float [ %4079, %4053 ], [ %4029, %4024 ]
  %4087 = phi float [ %4080, %4053 ], [ %4030, %4024 ]
  %4088 = add nuw i32 %4031, 1
  %4089 = icmp eq i32 %4088, %4013
  br i1 %4089, label %4090, label %4024

; <label>:4090                                    ; preds = %4081
  br label %4091

; <label>:4091                                    ; preds = %4090, %3954
  %4092 = phi float [ 0.000000e+00, %3954 ], [ %4082, %4090 ]
  %4093 = phi float [ 0.000000e+00, %3954 ], [ %4083, %4090 ]
  %4094 = phi float [ 0.000000e+00, %3954 ], [ %4084, %4090 ]
  %4095 = phi float [ 0.000000e+00, %3954 ], [ %4085, %4090 ]
  %4096 = phi float [ 0.000000e+00, %3954 ], [ %4086, %4090 ]
  %4097 = phi float [ 0.000000e+00, %3954 ], [ %4087, %4090 ]
  %4098 = fadd fast float %4095, %4092
  %4099 = fmul fast float %4098, 0x3F847AE140000000
  %4100 = fadd fast float %4096, %4093
  %4101 = fmul fast float %4100, 0x3F847AE140000000
  %4102 = fadd fast float %4097, %4094
  %4103 = fmul fast float %4102, 0x3F847AE140000000
  br label %4104

; <label>:4104                                    ; preds = %4091, %3888, %3833, %3830, %3801, %3763
  %4105 = phi float [ %3815, %3801 ], [ -1.310720e+05, %3763 ], [ %4007, %4091 ], [ -1.310720e+05, %3833 ], [ -1.310720e+05, %3888 ], [ -1.310720e+05, %3830 ]
  %4106 = phi float [ %3825, %3801 ], [ 0.000000e+00, %3763 ], [ %4099, %4091 ], [ 0.000000e+00, %3833 ], [ 0.000000e+00, %3888 ], [ 0.000000e+00, %3830 ]
  %4107 = phi float [ %3827, %3801 ], [ 0.000000e+00, %3763 ], [ %4101, %4091 ], [ 0.000000e+00, %3833 ], [ 0.000000e+00, %3888 ], [ 0.000000e+00, %3830 ]
  %4108 = phi float [ %3829, %3801 ], [ 0.000000e+00, %3763 ], [ %4103, %4091 ], [ 0.000000e+00, %3833 ], [ 0.000000e+00, %3888 ], [ 0.000000e+00, %3830 ]
  %4109 = phi i1 [ true, %3801 ], [ false, %3763 ], [ true, %4091 ], [ false, %3833 ], [ false, %3888 ], [ false, %3830 ]
  %4110 = and i32 %181, 3
  %4111 = icmp eq i32 %4110, 1
  %4112 = select i1 %4111, float 1.000000e+00, float 0.000000e+00
  %4113 = fsub fast float %4105, %165
  %4114 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4115 = select i1 %4109, float %4114, float 1.000000e+00
  %4116 = fmul fast float %4115, %4112
  %4117 = icmp eq i32 %4110, 3
  %4118 = select i1 %4117, float 1.000000e+00, float %4116
  %4119 = call float @dx.op.binary.f32(i32 35, float %3706, float %4118)  ; FMax(a,b)
  %4120 = fcmp fast olt float %4118, 1.000000e+00
  %4121 = fcmp uge float %47, 0.000000e+00
  %4122 = and i1 %4121, %4120
  br i1 %4122, label %4123, label %4133

; <label>:4123                                    ; preds = %4104
  %4124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %47, float %48, float %49, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4125 = extractvalue %dx.types.ResRet.f32 %4124, 0
  %4126 = extractvalue %dx.types.ResRet.f32 %4124, 1
  %4127 = extractvalue %dx.types.ResRet.f32 %4124, 2
  %4128 = fadd fast float %4125, %4119
  %4129 = fcmp ule float %46, 0.000000e+00
  %4130 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4131 = select i1 %4129, float %4130, float 1.000000e+00
  %4132 = fmul fast float %4131, %4127
  br label %4133

; <label>:4133                                    ; preds = %4123, %4104
  %4134 = phi float [ %4128, %4123 ], [ %4119, %4104 ]
  %4135 = phi float [ %4126, %4123 ], [ 0.000000e+00, %4104 ]
  %4136 = phi float [ %4132, %4123 ], [ 0.000000e+00, %4104 ]
  %4137 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  %4138 = call float @dx.op.unary.f32(i32 7, float %4135)  ; Saturate(value)
  %4139 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  %4140 = fcmp fast une float %4138, 0.000000e+00
  %4141 = fcmp fast une float %4139, 0.000000e+00
  %4142 = or i1 %4140, %4141
  br i1 %4142, label %4143, label %4702

; <label>:4143                                    ; preds = %4133
  br i1 %4140, label %4144, label %4417

; <label>:4144                                    ; preds = %4143
  %4145 = call float @dx.op.unary.f32(i32 23, float %3703)  ; Log(value)
  %4146 = fmul fast float %4145, 4.000000e+00
  %4147 = call float @dx.op.unary.f32(i32 21, float %4146)  ; Exp(value)
  %4148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4148, 0
  %4150 = fmul fast float %4149, %34
  %4151 = fmul fast float %4149, %35
  %4152 = fmul fast float %4149, %36
  %4153 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4154 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4155 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4156 = call float @dx.op.unary.f32(i32 23, float %4153)  ; Log(value)
  %4157 = call float @dx.op.unary.f32(i32 23, float %4154)  ; Log(value)
  %4158 = call float @dx.op.unary.f32(i32 23, float %4155)  ; Log(value)
  %4159 = fmul fast float %4156, 4.000000e+00
  %4160 = fmul fast float %4157, 4.000000e+00
  %4161 = fmul fast float %4158, 4.000000e+00
  %4162 = call float @dx.op.unary.f32(i32 21, float %4159)  ; Exp(value)
  %4163 = call float @dx.op.unary.f32(i32 21, float %4160)  ; Exp(value)
  %4164 = call float @dx.op.unary.f32(i32 21, float %4161)  ; Exp(value)
  %4165 = fadd fast float %4163, %4162
  %4166 = fadd fast float %4165, %4164
  %4167 = fdiv fast float 1.000000e+00, %4166
  %4168 = fmul fast float %4167, %4162
  %4169 = fcmp fast ogt float %43, 0.000000e+00
  %4170 = fcmp fast ogt float %44, 0.000000e+00
  %4171 = fcmp fast ogt float %45, 0.000000e+00
  %4172 = fcmp fast olt float %43, 0.000000e+00
  %4173 = fcmp fast olt float %44, 0.000000e+00
  %4174 = fcmp fast olt float %45, 0.000000e+00
  %4175 = zext i1 %4169 to i32
  %4176 = zext i1 %4170 to i32
  %4177 = zext i1 %4171 to i32
  %4178 = zext i1 %4172 to i32
  %4179 = zext i1 %4173 to i32
  %4180 = zext i1 %4174 to i32
  %4181 = sub nsw i32 %4175, %4178
  %4182 = sub nsw i32 %4176, %4179
  %4183 = sub nsw i32 %4177, %4180
  %4184 = call float @dx.op.unary.f32(i32 83, float %4150)  ; DerivCoarseX(value)
  %4185 = call float @dx.op.unary.f32(i32 83, float %4151)  ; DerivCoarseX(value)
  %4186 = call float @dx.op.unary.f32(i32 83, float %4152)  ; DerivCoarseX(value)
  %4187 = call float @dx.op.unary.f32(i32 84, float %4150)  ; DerivCoarseY(value)
  %4188 = call float @dx.op.unary.f32(i32 84, float %4151)  ; DerivCoarseY(value)
  %4189 = call float @dx.op.unary.f32(i32 84, float %4152)  ; DerivCoarseY(value)
  %4190 = fcmp fast ole float %213, %4168
  %4191 = fmul fast float %4167, %4165
  %4192 = fcmp fast ole float %213, %4191
  %4193 = select i1 %4192, float %4152, float %4150
  %4194 = select i1 %4192, float %4150, float %4151
  %4195 = select i1 %4190, float %4151, float %4193
  %4196 = select i1 %4190, float %4152, float %4194
  %4197 = select i1 %4192, float %4186, float %4184
  %4198 = select i1 %4192, float %4184, float %4185
  %4199 = select i1 %4190, float %4185, float %4197
  %4200 = select i1 %4190, float %4186, float %4198
  %4201 = select i1 %4192, float %4189, float %4187
  %4202 = select i1 %4192, float %4187, float %4188
  %4203 = select i1 %4190, float %4188, float %4201
  %4204 = select i1 %4190, float %4189, float %4202
  %4205 = call float @dx.op.unary.f32(i32 27, float %4195)  ; Round_ni(value)
  %4206 = call float @dx.op.unary.f32(i32 27, float %4196)  ; Round_ni(value)
  %4207 = fptosi float %4205 to i32
  %4208 = fptosi float %4206 to i32
  %4209 = xor i32 %4208, %4207
  %4210 = sitofp i32 %4209 to float
  %4211 = fptosi float %4210 to i32
  %4212 = sitofp i32 %4211 to float
  %4213 = fmul fast float %4212, 0x3FE3C6EF40000000
  %4214 = frem fast float %4205, 2.560000e+02
  %4215 = frem fast float %4206, 2.560000e+02
  %4216 = fptoui float %4214 to i32
  %4217 = fptoui float %4215 to i32
  %4218 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4216, i32 %4217, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = extractvalue %dx.types.ResRet.f32 %4218, 1
  %4221 = extractvalue %dx.types.ResRet.f32 %4218, 2
  %4222 = fadd fast float %4219, %4213
  %4223 = fadd fast float %4220, %4213
  %4224 = fadd fast float %4221, %4213
  %4225 = call float @dx.op.unary.f32(i32 22, float %4222)  ; Frc(value)
  %4226 = call float @dx.op.unary.f32(i32 22, float %4223)  ; Frc(value)
  %4227 = call float @dx.op.unary.f32(i32 22, float %4224)  ; Frc(value)
  %4228 = fmul fast float %4227, 0x401921FB60000000
  %4229 = call float @dx.op.unary.f32(i32 13, float %4228)  ; Sin(value)
  %4230 = call float @dx.op.unary.f32(i32 12, float %4228)  ; Cos(value)
  %4231 = fsub fast float -0.000000e+00, %4230
  %4232 = fmul fast float %4230, %4195
  %4233 = call float @dx.op.tertiary.f32(i32 46, float %4229, float %4196, float %4232)  ; FMad(a,b,c)
  %4234 = fmul fast float %4229, %4195
  %4235 = call float @dx.op.tertiary.f32(i32 46, float %4231, float %4196, float %4234)  ; FMad(a,b,c)
  %4236 = fadd fast float %4233, %4225
  %4237 = fadd fast float %4235, %4226
  %4238 = extractvalue %dx.types.CBufRet.f32 %4148, 3
  %4239 = bitcast float %4238 to i32
  %4240 = icmp eq i32 %4239, 0
  br i1 %4240, label %4279, label %4241

; <label>:4241                                    ; preds = %4144
  %4242 = add i32 %4239, 0
  %4243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4242, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4244 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4243, %dx.types.Handle %73, float %4236, float %4237, float undef, float undef, i32 0, i32 0, i32 undef, float %4199, float %4200, float undef, float %4203, float %4204, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4245 = extractvalue %dx.types.ResRet.f32 %4244, 0
  %4246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4247 = extractvalue %dx.types.CBufRet.f32 %4246, 1
  %4248 = extractvalue %dx.types.CBufRet.f32 %4246, 2
  %4249 = fsub fast float 1.000000e+00, %4138
  %4250 = call float @dx.op.binary.f32(i32 35, float %4249, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4251 = bitcast float %4138 to i32
  %4252 = sitofp i32 %4251 to float
  %4253 = fadd fast float %4252, 0xC1CFBF8940000000
  %4254 = fmul fast float %4248, %4253
  %4255 = fadd fast float %4254, 0x41CFBF8940000000
  %4256 = fptosi float %4255 to i32
  %4257 = bitcast i32 %4256 to float
  %4258 = bitcast float %4250 to i32
  %4259 = sitofp i32 %4258 to float
  %4260 = fadd fast float %4259, 0xC1CFBF8940000000
  %4261 = fmul fast float %4260, %4248
  %4262 = fadd fast float %4261, 0x41CFBF8940000000
  %4263 = fptosi float %4262 to i32
  %4264 = bitcast i32 %4263 to float
  %4265 = fmul fast float %4257, %4247
  %4266 = fmul fast float %4264, %4247
  %4267 = fsub fast float %4250, %4265
  %4268 = fadd fast float %4266, %4250
  %4269 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4270 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4271 = fsub fast float %4245, %4269
  %4272 = fsub fast float %4270, %4269
  %4273 = bitcast float %4272 to i32
  %4274 = sub nsw i32 2129859010, %4273
  %4275 = bitcast i32 %4274 to float
  %4276 = fmul fast float %4275, %4271
  %4277 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4278 = fcmp fast olt float %4277, 0x3F70101020000000
  br i1 %4278, label %4417, label %4279

; <label>:4279                                    ; preds = %4241, %4144
  %4280 = phi float [ %4277, %4241 ], [ %4138, %4144 ]
  %4281 = fmul fast float %4280, %4147
  %4282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.i32 %4282, 1
  %4284 = extractvalue %dx.types.CBufRet.i32 %4282, 0
  %4285 = add i32 %4284, 0
  %4286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4287 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4286, %dx.types.Handle %72, float %4236, float %4237, float undef, float undef, i32 0, i32 0, i32 undef, float %4199, float %4200, float undef, float %4203, float %4204, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4288 = extractvalue %dx.types.ResRet.f32 %4287, 0
  %4289 = extractvalue %dx.types.ResRet.f32 %4287, 1
  %4290 = extractvalue %dx.types.ResRet.f32 %4287, 2
  %4291 = extractvalue %dx.types.ResRet.f32 %4287, 3
  %4292 = and i32 %4283, 255
  %4293 = uitofp i32 %4292 to float
  %4294 = lshr i32 %4283, 8
  %4295 = and i32 %4294, 255
  %4296 = uitofp i32 %4295 to float
  %4297 = fmul fast float %4291, %4293
  %4298 = fadd fast float %4297, %4296
  %4299 = fmul fast float %4298, 0x3F70101000000000
  %4300 = fadd fast float %4299, 0xBFB99999A0000000
  %4301 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4302 = fmul fast float %4301, 0x3FF1C71C80000000
  %4303 = call float @dx.op.binary.f32(i32 36, float %4299, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4304 = fsub fast float 1.000000e+00, %4302
  %4305 = call float @dx.op.unary.f32(i32 7, float %4304)  ; Saturate(value)
  %4306 = fmul fast float %4305, %4288
  %4307 = fmul fast float %4305, %4289
  %4308 = fmul fast float %4305, %4290
  %4309 = call float @dx.op.unary.f32(i32 7, float %4306)  ; Saturate(value)
  %4310 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4311 = call float @dx.op.unary.f32(i32 7, float %4308)  ; Saturate(value)
  %4312 = fmul fast float %4302, %4288
  %4313 = fmul fast float %4302, %4289
  %4314 = fmul fast float %4302, %4290
  %4315 = fadd fast float %4312, %4303
  %4316 = fadd fast float %4313, %4303
  %4317 = fadd fast float %4314, %4303
  %4318 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  %4319 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4320 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.i32 %4321, 3
  %4323 = extractvalue %dx.types.CBufRet.i32 %4321, 2
  %4324 = add i32 %4323, 0
  %4325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4324, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4326 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4325, %dx.types.Handle %72, float %4236, float %4237, float undef, float undef, i32 0, i32 0, i32 undef, float %4199, float %4200, float undef, float %4203, float %4204, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4327 = extractvalue %dx.types.ResRet.f32 %4326, 0
  %4328 = extractvalue %dx.types.ResRet.f32 %4326, 1
  %4329 = extractvalue %dx.types.ResRet.f32 %4326, 2
  %4330 = extractvalue %dx.types.ResRet.f32 %4326, 3
  %4331 = and i32 %4322, 255
  %4332 = uitofp i32 %4331 to float
  %4333 = lshr i32 %4322, 8
  %4334 = and i32 %4333, 255
  %4335 = uitofp i32 %4334 to float
  %4336 = lshr i32 %4322, 16
  %4337 = and i32 %4336, 255
  %4338 = uitofp i32 %4337 to float
  %4339 = fmul fast float %4338, 0x3F70101000000000
  %4340 = fmul fast float %4327, %4332
  %4341 = fadd fast float %4340, %4335
  %4342 = fmul fast float %4341, 0x3F70101000000000
  %4343 = fadd fast float %4328, -5.000000e-01
  %4344 = fadd fast float %4330, -5.000000e-01
  %4345 = fmul fast float %4343, %4339
  %4346 = fmul fast float %4344, %4339
  %4347 = fadd fast float %4345, 5.000000e-01
  %4348 = fadd fast float %4346, 5.000000e-01
  %4349 = fmul fast float %4347, 2.000000e+00
  %4350 = fadd fast float %4349, -1.000000e+00
  %4351 = fmul fast float %4348, 2.000000e+00
  %4352 = fadd fast float %4351, -1.000000e+00
  %4353 = fadd fast float %4350, %4352
  %4354 = fmul fast float %4353, 5.000000e-01
  %4355 = fsub fast float %4350, %4352
  %4356 = fmul fast float %4355, 5.000000e-01
  %4357 = call float @dx.op.unary.f32(i32 6, float %4354)  ; FAbs(value)
  %4358 = fsub fast float 1.000000e+00, %4357
  %4359 = call float @dx.op.unary.f32(i32 6, float %4356)  ; FAbs(value)
  %4360 = fsub fast float %4358, %4359
  %4361 = call float @dx.op.dot3.f32(i32 55, float %4354, float %4356, float %4360, float %4354, float %4356, float %4360)  ; Dot3(ax,ay,az,bx,by,bz)
  %4362 = call float @dx.op.unary.f32(i32 25, float %4361)  ; Rsqrt(value)
  %4363 = fmul fast float %4354, %4362
  %4364 = fmul fast float %4356, %4362
  %4365 = select i1 %4192, i32 %4182, i32 %4183
  %4366 = select i1 %4190, i32 %4181, i32 %4365
  %4367 = sitofp i32 %4366 to float
  %4368 = fmul fast float %4360, %4367
  %4369 = fmul fast float %4368, %4362
  %4370 = select i1 %4192, float %4369, float %4364
  %4371 = select i1 %4192, float %4364, float %4369
  %4372 = select i1 %4190, float %4369, float %4363
  %4373 = select i1 %4190, float %4364, float %4370
  %4374 = select i1 %4190, float %4363, float %4371
  %4375 = fsub fast float %4309, %3742
  %4376 = fsub fast float %4310, %3743
  %4377 = fsub fast float %4311, %3744
  %4378 = fmul fast float %4375, %4281
  %4379 = fmul fast float %4376, %4281
  %4380 = fmul fast float %4377, %4281
  %4381 = fadd fast float %4378, %3742
  %4382 = fadd fast float %4379, %3743
  %4383 = fadd fast float %4380, %3744
  %4384 = fsub fast float %4318, %3727
  %4385 = fsub fast float %4319, %3728
  %4386 = fsub fast float %4320, %3729
  %4387 = fmul fast float %4384, %4281
  %4388 = fmul fast float %4385, %4281
  %4389 = fmul fast float %4386, %4281
  %4390 = fadd fast float %4387, %3727
  %4391 = fadd fast float %4388, %3728
  %4392 = fadd fast float %4389, %3729
  %4393 = fadd fast float %4372, %3691
  %4394 = fadd fast float %4373, %3692
  %4395 = fadd fast float %4374, %3693
  %4396 = call float @dx.op.dot3.f32(i32 55, float %4393, float %4394, float %4395, float %4393, float %4394, float %4395)  ; Dot3(ax,ay,az,bx,by,bz)
  %4397 = call float @dx.op.unary.f32(i32 25, float %4396)  ; Rsqrt(value)
  %4398 = fmul fast float %4393, %4397
  %4399 = fmul fast float %4394, %4397
  %4400 = fmul fast float %4395, %4397
  %4401 = fsub fast float %4398, %3691
  %4402 = fsub fast float %4399, %3692
  %4403 = fsub fast float %4400, %3693
  %4404 = fmul fast float %4401, %4281
  %4405 = fmul fast float %4402, %4281
  %4406 = fmul fast float %4403, %4281
  %4407 = fadd fast float %4404, %3691
  %4408 = fadd fast float %4405, %3692
  %4409 = fadd fast float %4406, %3693
  %4410 = call float @dx.op.binary.f32(i32 36, float %3703, float %4329)  ; FMin(a,b)
  %4411 = fsub fast float %4410, %3703
  %4412 = fmul fast float %4411, %4281
  %4413 = fadd fast float %4412, %3703
  %4414 = fsub fast float %4342, %3730
  %4415 = fmul fast float %4414, %4281
  %4416 = fadd fast float %4415, %3730
  br label %4417

; <label>:4417                                    ; preds = %4279, %4241, %4143
  %4418 = phi float [ %4407, %4279 ], [ %3691, %4241 ], [ %3691, %4143 ]
  %4419 = phi float [ %4408, %4279 ], [ %3692, %4241 ], [ %3692, %4143 ]
  %4420 = phi float [ %4409, %4279 ], [ %3693, %4241 ], [ %3693, %4143 ]
  %4421 = phi float [ %4390, %4279 ], [ %3727, %4241 ], [ %3727, %4143 ]
  %4422 = phi float [ %4391, %4279 ], [ %3728, %4241 ], [ %3728, %4143 ]
  %4423 = phi float [ %4392, %4279 ], [ %3729, %4241 ], [ %3729, %4143 ]
  %4424 = phi float [ %4381, %4279 ], [ %3742, %4241 ], [ %3742, %4143 ]
  %4425 = phi float [ %4382, %4279 ], [ %3743, %4241 ], [ %3743, %4143 ]
  %4426 = phi float [ %4383, %4279 ], [ %3744, %4241 ], [ %3744, %4143 ]
  %4427 = phi float [ %4416, %4279 ], [ %3730, %4241 ], [ %3730, %4143 ]
  %4428 = phi float [ %4413, %4279 ], [ %3703, %4241 ], [ %3703, %4143 ]
  br i1 %4141, label %4429, label %4702

; <label>:4429                                    ; preds = %4417
  %4430 = call float @dx.op.unary.f32(i32 23, float %4428)  ; Log(value)
  %4431 = fmul fast float %4430, 4.000000e+00
  %4432 = call float @dx.op.unary.f32(i32 21, float %4431)  ; Exp(value)
  %4433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4434 = extractvalue %dx.types.CBufRet.f32 %4433, 0
  %4435 = fmul fast float %4434, %34
  %4436 = fmul fast float %4434, %35
  %4437 = fmul fast float %4434, %36
  %4438 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4439 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4440 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4441 = call float @dx.op.unary.f32(i32 23, float %4438)  ; Log(value)
  %4442 = call float @dx.op.unary.f32(i32 23, float %4439)  ; Log(value)
  %4443 = call float @dx.op.unary.f32(i32 23, float %4440)  ; Log(value)
  %4444 = fmul fast float %4441, 4.000000e+00
  %4445 = fmul fast float %4442, 4.000000e+00
  %4446 = fmul fast float %4443, 4.000000e+00
  %4447 = call float @dx.op.unary.f32(i32 21, float %4444)  ; Exp(value)
  %4448 = call float @dx.op.unary.f32(i32 21, float %4445)  ; Exp(value)
  %4449 = call float @dx.op.unary.f32(i32 21, float %4446)  ; Exp(value)
  %4450 = fadd fast float %4448, %4447
  %4451 = fadd fast float %4450, %4449
  %4452 = fdiv fast float 1.000000e+00, %4451
  %4453 = fmul fast float %4452, %4447
  %4454 = fcmp fast ogt float %43, 0.000000e+00
  %4455 = fcmp fast ogt float %44, 0.000000e+00
  %4456 = fcmp fast ogt float %45, 0.000000e+00
  %4457 = fcmp fast olt float %43, 0.000000e+00
  %4458 = fcmp fast olt float %44, 0.000000e+00
  %4459 = fcmp fast olt float %45, 0.000000e+00
  %4460 = zext i1 %4454 to i32
  %4461 = zext i1 %4455 to i32
  %4462 = zext i1 %4456 to i32
  %4463 = zext i1 %4457 to i32
  %4464 = zext i1 %4458 to i32
  %4465 = zext i1 %4459 to i32
  %4466 = sub nsw i32 %4460, %4463
  %4467 = sub nsw i32 %4461, %4464
  %4468 = sub nsw i32 %4462, %4465
  %4469 = call float @dx.op.unary.f32(i32 83, float %4435)  ; DerivCoarseX(value)
  %4470 = call float @dx.op.unary.f32(i32 83, float %4436)  ; DerivCoarseX(value)
  %4471 = call float @dx.op.unary.f32(i32 83, float %4437)  ; DerivCoarseX(value)
  %4472 = call float @dx.op.unary.f32(i32 84, float %4435)  ; DerivCoarseY(value)
  %4473 = call float @dx.op.unary.f32(i32 84, float %4436)  ; DerivCoarseY(value)
  %4474 = call float @dx.op.unary.f32(i32 84, float %4437)  ; DerivCoarseY(value)
  %4475 = fcmp fast ole float %213, %4453
  %4476 = fmul fast float %4452, %4450
  %4477 = fcmp fast ole float %213, %4476
  %4478 = select i1 %4477, float %4437, float %4435
  %4479 = select i1 %4477, float %4435, float %4436
  %4480 = select i1 %4475, float %4436, float %4478
  %4481 = select i1 %4475, float %4437, float %4479
  %4482 = select i1 %4477, float %4471, float %4469
  %4483 = select i1 %4477, float %4469, float %4470
  %4484 = select i1 %4475, float %4470, float %4482
  %4485 = select i1 %4475, float %4471, float %4483
  %4486 = select i1 %4477, float %4474, float %4472
  %4487 = select i1 %4477, float %4472, float %4473
  %4488 = select i1 %4475, float %4473, float %4486
  %4489 = select i1 %4475, float %4474, float %4487
  %4490 = call float @dx.op.unary.f32(i32 27, float %4480)  ; Round_ni(value)
  %4491 = call float @dx.op.unary.f32(i32 27, float %4481)  ; Round_ni(value)
  %4492 = fptosi float %4490 to i32
  %4493 = fptosi float %4491 to i32
  %4494 = xor i32 %4493, %4492
  %4495 = sitofp i32 %4494 to float
  %4496 = fptosi float %4495 to i32
  %4497 = sitofp i32 %4496 to float
  %4498 = fmul fast float %4497, 0x3FE3C6EF40000000
  %4499 = frem fast float %4490, 2.560000e+02
  %4500 = frem fast float %4491, 2.560000e+02
  %4501 = fptoui float %4499 to i32
  %4502 = fptoui float %4500 to i32
  %4503 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4501, i32 %4502, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = extractvalue %dx.types.ResRet.f32 %4503, 1
  %4506 = extractvalue %dx.types.ResRet.f32 %4503, 2
  %4507 = fadd fast float %4504, %4498
  %4508 = fadd fast float %4505, %4498
  %4509 = fadd fast float %4506, %4498
  %4510 = call float @dx.op.unary.f32(i32 22, float %4507)  ; Frc(value)
  %4511 = call float @dx.op.unary.f32(i32 22, float %4508)  ; Frc(value)
  %4512 = call float @dx.op.unary.f32(i32 22, float %4509)  ; Frc(value)
  %4513 = fmul fast float %4512, 0x401921FB60000000
  %4514 = call float @dx.op.unary.f32(i32 13, float %4513)  ; Sin(value)
  %4515 = call float @dx.op.unary.f32(i32 12, float %4513)  ; Cos(value)
  %4516 = fsub fast float -0.000000e+00, %4515
  %4517 = fmul fast float %4515, %4480
  %4518 = call float @dx.op.tertiary.f32(i32 46, float %4514, float %4481, float %4517)  ; FMad(a,b,c)
  %4519 = fmul fast float %4514, %4480
  %4520 = call float @dx.op.tertiary.f32(i32 46, float %4516, float %4481, float %4519)  ; FMad(a,b,c)
  %4521 = fadd fast float %4518, %4510
  %4522 = fadd fast float %4520, %4511
  %4523 = extractvalue %dx.types.CBufRet.f32 %4433, 3
  %4524 = bitcast float %4523 to i32
  %4525 = icmp eq i32 %4524, 0
  br i1 %4525, label %4564, label %4526

; <label>:4526                                    ; preds = %4429
  %4527 = add i32 %4524, 0
  %4528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4529 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4528, %dx.types.Handle %73, float %4521, float %4522, float undef, float undef, i32 0, i32 0, i32 undef, float %4484, float %4485, float undef, float %4488, float %4489, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4530 = extractvalue %dx.types.ResRet.f32 %4529, 0
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 1
  %4533 = extractvalue %dx.types.CBufRet.f32 %4531, 2
  %4534 = fsub fast float 1.000000e+00, %4139
  %4535 = call float @dx.op.binary.f32(i32 35, float %4534, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4536 = bitcast float %4139 to i32
  %4537 = sitofp i32 %4536 to float
  %4538 = fadd fast float %4537, 0xC1CFBF8940000000
  %4539 = fmul fast float %4533, %4538
  %4540 = fadd fast float %4539, 0x41CFBF8940000000
  %4541 = fptosi float %4540 to i32
  %4542 = bitcast i32 %4541 to float
  %4543 = bitcast float %4535 to i32
  %4544 = sitofp i32 %4543 to float
  %4545 = fadd fast float %4544, 0xC1CFBF8940000000
  %4546 = fmul fast float %4545, %4533
  %4547 = fadd fast float %4546, 0x41CFBF8940000000
  %4548 = fptosi float %4547 to i32
  %4549 = bitcast i32 %4548 to float
  %4550 = fmul fast float %4542, %4532
  %4551 = fmul fast float %4549, %4532
  %4552 = fsub fast float %4535, %4550
  %4553 = fadd fast float %4551, %4535
  %4554 = call float @dx.op.unary.f32(i32 7, float %4552)  ; Saturate(value)
  %4555 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4556 = fsub fast float %4530, %4554
  %4557 = fsub fast float %4555, %4554
  %4558 = bitcast float %4557 to i32
  %4559 = sub nsw i32 2129859010, %4558
  %4560 = bitcast i32 %4559 to float
  %4561 = fmul fast float %4560, %4556
  %4562 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  %4563 = fcmp fast olt float %4562, 0x3F70101020000000
  br i1 %4563, label %4702, label %4564

; <label>:4564                                    ; preds = %4526, %4429
  %4565 = phi float [ %4562, %4526 ], [ %4139, %4429 ]
  %4566 = fmul fast float %4565, %4432
  %4567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4568 = extractvalue %dx.types.CBufRet.i32 %4567, 1
  %4569 = extractvalue %dx.types.CBufRet.i32 %4567, 0
  %4570 = add i32 %4569, 0
  %4571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4572 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4571, %dx.types.Handle %72, float %4521, float %4522, float undef, float undef, i32 0, i32 0, i32 undef, float %4484, float %4485, float undef, float %4488, float %4489, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.ResRet.f32 %4572, 1
  %4575 = extractvalue %dx.types.ResRet.f32 %4572, 2
  %4576 = extractvalue %dx.types.ResRet.f32 %4572, 3
  %4577 = and i32 %4568, 255
  %4578 = uitofp i32 %4577 to float
  %4579 = lshr i32 %4568, 8
  %4580 = and i32 %4579, 255
  %4581 = uitofp i32 %4580 to float
  %4582 = fmul fast float %4576, %4578
  %4583 = fadd fast float %4582, %4581
  %4584 = fmul fast float %4583, 0x3F70101000000000
  %4585 = fadd fast float %4584, 0xBFB99999A0000000
  %4586 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4587 = fmul fast float %4586, 0x3FF1C71C80000000
  %4588 = call float @dx.op.binary.f32(i32 36, float %4584, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4589 = fsub fast float 1.000000e+00, %4587
  %4590 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4591 = fmul fast float %4590, %4573
  %4592 = fmul fast float %4590, %4574
  %4593 = fmul fast float %4590, %4575
  %4594 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  %4595 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4596 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4597 = fmul fast float %4587, %4573
  %4598 = fmul fast float %4587, %4574
  %4599 = fmul fast float %4587, %4575
  %4600 = fadd fast float %4597, %4588
  %4601 = fadd fast float %4598, %4588
  %4602 = fadd fast float %4599, %4588
  %4603 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4604 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4605 = call float @dx.op.unary.f32(i32 7, float %4602)  ; Saturate(value)
  %4606 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4607 = extractvalue %dx.types.CBufRet.i32 %4606, 3
  %4608 = extractvalue %dx.types.CBufRet.i32 %4606, 2
  %4609 = add i32 %4608, 0
  %4610 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4609, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4611 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4610, %dx.types.Handle %72, float %4521, float %4522, float undef, float undef, i32 0, i32 0, i32 undef, float %4484, float %4485, float undef, float %4488, float %4489, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4614 = extractvalue %dx.types.ResRet.f32 %4611, 2
  %4615 = extractvalue %dx.types.ResRet.f32 %4611, 3
  %4616 = and i32 %4607, 255
  %4617 = uitofp i32 %4616 to float
  %4618 = lshr i32 %4607, 8
  %4619 = and i32 %4618, 255
  %4620 = uitofp i32 %4619 to float
  %4621 = lshr i32 %4607, 16
  %4622 = and i32 %4621, 255
  %4623 = uitofp i32 %4622 to float
  %4624 = fmul fast float %4623, 0x3F70101000000000
  %4625 = fmul fast float %4612, %4617
  %4626 = fadd fast float %4625, %4620
  %4627 = fmul fast float %4626, 0x3F70101000000000
  %4628 = fadd fast float %4613, -5.000000e-01
  %4629 = fadd fast float %4615, -5.000000e-01
  %4630 = fmul fast float %4628, %4624
  %4631 = fmul fast float %4629, %4624
  %4632 = fadd fast float %4630, 5.000000e-01
  %4633 = fadd fast float %4631, 5.000000e-01
  %4634 = fmul fast float %4632, 2.000000e+00
  %4635 = fadd fast float %4634, -1.000000e+00
  %4636 = fmul fast float %4633, 2.000000e+00
  %4637 = fadd fast float %4636, -1.000000e+00
  %4638 = fadd fast float %4635, %4637
  %4639 = fmul fast float %4638, 5.000000e-01
  %4640 = fsub fast float %4635, %4637
  %4641 = fmul fast float %4640, 5.000000e-01
  %4642 = call float @dx.op.unary.f32(i32 6, float %4639)  ; FAbs(value)
  %4643 = fsub fast float 1.000000e+00, %4642
  %4644 = call float @dx.op.unary.f32(i32 6, float %4641)  ; FAbs(value)
  %4645 = fsub fast float %4643, %4644
  %4646 = call float @dx.op.dot3.f32(i32 55, float %4639, float %4641, float %4645, float %4639, float %4641, float %4645)  ; Dot3(ax,ay,az,bx,by,bz)
  %4647 = call float @dx.op.unary.f32(i32 25, float %4646)  ; Rsqrt(value)
  %4648 = fmul fast float %4639, %4647
  %4649 = fmul fast float %4641, %4647
  %4650 = select i1 %4477, i32 %4467, i32 %4468
  %4651 = select i1 %4475, i32 %4466, i32 %4650
  %4652 = sitofp i32 %4651 to float
  %4653 = fmul fast float %4645, %4652
  %4654 = fmul fast float %4653, %4647
  %4655 = select i1 %4477, float %4654, float %4649
  %4656 = select i1 %4477, float %4649, float %4654
  %4657 = select i1 %4475, float %4654, float %4648
  %4658 = select i1 %4475, float %4649, float %4655
  %4659 = select i1 %4475, float %4648, float %4656
  %4660 = fsub fast float %4594, %4424
  %4661 = fsub fast float %4595, %4425
  %4662 = fsub fast float %4596, %4426
  %4663 = fmul fast float %4660, %4566
  %4664 = fmul fast float %4661, %4566
  %4665 = fmul fast float %4662, %4566
  %4666 = fadd fast float %4663, %4424
  %4667 = fadd fast float %4664, %4425
  %4668 = fadd fast float %4665, %4426
  %4669 = fsub fast float %4603, %4421
  %4670 = fsub fast float %4604, %4422
  %4671 = fsub fast float %4605, %4423
  %4672 = fmul fast float %4669, %4566
  %4673 = fmul fast float %4670, %4566
  %4674 = fmul fast float %4671, %4566
  %4675 = fadd fast float %4672, %4421
  %4676 = fadd fast float %4673, %4422
  %4677 = fadd fast float %4674, %4423
  %4678 = fadd fast float %4657, %4418
  %4679 = fadd fast float %4658, %4419
  %4680 = fadd fast float %4659, %4420
  %4681 = call float @dx.op.dot3.f32(i32 55, float %4678, float %4679, float %4680, float %4678, float %4679, float %4680)  ; Dot3(ax,ay,az,bx,by,bz)
  %4682 = call float @dx.op.unary.f32(i32 25, float %4681)  ; Rsqrt(value)
  %4683 = fmul fast float %4678, %4682
  %4684 = fmul fast float %4679, %4682
  %4685 = fmul fast float %4680, %4682
  %4686 = fsub fast float %4683, %4418
  %4687 = fsub fast float %4684, %4419
  %4688 = fsub fast float %4685, %4420
  %4689 = fmul fast float %4686, %4566
  %4690 = fmul fast float %4687, %4566
  %4691 = fmul fast float %4688, %4566
  %4692 = fadd fast float %4689, %4418
  %4693 = fadd fast float %4690, %4419
  %4694 = fadd fast float %4691, %4420
  %4695 = call float @dx.op.binary.f32(i32 36, float %4428, float %4614)  ; FMin(a,b)
  %4696 = fsub fast float %4695, %4428
  %4697 = fmul fast float %4696, %4566
  %4698 = fadd fast float %4697, %4428
  %4699 = fsub fast float %4627, %4427
  %4700 = fmul fast float %4699, %4566
  %4701 = fadd fast float %4700, %4427
  br label %4702

; <label>:4702                                    ; preds = %4564, %4526, %4417, %4133
  %4703 = phi float [ %4692, %4564 ], [ %4418, %4526 ], [ %4418, %4417 ], [ %3691, %4133 ]
  %4704 = phi float [ %4693, %4564 ], [ %4419, %4526 ], [ %4419, %4417 ], [ %3692, %4133 ]
  %4705 = phi float [ %4694, %4564 ], [ %4420, %4526 ], [ %4420, %4417 ], [ %3693, %4133 ]
  %4706 = phi float [ %4675, %4564 ], [ %4421, %4526 ], [ %4421, %4417 ], [ %3727, %4133 ]
  %4707 = phi float [ %4676, %4564 ], [ %4422, %4526 ], [ %4422, %4417 ], [ %3728, %4133 ]
  %4708 = phi float [ %4677, %4564 ], [ %4423, %4526 ], [ %4423, %4417 ], [ %3729, %4133 ]
  %4709 = phi float [ %4666, %4564 ], [ %4424, %4526 ], [ %4424, %4417 ], [ %3742, %4133 ]
  %4710 = phi float [ %4667, %4564 ], [ %4425, %4526 ], [ %4425, %4417 ], [ %3743, %4133 ]
  %4711 = phi float [ %4668, %4564 ], [ %4426, %4526 ], [ %4426, %4417 ], [ %3744, %4133 ]
  %4712 = phi float [ %4701, %4564 ], [ %4427, %4526 ], [ %4427, %4417 ], [ %3730, %4133 ]
  %4713 = phi float [ %4698, %4564 ], [ %4428, %4526 ], [ %4428, %4417 ], [ %3703, %4133 ]
  %4714 = fcmp fast une float %4137, 0.000000e+00
  %4715 = call float @dx.op.dot3.f32(i32 55, float %163, float %164, float %165, float %163, float %164, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %4716 = call float @dx.op.unary.f32(i32 25, float %4715)  ; Rsqrt(value)
  br i1 %4714, label %4724, label %4717

; <label>:4717                                    ; preds = %4702
  %4718 = fmul fast float %4716, %163
  %4719 = fmul fast float %4716, %164
  %4720 = fmul fast float %4716, %165
  %4721 = fsub fast float -0.000000e+00, %4718
  %4722 = fsub fast float -0.000000e+00, %4719
  %4723 = fsub fast float -0.000000e+00, %4720
  br label %4891

; <label>:4724                                    ; preds = %4702
  %4725 = fmul fast float %163, %4716
  %4726 = fsub fast float -0.000000e+00, %4725
  %4727 = fmul fast float %164, %4716
  %4728 = fsub fast float -0.000000e+00, %4727
  %4729 = fmul fast float %165, %4716
  %4730 = fsub fast float -0.000000e+00, %4729
  %4731 = call float @dx.op.dot3.f32(i32 55, float %4726, float %4728, float %4730, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4732 = fmul fast float %4137, 2.500000e+00
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = fmul fast float %4137, 0x4013FFFFE0000000
  %4735 = fadd fast float %4734, 0xBFFFFFFFE0000000
  %4736 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4737 = fmul fast float %4137, 0x4004000020000000
  %4738 = fadd fast float %4737, 0xBFF8000040000000
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = fmul fast float %3709, 1.000000e+01
  %4741 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4742 = fmul fast float %4741, 2.000000e+00
  %4743 = fsub fast float 3.000000e+00, %4742
  %4744 = fmul fast float %4741, %4741
  %4745 = fmul fast float %4744, %4743
  %4746 = fsub fast float 1.000000e+00, %4745
  %4747 = fsub fast float 0x3FE3333340000000, %4712
  %4748 = fmul fast float %4747, 0x400AAAAAA0000000
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = fmul fast float %4746, %4749
  %4751 = fmul fast float %4709, 0x3FEA2B8620000000
  %4752 = fmul fast float %4710, 0x3FEA2B8620000000
  %4753 = fmul fast float %4711, 0x3FEA2B8620000000
  %4754 = fadd fast float %4751, 0x3FC81DFBA0000000
  %4755 = fmul fast float %4754, %4709
  %4756 = fadd fast float %4755, 0x3F910E6020000000
  %4757 = fadd fast float %4752, 0x3FC81DFBA0000000
  %4758 = fmul fast float %4757, %4710
  %4759 = fadd fast float %4758, 0x3F910E6020000000
  %4760 = fadd fast float %4753, 0x3FC81DFBA0000000
  %4761 = fmul fast float %4760, %4711
  %4762 = fadd fast float %4761, 0x3F910E6020000000
  %4763 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4764 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4765 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4766 = fsub fast float %4763, %4709
  %4767 = fsub fast float %4764, %4710
  %4768 = fsub fast float %4765, %4711
  %4769 = fmul fast float %4766, %4733
  %4770 = fmul fast float %4769, %4750
  %4771 = fmul fast float %4767, %4733
  %4772 = fmul fast float %4771, %4750
  %4773 = fmul fast float %4768, %4733
  %4774 = fmul fast float %4773, %4750
  %4775 = fadd fast float %4770, %4709
  %4776 = fadd fast float %4772, %4710
  %4777 = fadd fast float %4774, %4711
  %4778 = fmul fast float %4713, %4713
  %4779 = fmul fast float %4778, %4778
  %4780 = fadd fast float %4736, 1.000000e+00
  %4781 = fsub fast float %4780, %4750
  %4782 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4783 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4784 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4785 = fsub fast float 1.000000e+00, %4779
  %4786 = call float @dx.op.binary.f32(i32 36, float %4782, float %4785)  ; FMin(a,b)
  %4787 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4788 = call float @dx.op.binary.f32(i32 35, float %4786, float %4787)  ; FMax(a,b)
  %4789 = fadd fast float %4784, 0xBFE4CCCCC0000000
  %4790 = fmul fast float %4789, 0x4006DB6DA0000000
  %4791 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4792 = fmul fast float %4791, 2.000000e+00
  %4793 = fsub fast float 3.000000e+00, %4792
  %4794 = bitcast float %4706 to i32
  %4795 = ashr i32 %4794, 1
  %4796 = add nsw i32 %4795, 532487669
  %4797 = bitcast i32 %4796 to float
  %4798 = fsub fast float 1.000000e+00, %4797
  %4799 = bitcast float %4798 to i32
  %4800 = sub nsw i32 2129859010, %4799
  %4801 = bitcast i32 %4800 to float
  %4802 = fmul fast float %4801, 2.000000e+00
  %4803 = bitcast float %4707 to i32
  %4804 = ashr i32 %4803, 1
  %4805 = add nsw i32 %4804, 532487669
  %4806 = bitcast i32 %4805 to float
  %4807 = fsub fast float 1.000000e+00, %4806
  %4808 = bitcast float %4807 to i32
  %4809 = sub nsw i32 2129859010, %4808
  %4810 = bitcast i32 %4809 to float
  %4811 = fmul fast float %4810, 2.000000e+00
  %4812 = bitcast float %4708 to i32
  %4813 = ashr i32 %4812, 1
  %4814 = add nsw i32 %4813, 532487669
  %4815 = bitcast i32 %4814 to float
  %4816 = fsub fast float 1.000000e+00, %4815
  %4817 = bitcast float %4816 to i32
  %4818 = sub nsw i32 2129859010, %4817
  %4819 = bitcast i32 %4818 to float
  %4820 = fmul fast float %4819, 2.000000e+00
  %4821 = fsub fast float 0x4002A9FBE0000000, %4802
  %4822 = fadd fast float %4802, 0x3FD54FDF00000000
  %4823 = bitcast float %4822 to i32
  %4824 = sub nsw i32 2129859010, %4823
  %4825 = bitcast i32 %4824 to float
  %4826 = fmul fast float %4825, %4821
  %4827 = fmul fast float %4826, %4826
  %4828 = fsub fast float 0x4002A9FBE0000000, %4811
  %4829 = fadd fast float %4811, 0x3FD54FDF00000000
  %4830 = bitcast float %4829 to i32
  %4831 = sub nsw i32 2129859010, %4830
  %4832 = bitcast i32 %4831 to float
  %4833 = fmul fast float %4832, %4828
  %4834 = fmul fast float %4833, %4833
  %4835 = fsub fast float 0x4002A9FBE0000000, %4820
  %4836 = fadd fast float %4820, 0x3FD54FDF00000000
  %4837 = bitcast float %4836 to i32
  %4838 = sub nsw i32 2129859010, %4837
  %4839 = bitcast i32 %4838 to float
  %4840 = fmul fast float %4839, %4835
  %4841 = fmul fast float %4840, %4840
  %4842 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4827)  ; FMax(a,b)
  %4843 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4834)  ; FMax(a,b)
  %4844 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4841)  ; FMax(a,b)
  %4845 = fsub fast float 1.000000e+00, %4731
  %4846 = fadd fast float %4845, %4746
  %4847 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4848 = fsub fast float 1.000000e+00, %4118
  %4849 = fmul fast float %4788, %4848
  %4850 = fmul fast float %4791, %4791
  %4851 = fmul fast float %4850, %4849
  %4852 = fmul fast float %4851, %4793
  %4853 = fmul fast float %4848, 0xBFE99999A0000000
  %4854 = fmul fast float %4853, %4733
  %4855 = fmul fast float %4854, %4750
  %4856 = fadd fast float %4855, 1.000000e+00
  %4857 = fadd fast float %4712, -1.000000e+00
  %4858 = fmul fast float %4856, %4857
  %4859 = fadd fast float %4858, 1.000000e+00
  %4860 = fsub fast float %4842, %4706
  %4861 = fsub fast float %4843, %4707
  %4862 = fsub fast float %4844, %4708
  %4863 = fmul fast float %4852, %4860
  %4864 = fmul fast float %4852, %4861
  %4865 = fmul fast float %4852, %4862
  %4866 = fadd fast float %4863, %4706
  %4867 = fadd fast float %4864, %4707
  %4868 = fadd fast float %4865, %4708
  %4869 = fsub fast float %83, %4703
  %4870 = fsub fast float %84, %4704
  %4871 = fsub fast float %85, %4705
  %4872 = fmul fast float %4852, %4869
  %4873 = fmul fast float %4852, %4870
  %4874 = fmul fast float %4852, %4871
  %4875 = fadd fast float %4872, %4703
  %4876 = fadd fast float %4873, %4704
  %4877 = fadd fast float %4874, %4705
  %4878 = fmul fast float %4852, %4847
  %4879 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4880 = fsub fast float 1.000000e+00, %4879
  %4881 = fmul fast float %4878, %4880
  %4882 = fadd fast float %4881, %4879
  %4883 = fsub fast float 1.000000e+00, %4713
  %4884 = fmul fast float %4852, %4883
  %4885 = fadd fast float %4884, %4713
  %4886 = call float @dx.op.dot3.f32(i32 55, float %4875, float %4876, float %4877, float %4875, float %4876, float %4877)  ; Dot3(ax,ay,az,bx,by,bz)
  %4887 = call float @dx.op.unary.f32(i32 25, float %4886)  ; Rsqrt(value)
  %4888 = fmul fast float %4875, %4887
  %4889 = fmul fast float %4876, %4887
  %4890 = fmul fast float %4877, %4887
  br label %4891

; <label>:4891                                    ; preds = %4724, %4717
  %4892 = phi float [ %4723, %4717 ], [ %4730, %4724 ]
  %4893 = phi float [ %4722, %4717 ], [ %4728, %4724 ]
  %4894 = phi float [ %4721, %4717 ], [ %4726, %4724 ]
  %4895 = phi float [ %4720, %4717 ], [ %4729, %4724 ]
  %4896 = phi float [ %4719, %4717 ], [ %4727, %4724 ]
  %4897 = phi float [ %4718, %4717 ], [ %4725, %4724 ]
  %4898 = phi float [ %4703, %4717 ], [ %4888, %4724 ]
  %4899 = phi float [ %4704, %4717 ], [ %4889, %4724 ]
  %4900 = phi float [ %4705, %4717 ], [ %4890, %4724 ]
  %4901 = phi float [ %4706, %4717 ], [ %4866, %4724 ]
  %4902 = phi float [ %4707, %4717 ], [ %4867, %4724 ]
  %4903 = phi float [ %4708, %4717 ], [ %4868, %4724 ]
  %4904 = phi float [ %4709, %4717 ], [ %4775, %4724 ]
  %4905 = phi float [ %4710, %4717 ], [ %4776, %4724 ]
  %4906 = phi float [ %4711, %4717 ], [ %4777, %4724 ]
  %4907 = phi float [ %4712, %4717 ], [ %4882, %4724 ]
  %4908 = phi float [ %4713, %4717 ], [ %4885, %4724 ]
  %4909 = select i1 %202, float 0.000000e+00, float %4903
  %4910 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %4900, float %4894, float %4893, float %4892)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = call float @dx.op.dot3.f32(i32 55, float %4897, float %4896, float %4895, float %4898, float %4899, float %4900)  ; Dot3(ax,ay,az,bx,by,bz)
  %4913 = fmul fast float %4912, 2.000000e+00
  %4914 = fmul fast float %4913, %4898
  %4915 = fmul fast float %4913, %4899
  %4916 = fmul fast float %4913, %4900
  %4917 = fsub fast float %4897, %4914
  %4918 = fsub fast float %4896, %4915
  %4919 = fsub fast float %4895, %4916
  %4920 = call float @dx.op.binary.f32(i32 36, float %4908, float 1.000000e+00)  ; FMin(a,b)
  %4921 = fsub fast float 1.000000e+00, %4908
  %4922 = bitcast float %4921 to i32
  %4923 = sub nsw i32 2129859010, %4922
  %4924 = fsub fast float 1.000000e+00, %53
  %4925 = call float @dx.op.dot3.f32(i32 55, float %103, float %104, float %105, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4926 = call float @dx.op.binary.f32(i32 35, float %4925, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4927 = fdiv fast float %4924, %4926
  %4928 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %4900, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4929 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4930 = fmul fast float %4929, 5.000000e-01
  %4931 = fadd fast float %4930, 5.000000e-01
  %4932 = fmul fast float %4931, %53
  %4933 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %4900, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4934 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4935 = fmul fast float %4934, %4927
  %4936 = fadd fast float %4932, %4935
  %4937 = fsub fast float 5.000000e-01, %4930
  %4938 = fmul fast float %4937, %4904
  %4939 = fmul fast float %4937, %4905
  %4940 = fmul fast float %4937, %4906
  %4941 = fadd fast float %4936, %4938
  %4942 = fadd fast float %4936, %4939
  %4943 = fadd fast float %4936, %4940
  %4944 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = fmul fast float %4945, 5.000000e-01
  %4947 = fadd fast float %4946, 5.000000e-01
  %4948 = fmul fast float %4947, %53
  %4949 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = fmul fast float %4950, %4927
  %4952 = fadd fast float %4948, %4951
  %4953 = fsub fast float 5.000000e-01, %4946
  %4954 = fmul fast float %4953, %4904
  %4955 = fmul fast float %4953, %4905
  %4956 = fmul fast float %4953, %4906
  %4957 = fadd fast float %4952, %4954
  %4958 = fadd fast float %4952, %4955
  %4959 = fadd fast float %4952, %4956
  %4960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.f32 %4960, 0
  %4962 = call float @dx.op.binary.f32(i32 36, float %4904, float %4961)  ; FMin(a,b)
  %4963 = fsub fast float 1.000000e+00, %4920
  %4964 = fmul fast float %4962, %4963
  %4965 = fsub fast float 1.000000e+00, %4964
  %4966 = bitcast float %4965 to i32
  %4967 = sub nsw i32 2129859010, %4966
  %4968 = bitcast i32 %4967 to float
  %4969 = call float @dx.op.binary.f32(i32 36, float %4905, float %4961)  ; FMin(a,b)
  %4970 = fmul fast float %4969, %4963
  %4971 = fsub fast float 1.000000e+00, %4970
  %4972 = bitcast float %4971 to i32
  %4973 = sub nsw i32 2129859010, %4972
  %4974 = bitcast i32 %4973 to float
  %4975 = call float @dx.op.binary.f32(i32 36, float %4906, float %4961)  ; FMin(a,b)
  %4976 = fmul fast float %4975, %4963
  %4977 = fsub fast float 1.000000e+00, %4976
  %4978 = bitcast float %4977 to i32
  %4979 = sub nsw i32 2129859010, %4978
  %4980 = bitcast i32 %4979 to float
  %4981 = fmul fast float %4920, %54
  %4982 = fmul fast float %4981, %4941
  %4983 = fmul fast float %4982, %4968
  %4984 = fmul fast float %4920, %55
  %4985 = fmul fast float %4984, %4942
  %4986 = fmul fast float %4985, %4974
  %4987 = fmul fast float %4920, %56
  %4988 = fmul fast float %4987, %4943
  %4989 = fmul fast float %4988, %4980
  %4990 = call float @dx.op.binary.f32(i32 36, float %4901, float %4961)  ; FMin(a,b)
  %4991 = fmul fast float %4990, %4963
  %4992 = fsub fast float 1.000000e+00, %4991
  %4993 = bitcast float %4992 to i32
  %4994 = sub nsw i32 2129859010, %4993
  %4995 = bitcast i32 %4994 to float
  %4996 = call float @dx.op.binary.f32(i32 36, float %4902, float %4961)  ; FMin(a,b)
  %4997 = fmul fast float %4996, %4963
  %4998 = fsub fast float 1.000000e+00, %4997
  %4999 = bitcast float %4998 to i32
  %5000 = sub nsw i32 2129859010, %4999
  %5001 = bitcast i32 %5000 to float
  %5002 = call float @dx.op.binary.f32(i32 36, float %4909, float %4961)  ; FMin(a,b)
  %5003 = fmul fast float %5002, %4963
  %5004 = fsub fast float 1.000000e+00, %5003
  %5005 = bitcast float %5004 to i32
  %5006 = sub nsw i32 2129859010, %5005
  %5007 = bitcast i32 %5006 to float
  %5008 = fmul fast float %4981, %4957
  %5009 = fmul fast float %5008, %4995
  %5010 = fmul fast float %4984, %4958
  %5011 = fmul fast float %5010, %5001
  %5012 = fmul fast float %4987, %4959
  %5013 = fmul fast float %5012, %5007
  %5014 = call float @dx.op.dot3.f32(i32 55, float %4983, float %4986, float %4989, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5015 = select i1 %202, float 0.000000e+00, float %4983
  %5016 = select i1 %202, float %5014, float %4986
  %5017 = select i1 %202, float 0.000000e+00, float %4989
  %5018 = call float @dx.op.dot3.f32(i32 55, float %5009, float %5011, float %5013, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5019 = select i1 %202, float 0.000000e+00, float %5009
  %5020 = select i1 %202, float %5018, float %5011
  %5021 = select i1 %202, float 0.000000e+00, float %5013
  %5022 = fmul fast float %4911, 9.843750e-01
  %5023 = fmul fast float %4907, 9.843750e-01
  %5024 = fadd fast float %5022, 7.812500e-03
  %5025 = fadd fast float %5023, 7.812500e-03
  %5026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5024, float %5025, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5027 = extractvalue %dx.types.ResRet.f32 %5026, 2
  %5028 = extractvalue %dx.types.ResRet.f32 %5026, 3
  %5029 = fmul fast float %5027, %4901
  %5030 = fmul fast float %5027, %4902
  %5031 = fmul fast float %5027, %4909
  %5032 = fadd fast float %5029, %5028
  %5033 = fadd fast float %5030, %5028
  %5034 = fadd fast float %5031, %5028
  %5035 = fcmp fast ogt float %3704, 0.000000e+00
  br i1 %5035, label %5036, label %5062

; <label>:5036                                    ; preds = %4891
  %5037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3704, float %4911, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5038 = extractvalue %dx.types.ResRet.f32 %5037, 0
  %5039 = extractvalue %dx.types.ResRet.f32 %5037, 1
  %5040 = extractvalue %dx.types.ResRet.f32 %5037, 2
  %5041 = fadd fast float %5038, -5.000000e-01
  %5042 = fadd fast float %5039, -5.000000e-01
  %5043 = fadd fast float %5040, -5.000000e-01
  %5044 = fsub fast float 1.000000e+00, %4901
  %5045 = fsub fast float 1.000000e+00, %4902
  %5046 = fsub fast float 1.000000e+00, %4909
  %5047 = fmul fast float %4901, 4.000000e+00
  %5048 = fmul fast float %5047, %5044
  %5049 = fmul fast float %5048, %5041
  %5050 = fmul fast float %4902, 4.000000e+00
  %5051 = fmul fast float %5050, %5045
  %5052 = fmul fast float %5051, %5042
  %5053 = fmul fast float %4909, 4.000000e+00
  %5054 = fmul fast float %5053, %5046
  %5055 = fmul fast float %5054, %5043
  %5056 = fadd fast float %5049, %5032
  %5057 = fadd fast float %5052, %5033
  %5058 = fadd fast float %5055, %5034
  %5059 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5060 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5061 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  br label %5062

; <label>:5062                                    ; preds = %5036, %4891
  %5063 = phi float [ %5059, %5036 ], [ %5032, %4891 ]
  %5064 = phi float [ %5060, %5036 ], [ %5033, %4891 ]
  %5065 = phi float [ %5061, %5036 ], [ %5034, %4891 ]
  %5066 = call float @dx.op.binary.f32(i32 35, float %5064, float %5065)  ; FMax(a,b)
  %5067 = call float @dx.op.binary.f32(i32 35, float %5063, float %5066)  ; FMax(a,b)
  %5068 = fsub fast float 1.000000e+00, %5067
  %5069 = fmul fast float %5068, %5015
  %5070 = fmul fast float %5068, %5016
  %5071 = fmul fast float %5068, %5017
  %5072 = call float @dx.op.dot3.f32(i32 55, float %4904, float %4905, float %4906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5073 = fcmp fast ogt float %5072, 0x3E7FF19E20000000
  %5074 = fdiv fast float 1.000000e+00, %5072
  %5075 = select i1 %5073, float %5074, float 0.000000e+00
  %5076 = fmul fast float %5075, %4904
  %5077 = fmul fast float %5075, %4905
  %5078 = fmul fast float %5075, %4906
  %5079 = fadd fast float %5076, -1.000000e+00
  %5080 = fadd fast float %5077, -1.000000e+00
  %5081 = fadd fast float %5078, -1.000000e+00
  %5082 = fmul fast float %5079, 5.000000e-01
  %5083 = fmul fast float %5080, 5.000000e-01
  %5084 = fmul fast float %5081, 5.000000e-01
  %5085 = fadd fast float %5082, 1.000000e+00
  %5086 = fadd fast float %5083, 1.000000e+00
  %5087 = fadd fast float %5084, 1.000000e+00
  %5088 = fmul fast float %5063, %5019
  %5089 = fmul fast float %5064, %5020
  %5090 = fmul fast float %5065, %5021
  %5091 = fsub fast float 1.000000e+00, %4911
  %5092 = bitcast float %5091 to i32
  %5093 = sitofp i32 %5092 to float
  %5094 = fmul fast float %5093, 5.000000e+00
  %5095 = fadd fast float %5094, 0xC1EFBF8940000000
  %5096 = fptosi float %5095 to i32
  %5097 = bitcast i32 %5096 to float
  %5098 = fmul fast float %5097, %3705
  %5099 = fmul fast float %5015, %5098
  %5100 = fmul fast float %5099, %5068
  %5101 = fmul fast float %5100, %5085
  %5102 = fmul fast float %5016, %5098
  %5103 = fmul fast float %5102, %5068
  %5104 = fmul fast float %5103, %5086
  %5105 = fmul fast float %5017, %5098
  %5106 = fmul fast float %5105, %5068
  %5107 = fmul fast float %5106, %5087
  %5108 = fmul fast float %5069, %3701
  %5109 = fmul fast float %5070, %3701
  %5110 = fmul fast float %5071, %3701
  %5111 = fadd fast float %5088, %3694
  %5112 = fadd fast float %5111, %5101
  %5113 = fmul fast float %5112, %3701
  %5114 = fadd fast float %5089, %3695
  %5115 = fadd fast float %5114, %5104
  %5116 = fmul fast float %5115, %3701
  %5117 = fadd fast float %5090, %3696
  %5118 = fadd fast float %5117, %5107
  %5119 = fmul fast float %5118, %3701
  %5120 = bitcast i32 %4923 to float
  %5121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.f32 %5121, 3
  %5123 = fcmp fast oeq float %5122, 0.000000e+00
  br i1 %5123, label %5351, label %5124

; <label>:5124                                    ; preds = %5062
  %5125 = extractvalue %dx.types.CBufRet.f32 %5121, 0
  %5126 = extractvalue %dx.types.CBufRet.f32 %5121, 1
  %5127 = extractvalue %dx.types.CBufRet.f32 %5121, 2
  %5128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.f32 %5128, 0
  %5130 = extractvalue %dx.types.CBufRet.f32 %5128, 1
  %5131 = extractvalue %dx.types.CBufRet.f32 %5128, 2
  %5132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5133 = extractvalue %dx.types.CBufRet.f32 %5132, 0
  %5134 = extractvalue %dx.types.CBufRet.f32 %5132, 1
  %5135 = call float @dx.op.dot3.f32(i32 55, float %5129, float %5130, float %5131, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5136 = select i1 %202, float %5133, float %5129
  %5137 = select i1 %202, float %5135, float %5130
  %5138 = select i1 %202, float %5134, float %5131
  %5139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5139, 1
  %5141 = fcmp fast une float %5140, 0.000000e+00
  br i1 %5141, label %5142, label %5159

; <label>:5142                                    ; preds = %5124
  %5143 = fptoui float %76 to i32
  %5144 = fptoui float %77 to i32
  %5145 = lshr i32 %5143, 4
  %5146 = lshr i32 %5144, 4
  %5147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5148 = extractvalue %dx.types.CBufRet.f32 %5147, 0
  %5149 = fptoui float %5148 to i32
  %5150 = add i32 %5149, 15
  %5151 = lshr i32 %5150, 4
  %5152 = mul i32 %5151, %5146
  %5153 = add i32 %5152, %5145
  %5154 = shl i32 %5153, 3
  %5155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5154, i32 undef)  ; BufferLoad(srv,index,wot)
  %5156 = extractvalue %dx.types.ResRet.i32 %5155, 0
  %5157 = and i32 %5156, -268435456
  %5158 = icmp eq i32 %5157, -1342177280
  br i1 %5158, label %5169, label %5159

; <label>:5159                                    ; preds = %5142, %5124
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 3
  %5163 = fmul fast float %5161, %76
  %5164 = fmul fast float %5162, %77
  %5165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5163, float %5164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5166 = extractvalue %dx.types.ResRet.f32 %5165, 0
  %5167 = extractvalue %dx.types.ResRet.f32 %5165, 1
  %5168 = extractvalue %dx.types.ResRet.f32 %5165, 2
  br label %5169

; <label>:5169                                    ; preds = %5159, %5142
  %5170 = phi float [ %5166, %5159 ], [ 0.000000e+00, %5142 ]
  %5171 = phi float [ %5167, %5159 ], [ 0.000000e+00, %5142 ]
  %5172 = phi float [ %5168, %5159 ], [ 0.000000e+00, %5142 ]
  %5173 = call float @dx.op.binary.f32(i32 36, float %5171, float %5172)  ; FMin(a,b)
  %5174 = call float @dx.op.binary.f32(i32 36, float %5170, float %5173)  ; FMin(a,b)
  %5175 = fcmp fast ogt float %5174, 0.000000e+00
  br i1 %5175, label %5176, label %5351, !dx.controlflow.hints !74

; <label>:5176                                    ; preds = %5169
  %5177 = fmul fast float %5170, %5136
  %5178 = fmul fast float %5171, %5137
  %5179 = fmul fast float %5172, %5138
  %5180 = fsub fast float %5125, %4897
  %5181 = fsub fast float %5126, %4896
  %5182 = fsub fast float %5127, %4895
  %5183 = call float @dx.op.dot3.f32(i32 55, float %5180, float %5181, float %5182, float %5180, float %5181, float %5182)  ; Dot3(ax,ay,az,bx,by,bz)
  %5184 = call float @dx.op.unary.f32(i32 25, float %5183)  ; Rsqrt(value)
  %5185 = fmul fast float %5184, %5180
  %5186 = fmul fast float %5184, %5181
  %5187 = fmul fast float %5184, %5182
  %5188 = call float @dx.op.dot3.f32(i32 55, float %5125, float %5126, float %5127, float %4898, float %4899, float %4900)  ; Dot3(ax,ay,az,bx,by,bz)
  %5189 = call float @dx.op.dot3.f32(i32 55, float %4894, float %4893, float %4892, float %5185, float %5186, float %5187)  ; Dot3(ax,ay,az,bx,by,bz)
  %5190 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5191 = fmul fast float %5190, %5190
  %5192 = fmul fast float %5191, %5120
  %5193 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5194 = fmul fast float %5193, %5190
  %5195 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %4900, float %5185, float %5186, float %5187)  ; Dot3(ax,ay,az,bx,by,bz)
  %5196 = fmul fast float %5195, %5195
  %5197 = call float @dx.op.unary.f32(i32 6, float %5188)  ; FAbs(value)
  %5198 = fsub fast float 1.000000e+00, %4907
  %5199 = call float @dx.op.binary.f32(i32 35, float %5198, float 0x3F847AE140000000)  ; FMax(a,b)
  %5200 = fmul fast float %5199, %5199
  %5201 = fmul fast float %5200, %5200
  %5202 = fsub fast float 1.000000e+00, %5201
  %5203 = fmul fast float %4911, %4911
  %5204 = fmul fast float %5203, %5202
  %5205 = fadd fast float %5204, %5201
  %5206 = bitcast float %5205 to i32
  %5207 = ashr i32 %5206, 1
  %5208 = add nsw i32 %5207, 532487669
  %5209 = bitcast i32 %5208 to float
  %5210 = fadd fast float %5209, %4911
  %5211 = fmul fast float %5201, %5196
  %5212 = fsub fast float 1.000000e+00, %5196
  %5213 = fadd fast float %5212, %5211
  %5214 = fmul fast float %5197, %5197
  %5215 = fmul fast float %5214, %5202
  %5216 = fadd fast float %5215, %5201
  %5217 = bitcast float %5216 to i32
  %5218 = ashr i32 %5217, 1
  %5219 = add nsw i32 %5218, 532487669
  %5220 = bitcast i32 %5219 to float
  %5221 = fadd fast float %5220, %5197
  %5222 = fmul fast float %5213, %5213
  %5223 = fmul fast float %5222, %5210
  %5224 = fmul fast float %5223, %5221
  %5225 = fdiv fast float 0x3FF0A00000000000, %5224
  %5226 = fmul fast float %5225, %5201
  %5227 = call float @dx.op.unary.f32(i32 6, float %5189)  ; FAbs(value)
  %5228 = fsub fast float 1.000000e+00, %5227
  %5229 = bitcast float %5228 to i32
  %5230 = sitofp i32 %5229 to float
  %5231 = fmul fast float %5230, 5.000000e+00
  %5232 = fadd fast float %5231, 0xC1EFBF8940000000
  %5233 = fptosi float %5232 to i32
  %5234 = bitcast i32 %5233 to float
  %5235 = fsub fast float 1.000000e+00, %4901
  %5236 = fsub fast float 1.000000e+00, %4902
  %5237 = fsub fast float 1.000000e+00, %4909
  %5238 = fmul fast float %5234, %5235
  %5239 = fmul fast float %5234, %5236
  %5240 = fmul fast float %5234, %5237
  %5241 = fadd fast float %5238, %4901
  %5242 = fadd fast float %5239, %4902
  %5243 = fadd fast float %5240, %4909
  br i1 %5035, label %5244, label %5267

; <label>:5244                                    ; preds = %5176
  %5245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3704, float %5227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5246 = extractvalue %dx.types.ResRet.f32 %5245, 0
  %5247 = extractvalue %dx.types.ResRet.f32 %5245, 1
  %5248 = extractvalue %dx.types.ResRet.f32 %5245, 2
  %5249 = fadd fast float %5246, -5.000000e-01
  %5250 = fadd fast float %5247, -5.000000e-01
  %5251 = fadd fast float %5248, -5.000000e-01
  %5252 = fmul fast float %4901, 4.000000e+00
  %5253 = fmul fast float %5252, %5235
  %5254 = fmul fast float %5253, %5249
  %5255 = fmul fast float %4902, 4.000000e+00
  %5256 = fmul fast float %5255, %5236
  %5257 = fmul fast float %5256, %5250
  %5258 = fmul fast float %4909, 4.000000e+00
  %5259 = fmul fast float %5258, %5237
  %5260 = fmul fast float %5259, %5251
  %5261 = fadd fast float %5254, %5241
  %5262 = fadd fast float %5257, %5242
  %5263 = fadd fast float %5260, %5243
  %5264 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5265 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5266 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  br label %5267

; <label>:5267                                    ; preds = %5244, %5176
  %5268 = phi float [ %5264, %5244 ], [ %5241, %5176 ]
  %5269 = phi float [ %5265, %5244 ], [ %5242, %5176 ]
  %5270 = phi float [ %5266, %5244 ], [ %5243, %5176 ]
  %5271 = fmul fast float %5188, 9.843750e-01
  %5272 = fadd fast float %5271, 7.812500e-03
  %5273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5272, float %5025, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5274 = extractvalue %dx.types.ResRet.f32 %5273, 2
  %5275 = extractvalue %dx.types.ResRet.f32 %5273, 3
  %5276 = fmul fast float %5274, %4901
  %5277 = fmul fast float %5274, %4902
  %5278 = fmul fast float %5274, %4909
  %5279 = fadd fast float %5276, %5275
  %5280 = fadd fast float %5277, %5275
  %5281 = fadd fast float %5278, %5275
  br i1 %5035, label %5282, label %5305

; <label>:5282                                    ; preds = %5267
  %5283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3704, float %5188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5284 = extractvalue %dx.types.ResRet.f32 %5283, 0
  %5285 = extractvalue %dx.types.ResRet.f32 %5283, 1
  %5286 = extractvalue %dx.types.ResRet.f32 %5283, 2
  %5287 = fadd fast float %5284, -5.000000e-01
  %5288 = fadd fast float %5285, -5.000000e-01
  %5289 = fadd fast float %5286, -5.000000e-01
  %5290 = fmul fast float %4901, 4.000000e+00
  %5291 = fmul fast float %5290, %5235
  %5292 = fmul fast float %5291, %5287
  %5293 = fmul fast float %4902, 4.000000e+00
  %5294 = fmul fast float %5293, %5236
  %5295 = fmul fast float %5294, %5288
  %5296 = fmul fast float %4909, 4.000000e+00
  %5297 = fmul fast float %5296, %5237
  %5298 = fmul fast float %5297, %5289
  %5299 = fadd fast float %5292, %5279
  %5300 = fadd fast float %5295, %5280
  %5301 = fadd fast float %5298, %5281
  %5302 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5303 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5304 = call float @dx.op.unary.f32(i32 7, float %5301)  ; Saturate(value)
  br label %5305

; <label>:5305                                    ; preds = %5282, %5267
  %5306 = phi float [ %5302, %5282 ], [ %5279, %5267 ]
  %5307 = phi float [ %5303, %5282 ], [ %5280, %5267 ]
  %5308 = phi float [ %5304, %5282 ], [ %5281, %5267 ]
  %5309 = call float @dx.op.binary.f32(i32 35, float %5307, float %5308)  ; FMax(a,b)
  %5310 = call float @dx.op.binary.f32(i32 35, float %5306, float %5309)  ; FMax(a,b)
  %5311 = fsub fast float 1.000000e+00, %5310
  %5312 = fmul fast float %5268, %5226
  %5313 = fmul fast float %5269, %5226
  %5314 = fmul fast float %5270, %5226
  %5315 = fsub fast float 1.000000e+00, %5189
  %5316 = bitcast float %5315 to i32
  %5317 = sitofp i32 %5316 to float
  %5318 = fmul fast float %5317, 5.000000e+00
  %5319 = fadd fast float %5318, 0xC1EFBF8940000000
  %5320 = fptosi float %5319 to i32
  %5321 = bitcast i32 %5320 to float
  %5322 = fmul fast float %5321, %3705
  %5323 = fmul fast float %5311, %5322
  %5324 = fmul fast float %5323, %5085
  %5325 = fmul fast float %5323, %5086
  %5326 = fmul fast float %5323, %5087
  %5327 = fadd fast float %5324, %5312
  %5328 = fadd fast float %5325, %5313
  %5329 = fadd fast float %5326, %5314
  %5330 = fmul fast float %5194, %5177
  %5331 = fmul fast float %5330, %5311
  %5332 = fmul fast float %5194, %5178
  %5333 = fmul fast float %5332, %5311
  %5334 = fmul fast float %5194, %5179
  %5335 = fmul fast float %5334, %5311
  %5336 = fmul fast float %5330, %5327
  %5337 = fmul fast float %5332, %5328
  %5338 = fmul fast float %5334, %5329
  %5339 = fadd fast float %5331, %5069
  %5340 = fmul fast float %5339, %3701
  %5341 = fadd fast float %5333, %5070
  %5342 = fmul fast float %5341, %3701
  %5343 = fadd fast float %5335, %5071
  %5344 = fmul fast float %5343, %3701
  %5345 = fadd fast float %5336, %5112
  %5346 = fmul fast float %5345, %3701
  %5347 = fadd fast float %5337, %5115
  %5348 = fmul fast float %5347, %3701
  %5349 = fadd fast float %5338, %5118
  %5350 = fmul fast float %5349, %3701
  br label %5351

; <label>:5351                                    ; preds = %5305, %5169, %5062
  %5352 = phi float [ %5113, %5062 ], [ %5113, %5169 ], [ %5346, %5305 ]
  %5353 = phi float [ %5116, %5062 ], [ %5116, %5169 ], [ %5348, %5305 ]
  %5354 = phi float [ %5119, %5062 ], [ %5119, %5169 ], [ %5350, %5305 ]
  %5355 = phi float [ %5108, %5062 ], [ %5108, %5169 ], [ %5340, %5305 ]
  %5356 = phi float [ %5109, %5062 ], [ %5109, %5169 ], [ %5342, %5305 ]
  %5357 = phi float [ %5110, %5062 ], [ %5110, %5169 ], [ %5344, %5305 ]
  %5358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5359 = extractvalue %dx.types.CBufRet.i32 %5358, 0
  %5360 = icmp eq i32 %5359, 0
  br i1 %5360, label %5795, label %5361

; <label>:5361                                    ; preds = %5351
  %5362 = fptoui float %76 to i32
  %5363 = fptoui float %77 to i32
  %5364 = lshr i32 %5362, 4
  %5365 = lshr i32 %5363, 4
  %5366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5367 = extractvalue %dx.types.CBufRet.i32 %5366, 0
  %5368 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5365, i32 %5367, i32 %5364)  ; UMad(a,b,c)
  %5369 = add nsw i32 %5359, -1
  %5370 = call i32 @dx.op.binary.i32(i32 37, i32 %5369, i32 0)  ; IMax(a,b)
  %5371 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %5372 = fptoui float %5371 to i32
  %5373 = lshr i32 %5372, 5
  %5374 = call i32 @dx.op.binary.i32(i32 40, i32 %5373, i32 8191)  ; UMin(a,b)
  %5375 = shl i32 %5374, 2
  %5376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5375, i32 undef)  ; BufferLoad(srv,index,wot)
  %5377 = extractvalue %dx.types.ResRet.i32 %5376, 0
  %5378 = lshr i32 %5377, 16
  %5379 = and i32 %5377, 65535
  %5380 = lshr i32 %5377, 21
  %5381 = lshr i32 %5379, 5
  %5382 = call i32 @dx.op.binary.i32(i32 40, i32 %5381, i32 %5370)  ; UMin(a,b)
  %5383 = icmp ugt i32 %5380, %5382
  br i1 %5383, label %5795, label %5384

; <label>:5384                                    ; preds = %5361
  br label %5385

; <label>:5385                                    ; preds = %5785, %5384
  %5386 = phi i32 [ %5792, %5785 ], [ %5380, %5384 ]
  %5387 = phi float [ %5786, %5785 ], [ %5352, %5384 ]
  %5388 = phi float [ %5787, %5785 ], [ %5353, %5384 ]
  %5389 = phi float [ %5788, %5785 ], [ %5354, %5384 ]
  %5390 = phi float [ %5789, %5785 ], [ %5355, %5384 ]
  %5391 = phi float [ %5790, %5785 ], [ %5356, %5384 ]
  %5392 = phi float [ %5791, %5785 ], [ %5357, %5384 ]
  %5393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.i32 %5393, 0
  %5395 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5368, i32 %5394, i32 %5386)  ; UMad(a,b,c)
  %5396 = shl i32 %5395, 2
  %5397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5396, i32 undef)  ; BufferLoad(srv,index,wot)
  %5398 = extractvalue %dx.types.ResRet.i32 %5397, 0
  %5399 = shl i32 %5386, 5
  %5400 = sub nsw i32 %5378, %5399
  %5401 = call i32 @dx.op.binary.i32(i32 37, i32 %5400, i32 0)  ; IMax(a,b)
  %5402 = call i32 @dx.op.binary.i32(i32 38, i32 %5401, i32 31)  ; IMin(a,b)
  %5403 = sub nsw i32 1, %5378
  %5404 = add nsw i32 %5403, %5379
  %5405 = call i32 @dx.op.binary.i32(i32 37, i32 %5404, i32 0)  ; IMax(a,b)
  %5406 = call i32 @dx.op.binary.i32(i32 38, i32 %5405, i32 32)  ; IMin(a,b)
  %5407 = and i32 %5406, 31
  %5408 = shl i32 -1, %5407
  %5409 = xor i32 %5408, -1
  %5410 = and i32 %5402, 31
  %5411 = shl i32 %5409, %5410
  %5412 = icmp eq i32 %5406, 32
  %5413 = select i1 %5412, i32 -1, i32 %5411
  %5414 = and i32 %5413, %5398
  %5415 = icmp eq i32 %5414, 0
  br i1 %5415, label %5785, label %5416

; <label>:5416                                    ; preds = %5385
  br label %5417

; <label>:5417                                    ; preds = %5497, %5416
  %5418 = phi i32 [ %5429, %5497 ], [ %5414, %5416 ]
  %5419 = phi float [ %5498, %5497 ], [ %5387, %5416 ]
  %5420 = phi float [ %5499, %5497 ], [ %5388, %5416 ]
  %5421 = phi float [ %5500, %5497 ], [ %5389, %5416 ]
  %5422 = phi float [ %5501, %5497 ], [ %5390, %5416 ]
  %5423 = phi float [ %5502, %5497 ], [ %5391, %5416 ]
  %5424 = phi float [ %5503, %5497 ], [ %5392, %5416 ]
  %5425 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5418)  ; FirstbitLo(value)
  %5426 = add i32 %5425, %5399
  %5427 = and i32 %5425, 31
  %5428 = shl i32 1, %5427
  %5429 = xor i32 %5428, %5418
  %5430 = mul i32 %5426, 112
  %5431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5432 = extractvalue %dx.types.ResRet.f32 %5431, 0
  %5433 = extractvalue %dx.types.ResRet.f32 %5431, 1
  %5434 = extractvalue %dx.types.ResRet.f32 %5431, 2
  %5435 = or i32 %5430, 12
  %5436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5435, i32 undef)  ; BufferLoad(srv,index,wot)
  %5437 = extractvalue %dx.types.ResRet.f32 %5436, 0
  %5438 = add i32 %5430, 44
  %5439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5438, i32 undef)  ; BufferLoad(srv,index,wot)
  %5440 = extractvalue %dx.types.ResRet.f32 %5439, 0
  %5441 = add i32 %5430, 48
  %5442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5441, i32 undef)  ; BufferLoad(srv,index,wot)
  %5443 = extractvalue %dx.types.ResRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.ResRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.ResRet.f32 %5442, 2
  %5446 = add i32 %5430, 80
  %5447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5446, i32 undef)  ; BufferLoad(srv,index,wot)
  %5448 = extractvalue %dx.types.ResRet.f32 %5447, 1
  %5449 = extractvalue %dx.types.ResRet.f32 %5447, 2
  %5450 = call float @dx.op.dot3.f32(i32 55, float %5432, float %5433, float %5434, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5451 = select i1 %202, float %5448, float %5432
  %5452 = select i1 %202, float %5450, float %5433
  %5453 = select i1 %202, float %5449, float %5434
  %5454 = fsub fast float %5443, %163
  %5455 = fsub fast float %5444, %164
  %5456 = fsub fast float %5445, %165
  %5457 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5456, float %5454, float %5455, float %5456)  ; Dot3(ax,ay,az,bx,by,bz)
  %5458 = call float @dx.op.unary.f32(i32 24, float %5457)  ; Sqrt(value)
  %5459 = fdiv fast float 1.000000e+00, %5458
  %5460 = fmul fast float %5459, %5454
  %5461 = fmul fast float %5459, %5455
  %5462 = fmul fast float %5459, %5456
  %5463 = fadd fast float %5458, %5437
  %5464 = fdiv fast float 1.000000e+00, %5463
  %5465 = fmul float %5440, %5464
  %5466 = fmul float %5465, %5465
  %5467 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5468 = and i32 %5428, %5414
  %5469 = icmp eq i32 %5468, 0
  br i1 %5469, label %5492, label %5470, !dx.controlflow.hints !75

; <label>:5470                                    ; preds = %5417
  %5471 = lshr i32 %5362, 5
  %5472 = lshr i32 %5363, 5
  %5473 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5471, i32 %5472, i32 %5426, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5474 = extractvalue %dx.types.ResRet.i32 %5473, 0
  %5475 = and i32 %5474, 3
  %5476 = icmp eq i32 %5475, 0
  %5477 = select i1 %5476, float 1.000000e+00, float 0.000000e+00
  %5478 = icmp eq i32 %5475, 3
  br i1 %5478, label %5479, label %5492

; <label>:5479                                    ; preds = %5470
  %5480 = lshr i32 %5474, 10
  %5481 = and i32 %5480, 8160
  %5482 = and i32 %5363, 31
  %5483 = or i32 %5481, %5482
  %5484 = lshr i32 %5474, 1
  %5485 = and i32 %5484, 16352
  %5486 = and i32 %5362, 31
  %5487 = or i32 %5485, %5486
  %5488 = lshr i32 %5474, 23
  %5489 = and i32 %5488, 255
  %5490 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5487, i32 %5483, i32 %5489, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5491 = extractvalue %dx.types.ResRet.f32 %5490, 0
  br label %5492

; <label>:5492                                    ; preds = %5479, %5470, %5417
  %5493 = phi float [ %5491, %5479 ], [ %5477, %5470 ], [ 0.000000e+00, %5417 ]
  %5494 = call float @dx.op.binary.f32(i32 36, float %5493, float %5493)  ; FMin(a,b)
  %5495 = call float @dx.op.binary.f32(i32 36, float %5493, float %5494)  ; FMin(a,b)
  %5496 = fcmp fast ogt float %5495, 0.000000e+00
  br i1 %5496, label %5505, label %5497, !dx.controlflow.hints !76

; <label>:5497                                    ; preds = %5741, %5492
  %5498 = phi float [ %5419, %5492 ], [ %5781, %5741 ]
  %5499 = phi float [ %5420, %5492 ], [ %5782, %5741 ]
  %5500 = phi float [ %5421, %5492 ], [ %5783, %5741 ]
  %5501 = phi float [ %5422, %5492 ], [ %5775, %5741 ]
  %5502 = phi float [ %5423, %5492 ], [ %5776, %5741 ]
  %5503 = phi float [ %5424, %5492 ], [ %5777, %5741 ]
  %5504 = icmp eq i32 %5418, %5428
  br i1 %5504, label %5784, label %5417

; <label>:5505                                    ; preds = %5492
  %5506 = fmul fast float %5493, %5451
  %5507 = fmul fast float %5493, %5452
  %5508 = fmul fast float %5493, %5453
  %5509 = fsub fast float %5445, %4105
  %5510 = fcmp fast ogt float %5509, 0.000000e+00
  %5511 = fsub fast float %165, %4105
  %5512 = fcmp fast ogt float %5511, 0.000000e+00
  %5513 = xor i1 %5512, %5510
  %5514 = fsub fast float %4105, %5445
  %5515 = fmul fast float %5514, 2.000000e+00
  %5516 = fadd fast float %5515, %5445
  %5517 = select i1 %5513, float %5445, float %5516
  %5518 = fsub fast float %5517, %165
  %5519 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5518, float %5454, float %5455, float %5518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = call float @dx.op.unary.f32(i32 25, float %5519)  ; Rsqrt(value)
  %5521 = fmul fast float %5520, %5454
  %5522 = fmul fast float %5520, %5455
  %5523 = fmul fast float %5520, %5518
  %5524 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5521, float %5522, float %5523)  ; Dot3(ax,ay,az,bx,by,bz)
  %5526 = fdiv fast float 1.000000e+00, %5525
  %5527 = fmul fast float %5526, %5524
  %5528 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5511, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5529 = fcmp fast ogt float %5528, 0.000000e+00
  %5530 = fcmp fast olt float %5528, 0.000000e+00
  %5531 = zext i1 %5529 to i32
  %5532 = zext i1 %5530 to i32
  %5533 = sub nsw i32 %5531, %5532
  %5534 = sitofp i32 %5533 to float
  %5535 = fsub fast float %5517, %4105
  %5536 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5535, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5537 = fcmp fast ogt float %5536, 0.000000e+00
  %5538 = fcmp fast olt float %5536, 0.000000e+00
  %5539 = zext i1 %5537 to i32
  %5540 = zext i1 %5538 to i32
  %5541 = sub nsw i32 %5539, %5540
  %5542 = sitofp i32 %5541 to float
  %5543 = fcmp fast une float %5534, %5542
  br i1 %5543, label %5544, label %5554

; <label>:5544                                    ; preds = %5505
  %5545 = fmul fast float %5527, %5523
  %5546 = fmul fast float %5527, %5522
  %5547 = fmul fast float %5527, %5521
  %5548 = fmul fast float %5547, %5547
  %5549 = fmul fast float %5546, %5546
  %5550 = fadd fast float %5548, %5549
  %5551 = fmul fast float %5545, %5545
  %5552 = fadd fast float %5550, %5551
  %5553 = call float @dx.op.unary.f32(i32 24, float %5552)  ; Sqrt(value)
  br label %5566

; <label>:5554                                    ; preds = %5505
  %5555 = icmp slt i32 %5533, 0
  br i1 %5555, label %5556, label %5566

; <label>:5556                                    ; preds = %5554
  %5557 = fsub fast float %163, %5443
  %5558 = fsub fast float %164, %5444
  %5559 = fsub fast float %165, %5517
  %5560 = fmul fast float %5557, %5557
  %5561 = fmul fast float %5558, %5558
  %5562 = fadd fast float %5560, %5561
  %5563 = fmul fast float %5559, %5559
  %5564 = fadd fast float %5562, %5563
  %5565 = call float @dx.op.unary.f32(i32 24, float %5564)  ; Sqrt(value)
  br label %5566

; <label>:5566                                    ; preds = %5556, %5554, %5544
  %5567 = phi float [ %5553, %5544 ], [ %5565, %5556 ], [ 0.000000e+00, %5554 ]
  %5568 = and i1 %5512, %5510
  %5569 = fsub fast float -0.000000e+00, %5567
  %5570 = select i1 %5568, float -0.000000e+00, float %5569
  %5571 = fmul fast float %4106, 0x3FF7154760000000
  %5572 = fmul fast float %5571, %5570
  %5573 = fmul fast float %4107, 0x3FF7154760000000
  %5574 = fmul fast float %5573, %5570
  %5575 = fmul fast float %4108, 0x3FF7154760000000
  %5576 = fmul fast float %5575, %5570
  %5577 = call float @dx.op.unary.f32(i32 21, float %5572)  ; Exp(value)
  %5578 = call float @dx.op.unary.f32(i32 21, float %5574)  ; Exp(value)
  %5579 = call float @dx.op.unary.f32(i32 21, float %5576)  ; Exp(value)
  %5580 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  %5581 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5582 = call float @dx.op.unary.f32(i32 7, float %5579)  ; Saturate(value)
  %5583 = fmul fast float %5506, %5580
  %5584 = fmul fast float %5507, %5581
  %5585 = fmul fast float %5508, %5582
  %5586 = fsub fast float %5460, %4897
  %5587 = fsub fast float %5461, %4896
  %5588 = fsub fast float %5462, %4895
  %5589 = call float @dx.op.dot3.f32(i32 55, float %5586, float %5587, float %5588, float %5586, float %5587, float %5588)  ; Dot3(ax,ay,az,bx,by,bz)
  %5590 = call float @dx.op.unary.f32(i32 25, float %5589)  ; Rsqrt(value)
  %5591 = fmul fast float %5590, %5586
  %5592 = fmul fast float %5590, %5587
  %5593 = fmul fast float %5590, %5588
  %5594 = call float @dx.op.dot3.f32(i32 55, float %5460, float %5461, float %5462, float %4898, float %4899, float %4900)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = call float @dx.op.dot3.f32(i32 55, float %4894, float %4893, float %4892, float %5591, float %5592, float %5593)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5597 = fmul fast float %5596, %5467
  %5598 = fmul fast float %5596, %5596
  %5599 = fmul fast float %5598, %5120
  %5600 = call float @dx.op.unary.f32(i32 7, float %5599)  ; Saturate(value)
  %5601 = fmul fast float %5597, %5600
  %5602 = bitcast float %5457 to i32
  %5603 = ashr i32 %5602, 1
  %5604 = sub nsw i32 1597463007, %5603
  %5605 = bitcast i32 %5604 to float
  %5606 = fmul fast float %5605, %5454
  %5607 = fmul fast float %5605, %5455
  %5608 = fmul fast float %5605, %5456
  %5609 = fsub fast float %5606, %4897
  %5610 = fsub fast float %5607, %4896
  %5611 = fsub fast float %5608, %4895
  %5612 = call float @dx.op.dot3.f32(i32 55, float %5609, float %5610, float %5611, float %5609, float %5610, float %5611)  ; Dot3(ax,ay,az,bx,by,bz)
  %5613 = call float @dx.op.unary.f32(i32 25, float %5612)  ; Rsqrt(value)
  %5614 = fmul fast float %5609, %5613
  %5615 = fmul fast float %5610, %5613
  %5616 = fmul fast float %5611, %5613
  %5617 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %4900, float %5614, float %5615, float %5616)  ; Dot3(ax,ay,az,bx,by,bz)
  %5618 = fmul fast float %5617, %5617
  %5619 = call float @dx.op.unary.f32(i32 6, float %5594)  ; FAbs(value)
  %5620 = fsub fast float 1.000000e+00, %4907
  %5621 = call float @dx.op.binary.f32(i32 35, float %5620, float 0x3F847AE140000000)  ; FMax(a,b)
  %5622 = fmul fast float %5621, %5621
  %5623 = fmul fast float %5622, %5622
  %5624 = fsub fast float 1.000000e+00, %5623
  %5625 = fmul fast float %4911, %4911
  %5626 = fmul fast float %5625, %5624
  %5627 = fadd fast float %5626, %5623
  %5628 = bitcast float %5627 to i32
  %5629 = ashr i32 %5628, 1
  %5630 = add nsw i32 %5629, 532487669
  %5631 = bitcast i32 %5630 to float
  %5632 = fadd fast float %5631, %4911
  %5633 = fmul fast float %5623, %5618
  %5634 = fsub fast float 1.000000e+00, %5618
  %5635 = fadd fast float %5634, %5633
  %5636 = fmul fast float %5619, %5619
  %5637 = fmul fast float %5636, %5624
  %5638 = fadd fast float %5637, %5623
  %5639 = bitcast float %5638 to i32
  %5640 = ashr i32 %5639, 1
  %5641 = add nsw i32 %5640, 532487669
  %5642 = bitcast i32 %5641 to float
  %5643 = fadd fast float %5642, %5619
  %5644 = fmul fast float %5635, %5635
  %5645 = fmul fast float %5644, %5632
  %5646 = fmul fast float %5645, %5643
  %5647 = fdiv fast float 1.000000e+00, %5646
  %5648 = bitcast float %5623 to i32
  %5649 = sitofp i32 %5648 to float
  %5650 = fmul fast float %5649, 0x3FE7F73180000000
  %5651 = fadd fast float %5650, 0x41AFE27C40000000
  %5652 = fptosi float %5651 to i32
  %5653 = bitcast i32 %5652 to float
  %5654 = fmul fast float %5440, 0x3FD80E9D60000000
  %5655 = fmul fast float %5654, %5605
  %5656 = fadd fast float %5653, %5655
  %5657 = bitcast float %5656 to i32
  %5658 = sub nsw i32 2129859010, %5657
  %5659 = bitcast i32 %5658 to float
  %5660 = fmul fast float %5623, %5647
  %5661 = fmul fast float %5660, %5653
  %5662 = fmul fast float %5661, %5659
  %5663 = call float @dx.op.unary.f32(i32 6, float %5595)  ; FAbs(value)
  %5664 = fsub fast float 1.000000e+00, %5663
  %5665 = bitcast float %5664 to i32
  %5666 = sitofp i32 %5665 to float
  %5667 = fmul fast float %5666, 5.000000e+00
  %5668 = fadd fast float %5667, 0xC1EFBF8940000000
  %5669 = fptosi float %5668 to i32
  %5670 = bitcast i32 %5669 to float
  %5671 = fsub fast float 1.000000e+00, %4901
  %5672 = fsub fast float 1.000000e+00, %4902
  %5673 = fsub fast float 1.000000e+00, %4909
  %5674 = fmul fast float %5670, %5671
  %5675 = fmul fast float %5670, %5672
  %5676 = fmul fast float %5670, %5673
  %5677 = fadd fast float %5674, %4901
  %5678 = fadd fast float %5675, %4902
  %5679 = fadd fast float %5676, %4909
  br i1 %5035, label %5680, label %5703

; <label>:5680                                    ; preds = %5566
  %5681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3704, float %5663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5682 = extractvalue %dx.types.ResRet.f32 %5681, 0
  %5683 = extractvalue %dx.types.ResRet.f32 %5681, 1
  %5684 = extractvalue %dx.types.ResRet.f32 %5681, 2
  %5685 = fadd fast float %5682, -5.000000e-01
  %5686 = fadd fast float %5683, -5.000000e-01
  %5687 = fadd fast float %5684, -5.000000e-01
  %5688 = fmul fast float %4901, 4.000000e+00
  %5689 = fmul fast float %5688, %5671
  %5690 = fmul fast float %5689, %5685
  %5691 = fmul fast float %4902, 4.000000e+00
  %5692 = fmul fast float %5691, %5672
  %5693 = fmul fast float %5692, %5686
  %5694 = fmul fast float %4909, 4.000000e+00
  %5695 = fmul fast float %5694, %5673
  %5696 = fmul fast float %5695, %5687
  %5697 = fadd fast float %5690, %5677
  %5698 = fadd fast float %5693, %5678
  %5699 = fadd fast float %5696, %5679
  %5700 = call float @dx.op.unary.f32(i32 7, float %5697)  ; Saturate(value)
  %5701 = call float @dx.op.unary.f32(i32 7, float %5698)  ; Saturate(value)
  %5702 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  br label %5703

; <label>:5703                                    ; preds = %5680, %5566
  %5704 = phi float [ %5700, %5680 ], [ %5677, %5566 ]
  %5705 = phi float [ %5701, %5680 ], [ %5678, %5566 ]
  %5706 = phi float [ %5702, %5680 ], [ %5679, %5566 ]
  %5707 = fmul fast float %5594, 9.843750e-01
  %5708 = fadd fast float %5707, 7.812500e-03
  %5709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5708, float %5025, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5710 = extractvalue %dx.types.ResRet.f32 %5709, 2
  %5711 = extractvalue %dx.types.ResRet.f32 %5709, 3
  %5712 = fmul fast float %5710, %4901
  %5713 = fmul fast float %5710, %4902
  %5714 = fmul fast float %5710, %4909
  %5715 = fadd fast float %5712, %5711
  %5716 = fadd fast float %5713, %5711
  %5717 = fadd fast float %5714, %5711
  br i1 %5035, label %5718, label %5741

; <label>:5718                                    ; preds = %5703
  %5719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3704, float %5594, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5720 = extractvalue %dx.types.ResRet.f32 %5719, 0
  %5721 = extractvalue %dx.types.ResRet.f32 %5719, 1
  %5722 = extractvalue %dx.types.ResRet.f32 %5719, 2
  %5723 = fadd fast float %5720, -5.000000e-01
  %5724 = fadd fast float %5721, -5.000000e-01
  %5725 = fadd fast float %5722, -5.000000e-01
  %5726 = fmul fast float %4901, 4.000000e+00
  %5727 = fmul fast float %5726, %5671
  %5728 = fmul fast float %5727, %5723
  %5729 = fmul fast float %4902, 4.000000e+00
  %5730 = fmul fast float %5729, %5672
  %5731 = fmul fast float %5730, %5724
  %5732 = fmul fast float %4909, 4.000000e+00
  %5733 = fmul fast float %5732, %5673
  %5734 = fmul fast float %5733, %5725
  %5735 = fadd fast float %5728, %5715
  %5736 = fadd fast float %5731, %5716
  %5737 = fadd fast float %5734, %5717
  %5738 = call float @dx.op.unary.f32(i32 7, float %5735)  ; Saturate(value)
  %5739 = call float @dx.op.unary.f32(i32 7, float %5736)  ; Saturate(value)
  %5740 = call float @dx.op.unary.f32(i32 7, float %5737)  ; Saturate(value)
  br label %5741

; <label>:5741                                    ; preds = %5718, %5703
  %5742 = phi float [ %5738, %5718 ], [ %5715, %5703 ]
  %5743 = phi float [ %5739, %5718 ], [ %5716, %5703 ]
  %5744 = phi float [ %5740, %5718 ], [ %5717, %5703 ]
  %5745 = call float @dx.op.binary.f32(i32 35, float %5743, float %5744)  ; FMax(a,b)
  %5746 = call float @dx.op.binary.f32(i32 35, float %5742, float %5745)  ; FMax(a,b)
  %5747 = fsub fast float 1.000000e+00, %5746
  %5748 = fmul fast float %5704, %5662
  %5749 = fmul fast float %5705, %5662
  %5750 = fmul fast float %5706, %5662
  %5751 = fsub fast float 1.000000e+00, %5595
  %5752 = bitcast float %5751 to i32
  %5753 = sitofp i32 %5752 to float
  %5754 = fmul fast float %5753, 5.000000e+00
  %5755 = fadd fast float %5754, 0xC1EFBF8940000000
  %5756 = fptosi float %5755 to i32
  %5757 = bitcast i32 %5756 to float
  %5758 = fmul fast float %5757, %3705
  %5759 = fmul fast float %5747, %5758
  %5760 = fmul fast float %5759, %5085
  %5761 = fmul fast float %5759, %5086
  %5762 = fmul fast float %5759, %5087
  %5763 = fadd fast float %5760, %5748
  %5764 = fadd fast float %5761, %5749
  %5765 = fadd fast float %5762, %5750
  %5766 = fmul fast float %5583, %3701
  %5767 = fmul fast float %5766, %5601
  %5768 = fmul fast float %5767, %5747
  %5769 = fmul fast float %5584, %3701
  %5770 = fmul fast float %5769, %5601
  %5771 = fmul fast float %5770, %5747
  %5772 = fmul fast float %5585, %3701
  %5773 = fmul fast float %5772, %5601
  %5774 = fmul fast float %5773, %5747
  %5775 = fadd fast float %5768, %5422
  %5776 = fadd fast float %5771, %5423
  %5777 = fadd fast float %5774, %5424
  %5778 = fmul fast float %5767, %5763
  %5779 = fmul fast float %5770, %5764
  %5780 = fmul fast float %5773, %5765
  %5781 = fadd fast float %5778, %5419
  %5782 = fadd fast float %5779, %5420
  %5783 = fadd fast float %5780, %5421
  br label %5497

; <label>:5784                                    ; preds = %5497
  br label %5785

; <label>:5785                                    ; preds = %5784, %5385
  %5786 = phi float [ %5387, %5385 ], [ %5498, %5784 ]
  %5787 = phi float [ %5388, %5385 ], [ %5499, %5784 ]
  %5788 = phi float [ %5389, %5385 ], [ %5500, %5784 ]
  %5789 = phi float [ %5390, %5385 ], [ %5501, %5784 ]
  %5790 = phi float [ %5391, %5385 ], [ %5502, %5784 ]
  %5791 = phi float [ %5392, %5385 ], [ %5503, %5784 ]
  %5792 = add i32 %5386, 1
  %5793 = icmp ugt i32 %5792, %5382
  br i1 %5793, label %5794, label %5385

; <label>:5794                                    ; preds = %5785
  br label %5795

; <label>:5795                                    ; preds = %5794, %5361, %5351
  %5796 = phi float [ %5352, %5351 ], [ %5352, %5361 ], [ %5786, %5794 ]
  %5797 = phi float [ %5353, %5351 ], [ %5353, %5361 ], [ %5787, %5794 ]
  %5798 = phi float [ %5354, %5351 ], [ %5354, %5361 ], [ %5788, %5794 ]
  %5799 = phi float [ %5355, %5351 ], [ %5355, %5361 ], [ %5789, %5794 ]
  %5800 = phi float [ %5356, %5351 ], [ %5356, %5361 ], [ %5790, %5794 ]
  %5801 = phi float [ %5357, %5351 ], [ %5357, %5361 ], [ %5791, %5794 ]
  %5802 = call float @dx.op.unary.f32(i32 24, float %4904)  ; Sqrt(value)
  %5803 = call float @dx.op.unary.f32(i32 24, float %4905)  ; Sqrt(value)
  %5804 = call float @dx.op.unary.f32(i32 24, float %4906)  ; Sqrt(value)
  %5805 = fmul fast float %5802, %5799
  %5806 = fmul fast float %5803, %5800
  %5807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5808 = extractvalue %dx.types.CBufRet.f32 %5807, 0
  br i1 %202, label %5809, label %5829

; <label>:5809                                    ; preds = %5795
  %5810 = fadd fast float %5801, %3707
  %5811 = fmul fast float %5810, %3708
  %5812 = fsub fast float 1.000000e+00, %3708
  %5813 = call float @dx.op.unary.f32(i32 7, float %5812)  ; Saturate(value)
  %5814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5815 = extractvalue %dx.types.CBufRet.f32 %5814, 3
  %5816 = fmul fast float %5815, %5813
  %5817 = fadd fast float %5816, %5811
  %5818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5819 = extractvalue %dx.types.CBufRet.f32 %5818, 0
  %5820 = fmul fast float %5819, %5091
  %5821 = fsub fast float %5817, %5820
  %5822 = fadd fast float %5806, %5805
  %5823 = fmul fast float %5808, %5822
  %5824 = extractvalue %dx.types.CBufRet.f32 %5814, 1
  %5825 = fsub fast float %5821, %5824
  %5826 = extractvalue %dx.types.CBufRet.f32 %5814, 2
  %5827 = fmul fast float %5825, %5826
  %5828 = call float @dx.op.unary.f32(i32 7, float %5827)  ; Saturate(value)
  br label %5845

; <label>:5829                                    ; preds = %5795
  %5830 = fmul fast float %5804, %5801
  %5831 = fmul fast float %5808, %5805
  %5832 = fmul fast float %5808, %5806
  %5833 = fmul fast float %5830, %5808
  %5834 = add i32 %32, 356
  %5835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5834, i32 undef)  ; BufferLoad(srv,index,wot)
  %5836 = extractvalue %dx.types.ResRet.i32 %5835, 0
  %5837 = and i32 %5836, 32
  %5838 = icmp eq i32 %5837, 0
  br i1 %5838, label %5845, label %5839

; <label>:5839                                    ; preds = %5829
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 0
  %5842 = fmul fast float %5841, 0x3FE99999A0000000
  %5843 = fadd fast float %5841, %5831
  %5844 = fadd fast float %5842, %5833
  br label %5845

; <label>:5845                                    ; preds = %5839, %5829, %5809
  %5846 = phi float [ %5823, %5809 ], [ %5843, %5839 ], [ %5831, %5829 ]
  %5847 = phi float [ %5828, %5809 ], [ %5832, %5839 ], [ %5832, %5829 ]
  %5848 = phi float [ 1.000000e+00, %5809 ], [ %5844, %5839 ], [ %5833, %5829 ]
  %5849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5849, 0
  %5851 = fmul fast float %5850, %5797
  %5852 = fmul fast float %5850, %5798
  %5853 = fadd fast float %5797, %5796
  %5854 = select i1 %202, float %5853, float %5796
  %5855 = fmul float %5854, %5850
  %5856 = select i1 %202, float 0.000000e+00, float %5851
  %5857 = select i1 %202, float 0.000000e+00, float %5852
  %5858 = fmul fast float %5846, %5802
  %5859 = fmul fast float %5847, %5803
  %5860 = fmul fast float %5848, %5804
  %5861 = fadd fast float %5855, %5858
  %5862 = fadd fast float %5856, %5859
  %5863 = fadd fast float %5857, %5860
  %5864 = select i1 %202, float %5847, float %5862
  %5865 = select i1 %202, float %5848, float %5863
  %5866 = call float @dx.op.binary.f32(i32 36, float %5861, float 3.225500e+04)  ; FMin(a,b)
  %5867 = call float @dx.op.binary.f32(i32 36, float %5864, float 3.225500e+04)  ; FMin(a,b)
  %5868 = call float @dx.op.binary.f32(i32 36, float %5865, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5866)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5867)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5868)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

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

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!45}
!dx.entryPoints = !{!46}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !37, !40}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 7, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!37 = !{!38, !39}
!38 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!39 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!40 = !{!41, !42, !43, !44}
!41 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!42 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!43 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!44 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!45 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!46 = !{void ()* @ps_main, !"ps_main", !47, !4, !73}
!47 = !{!48, !71, null}
!48 = !{!49, !52, !54, !56, !58, !60, !61, !62, !63, !64, !65, !66, !67, !69, !70}
!49 = !{i32 0, !"SV_Position", i8 9, i8 3, !50, i8 4, i32 1, i8 4, i32 0, i8 0, !51}
!50 = !{i32 0}
!51 = !{i32 3, i32 11}
!52 = !{i32 1, !"COLOR", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 1, i8 0, !53}
!53 = !{i32 3, i32 14}
!54 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 2, i8 0, !55}
!55 = !{i32 3, i32 3}
!56 = !{i32 3, !"NORMAL", i8 9, i8 0, !50, i8 2, i32 1, i8 3, i32 3, i8 0, !57}
!57 = !{i32 3, i32 7}
!58 = !{i32 4, !"TANGENT", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 4, i8 0, !59}
!59 = !{i32 3, i32 15}
!60 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !50, i8 2, i32 1, i8 3, i32 5, i8 0, !57}
!61 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 6, i8 0, !59}
!62 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 3, i32 7, i8 0, !57}
!63 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 8, i8 0, !59}
!64 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !50, i8 2, i32 1, i8 2, i32 9, i8 0, !55}
!65 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 10, i8 0, !59}
!66 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 11, i8 0, !57}
!67 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !50, i8 1, i32 1, i8 1, i32 12, i8 0, !68}
!68 = !{i32 3, i32 1}
!69 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !50, i8 1, i32 1, i8 4, i32 13, i8 0, !68}
!70 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !50, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!71 = !{!72}
!72 = !{i32 0, !"SV_Target", i8 9, i8 16, !50, i8 0, i32 1, i8 4, i32 0, i8 0, !59}
!73 = !{i32 0, i64 24}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}

