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
; shader hash: 4fc7e932954bd7912d2240904940cbbd
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
  %396 = add i32 %32, 496
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
  %577 = add i32 %32, 464
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
  %911 = phi float [ 0.000000e+00, %435 ], [ %764, %891 ]
  %912 = phi float [ 0.000000e+00, %435 ], [ %765, %891 ]
  %913 = phi float [ 0.000000e+00, %435 ], [ %766, %891 ]
  %914 = phi float [ 0.000000e+00, %435 ], [ %892, %891 ]
  %915 = phi float [ 0.000000e+00, %435 ], [ %893, %891 ]
  %916 = phi float [ 0.000000e+00, %435 ], [ %894, %891 ]
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
  %1137 = add i32 %32, 468
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
  %1470 = fmul fast float %1469, %911
  %1471 = fmul fast float %1469, %912
  %1472 = fmul fast float %1469, %913
  %1473 = fmul fast float %1469, %914
  %1474 = fmul fast float %1469, %915
  %1475 = fmul fast float %1469, %916
  br label %1476

; <label>:1476                                    ; preds = %1468, %1451
  %1477 = phi float [ %1470, %1468 ], [ %911, %1451 ]
  %1478 = phi float [ %1471, %1468 ], [ %912, %1451 ]
  %1479 = phi float [ %1472, %1468 ], [ %913, %1451 ]
  %1480 = phi float [ %1473, %1468 ], [ %914, %1451 ]
  %1481 = phi float [ %1474, %1468 ], [ %915, %1451 ]
  %1482 = phi float [ %1475, %1468 ], [ %916, %1451 ]
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
  %1496 = fsub fast float %1324, %1477
  %1497 = fsub fast float %1325, %1478
  %1498 = fsub fast float %1326, %1479
  %1499 = fmul fast float %1490, %1496
  %1500 = fmul fast float %1490, %1497
  %1501 = fmul fast float %1490, %1498
  %1502 = fadd fast float %1499, %1477
  %1503 = fadd fast float %1500, %1478
  %1504 = fadd fast float %1501, %1479
  %1505 = fsub fast float %1310, %917
  %1506 = fmul fast float %1490, %1505
  %1507 = fadd fast float %1506, %917
  %1508 = fsub fast float %1452, %1480
  %1509 = fsub fast float %1453, %1481
  %1510 = fsub fast float %1454, %1482
  %1511 = fmul fast float %1495, %1508
  %1512 = fmul fast float %1495, %1509
  %1513 = fmul fast float %1495, %1510
  %1514 = fadd fast float %1511, %1480
  %1515 = fadd fast float %1512, %1481
  %1516 = fadd fast float %1513, %1482
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
  %1532 = fmul fast float %1529, %1477
  %1533 = fmul fast float %1530, %1478
  %1534 = fmul fast float %1531, %1479
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
  %1552 = fmul fast float %1551, %1477
  %1553 = fadd fast float %1552, %1550
  %1554 = fmul fast float %1553, %1477
  %1555 = fmul fast float %1548, 2.000000e+00
  %1556 = fsub fast float 1.000000e+00, %1555
  %1557 = fmul fast float %1556, %1478
  %1558 = fadd fast float %1557, %1555
  %1559 = fmul fast float %1558, %1478
  %1560 = fmul fast float %1549, 2.000000e+00
  %1561 = fsub fast float 1.000000e+00, %1560
  %1562 = fmul fast float %1561, %1479
  %1563 = fadd fast float %1562, %1560
  %1564 = fmul fast float %1563, %1479
  br label %1565

; <label>:1565                                    ; preds = %1537, %1535, %1522, %1492, %1476
  %1566 = phi float [ %1477, %1476 ], [ %1554, %1537 ], [ %1477, %1535 ], [ %1532, %1522 ], [ %1502, %1492 ]
  %1567 = phi float [ %1478, %1476 ], [ %1559, %1537 ], [ %1478, %1535 ], [ %1533, %1522 ], [ %1503, %1492 ]
  %1568 = phi float [ %1479, %1476 ], [ %1564, %1537 ], [ %1479, %1535 ], [ %1534, %1522 ], [ %1504, %1492 ]
  %1569 = phi float [ %1480, %1476 ], [ %1480, %1537 ], [ %1480, %1535 ], [ %1480, %1522 ], [ %1514, %1492 ]
  %1570 = phi float [ %1481, %1476 ], [ %1481, %1537 ], [ %1481, %1535 ], [ %1481, %1522 ], [ %1515, %1492 ]
  %1571 = phi float [ %1482, %1476 ], [ %1482, %1537 ], [ %1482, %1535 ], [ %1482, %1522 ], [ %1516, %1492 ]
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
  %1876 = add i32 %32, 472
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
  %2209 = fmul fast float %2208, %1651
  %2210 = fmul fast float %2208, %1652
  %2211 = fmul fast float %2208, %1653
  %2212 = fmul fast float %2208, %1654
  %2213 = fmul fast float %2208, %1655
  %2214 = fmul fast float %2208, %1656
  br label %2215

; <label>:2215                                    ; preds = %2207, %2190
  %2216 = phi float [ %2209, %2207 ], [ %1651, %2190 ]
  %2217 = phi float [ %2210, %2207 ], [ %1652, %2190 ]
  %2218 = phi float [ %2211, %2207 ], [ %1653, %2190 ]
  %2219 = phi float [ %2212, %2207 ], [ %1654, %2190 ]
  %2220 = phi float [ %2213, %2207 ], [ %1655, %2190 ]
  %2221 = phi float [ %2214, %2207 ], [ %1656, %2190 ]
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
  %2235 = fsub fast float %2063, %2216
  %2236 = fsub fast float %2064, %2217
  %2237 = fsub fast float %2065, %2218
  %2238 = fmul fast float %2229, %2235
  %2239 = fmul fast float %2229, %2236
  %2240 = fmul fast float %2229, %2237
  %2241 = fadd fast float %2238, %2216
  %2242 = fadd fast float %2239, %2217
  %2243 = fadd fast float %2240, %2218
  %2244 = fsub fast float %2049, %1657
  %2245 = fmul fast float %2229, %2244
  %2246 = fadd fast float %2245, %1657
  %2247 = fsub fast float %2191, %2219
  %2248 = fsub fast float %2192, %2220
  %2249 = fsub fast float %2193, %2221
  %2250 = fmul fast float %2234, %2247
  %2251 = fmul fast float %2234, %2248
  %2252 = fmul fast float %2234, %2249
  %2253 = fadd fast float %2250, %2219
  %2254 = fadd fast float %2251, %2220
  %2255 = fadd fast float %2252, %2221
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
  %2271 = fmul fast float %2268, %2216
  %2272 = fmul fast float %2269, %2217
  %2273 = fmul fast float %2270, %2218
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
  %2291 = fmul fast float %2290, %2216
  %2292 = fadd fast float %2291, %2289
  %2293 = fmul fast float %2292, %2216
  %2294 = fmul fast float %2287, 2.000000e+00
  %2295 = fsub fast float 1.000000e+00, %2294
  %2296 = fmul fast float %2295, %2217
  %2297 = fadd fast float %2296, %2294
  %2298 = fmul fast float %2297, %2217
  %2299 = fmul fast float %2288, 2.000000e+00
  %2300 = fsub fast float 1.000000e+00, %2299
  %2301 = fmul fast float %2300, %2218
  %2302 = fadd fast float %2301, %2299
  %2303 = fmul fast float %2302, %2218
  br label %2304

; <label>:2304                                    ; preds = %2276, %2274, %2261, %2231, %2215
  %2305 = phi float [ %2216, %2215 ], [ %2293, %2276 ], [ %2216, %2274 ], [ %2271, %2261 ], [ %2241, %2231 ]
  %2306 = phi float [ %2217, %2215 ], [ %2298, %2276 ], [ %2217, %2274 ], [ %2272, %2261 ], [ %2242, %2231 ]
  %2307 = phi float [ %2218, %2215 ], [ %2303, %2276 ], [ %2218, %2274 ], [ %2273, %2261 ], [ %2243, %2231 ]
  %2308 = phi float [ %2219, %2215 ], [ %2219, %2276 ], [ %2219, %2274 ], [ %2219, %2261 ], [ %2253, %2231 ]
  %2309 = phi float [ %2220, %2215 ], [ %2220, %2276 ], [ %2220, %2274 ], [ %2220, %2261 ], [ %2254, %2231 ]
  %2310 = phi float [ %2221, %2215 ], [ %2221, %2276 ], [ %2221, %2274 ], [ %2221, %2261 ], [ %2255, %2231 ]
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
  %2615 = add i32 %32, 476
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
  %2948 = fmul fast float %2947, %2390
  %2949 = fmul fast float %2947, %2391
  %2950 = fmul fast float %2947, %2392
  %2951 = fmul fast float %2947, %2393
  %2952 = fmul fast float %2947, %2394
  %2953 = fmul fast float %2947, %2395
  br label %2954

; <label>:2954                                    ; preds = %2946, %2929
  %2955 = phi float [ %2948, %2946 ], [ %2390, %2929 ]
  %2956 = phi float [ %2949, %2946 ], [ %2391, %2929 ]
  %2957 = phi float [ %2950, %2946 ], [ %2392, %2929 ]
  %2958 = phi float [ %2951, %2946 ], [ %2393, %2929 ]
  %2959 = phi float [ %2952, %2946 ], [ %2394, %2929 ]
  %2960 = phi float [ %2953, %2946 ], [ %2395, %2929 ]
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
  %2974 = fsub fast float %2802, %2955
  %2975 = fsub fast float %2803, %2956
  %2976 = fsub fast float %2804, %2957
  %2977 = fmul fast float %2968, %2974
  %2978 = fmul fast float %2968, %2975
  %2979 = fmul fast float %2968, %2976
  %2980 = fadd fast float %2977, %2955
  %2981 = fadd fast float %2978, %2956
  %2982 = fadd fast float %2979, %2957
  %2983 = fsub fast float %2788, %2396
  %2984 = fmul fast float %2968, %2983
  %2985 = fadd fast float %2984, %2396
  %2986 = fsub fast float %2930, %2958
  %2987 = fsub fast float %2931, %2959
  %2988 = fsub fast float %2932, %2960
  %2989 = fmul fast float %2973, %2986
  %2990 = fmul fast float %2973, %2987
  %2991 = fmul fast float %2973, %2988
  %2992 = fadd fast float %2989, %2958
  %2993 = fadd fast float %2990, %2959
  %2994 = fadd fast float %2991, %2960
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
  %3010 = fmul fast float %3007, %2955
  %3011 = fmul fast float %3008, %2956
  %3012 = fmul fast float %3009, %2957
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
  %3030 = fmul fast float %3029, %2955
  %3031 = fadd fast float %3030, %3028
  %3032 = fmul fast float %3031, %2955
  %3033 = fmul fast float %3026, 2.000000e+00
  %3034 = fsub fast float 1.000000e+00, %3033
  %3035 = fmul fast float %3034, %2956
  %3036 = fadd fast float %3035, %3033
  %3037 = fmul fast float %3036, %2956
  %3038 = fmul fast float %3027, 2.000000e+00
  %3039 = fsub fast float 1.000000e+00, %3038
  %3040 = fmul fast float %3039, %2957
  %3041 = fadd fast float %3040, %3038
  %3042 = fmul fast float %3041, %2957
  br label %3043

; <label>:3043                                    ; preds = %3015, %3013, %3000, %2970, %2954
  %3044 = phi float [ %2955, %2954 ], [ %3032, %3015 ], [ %2955, %3013 ], [ %3010, %3000 ], [ %2980, %2970 ]
  %3045 = phi float [ %2956, %2954 ], [ %3037, %3015 ], [ %2956, %3013 ], [ %3011, %3000 ], [ %2981, %2970 ]
  %3046 = phi float [ %2957, %2954 ], [ %3042, %3015 ], [ %2957, %3013 ], [ %3012, %3000 ], [ %2982, %2970 ]
  %3047 = phi float [ %2958, %2954 ], [ %2958, %3015 ], [ %2958, %3013 ], [ %2958, %3000 ], [ %2992, %2970 ]
  %3048 = phi float [ %2959, %2954 ], [ %2959, %3015 ], [ %2959, %3013 ], [ %2959, %3000 ], [ %2993, %2970 ]
  %3049 = phi float [ %2960, %2954 ], [ %2960, %3015 ], [ %2960, %3013 ], [ %2960, %3000 ], [ %2994, %2970 ]
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
  %3139 = add i32 %32, 456
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = add i32 %3141, 0
  %3143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3142, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3144 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3143, %dx.types.Handle %73, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3145 = extractvalue %dx.types.ResRet.f32 %3144, 0
  %3146 = add i32 %32, 360
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3146, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = extractvalue %dx.types.ResRet.i32 %3147, 1
  %3150 = bitcast i32 %3148 to float
  %3151 = bitcast i32 %3149 to float
  %3152 = fcmp fast oge float %3150, 0.000000e+00
  %3153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3154 = extractvalue %dx.types.CBufRet.f32 %3153, 0
  %3155 = select i1 %3152, float %3150, float %3154
  %3156 = add i32 %32, 460
  %3157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3156, i32 undef)  ; BufferLoad(srv,index,wot)
  %3158 = extractvalue %dx.types.ResRet.i32 %3157, 0
  %3159 = add i32 %3158, 0
  %3160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3159, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3161 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3160, %dx.types.Handle %73, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3162 = extractvalue %dx.types.ResRet.f32 %3161, 0
  %3163 = fmul fast float %3162, %3151
  %3164 = fadd fast float %3163, %3155
  %3165 = call float @dx.op.dot2.f32(i32 54, float %3127, float %3128, float %3127, float %3128)  ; Dot2(ax,ay,bx,by)
  %3166 = fmul fast float %3165, 0x3FE3333340000000
  %3167 = fsub fast float 1.000000e+00, %3166
  %3168 = call float @dx.op.dot3.f32(i32 55, float %3127, float %3128, float %3167, float %3127, float %3128, float %3167)  ; Dot3(ax,ay,az,bx,by,bz)
  %3169 = call float @dx.op.unary.f32(i32 25, float %3168)  ; Rsqrt(value)
  %3170 = fmul fast float %3169, %3127
  %3171 = fmul fast float %3169, %3128
  %3172 = fmul fast float %3167, %3169
  %3173 = fmul fast float %3172, %83
  %3174 = fmul fast float %3172, %84
  %3175 = fmul fast float %3172, %85
  %3176 = fmul fast float %3170, %57
  %3177 = fmul fast float %3170, %58
  %3178 = fmul fast float %3170, %59
  %3179 = fadd fast float %3173, %3176
  %3180 = fadd fast float %3174, %3177
  %3181 = fadd fast float %3175, %3178
  %3182 = fmul fast float %95, %3171
  %3183 = fmul fast float %96, %3171
  %3184 = fmul fast float %97, %3171
  %3185 = fadd fast float %3179, %3182
  %3186 = fadd fast float %3180, %3183
  %3187 = fadd fast float %3181, %3184
  %3188 = call float @dx.op.dot3.f32(i32 55, float %3185, float %3186, float %3187, float %3185, float %3186, float %3187)  ; Dot3(ax,ay,az,bx,by,bz)
  %3189 = call float @dx.op.unary.f32(i32 25, float %3188)  ; Rsqrt(value)
  %3190 = fmul fast float %3185, %3189
  %3191 = fmul fast float %3186, %3189
  %3192 = fmul fast float %3187, %3189
  %3193 = icmp eq i32 %33, 65535
  br i1 %3193, label %3708, label %3194

; <label>:3194                                    ; preds = %3126
  %3195 = call float @dx.op.unary.f32(i32 83, float %34)  ; DerivCoarseX(value)
  %3196 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %3197 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3198 = call float @dx.op.unary.f32(i32 84, float %34)  ; DerivCoarseY(value)
  %3199 = call float @dx.op.unary.f32(i32 84, float %35)  ; DerivCoarseY(value)
  %3200 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3201 = fadd fast float %3195, %34
  %3202 = fadd fast float %3196, %35
  %3203 = fadd fast float %3197, %36
  %3204 = fadd fast float %3198, %34
  %3205 = fadd fast float %3199, %35
  %3206 = fadd fast float %3200, %36
  %3207 = mul i32 %33, 48
  %3208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.f32 %3208, 0
  %3210 = extractvalue %dx.types.ResRet.f32 %3208, 1
  %3211 = extractvalue %dx.types.ResRet.f32 %3208, 2
  %3212 = add i32 %3207, 16
  %3213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.f32 %3213, 0
  %3215 = extractvalue %dx.types.ResRet.f32 %3213, 1
  %3216 = extractvalue %dx.types.ResRet.f32 %3213, 2
  %3217 = add i32 %3207, 32
  %3218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3217, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.f32 %3218, 0
  %3220 = extractvalue %dx.types.ResRet.f32 %3218, 1
  %3221 = extractvalue %dx.types.ResRet.f32 %3218, 2
  %3222 = extractvalue %dx.types.ResRet.f32 %3218, 3
  %3223 = bitcast float %3222 to i32
  %3224 = fmul fast float %3209, %34
  %3225 = fmul fast float %3210, %35
  %3226 = fmul fast float %3211, %36
  %3227 = fsub fast float %3224, %3214
  %3228 = fsub fast float %3225, %3215
  %3229 = fsub fast float %3226, %3216
  %3230 = call float @dx.op.unary.f32(i32 7, float %3227)  ; Saturate(value)
  %3231 = call float @dx.op.unary.f32(i32 7, float %3228)  ; Saturate(value)
  %3232 = call float @dx.op.unary.f32(i32 7, float %3229)  ; Saturate(value)
  %3233 = fmul fast float %3230, %3219
  %3234 = fmul fast float %3231, %3220
  %3235 = fmul fast float %3232, %3221
  %3236 = fadd fast float %3219, -1.000000e+00
  %3237 = fadd fast float %3220, -1.000000e+00
  %3238 = fadd fast float %3221, -1.000000e+00
  %3239 = call float @dx.op.unary.f32(i32 27, float %3233)  ; Round_ni(value)
  %3240 = call float @dx.op.unary.f32(i32 27, float %3234)  ; Round_ni(value)
  %3241 = call float @dx.op.unary.f32(i32 27, float %3235)  ; Round_ni(value)
  %3242 = call float @dx.op.binary.f32(i32 36, float %3239, float %3236)  ; FMin(a,b)
  %3243 = call float @dx.op.binary.f32(i32 36, float %3240, float %3237)  ; FMin(a,b)
  %3244 = call float @dx.op.binary.f32(i32 36, float %3241, float %3238)  ; FMin(a,b)
  %3245 = fmul fast float %3244, %3220
  %3246 = fadd fast float %3245, %3243
  %3247 = fmul fast float %3246, %3219
  %3248 = fadd fast float %3247, %3242
  %3249 = fptosi float %3248 to i32
  %3250 = add nsw i32 %3249, %3223
  %3251 = shl nsw i32 %3250, 2
  %3252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3251, i32 undef)  ; BufferLoad(srv,index,wot)
  %3253 = extractvalue %dx.types.ResRet.i32 %3252, 0
  %3254 = lshr i32 %3253, 16
  %3255 = icmp eq i32 %3254, 0
  br i1 %3255, label %3677, label %3256

; <label>:3256                                    ; preds = %3194
  br label %3257

; <label>:3257                                    ; preds = %3378, %3256
  %3258 = phi i32 [ %3280, %3378 ], [ %3254, %3256 ]
  %3259 = phi float [ %3379, %3378 ], [ 0.000000e+00, %3256 ]
  %3260 = phi float [ %3380, %3378 ], [ %3164, %3256 ]
  %3261 = phi float [ %3381, %3378 ], [ %3138, %3256 ]
  %3262 = phi float [ %3382, %3378 ], [ 0.000000e+00, %3256 ]
  %3263 = phi float [ %3383, %3378 ], [ 0.000000e+00, %3256 ]
  %3264 = phi float [ %3384, %3378 ], [ %3132, %3256 ]
  %3265 = phi float [ %3385, %3378 ], [ %3133, %3256 ]
  %3266 = phi float [ %3386, %3378 ], [ %3134, %3256 ]
  %3267 = phi float [ %3387, %3378 ], [ %3190, %3256 ]
  %3268 = phi float [ %3388, %3378 ], [ %3191, %3256 ]
  %3269 = phi float [ %3389, %3378 ], [ %3192, %3256 ]
  %3270 = phi float [ %3390, %3378 ], [ %3137, %3256 ]
  %3271 = phi float [ %3391, %3378 ], [ %3136, %3256 ]
  %3272 = phi float [ %3392, %3378 ], [ 0.000000e+00, %3256 ]
  %3273 = phi float [ %3393, %3378 ], [ %3135, %3256 ]
  %3274 = phi float [ %3394, %3378 ], [ %3129, %3256 ]
  %3275 = phi float [ %3395, %3378 ], [ %3130, %3256 ]
  %3276 = phi float [ %3396, %3378 ], [ %3131, %3256 ]
  %3277 = shl nuw nsw i32 %3258, 2
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3277, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = lshr i32 %3279, 16
  %3281 = shl i32 %3279, 8
  %3282 = and i32 %3281, 16776960
  %3283 = or i32 %3282, 48
  %3284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.f32 %3284, 0
  %3286 = extractvalue %dx.types.ResRet.f32 %3284, 1
  %3287 = extractvalue %dx.types.ResRet.f32 %3284, 2
  %3288 = or i32 %3282, 64
  %3289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3288, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.i32 %3289, 0
  %3291 = extractvalue %dx.types.ResRet.i32 %3289, 1
  %3292 = or i32 %3282, 80
  %3293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3292, i32 undef)  ; BufferLoad(srv,index,wot)
  %3294 = extractvalue %dx.types.ResRet.f32 %3293, 2
  %3295 = extractvalue %dx.types.ResRet.f32 %3293, 3
  %3296 = or i32 %3282, 96
  %3297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.f32 %3297, 0
  %3299 = extractvalue %dx.types.ResRet.f32 %3297, 1
  %3300 = extractvalue %dx.types.ResRet.f32 %3297, 2
  %3301 = extractvalue %dx.types.ResRet.f32 %3297, 3
  %3302 = or i32 %3282, 112
  %3303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3302, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.f32 %3303, 2
  %3305 = or i32 %3282, 128
  %3306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 0
  %3308 = extractvalue %dx.types.ResRet.f32 %3306, 1
  %3309 = extractvalue %dx.types.ResRet.f32 %3306, 2
  %3310 = extractvalue %dx.types.ResRet.f32 %3306, 3
  %3311 = or i32 %3282, 144
  %3312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 0
  %3314 = extractvalue %dx.types.ResRet.f32 %3312, 1
  %3315 = extractvalue %dx.types.ResRet.f32 %3312, 2
  %3316 = extractvalue %dx.types.ResRet.f32 %3312, 3
  %3317 = or i32 %3282, 160
  %3318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3317, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.f32 %3318, 0
  %3320 = extractvalue %dx.types.ResRet.f32 %3318, 1
  %3321 = extractvalue %dx.types.ResRet.f32 %3318, 2
  %3322 = extractvalue %dx.types.ResRet.f32 %3318, 3
  %3323 = or i32 %3282, 192
  %3324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.i32 %3324, 0
  %3326 = or i32 %3282, 208
  %3327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3326, i32 undef)  ; BufferLoad(srv,index,wot)
  %3328 = extractvalue %dx.types.ResRet.f32 %3327, 0
  %3329 = or i32 %3282, 248
  %3330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3329, i32 undef)  ; BufferLoad(srv,index,wot)
  %3331 = extractvalue %dx.types.ResRet.f32 %3330, 0
  %3332 = extractvalue %dx.types.ResRet.f32 %3330, 1
  %3333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3282, i32 undef)  ; BufferLoad(srv,index,wot)
  %3334 = extractvalue %dx.types.ResRet.f32 %3333, 0
  %3335 = extractvalue %dx.types.ResRet.f32 %3333, 1
  %3336 = extractvalue %dx.types.ResRet.f32 %3333, 2
  %3337 = extractvalue %dx.types.ResRet.f32 %3333, 3
  %3338 = call float @dx.op.dot4.f32(i32 56, float %3334, float %3335, float %3336, float %3337, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3339 = or i32 %3282, 16
  %3340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.f32 %3340, 0
  %3342 = extractvalue %dx.types.ResRet.f32 %3340, 1
  %3343 = extractvalue %dx.types.ResRet.f32 %3340, 2
  %3344 = extractvalue %dx.types.ResRet.f32 %3340, 3
  %3345 = call float @dx.op.dot4.f32(i32 56, float %3341, float %3342, float %3343, float %3344, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3346 = or i32 %3282, 32
  %3347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3346, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.f32 %3347, 0
  %3349 = extractvalue %dx.types.ResRet.f32 %3347, 1
  %3350 = extractvalue %dx.types.ResRet.f32 %3347, 2
  %3351 = extractvalue %dx.types.ResRet.f32 %3347, 3
  %3352 = call float @dx.op.dot4.f32(i32 56, float %3348, float %3349, float %3350, float %3351, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3353 = call float @dx.op.unary.f32(i32 27, float %3338)  ; Round_ni(value)
  %3354 = call float @dx.op.unary.f32(i32 6, float %3353)  ; FAbs(value)
  %3355 = call float @dx.op.unary.f32(i32 27, float %3345)  ; Round_ni(value)
  %3356 = call float @dx.op.unary.f32(i32 6, float %3355)  ; FAbs(value)
  %3357 = call float @dx.op.unary.f32(i32 6, float %3352)  ; FAbs(value)
  %3358 = call float @dx.op.unary.f32(i32 27, float %3357)  ; Round_ni(value)
  %3359 = fadd fast float %3356, %3354
  %3360 = fadd fast float %3359, %3358
  %3361 = fcmp fast oeq float %3360, 0.000000e+00
  %3362 = call float @dx.op.dot4.f32(i32 56, float %3334, float %3335, float %3336, float %3337, float %3201, float %3202, float %3203, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3363 = call float @dx.op.dot4.f32(i32 56, float %3341, float %3342, float %3343, float %3344, float %3201, float %3202, float %3203, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3364 = call float @dx.op.dot4.f32(i32 56, float %3334, float %3335, float %3336, float %3337, float %3204, float %3205, float %3206, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3365 = call float @dx.op.dot4.f32(i32 56, float %3341, float %3342, float %3343, float %3344, float %3204, float %3205, float %3206, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3366 = fsub fast float %3362, %3338
  %3367 = fsub fast float %3364, %3338
  %3368 = fsub fast float %3363, %3345
  %3369 = fsub fast float %3365, %3345
  %3370 = call float @dx.op.dot3.f32(i32 55, float %3285, float %3286, float %3287, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %3371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3372 = extractvalue %dx.types.CBufRet.f32 %3371, 2
  %3373 = fadd fast float %3372, %3370
  %3374 = call float @dx.op.unary.f32(i32 7, float %3373)  ; Saturate(value)
  %3375 = extractvalue %dx.types.CBufRet.f32 %3371, 0
  %3376 = fcmp fast ogt float %3374, %3375
  %3377 = and i1 %3361, %3376
  br i1 %3377, label %3398, label %3378

; <label>:3378                                    ; preds = %3663, %3481, %3398, %3257
  %3379 = phi float [ %3259, %3398 ], [ %3484, %3481 ], [ %3484, %3663 ], [ %3259, %3257 ]
  %3380 = phi float [ %3260, %3398 ], [ %3260, %3481 ], [ %3638, %3663 ], [ %3260, %3257 ]
  %3381 = phi float [ %3261, %3398 ], [ %3261, %3481 ], [ %3636, %3663 ], [ %3261, %3257 ]
  %3382 = phi float [ %3262, %3398 ], [ %3262, %3481 ], [ %3608, %3663 ], [ %3262, %3257 ]
  %3383 = phi float [ %3263, %3398 ], [ %3263, %3481 ], [ %3606, %3663 ], [ %3263, %3257 ]
  %3384 = phi float [ %3264, %3398 ], [ %3264, %3481 ], [ %3673, %3663 ], [ %3264, %3257 ]
  %3385 = phi float [ %3265, %3398 ], [ %3265, %3481 ], [ %3674, %3663 ], [ %3265, %3257 ]
  %3386 = phi float [ %3266, %3398 ], [ %3266, %3481 ], [ %3675, %3663 ], [ %3266, %3257 ]
  %3387 = phi float [ %3267, %3398 ], [ %3267, %3481 ], [ %3587, %3663 ], [ %3267, %3257 ]
  %3388 = phi float [ %3268, %3398 ], [ %3268, %3481 ], [ %3588, %3663 ], [ %3268, %3257 ]
  %3389 = phi float [ %3269, %3398 ], [ %3269, %3481 ], [ %3589, %3663 ], [ %3269, %3257 ]
  %3390 = phi float [ %3270, %3398 ], [ %3270, %3481 ], [ %3616, %3663 ], [ %3270, %3257 ]
  %3391 = phi float [ %3271, %3398 ], [ %3271, %3481 ], [ %3613, %3663 ], [ %3271, %3257 ]
  %3392 = phi float [ %3272, %3398 ], [ %3272, %3481 ], [ %3610, %3663 ], [ %3272, %3257 ]
  %3393 = phi float [ %3273, %3398 ], [ %3273, %3481 ], [ %3604, %3663 ], [ %3273, %3257 ]
  %3394 = phi float [ %3274, %3398 ], [ %3274, %3481 ], [ %3599, %3663 ], [ %3274, %3257 ]
  %3395 = phi float [ %3275, %3398 ], [ %3275, %3481 ], [ %3600, %3663 ], [ %3275, %3257 ]
  %3396 = phi float [ %3276, %3398 ], [ %3276, %3481 ], [ %3601, %3663 ], [ %3276, %3257 ]
  %3397 = icmp eq i32 %3280, 0
  br i1 %3397, label %3676, label %3257

; <label>:3398                                    ; preds = %3257
  %3399 = extractvalue %dx.types.ResRet.f32 %3284, 3
  %3400 = extractvalue %dx.types.ResRet.f32 %3303, 3
  %3401 = extractvalue %dx.types.ResRet.f32 %3303, 1
  %3402 = extractvalue %dx.types.ResRet.f32 %3303, 0
  %3403 = extractvalue %dx.types.ResRet.f32 %3293, 1
  %3404 = extractvalue %dx.types.ResRet.f32 %3293, 0
  %3405 = extractvalue %dx.types.ResRet.i32 %3289, 3
  %3406 = extractvalue %dx.types.ResRet.i32 %3289, 2
  %3407 = bitcast float %3399 to i32
  %3408 = add i32 %3405, 0
  %3409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3408, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3411 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3409, %dx.types.Handle %3410, float %3338, float %3345, float undef, float undef, i32 0, i32 0, i32 undef, float %3366, float %3368, float undef, float %3367, float %3369, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3412 = extractvalue %dx.types.ResRet.f32 %3411, 0
  %3413 = fmul fast float %3412, %3404
  %3414 = fadd fast float %3413, %3403
  %3415 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  %3416 = fmul fast float %3338, %3298
  %3417 = call float @dx.op.tertiary.f32(i32 46, float %3299, float %3345, float %3416)  ; FMad(a,b,c)
  %3418 = fadd fast float %3417, %3402
  %3419 = fmul fast float %3338, %3300
  %3420 = call float @dx.op.tertiary.f32(i32 46, float %3301, float %3345, float %3419)  ; FMad(a,b,c)
  %3421 = fadd fast float %3420, %3401
  %3422 = fmul fast float %3366, %3298
  %3423 = call float @dx.op.tertiary.f32(i32 46, float %3299, float %3368, float %3422)  ; FMad(a,b,c)
  %3424 = fmul fast float %3366, %3300
  %3425 = call float @dx.op.tertiary.f32(i32 46, float %3301, float %3368, float %3424)  ; FMad(a,b,c)
  %3426 = fmul fast float %3367, %3298
  %3427 = call float @dx.op.tertiary.f32(i32 46, float %3299, float %3369, float %3426)  ; FMad(a,b,c)
  %3428 = fmul fast float %3367, %3300
  %3429 = call float @dx.op.tertiary.f32(i32 46, float %3301, float %3369, float %3428)  ; FMad(a,b,c)
  %3430 = add i32 %3406, 0
  %3431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3430, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3432 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3431, %dx.types.Handle %3410, float %3418, float %3421, float undef, float undef, i32 0, i32 0, i32 undef, float %3423, float %3425, float undef, float %3427, float %3429, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3433 = extractvalue %dx.types.ResRet.f32 %3432, 0
  %3434 = and i32 %3407, 1024
  %3435 = icmp ne i32 %3434, 0
  %3436 = fcmp fast ogt float %3433, 0x3FE0101020000000
  %3437 = uitofp i1 %3436 to float
  %3438 = select i1 %3435, float %3437, float %3433
  %3439 = and i32 %3407, 8192
  %3440 = icmp ne i32 %3439, 0
  %3441 = select i1 %3440, float %3400, float 1.000000e+00
  %3442 = fmul fast float %3338, 2.000000e+00
  %3443 = fadd fast float %3442, -1.000000e+00
  %3444 = call float @dx.op.unary.f32(i32 6, float %3443)  ; FAbs(value)
  %3445 = fmul fast float %3444, %3331
  %3446 = fsub fast float %3445, %3331
  %3447 = call float @dx.op.unary.f32(i32 7, float %3446)  ; Saturate(value)
  %3448 = fmul fast float %3345, 2.000000e+00
  %3449 = fadd fast float %3448, -1.000000e+00
  %3450 = call float @dx.op.unary.f32(i32 6, float %3449)  ; FAbs(value)
  %3451 = fmul fast float %3450, %3332
  %3452 = fsub fast float %3451, %3332
  %3453 = call float @dx.op.unary.f32(i32 7, float %3452)  ; Saturate(value)
  %3454 = fmul fast float %3357, %3294
  %3455 = fsub fast float %3454, %3294
  %3456 = call float @dx.op.unary.f32(i32 7, float %3455)  ; Saturate(value)
  %3457 = fmul fast float %3415, %3441
  %3458 = fmul fast float %3457, %3412
  %3459 = fmul fast float %3458, %3447
  %3460 = fmul fast float %3459, %3438
  %3461 = fmul fast float %3460, %3453
  %3462 = fmul fast float %3461, %3456
  %3463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3464 = extractvalue %dx.types.CBufRet.f32 %3463, 1
  %3465 = extractvalue %dx.types.CBufRet.f32 %3463, 0
  %3466 = fsub fast float %3374, %3465
  %3467 = fmul fast float %3466, %3464
  %3468 = call float @dx.op.unary.f32(i32 7, float %3467)  ; Saturate(value)
  %3469 = fmul fast float %3462, %3295
  %3470 = fadd fast float %3462, %3295
  %3471 = fmul fast float %3470, %3304
  %3472 = fsub fast float %3471, %3304
  %3473 = call float @dx.op.unary.f32(i32 7, float %3472)  ; Saturate(value)
  %3474 = and i32 %3407, 128
  %3475 = icmp ne i32 %3474, 0
  %3476 = select i1 %3475, float %3473, float %3469
  %3477 = fmul fast float %3476, %3468
  %3478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3479 = extractvalue %dx.types.CBufRet.f32 %3478, 0
  %3480 = fcmp fast ugt float %3477, %3479
  br i1 %3480, label %3481, label %3378

; <label>:3481                                    ; preds = %3398
  %3482 = select i1 %3440, float %3477, float 0.000000e+00
  %3483 = fadd fast float %3482, %3259
  %3484 = call float @dx.op.unary.f32(i32 7, float %3483)  ; Saturate(value)
  br i1 %3440, label %3378, label %3485

; <label>:3485                                    ; preds = %3481
  %3486 = and i32 %3407, 4
  %3487 = and i32 %3407, 8
  %3488 = add i32 %3290, 0
  %3489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3488, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3491 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3489, %dx.types.Handle %3490, float %3418, float %3421, float undef, float undef, i32 0, i32 0, i32 undef, float %3423, float %3425, float undef, float %3427, float %3429, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 0
  %3493 = extractvalue %dx.types.ResRet.f32 %3491, 1
  %3494 = extractvalue %dx.types.ResRet.f32 %3491, 2
  %3495 = extractvalue %dx.types.ResRet.f32 %3491, 3
  %3496 = bitcast float %3316 to i32
  %3497 = and i32 %3496, 255
  %3498 = uitofp i32 %3497 to float
  %3499 = lshr i32 %3496, 8
  %3500 = and i32 %3499, 255
  %3501 = uitofp i32 %3500 to float
  %3502 = fmul fast float %3495, %3498
  %3503 = fadd fast float %3502, %3501
  %3504 = fmul fast float %3503, 0x3F70101000000000
  %3505 = add i32 %3291, 0
  %3506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3505, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3507 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3506, %dx.types.Handle %3490, float %3418, float %3421, float undef, float undef, i32 0, i32 0, i32 undef, float %3423, float %3425, float undef, float %3427, float %3429, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3511 = extractvalue %dx.types.ResRet.f32 %3507, 3
  %3512 = bitcast float %3310 to i32
  %3513 = and i32 %3512, 255
  %3514 = uitofp i32 %3513 to float
  %3515 = lshr i32 %3512, 8
  %3516 = and i32 %3515, 255
  %3517 = uitofp i32 %3516 to float
  %3518 = lshr i32 %3512, 16
  %3519 = and i32 %3518, 255
  %3520 = uitofp i32 %3519 to float
  %3521 = fmul fast float %3520, 0x3F70101000000000
  %3522 = fmul fast float %3508, %3514
  %3523 = fadd fast float %3522, %3517
  %3524 = fmul fast float %3523, 0x3F70101000000000
  %3525 = fadd fast float %3509, -5.000000e-01
  %3526 = fadd fast float %3511, -5.000000e-01
  %3527 = fmul fast float %3525, %3521
  %3528 = fmul fast float %3526, %3521
  %3529 = fadd fast float %3527, 5.000000e-01
  %3530 = fadd fast float %3528, 5.000000e-01
  %3531 = fmul fast float %3492, %3319
  %3532 = fmul fast float %3493, %3320
  %3533 = fmul fast float %3494, %3321
  %3534 = fmul fast float %3529, 2.000000e+00
  %3535 = fadd fast float %3534, -1.000000e+00
  %3536 = fmul fast float %3530, 2.000000e+00
  %3537 = fadd fast float %3536, -1.000000e+00
  %3538 = fadd fast float %3535, %3537
  %3539 = fmul fast float %3538, 5.000000e-01
  %3540 = fsub fast float %3535, %3537
  %3541 = fmul fast float %3540, 5.000000e-01
  %3542 = call float @dx.op.unary.f32(i32 6, float %3539)  ; FAbs(value)
  %3543 = fsub fast float 1.000000e+00, %3542
  %3544 = call float @dx.op.unary.f32(i32 6, float %3541)  ; FAbs(value)
  %3545 = fsub fast float %3543, %3544
  %3546 = call float @dx.op.dot3.f32(i32 55, float %3539, float %3541, float %3545, float %3539, float %3541, float %3545)  ; Dot3(ax,ay,az,bx,by,bz)
  %3547 = call float @dx.op.unary.f32(i32 25, float %3546)  ; Rsqrt(value)
  %3548 = fmul fast float %3539, %3547
  %3549 = fmul fast float %3541, %3547
  %3550 = fmul fast float %3547, %3545
  %3551 = fmul fast float %3550, %3285
  %3552 = fmul fast float %3550, %3286
  %3553 = fmul fast float %3550, %3287
  %3554 = fmul fast float %3548, %3307
  %3555 = fmul fast float %3548, %3308
  %3556 = fmul fast float %3548, %3309
  %3557 = fadd fast float %3554, %3551
  %3558 = fadd fast float %3555, %3552
  %3559 = fadd fast float %3556, %3553
  %3560 = fmul fast float %3549, %3313
  %3561 = fmul fast float %3549, %3314
  %3562 = fmul fast float %3549, %3315
  %3563 = fadd fast float %3557, %3560
  %3564 = fadd fast float %3558, %3561
  %3565 = fadd fast float %3559, %3562
  %3566 = call float @dx.op.dot3.f32(i32 55, float %3563, float %3564, float %3565, float %3563, float %3564, float %3565)  ; Dot3(ax,ay,az,bx,by,bz)
  %3567 = call float @dx.op.unary.f32(i32 25, float %3566)  ; Rsqrt(value)
  %3568 = fmul fast float %3563, %3567
  %3569 = fmul fast float %3564, %3567
  %3570 = fmul fast float %3565, %3567
  %3571 = icmp ne i32 %3487, 0
  %3572 = select i1 %3571, float 1.000000e+00, float 0.000000e+00
  %3573 = fmul fast float %3477, %3572
  %3574 = and i32 %3407, 1
  %3575 = icmp eq i32 %3574, 0
  br i1 %3575, label %3576, label %3580

; <label>:3576                                    ; preds = %3485
  %3577 = fsub fast float %3568, %3267
  %3578 = fsub fast float %3569, %3268
  %3579 = fsub fast float %3570, %3269
  br label %3580

; <label>:3580                                    ; preds = %3576, %3485
  %3581 = phi float [ %3577, %3576 ], [ %3568, %3485 ]
  %3582 = phi float [ %3578, %3576 ], [ %3569, %3485 ]
  %3583 = phi float [ %3579, %3576 ], [ %3570, %3485 ]
  %3584 = fmul float %3583, %3573
  %3585 = fmul float %3582, %3573
  %3586 = fmul float %3581, %3573
  %3587 = fadd fast float %3586, %3267
  %3588 = fadd fast float %3585, %3268
  %3589 = fadd fast float %3584, %3269
  %3590 = icmp ne i32 %3486, 0
  %3591 = select i1 %3590, float 1.000000e+00, float 0.000000e+00
  %3592 = fmul fast float %3477, %3591
  %3593 = fsub fast float %3531, %3274
  %3594 = fsub fast float %3532, %3275
  %3595 = fsub fast float %3533, %3276
  %3596 = fmul fast float %3593, %3592
  %3597 = fmul fast float %3594, %3592
  %3598 = fmul fast float %3595, %3592
  %3599 = fadd fast float %3596, %3274
  %3600 = fadd fast float %3597, %3275
  %3601 = fadd fast float %3598, %3276
  %3602 = fsub fast float %3504, %3273
  %3603 = fmul fast float %3602, %3592
  %3604 = fadd fast float %3603, %3273
  %3605 = fmul fast float %3592, %3263
  %3606 = fsub fast float %3263, %3605
  %3607 = fmul fast float %3592, %3262
  %3608 = fsub fast float %3262, %3607
  %3609 = fadd fast float %3477, %3272
  %3610 = call float @dx.op.unary.f32(i32 7, float %3609)  ; Saturate(value)
  %3611 = fsub fast float %3524, %3271
  %3612 = fmul fast float %3611, %3573
  %3613 = fadd fast float %3612, %3271
  %3614 = fsub fast float %3510, %3270
  %3615 = fmul fast float %3614, %3573
  %3616 = fadd fast float %3615, %3270
  %3617 = call float @dx.op.dot3.f32(i32 55, float %3531, float %3532, float %3533, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3619 = extractvalue %dx.types.CBufRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.CBufRet.f32 %3618, 1
  %3621 = fmul fast float %3620, %3617
  %3622 = fadd fast float %3621, %3619
  %3623 = call float @dx.op.unary.f32(i32 7, float %3622)  ; Saturate(value)
  %3624 = bitcast float %3322 to i32
  %3625 = and i32 %3624, 65535
  %3626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3625)  ; LegacyF16ToF32(value)
  %3627 = lshr i32 %3624, 16
  %3628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3627)  ; LegacyF16ToF32(value)
  %3629 = fcmp fast oge float %3626, 0.000000e+00
  %3630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3631 = extractvalue %dx.types.CBufRet.f32 %3630, 0
  %3632 = select i1 %3629, float %3626, float %3631
  %3633 = fadd fast float %3632, %3628
  %3634 = fsub fast float %3623, %3261
  %3635 = fmul fast float %3634, %3477
  %3636 = fadd fast float %3635, %3261
  %3637 = fmul fast float %3633, %3477
  %3638 = call float @dx.op.binary.f32(i32 35, float %3260, float %3637)  ; FMax(a,b)
  %3639 = and i32 %3407, 16
  %3640 = icmp eq i32 %3639, 0
  br i1 %3640, label %3663, label %3641

; <label>:3641                                    ; preds = %3580
  %3642 = bitcast float %3328 to i32
  %3643 = add i32 %3325, 0
  %3644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3643, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3645 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3644, %dx.types.Handle %3490, float %3418, float %3421, float undef, float undef, i32 0, i32 0, i32 undef, float %3423, float %3425, float undef, float %3427, float %3429, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3646 = extractvalue %dx.types.ResRet.f32 %3645, 0
  %3647 = extractvalue %dx.types.ResRet.f32 %3645, 1
  %3648 = extractvalue %dx.types.ResRet.f32 %3645, 2
  %3649 = and i32 %3642, 65535
  %3650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3649)  ; LegacyF16ToF32(value)
  %3651 = fmul fast float %3646, %3319
  %3652 = fmul fast float %3647, %3320
  %3653 = fmul fast float %3648, %3321
  %3654 = and i32 %3407, 16384
  %3655 = icmp ne i32 %3654, 0
  %3656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3657 = extractvalue %dx.types.CBufRet.f32 %3656, 0
  %3658 = select i1 %3655, float %3657, float 1.000000e+00
  %3659 = fmul fast float %3658, %3650
  %3660 = fmul fast float %3651, %3659
  %3661 = fmul fast float %3652, %3659
  %3662 = fmul fast float %3653, %3659
  br label %3663

; <label>:3663                                    ; preds = %3641, %3580
  %3664 = phi float [ %3660, %3641 ], [ 0.000000e+00, %3580 ]
  %3665 = phi float [ %3661, %3641 ], [ 0.000000e+00, %3580 ]
  %3666 = phi float [ %3662, %3641 ], [ 0.000000e+00, %3580 ]
  %3667 = fsub fast float %3664, %3264
  %3668 = fsub fast float %3665, %3265
  %3669 = fsub fast float %3666, %3266
  %3670 = fmul fast float %3667, %3477
  %3671 = fmul fast float %3668, %3477
  %3672 = fmul fast float %3669, %3477
  %3673 = fadd fast float %3670, %3264
  %3674 = fadd fast float %3671, %3265
  %3675 = fadd fast float %3672, %3266
  br label %3378

; <label>:3676                                    ; preds = %3378
  br label %3677

; <label>:3677                                    ; preds = %3676, %3194
  %3678 = phi float [ 0.000000e+00, %3194 ], [ %3379, %3676 ]
  %3679 = phi float [ %3164, %3194 ], [ %3380, %3676 ]
  %3680 = phi float [ %3138, %3194 ], [ %3381, %3676 ]
  %3681 = phi float [ 0.000000e+00, %3194 ], [ %3382, %3676 ]
  %3682 = phi float [ 0.000000e+00, %3194 ], [ %3383, %3676 ]
  %3683 = phi float [ %3132, %3194 ], [ %3384, %3676 ]
  %3684 = phi float [ %3133, %3194 ], [ %3385, %3676 ]
  %3685 = phi float [ %3134, %3194 ], [ %3386, %3676 ]
  %3686 = phi float [ %3190, %3194 ], [ %3387, %3676 ]
  %3687 = phi float [ %3191, %3194 ], [ %3388, %3676 ]
  %3688 = phi float [ %3192, %3194 ], [ %3389, %3676 ]
  %3689 = phi float [ %3137, %3194 ], [ %3390, %3676 ]
  %3690 = phi float [ %3136, %3194 ], [ %3391, %3676 ]
  %3691 = phi float [ 0.000000e+00, %3194 ], [ %3392, %3676 ]
  %3692 = phi float [ %3135, %3194 ], [ %3393, %3676 ]
  %3693 = phi float [ %3129, %3194 ], [ %3394, %3676 ]
  %3694 = phi float [ %3130, %3194 ], [ %3395, %3676 ]
  %3695 = phi float [ %3131, %3194 ], [ %3396, %3676 ]
  %3696 = call float @dx.op.dot3.f32(i32 55, float %3686, float %3687, float %3688, float %3686, float %3687, float %3688)  ; Dot3(ax,ay,az,bx,by,bz)
  %3697 = call float @dx.op.unary.f32(i32 25, float %3696)  ; Rsqrt(value)
  %3698 = fmul fast float %3697, %3686
  %3699 = fmul fast float %3697, %3687
  %3700 = fmul fast float %3697, %3688
  %3701 = fadd fast float %3691, %918
  %3702 = call float @dx.op.unary.f32(i32 7, float %3701)  ; Saturate(value)
  %3703 = call float @dx.op.dot3.f32(i32 55, float %3698, float %3699, float %3700, float %3698, float %3699, float %3700)  ; Dot3(ax,ay,az,bx,by,bz)
  %3704 = call float @dx.op.unary.f32(i32 25, float %3703)  ; Rsqrt(value)
  %3705 = fmul fast float %3704, %3698
  %3706 = fmul fast float %3704, %3699
  %3707 = fmul fast float %3704, %3700
  br label %3708

; <label>:3708                                    ; preds = %3677, %3126
  %3709 = phi float [ %3705, %3677 ], [ %3190, %3126 ]
  %3710 = phi float [ %3706, %3677 ], [ %3191, %3126 ]
  %3711 = phi float [ %3707, %3677 ], [ %3192, %3126 ]
  %3712 = phi float [ %3693, %3677 ], [ %3129, %3126 ]
  %3713 = phi float [ %3694, %3677 ], [ %3130, %3126 ]
  %3714 = phi float [ %3695, %3677 ], [ %3131, %3126 ]
  %3715 = phi float [ %3683, %3677 ], [ %3132, %3126 ]
  %3716 = phi float [ %3684, %3677 ], [ %3133, %3126 ]
  %3717 = phi float [ %3685, %3677 ], [ %3134, %3126 ]
  %3718 = phi float [ %3692, %3677 ], [ %3135, %3126 ]
  %3719 = phi float [ %3702, %3677 ], [ %918, %3126 ]
  %3720 = phi float [ %3690, %3677 ], [ %3136, %3126 ]
  %3721 = phi float [ %3689, %3677 ], [ %3137, %3126 ]
  %3722 = phi float [ %3682, %3677 ], [ 0.000000e+00, %3126 ]
  %3723 = phi float [ %3681, %3677 ], [ 0.000000e+00, %3126 ]
  %3724 = phi float [ %3678, %3677 ], [ 0.000000e+00, %3126 ]
  %3725 = phi float [ %3679, %3677 ], [ %3164, %3126 ]
  %3726 = phi float [ %3680, %3677 ], [ %3138, %3126 ]
  %3727 = fadd fast float %3718, 0xBFB99999A0000000
  %3728 = call float @dx.op.unary.f32(i32 7, float %3727)  ; Saturate(value)
  %3729 = fmul fast float %3728, 0x3FF1C71C80000000
  %3730 = call float @dx.op.binary.f32(i32 36, float %3718, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3731 = fsub fast float 1.000000e+00, %3729
  %3732 = call float @dx.op.unary.f32(i32 7, float %3731)  ; Saturate(value)
  %3733 = fmul fast float %3732, %3712
  %3734 = fmul fast float %3732, %3713
  %3735 = fmul fast float %3732, %3714
  %3736 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3737 = call float @dx.op.unary.f32(i32 7, float %3734)  ; Saturate(value)
  %3738 = call float @dx.op.unary.f32(i32 7, float %3735)  ; Saturate(value)
  %3739 = fmul fast float %3729, %3712
  %3740 = fmul fast float %3729, %3713
  %3741 = fmul fast float %3729, %3714
  %3742 = fadd fast float %3739, %3730
  %3743 = fadd fast float %3740, %3730
  %3744 = fadd fast float %3741, %3730
  %3745 = call float @dx.op.unary.f32(i32 7, float %3742)  ; Saturate(value)
  %3746 = call float @dx.op.unary.f32(i32 7, float %3743)  ; Saturate(value)
  %3747 = call float @dx.op.unary.f32(i32 7, float %3744)  ; Saturate(value)
  %3748 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3749 = fadd fast float %3712, %3145
  %3750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.i32 %3750, 3
  %3752 = and i32 %3751, 8
  %3753 = icmp ne i32 %3752, 0
  %3754 = call float @dx.op.binary.f32(i32 35, float %3736, float %3749)  ; FMax(a,b)
  %3755 = call float @dx.op.binary.f32(i32 35, float %3737, float %3749)  ; FMax(a,b)
  %3756 = call float @dx.op.binary.f32(i32 35, float %3738, float %3749)  ; FMax(a,b)
  %3757 = call float @dx.op.dot3.f32(i32 55, float %3736, float %3737, float %3738, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3758 = select i1 %202, float %3749, float %3736
  %3759 = select i1 %202, float %3757, float %3737
  %3760 = select i1 %202, float 1.000000e+00, float %3738
  %3761 = select i1 %3753, float %3754, float %3758
  %3762 = select i1 %3753, float %3755, float %3759
  %3763 = select i1 %3753, float %3756, float %3760
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.CBufRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.CBufRet.f32 %3764, 2
  %3768 = fadd fast float %3765, %163
  %3769 = fadd fast float %3766, %164
  %3770 = fadd fast float %3767, %165
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 0
  %3773 = extractvalue %dx.types.CBufRet.f32 %3771, 1
  %3774 = fsub fast float %3768, %3772
  %3775 = fsub fast float %3769, %3773
  %3776 = fmul fast float %3774, %3774
  %3777 = fmul fast float %3775, %3775
  %3778 = fadd fast float %3776, %3777
  %3779 = call float @dx.op.unary.f32(i32 24, float %3778)  ; Sqrt(value)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3771, 2
  %3781 = fcmp fast olt float %3779, %3780
  br i1 %3781, label %3782, label %3849

; <label>:3782                                    ; preds = %3708
  %3783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3784 = extractvalue %dx.types.CBufRet.f32 %3783, 0
  %3785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3786 = extractvalue %dx.types.CBufRet.f32 %3785, 0
  %3787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3788 = extractvalue %dx.types.CBufRet.f32 %3787, 0
  %3789 = extractvalue %dx.types.CBufRet.f32 %3783, 1
  %3790 = extractvalue %dx.types.CBufRet.f32 %3785, 1
  %3791 = extractvalue %dx.types.CBufRet.f32 %3787, 1
  %3792 = extractvalue %dx.types.CBufRet.f32 %3783, 3
  %3793 = extractvalue %dx.types.CBufRet.f32 %3785, 3
  %3794 = extractvalue %dx.types.CBufRet.f32 %3787, 3
  %3795 = fadd fast float %3792, %3768
  %3796 = fadd fast float %3793, %3769
  %3797 = fadd fast float %3794, %3770
  %3798 = fmul fast float %3795, %3784
  %3799 = call float @dx.op.tertiary.f32(i32 46, float %3796, float %3786, float %3798)  ; FMad(a,b,c)
  %3800 = call float @dx.op.tertiary.f32(i32 46, float %3797, float %3788, float %3799)  ; FMad(a,b,c)
  %3801 = fmul fast float %3795, %3789
  %3802 = call float @dx.op.tertiary.f32(i32 46, float %3796, float %3790, float %3801)  ; FMad(a,b,c)
  %3803 = call float @dx.op.tertiary.f32(i32 46, float %3797, float %3791, float %3802)  ; FMad(a,b,c)
  %3804 = fsub fast float %3800, %3792
  %3805 = fsub fast float %3803, %3793
  %3806 = fsub fast float %3804, %3772
  %3807 = fadd fast float %3806, %3780
  %3808 = fsub fast float %3805, %3773
  %3809 = fadd fast float %3808, %3780
  %3810 = extractvalue %dx.types.CBufRet.f32 %3771, 3
  %3811 = fmul fast float %3807, %3810
  %3812 = fmul fast float %3809, %3810
  %3813 = call float @dx.op.unary.f32(i32 7, float %3811)  ; Saturate(value)
  %3814 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3815 = fsub fast float 1.000000e+00, %3813
  %3816 = fsub fast float 1.000000e+00, %3814
  %3817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %3815, float %3816, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3819 = fcmp fast ugt float %3818, 0.000000e+00
  br i1 %3819, label %3820, label %4123

; <label>:3820                                    ; preds = %3782
  %3821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3822 = extractvalue %dx.types.CBufRet.f32 %3821, 2
  %3823 = fmul fast float %3822, %3818
  %3824 = extractvalue %dx.types.CBufRet.f32 %3821, 3
  %3825 = fadd fast float %3824, %3823
  %3826 = extractvalue %dx.types.CBufRet.f32 %3787, 2
  %3827 = fadd fast float %3825, %3794
  %3828 = fmul fast float %3800, %3788
  %3829 = call float @dx.op.tertiary.f32(i32 46, float %3803, float %3791, float %3828)  ; FMad(a,b,c)
  %3830 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3826, float %3829)  ; FMad(a,b,c)
  %3831 = fsub fast float %3830, %3794
  %3832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3832, 2
  %3834 = fsub fast float %3831, %3833
  %3835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %3815, float %3816, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3836 = extractvalue %dx.types.ResRet.f32 %3835, 0
  %3837 = extractvalue %dx.types.ResRet.f32 %3835, 1
  %3838 = extractvalue %dx.types.ResRet.f32 %3835, 2
  %3839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %3815, float %3816, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3840 = extractvalue %dx.types.ResRet.f32 %3839, 0
  %3841 = extractvalue %dx.types.ResRet.f32 %3839, 1
  %3842 = extractvalue %dx.types.ResRet.f32 %3839, 2
  %3843 = fadd fast float %3840, %3836
  %3844 = fmul fast float %3843, 0x3F847AE140000000
  %3845 = fadd fast float %3841, %3837
  %3846 = fmul fast float %3845, 0x3F847AE140000000
  %3847 = fadd fast float %3842, %3838
  %3848 = fmul fast float %3847, 0x3F847AE140000000
  br label %4123

; <label>:3849                                    ; preds = %3708
  %3850 = and i32 %181, 1
  %3851 = icmp eq i32 %3850, 0
  br i1 %3851, label %4123, label %3852

; <label>:3852                                    ; preds = %3849
  %3853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3854 = extractvalue %dx.types.CBufRet.f32 %3853, 0
  %3855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3856 = extractvalue %dx.types.CBufRet.f32 %3855, 0
  %3857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3858 = extractvalue %dx.types.CBufRet.f32 %3857, 0
  %3859 = extractvalue %dx.types.CBufRet.f32 %3853, 1
  %3860 = extractvalue %dx.types.CBufRet.f32 %3855, 1
  %3861 = extractvalue %dx.types.CBufRet.f32 %3857, 1
  %3862 = extractvalue %dx.types.CBufRet.f32 %3853, 3
  %3863 = extractvalue %dx.types.CBufRet.f32 %3855, 3
  %3864 = extractvalue %dx.types.CBufRet.f32 %3857, 3
  %3865 = fadd fast float %3862, %3768
  %3866 = fadd fast float %3863, %3769
  %3867 = fadd fast float %3864, %3770
  %3868 = fmul fast float %3865, %3854
  %3869 = call float @dx.op.tertiary.f32(i32 46, float %3866, float %3856, float %3868)  ; FMad(a,b,c)
  %3870 = call float @dx.op.tertiary.f32(i32 46, float %3867, float %3858, float %3869)  ; FMad(a,b,c)
  %3871 = fmul fast float %3865, %3859
  %3872 = call float @dx.op.tertiary.f32(i32 46, float %3866, float %3860, float %3871)  ; FMad(a,b,c)
  %3873 = call float @dx.op.tertiary.f32(i32 46, float %3867, float %3861, float %3872)  ; FMad(a,b,c)
  %3874 = fsub fast float %3870, %3862
  %3875 = fsub fast float %3873, %3863
  %3876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.f32 %3876, 0
  %3878 = extractvalue %dx.types.CBufRet.f32 %3876, 1
  %3879 = extractvalue %dx.types.CBufRet.f32 %3876, 2
  %3880 = extractvalue %dx.types.CBufRet.f32 %3876, 3
  %3881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3881, 3
  %3883 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3884 = extractvalue %dx.types.CBufRet.i32 %3883, 0
  %3885 = extractvalue %dx.types.CBufRet.i32 %3883, 1
  %3886 = udiv i32 %3885, %3884
  %3887 = fsub fast float %3874, %3877
  %3888 = fsub fast float %3875, %3878
  %3889 = call float @dx.op.binary.f32(i32 35, float %3887, float 0.000000e+00)  ; FMax(a,b)
  %3890 = call float @dx.op.binary.f32(i32 35, float %3888, float 0.000000e+00)  ; FMax(a,b)
  %3891 = call float @dx.op.binary.f32(i32 36, float %3889, float %3879)  ; FMin(a,b)
  %3892 = call float @dx.op.binary.f32(i32 36, float %3890, float %3880)  ; FMin(a,b)
  %3893 = add i32 %3884, -1
  %3894 = add i32 %3886, -1
  %3895 = fmul fast float %3891, %3882
  %3896 = fmul fast float %3892, %3882
  %3897 = fptoui float %3895 to i32
  %3898 = fptoui float %3896 to i32
  %3899 = call i32 @dx.op.binary.i32(i32 40, i32 %3897, i32 %3893)  ; UMin(a,b)
  %3900 = call i32 @dx.op.binary.i32(i32 40, i32 %3898, i32 %3894)  ; UMin(a,b)
  %3901 = mul i32 %3900, %3884
  %3902 = add i32 %3901, %3899
  %3903 = shl i32 %3902, 2
  %3904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3905 = extractvalue %dx.types.ResRet.i32 %3904, 0
  %3906 = icmp eq i32 %3905, -1
  br i1 %3906, label %4123, label %3907

; <label>:3907                                    ; preds = %3852
  %3908 = mul i32 %3905, 148
  %3909 = add i32 %3908, 4
  %3910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3909, i32 undef)  ; BufferLoad(srv,index,wot)
  %3911 = extractvalue %dx.types.ResRet.f32 %3910, 0
  %3912 = add i32 %3908, 8
  %3913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.f32 %3913, 0
  %3915 = add i32 %3908, 36
  %3916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.f32 %3916, 0
  %3918 = add i32 %3908, 60
  %3919 = add i32 %3908, 92
  %3920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3919, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.i32 %3920, 0
  %3922 = add i32 %3908, 116
  %3923 = fsub fast float %3874, %3911
  %3924 = fsub fast float %3875, %3914
  %3925 = fmul fast float %3882, %3923
  %3926 = fmul fast float %3882, %3924
  %3927 = call float @dx.op.unary.f32(i32 7, float %3925)  ; Saturate(value)
  %3928 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  %3929 = fsub fast float 1.000000e+00, %3928
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 2
  %3932 = call float @dx.op.unary.f32(i32 83, float %3927)  ; DerivCoarseX(value)
  %3933 = call float @dx.op.unary.f32(i32 83, float %3929)  ; DerivCoarseX(value)
  %3934 = call float @dx.op.unary.f32(i32 84, float %3927)  ; DerivCoarseY(value)
  %3935 = call float @dx.op.unary.f32(i32 84, float %3929)  ; DerivCoarseY(value)
  %3936 = fmul fast float %3932, %3931
  %3937 = fmul fast float %3933, %3931
  %3938 = fmul fast float %3934, %3931
  %3939 = fmul fast float %3935, %3931
  %3940 = call float @dx.op.dot2.f32(i32 54, float %3938, float %3939, float %3938, float %3939)  ; Dot2(ax,ay,bx,by)
  %3941 = call float @dx.op.dot2.f32(i32 54, float %3936, float %3937, float %3936, float %3937)  ; Dot2(ax,ay,bx,by)
  %3942 = call float @dx.op.binary.f32(i32 35, float %3941, float %3940)  ; FMax(a,b)
  %3943 = call float @dx.op.unary.f32(i32 23, float %3942)  ; Log(value)
  %3944 = fmul fast float %3943, 5.000000e-01
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 1
  %3947 = fadd fast float %3946, %3944
  %3948 = call float @dx.op.binary.f32(i32 35, float %3947, float 0.000000e+00)  ; FMax(a,b)
  %3949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3949, 3
  %3951 = fadd fast float %3950, %3948
  %3952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3953 = extractvalue %dx.types.CBufRet.f32 %3952, 3
  %3954 = fadd fast float %3951, %3953
  %3955 = add i32 %3921, 0
  %3956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3955, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3957 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3956, i32 0)  ; GetDimensions(handle,mipLevel)
  %3958 = extractvalue %dx.types.Dimensions %3957, 0
  %3959 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3958)  ; FirstbitLo(value)
  %3960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.i32 %3960, 1
  %3962 = sub nsw i32 %3961, %3959
  %3963 = sitofp i32 %3962 to float
  %3964 = fsub fast float %3954, %3963
  %3965 = call float @dx.op.binary.f32(i32 35, float %3964, float 0.000000e+00)  ; FMax(a,b)
  %3966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3956, %dx.types.Handle %27, float %3927, float %3929, float %3917, float undef, i32 0, i32 0, i32 undef, float %3965)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3967 = extractvalue %dx.types.ResRet.f32 %3966, 0
  %3968 = fcmp ule float %3967, 0x3FE0101020000000
  %3969 = extractvalue %dx.types.CBufRet.i32 %3960, 0
  %3970 = and i32 %3969, 128
  %3971 = icmp ne i32 %3970, 0
  %3972 = and i1 %3968, %3971
  br i1 %3972, label %4123, label %3973

; <label>:3973                                    ; preds = %3907
  %3974 = add i32 %3908, 20
  %3975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3974, i32 undef)  ; BufferLoad(srv,index,wot)
  %3976 = extractvalue %dx.types.ResRet.f32 %3975, 0
  %3977 = add i32 %3908, 24
  %3978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3979 = extractvalue %dx.types.ResRet.f32 %3978, 0
  %3980 = add i32 %3908, 40
  %3981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3980, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 0
  %3983 = add i32 %3908, 96
  %3984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3985 = extractvalue %dx.types.ResRet.i32 %3984, 0
  %3986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3987 = extractvalue %dx.types.CBufRet.f32 %3986, 2
  %3988 = fmul fast float %3987, %3927
  %3989 = fmul fast float %3987, %3929
  %3990 = extractvalue %dx.types.CBufRet.f32 %3986, 3
  %3991 = fadd fast float %3988, %3990
  %3992 = fadd fast float %3989, %3990
  %3993 = add i32 %3985, 0
  %3994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3993, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3995 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3994, i32 0)  ; GetDimensions(handle,mipLevel)
  %3996 = extractvalue %dx.types.Dimensions %3995, 0
  %3997 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3996)  ; FirstbitLo(value)
  %3998 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.i32 %3998, 1
  %4000 = sub nsw i32 %3999, %3997
  %4001 = sitofp i32 %4000 to float
  %4002 = fsub fast float %3951, %4001
  %4003 = call float @dx.op.binary.f32(i32 35, float %4002, float 0.000000e+00)  ; FMax(a,b)
  %4004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3994, %dx.types.Handle %27, float %3991, float %3992, float %3982, float undef, i32 0, i32 0, i32 undef, float %4003)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4005 = extractvalue %dx.types.ResRet.f32 %4004, 0
  %4006 = fmul fast float %4005, %3976
  %4007 = fadd fast float %4006, %3979
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.CBufRet.f32 %4008, 1
  %4011 = extractvalue %dx.types.CBufRet.f32 %4008, 2
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 3
  %4014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4014, 3
  %4016 = extractvalue %dx.types.CBufRet.f32 %4008, 3
  %4017 = fadd fast float %4013, %3874
  %4018 = fadd fast float %4015, %3875
  %4019 = fadd fast float %4007, %4016
  %4020 = fmul fast float %4017, %4009
  %4021 = call float @dx.op.tertiary.f32(i32 46, float %4018, float %4010, float %4020)  ; FMad(a,b,c)
  %4022 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %4011, float %4021)  ; FMad(a,b,c)
  %4023 = fsub fast float %4022, %4016
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 2
  %4026 = fsub fast float %4023, %4025
  %4027 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4028 = extractvalue %dx.types.CBufRet.i32 %4027, 0
  %4029 = call i32 @dx.op.binary.i32(i32 40, i32 %3905, i32 %4028)  ; UMin(a,b)
  %4030 = mul i32 %4029, 36
  %4031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4030, i32 undef)  ; BufferLoad(srv,index,wot)
  %4032 = extractvalue %dx.types.ResRet.i32 %4031, 0
  %4033 = add i32 %4030, 4
  %4034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4035 = extractvalue %dx.types.CBufRet.f32 %4034, 0
  %4036 = fmul fast float %4035, %3927
  %4037 = fmul fast float %4035, %3929
  %4038 = extractvalue %dx.types.CBufRet.f32 %4034, 1
  %4039 = fadd fast float %4036, %4038
  %4040 = fadd fast float %4037, %4038
  %4041 = icmp eq i32 %4032, 0
  br i1 %4041, label %4110, label %4042

; <label>:4042                                    ; preds = %3973
  br label %4043

; <label>:4043                                    ; preds = %4100, %4042
  %4044 = phi float [ %4101, %4100 ], [ 0.000000e+00, %4042 ]
  %4045 = phi float [ %4102, %4100 ], [ 0.000000e+00, %4042 ]
  %4046 = phi float [ %4103, %4100 ], [ 0.000000e+00, %4042 ]
  %4047 = phi float [ %4104, %4100 ], [ 0.000000e+00, %4042 ]
  %4048 = phi float [ %4105, %4100 ], [ 0.000000e+00, %4042 ]
  %4049 = phi float [ %4106, %4100 ], [ 0.000000e+00, %4042 ]
  %4050 = phi i32 [ %4107, %4100 ], [ 0, %4042 ]
  %4051 = shl i32 %4050, 2
  %4052 = add i32 %3918, %4051
  %4053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4054 = extractvalue %dx.types.ResRet.f32 %4053, 0
  %4055 = add i32 %3922, %4051
  %4056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4055, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.i32 %4056, 0
  %4058 = add i32 %4057, 0
  %4059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4058, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4060 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4059, i32 0)  ; GetDimensions(handle,mipLevel)
  %4061 = extractvalue %dx.types.Dimensions %4060, 0
  %4062 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4061)  ; FirstbitLo(value)
  %4063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.i32 %4063, 1
  %4065 = sub nsw i32 %4064, %4062
  %4066 = sitofp i32 %4065 to float
  %4067 = fsub fast float %3951, %4066
  %4068 = call float @dx.op.binary.f32(i32 35, float %4067, float 0.000000e+00)  ; FMax(a,b)
  %4069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4059, %dx.types.Handle %27, float %4039, float %4040, float %4054, float undef, i32 0, i32 0, i32 undef, float %4068)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4070 = extractvalue %dx.types.ResRet.f32 %4069, 0
  %4071 = fcmp fast ogt float %4070, 0.000000e+00
  br i1 %4071, label %4072, label %4100

; <label>:4072                                    ; preds = %4043
  %4073 = add i32 %4033, %4051
  %4074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.i32 %4074, 0
  %4076 = and i32 %4075, 32767
  %4077 = mul nuw nsw i32 %4076, 928
  %4078 = add nuw nsw i32 %4077, 48
  %4079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4078, i32 undef)  ; BufferLoad(srv,index,wot)
  %4080 = extractvalue %dx.types.ResRet.f32 %4079, 0
  %4081 = extractvalue %dx.types.ResRet.f32 %4079, 1
  %4082 = extractvalue %dx.types.ResRet.f32 %4079, 2
  %4083 = add nuw nsw i32 %4077, 60
  %4084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4083, i32 undef)  ; BufferLoad(srv,index,wot)
  %4085 = extractvalue %dx.types.ResRet.f32 %4084, 0
  %4086 = extractvalue %dx.types.ResRet.f32 %4084, 1
  %4087 = extractvalue %dx.types.ResRet.f32 %4084, 2
  %4088 = fmul fast float %4080, %4070
  %4089 = fmul fast float %4081, %4070
  %4090 = fmul fast float %4082, %4070
  %4091 = fadd fast float %4088, %4044
  %4092 = fadd fast float %4089, %4045
  %4093 = fadd fast float %4090, %4046
  %4094 = fmul fast float %4085, %4070
  %4095 = fmul fast float %4086, %4070
  %4096 = fmul fast float %4087, %4070
  %4097 = fadd fast float %4094, %4047
  %4098 = fadd fast float %4095, %4048
  %4099 = fadd fast float %4096, %4049
  br label %4100

; <label>:4100                                    ; preds = %4072, %4043
  %4101 = phi float [ %4091, %4072 ], [ %4044, %4043 ]
  %4102 = phi float [ %4092, %4072 ], [ %4045, %4043 ]
  %4103 = phi float [ %4093, %4072 ], [ %4046, %4043 ]
  %4104 = phi float [ %4097, %4072 ], [ %4047, %4043 ]
  %4105 = phi float [ %4098, %4072 ], [ %4048, %4043 ]
  %4106 = phi float [ %4099, %4072 ], [ %4049, %4043 ]
  %4107 = add nuw i32 %4050, 1
  %4108 = icmp eq i32 %4107, %4032
  br i1 %4108, label %4109, label %4043

; <label>:4109                                    ; preds = %4100
  br label %4110

; <label>:4110                                    ; preds = %4109, %3973
  %4111 = phi float [ 0.000000e+00, %3973 ], [ %4101, %4109 ]
  %4112 = phi float [ 0.000000e+00, %3973 ], [ %4102, %4109 ]
  %4113 = phi float [ 0.000000e+00, %3973 ], [ %4103, %4109 ]
  %4114 = phi float [ 0.000000e+00, %3973 ], [ %4104, %4109 ]
  %4115 = phi float [ 0.000000e+00, %3973 ], [ %4105, %4109 ]
  %4116 = phi float [ 0.000000e+00, %3973 ], [ %4106, %4109 ]
  %4117 = fadd fast float %4114, %4111
  %4118 = fmul fast float %4117, 0x3F847AE140000000
  %4119 = fadd fast float %4115, %4112
  %4120 = fmul fast float %4119, 0x3F847AE140000000
  %4121 = fadd fast float %4116, %4113
  %4122 = fmul fast float %4121, 0x3F847AE140000000
  br label %4123

; <label>:4123                                    ; preds = %4110, %3907, %3852, %3849, %3820, %3782
  %4124 = phi float [ %3834, %3820 ], [ -1.310720e+05, %3782 ], [ %4026, %4110 ], [ -1.310720e+05, %3852 ], [ -1.310720e+05, %3907 ], [ -1.310720e+05, %3849 ]
  %4125 = phi float [ %3844, %3820 ], [ 0.000000e+00, %3782 ], [ %4118, %4110 ], [ 0.000000e+00, %3852 ], [ 0.000000e+00, %3907 ], [ 0.000000e+00, %3849 ]
  %4126 = phi float [ %3846, %3820 ], [ 0.000000e+00, %3782 ], [ %4120, %4110 ], [ 0.000000e+00, %3852 ], [ 0.000000e+00, %3907 ], [ 0.000000e+00, %3849 ]
  %4127 = phi float [ %3848, %3820 ], [ 0.000000e+00, %3782 ], [ %4122, %4110 ], [ 0.000000e+00, %3852 ], [ 0.000000e+00, %3907 ], [ 0.000000e+00, %3849 ]
  %4128 = phi i1 [ true, %3820 ], [ false, %3782 ], [ true, %4110 ], [ false, %3852 ], [ false, %3907 ], [ false, %3849 ]
  %4129 = and i32 %181, 3
  %4130 = icmp eq i32 %4129, 1
  %4131 = select i1 %4130, float 1.000000e+00, float 0.000000e+00
  %4132 = fsub fast float %4124, %165
  %4133 = call float @dx.op.unary.f32(i32 7, float %4132)  ; Saturate(value)
  %4134 = select i1 %4128, float %4133, float 1.000000e+00
  %4135 = fmul fast float %4134, %4131
  %4136 = icmp eq i32 %4129, 3
  %4137 = select i1 %4136, float 1.000000e+00, float %4135
  %4138 = call float @dx.op.binary.f32(i32 35, float %3724, float %4137)  ; FMax(a,b)
  %4139 = fcmp fast olt float %4137, 1.000000e+00
  %4140 = fcmp uge float %47, 0.000000e+00
  %4141 = and i1 %4140, %4139
  br i1 %4141, label %4142, label %4152

; <label>:4142                                    ; preds = %4123
  %4143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %47, float %48, float %49, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4144 = extractvalue %dx.types.ResRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.ResRet.f32 %4143, 1
  %4146 = extractvalue %dx.types.ResRet.f32 %4143, 2
  %4147 = fadd fast float %4144, %4138
  %4148 = fcmp ule float %46, 0.000000e+00
  %4149 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4150 = select i1 %4148, float %4149, float 1.000000e+00
  %4151 = fmul fast float %4150, %4146
  br label %4152

; <label>:4152                                    ; preds = %4142, %4123
  %4153 = phi float [ %4147, %4142 ], [ %4138, %4123 ]
  %4154 = phi float [ %4145, %4142 ], [ 0.000000e+00, %4123 ]
  %4155 = phi float [ %4151, %4142 ], [ 0.000000e+00, %4123 ]
  %4156 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4157 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4158 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4159 = fcmp fast une float %4157, 0.000000e+00
  %4160 = fcmp fast une float %4158, 0.000000e+00
  %4161 = or i1 %4159, %4160
  br i1 %4161, label %4162, label %4721

; <label>:4162                                    ; preds = %4152
  br i1 %4159, label %4163, label %4436

; <label>:4163                                    ; preds = %4162
  %4164 = call float @dx.op.unary.f32(i32 23, float %3721)  ; Log(value)
  %4165 = fmul fast float %4164, 4.000000e+00
  %4166 = call float @dx.op.unary.f32(i32 21, float %4165)  ; Exp(value)
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4169 = fmul fast float %4168, %34
  %4170 = fmul fast float %4168, %35
  %4171 = fmul fast float %4168, %36
  %4172 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4173 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4174 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4175 = call float @dx.op.unary.f32(i32 23, float %4172)  ; Log(value)
  %4176 = call float @dx.op.unary.f32(i32 23, float %4173)  ; Log(value)
  %4177 = call float @dx.op.unary.f32(i32 23, float %4174)  ; Log(value)
  %4178 = fmul fast float %4175, 4.000000e+00
  %4179 = fmul fast float %4176, 4.000000e+00
  %4180 = fmul fast float %4177, 4.000000e+00
  %4181 = call float @dx.op.unary.f32(i32 21, float %4178)  ; Exp(value)
  %4182 = call float @dx.op.unary.f32(i32 21, float %4179)  ; Exp(value)
  %4183 = call float @dx.op.unary.f32(i32 21, float %4180)  ; Exp(value)
  %4184 = fadd fast float %4182, %4181
  %4185 = fadd fast float %4184, %4183
  %4186 = fdiv fast float 1.000000e+00, %4185
  %4187 = fmul fast float %4186, %4181
  %4188 = fcmp fast ogt float %43, 0.000000e+00
  %4189 = fcmp fast ogt float %44, 0.000000e+00
  %4190 = fcmp fast ogt float %45, 0.000000e+00
  %4191 = fcmp fast olt float %43, 0.000000e+00
  %4192 = fcmp fast olt float %44, 0.000000e+00
  %4193 = fcmp fast olt float %45, 0.000000e+00
  %4194 = zext i1 %4188 to i32
  %4195 = zext i1 %4189 to i32
  %4196 = zext i1 %4190 to i32
  %4197 = zext i1 %4191 to i32
  %4198 = zext i1 %4192 to i32
  %4199 = zext i1 %4193 to i32
  %4200 = sub nsw i32 %4194, %4197
  %4201 = sub nsw i32 %4195, %4198
  %4202 = sub nsw i32 %4196, %4199
  %4203 = call float @dx.op.unary.f32(i32 83, float %4169)  ; DerivCoarseX(value)
  %4204 = call float @dx.op.unary.f32(i32 83, float %4170)  ; DerivCoarseX(value)
  %4205 = call float @dx.op.unary.f32(i32 83, float %4171)  ; DerivCoarseX(value)
  %4206 = call float @dx.op.unary.f32(i32 84, float %4169)  ; DerivCoarseY(value)
  %4207 = call float @dx.op.unary.f32(i32 84, float %4170)  ; DerivCoarseY(value)
  %4208 = call float @dx.op.unary.f32(i32 84, float %4171)  ; DerivCoarseY(value)
  %4209 = fcmp fast ole float %213, %4187
  %4210 = fmul fast float %4186, %4184
  %4211 = fcmp fast ole float %213, %4210
  %4212 = select i1 %4211, float %4171, float %4169
  %4213 = select i1 %4211, float %4169, float %4170
  %4214 = select i1 %4209, float %4170, float %4212
  %4215 = select i1 %4209, float %4171, float %4213
  %4216 = select i1 %4211, float %4205, float %4203
  %4217 = select i1 %4211, float %4203, float %4204
  %4218 = select i1 %4209, float %4204, float %4216
  %4219 = select i1 %4209, float %4205, float %4217
  %4220 = select i1 %4211, float %4208, float %4206
  %4221 = select i1 %4211, float %4206, float %4207
  %4222 = select i1 %4209, float %4207, float %4220
  %4223 = select i1 %4209, float %4208, float %4221
  %4224 = call float @dx.op.unary.f32(i32 27, float %4214)  ; Round_ni(value)
  %4225 = call float @dx.op.unary.f32(i32 27, float %4215)  ; Round_ni(value)
  %4226 = fptosi float %4224 to i32
  %4227 = fptosi float %4225 to i32
  %4228 = xor i32 %4227, %4226
  %4229 = sitofp i32 %4228 to float
  %4230 = fptosi float %4229 to i32
  %4231 = sitofp i32 %4230 to float
  %4232 = fmul fast float %4231, 0x3FE3C6EF40000000
  %4233 = frem fast float %4224, 2.560000e+02
  %4234 = frem fast float %4225, 2.560000e+02
  %4235 = fptoui float %4233 to i32
  %4236 = fptoui float %4234 to i32
  %4237 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4235, i32 %4236, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4238 = extractvalue %dx.types.ResRet.f32 %4237, 0
  %4239 = extractvalue %dx.types.ResRet.f32 %4237, 1
  %4240 = extractvalue %dx.types.ResRet.f32 %4237, 2
  %4241 = fadd fast float %4238, %4232
  %4242 = fadd fast float %4239, %4232
  %4243 = fadd fast float %4240, %4232
  %4244 = call float @dx.op.unary.f32(i32 22, float %4241)  ; Frc(value)
  %4245 = call float @dx.op.unary.f32(i32 22, float %4242)  ; Frc(value)
  %4246 = call float @dx.op.unary.f32(i32 22, float %4243)  ; Frc(value)
  %4247 = fmul fast float %4246, 0x401921FB60000000
  %4248 = call float @dx.op.unary.f32(i32 13, float %4247)  ; Sin(value)
  %4249 = call float @dx.op.unary.f32(i32 12, float %4247)  ; Cos(value)
  %4250 = fsub fast float -0.000000e+00, %4249
  %4251 = fmul fast float %4249, %4214
  %4252 = call float @dx.op.tertiary.f32(i32 46, float %4248, float %4215, float %4251)  ; FMad(a,b,c)
  %4253 = fmul fast float %4248, %4214
  %4254 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4215, float %4253)  ; FMad(a,b,c)
  %4255 = fadd fast float %4252, %4244
  %4256 = fadd fast float %4254, %4245
  %4257 = extractvalue %dx.types.CBufRet.f32 %4167, 3
  %4258 = bitcast float %4257 to i32
  %4259 = icmp eq i32 %4258, 0
  br i1 %4259, label %4298, label %4260

; <label>:4260                                    ; preds = %4163
  %4261 = add i32 %4258, 0
  %4262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4263 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4262, %dx.types.Handle %73, float %4255, float %4256, float undef, float undef, i32 0, i32 0, i32 undef, float %4218, float %4219, float undef, float %4222, float %4223, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4264 = extractvalue %dx.types.ResRet.f32 %4263, 0
  %4265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4266 = extractvalue %dx.types.CBufRet.f32 %4265, 1
  %4267 = extractvalue %dx.types.CBufRet.f32 %4265, 2
  %4268 = fsub fast float 1.000000e+00, %4157
  %4269 = call float @dx.op.binary.f32(i32 35, float %4268, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4270 = bitcast float %4157 to i32
  %4271 = sitofp i32 %4270 to float
  %4272 = fadd fast float %4271, 0xC1CFBF8940000000
  %4273 = fmul fast float %4267, %4272
  %4274 = fadd fast float %4273, 0x41CFBF8940000000
  %4275 = fptosi float %4274 to i32
  %4276 = bitcast i32 %4275 to float
  %4277 = bitcast float %4269 to i32
  %4278 = sitofp i32 %4277 to float
  %4279 = fadd fast float %4278, 0xC1CFBF8940000000
  %4280 = fmul fast float %4279, %4267
  %4281 = fadd fast float %4280, 0x41CFBF8940000000
  %4282 = fptosi float %4281 to i32
  %4283 = bitcast i32 %4282 to float
  %4284 = fmul fast float %4276, %4266
  %4285 = fmul fast float %4283, %4266
  %4286 = fsub fast float %4269, %4284
  %4287 = fadd fast float %4285, %4269
  %4288 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4289 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4290 = fsub fast float %4264, %4288
  %4291 = fsub fast float %4289, %4288
  %4292 = bitcast float %4291 to i32
  %4293 = sub nsw i32 2129859010, %4292
  %4294 = bitcast i32 %4293 to float
  %4295 = fmul fast float %4294, %4290
  %4296 = call float @dx.op.unary.f32(i32 7, float %4295)  ; Saturate(value)
  %4297 = fcmp fast olt float %4296, 0x3F70101020000000
  br i1 %4297, label %4436, label %4298

; <label>:4298                                    ; preds = %4260, %4163
  %4299 = phi float [ %4296, %4260 ], [ %4157, %4163 ]
  %4300 = fmul fast float %4299, %4166
  %4301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.i32 %4301, 1
  %4303 = extractvalue %dx.types.CBufRet.i32 %4301, 0
  %4304 = add i32 %4303, 0
  %4305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4304, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4306 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4305, %dx.types.Handle %72, float %4255, float %4256, float undef, float undef, i32 0, i32 0, i32 undef, float %4218, float %4219, float undef, float %4222, float %4223, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4307 = extractvalue %dx.types.ResRet.f32 %4306, 0
  %4308 = extractvalue %dx.types.ResRet.f32 %4306, 1
  %4309 = extractvalue %dx.types.ResRet.f32 %4306, 2
  %4310 = extractvalue %dx.types.ResRet.f32 %4306, 3
  %4311 = and i32 %4302, 255
  %4312 = uitofp i32 %4311 to float
  %4313 = lshr i32 %4302, 8
  %4314 = and i32 %4313, 255
  %4315 = uitofp i32 %4314 to float
  %4316 = fmul fast float %4310, %4312
  %4317 = fadd fast float %4316, %4315
  %4318 = fmul fast float %4317, 0x3F70101000000000
  %4319 = fadd fast float %4318, 0xBFB99999A0000000
  %4320 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  %4321 = fmul fast float %4320, 0x3FF1C71C80000000
  %4322 = call float @dx.op.binary.f32(i32 36, float %4318, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4323 = fsub fast float 1.000000e+00, %4321
  %4324 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4325 = fmul fast float %4324, %4307
  %4326 = fmul fast float %4324, %4308
  %4327 = fmul fast float %4324, %4309
  %4328 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4329 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4330 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  %4331 = fmul fast float %4321, %4307
  %4332 = fmul fast float %4321, %4308
  %4333 = fmul fast float %4321, %4309
  %4334 = fadd fast float %4331, %4322
  %4335 = fadd fast float %4332, %4322
  %4336 = fadd fast float %4333, %4322
  %4337 = call float @dx.op.unary.f32(i32 7, float %4334)  ; Saturate(value)
  %4338 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4339 = call float @dx.op.unary.f32(i32 7, float %4336)  ; Saturate(value)
  %4340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.i32 %4340, 3
  %4342 = extractvalue %dx.types.CBufRet.i32 %4340, 2
  %4343 = add i32 %4342, 0
  %4344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4343, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4345 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4344, %dx.types.Handle %72, float %4255, float %4256, float undef, float undef, i32 0, i32 0, i32 undef, float %4218, float %4219, float undef, float %4222, float %4223, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4346 = extractvalue %dx.types.ResRet.f32 %4345, 0
  %4347 = extractvalue %dx.types.ResRet.f32 %4345, 1
  %4348 = extractvalue %dx.types.ResRet.f32 %4345, 2
  %4349 = extractvalue %dx.types.ResRet.f32 %4345, 3
  %4350 = and i32 %4341, 255
  %4351 = uitofp i32 %4350 to float
  %4352 = lshr i32 %4341, 8
  %4353 = and i32 %4352, 255
  %4354 = uitofp i32 %4353 to float
  %4355 = lshr i32 %4341, 16
  %4356 = and i32 %4355, 255
  %4357 = uitofp i32 %4356 to float
  %4358 = fmul fast float %4357, 0x3F70101000000000
  %4359 = fmul fast float %4346, %4351
  %4360 = fadd fast float %4359, %4354
  %4361 = fmul fast float %4360, 0x3F70101000000000
  %4362 = fadd fast float %4347, -5.000000e-01
  %4363 = fadd fast float %4349, -5.000000e-01
  %4364 = fmul fast float %4362, %4358
  %4365 = fmul fast float %4363, %4358
  %4366 = fadd fast float %4364, 5.000000e-01
  %4367 = fadd fast float %4365, 5.000000e-01
  %4368 = fmul fast float %4366, 2.000000e+00
  %4369 = fadd fast float %4368, -1.000000e+00
  %4370 = fmul fast float %4367, 2.000000e+00
  %4371 = fadd fast float %4370, -1.000000e+00
  %4372 = fadd fast float %4369, %4371
  %4373 = fmul fast float %4372, 5.000000e-01
  %4374 = fsub fast float %4369, %4371
  %4375 = fmul fast float %4374, 5.000000e-01
  %4376 = call float @dx.op.unary.f32(i32 6, float %4373)  ; FAbs(value)
  %4377 = fsub fast float 1.000000e+00, %4376
  %4378 = call float @dx.op.unary.f32(i32 6, float %4375)  ; FAbs(value)
  %4379 = fsub fast float %4377, %4378
  %4380 = call float @dx.op.dot3.f32(i32 55, float %4373, float %4375, float %4379, float %4373, float %4375, float %4379)  ; Dot3(ax,ay,az,bx,by,bz)
  %4381 = call float @dx.op.unary.f32(i32 25, float %4380)  ; Rsqrt(value)
  %4382 = fmul fast float %4373, %4381
  %4383 = fmul fast float %4375, %4381
  %4384 = select i1 %4211, i32 %4201, i32 %4202
  %4385 = select i1 %4209, i32 %4200, i32 %4384
  %4386 = sitofp i32 %4385 to float
  %4387 = fmul fast float %4379, %4386
  %4388 = fmul fast float %4387, %4381
  %4389 = select i1 %4211, float %4388, float %4383
  %4390 = select i1 %4211, float %4383, float %4388
  %4391 = select i1 %4209, float %4388, float %4382
  %4392 = select i1 %4209, float %4383, float %4389
  %4393 = select i1 %4209, float %4382, float %4390
  %4394 = fsub fast float %4328, %3761
  %4395 = fsub fast float %4329, %3762
  %4396 = fsub fast float %4330, %3763
  %4397 = fmul fast float %4394, %4300
  %4398 = fmul fast float %4395, %4300
  %4399 = fmul fast float %4396, %4300
  %4400 = fadd fast float %4397, %3761
  %4401 = fadd fast float %4398, %3762
  %4402 = fadd fast float %4399, %3763
  %4403 = fsub fast float %4337, %3745
  %4404 = fsub fast float %4338, %3746
  %4405 = fsub fast float %4339, %3747
  %4406 = fmul fast float %4403, %4300
  %4407 = fmul fast float %4404, %4300
  %4408 = fmul fast float %4405, %4300
  %4409 = fadd fast float %4406, %3745
  %4410 = fadd fast float %4407, %3746
  %4411 = fadd fast float %4408, %3747
  %4412 = fadd fast float %4391, %3709
  %4413 = fadd fast float %4392, %3710
  %4414 = fadd fast float %4393, %3711
  %4415 = call float @dx.op.dot3.f32(i32 55, float %4412, float %4413, float %4414, float %4412, float %4413, float %4414)  ; Dot3(ax,ay,az,bx,by,bz)
  %4416 = call float @dx.op.unary.f32(i32 25, float %4415)  ; Rsqrt(value)
  %4417 = fmul fast float %4412, %4416
  %4418 = fmul fast float %4413, %4416
  %4419 = fmul fast float %4414, %4416
  %4420 = fsub fast float %4417, %3709
  %4421 = fsub fast float %4418, %3710
  %4422 = fsub fast float %4419, %3711
  %4423 = fmul fast float %4420, %4300
  %4424 = fmul fast float %4421, %4300
  %4425 = fmul fast float %4422, %4300
  %4426 = fadd fast float %4423, %3709
  %4427 = fadd fast float %4424, %3710
  %4428 = fadd fast float %4425, %3711
  %4429 = call float @dx.op.binary.f32(i32 36, float %3721, float %4348)  ; FMin(a,b)
  %4430 = fsub fast float %4429, %3721
  %4431 = fmul fast float %4430, %4300
  %4432 = fadd fast float %4431, %3721
  %4433 = fsub fast float %4361, %3748
  %4434 = fmul fast float %4433, %4300
  %4435 = fadd fast float %4434, %3748
  br label %4436

; <label>:4436                                    ; preds = %4298, %4260, %4162
  %4437 = phi float [ %4426, %4298 ], [ %3709, %4260 ], [ %3709, %4162 ]
  %4438 = phi float [ %4427, %4298 ], [ %3710, %4260 ], [ %3710, %4162 ]
  %4439 = phi float [ %4428, %4298 ], [ %3711, %4260 ], [ %3711, %4162 ]
  %4440 = phi float [ %4409, %4298 ], [ %3745, %4260 ], [ %3745, %4162 ]
  %4441 = phi float [ %4410, %4298 ], [ %3746, %4260 ], [ %3746, %4162 ]
  %4442 = phi float [ %4411, %4298 ], [ %3747, %4260 ], [ %3747, %4162 ]
  %4443 = phi float [ %4400, %4298 ], [ %3761, %4260 ], [ %3761, %4162 ]
  %4444 = phi float [ %4401, %4298 ], [ %3762, %4260 ], [ %3762, %4162 ]
  %4445 = phi float [ %4402, %4298 ], [ %3763, %4260 ], [ %3763, %4162 ]
  %4446 = phi float [ %4435, %4298 ], [ %3748, %4260 ], [ %3748, %4162 ]
  %4447 = phi float [ %4432, %4298 ], [ %3721, %4260 ], [ %3721, %4162 ]
  br i1 %4160, label %4448, label %4721

; <label>:4448                                    ; preds = %4436
  %4449 = call float @dx.op.unary.f32(i32 23, float %4447)  ; Log(value)
  %4450 = fmul fast float %4449, 4.000000e+00
  %4451 = call float @dx.op.unary.f32(i32 21, float %4450)  ; Exp(value)
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 0
  %4454 = fmul fast float %4453, %34
  %4455 = fmul fast float %4453, %35
  %4456 = fmul fast float %4453, %36
  %4457 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4458 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4459 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4460 = call float @dx.op.unary.f32(i32 23, float %4457)  ; Log(value)
  %4461 = call float @dx.op.unary.f32(i32 23, float %4458)  ; Log(value)
  %4462 = call float @dx.op.unary.f32(i32 23, float %4459)  ; Log(value)
  %4463 = fmul fast float %4460, 4.000000e+00
  %4464 = fmul fast float %4461, 4.000000e+00
  %4465 = fmul fast float %4462, 4.000000e+00
  %4466 = call float @dx.op.unary.f32(i32 21, float %4463)  ; Exp(value)
  %4467 = call float @dx.op.unary.f32(i32 21, float %4464)  ; Exp(value)
  %4468 = call float @dx.op.unary.f32(i32 21, float %4465)  ; Exp(value)
  %4469 = fadd fast float %4467, %4466
  %4470 = fadd fast float %4469, %4468
  %4471 = fdiv fast float 1.000000e+00, %4470
  %4472 = fmul fast float %4471, %4466
  %4473 = fcmp fast ogt float %43, 0.000000e+00
  %4474 = fcmp fast ogt float %44, 0.000000e+00
  %4475 = fcmp fast ogt float %45, 0.000000e+00
  %4476 = fcmp fast olt float %43, 0.000000e+00
  %4477 = fcmp fast olt float %44, 0.000000e+00
  %4478 = fcmp fast olt float %45, 0.000000e+00
  %4479 = zext i1 %4473 to i32
  %4480 = zext i1 %4474 to i32
  %4481 = zext i1 %4475 to i32
  %4482 = zext i1 %4476 to i32
  %4483 = zext i1 %4477 to i32
  %4484 = zext i1 %4478 to i32
  %4485 = sub nsw i32 %4479, %4482
  %4486 = sub nsw i32 %4480, %4483
  %4487 = sub nsw i32 %4481, %4484
  %4488 = call float @dx.op.unary.f32(i32 83, float %4454)  ; DerivCoarseX(value)
  %4489 = call float @dx.op.unary.f32(i32 83, float %4455)  ; DerivCoarseX(value)
  %4490 = call float @dx.op.unary.f32(i32 83, float %4456)  ; DerivCoarseX(value)
  %4491 = call float @dx.op.unary.f32(i32 84, float %4454)  ; DerivCoarseY(value)
  %4492 = call float @dx.op.unary.f32(i32 84, float %4455)  ; DerivCoarseY(value)
  %4493 = call float @dx.op.unary.f32(i32 84, float %4456)  ; DerivCoarseY(value)
  %4494 = fcmp fast ole float %213, %4472
  %4495 = fmul fast float %4471, %4469
  %4496 = fcmp fast ole float %213, %4495
  %4497 = select i1 %4496, float %4456, float %4454
  %4498 = select i1 %4496, float %4454, float %4455
  %4499 = select i1 %4494, float %4455, float %4497
  %4500 = select i1 %4494, float %4456, float %4498
  %4501 = select i1 %4496, float %4490, float %4488
  %4502 = select i1 %4496, float %4488, float %4489
  %4503 = select i1 %4494, float %4489, float %4501
  %4504 = select i1 %4494, float %4490, float %4502
  %4505 = select i1 %4496, float %4493, float %4491
  %4506 = select i1 %4496, float %4491, float %4492
  %4507 = select i1 %4494, float %4492, float %4505
  %4508 = select i1 %4494, float %4493, float %4506
  %4509 = call float @dx.op.unary.f32(i32 27, float %4499)  ; Round_ni(value)
  %4510 = call float @dx.op.unary.f32(i32 27, float %4500)  ; Round_ni(value)
  %4511 = fptosi float %4509 to i32
  %4512 = fptosi float %4510 to i32
  %4513 = xor i32 %4512, %4511
  %4514 = sitofp i32 %4513 to float
  %4515 = fptosi float %4514 to i32
  %4516 = sitofp i32 %4515 to float
  %4517 = fmul fast float %4516, 0x3FE3C6EF40000000
  %4518 = frem fast float %4509, 2.560000e+02
  %4519 = frem fast float %4510, 2.560000e+02
  %4520 = fptoui float %4518 to i32
  %4521 = fptoui float %4519 to i32
  %4522 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4520, i32 %4521, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4523 = extractvalue %dx.types.ResRet.f32 %4522, 0
  %4524 = extractvalue %dx.types.ResRet.f32 %4522, 1
  %4525 = extractvalue %dx.types.ResRet.f32 %4522, 2
  %4526 = fadd fast float %4523, %4517
  %4527 = fadd fast float %4524, %4517
  %4528 = fadd fast float %4525, %4517
  %4529 = call float @dx.op.unary.f32(i32 22, float %4526)  ; Frc(value)
  %4530 = call float @dx.op.unary.f32(i32 22, float %4527)  ; Frc(value)
  %4531 = call float @dx.op.unary.f32(i32 22, float %4528)  ; Frc(value)
  %4532 = fmul fast float %4531, 0x401921FB60000000
  %4533 = call float @dx.op.unary.f32(i32 13, float %4532)  ; Sin(value)
  %4534 = call float @dx.op.unary.f32(i32 12, float %4532)  ; Cos(value)
  %4535 = fsub fast float -0.000000e+00, %4534
  %4536 = fmul fast float %4534, %4499
  %4537 = call float @dx.op.tertiary.f32(i32 46, float %4533, float %4500, float %4536)  ; FMad(a,b,c)
  %4538 = fmul fast float %4533, %4499
  %4539 = call float @dx.op.tertiary.f32(i32 46, float %4535, float %4500, float %4538)  ; FMad(a,b,c)
  %4540 = fadd fast float %4537, %4529
  %4541 = fadd fast float %4539, %4530
  %4542 = extractvalue %dx.types.CBufRet.f32 %4452, 3
  %4543 = bitcast float %4542 to i32
  %4544 = icmp eq i32 %4543, 0
  br i1 %4544, label %4583, label %4545

; <label>:4545                                    ; preds = %4448
  %4546 = add i32 %4543, 0
  %4547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4546, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4548 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4547, %dx.types.Handle %73, float %4540, float %4541, float undef, float undef, i32 0, i32 0, i32 undef, float %4503, float %4504, float undef, float %4507, float %4508, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4549 = extractvalue %dx.types.ResRet.f32 %4548, 0
  %4550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4551 = extractvalue %dx.types.CBufRet.f32 %4550, 1
  %4552 = extractvalue %dx.types.CBufRet.f32 %4550, 2
  %4553 = fsub fast float 1.000000e+00, %4158
  %4554 = call float @dx.op.binary.f32(i32 35, float %4553, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4555 = bitcast float %4158 to i32
  %4556 = sitofp i32 %4555 to float
  %4557 = fadd fast float %4556, 0xC1CFBF8940000000
  %4558 = fmul fast float %4552, %4557
  %4559 = fadd fast float %4558, 0x41CFBF8940000000
  %4560 = fptosi float %4559 to i32
  %4561 = bitcast i32 %4560 to float
  %4562 = bitcast float %4554 to i32
  %4563 = sitofp i32 %4562 to float
  %4564 = fadd fast float %4563, 0xC1CFBF8940000000
  %4565 = fmul fast float %4564, %4552
  %4566 = fadd fast float %4565, 0x41CFBF8940000000
  %4567 = fptosi float %4566 to i32
  %4568 = bitcast i32 %4567 to float
  %4569 = fmul fast float %4561, %4551
  %4570 = fmul fast float %4568, %4551
  %4571 = fsub fast float %4554, %4569
  %4572 = fadd fast float %4570, %4554
  %4573 = call float @dx.op.unary.f32(i32 7, float %4571)  ; Saturate(value)
  %4574 = call float @dx.op.unary.f32(i32 7, float %4572)  ; Saturate(value)
  %4575 = fsub fast float %4549, %4573
  %4576 = fsub fast float %4574, %4573
  %4577 = bitcast float %4576 to i32
  %4578 = sub nsw i32 2129859010, %4577
  %4579 = bitcast i32 %4578 to float
  %4580 = fmul fast float %4579, %4575
  %4581 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4582 = fcmp fast olt float %4581, 0x3F70101020000000
  br i1 %4582, label %4721, label %4583

; <label>:4583                                    ; preds = %4545, %4448
  %4584 = phi float [ %4581, %4545 ], [ %4158, %4448 ]
  %4585 = fmul fast float %4584, %4451
  %4586 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.i32 %4586, 1
  %4588 = extractvalue %dx.types.CBufRet.i32 %4586, 0
  %4589 = add i32 %4588, 0
  %4590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4591 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4590, %dx.types.Handle %72, float %4540, float %4541, float undef, float undef, i32 0, i32 0, i32 undef, float %4503, float %4504, float undef, float %4507, float %4508, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.ResRet.f32 %4591, 1
  %4594 = extractvalue %dx.types.ResRet.f32 %4591, 2
  %4595 = extractvalue %dx.types.ResRet.f32 %4591, 3
  %4596 = and i32 %4587, 255
  %4597 = uitofp i32 %4596 to float
  %4598 = lshr i32 %4587, 8
  %4599 = and i32 %4598, 255
  %4600 = uitofp i32 %4599 to float
  %4601 = fmul fast float %4595, %4597
  %4602 = fadd fast float %4601, %4600
  %4603 = fmul fast float %4602, 0x3F70101000000000
  %4604 = fadd fast float %4603, 0xBFB99999A0000000
  %4605 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4606 = fmul fast float %4605, 0x3FF1C71C80000000
  %4607 = call float @dx.op.binary.f32(i32 36, float %4603, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4608 = fsub fast float 1.000000e+00, %4606
  %4609 = call float @dx.op.unary.f32(i32 7, float %4608)  ; Saturate(value)
  %4610 = fmul fast float %4609, %4592
  %4611 = fmul fast float %4609, %4593
  %4612 = fmul fast float %4609, %4594
  %4613 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4614 = call float @dx.op.unary.f32(i32 7, float %4611)  ; Saturate(value)
  %4615 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4616 = fmul fast float %4606, %4592
  %4617 = fmul fast float %4606, %4593
  %4618 = fmul fast float %4606, %4594
  %4619 = fadd fast float %4616, %4607
  %4620 = fadd fast float %4617, %4607
  %4621 = fadd fast float %4618, %4607
  %4622 = call float @dx.op.unary.f32(i32 7, float %4619)  ; Saturate(value)
  %4623 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4624 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4625 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.i32 %4625, 3
  %4627 = extractvalue %dx.types.CBufRet.i32 %4625, 2
  %4628 = add i32 %4627, 0
  %4629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4630 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4629, %dx.types.Handle %72, float %4540, float %4541, float undef, float undef, i32 0, i32 0, i32 undef, float %4503, float %4504, float undef, float %4507, float %4508, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = extractvalue %dx.types.ResRet.f32 %4630, 1
  %4633 = extractvalue %dx.types.ResRet.f32 %4630, 2
  %4634 = extractvalue %dx.types.ResRet.f32 %4630, 3
  %4635 = and i32 %4626, 255
  %4636 = uitofp i32 %4635 to float
  %4637 = lshr i32 %4626, 8
  %4638 = and i32 %4637, 255
  %4639 = uitofp i32 %4638 to float
  %4640 = lshr i32 %4626, 16
  %4641 = and i32 %4640, 255
  %4642 = uitofp i32 %4641 to float
  %4643 = fmul fast float %4642, 0x3F70101000000000
  %4644 = fmul fast float %4631, %4636
  %4645 = fadd fast float %4644, %4639
  %4646 = fmul fast float %4645, 0x3F70101000000000
  %4647 = fadd fast float %4632, -5.000000e-01
  %4648 = fadd fast float %4634, -5.000000e-01
  %4649 = fmul fast float %4647, %4643
  %4650 = fmul fast float %4648, %4643
  %4651 = fadd fast float %4649, 5.000000e-01
  %4652 = fadd fast float %4650, 5.000000e-01
  %4653 = fmul fast float %4651, 2.000000e+00
  %4654 = fadd fast float %4653, -1.000000e+00
  %4655 = fmul fast float %4652, 2.000000e+00
  %4656 = fadd fast float %4655, -1.000000e+00
  %4657 = fadd fast float %4654, %4656
  %4658 = fmul fast float %4657, 5.000000e-01
  %4659 = fsub fast float %4654, %4656
  %4660 = fmul fast float %4659, 5.000000e-01
  %4661 = call float @dx.op.unary.f32(i32 6, float %4658)  ; FAbs(value)
  %4662 = fsub fast float 1.000000e+00, %4661
  %4663 = call float @dx.op.unary.f32(i32 6, float %4660)  ; FAbs(value)
  %4664 = fsub fast float %4662, %4663
  %4665 = call float @dx.op.dot3.f32(i32 55, float %4658, float %4660, float %4664, float %4658, float %4660, float %4664)  ; Dot3(ax,ay,az,bx,by,bz)
  %4666 = call float @dx.op.unary.f32(i32 25, float %4665)  ; Rsqrt(value)
  %4667 = fmul fast float %4658, %4666
  %4668 = fmul fast float %4660, %4666
  %4669 = select i1 %4496, i32 %4486, i32 %4487
  %4670 = select i1 %4494, i32 %4485, i32 %4669
  %4671 = sitofp i32 %4670 to float
  %4672 = fmul fast float %4664, %4671
  %4673 = fmul fast float %4672, %4666
  %4674 = select i1 %4496, float %4673, float %4668
  %4675 = select i1 %4496, float %4668, float %4673
  %4676 = select i1 %4494, float %4673, float %4667
  %4677 = select i1 %4494, float %4668, float %4674
  %4678 = select i1 %4494, float %4667, float %4675
  %4679 = fsub fast float %4613, %4443
  %4680 = fsub fast float %4614, %4444
  %4681 = fsub fast float %4615, %4445
  %4682 = fmul fast float %4679, %4585
  %4683 = fmul fast float %4680, %4585
  %4684 = fmul fast float %4681, %4585
  %4685 = fadd fast float %4682, %4443
  %4686 = fadd fast float %4683, %4444
  %4687 = fadd fast float %4684, %4445
  %4688 = fsub fast float %4622, %4440
  %4689 = fsub fast float %4623, %4441
  %4690 = fsub fast float %4624, %4442
  %4691 = fmul fast float %4688, %4585
  %4692 = fmul fast float %4689, %4585
  %4693 = fmul fast float %4690, %4585
  %4694 = fadd fast float %4691, %4440
  %4695 = fadd fast float %4692, %4441
  %4696 = fadd fast float %4693, %4442
  %4697 = fadd fast float %4676, %4437
  %4698 = fadd fast float %4677, %4438
  %4699 = fadd fast float %4678, %4439
  %4700 = call float @dx.op.dot3.f32(i32 55, float %4697, float %4698, float %4699, float %4697, float %4698, float %4699)  ; Dot3(ax,ay,az,bx,by,bz)
  %4701 = call float @dx.op.unary.f32(i32 25, float %4700)  ; Rsqrt(value)
  %4702 = fmul fast float %4697, %4701
  %4703 = fmul fast float %4698, %4701
  %4704 = fmul fast float %4699, %4701
  %4705 = fsub fast float %4702, %4437
  %4706 = fsub fast float %4703, %4438
  %4707 = fsub fast float %4704, %4439
  %4708 = fmul fast float %4705, %4585
  %4709 = fmul fast float %4706, %4585
  %4710 = fmul fast float %4707, %4585
  %4711 = fadd fast float %4708, %4437
  %4712 = fadd fast float %4709, %4438
  %4713 = fadd fast float %4710, %4439
  %4714 = call float @dx.op.binary.f32(i32 36, float %4447, float %4633)  ; FMin(a,b)
  %4715 = fsub fast float %4714, %4447
  %4716 = fmul fast float %4715, %4585
  %4717 = fadd fast float %4716, %4447
  %4718 = fsub fast float %4646, %4446
  %4719 = fmul fast float %4718, %4585
  %4720 = fadd fast float %4719, %4446
  br label %4721

; <label>:4721                                    ; preds = %4583, %4545, %4436, %4152
  %4722 = phi float [ %4711, %4583 ], [ %4437, %4545 ], [ %4437, %4436 ], [ %3709, %4152 ]
  %4723 = phi float [ %4712, %4583 ], [ %4438, %4545 ], [ %4438, %4436 ], [ %3710, %4152 ]
  %4724 = phi float [ %4713, %4583 ], [ %4439, %4545 ], [ %4439, %4436 ], [ %3711, %4152 ]
  %4725 = phi float [ %4694, %4583 ], [ %4440, %4545 ], [ %4440, %4436 ], [ %3745, %4152 ]
  %4726 = phi float [ %4695, %4583 ], [ %4441, %4545 ], [ %4441, %4436 ], [ %3746, %4152 ]
  %4727 = phi float [ %4696, %4583 ], [ %4442, %4545 ], [ %4442, %4436 ], [ %3747, %4152 ]
  %4728 = phi float [ %4685, %4583 ], [ %4443, %4545 ], [ %4443, %4436 ], [ %3761, %4152 ]
  %4729 = phi float [ %4686, %4583 ], [ %4444, %4545 ], [ %4444, %4436 ], [ %3762, %4152 ]
  %4730 = phi float [ %4687, %4583 ], [ %4445, %4545 ], [ %4445, %4436 ], [ %3763, %4152 ]
  %4731 = phi float [ %4720, %4583 ], [ %4446, %4545 ], [ %4446, %4436 ], [ %3748, %4152 ]
  %4732 = phi float [ %4717, %4583 ], [ %4447, %4545 ], [ %4447, %4436 ], [ %3721, %4152 ]
  %4733 = fcmp fast une float %4156, 0.000000e+00
  %4734 = call float @dx.op.dot3.f32(i32 55, float %163, float %164, float %165, float %163, float %164, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %4735 = call float @dx.op.unary.f32(i32 25, float %4734)  ; Rsqrt(value)
  br i1 %4733, label %4743, label %4736

; <label>:4736                                    ; preds = %4721
  %4737 = fmul fast float %4735, %163
  %4738 = fmul fast float %4735, %164
  %4739 = fmul fast float %4735, %165
  %4740 = fsub fast float -0.000000e+00, %4737
  %4741 = fsub fast float -0.000000e+00, %4738
  %4742 = fsub fast float -0.000000e+00, %4739
  br label %4910

; <label>:4743                                    ; preds = %4721
  %4744 = fmul fast float %163, %4735
  %4745 = fsub fast float -0.000000e+00, %4744
  %4746 = fmul fast float %164, %4735
  %4747 = fsub fast float -0.000000e+00, %4746
  %4748 = fmul fast float %165, %4735
  %4749 = fsub fast float -0.000000e+00, %4748
  %4750 = call float @dx.op.dot3.f32(i32 55, float %4745, float %4747, float %4749, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4751 = fmul fast float %4156, 2.500000e+00
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = fmul fast float %4156, 0x4013FFFFE0000000
  %4754 = fadd fast float %4753, 0xBFFFFFFFE0000000
  %4755 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4756 = fmul fast float %4156, 0x4004000020000000
  %4757 = fadd fast float %4756, 0xBFF8000040000000
  %4758 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4759 = fmul fast float %3727, 1.000000e+01
  %4760 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4761 = fmul fast float %4760, 2.000000e+00
  %4762 = fsub fast float 3.000000e+00, %4761
  %4763 = fmul fast float %4760, %4760
  %4764 = fmul fast float %4763, %4762
  %4765 = fsub fast float 1.000000e+00, %4764
  %4766 = fsub fast float 0x3FE3333340000000, %4731
  %4767 = fmul fast float %4766, 0x400AAAAAA0000000
  %4768 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4769 = fmul fast float %4765, %4768
  %4770 = fmul fast float %4728, 0x3FEA2B8620000000
  %4771 = fmul fast float %4729, 0x3FEA2B8620000000
  %4772 = fmul fast float %4730, 0x3FEA2B8620000000
  %4773 = fadd fast float %4770, 0x3FC81DFBA0000000
  %4774 = fmul fast float %4773, %4728
  %4775 = fadd fast float %4774, 0x3F910E6020000000
  %4776 = fadd fast float %4771, 0x3FC81DFBA0000000
  %4777 = fmul fast float %4776, %4729
  %4778 = fadd fast float %4777, 0x3F910E6020000000
  %4779 = fadd fast float %4772, 0x3FC81DFBA0000000
  %4780 = fmul fast float %4779, %4730
  %4781 = fadd fast float %4780, 0x3F910E6020000000
  %4782 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4783 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4784 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4785 = fsub fast float %4782, %4728
  %4786 = fsub fast float %4783, %4729
  %4787 = fsub fast float %4784, %4730
  %4788 = fmul fast float %4785, %4752
  %4789 = fmul fast float %4788, %4769
  %4790 = fmul fast float %4786, %4752
  %4791 = fmul fast float %4790, %4769
  %4792 = fmul fast float %4787, %4752
  %4793 = fmul fast float %4792, %4769
  %4794 = fadd fast float %4789, %4728
  %4795 = fadd fast float %4791, %4729
  %4796 = fadd fast float %4793, %4730
  %4797 = fmul fast float %4732, %4732
  %4798 = fmul fast float %4797, %4797
  %4799 = fadd fast float %4755, 1.000000e+00
  %4800 = fsub fast float %4799, %4769
  %4801 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4802 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4804 = fsub fast float 1.000000e+00, %4798
  %4805 = call float @dx.op.binary.f32(i32 36, float %4801, float %4804)  ; FMin(a,b)
  %4806 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4807 = call float @dx.op.binary.f32(i32 35, float %4805, float %4806)  ; FMax(a,b)
  %4808 = fadd fast float %4803, 0xBFE4CCCCC0000000
  %4809 = fmul fast float %4808, 0x4006DB6DA0000000
  %4810 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4811 = fmul fast float %4810, 2.000000e+00
  %4812 = fsub fast float 3.000000e+00, %4811
  %4813 = bitcast float %4725 to i32
  %4814 = ashr i32 %4813, 1
  %4815 = add nsw i32 %4814, 532487669
  %4816 = bitcast i32 %4815 to float
  %4817 = fsub fast float 1.000000e+00, %4816
  %4818 = bitcast float %4817 to i32
  %4819 = sub nsw i32 2129859010, %4818
  %4820 = bitcast i32 %4819 to float
  %4821 = fmul fast float %4820, 2.000000e+00
  %4822 = bitcast float %4726 to i32
  %4823 = ashr i32 %4822, 1
  %4824 = add nsw i32 %4823, 532487669
  %4825 = bitcast i32 %4824 to float
  %4826 = fsub fast float 1.000000e+00, %4825
  %4827 = bitcast float %4826 to i32
  %4828 = sub nsw i32 2129859010, %4827
  %4829 = bitcast i32 %4828 to float
  %4830 = fmul fast float %4829, 2.000000e+00
  %4831 = bitcast float %4727 to i32
  %4832 = ashr i32 %4831, 1
  %4833 = add nsw i32 %4832, 532487669
  %4834 = bitcast i32 %4833 to float
  %4835 = fsub fast float 1.000000e+00, %4834
  %4836 = bitcast float %4835 to i32
  %4837 = sub nsw i32 2129859010, %4836
  %4838 = bitcast i32 %4837 to float
  %4839 = fmul fast float %4838, 2.000000e+00
  %4840 = fsub fast float 0x4002A9FBE0000000, %4821
  %4841 = fadd fast float %4821, 0x3FD54FDF00000000
  %4842 = bitcast float %4841 to i32
  %4843 = sub nsw i32 2129859010, %4842
  %4844 = bitcast i32 %4843 to float
  %4845 = fmul fast float %4844, %4840
  %4846 = fmul fast float %4845, %4845
  %4847 = fsub fast float 0x4002A9FBE0000000, %4830
  %4848 = fadd fast float %4830, 0x3FD54FDF00000000
  %4849 = bitcast float %4848 to i32
  %4850 = sub nsw i32 2129859010, %4849
  %4851 = bitcast i32 %4850 to float
  %4852 = fmul fast float %4851, %4847
  %4853 = fmul fast float %4852, %4852
  %4854 = fsub fast float 0x4002A9FBE0000000, %4839
  %4855 = fadd fast float %4839, 0x3FD54FDF00000000
  %4856 = bitcast float %4855 to i32
  %4857 = sub nsw i32 2129859010, %4856
  %4858 = bitcast i32 %4857 to float
  %4859 = fmul fast float %4858, %4854
  %4860 = fmul fast float %4859, %4859
  %4861 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4846)  ; FMax(a,b)
  %4862 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4853)  ; FMax(a,b)
  %4863 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4860)  ; FMax(a,b)
  %4864 = fsub fast float 1.000000e+00, %4750
  %4865 = fadd fast float %4864, %4765
  %4866 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4867 = fsub fast float 1.000000e+00, %4137
  %4868 = fmul fast float %4807, %4867
  %4869 = fmul fast float %4810, %4810
  %4870 = fmul fast float %4869, %4868
  %4871 = fmul fast float %4870, %4812
  %4872 = fmul fast float %4867, 0xBFE99999A0000000
  %4873 = fmul fast float %4872, %4752
  %4874 = fmul fast float %4873, %4769
  %4875 = fadd fast float %4874, 1.000000e+00
  %4876 = fadd fast float %4731, -1.000000e+00
  %4877 = fmul fast float %4875, %4876
  %4878 = fadd fast float %4877, 1.000000e+00
  %4879 = fsub fast float %4861, %4725
  %4880 = fsub fast float %4862, %4726
  %4881 = fsub fast float %4863, %4727
  %4882 = fmul fast float %4871, %4879
  %4883 = fmul fast float %4871, %4880
  %4884 = fmul fast float %4871, %4881
  %4885 = fadd fast float %4882, %4725
  %4886 = fadd fast float %4883, %4726
  %4887 = fadd fast float %4884, %4727
  %4888 = fsub fast float %83, %4722
  %4889 = fsub fast float %84, %4723
  %4890 = fsub fast float %85, %4724
  %4891 = fmul fast float %4871, %4888
  %4892 = fmul fast float %4871, %4889
  %4893 = fmul fast float %4871, %4890
  %4894 = fadd fast float %4891, %4722
  %4895 = fadd fast float %4892, %4723
  %4896 = fadd fast float %4893, %4724
  %4897 = fmul fast float %4871, %4866
  %4898 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4899 = fsub fast float 1.000000e+00, %4898
  %4900 = fmul fast float %4897, %4899
  %4901 = fadd fast float %4900, %4898
  %4902 = fsub fast float 1.000000e+00, %4732
  %4903 = fmul fast float %4871, %4902
  %4904 = fadd fast float %4903, %4732
  %4905 = call float @dx.op.dot3.f32(i32 55, float %4894, float %4895, float %4896, float %4894, float %4895, float %4896)  ; Dot3(ax,ay,az,bx,by,bz)
  %4906 = call float @dx.op.unary.f32(i32 25, float %4905)  ; Rsqrt(value)
  %4907 = fmul fast float %4894, %4906
  %4908 = fmul fast float %4895, %4906
  %4909 = fmul fast float %4896, %4906
  br label %4910

; <label>:4910                                    ; preds = %4743, %4736
  %4911 = phi float [ %4742, %4736 ], [ %4749, %4743 ]
  %4912 = phi float [ %4741, %4736 ], [ %4747, %4743 ]
  %4913 = phi float [ %4740, %4736 ], [ %4745, %4743 ]
  %4914 = phi float [ %4739, %4736 ], [ %4748, %4743 ]
  %4915 = phi float [ %4738, %4736 ], [ %4746, %4743 ]
  %4916 = phi float [ %4737, %4736 ], [ %4744, %4743 ]
  %4917 = phi float [ %4722, %4736 ], [ %4907, %4743 ]
  %4918 = phi float [ %4723, %4736 ], [ %4908, %4743 ]
  %4919 = phi float [ %4724, %4736 ], [ %4909, %4743 ]
  %4920 = phi float [ %4725, %4736 ], [ %4885, %4743 ]
  %4921 = phi float [ %4726, %4736 ], [ %4886, %4743 ]
  %4922 = phi float [ %4727, %4736 ], [ %4887, %4743 ]
  %4923 = phi float [ %4728, %4736 ], [ %4794, %4743 ]
  %4924 = phi float [ %4729, %4736 ], [ %4795, %4743 ]
  %4925 = phi float [ %4730, %4736 ], [ %4796, %4743 ]
  %4926 = phi float [ %4731, %4736 ], [ %4901, %4743 ]
  %4927 = phi float [ %4732, %4736 ], [ %4904, %4743 ]
  %4928 = select i1 %202, float 0.000000e+00, float %4922
  %4929 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %4913, float %4912, float %4911)  ; Dot3(ax,ay,az,bx,by,bz)
  %4930 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4931 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4915, float %4914, float %4917, float %4918, float %4919)  ; Dot3(ax,ay,az,bx,by,bz)
  %4932 = fmul fast float %4931, 2.000000e+00
  %4933 = fmul fast float %4932, %4917
  %4934 = fmul fast float %4932, %4918
  %4935 = fmul fast float %4932, %4919
  %4936 = fsub fast float %4916, %4933
  %4937 = fsub fast float %4915, %4934
  %4938 = fsub fast float %4914, %4935
  %4939 = call float @dx.op.binary.f32(i32 36, float %4927, float 1.000000e+00)  ; FMin(a,b)
  %4940 = fsub fast float 1.000000e+00, %4927
  %4941 = bitcast float %4940 to i32
  %4942 = sub nsw i32 2129859010, %4941
  %4943 = fsub fast float 1.000000e+00, %53
  %4944 = call float @dx.op.dot3.f32(i32 55, float %103, float %104, float %105, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4945 = call float @dx.op.binary.f32(i32 35, float %4944, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4946 = fdiv fast float %4943, %4945
  %4947 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4948 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4949 = fmul fast float %4948, 5.000000e-01
  %4950 = fadd fast float %4949, 5.000000e-01
  %4951 = fmul fast float %4950, %53
  %4952 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4953 = call float @dx.op.unary.f32(i32 7, float %4952)  ; Saturate(value)
  %4954 = fmul fast float %4953, %4946
  %4955 = fadd fast float %4951, %4954
  %4956 = fsub fast float 5.000000e-01, %4949
  %4957 = fmul fast float %4956, %4923
  %4958 = fmul fast float %4956, %4924
  %4959 = fmul fast float %4956, %4925
  %4960 = fadd fast float %4955, %4957
  %4961 = fadd fast float %4955, %4958
  %4962 = fadd fast float %4955, %4959
  %4963 = call float @dx.op.dot3.f32(i32 55, float %4936, float %4937, float %4938, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = fmul fast float %4964, 5.000000e-01
  %4966 = fadd fast float %4965, 5.000000e-01
  %4967 = fmul fast float %4966, %53
  %4968 = call float @dx.op.dot3.f32(i32 55, float %4936, float %4937, float %4938, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = fmul fast float %4969, %4946
  %4971 = fadd fast float %4967, %4970
  %4972 = fsub fast float 5.000000e-01, %4965
  %4973 = fmul fast float %4972, %4923
  %4974 = fmul fast float %4972, %4924
  %4975 = fmul fast float %4972, %4925
  %4976 = fadd fast float %4971, %4973
  %4977 = fadd fast float %4971, %4974
  %4978 = fadd fast float %4971, %4975
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = call float @dx.op.binary.f32(i32 36, float %4923, float %4980)  ; FMin(a,b)
  %4982 = fsub fast float 1.000000e+00, %4939
  %4983 = fmul fast float %4981, %4982
  %4984 = fsub fast float 1.000000e+00, %4983
  %4985 = bitcast float %4984 to i32
  %4986 = sub nsw i32 2129859010, %4985
  %4987 = bitcast i32 %4986 to float
  %4988 = call float @dx.op.binary.f32(i32 36, float %4924, float %4980)  ; FMin(a,b)
  %4989 = fmul fast float %4988, %4982
  %4990 = fsub fast float 1.000000e+00, %4989
  %4991 = bitcast float %4990 to i32
  %4992 = sub nsw i32 2129859010, %4991
  %4993 = bitcast i32 %4992 to float
  %4994 = call float @dx.op.binary.f32(i32 36, float %4925, float %4980)  ; FMin(a,b)
  %4995 = fmul fast float %4994, %4982
  %4996 = fsub fast float 1.000000e+00, %4995
  %4997 = bitcast float %4996 to i32
  %4998 = sub nsw i32 2129859010, %4997
  %4999 = bitcast i32 %4998 to float
  %5000 = fmul fast float %4939, %54
  %5001 = fmul fast float %5000, %4960
  %5002 = fmul fast float %5001, %4987
  %5003 = fmul fast float %4939, %55
  %5004 = fmul fast float %5003, %4961
  %5005 = fmul fast float %5004, %4993
  %5006 = fmul fast float %4939, %56
  %5007 = fmul fast float %5006, %4962
  %5008 = fmul fast float %5007, %4999
  %5009 = call float @dx.op.binary.f32(i32 36, float %4920, float %4980)  ; FMin(a,b)
  %5010 = fmul fast float %5009, %4982
  %5011 = fsub fast float 1.000000e+00, %5010
  %5012 = bitcast float %5011 to i32
  %5013 = sub nsw i32 2129859010, %5012
  %5014 = bitcast i32 %5013 to float
  %5015 = call float @dx.op.binary.f32(i32 36, float %4921, float %4980)  ; FMin(a,b)
  %5016 = fmul fast float %5015, %4982
  %5017 = fsub fast float 1.000000e+00, %5016
  %5018 = bitcast float %5017 to i32
  %5019 = sub nsw i32 2129859010, %5018
  %5020 = bitcast i32 %5019 to float
  %5021 = call float @dx.op.binary.f32(i32 36, float %4928, float %4980)  ; FMin(a,b)
  %5022 = fmul fast float %5021, %4982
  %5023 = fsub fast float 1.000000e+00, %5022
  %5024 = bitcast float %5023 to i32
  %5025 = sub nsw i32 2129859010, %5024
  %5026 = bitcast i32 %5025 to float
  %5027 = fmul fast float %5000, %4976
  %5028 = fmul fast float %5027, %5014
  %5029 = fmul fast float %5003, %4977
  %5030 = fmul fast float %5029, %5020
  %5031 = fmul fast float %5006, %4978
  %5032 = fmul fast float %5031, %5026
  %5033 = call float @dx.op.dot3.f32(i32 55, float %5002, float %5005, float %5008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5034 = select i1 %202, float 0.000000e+00, float %5002
  %5035 = select i1 %202, float %5033, float %5005
  %5036 = select i1 %202, float 0.000000e+00, float %5008
  %5037 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5030, float %5032, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = select i1 %202, float 0.000000e+00, float %5028
  %5039 = select i1 %202, float %5037, float %5030
  %5040 = select i1 %202, float 0.000000e+00, float %5032
  %5041 = fmul fast float %4930, 9.843750e-01
  %5042 = fmul fast float %4926, 9.843750e-01
  %5043 = fadd fast float %5041, 7.812500e-03
  %5044 = fadd fast float %5042, 7.812500e-03
  %5045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5043, float %5044, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5046 = extractvalue %dx.types.ResRet.f32 %5045, 2
  %5047 = extractvalue %dx.types.ResRet.f32 %5045, 3
  %5048 = fmul fast float %5046, %4920
  %5049 = fmul fast float %5046, %4921
  %5050 = fmul fast float %5046, %4928
  %5051 = fadd fast float %5048, %5047
  %5052 = fadd fast float %5049, %5047
  %5053 = fadd fast float %5050, %5047
  %5054 = fcmp fast ogt float %3722, 0.000000e+00
  br i1 %5054, label %5055, label %5081

; <label>:5055                                    ; preds = %4910
  %5056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3722, float %4930, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5057 = extractvalue %dx.types.ResRet.f32 %5056, 0
  %5058 = extractvalue %dx.types.ResRet.f32 %5056, 1
  %5059 = extractvalue %dx.types.ResRet.f32 %5056, 2
  %5060 = fadd fast float %5057, -5.000000e-01
  %5061 = fadd fast float %5058, -5.000000e-01
  %5062 = fadd fast float %5059, -5.000000e-01
  %5063 = fsub fast float 1.000000e+00, %4920
  %5064 = fsub fast float 1.000000e+00, %4921
  %5065 = fsub fast float 1.000000e+00, %4928
  %5066 = fmul fast float %4920, 4.000000e+00
  %5067 = fmul fast float %5066, %5063
  %5068 = fmul fast float %5067, %5060
  %5069 = fmul fast float %4921, 4.000000e+00
  %5070 = fmul fast float %5069, %5064
  %5071 = fmul fast float %5070, %5061
  %5072 = fmul fast float %4928, 4.000000e+00
  %5073 = fmul fast float %5072, %5065
  %5074 = fmul fast float %5073, %5062
  %5075 = fadd fast float %5068, %5051
  %5076 = fadd fast float %5071, %5052
  %5077 = fadd fast float %5074, %5053
  %5078 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5079 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5080 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  br label %5081

; <label>:5081                                    ; preds = %5055, %4910
  %5082 = phi float [ %5078, %5055 ], [ %5051, %4910 ]
  %5083 = phi float [ %5079, %5055 ], [ %5052, %4910 ]
  %5084 = phi float [ %5080, %5055 ], [ %5053, %4910 ]
  %5085 = call float @dx.op.binary.f32(i32 35, float %5083, float %5084)  ; FMax(a,b)
  %5086 = call float @dx.op.binary.f32(i32 35, float %5082, float %5085)  ; FMax(a,b)
  %5087 = fsub fast float 1.000000e+00, %5086
  %5088 = fmul fast float %5087, %5034
  %5089 = fmul fast float %5087, %5035
  %5090 = fmul fast float %5087, %5036
  %5091 = call float @dx.op.dot3.f32(i32 55, float %4923, float %4924, float %4925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5092 = fcmp fast ogt float %5091, 0x3E7FF19E20000000
  %5093 = fdiv fast float 1.000000e+00, %5091
  %5094 = select i1 %5092, float %5093, float 0.000000e+00
  %5095 = fmul fast float %5094, %4923
  %5096 = fmul fast float %5094, %4924
  %5097 = fmul fast float %5094, %4925
  %5098 = fadd fast float %5095, -1.000000e+00
  %5099 = fadd fast float %5096, -1.000000e+00
  %5100 = fadd fast float %5097, -1.000000e+00
  %5101 = fmul fast float %5098, 5.000000e-01
  %5102 = fmul fast float %5099, 5.000000e-01
  %5103 = fmul fast float %5100, 5.000000e-01
  %5104 = fadd fast float %5101, 1.000000e+00
  %5105 = fadd fast float %5102, 1.000000e+00
  %5106 = fadd fast float %5103, 1.000000e+00
  %5107 = fmul fast float %5082, %5038
  %5108 = fmul fast float %5083, %5039
  %5109 = fmul fast float %5084, %5040
  %5110 = fsub fast float 1.000000e+00, %4930
  %5111 = bitcast float %5110 to i32
  %5112 = sitofp i32 %5111 to float
  %5113 = fmul fast float %5112, 5.000000e+00
  %5114 = fadd fast float %5113, 0xC1EFBF8940000000
  %5115 = fptosi float %5114 to i32
  %5116 = bitcast i32 %5115 to float
  %5117 = fmul fast float %5116, %3723
  %5118 = fmul fast float %5034, %5117
  %5119 = fmul fast float %5118, %5087
  %5120 = fmul fast float %5119, %5104
  %5121 = fmul fast float %5035, %5117
  %5122 = fmul fast float %5121, %5087
  %5123 = fmul fast float %5122, %5105
  %5124 = fmul fast float %5036, %5117
  %5125 = fmul fast float %5124, %5087
  %5126 = fmul fast float %5125, %5106
  %5127 = fmul fast float %5088, %3719
  %5128 = fmul fast float %5089, %3719
  %5129 = fmul fast float %5090, %3719
  %5130 = fadd fast float %5107, %3715
  %5131 = fadd fast float %5130, %5120
  %5132 = fmul fast float %5131, %3719
  %5133 = fadd fast float %5108, %3716
  %5134 = fadd fast float %5133, %5123
  %5135 = fmul fast float %5134, %3719
  %5136 = fadd fast float %5109, %3717
  %5137 = fadd fast float %5136, %5126
  %5138 = fmul fast float %5137, %3719
  %5139 = bitcast i32 %4942 to float
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 3
  %5142 = fcmp fast oeq float %5141, 0.000000e+00
  br i1 %5142, label %5370, label %5143

; <label>:5143                                    ; preds = %5081
  %5144 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5145 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5146 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5148 = extractvalue %dx.types.CBufRet.f32 %5147, 0
  %5149 = extractvalue %dx.types.CBufRet.f32 %5147, 1
  %5150 = extractvalue %dx.types.CBufRet.f32 %5147, 2
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5154 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5155 = select i1 %202, float %5152, float %5148
  %5156 = select i1 %202, float %5154, float %5149
  %5157 = select i1 %202, float %5153, float %5150
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5160 = fcmp fast une float %5159, 0.000000e+00
  br i1 %5160, label %5161, label %5178

; <label>:5161                                    ; preds = %5143
  %5162 = fptoui float %76 to i32
  %5163 = fptoui float %77 to i32
  %5164 = lshr i32 %5162, 4
  %5165 = lshr i32 %5163, 4
  %5166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.f32 %5166, 0
  %5168 = fptoui float %5167 to i32
  %5169 = add i32 %5168, 15
  %5170 = lshr i32 %5169, 4
  %5171 = mul i32 %5170, %5165
  %5172 = add i32 %5171, %5164
  %5173 = shl i32 %5172, 3
  %5174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5173, i32 undef)  ; BufferLoad(srv,index,wot)
  %5175 = extractvalue %dx.types.ResRet.i32 %5174, 0
  %5176 = and i32 %5175, -268435456
  %5177 = icmp eq i32 %5176, -1342177280
  br i1 %5177, label %5188, label %5178

; <label>:5178                                    ; preds = %5161, %5143
  %5179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.f32 %5179, 2
  %5181 = extractvalue %dx.types.CBufRet.f32 %5179, 3
  %5182 = fmul fast float %5180, %76
  %5183 = fmul fast float %5181, %77
  %5184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5182, float %5183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5185 = extractvalue %dx.types.ResRet.f32 %5184, 0
  %5186 = extractvalue %dx.types.ResRet.f32 %5184, 1
  %5187 = extractvalue %dx.types.ResRet.f32 %5184, 2
  br label %5188

; <label>:5188                                    ; preds = %5178, %5161
  %5189 = phi float [ %5185, %5178 ], [ 0.000000e+00, %5161 ]
  %5190 = phi float [ %5186, %5178 ], [ 0.000000e+00, %5161 ]
  %5191 = phi float [ %5187, %5178 ], [ 0.000000e+00, %5161 ]
  %5192 = call float @dx.op.binary.f32(i32 36, float %5190, float %5191)  ; FMin(a,b)
  %5193 = call float @dx.op.binary.f32(i32 36, float %5189, float %5192)  ; FMin(a,b)
  %5194 = fcmp fast ogt float %5193, 0.000000e+00
  br i1 %5194, label %5195, label %5370, !dx.controlflow.hints !74

; <label>:5195                                    ; preds = %5188
  %5196 = fmul fast float %5189, %5155
  %5197 = fmul fast float %5190, %5156
  %5198 = fmul fast float %5191, %5157
  %5199 = fsub fast float %5144, %4916
  %5200 = fsub fast float %5145, %4915
  %5201 = fsub fast float %5146, %4914
  %5202 = call float @dx.op.dot3.f32(i32 55, float %5199, float %5200, float %5201, float %5199, float %5200, float %5201)  ; Dot3(ax,ay,az,bx,by,bz)
  %5203 = call float @dx.op.unary.f32(i32 25, float %5202)  ; Rsqrt(value)
  %5204 = fmul fast float %5203, %5199
  %5205 = fmul fast float %5203, %5200
  %5206 = fmul fast float %5203, %5201
  %5207 = call float @dx.op.dot3.f32(i32 55, float %5144, float %5145, float %5146, float %4917, float %4918, float %4919)  ; Dot3(ax,ay,az,bx,by,bz)
  %5208 = call float @dx.op.dot3.f32(i32 55, float %4913, float %4912, float %4911, float %5204, float %5205, float %5206)  ; Dot3(ax,ay,az,bx,by,bz)
  %5209 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  %5210 = fmul fast float %5209, %5209
  %5211 = fmul fast float %5210, %5139
  %5212 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  %5213 = fmul fast float %5212, %5209
  %5214 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %5204, float %5205, float %5206)  ; Dot3(ax,ay,az,bx,by,bz)
  %5215 = fmul fast float %5214, %5214
  %5216 = call float @dx.op.unary.f32(i32 6, float %5207)  ; FAbs(value)
  %5217 = fsub fast float 1.000000e+00, %4926
  %5218 = call float @dx.op.binary.f32(i32 35, float %5217, float 0x3F847AE140000000)  ; FMax(a,b)
  %5219 = fmul fast float %5218, %5218
  %5220 = fmul fast float %5219, %5219
  %5221 = fsub fast float 1.000000e+00, %5220
  %5222 = fmul fast float %4930, %4930
  %5223 = fmul fast float %5222, %5221
  %5224 = fadd fast float %5223, %5220
  %5225 = bitcast float %5224 to i32
  %5226 = ashr i32 %5225, 1
  %5227 = add nsw i32 %5226, 532487669
  %5228 = bitcast i32 %5227 to float
  %5229 = fadd fast float %5228, %4930
  %5230 = fmul fast float %5220, %5215
  %5231 = fsub fast float 1.000000e+00, %5215
  %5232 = fadd fast float %5231, %5230
  %5233 = fmul fast float %5216, %5216
  %5234 = fmul fast float %5233, %5221
  %5235 = fadd fast float %5234, %5220
  %5236 = bitcast float %5235 to i32
  %5237 = ashr i32 %5236, 1
  %5238 = add nsw i32 %5237, 532487669
  %5239 = bitcast i32 %5238 to float
  %5240 = fadd fast float %5239, %5216
  %5241 = fmul fast float %5232, %5232
  %5242 = fmul fast float %5241, %5229
  %5243 = fmul fast float %5242, %5240
  %5244 = fdiv fast float 0x3FF0A00000000000, %5243
  %5245 = fmul fast float %5244, %5220
  %5246 = call float @dx.op.unary.f32(i32 6, float %5208)  ; FAbs(value)
  %5247 = fsub fast float 1.000000e+00, %5246
  %5248 = bitcast float %5247 to i32
  %5249 = sitofp i32 %5248 to float
  %5250 = fmul fast float %5249, 5.000000e+00
  %5251 = fadd fast float %5250, 0xC1EFBF8940000000
  %5252 = fptosi float %5251 to i32
  %5253 = bitcast i32 %5252 to float
  %5254 = fsub fast float 1.000000e+00, %4920
  %5255 = fsub fast float 1.000000e+00, %4921
  %5256 = fsub fast float 1.000000e+00, %4928
  %5257 = fmul fast float %5253, %5254
  %5258 = fmul fast float %5253, %5255
  %5259 = fmul fast float %5253, %5256
  %5260 = fadd fast float %5257, %4920
  %5261 = fadd fast float %5258, %4921
  %5262 = fadd fast float %5259, %4928
  br i1 %5054, label %5263, label %5286

; <label>:5263                                    ; preds = %5195
  %5264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3722, float %5246, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5265 = extractvalue %dx.types.ResRet.f32 %5264, 0
  %5266 = extractvalue %dx.types.ResRet.f32 %5264, 1
  %5267 = extractvalue %dx.types.ResRet.f32 %5264, 2
  %5268 = fadd fast float %5265, -5.000000e-01
  %5269 = fadd fast float %5266, -5.000000e-01
  %5270 = fadd fast float %5267, -5.000000e-01
  %5271 = fmul fast float %4920, 4.000000e+00
  %5272 = fmul fast float %5271, %5254
  %5273 = fmul fast float %5272, %5268
  %5274 = fmul fast float %4921, 4.000000e+00
  %5275 = fmul fast float %5274, %5255
  %5276 = fmul fast float %5275, %5269
  %5277 = fmul fast float %4928, 4.000000e+00
  %5278 = fmul fast float %5277, %5256
  %5279 = fmul fast float %5278, %5270
  %5280 = fadd fast float %5273, %5260
  %5281 = fadd fast float %5276, %5261
  %5282 = fadd fast float %5279, %5262
  %5283 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5284 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5285 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  br label %5286

; <label>:5286                                    ; preds = %5263, %5195
  %5287 = phi float [ %5283, %5263 ], [ %5260, %5195 ]
  %5288 = phi float [ %5284, %5263 ], [ %5261, %5195 ]
  %5289 = phi float [ %5285, %5263 ], [ %5262, %5195 ]
  %5290 = fmul fast float %5207, 9.843750e-01
  %5291 = fadd fast float %5290, 7.812500e-03
  %5292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5291, float %5044, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 2
  %5294 = extractvalue %dx.types.ResRet.f32 %5292, 3
  %5295 = fmul fast float %5293, %4920
  %5296 = fmul fast float %5293, %4921
  %5297 = fmul fast float %5293, %4928
  %5298 = fadd fast float %5295, %5294
  %5299 = fadd fast float %5296, %5294
  %5300 = fadd fast float %5297, %5294
  br i1 %5054, label %5301, label %5324

; <label>:5301                                    ; preds = %5286
  %5302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3722, float %5207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5303 = extractvalue %dx.types.ResRet.f32 %5302, 0
  %5304 = extractvalue %dx.types.ResRet.f32 %5302, 1
  %5305 = extractvalue %dx.types.ResRet.f32 %5302, 2
  %5306 = fadd fast float %5303, -5.000000e-01
  %5307 = fadd fast float %5304, -5.000000e-01
  %5308 = fadd fast float %5305, -5.000000e-01
  %5309 = fmul fast float %4920, 4.000000e+00
  %5310 = fmul fast float %5309, %5254
  %5311 = fmul fast float %5310, %5306
  %5312 = fmul fast float %4921, 4.000000e+00
  %5313 = fmul fast float %5312, %5255
  %5314 = fmul fast float %5313, %5307
  %5315 = fmul fast float %4928, 4.000000e+00
  %5316 = fmul fast float %5315, %5256
  %5317 = fmul fast float %5316, %5308
  %5318 = fadd fast float %5311, %5298
  %5319 = fadd fast float %5314, %5299
  %5320 = fadd fast float %5317, %5300
  %5321 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5322 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5323 = call float @dx.op.unary.f32(i32 7, float %5320)  ; Saturate(value)
  br label %5324

; <label>:5324                                    ; preds = %5301, %5286
  %5325 = phi float [ %5321, %5301 ], [ %5298, %5286 ]
  %5326 = phi float [ %5322, %5301 ], [ %5299, %5286 ]
  %5327 = phi float [ %5323, %5301 ], [ %5300, %5286 ]
  %5328 = call float @dx.op.binary.f32(i32 35, float %5326, float %5327)  ; FMax(a,b)
  %5329 = call float @dx.op.binary.f32(i32 35, float %5325, float %5328)  ; FMax(a,b)
  %5330 = fsub fast float 1.000000e+00, %5329
  %5331 = fmul fast float %5287, %5245
  %5332 = fmul fast float %5288, %5245
  %5333 = fmul fast float %5289, %5245
  %5334 = fsub fast float 1.000000e+00, %5208
  %5335 = bitcast float %5334 to i32
  %5336 = sitofp i32 %5335 to float
  %5337 = fmul fast float %5336, 5.000000e+00
  %5338 = fadd fast float %5337, 0xC1EFBF8940000000
  %5339 = fptosi float %5338 to i32
  %5340 = bitcast i32 %5339 to float
  %5341 = fmul fast float %5340, %3723
  %5342 = fmul fast float %5330, %5341
  %5343 = fmul fast float %5342, %5104
  %5344 = fmul fast float %5342, %5105
  %5345 = fmul fast float %5342, %5106
  %5346 = fadd fast float %5343, %5331
  %5347 = fadd fast float %5344, %5332
  %5348 = fadd fast float %5345, %5333
  %5349 = fmul fast float %5213, %5196
  %5350 = fmul fast float %5349, %5330
  %5351 = fmul fast float %5213, %5197
  %5352 = fmul fast float %5351, %5330
  %5353 = fmul fast float %5213, %5198
  %5354 = fmul fast float %5353, %5330
  %5355 = fmul fast float %5349, %5346
  %5356 = fmul fast float %5351, %5347
  %5357 = fmul fast float %5353, %5348
  %5358 = fadd fast float %5350, %5088
  %5359 = fmul fast float %5358, %3719
  %5360 = fadd fast float %5352, %5089
  %5361 = fmul fast float %5360, %3719
  %5362 = fadd fast float %5354, %5090
  %5363 = fmul fast float %5362, %3719
  %5364 = fadd fast float %5355, %5131
  %5365 = fmul fast float %5364, %3719
  %5366 = fadd fast float %5356, %5134
  %5367 = fmul fast float %5366, %3719
  %5368 = fadd fast float %5357, %5137
  %5369 = fmul fast float %5368, %3719
  br label %5370

; <label>:5370                                    ; preds = %5324, %5188, %5081
  %5371 = phi float [ %5132, %5081 ], [ %5132, %5188 ], [ %5365, %5324 ]
  %5372 = phi float [ %5135, %5081 ], [ %5135, %5188 ], [ %5367, %5324 ]
  %5373 = phi float [ %5138, %5081 ], [ %5138, %5188 ], [ %5369, %5324 ]
  %5374 = phi float [ %5127, %5081 ], [ %5127, %5188 ], [ %5359, %5324 ]
  %5375 = phi float [ %5128, %5081 ], [ %5128, %5188 ], [ %5361, %5324 ]
  %5376 = phi float [ %5129, %5081 ], [ %5129, %5188 ], [ %5363, %5324 ]
  %5377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5378 = extractvalue %dx.types.CBufRet.i32 %5377, 0
  %5379 = icmp eq i32 %5378, 0
  br i1 %5379, label %5814, label %5380

; <label>:5380                                    ; preds = %5370
  %5381 = fptoui float %76 to i32
  %5382 = fptoui float %77 to i32
  %5383 = lshr i32 %5381, 4
  %5384 = lshr i32 %5382, 4
  %5385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5386 = extractvalue %dx.types.CBufRet.i32 %5385, 0
  %5387 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5384, i32 %5386, i32 %5383)  ; UMad(a,b,c)
  %5388 = add nsw i32 %5378, -1
  %5389 = call i32 @dx.op.binary.i32(i32 37, i32 %5388, i32 0)  ; IMax(a,b)
  %5390 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %5391 = fptoui float %5390 to i32
  %5392 = lshr i32 %5391, 5
  %5393 = call i32 @dx.op.binary.i32(i32 40, i32 %5392, i32 8191)  ; UMin(a,b)
  %5394 = shl i32 %5393, 2
  %5395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5394, i32 undef)  ; BufferLoad(srv,index,wot)
  %5396 = extractvalue %dx.types.ResRet.i32 %5395, 0
  %5397 = lshr i32 %5396, 16
  %5398 = and i32 %5396, 65535
  %5399 = lshr i32 %5396, 21
  %5400 = lshr i32 %5398, 5
  %5401 = call i32 @dx.op.binary.i32(i32 40, i32 %5400, i32 %5389)  ; UMin(a,b)
  %5402 = icmp ugt i32 %5399, %5401
  br i1 %5402, label %5814, label %5403

; <label>:5403                                    ; preds = %5380
  br label %5404

; <label>:5404                                    ; preds = %5804, %5403
  %5405 = phi i32 [ %5811, %5804 ], [ %5399, %5403 ]
  %5406 = phi float [ %5805, %5804 ], [ %5371, %5403 ]
  %5407 = phi float [ %5806, %5804 ], [ %5372, %5403 ]
  %5408 = phi float [ %5807, %5804 ], [ %5373, %5403 ]
  %5409 = phi float [ %5808, %5804 ], [ %5374, %5403 ]
  %5410 = phi float [ %5809, %5804 ], [ %5375, %5403 ]
  %5411 = phi float [ %5810, %5804 ], [ %5376, %5403 ]
  %5412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.i32 %5412, 0
  %5414 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5387, i32 %5413, i32 %5405)  ; UMad(a,b,c)
  %5415 = shl i32 %5414, 2
  %5416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5415, i32 undef)  ; BufferLoad(srv,index,wot)
  %5417 = extractvalue %dx.types.ResRet.i32 %5416, 0
  %5418 = shl i32 %5405, 5
  %5419 = sub nsw i32 %5397, %5418
  %5420 = call i32 @dx.op.binary.i32(i32 37, i32 %5419, i32 0)  ; IMax(a,b)
  %5421 = call i32 @dx.op.binary.i32(i32 38, i32 %5420, i32 31)  ; IMin(a,b)
  %5422 = sub nsw i32 1, %5397
  %5423 = add nsw i32 %5422, %5398
  %5424 = call i32 @dx.op.binary.i32(i32 37, i32 %5423, i32 0)  ; IMax(a,b)
  %5425 = call i32 @dx.op.binary.i32(i32 38, i32 %5424, i32 32)  ; IMin(a,b)
  %5426 = and i32 %5425, 31
  %5427 = shl i32 -1, %5426
  %5428 = xor i32 %5427, -1
  %5429 = and i32 %5421, 31
  %5430 = shl i32 %5428, %5429
  %5431 = icmp eq i32 %5425, 32
  %5432 = select i1 %5431, i32 -1, i32 %5430
  %5433 = and i32 %5432, %5417
  %5434 = icmp eq i32 %5433, 0
  br i1 %5434, label %5804, label %5435

; <label>:5435                                    ; preds = %5404
  br label %5436

; <label>:5436                                    ; preds = %5516, %5435
  %5437 = phi i32 [ %5448, %5516 ], [ %5433, %5435 ]
  %5438 = phi float [ %5517, %5516 ], [ %5406, %5435 ]
  %5439 = phi float [ %5518, %5516 ], [ %5407, %5435 ]
  %5440 = phi float [ %5519, %5516 ], [ %5408, %5435 ]
  %5441 = phi float [ %5520, %5516 ], [ %5409, %5435 ]
  %5442 = phi float [ %5521, %5516 ], [ %5410, %5435 ]
  %5443 = phi float [ %5522, %5516 ], [ %5411, %5435 ]
  %5444 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5437)  ; FirstbitLo(value)
  %5445 = add i32 %5444, %5418
  %5446 = and i32 %5444, 31
  %5447 = shl i32 1, %5446
  %5448 = xor i32 %5447, %5437
  %5449 = mul i32 %5445, 112
  %5450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5449, i32 undef)  ; BufferLoad(srv,index,wot)
  %5451 = extractvalue %dx.types.ResRet.f32 %5450, 0
  %5452 = extractvalue %dx.types.ResRet.f32 %5450, 1
  %5453 = extractvalue %dx.types.ResRet.f32 %5450, 2
  %5454 = or i32 %5449, 12
  %5455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5454, i32 undef)  ; BufferLoad(srv,index,wot)
  %5456 = extractvalue %dx.types.ResRet.f32 %5455, 0
  %5457 = add i32 %5449, 44
  %5458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5457, i32 undef)  ; BufferLoad(srv,index,wot)
  %5459 = extractvalue %dx.types.ResRet.f32 %5458, 0
  %5460 = add i32 %5449, 48
  %5461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5460, i32 undef)  ; BufferLoad(srv,index,wot)
  %5462 = extractvalue %dx.types.ResRet.f32 %5461, 0
  %5463 = extractvalue %dx.types.ResRet.f32 %5461, 1
  %5464 = extractvalue %dx.types.ResRet.f32 %5461, 2
  %5465 = add i32 %5449, 80
  %5466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5465, i32 undef)  ; BufferLoad(srv,index,wot)
  %5467 = extractvalue %dx.types.ResRet.f32 %5466, 1
  %5468 = extractvalue %dx.types.ResRet.f32 %5466, 2
  %5469 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5470 = select i1 %202, float %5467, float %5451
  %5471 = select i1 %202, float %5469, float %5452
  %5472 = select i1 %202, float %5468, float %5453
  %5473 = fsub fast float %5462, %163
  %5474 = fsub fast float %5463, %164
  %5475 = fsub fast float %5464, %165
  %5476 = call float @dx.op.dot3.f32(i32 55, float %5473, float %5474, float %5475, float %5473, float %5474, float %5475)  ; Dot3(ax,ay,az,bx,by,bz)
  %5477 = call float @dx.op.unary.f32(i32 24, float %5476)  ; Sqrt(value)
  %5478 = fdiv fast float 1.000000e+00, %5477
  %5479 = fmul fast float %5478, %5473
  %5480 = fmul fast float %5478, %5474
  %5481 = fmul fast float %5478, %5475
  %5482 = fadd fast float %5477, %5456
  %5483 = fdiv fast float 1.000000e+00, %5482
  %5484 = fmul float %5459, %5483
  %5485 = fmul float %5484, %5484
  %5486 = call float @dx.op.unary.f32(i32 7, float %5485)  ; Saturate(value)
  %5487 = and i32 %5447, %5433
  %5488 = icmp eq i32 %5487, 0
  br i1 %5488, label %5511, label %5489, !dx.controlflow.hints !75

; <label>:5489                                    ; preds = %5436
  %5490 = lshr i32 %5381, 5
  %5491 = lshr i32 %5382, 5
  %5492 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5490, i32 %5491, i32 %5445, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5493 = extractvalue %dx.types.ResRet.i32 %5492, 0
  %5494 = and i32 %5493, 3
  %5495 = icmp eq i32 %5494, 0
  %5496 = select i1 %5495, float 1.000000e+00, float 0.000000e+00
  %5497 = icmp eq i32 %5494, 3
  br i1 %5497, label %5498, label %5511

; <label>:5498                                    ; preds = %5489
  %5499 = lshr i32 %5493, 10
  %5500 = and i32 %5499, 8160
  %5501 = and i32 %5382, 31
  %5502 = or i32 %5500, %5501
  %5503 = lshr i32 %5493, 1
  %5504 = and i32 %5503, 16352
  %5505 = and i32 %5381, 31
  %5506 = or i32 %5504, %5505
  %5507 = lshr i32 %5493, 23
  %5508 = and i32 %5507, 255
  %5509 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5506, i32 %5502, i32 %5508, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5510 = extractvalue %dx.types.ResRet.f32 %5509, 0
  br label %5511

; <label>:5511                                    ; preds = %5498, %5489, %5436
  %5512 = phi float [ %5510, %5498 ], [ %5496, %5489 ], [ 0.000000e+00, %5436 ]
  %5513 = call float @dx.op.binary.f32(i32 36, float %5512, float %5512)  ; FMin(a,b)
  %5514 = call float @dx.op.binary.f32(i32 36, float %5512, float %5513)  ; FMin(a,b)
  %5515 = fcmp fast ogt float %5514, 0.000000e+00
  br i1 %5515, label %5524, label %5516, !dx.controlflow.hints !76

; <label>:5516                                    ; preds = %5760, %5511
  %5517 = phi float [ %5438, %5511 ], [ %5800, %5760 ]
  %5518 = phi float [ %5439, %5511 ], [ %5801, %5760 ]
  %5519 = phi float [ %5440, %5511 ], [ %5802, %5760 ]
  %5520 = phi float [ %5441, %5511 ], [ %5794, %5760 ]
  %5521 = phi float [ %5442, %5511 ], [ %5795, %5760 ]
  %5522 = phi float [ %5443, %5511 ], [ %5796, %5760 ]
  %5523 = icmp eq i32 %5437, %5447
  br i1 %5523, label %5803, label %5436

; <label>:5524                                    ; preds = %5511
  %5525 = fmul fast float %5512, %5470
  %5526 = fmul fast float %5512, %5471
  %5527 = fmul fast float %5512, %5472
  %5528 = fsub fast float %5464, %4124
  %5529 = fcmp fast ogt float %5528, 0.000000e+00
  %5530 = fsub fast float %165, %4124
  %5531 = fcmp fast ogt float %5530, 0.000000e+00
  %5532 = xor i1 %5531, %5529
  %5533 = fsub fast float %4124, %5464
  %5534 = fmul fast float %5533, 2.000000e+00
  %5535 = fadd fast float %5534, %5464
  %5536 = select i1 %5532, float %5464, float %5535
  %5537 = fsub fast float %5536, %165
  %5538 = call float @dx.op.dot3.f32(i32 55, float %5473, float %5474, float %5537, float %5473, float %5474, float %5537)  ; Dot3(ax,ay,az,bx,by,bz)
  %5539 = call float @dx.op.unary.f32(i32 25, float %5538)  ; Rsqrt(value)
  %5540 = fmul fast float %5539, %5473
  %5541 = fmul fast float %5539, %5474
  %5542 = fmul fast float %5539, %5537
  %5543 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4132)  ; Dot3(ax,ay,az,bx,by,bz)
  %5544 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5540, float %5541, float %5542)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = fdiv fast float 1.000000e+00, %5544
  %5546 = fmul fast float %5545, %5543
  %5547 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5530, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = fcmp fast ogt float %5547, 0.000000e+00
  %5549 = fcmp fast olt float %5547, 0.000000e+00
  %5550 = zext i1 %5548 to i32
  %5551 = zext i1 %5549 to i32
  %5552 = sub nsw i32 %5550, %5551
  %5553 = sitofp i32 %5552 to float
  %5554 = fsub fast float %5536, %4124
  %5555 = call float @dx.op.dot3.f32(i32 55, float %5473, float %5474, float %5554, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5556 = fcmp fast ogt float %5555, 0.000000e+00
  %5557 = fcmp fast olt float %5555, 0.000000e+00
  %5558 = zext i1 %5556 to i32
  %5559 = zext i1 %5557 to i32
  %5560 = sub nsw i32 %5558, %5559
  %5561 = sitofp i32 %5560 to float
  %5562 = fcmp fast une float %5553, %5561
  br i1 %5562, label %5563, label %5573

; <label>:5563                                    ; preds = %5524
  %5564 = fmul fast float %5546, %5542
  %5565 = fmul fast float %5546, %5541
  %5566 = fmul fast float %5546, %5540
  %5567 = fmul fast float %5566, %5566
  %5568 = fmul fast float %5565, %5565
  %5569 = fadd fast float %5567, %5568
  %5570 = fmul fast float %5564, %5564
  %5571 = fadd fast float %5569, %5570
  %5572 = call float @dx.op.unary.f32(i32 24, float %5571)  ; Sqrt(value)
  br label %5585

; <label>:5573                                    ; preds = %5524
  %5574 = icmp slt i32 %5552, 0
  br i1 %5574, label %5575, label %5585

; <label>:5575                                    ; preds = %5573
  %5576 = fsub fast float %163, %5462
  %5577 = fsub fast float %164, %5463
  %5578 = fsub fast float %165, %5536
  %5579 = fmul fast float %5576, %5576
  %5580 = fmul fast float %5577, %5577
  %5581 = fadd fast float %5579, %5580
  %5582 = fmul fast float %5578, %5578
  %5583 = fadd fast float %5581, %5582
  %5584 = call float @dx.op.unary.f32(i32 24, float %5583)  ; Sqrt(value)
  br label %5585

; <label>:5585                                    ; preds = %5575, %5573, %5563
  %5586 = phi float [ %5572, %5563 ], [ %5584, %5575 ], [ 0.000000e+00, %5573 ]
  %5587 = and i1 %5531, %5529
  %5588 = fsub fast float -0.000000e+00, %5586
  %5589 = select i1 %5587, float -0.000000e+00, float %5588
  %5590 = fmul fast float %4125, 0x3FF7154760000000
  %5591 = fmul fast float %5590, %5589
  %5592 = fmul fast float %4126, 0x3FF7154760000000
  %5593 = fmul fast float %5592, %5589
  %5594 = fmul fast float %4127, 0x3FF7154760000000
  %5595 = fmul fast float %5594, %5589
  %5596 = call float @dx.op.unary.f32(i32 21, float %5591)  ; Exp(value)
  %5597 = call float @dx.op.unary.f32(i32 21, float %5593)  ; Exp(value)
  %5598 = call float @dx.op.unary.f32(i32 21, float %5595)  ; Exp(value)
  %5599 = call float @dx.op.unary.f32(i32 7, float %5596)  ; Saturate(value)
  %5600 = call float @dx.op.unary.f32(i32 7, float %5597)  ; Saturate(value)
  %5601 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5602 = fmul fast float %5525, %5599
  %5603 = fmul fast float %5526, %5600
  %5604 = fmul fast float %5527, %5601
  %5605 = fsub fast float %5479, %4916
  %5606 = fsub fast float %5480, %4915
  %5607 = fsub fast float %5481, %4914
  %5608 = call float @dx.op.dot3.f32(i32 55, float %5605, float %5606, float %5607, float %5605, float %5606, float %5607)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = call float @dx.op.unary.f32(i32 25, float %5608)  ; Rsqrt(value)
  %5610 = fmul fast float %5609, %5605
  %5611 = fmul fast float %5609, %5606
  %5612 = fmul fast float %5609, %5607
  %5613 = call float @dx.op.dot3.f32(i32 55, float %5479, float %5480, float %5481, float %4917, float %4918, float %4919)  ; Dot3(ax,ay,az,bx,by,bz)
  %5614 = call float @dx.op.dot3.f32(i32 55, float %4913, float %4912, float %4911, float %5610, float %5611, float %5612)  ; Dot3(ax,ay,az,bx,by,bz)
  %5615 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5616 = fmul fast float %5615, %5486
  %5617 = fmul fast float %5615, %5615
  %5618 = fmul fast float %5617, %5139
  %5619 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  %5620 = fmul fast float %5616, %5619
  %5621 = bitcast float %5476 to i32
  %5622 = ashr i32 %5621, 1
  %5623 = sub nsw i32 1597463007, %5622
  %5624 = bitcast i32 %5623 to float
  %5625 = fmul fast float %5624, %5473
  %5626 = fmul fast float %5624, %5474
  %5627 = fmul fast float %5624, %5475
  %5628 = fsub fast float %5625, %4916
  %5629 = fsub fast float %5626, %4915
  %5630 = fsub fast float %5627, %4914
  %5631 = call float @dx.op.dot3.f32(i32 55, float %5628, float %5629, float %5630, float %5628, float %5629, float %5630)  ; Dot3(ax,ay,az,bx,by,bz)
  %5632 = call float @dx.op.unary.f32(i32 25, float %5631)  ; Rsqrt(value)
  %5633 = fmul fast float %5628, %5632
  %5634 = fmul fast float %5629, %5632
  %5635 = fmul fast float %5630, %5632
  %5636 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %5633, float %5634, float %5635)  ; Dot3(ax,ay,az,bx,by,bz)
  %5637 = fmul fast float %5636, %5636
  %5638 = call float @dx.op.unary.f32(i32 6, float %5613)  ; FAbs(value)
  %5639 = fsub fast float 1.000000e+00, %4926
  %5640 = call float @dx.op.binary.f32(i32 35, float %5639, float 0x3F847AE140000000)  ; FMax(a,b)
  %5641 = fmul fast float %5640, %5640
  %5642 = fmul fast float %5641, %5641
  %5643 = fsub fast float 1.000000e+00, %5642
  %5644 = fmul fast float %4930, %4930
  %5645 = fmul fast float %5644, %5643
  %5646 = fadd fast float %5645, %5642
  %5647 = bitcast float %5646 to i32
  %5648 = ashr i32 %5647, 1
  %5649 = add nsw i32 %5648, 532487669
  %5650 = bitcast i32 %5649 to float
  %5651 = fadd fast float %5650, %4930
  %5652 = fmul fast float %5642, %5637
  %5653 = fsub fast float 1.000000e+00, %5637
  %5654 = fadd fast float %5653, %5652
  %5655 = fmul fast float %5638, %5638
  %5656 = fmul fast float %5655, %5643
  %5657 = fadd fast float %5656, %5642
  %5658 = bitcast float %5657 to i32
  %5659 = ashr i32 %5658, 1
  %5660 = add nsw i32 %5659, 532487669
  %5661 = bitcast i32 %5660 to float
  %5662 = fadd fast float %5661, %5638
  %5663 = fmul fast float %5654, %5654
  %5664 = fmul fast float %5663, %5651
  %5665 = fmul fast float %5664, %5662
  %5666 = fdiv fast float 1.000000e+00, %5665
  %5667 = bitcast float %5642 to i32
  %5668 = sitofp i32 %5667 to float
  %5669 = fmul fast float %5668, 0x3FE7F73180000000
  %5670 = fadd fast float %5669, 0x41AFE27C40000000
  %5671 = fptosi float %5670 to i32
  %5672 = bitcast i32 %5671 to float
  %5673 = fmul fast float %5459, 0x3FD80E9D60000000
  %5674 = fmul fast float %5673, %5624
  %5675 = fadd fast float %5672, %5674
  %5676 = bitcast float %5675 to i32
  %5677 = sub nsw i32 2129859010, %5676
  %5678 = bitcast i32 %5677 to float
  %5679 = fmul fast float %5642, %5666
  %5680 = fmul fast float %5679, %5672
  %5681 = fmul fast float %5680, %5678
  %5682 = call float @dx.op.unary.f32(i32 6, float %5614)  ; FAbs(value)
  %5683 = fsub fast float 1.000000e+00, %5682
  %5684 = bitcast float %5683 to i32
  %5685 = sitofp i32 %5684 to float
  %5686 = fmul fast float %5685, 5.000000e+00
  %5687 = fadd fast float %5686, 0xC1EFBF8940000000
  %5688 = fptosi float %5687 to i32
  %5689 = bitcast i32 %5688 to float
  %5690 = fsub fast float 1.000000e+00, %4920
  %5691 = fsub fast float 1.000000e+00, %4921
  %5692 = fsub fast float 1.000000e+00, %4928
  %5693 = fmul fast float %5689, %5690
  %5694 = fmul fast float %5689, %5691
  %5695 = fmul fast float %5689, %5692
  %5696 = fadd fast float %5693, %4920
  %5697 = fadd fast float %5694, %4921
  %5698 = fadd fast float %5695, %4928
  br i1 %5054, label %5699, label %5722

; <label>:5699                                    ; preds = %5585
  %5700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3722, float %5682, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5701 = extractvalue %dx.types.ResRet.f32 %5700, 0
  %5702 = extractvalue %dx.types.ResRet.f32 %5700, 1
  %5703 = extractvalue %dx.types.ResRet.f32 %5700, 2
  %5704 = fadd fast float %5701, -5.000000e-01
  %5705 = fadd fast float %5702, -5.000000e-01
  %5706 = fadd fast float %5703, -5.000000e-01
  %5707 = fmul fast float %4920, 4.000000e+00
  %5708 = fmul fast float %5707, %5690
  %5709 = fmul fast float %5708, %5704
  %5710 = fmul fast float %4921, 4.000000e+00
  %5711 = fmul fast float %5710, %5691
  %5712 = fmul fast float %5711, %5705
  %5713 = fmul fast float %4928, 4.000000e+00
  %5714 = fmul fast float %5713, %5692
  %5715 = fmul fast float %5714, %5706
  %5716 = fadd fast float %5709, %5696
  %5717 = fadd fast float %5712, %5697
  %5718 = fadd fast float %5715, %5698
  %5719 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5720 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5721 = call float @dx.op.unary.f32(i32 7, float %5718)  ; Saturate(value)
  br label %5722

; <label>:5722                                    ; preds = %5699, %5585
  %5723 = phi float [ %5719, %5699 ], [ %5696, %5585 ]
  %5724 = phi float [ %5720, %5699 ], [ %5697, %5585 ]
  %5725 = phi float [ %5721, %5699 ], [ %5698, %5585 ]
  %5726 = fmul fast float %5613, 9.843750e-01
  %5727 = fadd fast float %5726, 7.812500e-03
  %5728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5727, float %5044, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5729 = extractvalue %dx.types.ResRet.f32 %5728, 2
  %5730 = extractvalue %dx.types.ResRet.f32 %5728, 3
  %5731 = fmul fast float %5729, %4920
  %5732 = fmul fast float %5729, %4921
  %5733 = fmul fast float %5729, %4928
  %5734 = fadd fast float %5731, %5730
  %5735 = fadd fast float %5732, %5730
  %5736 = fadd fast float %5733, %5730
  br i1 %5054, label %5737, label %5760

; <label>:5737                                    ; preds = %5722
  %5738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3722, float %5613, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5739 = extractvalue %dx.types.ResRet.f32 %5738, 0
  %5740 = extractvalue %dx.types.ResRet.f32 %5738, 1
  %5741 = extractvalue %dx.types.ResRet.f32 %5738, 2
  %5742 = fadd fast float %5739, -5.000000e-01
  %5743 = fadd fast float %5740, -5.000000e-01
  %5744 = fadd fast float %5741, -5.000000e-01
  %5745 = fmul fast float %4920, 4.000000e+00
  %5746 = fmul fast float %5745, %5690
  %5747 = fmul fast float %5746, %5742
  %5748 = fmul fast float %4921, 4.000000e+00
  %5749 = fmul fast float %5748, %5691
  %5750 = fmul fast float %5749, %5743
  %5751 = fmul fast float %4928, 4.000000e+00
  %5752 = fmul fast float %5751, %5692
  %5753 = fmul fast float %5752, %5744
  %5754 = fadd fast float %5747, %5734
  %5755 = fadd fast float %5750, %5735
  %5756 = fadd fast float %5753, %5736
  %5757 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5758 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  %5759 = call float @dx.op.unary.f32(i32 7, float %5756)  ; Saturate(value)
  br label %5760

; <label>:5760                                    ; preds = %5737, %5722
  %5761 = phi float [ %5757, %5737 ], [ %5734, %5722 ]
  %5762 = phi float [ %5758, %5737 ], [ %5735, %5722 ]
  %5763 = phi float [ %5759, %5737 ], [ %5736, %5722 ]
  %5764 = call float @dx.op.binary.f32(i32 35, float %5762, float %5763)  ; FMax(a,b)
  %5765 = call float @dx.op.binary.f32(i32 35, float %5761, float %5764)  ; FMax(a,b)
  %5766 = fsub fast float 1.000000e+00, %5765
  %5767 = fmul fast float %5723, %5681
  %5768 = fmul fast float %5724, %5681
  %5769 = fmul fast float %5725, %5681
  %5770 = fsub fast float 1.000000e+00, %5614
  %5771 = bitcast float %5770 to i32
  %5772 = sitofp i32 %5771 to float
  %5773 = fmul fast float %5772, 5.000000e+00
  %5774 = fadd fast float %5773, 0xC1EFBF8940000000
  %5775 = fptosi float %5774 to i32
  %5776 = bitcast i32 %5775 to float
  %5777 = fmul fast float %5776, %3723
  %5778 = fmul fast float %5766, %5777
  %5779 = fmul fast float %5778, %5104
  %5780 = fmul fast float %5778, %5105
  %5781 = fmul fast float %5778, %5106
  %5782 = fadd fast float %5779, %5767
  %5783 = fadd fast float %5780, %5768
  %5784 = fadd fast float %5781, %5769
  %5785 = fmul fast float %5602, %3719
  %5786 = fmul fast float %5785, %5620
  %5787 = fmul fast float %5786, %5766
  %5788 = fmul fast float %5603, %3719
  %5789 = fmul fast float %5788, %5620
  %5790 = fmul fast float %5789, %5766
  %5791 = fmul fast float %5604, %3719
  %5792 = fmul fast float %5791, %5620
  %5793 = fmul fast float %5792, %5766
  %5794 = fadd fast float %5787, %5441
  %5795 = fadd fast float %5790, %5442
  %5796 = fadd fast float %5793, %5443
  %5797 = fmul fast float %5786, %5782
  %5798 = fmul fast float %5789, %5783
  %5799 = fmul fast float %5792, %5784
  %5800 = fadd fast float %5797, %5438
  %5801 = fadd fast float %5798, %5439
  %5802 = fadd fast float %5799, %5440
  br label %5516

; <label>:5803                                    ; preds = %5516
  br label %5804

; <label>:5804                                    ; preds = %5803, %5404
  %5805 = phi float [ %5406, %5404 ], [ %5517, %5803 ]
  %5806 = phi float [ %5407, %5404 ], [ %5518, %5803 ]
  %5807 = phi float [ %5408, %5404 ], [ %5519, %5803 ]
  %5808 = phi float [ %5409, %5404 ], [ %5520, %5803 ]
  %5809 = phi float [ %5410, %5404 ], [ %5521, %5803 ]
  %5810 = phi float [ %5411, %5404 ], [ %5522, %5803 ]
  %5811 = add i32 %5405, 1
  %5812 = icmp ugt i32 %5811, %5401
  br i1 %5812, label %5813, label %5404

; <label>:5813                                    ; preds = %5804
  br label %5814

; <label>:5814                                    ; preds = %5813, %5380, %5370
  %5815 = phi float [ %5371, %5370 ], [ %5371, %5380 ], [ %5805, %5813 ]
  %5816 = phi float [ %5372, %5370 ], [ %5372, %5380 ], [ %5806, %5813 ]
  %5817 = phi float [ %5373, %5370 ], [ %5373, %5380 ], [ %5807, %5813 ]
  %5818 = phi float [ %5374, %5370 ], [ %5374, %5380 ], [ %5808, %5813 ]
  %5819 = phi float [ %5375, %5370 ], [ %5375, %5380 ], [ %5809, %5813 ]
  %5820 = phi float [ %5376, %5370 ], [ %5376, %5380 ], [ %5810, %5813 ]
  %5821 = call float @dx.op.unary.f32(i32 24, float %4923)  ; Sqrt(value)
  %5822 = call float @dx.op.unary.f32(i32 24, float %4924)  ; Sqrt(value)
  %5823 = call float @dx.op.unary.f32(i32 24, float %4925)  ; Sqrt(value)
  %5824 = fmul fast float %5821, %5818
  %5825 = fmul fast float %5822, %5819
  %5826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5827 = extractvalue %dx.types.CBufRet.f32 %5826, 0
  br i1 %202, label %5828, label %5848

; <label>:5828                                    ; preds = %5814
  %5829 = fadd fast float %5820, %3725
  %5830 = fmul fast float %5829, %3726
  %5831 = fsub fast float 1.000000e+00, %3726
  %5832 = call float @dx.op.unary.f32(i32 7, float %5831)  ; Saturate(value)
  %5833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5834 = extractvalue %dx.types.CBufRet.f32 %5833, 3
  %5835 = fmul fast float %5834, %5832
  %5836 = fadd fast float %5835, %5830
  %5837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5837, 0
  %5839 = fmul fast float %5838, %5110
  %5840 = fsub fast float %5836, %5839
  %5841 = fadd fast float %5825, %5824
  %5842 = fmul fast float %5827, %5841
  %5843 = extractvalue %dx.types.CBufRet.f32 %5833, 1
  %5844 = fsub fast float %5840, %5843
  %5845 = extractvalue %dx.types.CBufRet.f32 %5833, 2
  %5846 = fmul fast float %5844, %5845
  %5847 = call float @dx.op.unary.f32(i32 7, float %5846)  ; Saturate(value)
  br label %5864

; <label>:5848                                    ; preds = %5814
  %5849 = fmul fast float %5823, %5820
  %5850 = fmul fast float %5827, %5824
  %5851 = fmul fast float %5827, %5825
  %5852 = fmul fast float %5849, %5827
  %5853 = add i32 %32, 356
  %5854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5853, i32 undef)  ; BufferLoad(srv,index,wot)
  %5855 = extractvalue %dx.types.ResRet.i32 %5854, 0
  %5856 = and i32 %5855, 32
  %5857 = icmp eq i32 %5856, 0
  br i1 %5857, label %5864, label %5858

; <label>:5858                                    ; preds = %5848
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 0
  %5861 = fmul fast float %5860, 0x3FE99999A0000000
  %5862 = fadd fast float %5860, %5850
  %5863 = fadd fast float %5861, %5852
  br label %5864

; <label>:5864                                    ; preds = %5858, %5848, %5828
  %5865 = phi float [ %5842, %5828 ], [ %5862, %5858 ], [ %5850, %5848 ]
  %5866 = phi float [ %5847, %5828 ], [ %5851, %5858 ], [ %5851, %5848 ]
  %5867 = phi float [ 1.000000e+00, %5828 ], [ %5863, %5858 ], [ %5852, %5848 ]
  %5868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5869 = extractvalue %dx.types.CBufRet.f32 %5868, 0
  %5870 = fmul fast float %5869, %5816
  %5871 = fmul fast float %5869, %5817
  %5872 = fadd fast float %5816, %5815
  %5873 = select i1 %202, float %5872, float %5815
  %5874 = fmul float %5873, %5869
  %5875 = select i1 %202, float 0.000000e+00, float %5870
  %5876 = select i1 %202, float 0.000000e+00, float %5871
  %5877 = fmul fast float %5865, %5821
  %5878 = fmul fast float %5866, %5822
  %5879 = fmul fast float %5867, %5823
  %5880 = fadd fast float %5874, %5877
  %5881 = fadd fast float %5875, %5878
  %5882 = fadd fast float %5876, %5879
  %5883 = select i1 %202, float %5866, float %5881
  %5884 = select i1 %202, float %5867, float %5882
  %5885 = call float @dx.op.binary.f32(i32 36, float %5880, float 3.225500e+04)  ; FMin(a,b)
  %5886 = call float @dx.op.binary.f32(i32 36, float %5883, float 3.225500e+04)  ; FMin(a,b)
  %5887 = call float @dx.op.binary.f32(i32 36, float %5884, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5885)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5886)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5887)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

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
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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

