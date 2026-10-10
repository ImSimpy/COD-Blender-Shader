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
; shader hash: f36b5eea8bb5308bb84c56c536790763
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
  %396 = add i32 %32, 472
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
  br i1 %449, label %937, label %450

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
  %554 = add i32 %32, 360
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
  %577 = add i32 %32, 440
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
  %775 = add i32 %32, 376
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
  %859 = add i32 %32, 392
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
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = and i32 %896, 43008
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %922, label %899

; <label>:899                                     ; preds = %891
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = and i32 %901, 32768
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %922, label %904

; <label>:904                                     ; preds = %899
  %905 = and i32 %901, 1048576
  %906 = icmp ne i32 %905, 0
  %907 = add i32 %32, 456
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = add i32 %909, 0
  %911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %910, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %912 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %911, %dx.types.Handle %73, float %549, float %550, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %913 = extractvalue %dx.types.ResRet.f32 %912, 2
  %914 = select i1 %906, float 1.000000e+00, float %913
  %915 = add i32 %32, 100
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = lshr i32 %917, 22
  %919 = shl nuw nsw i32 %918, 5
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = fmul fast float %920, %914
  br label %922

; <label>:922                                     ; preds = %904, %899, %891
  %923 = phi float [ %921, %904 ], [ 0.000000e+00, %899 ], [ 0.000000e+00, %891 ]
  %924 = add i32 %32, 96
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = and i32 %926, 255
  %928 = uitofp i32 %927 to float
  %929 = lshr i32 %926, 8
  %930 = and i32 %929, 255
  %931 = uitofp i32 %930 to float
  %932 = call float @dx.op.dot3.f32(i32 55, float %764, float %765, float %766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %933 = fmul fast float %931, %932
  %934 = fadd fast float %933, %928
  %935 = fmul fast float %934, 0x3F70101020000000
  %936 = call float @dx.op.unary.f32(i32 7, float %935)  ; Saturate(value)
  br label %937

; <label>:937                                     ; preds = %922, %435
  %938 = phi float [ 0.000000e+00, %435 ], [ %845, %922 ]
  %939 = phi float [ 0.000000e+00, %435 ], [ %846, %922 ]
  %940 = phi float [ 0.000000e+00, %435 ], [ %764, %922 ]
  %941 = phi float [ 0.000000e+00, %435 ], [ %765, %922 ]
  %942 = phi float [ 0.000000e+00, %435 ], [ %766, %922 ]
  %943 = phi float [ 0.000000e+00, %435 ], [ %892, %922 ]
  %944 = phi float [ 0.000000e+00, %435 ], [ %893, %922 ]
  %945 = phi float [ 0.000000e+00, %435 ], [ %894, %922 ]
  %946 = phi float [ 0.000000e+00, %435 ], [ %750, %922 ]
  %947 = phi float [ 0.000000e+00, %435 ], [ 1.000000e+00, %922 ]
  %948 = phi float [ 0.000000e+00, %435 ], [ %844, %922 ]
  %949 = phi float [ 0.000000e+00, %435 ], [ %847, %922 ]
  %950 = phi float [ 0.000000e+00, %435 ], [ %923, %922 ]
  %951 = phi float [ 0.000000e+00, %435 ], [ %936, %922 ]
  br i1 %386, label %1717, label %952

; <label>:952                                     ; preds = %937
  %953 = icmp ult i32 %441, 2
  %954 = add i32 %32, 40
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = add i32 %32, 44
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = or i32 %959, %956
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %1717, label %962

; <label>:962                                     ; preds = %952
  %963 = and i32 %956, 262144
  %964 = icmp ne i32 %963, 0
  %965 = select i1 %964, float %37, float 1.000000e+00
  %966 = select i1 %964, float %38, float 0.000000e+00
  %967 = select i1 %964, float %39, float 0.000000e+00
  %968 = select i1 %964, float %40, float 1.000000e+00
  %969 = select i1 %964, float %41, float %64
  %970 = select i1 %964, float %42, float %65
  %971 = add i32 %32, 300
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = lshr i32 %973, 16
  %975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %974)  ; LegacyF16ToF32(value)
  %976 = fmul fast float %975, 0x3F50624DE0000000
  %977 = add i32 %32, 104
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = lshr i32 %979, 16
  %981 = and i32 %980, 255
  %982 = lshr i32 %979, 24
  %983 = add i32 %32, 308
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = and i32 %985, 65535
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = lshr i32 %985, 16
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = add i32 %32, 48
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = lshr i32 %992, 22
  %994 = shl nuw nsw i32 %993, 5
  %995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %994)  ; LegacyF16ToF32(value)
  %996 = shl i32 %992, 4
  %997 = and i32 %996, 32752
  %998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %997)  ; LegacyF16ToF32(value)
  %999 = lshr i32 %992, 7
  %1000 = and i32 %999, 32752
  %1001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1000)  ; LegacyF16ToF32(value)
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 3
  %1004 = fmul fast float %1003, 1.000000e+03
  %1005 = fmul fast float %296, %1004
  %1006 = call float @dx.op.unary.f32(i32 22, float %1005)  ; Frc(value)
  %1007 = fadd fast float %1006, %286
  %1008 = fmul fast float %297, %1004
  %1009 = call float @dx.op.unary.f32(i32 22, float %1008)  ; Frc(value)
  %1010 = fadd fast float %1009, %288
  %1011 = fmul fast float %976, %1004
  %1012 = call float @dx.op.unary.f32(i32 22, float %1011)  ; Frc(value)
  %1013 = fmul fast float %1012, 0x401921FB60000000
  %1014 = fadd fast float %1013, %995
  %1015 = call float @dx.op.unary.f32(i32 13, float %1014)  ; Sin(value)
  %1016 = call float @dx.op.unary.f32(i32 12, float %1014)  ; Cos(value)
  %1017 = fsub fast float -0.000000e+00, %1015
  %1018 = fadd fast float %969, -5.000000e-01
  %1019 = fadd fast float %970, -5.000000e-01
  %1020 = fmul fast float %987, %1018
  %1021 = fmul fast float %989, %1019
  %1022 = fadd fast float %1020, 5.000000e-01
  %1023 = fadd fast float %1021, 5.000000e-01
  %1024 = fmul fast float %998, %1022
  %1025 = fmul fast float %1001, %1023
  %1026 = fmul fast float %1016, %1024
  %1027 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %1025, float %1026)  ; FMad(a,b,c)
  %1028 = fmul fast float %1015, %1024
  %1029 = call float @dx.op.tertiary.f32(i32 46, float %1016, float %1025, float %1028)  ; FMad(a,b,c)
  %1030 = fadd fast float %1007, %1027
  %1031 = fadd fast float %1010, %1029
  %1032 = icmp ugt i32 %981, 1
  %1033 = icmp ugt i32 %979, 33554431
  %1034 = or i1 %1033, %1032
  br i1 %1034, label %1035, label %1060

; <label>:1035                                    ; preds = %962
  %1036 = add i32 %32, 244
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = lshr i32 %1038, 16
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = fmul fast float %1003, %1040
  %1042 = call float @dx.op.unary.f32(i32 22, float %1041)  ; Frc(value)
  %1043 = mul nuw nsw i32 %981, %982
  %1044 = uitofp i32 %1043 to float
  %1045 = fmul fast float %1042, %1044
  %1046 = call float @dx.op.unary.f32(i32 27, float %1045)  ; Round_ni(value)
  %1047 = fptoui float %1046 to i32
  %1048 = urem i32 %1047, %981
  %1049 = udiv i32 %1047, %982
  %1050 = call float @dx.op.unary.f32(i32 22, float %1030)  ; Frc(value)
  %1051 = call float @dx.op.unary.f32(i32 22, float %1031)  ; Frc(value)
  %1052 = uitofp i32 %1048 to float
  %1053 = uitofp i32 %1049 to float
  %1054 = fadd fast float %1050, %1052
  %1055 = fadd fast float %1051, %1053
  %1056 = uitofp i32 %981 to float
  %1057 = uitofp i32 %982 to float
  %1058 = fdiv fast float %1054, %1056
  %1059 = fdiv fast float %1055, %1057
  br label %1060

; <label>:1060                                    ; preds = %1035, %962
  %1061 = phi float [ %1058, %1035 ], [ %1030, %962 ]
  %1062 = phi float [ %1059, %1035 ], [ %1031, %962 ]
  %1063 = and i32 %956, 256
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1111, label %1065

; <label>:1065                                    ; preds = %1060
  %1066 = add i32 %32, 428
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = add i32 %1068, 0
  %1070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1069, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1071 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1070, %dx.types.Handle %73, float %1061, float %1062, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = add i32 %32, 116
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = shl i32 %1075, 4
  %1077 = and i32 %1076, 32752
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = lshr i32 %1075, 7
  %1080 = and i32 %1079, 32752
  %1081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1080)  ; LegacyF16ToF32(value)
  %1082 = fsub fast float 1.000000e+00, %438
  %1083 = call float @dx.op.binary.f32(i32 35, float %1082, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1084 = bitcast float %438 to i32
  %1085 = sitofp i32 %1084 to float
  %1086 = fadd fast float %1085, 0xC1CFBF8940000000
  %1087 = fmul fast float %1081, %1086
  %1088 = fadd fast float %1087, 0x41CFBF8940000000
  %1089 = fptosi float %1088 to i32
  %1090 = bitcast i32 %1089 to float
  %1091 = bitcast float %1083 to i32
  %1092 = sitofp i32 %1091 to float
  %1093 = fadd fast float %1092, 0xC1CFBF8940000000
  %1094 = fmul fast float %1093, %1081
  %1095 = fadd fast float %1094, 0x41CFBF8940000000
  %1096 = fptosi float %1095 to i32
  %1097 = bitcast i32 %1096 to float
  %1098 = fmul fast float %1090, %1078
  %1099 = fmul fast float %1097, %1078
  %1100 = fsub fast float %1083, %1098
  %1101 = fadd fast float %1099, %1083
  %1102 = call float @dx.op.unary.f32(i32 7, float %1100)  ; Saturate(value)
  %1103 = call float @dx.op.unary.f32(i32 7, float %1101)  ; Saturate(value)
  %1104 = fsub fast float %1072, %1102
  %1105 = fsub fast float %1103, %1102
  %1106 = bitcast float %1105 to i32
  %1107 = sub nsw i32 2129859010, %1106
  %1108 = bitcast i32 %1107 to float
  %1109 = fmul fast float %1108, %1104
  %1110 = call float @dx.op.unary.f32(i32 7, float %1109)  ; Saturate(value)
  br label %1111

; <label>:1111                                    ; preds = %1065, %1060
  %1112 = phi float [ %1110, %1065 ], [ %438, %1060 ]
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 128
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1133, label %1117

; <label>:1117                                    ; preds = %1111
  %1118 = add i32 %32, 412
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = add i32 %1120, 0
  %1122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1123 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1122, %dx.types.Handle %73, float %1061, float %1062, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = and i32 %1126, 524288
  %1128 = icmp ne i32 %1127, 0
  %1129 = fcmp fast ogt float %1124, 0x3FE0101020000000
  %1130 = select i1 %1129, float 1.000000e+00, float 0.000000e+00
  %1131 = select i1 %1128, float %1130, float %1124
  %1132 = fmul fast float %1131, %1112
  br label %1133

; <label>:1133                                    ; preds = %1117, %1111
  %1134 = phi float [ %1132, %1117 ], [ %1112, %1111 ]
  %1135 = fcmp fast ult float %1134, 0x3F70101020000000
  br i1 %1135, label %1717, label %1136

; <label>:1136                                    ; preds = %1133
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = and i32 %1138, 16
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1339, label %1141

; <label>:1141                                    ; preds = %1136
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = add i32 %32, 364
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = add i32 %1146, 0
  %1148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1149 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1148, %dx.types.Handle %72, float %1061, float %1062, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1153 = extractvalue %dx.types.ResRet.f32 %1149, 3
  %1154 = and i32 %1143, 255
  %1155 = uitofp i32 %1154 to float
  %1156 = lshr i32 %1143, 8
  %1157 = and i32 %1156, 255
  %1158 = uitofp i32 %1157 to float
  %1159 = fmul fast float %1153, %1155
  %1160 = fadd fast float %1159, %1158
  %1161 = fmul fast float %1160, 0x3F70101000000000
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = and i32 %1163, 512
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1174, label %1166

; <label>:1166                                    ; preds = %1141
  %1167 = add i32 %32, 444
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = add i32 %1169, 0
  %1171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1171, %dx.types.Handle %73, float %1061, float %1062, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  br label %1174

; <label>:1174                                    ; preds = %1166, %1141
  %1175 = phi float [ %1173, %1166 ], [ 1.000000e+00, %1141 ]
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = and i32 %1177, 33554432
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1286, label %1180

; <label>:1180                                    ; preds = %1174
  %1181 = add i32 %32, 240
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 65535
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = lshr i32 %1183, 16
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = add i32 %32, 244
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = and i32 %1190, 65535
  %1192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1191)  ; LegacyF16ToF32(value)
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = lshr i32 %1194, 24
  %1196 = uitofp i32 %1195 to float
  %1197 = fmul fast float %1196, 0x3F70101020000000
  %1198 = and i32 %1194, 255
  %1199 = uitofp i32 %1198 to float
  %1200 = fmul fast float %1199, 0x3F70101020000000
  %1201 = lshr i32 %1194, 8
  %1202 = and i32 %1201, 255
  %1203 = uitofp i32 %1202 to float
  %1204 = fmul fast float %1203, 0x3F70101020000000
  %1205 = lshr i32 %1194, 16
  %1206 = and i32 %1205, 255
  %1207 = uitofp i32 %1206 to float
  %1208 = fmul fast float %1207, 0x3F70101020000000
  %1209 = add i32 %32, 236
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = lshr i32 %1211, 24
  %1213 = uitofp i32 %1212 to float
  %1214 = fmul fast float %1213, 0x3F70101020000000
  %1215 = and i32 %1211, 255
  %1216 = uitofp i32 %1215 to float
  %1217 = fmul fast float %1216, 0x3F70101020000000
  %1218 = lshr i32 %1211, 8
  %1219 = and i32 %1218, 255
  %1220 = uitofp i32 %1219 to float
  %1221 = fmul fast float %1220, 0x3F70101020000000
  %1222 = lshr i32 %1211, 16
  %1223 = and i32 %1222, 255
  %1224 = uitofp i32 %1223 to float
  %1225 = fmul fast float %1224, 0x3F70101020000000
  %1226 = bitcast float %1150 to i32
  %1227 = ashr i32 %1226, 1
  %1228 = sub nsw i32 1597463174, %1227
  %1229 = bitcast i32 %1228 to float
  %1230 = fmul fast float %1150, 5.000000e-01
  %1231 = fmul fast float %1229, %1229
  %1232 = fmul fast float %1231, %1230
  %1233 = fsub fast float 1.500000e+00, %1232
  %1234 = fmul fast float %1229, %1150
  %1235 = fmul fast float %1234, %1233
  %1236 = bitcast float %1151 to i32
  %1237 = ashr i32 %1236, 1
  %1238 = sub nsw i32 1597463174, %1237
  %1239 = bitcast i32 %1238 to float
  %1240 = fmul fast float %1151, 5.000000e-01
  %1241 = fmul fast float %1239, %1239
  %1242 = fmul fast float %1241, %1240
  %1243 = fsub fast float 1.500000e+00, %1242
  %1244 = fmul fast float %1239, %1151
  %1245 = fmul fast float %1244, %1243
  %1246 = bitcast float %1152 to i32
  %1247 = ashr i32 %1246, 1
  %1248 = sub nsw i32 1597463174, %1247
  %1249 = bitcast i32 %1248 to float
  %1250 = fmul fast float %1152, 5.000000e-01
  %1251 = fmul fast float %1249, %1249
  %1252 = fmul fast float %1251, %1250
  %1253 = fsub fast float 1.500000e+00, %1252
  %1254 = fmul fast float %1249, %1152
  %1255 = fmul fast float %1254, %1253
  %1256 = fsub fast float %1235, %1217
  %1257 = fsub fast float %1245, %1221
  %1258 = fsub fast float %1255, %1225
  %1259 = fmul fast float %1256, %1185
  %1260 = fmul fast float %1257, %1187
  %1261 = fmul fast float %1258, %1192
  %1262 = fadd fast float %1259, %1200
  %1263 = fadd fast float %1260, %1204
  %1264 = fadd fast float %1261, %1208
  %1265 = call float @dx.op.unary.f32(i32 7, float %1262)  ; Saturate(value)
  %1266 = call float @dx.op.unary.f32(i32 7, float %1263)  ; Saturate(value)
  %1267 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1268 = fmul fast float %1265, %1265
  %1269 = fmul fast float %1266, %1266
  %1270 = fmul fast float %1267, %1267
  %1271 = fsub fast float %1268, %1150
  %1272 = fsub fast float %1269, %1151
  %1273 = fsub fast float %1270, %1152
  %1274 = fmul fast float %1271, %1175
  %1275 = fmul fast float %1272, %1175
  %1276 = fmul fast float %1273, %1175
  %1277 = fadd fast float %1274, %1150
  %1278 = fadd fast float %1275, %1151
  %1279 = fadd fast float %1276, %1152
  %1280 = fadd fast float %1197, %1161
  %1281 = fsub fast float %1280, %1214
  %1282 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1283 = fsub fast float %1282, %1161
  %1284 = fmul fast float %1283, %1175
  %1285 = fadd fast float %1284, %1161
  br label %1339

; <label>:1286                                    ; preds = %1174
  %1287 = and i32 %1177, 134217728
  %1288 = icmp eq i32 %1287, 0
  br i1 %1288, label %1323, label %1289

; <label>:1289                                    ; preds = %1286
  %1290 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %1291 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %1292 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %1293 = fadd fast float %1290, -5.000000e-01
  %1294 = fadd fast float %1291, -5.000000e-01
  %1295 = fadd fast float %1292, -5.000000e-01
  %1296 = fmul fast float %1293, %1175
  %1297 = fmul fast float %1294, %1175
  %1298 = fmul fast float %1295, %1175
  %1299 = fadd fast float %1296, 5.000000e-01
  %1300 = fadd fast float %1297, 5.000000e-01
  %1301 = fadd fast float %1298, 5.000000e-01
  %1302 = call float @dx.op.unary.f32(i32 24, float %1150)  ; Sqrt(value)
  %1303 = call float @dx.op.unary.f32(i32 24, float %1151)  ; Sqrt(value)
  %1304 = call float @dx.op.unary.f32(i32 24, float %1152)  ; Sqrt(value)
  %1305 = fmul fast float %1299, 2.000000e+00
  %1306 = fsub fast float 1.000000e+00, %1305
  %1307 = fmul fast float %1306, %1302
  %1308 = fadd fast float %1307, %1305
  %1309 = fmul fast float %1308, %1302
  %1310 = fmul fast float %1300, 2.000000e+00
  %1311 = fsub fast float 1.000000e+00, %1310
  %1312 = fmul fast float %1311, %1303
  %1313 = fadd fast float %1312, %1310
  %1314 = fmul fast float %1313, %1303
  %1315 = fmul fast float %1301, 2.000000e+00
  %1316 = fsub fast float 1.000000e+00, %1315
  %1317 = fmul fast float %1316, %1304
  %1318 = fadd fast float %1317, %1315
  %1319 = fmul fast float %1318, %1304
  %1320 = fmul fast float %1309, %1309
  %1321 = fmul fast float %1314, %1314
  %1322 = fmul fast float %1319, %1319
  br label %1339

; <label>:1323                                    ; preds = %1286
  %1324 = fmul fast float %273, %273
  %1325 = fmul fast float %277, %277
  %1326 = fmul fast float %281, %281
  %1327 = fadd fast float %1324, -1.000000e+00
  %1328 = fadd fast float %1325, -1.000000e+00
  %1329 = fadd fast float %1326, -1.000000e+00
  %1330 = fmul fast float %1175, %1327
  %1331 = fmul fast float %1175, %1328
  %1332 = fmul fast float %1175, %1329
  %1333 = fadd fast float %1330, 1.000000e+00
  %1334 = fadd fast float %1331, 1.000000e+00
  %1335 = fadd fast float %1332, 1.000000e+00
  %1336 = fmul fast float %1333, %1150
  %1337 = fmul fast float %1334, %1151
  %1338 = fmul fast float %1335, %1152
  br label %1339

; <label>:1339                                    ; preds = %1323, %1289, %1180, %1136
  %1340 = phi float [ %1285, %1180 ], [ %1161, %1289 ], [ %1161, %1323 ], [ 0x3FA23C0BE0000000, %1136 ]
  %1341 = phi float [ %1277, %1180 ], [ %1320, %1289 ], [ %1336, %1323 ], [ 1.000000e+00, %1136 ]
  %1342 = phi float [ %1278, %1180 ], [ %1321, %1289 ], [ %1337, %1323 ], [ 1.000000e+00, %1136 ]
  %1343 = phi float [ %1279, %1180 ], [ %1322, %1289 ], [ %1338, %1323 ], [ 1.000000e+00, %1136 ]
  %1344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.i32 %1344, 1
  %1346 = and i32 %1345, 1
  %1347 = icmp ne i32 %1346, 0
  %1348 = add i32 %32, 356
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = and i32 %1350, 32
  %1352 = icmp ne i32 %1351, 0
  %1353 = and i1 %1347, %1352
  %1354 = select i1 %1353, float 1.000000e+00, float %1341
  %1355 = select i1 %1353, float 0x3FD3333340000000, float %1342
  %1356 = select i1 %1353, float 0x3FD3333340000000, float %1343
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = and i32 %1358, 32
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1433, label %1361

; <label>:1361                                    ; preds = %1339
  %1362 = add i32 %32, 108
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = add i32 %32, 380
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = add i32 %1367, 0
  %1369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1368, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1370 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1369, %dx.types.Handle %72, float %1061, float %1062, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  %1372 = extractvalue %dx.types.ResRet.f32 %1370, 1
  %1373 = extractvalue %dx.types.ResRet.f32 %1370, 2
  %1374 = extractvalue %dx.types.ResRet.f32 %1370, 3
  %1375 = and i32 %1364, 255
  %1376 = uitofp i32 %1375 to float
  %1377 = lshr i32 %1364, 8
  %1378 = and i32 %1377, 255
  %1379 = uitofp i32 %1378 to float
  %1380 = lshr i32 %1364, 16
  %1381 = and i32 %1380, 255
  %1382 = uitofp i32 %1381 to float
  %1383 = fmul fast float %1382, 0x3F70101000000000
  %1384 = fmul fast float %1371, %1376
  %1385 = fadd fast float %1384, %1379
  %1386 = fmul fast float %1385, 0x3F70101000000000
  %1387 = fadd fast float %1372, -5.000000e-01
  %1388 = fadd fast float %1374, -5.000000e-01
  %1389 = fmul fast float %1387, %1383
  %1390 = fmul fast float %1388, %1383
  %1391 = fadd fast float %1389, 5.000000e-01
  %1392 = fadd fast float %1390, 5.000000e-01
  %1393 = fmul fast float %1391, 2.000000e+00
  %1394 = fadd fast float %1393, -1.000000e+00
  %1395 = fmul fast float %1392, 2.000000e+00
  %1396 = fadd fast float %1395, -1.000000e+00
  %1397 = fadd fast float %1394, %1396
  %1398 = fmul fast float %1397, 5.000000e-01
  %1399 = fsub fast float %1394, %1396
  %1400 = fmul fast float %1399, 5.000000e-01
  %1401 = call float @dx.op.unary.f32(i32 6, float %1398)  ; FAbs(value)
  %1402 = fsub fast float 1.000000e+00, %1401
  %1403 = call float @dx.op.unary.f32(i32 6, float %1400)  ; FAbs(value)
  %1404 = fsub fast float %1402, %1403
  %1405 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1400, float %1404, float %1398, float %1400, float %1404)  ; Dot3(ax,ay,az,bx,by,bz)
  %1406 = call float @dx.op.unary.f32(i32 25, float %1405)  ; Rsqrt(value)
  %1407 = fmul fast float %1398, %1406
  %1408 = fmul fast float %1400, %1406
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = and i32 %1410, 67108864
  %1412 = icmp eq i32 %1411, 0
  br i1 %1412, label %1429, label %1413

; <label>:1413                                    ; preds = %1361
  %1414 = add i32 %32, 296
  %1415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1414, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.i32 %1415, 0
  %1417 = and i32 %1416, 65535
  %1418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1417)  ; LegacyF16ToF32(value)
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = and i32 %1420, 65535
  %1422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1421)  ; LegacyF16ToF32(value)
  %1423 = lshr i32 %1416, 16
  %1424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1423)  ; LegacyF16ToF32(value)
  %1425 = fsub fast float %1386, %1424
  %1426 = fmul fast float %1425, %1418
  %1427 = fadd fast float %1426, %1422
  %1428 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  br label %1429

; <label>:1429                                    ; preds = %1413, %1361
  %1430 = phi float [ %1428, %1413 ], [ %1386, %1361 ]
  %1431 = call float @dx.op.dot2.f32(i32 54, float %1407, float %1408, float %965, float %966)  ; Dot2(ax,ay,bx,by)
  %1432 = call float @dx.op.dot2.f32(i32 54, float %1407, float %1408, float %967, float %968)  ; Dot2(ax,ay,bx,by)
  br label %1433

; <label>:1433                                    ; preds = %1429, %1339
  %1434 = phi float [ %1430, %1429 ], [ 0x3FD6666660000000, %1339 ]
  %1435 = phi float [ %1431, %1429 ], [ 0.000000e+00, %1339 ]
  %1436 = phi float [ %1432, %1429 ], [ 0.000000e+00, %1339 ]
  %1437 = phi float [ %1373, %1429 ], [ 1.000000e+00, %1339 ]
  %1438 = add i32 %32, 176
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = lshr i32 %1440, 22
  %1442 = shl nuw nsw i32 %1441, 5
  %1443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1442)  ; LegacyF16ToF32(value)
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = and i32 %1445, 64
  %1447 = icmp eq i32 %1446, 0
  br i1 %1447, label %1481, label %1448

; <label>:1448                                    ; preds = %1433
  %1449 = add i32 %32, 396
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = add i32 %1451, 0
  %1453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1452, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 131072
  %1457 = icmp eq i32 %1456, 0
  %1458 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1453, %dx.types.Handle %72, float %1061, float %1062, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1459 = extractvalue %dx.types.ResRet.f32 %1458, 0
  %1460 = extractvalue %dx.types.ResRet.f32 %1458, 1
  %1461 = extractvalue %dx.types.ResRet.f32 %1458, 2
  %1462 = fmul fast float %1459, %261
  %1463 = fmul fast float %1460, %264
  %1464 = fmul fast float %1461, %267
  br i1 %1457, label %1471, label %1465

; <label>:1465                                    ; preds = %1448
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 0
  %1468 = fmul fast float %1467, %1462
  %1469 = fmul fast float %1467, %1463
  %1470 = fmul fast float %1467, %1464
  br label %1471

; <label>:1471                                    ; preds = %1465, %1448
  %1472 = phi float [ %1468, %1465 ], [ %1462, %1448 ]
  %1473 = phi float [ %1469, %1465 ], [ %1463, %1448 ]
  %1474 = phi float [ %1470, %1465 ], [ %1464, %1448 ]
  %1475 = fmul fast float %1472, %1443
  %1476 = select i1 %202, float %1475, float %1472
  %1477 = call float @dx.op.dot3.f32(i32 55, float %1476, float %1473, float %1474, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1478 = select i1 %202, float 0.000000e+00, float %1472
  %1479 = select i1 %202, float %1477, float %1473
  %1480 = select i1 %202, float 0.000000e+00, float %1474
  br label %1481

; <label>:1481                                    ; preds = %1471, %1433
  %1482 = phi float [ %1478, %1471 ], [ 0.000000e+00, %1433 ]
  %1483 = phi float [ %1479, %1471 ], [ 0.000000e+00, %1433 ]
  %1484 = phi float [ %1480, %1471 ], [ 0.000000e+00, %1433 ]
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = and i32 %1486, 43008
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1512, label %1489

; <label>:1489                                    ; preds = %1481
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 32768
  %1493 = icmp eq i32 %1492, 0
  br i1 %1493, label %1512, label %1494

; <label>:1494                                    ; preds = %1489
  %1495 = and i32 %1491, 1048576
  %1496 = icmp ne i32 %1495, 0
  %1497 = add i32 %32, 460
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = add i32 %1499, 0
  %1501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1500, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1502 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1501, %dx.types.Handle %73, float %1061, float %1062, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1503 = extractvalue %dx.types.ResRet.f32 %1502, 2
  %1504 = select i1 %1496, float 1.000000e+00, float %1503
  %1505 = add i32 %32, 116
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = lshr i32 %1507, 22
  %1509 = shl nuw nsw i32 %1508, 5
  %1510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1509)  ; LegacyF16ToF32(value)
  %1511 = fmul fast float %1510, %1504
  br label %1512

; <label>:1512                                    ; preds = %1494, %1489, %1481
  %1513 = phi float [ %1511, %1494 ], [ 0.000000e+00, %1489 ], [ 0.000000e+00, %1481 ]
  %1514 = add i32 %32, 112
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 255
  %1518 = uitofp i32 %1517 to float
  %1519 = lshr i32 %1516, 8
  %1520 = and i32 %1519, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = call float @dx.op.dot3.f32(i32 55, float %1354, float %1355, float %1356, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1523 = fmul fast float %1521, %1522
  %1524 = fadd fast float %1523, %1518
  %1525 = fmul fast float %1524, 0x3F70101020000000
  %1526 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  br i1 %953, label %1527, label %1535

; <label>:1527                                    ; preds = %1512
  %1528 = fsub fast float 1.000000e+00, %1134
  %1529 = fmul fast float %1528, %940
  %1530 = fmul fast float %1528, %941
  %1531 = fmul fast float %1528, %942
  %1532 = fmul fast float %1528, %943
  %1533 = fmul fast float %1528, %944
  %1534 = fmul fast float %1528, %945
  br label %1535

; <label>:1535                                    ; preds = %1527, %1512
  %1536 = phi float [ %1529, %1527 ], [ %940, %1512 ]
  %1537 = phi float [ %1530, %1527 ], [ %941, %1512 ]
  %1538 = phi float [ %1531, %1527 ], [ %942, %1512 ]
  %1539 = phi float [ %1532, %1527 ], [ %943, %1512 ]
  %1540 = phi float [ %1533, %1527 ], [ %944, %1512 ]
  %1541 = phi float [ %1534, %1527 ], [ %945, %1512 ]
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, 3
  %1545 = icmp eq i32 %1544, 3
  br i1 %1545, label %1624, label %1546

; <label>:1546                                    ; preds = %1535
  %1547 = and i32 %1543, 16
  %1548 = icmp ne i32 %1547, 0
  %1549 = select i1 %1548, float %1134, float 0.000000e+00
  %1550 = icmp eq i32 %1544, 0
  br i1 %1550, label %1551, label %1579

; <label>:1551                                    ; preds = %1546
  %1552 = and i32 %1543, 64
  %1553 = icmp ne i32 %1552, 0
  %1554 = select i1 %1553, float %1134, float 0.000000e+00
  %1555 = fsub fast float %1354, %1536
  %1556 = fsub fast float %1355, %1537
  %1557 = fsub fast float %1356, %1538
  %1558 = fmul fast float %1549, %1555
  %1559 = fmul fast float %1549, %1556
  %1560 = fmul fast float %1549, %1557
  %1561 = fadd fast float %1558, %1536
  %1562 = fadd fast float %1559, %1537
  %1563 = fadd fast float %1560, %1538
  %1564 = fsub fast float %1340, %946
  %1565 = fmul fast float %1549, %1564
  %1566 = fadd fast float %1565, %946
  %1567 = fsub fast float %1482, %1539
  %1568 = fsub fast float %1483, %1540
  %1569 = fsub fast float %1484, %1541
  %1570 = fmul fast float %1554, %1567
  %1571 = fmul fast float %1554, %1568
  %1572 = fmul fast float %1554, %1569
  %1573 = fadd fast float %1570, %1539
  %1574 = fadd fast float %1571, %1540
  %1575 = fadd fast float %1572, %1541
  %1576 = fsub fast float %1526, %951
  %1577 = fmul fast float %1549, %1576
  %1578 = fadd fast float %1577, %951
  br label %1624

; <label>:1579                                    ; preds = %1546
  %1580 = icmp eq i32 %1544, 1
  br i1 %1580, label %1581, label %1594

; <label>:1581                                    ; preds = %1579
  %1582 = fadd fast float %1354, -1.000000e+00
  %1583 = fadd fast float %1355, -1.000000e+00
  %1584 = fadd fast float %1356, -1.000000e+00
  %1585 = fmul fast float %1549, %1582
  %1586 = fmul fast float %1549, %1583
  %1587 = fmul fast float %1549, %1584
  %1588 = fadd fast float %1585, 1.000000e+00
  %1589 = fadd fast float %1586, 1.000000e+00
  %1590 = fadd fast float %1587, 1.000000e+00
  %1591 = fmul fast float %1588, %1536
  %1592 = fmul fast float %1589, %1537
  %1593 = fmul fast float %1590, %1538
  br label %1624

; <label>:1594                                    ; preds = %1579
  %1595 = icmp eq i32 %1544, 2
  br i1 %1595, label %1596, label %1624

; <label>:1596                                    ; preds = %1594
  %1597 = call float @dx.op.unary.f32(i32 24, float %1354)  ; Sqrt(value)
  %1598 = call float @dx.op.unary.f32(i32 24, float %1355)  ; Sqrt(value)
  %1599 = call float @dx.op.unary.f32(i32 24, float %1356)  ; Sqrt(value)
  %1600 = fadd fast float %1597, -5.000000e-01
  %1601 = fadd fast float %1598, -5.000000e-01
  %1602 = fadd fast float %1599, -5.000000e-01
  %1603 = fmul fast float %1600, %1549
  %1604 = fmul fast float %1601, %1549
  %1605 = fmul fast float %1602, %1549
  %1606 = fadd fast float %1603, 5.000000e-01
  %1607 = fadd fast float %1604, 5.000000e-01
  %1608 = fadd fast float %1605, 5.000000e-01
  %1609 = fmul fast float %1606, 2.000000e+00
  %1610 = fsub fast float 1.000000e+00, %1609
  %1611 = fmul fast float %1610, %1536
  %1612 = fadd fast float %1611, %1609
  %1613 = fmul fast float %1612, %1536
  %1614 = fmul fast float %1607, 2.000000e+00
  %1615 = fsub fast float 1.000000e+00, %1614
  %1616 = fmul fast float %1615, %1537
  %1617 = fadd fast float %1616, %1614
  %1618 = fmul fast float %1617, %1537
  %1619 = fmul fast float %1608, 2.000000e+00
  %1620 = fsub fast float 1.000000e+00, %1619
  %1621 = fmul fast float %1620, %1538
  %1622 = fadd fast float %1621, %1619
  %1623 = fmul fast float %1622, %1538
  br label %1624

; <label>:1624                                    ; preds = %1596, %1594, %1581, %1551, %1535
  %1625 = phi float [ %1536, %1535 ], [ %1613, %1596 ], [ %1536, %1594 ], [ %1591, %1581 ], [ %1561, %1551 ]
  %1626 = phi float [ %1537, %1535 ], [ %1618, %1596 ], [ %1537, %1594 ], [ %1592, %1581 ], [ %1562, %1551 ]
  %1627 = phi float [ %1538, %1535 ], [ %1623, %1596 ], [ %1538, %1594 ], [ %1593, %1581 ], [ %1563, %1551 ]
  %1628 = phi float [ %1539, %1535 ], [ %1539, %1596 ], [ %1539, %1594 ], [ %1539, %1581 ], [ %1573, %1551 ]
  %1629 = phi float [ %1540, %1535 ], [ %1540, %1596 ], [ %1540, %1594 ], [ %1540, %1581 ], [ %1574, %1551 ]
  %1630 = phi float [ %1541, %1535 ], [ %1541, %1596 ], [ %1541, %1594 ], [ %1541, %1581 ], [ %1575, %1551 ]
  %1631 = phi float [ %946, %1535 ], [ %946, %1596 ], [ %946, %1594 ], [ %946, %1581 ], [ %1566, %1551 ]
  %1632 = phi float [ %951, %1535 ], [ %951, %1596 ], [ %951, %1594 ], [ %951, %1581 ], [ %1578, %1551 ]
  %1633 = and i32 %1543, 12
  %1634 = icmp eq i32 %1633, 12
  br i1 %1634, label %1717, label %1635

; <label>:1635                                    ; preds = %1624
  %1636 = and i32 %1543, 2097184
  %1637 = icmp eq i32 %1636, 2097184
  %1638 = select i1 %1637, float %1134, float 0.000000e+00
  %1639 = and i32 %1543, 4194336
  %1640 = icmp eq i32 %1639, 4194336
  %1641 = select i1 %1640, float %1134, float 0.000000e+00
  %1642 = and i32 %1543, 8388640
  %1643 = icmp eq i32 %1642, 8388640
  %1644 = select i1 %1643, float %1134, float 0.000000e+00
  %1645 = and i32 %1543, 32768
  %1646 = icmp ne i32 %1645, 0
  %1647 = select i1 %1646, float %1134, float 0.000000e+00
  %1648 = icmp eq i32 %1633, 0
  br i1 %1648, label %1649, label %1665

; <label>:1649                                    ; preds = %1635
  %1650 = fsub fast float %1435, %938
  %1651 = fsub fast float %1436, %939
  %1652 = fmul fast float %1638, %1650
  %1653 = fmul fast float %1638, %1651
  %1654 = fadd fast float %1652, %938
  %1655 = fadd fast float %1653, %939
  %1656 = fsub fast float %1437, %949
  %1657 = fmul fast float %1641, %1656
  %1658 = fadd fast float %1657, %949
  %1659 = fsub fast float %1434, %948
  %1660 = fmul fast float %1644, %1659
  %1661 = fadd fast float %1660, %948
  %1662 = fsub fast float %1513, %950
  %1663 = fmul fast float %1647, %1662
  %1664 = fadd fast float %1663, %950
  br label %1717

; <label>:1665                                    ; preds = %1635
  %1666 = icmp eq i32 %1633, 4
  br i1 %1666, label %1667, label %1701

; <label>:1667                                    ; preds = %1665
  %1668 = fmul fast float %1638, %1435
  %1669 = fmul fast float %1638, %1436
  %1670 = fadd fast float %1668, %938
  %1671 = fadd fast float %1669, %939
  %1672 = call float @dx.op.binary.f32(i32 36, float %949, float %1437)  ; FMin(a,b)
  %1673 = fsub fast float %1672, %949
  %1674 = fmul fast float %1673, %1641
  %1675 = fadd fast float %1674, %949
  %1676 = fadd fast float %1434, %948
  %1677 = fmul fast float %1676, 0x3FF337FAE0000000
  %1678 = fmul fast float %948, %948
  %1679 = fmul fast float %1434, %1434
  %1680 = fadd fast float %1679, %1678
  %1681 = fmul fast float %1680, 0x3FE5152B00000000
  %1682 = fmul fast float %948, 0xBFCC1F85E0000000
  %1683 = fmul fast float %1682, %1434
  %1684 = fadd fast float %1683, 0xBFE1363700000000
  %1685 = fadd fast float %1684, %1677
  %1686 = fsub fast float %1685, %1681
  %1687 = fmul fast float %1676, 0x3FBA6F0D00000000
  %1688 = fmul fast float %1680, 0x3FD0432880000000
  %1689 = fmul fast float %948, 0xBFEF110800000000
  %1690 = fmul fast float %1689, %1434
  %1691 = fadd fast float %1690, 1.000000e+00
  %1692 = fsub fast float %1691, %1687
  %1693 = fadd fast float %1692, %1688
  %1694 = fdiv fast float %1686, %1693
  %1695 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1696 = fsub fast float %1695, %948
  %1697 = fmul fast float %1696, %1644
  %1698 = fadd fast float %1697, %948
  %1699 = fmul fast float %1647, %1513
  %1700 = fadd fast float %1699, %950
  br label %1717

; <label>:1701                                    ; preds = %1665
  %1702 = icmp eq i32 %1633, 8
  br i1 %1702, label %1703, label %1717

; <label>:1703                                    ; preds = %1701
  %1704 = fmul fast float %1638, %1435
  %1705 = fmul fast float %1638, %1436
  %1706 = fadd fast float %1704, %938
  %1707 = fadd fast float %1705, %939
  %1708 = call float @dx.op.binary.f32(i32 36, float %949, float %1437)  ; FMin(a,b)
  %1709 = fsub fast float %1708, %949
  %1710 = fmul fast float %1709, %1641
  %1711 = fadd fast float %1710, %949
  %1712 = fsub fast float %1434, %948
  %1713 = fmul fast float %1644, %1712
  %1714 = fadd fast float %1713, %948
  %1715 = fmul fast float %1647, %1513
  %1716 = fadd fast float %1715, %950
  br label %1717

; <label>:1717                                    ; preds = %1703, %1701, %1667, %1649, %1624, %1133, %952, %937
  %1718 = phi float [ %938, %1624 ], [ %938, %1133 ], [ %938, %937 ], [ %1706, %1703 ], [ %938, %1701 ], [ %1670, %1667 ], [ %1654, %1649 ], [ %938, %952 ]
  %1719 = phi float [ %939, %1624 ], [ %939, %1133 ], [ %939, %937 ], [ %1707, %1703 ], [ %939, %1701 ], [ %1671, %1667 ], [ %1655, %1649 ], [ %939, %952 ]
  %1720 = phi float [ %1625, %1624 ], [ %940, %1133 ], [ %940, %937 ], [ %1625, %1703 ], [ %1625, %1701 ], [ %1625, %1667 ], [ %1625, %1649 ], [ %940, %952 ]
  %1721 = phi float [ %1626, %1624 ], [ %941, %1133 ], [ %941, %937 ], [ %1626, %1703 ], [ %1626, %1701 ], [ %1626, %1667 ], [ %1626, %1649 ], [ %941, %952 ]
  %1722 = phi float [ %1627, %1624 ], [ %942, %1133 ], [ %942, %937 ], [ %1627, %1703 ], [ %1627, %1701 ], [ %1627, %1667 ], [ %1627, %1649 ], [ %942, %952 ]
  %1723 = phi float [ %1628, %1624 ], [ %943, %1133 ], [ %943, %937 ], [ %1628, %1703 ], [ %1628, %1701 ], [ %1628, %1667 ], [ %1628, %1649 ], [ %943, %952 ]
  %1724 = phi float [ %1629, %1624 ], [ %944, %1133 ], [ %944, %937 ], [ %1629, %1703 ], [ %1629, %1701 ], [ %1629, %1667 ], [ %1629, %1649 ], [ %944, %952 ]
  %1725 = phi float [ %1630, %1624 ], [ %945, %1133 ], [ %945, %937 ], [ %1630, %1703 ], [ %1630, %1701 ], [ %1630, %1667 ], [ %1630, %1649 ], [ %945, %952 ]
  %1726 = phi float [ %1631, %1624 ], [ %946, %1133 ], [ %946, %937 ], [ %1631, %1703 ], [ %1631, %1701 ], [ %1631, %1667 ], [ %1631, %1649 ], [ %946, %952 ]
  %1727 = phi float [ %948, %1624 ], [ %948, %1133 ], [ %948, %937 ], [ %1714, %1703 ], [ %948, %1701 ], [ %1698, %1667 ], [ %1661, %1649 ], [ %948, %952 ]
  %1728 = phi float [ %949, %1624 ], [ %949, %1133 ], [ %949, %937 ], [ %1711, %1703 ], [ %949, %1701 ], [ %1675, %1667 ], [ %1658, %1649 ], [ %949, %952 ]
  %1729 = phi float [ %950, %1624 ], [ %950, %1133 ], [ %950, %937 ], [ %1716, %1703 ], [ %950, %1701 ], [ %1700, %1667 ], [ %1664, %1649 ], [ %950, %952 ]
  %1730 = phi float [ %1632, %1624 ], [ %951, %1133 ], [ %951, %937 ], [ %1632, %1703 ], [ %1632, %1701 ], [ %1632, %1667 ], [ %1632, %1649 ], [ %951, %952 ]
  br i1 %388, label %2496, label %1731

; <label>:1731                                    ; preds = %1717
  %1732 = icmp ult i32 %441, 3
  %1733 = add i32 %32, 56
  %1734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.i32 %1734, 0
  %1736 = add i32 %32, 60
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = or i32 %1738, %1735
  %1740 = icmp eq i32 %1739, 0
  br i1 %1740, label %2496, label %1741

; <label>:1741                                    ; preds = %1731
  %1742 = and i32 %1735, 262144
  %1743 = icmp ne i32 %1742, 0
  %1744 = select i1 %1743, float %37, float 1.000000e+00
  %1745 = select i1 %1743, float %38, float 0.000000e+00
  %1746 = select i1 %1743, float %39, float 0.000000e+00
  %1747 = select i1 %1743, float %40, float 1.000000e+00
  %1748 = select i1 %1743, float %41, float %64
  %1749 = select i1 %1743, float %42, float %65
  %1750 = add i32 %32, 316
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = lshr i32 %1752, 16
  %1754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1753)  ; LegacyF16ToF32(value)
  %1755 = fmul fast float %1754, 0x3F50624DE0000000
  %1756 = add i32 %32, 120
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = lshr i32 %1758, 16
  %1760 = and i32 %1759, 255
  %1761 = lshr i32 %1758, 24
  %1762 = add i32 %32, 324
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = and i32 %1764, 65535
  %1766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1765)  ; LegacyF16ToF32(value)
  %1767 = lshr i32 %1764, 16
  %1768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1767)  ; LegacyF16ToF32(value)
  %1769 = add i32 %32, 64
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = lshr i32 %1771, 22
  %1773 = shl nuw nsw i32 %1772, 5
  %1774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1773)  ; LegacyF16ToF32(value)
  %1775 = shl i32 %1771, 4
  %1776 = and i32 %1775, 32752
  %1777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1776)  ; LegacyF16ToF32(value)
  %1778 = lshr i32 %1771, 7
  %1779 = and i32 %1778, 32752
  %1780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1779)  ; LegacyF16ToF32(value)
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 3
  %1783 = fmul fast float %1782, 1.000000e+03
  %1784 = fmul fast float %338, %1783
  %1785 = call float @dx.op.unary.f32(i32 22, float %1784)  ; Frc(value)
  %1786 = fadd fast float %1785, %328
  %1787 = fmul fast float %339, %1783
  %1788 = call float @dx.op.unary.f32(i32 22, float %1787)  ; Frc(value)
  %1789 = fadd fast float %1788, %330
  %1790 = fmul fast float %1755, %1783
  %1791 = call float @dx.op.unary.f32(i32 22, float %1790)  ; Frc(value)
  %1792 = fmul fast float %1791, 0x401921FB60000000
  %1793 = fadd fast float %1792, %1774
  %1794 = call float @dx.op.unary.f32(i32 13, float %1793)  ; Sin(value)
  %1795 = call float @dx.op.unary.f32(i32 12, float %1793)  ; Cos(value)
  %1796 = fsub fast float -0.000000e+00, %1794
  %1797 = fadd fast float %1748, -5.000000e-01
  %1798 = fadd fast float %1749, -5.000000e-01
  %1799 = fmul fast float %1766, %1797
  %1800 = fmul fast float %1768, %1798
  %1801 = fadd fast float %1799, 5.000000e-01
  %1802 = fadd fast float %1800, 5.000000e-01
  %1803 = fmul fast float %1777, %1801
  %1804 = fmul fast float %1780, %1802
  %1805 = fmul fast float %1795, %1803
  %1806 = call float @dx.op.tertiary.f32(i32 46, float %1796, float %1804, float %1805)  ; FMad(a,b,c)
  %1807 = fmul fast float %1794, %1803
  %1808 = call float @dx.op.tertiary.f32(i32 46, float %1795, float %1804, float %1807)  ; FMad(a,b,c)
  %1809 = fadd fast float %1786, %1806
  %1810 = fadd fast float %1789, %1808
  %1811 = icmp ugt i32 %1760, 1
  %1812 = icmp ugt i32 %1758, 33554431
  %1813 = or i1 %1812, %1811
  br i1 %1813, label %1814, label %1839

; <label>:1814                                    ; preds = %1741
  %1815 = add i32 %32, 260
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = lshr i32 %1817, 16
  %1819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1818)  ; LegacyF16ToF32(value)
  %1820 = fmul fast float %1782, %1819
  %1821 = call float @dx.op.unary.f32(i32 22, float %1820)  ; Frc(value)
  %1822 = mul nuw nsw i32 %1760, %1761
  %1823 = uitofp i32 %1822 to float
  %1824 = fmul fast float %1821, %1823
  %1825 = call float @dx.op.unary.f32(i32 27, float %1824)  ; Round_ni(value)
  %1826 = fptoui float %1825 to i32
  %1827 = urem i32 %1826, %1760
  %1828 = udiv i32 %1826, %1761
  %1829 = call float @dx.op.unary.f32(i32 22, float %1809)  ; Frc(value)
  %1830 = call float @dx.op.unary.f32(i32 22, float %1810)  ; Frc(value)
  %1831 = uitofp i32 %1827 to float
  %1832 = uitofp i32 %1828 to float
  %1833 = fadd fast float %1829, %1831
  %1834 = fadd fast float %1830, %1832
  %1835 = uitofp i32 %1760 to float
  %1836 = uitofp i32 %1761 to float
  %1837 = fdiv fast float %1833, %1835
  %1838 = fdiv fast float %1834, %1836
  br label %1839

; <label>:1839                                    ; preds = %1814, %1741
  %1840 = phi float [ %1837, %1814 ], [ %1809, %1741 ]
  %1841 = phi float [ %1838, %1814 ], [ %1810, %1741 ]
  %1842 = and i32 %1735, 256
  %1843 = icmp eq i32 %1842, 0
  br i1 %1843, label %1890, label %1844

; <label>:1844                                    ; preds = %1839
  %1845 = add i32 %32, 432
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1845, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = add i32 %1847, 0
  %1849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1850 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1849, %dx.types.Handle %73, float %1840, float %1841, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1851 = extractvalue %dx.types.ResRet.f32 %1850, 0
  %1852 = add i32 %32, 132
  %1853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.i32 %1853, 0
  %1855 = shl i32 %1854, 4
  %1856 = and i32 %1855, 32752
  %1857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1856)  ; LegacyF16ToF32(value)
  %1858 = lshr i32 %1854, 7
  %1859 = and i32 %1858, 32752
  %1860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1859)  ; LegacyF16ToF32(value)
  %1861 = fsub fast float 1.000000e+00, %437
  %1862 = call float @dx.op.binary.f32(i32 35, float %1861, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1863 = bitcast float %437 to i32
  %1864 = sitofp i32 %1863 to float
  %1865 = fadd fast float %1864, 0xC1CFBF8940000000
  %1866 = fmul fast float %1860, %1865
  %1867 = fadd fast float %1866, 0x41CFBF8940000000
  %1868 = fptosi float %1867 to i32
  %1869 = bitcast i32 %1868 to float
  %1870 = bitcast float %1862 to i32
  %1871 = sitofp i32 %1870 to float
  %1872 = fadd fast float %1871, 0xC1CFBF8940000000
  %1873 = fmul fast float %1872, %1860
  %1874 = fadd fast float %1873, 0x41CFBF8940000000
  %1875 = fptosi float %1874 to i32
  %1876 = bitcast i32 %1875 to float
  %1877 = fmul fast float %1869, %1857
  %1878 = fmul fast float %1876, %1857
  %1879 = fsub fast float %1862, %1877
  %1880 = fadd fast float %1878, %1862
  %1881 = call float @dx.op.unary.f32(i32 7, float %1879)  ; Saturate(value)
  %1882 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  %1883 = fsub fast float %1851, %1881
  %1884 = fsub fast float %1882, %1881
  %1885 = bitcast float %1884 to i32
  %1886 = sub nsw i32 2129859010, %1885
  %1887 = bitcast i32 %1886 to float
  %1888 = fmul fast float %1887, %1883
  %1889 = call float @dx.op.unary.f32(i32 7, float %1888)  ; Saturate(value)
  br label %1890

; <label>:1890                                    ; preds = %1844, %1839
  %1891 = phi float [ %1889, %1844 ], [ %437, %1839 ]
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = and i32 %1893, 128
  %1895 = icmp eq i32 %1894, 0
  br i1 %1895, label %1912, label %1896

; <label>:1896                                    ; preds = %1890
  %1897 = add i32 %32, 416
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = add i32 %1899, 0
  %1901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1902 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1901, %dx.types.Handle %73, float %1840, float %1841, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1903 = extractvalue %dx.types.ResRet.f32 %1902, 0
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = and i32 %1905, 524288
  %1907 = icmp ne i32 %1906, 0
  %1908 = fcmp fast ogt float %1903, 0x3FE0101020000000
  %1909 = select i1 %1908, float 1.000000e+00, float 0.000000e+00
  %1910 = select i1 %1907, float %1909, float %1903
  %1911 = fmul fast float %1910, %1891
  br label %1912

; <label>:1912                                    ; preds = %1896, %1890
  %1913 = phi float [ %1911, %1896 ], [ %1891, %1890 ]
  %1914 = fcmp fast ult float %1913, 0x3F70101020000000
  br i1 %1914, label %2496, label %1915

; <label>:1915                                    ; preds = %1912
  %1916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = and i32 %1917, 16
  %1919 = icmp eq i32 %1918, 0
  br i1 %1919, label %2118, label %1920

; <label>:1920                                    ; preds = %1915
  %1921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1922 = extractvalue %dx.types.ResRet.i32 %1921, 0
  %1923 = add i32 %32, 368
  %1924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.i32 %1924, 0
  %1926 = add i32 %1925, 0
  %1927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1926, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1928 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1927, %dx.types.Handle %72, float %1840, float %1841, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1929 = extractvalue %dx.types.ResRet.f32 %1928, 0
  %1930 = extractvalue %dx.types.ResRet.f32 %1928, 1
  %1931 = extractvalue %dx.types.ResRet.f32 %1928, 2
  %1932 = extractvalue %dx.types.ResRet.f32 %1928, 3
  %1933 = and i32 %1922, 255
  %1934 = uitofp i32 %1933 to float
  %1935 = lshr i32 %1922, 8
  %1936 = and i32 %1935, 255
  %1937 = uitofp i32 %1936 to float
  %1938 = fmul fast float %1932, %1934
  %1939 = fadd fast float %1938, %1937
  %1940 = fmul fast float %1939, 0x3F70101000000000
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = and i32 %1942, 512
  %1944 = icmp eq i32 %1943, 0
  br i1 %1944, label %1953, label %1945

; <label>:1945                                    ; preds = %1920
  %1946 = add i32 %32, 448
  %1947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.i32 %1947, 0
  %1949 = add i32 %1948, 0
  %1950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1949, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1951 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1950, %dx.types.Handle %73, float %1840, float %1841, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1952 = extractvalue %dx.types.ResRet.f32 %1951, 0
  br label %1953

; <label>:1953                                    ; preds = %1945, %1920
  %1954 = phi float [ %1952, %1945 ], [ 1.000000e+00, %1920 ]
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = and i32 %1956, 33554432
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %2065, label %1959

; <label>:1959                                    ; preds = %1953
  %1960 = add i32 %32, 256
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = and i32 %1962, 65535
  %1964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1963)  ; LegacyF16ToF32(value)
  %1965 = lshr i32 %1962, 16
  %1966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1965)  ; LegacyF16ToF32(value)
  %1967 = add i32 %32, 260
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = and i32 %1969, 65535
  %1971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1970)  ; LegacyF16ToF32(value)
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = lshr i32 %1973, 24
  %1975 = uitofp i32 %1974 to float
  %1976 = fmul fast float %1975, 0x3F70101020000000
  %1977 = and i32 %1973, 255
  %1978 = uitofp i32 %1977 to float
  %1979 = fmul fast float %1978, 0x3F70101020000000
  %1980 = lshr i32 %1973, 8
  %1981 = and i32 %1980, 255
  %1982 = uitofp i32 %1981 to float
  %1983 = fmul fast float %1982, 0x3F70101020000000
  %1984 = lshr i32 %1973, 16
  %1985 = and i32 %1984, 255
  %1986 = uitofp i32 %1985 to float
  %1987 = fmul fast float %1986, 0x3F70101020000000
  %1988 = add i32 %32, 252
  %1989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.i32 %1989, 0
  %1991 = lshr i32 %1990, 24
  %1992 = uitofp i32 %1991 to float
  %1993 = fmul fast float %1992, 0x3F70101020000000
  %1994 = and i32 %1990, 255
  %1995 = uitofp i32 %1994 to float
  %1996 = fmul fast float %1995, 0x3F70101020000000
  %1997 = lshr i32 %1990, 8
  %1998 = and i32 %1997, 255
  %1999 = uitofp i32 %1998 to float
  %2000 = fmul fast float %1999, 0x3F70101020000000
  %2001 = lshr i32 %1990, 16
  %2002 = and i32 %2001, 255
  %2003 = uitofp i32 %2002 to float
  %2004 = fmul fast float %2003, 0x3F70101020000000
  %2005 = bitcast float %1929 to i32
  %2006 = ashr i32 %2005, 1
  %2007 = sub nsw i32 1597463174, %2006
  %2008 = bitcast i32 %2007 to float
  %2009 = fmul fast float %1929, 5.000000e-01
  %2010 = fmul fast float %2008, %2008
  %2011 = fmul fast float %2010, %2009
  %2012 = fsub fast float 1.500000e+00, %2011
  %2013 = fmul fast float %2008, %1929
  %2014 = fmul fast float %2013, %2012
  %2015 = bitcast float %1930 to i32
  %2016 = ashr i32 %2015, 1
  %2017 = sub nsw i32 1597463174, %2016
  %2018 = bitcast i32 %2017 to float
  %2019 = fmul fast float %1930, 5.000000e-01
  %2020 = fmul fast float %2018, %2018
  %2021 = fmul fast float %2020, %2019
  %2022 = fsub fast float 1.500000e+00, %2021
  %2023 = fmul fast float %2018, %1930
  %2024 = fmul fast float %2023, %2022
  %2025 = bitcast float %1931 to i32
  %2026 = ashr i32 %2025, 1
  %2027 = sub nsw i32 1597463174, %2026
  %2028 = bitcast i32 %2027 to float
  %2029 = fmul fast float %1931, 5.000000e-01
  %2030 = fmul fast float %2028, %2028
  %2031 = fmul fast float %2030, %2029
  %2032 = fsub fast float 1.500000e+00, %2031
  %2033 = fmul fast float %2028, %1931
  %2034 = fmul fast float %2033, %2032
  %2035 = fsub fast float %2014, %1996
  %2036 = fsub fast float %2024, %2000
  %2037 = fsub fast float %2034, %2004
  %2038 = fmul fast float %2035, %1964
  %2039 = fmul fast float %2036, %1966
  %2040 = fmul fast float %2037, %1971
  %2041 = fadd fast float %2038, %1979
  %2042 = fadd fast float %2039, %1983
  %2043 = fadd fast float %2040, %1987
  %2044 = call float @dx.op.unary.f32(i32 7, float %2041)  ; Saturate(value)
  %2045 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2046 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  %2047 = fmul fast float %2044, %2044
  %2048 = fmul fast float %2045, %2045
  %2049 = fmul fast float %2046, %2046
  %2050 = fsub fast float %2047, %1929
  %2051 = fsub fast float %2048, %1930
  %2052 = fsub fast float %2049, %1931
  %2053 = fmul fast float %2050, %1954
  %2054 = fmul fast float %2051, %1954
  %2055 = fmul fast float %2052, %1954
  %2056 = fadd fast float %2053, %1929
  %2057 = fadd fast float %2054, %1930
  %2058 = fadd fast float %2055, %1931
  %2059 = fadd fast float %1976, %1940
  %2060 = fsub fast float %2059, %1993
  %2061 = call float @dx.op.unary.f32(i32 7, float %2060)  ; Saturate(value)
  %2062 = fsub fast float %2061, %1940
  %2063 = fmul fast float %2062, %1954
  %2064 = fadd fast float %2063, %1940
  br label %2118

; <label>:2065                                    ; preds = %1953
  %2066 = and i32 %1956, 134217728
  %2067 = icmp eq i32 %2066, 0
  br i1 %2067, label %2102, label %2068

; <label>:2068                                    ; preds = %2065
  %2069 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %2070 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %2071 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %2072 = fadd fast float %2069, -5.000000e-01
  %2073 = fadd fast float %2070, -5.000000e-01
  %2074 = fadd fast float %2071, -5.000000e-01
  %2075 = fmul fast float %2072, %1954
  %2076 = fmul fast float %2073, %1954
  %2077 = fmul fast float %2074, %1954
  %2078 = fadd fast float %2075, 5.000000e-01
  %2079 = fadd fast float %2076, 5.000000e-01
  %2080 = fadd fast float %2077, 5.000000e-01
  %2081 = call float @dx.op.unary.f32(i32 24, float %1929)  ; Sqrt(value)
  %2082 = call float @dx.op.unary.f32(i32 24, float %1930)  ; Sqrt(value)
  %2083 = call float @dx.op.unary.f32(i32 24, float %1931)  ; Sqrt(value)
  %2084 = fmul fast float %2078, 2.000000e+00
  %2085 = fsub fast float 1.000000e+00, %2084
  %2086 = fmul fast float %2085, %2081
  %2087 = fadd fast float %2086, %2084
  %2088 = fmul fast float %2087, %2081
  %2089 = fmul fast float %2079, 2.000000e+00
  %2090 = fsub fast float 1.000000e+00, %2089
  %2091 = fmul fast float %2090, %2082
  %2092 = fadd fast float %2091, %2089
  %2093 = fmul fast float %2092, %2082
  %2094 = fmul fast float %2080, 2.000000e+00
  %2095 = fsub fast float 1.000000e+00, %2094
  %2096 = fmul fast float %2095, %2083
  %2097 = fadd fast float %2096, %2094
  %2098 = fmul fast float %2097, %2083
  %2099 = fmul fast float %2088, %2088
  %2100 = fmul fast float %2093, %2093
  %2101 = fmul fast float %2098, %2098
  br label %2118

; <label>:2102                                    ; preds = %2065
  %2103 = fmul fast float %315, %315
  %2104 = fmul fast float %319, %319
  %2105 = fmul fast float %323, %323
  %2106 = fadd fast float %2103, -1.000000e+00
  %2107 = fadd fast float %2104, -1.000000e+00
  %2108 = fadd fast float %2105, -1.000000e+00
  %2109 = fmul fast float %1954, %2106
  %2110 = fmul fast float %1954, %2107
  %2111 = fmul fast float %1954, %2108
  %2112 = fadd fast float %2109, 1.000000e+00
  %2113 = fadd fast float %2110, 1.000000e+00
  %2114 = fadd fast float %2111, 1.000000e+00
  %2115 = fmul fast float %2112, %1929
  %2116 = fmul fast float %2113, %1930
  %2117 = fmul fast float %2114, %1931
  br label %2118

; <label>:2118                                    ; preds = %2102, %2068, %1959, %1915
  %2119 = phi float [ %2064, %1959 ], [ %1940, %2068 ], [ %1940, %2102 ], [ 0x3FA23C0BE0000000, %1915 ]
  %2120 = phi float [ %2056, %1959 ], [ %2099, %2068 ], [ %2115, %2102 ], [ 1.000000e+00, %1915 ]
  %2121 = phi float [ %2057, %1959 ], [ %2100, %2068 ], [ %2116, %2102 ], [ 1.000000e+00, %1915 ]
  %2122 = phi float [ %2058, %1959 ], [ %2101, %2068 ], [ %2117, %2102 ], [ 1.000000e+00, %1915 ]
  %2123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2124 = extractvalue %dx.types.CBufRet.i32 %2123, 1
  %2125 = and i32 %2124, 1
  %2126 = icmp ne i32 %2125, 0
  %2127 = add i32 %32, 356
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = and i32 %2129, 32
  %2131 = icmp ne i32 %2130, 0
  %2132 = and i1 %2126, %2131
  %2133 = select i1 %2132, float 1.000000e+00, float %2120
  %2134 = select i1 %2132, float 0x3FD3333340000000, float %2121
  %2135 = select i1 %2132, float 0x3FD3333340000000, float %2122
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = and i32 %2137, 32
  %2139 = icmp eq i32 %2138, 0
  br i1 %2139, label %2212, label %2140

; <label>:2140                                    ; preds = %2118
  %2141 = add i32 %32, 124
  %2142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2141, i32 undef)  ; BufferLoad(srv,index,wot)
  %2143 = extractvalue %dx.types.ResRet.i32 %2142, 0
  %2144 = add i32 %32, 384
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2144, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = add i32 %2146, 0
  %2148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2149 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2148, %dx.types.Handle %72, float %1840, float %1841, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2150 = extractvalue %dx.types.ResRet.f32 %2149, 0
  %2151 = extractvalue %dx.types.ResRet.f32 %2149, 1
  %2152 = extractvalue %dx.types.ResRet.f32 %2149, 2
  %2153 = extractvalue %dx.types.ResRet.f32 %2149, 3
  %2154 = and i32 %2143, 255
  %2155 = uitofp i32 %2154 to float
  %2156 = lshr i32 %2143, 8
  %2157 = and i32 %2156, 255
  %2158 = uitofp i32 %2157 to float
  %2159 = lshr i32 %2143, 16
  %2160 = and i32 %2159, 255
  %2161 = uitofp i32 %2160 to float
  %2162 = fmul fast float %2161, 0x3F70101000000000
  %2163 = fmul fast float %2150, %2155
  %2164 = fadd fast float %2163, %2158
  %2165 = fmul fast float %2164, 0x3F70101000000000
  %2166 = fadd fast float %2151, -5.000000e-01
  %2167 = fadd fast float %2153, -5.000000e-01
  %2168 = fmul fast float %2166, %2162
  %2169 = fmul fast float %2167, %2162
  %2170 = fadd fast float %2168, 5.000000e-01
  %2171 = fadd fast float %2169, 5.000000e-01
  %2172 = fmul fast float %2170, 2.000000e+00
  %2173 = fadd fast float %2172, -1.000000e+00
  %2174 = fmul fast float %2171, 2.000000e+00
  %2175 = fadd fast float %2174, -1.000000e+00
  %2176 = fadd fast float %2173, %2175
  %2177 = fmul fast float %2176, 5.000000e-01
  %2178 = fsub fast float %2173, %2175
  %2179 = fmul fast float %2178, 5.000000e-01
  %2180 = call float @dx.op.unary.f32(i32 6, float %2177)  ; FAbs(value)
  %2181 = fsub fast float 1.000000e+00, %2180
  %2182 = call float @dx.op.unary.f32(i32 6, float %2179)  ; FAbs(value)
  %2183 = fsub fast float %2181, %2182
  %2184 = call float @dx.op.dot3.f32(i32 55, float %2177, float %2179, float %2183, float %2177, float %2179, float %2183)  ; Dot3(ax,ay,az,bx,by,bz)
  %2185 = call float @dx.op.unary.f32(i32 25, float %2184)  ; Rsqrt(value)
  %2186 = fmul fast float %2177, %2185
  %2187 = fmul fast float %2179, %2185
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = and i32 %2189, 67108864
  %2191 = icmp eq i32 %2190, 0
  br i1 %2191, label %2208, label %2192

; <label>:2192                                    ; preds = %2140
  %2193 = add i32 %32, 312
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = and i32 %2195, 65535
  %2197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2196)  ; LegacyF16ToF32(value)
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 65535
  %2201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2200)  ; LegacyF16ToF32(value)
  %2202 = lshr i32 %2195, 16
  %2203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2202)  ; LegacyF16ToF32(value)
  %2204 = fsub fast float %2165, %2203
  %2205 = fmul fast float %2204, %2197
  %2206 = fadd fast float %2205, %2201
  %2207 = call float @dx.op.unary.f32(i32 7, float %2206)  ; Saturate(value)
  br label %2208

; <label>:2208                                    ; preds = %2192, %2140
  %2209 = phi float [ %2207, %2192 ], [ %2165, %2140 ]
  %2210 = call float @dx.op.dot2.f32(i32 54, float %2186, float %2187, float %1744, float %1745)  ; Dot2(ax,ay,bx,by)
  %2211 = call float @dx.op.dot2.f32(i32 54, float %2186, float %2187, float %1746, float %1747)  ; Dot2(ax,ay,bx,by)
  br label %2212

; <label>:2212                                    ; preds = %2208, %2118
  %2213 = phi float [ %2209, %2208 ], [ 0x3FD6666660000000, %2118 ]
  %2214 = phi float [ %2210, %2208 ], [ 0.000000e+00, %2118 ]
  %2215 = phi float [ %2211, %2208 ], [ 0.000000e+00, %2118 ]
  %2216 = phi float [ %2152, %2208 ], [ 1.000000e+00, %2118 ]
  %2217 = add i32 %32, 192
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = lshr i32 %2219, 22
  %2221 = shl nuw nsw i32 %2220, 5
  %2222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2221)  ; LegacyF16ToF32(value)
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = and i32 %2224, 64
  %2226 = icmp eq i32 %2225, 0
  br i1 %2226, label %2260, label %2227

; <label>:2227                                    ; preds = %2212
  %2228 = add i32 %32, 400
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = add i32 %2230, 0
  %2232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = and i32 %2234, 131072
  %2236 = icmp eq i32 %2235, 0
  %2237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2232, %dx.types.Handle %72, float %1840, float %1841, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2238 = extractvalue %dx.types.ResRet.f32 %2237, 0
  %2239 = extractvalue %dx.types.ResRet.f32 %2237, 1
  %2240 = extractvalue %dx.types.ResRet.f32 %2237, 2
  %2241 = fmul fast float %2238, %303
  %2242 = fmul fast float %2239, %306
  %2243 = fmul fast float %2240, %309
  br i1 %2236, label %2250, label %2244

; <label>:2244                                    ; preds = %2227
  %2245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.f32 %2245, 0
  %2247 = fmul fast float %2246, %2241
  %2248 = fmul fast float %2246, %2242
  %2249 = fmul fast float %2246, %2243
  br label %2250

; <label>:2250                                    ; preds = %2244, %2227
  %2251 = phi float [ %2247, %2244 ], [ %2241, %2227 ]
  %2252 = phi float [ %2248, %2244 ], [ %2242, %2227 ]
  %2253 = phi float [ %2249, %2244 ], [ %2243, %2227 ]
  %2254 = fmul fast float %2251, %2222
  %2255 = select i1 %202, float %2254, float %2251
  %2256 = call float @dx.op.dot3.f32(i32 55, float %2255, float %2252, float %2253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2257 = select i1 %202, float 0.000000e+00, float %2251
  %2258 = select i1 %202, float %2256, float %2252
  %2259 = select i1 %202, float 0.000000e+00, float %2253
  br label %2260

; <label>:2260                                    ; preds = %2250, %2212
  %2261 = phi float [ %2257, %2250 ], [ 0.000000e+00, %2212 ]
  %2262 = phi float [ %2258, %2250 ], [ 0.000000e+00, %2212 ]
  %2263 = phi float [ %2259, %2250 ], [ 0.000000e+00, %2212 ]
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = and i32 %2265, 43008
  %2267 = icmp eq i32 %2266, 0
  br i1 %2267, label %2291, label %2268

; <label>:2268                                    ; preds = %2260
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = and i32 %2270, 32768
  %2272 = icmp eq i32 %2271, 0
  br i1 %2272, label %2291, label %2273

; <label>:2273                                    ; preds = %2268
  %2274 = and i32 %2270, 1048576
  %2275 = icmp ne i32 %2274, 0
  %2276 = add i32 %32, 464
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = add i32 %2278, 0
  %2280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2279, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2281 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2280, %dx.types.Handle %73, float %1840, float %1841, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2282 = extractvalue %dx.types.ResRet.f32 %2281, 2
  %2283 = select i1 %2275, float 1.000000e+00, float %2282
  %2284 = add i32 %32, 132
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2284, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = lshr i32 %2286, 22
  %2288 = shl nuw nsw i32 %2287, 5
  %2289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2288)  ; LegacyF16ToF32(value)
  %2290 = fmul fast float %2289, %2283
  br label %2291

; <label>:2291                                    ; preds = %2273, %2268, %2260
  %2292 = phi float [ %2290, %2273 ], [ 0.000000e+00, %2268 ], [ 0.000000e+00, %2260 ]
  %2293 = add i32 %32, 128
  %2294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2293, i32 undef)  ; BufferLoad(srv,index,wot)
  %2295 = extractvalue %dx.types.ResRet.i32 %2294, 0
  %2296 = and i32 %2295, 255
  %2297 = uitofp i32 %2296 to float
  %2298 = lshr i32 %2295, 8
  %2299 = and i32 %2298, 255
  %2300 = uitofp i32 %2299 to float
  %2301 = call float @dx.op.dot3.f32(i32 55, float %2133, float %2134, float %2135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2302 = fmul fast float %2300, %2301
  %2303 = fadd fast float %2302, %2297
  %2304 = fmul fast float %2303, 0x3F70101020000000
  %2305 = call float @dx.op.unary.f32(i32 7, float %2304)  ; Saturate(value)
  br i1 %1732, label %2306, label %2314

; <label>:2306                                    ; preds = %2291
  %2307 = fsub fast float 1.000000e+00, %1913
  %2308 = fmul fast float %2307, %1720
  %2309 = fmul fast float %2307, %1721
  %2310 = fmul fast float %2307, %1722
  %2311 = fmul fast float %2307, %1723
  %2312 = fmul fast float %2307, %1724
  %2313 = fmul fast float %2307, %1725
  br label %2314

; <label>:2314                                    ; preds = %2306, %2291
  %2315 = phi float [ %2308, %2306 ], [ %1720, %2291 ]
  %2316 = phi float [ %2309, %2306 ], [ %1721, %2291 ]
  %2317 = phi float [ %2310, %2306 ], [ %1722, %2291 ]
  %2318 = phi float [ %2311, %2306 ], [ %1723, %2291 ]
  %2319 = phi float [ %2312, %2306 ], [ %1724, %2291 ]
  %2320 = phi float [ %2313, %2306 ], [ %1725, %2291 ]
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = and i32 %2322, 3
  %2324 = icmp eq i32 %2323, 3
  br i1 %2324, label %2403, label %2325

; <label>:2325                                    ; preds = %2314
  %2326 = and i32 %2322, 16
  %2327 = icmp ne i32 %2326, 0
  %2328 = select i1 %2327, float %1913, float 0.000000e+00
  %2329 = icmp eq i32 %2323, 0
  br i1 %2329, label %2330, label %2358

; <label>:2330                                    ; preds = %2325
  %2331 = and i32 %2322, 64
  %2332 = icmp ne i32 %2331, 0
  %2333 = select i1 %2332, float %1913, float 0.000000e+00
  %2334 = fsub fast float %2133, %2315
  %2335 = fsub fast float %2134, %2316
  %2336 = fsub fast float %2135, %2317
  %2337 = fmul fast float %2328, %2334
  %2338 = fmul fast float %2328, %2335
  %2339 = fmul fast float %2328, %2336
  %2340 = fadd fast float %2337, %2315
  %2341 = fadd fast float %2338, %2316
  %2342 = fadd fast float %2339, %2317
  %2343 = fsub fast float %2119, %1726
  %2344 = fmul fast float %2328, %2343
  %2345 = fadd fast float %2344, %1726
  %2346 = fsub fast float %2261, %2318
  %2347 = fsub fast float %2262, %2319
  %2348 = fsub fast float %2263, %2320
  %2349 = fmul fast float %2333, %2346
  %2350 = fmul fast float %2333, %2347
  %2351 = fmul fast float %2333, %2348
  %2352 = fadd fast float %2349, %2318
  %2353 = fadd fast float %2350, %2319
  %2354 = fadd fast float %2351, %2320
  %2355 = fsub fast float %2305, %1730
  %2356 = fmul fast float %2328, %2355
  %2357 = fadd fast float %2356, %1730
  br label %2403

; <label>:2358                                    ; preds = %2325
  %2359 = icmp eq i32 %2323, 1
  br i1 %2359, label %2360, label %2373

; <label>:2360                                    ; preds = %2358
  %2361 = fadd fast float %2133, -1.000000e+00
  %2362 = fadd fast float %2134, -1.000000e+00
  %2363 = fadd fast float %2135, -1.000000e+00
  %2364 = fmul fast float %2328, %2361
  %2365 = fmul fast float %2328, %2362
  %2366 = fmul fast float %2328, %2363
  %2367 = fadd fast float %2364, 1.000000e+00
  %2368 = fadd fast float %2365, 1.000000e+00
  %2369 = fadd fast float %2366, 1.000000e+00
  %2370 = fmul fast float %2367, %2315
  %2371 = fmul fast float %2368, %2316
  %2372 = fmul fast float %2369, %2317
  br label %2403

; <label>:2373                                    ; preds = %2358
  %2374 = icmp eq i32 %2323, 2
  br i1 %2374, label %2375, label %2403

; <label>:2375                                    ; preds = %2373
  %2376 = call float @dx.op.unary.f32(i32 24, float %2133)  ; Sqrt(value)
  %2377 = call float @dx.op.unary.f32(i32 24, float %2134)  ; Sqrt(value)
  %2378 = call float @dx.op.unary.f32(i32 24, float %2135)  ; Sqrt(value)
  %2379 = fadd fast float %2376, -5.000000e-01
  %2380 = fadd fast float %2377, -5.000000e-01
  %2381 = fadd fast float %2378, -5.000000e-01
  %2382 = fmul fast float %2379, %2328
  %2383 = fmul fast float %2380, %2328
  %2384 = fmul fast float %2381, %2328
  %2385 = fadd fast float %2382, 5.000000e-01
  %2386 = fadd fast float %2383, 5.000000e-01
  %2387 = fadd fast float %2384, 5.000000e-01
  %2388 = fmul fast float %2385, 2.000000e+00
  %2389 = fsub fast float 1.000000e+00, %2388
  %2390 = fmul fast float %2389, %2315
  %2391 = fadd fast float %2390, %2388
  %2392 = fmul fast float %2391, %2315
  %2393 = fmul fast float %2386, 2.000000e+00
  %2394 = fsub fast float 1.000000e+00, %2393
  %2395 = fmul fast float %2394, %2316
  %2396 = fadd fast float %2395, %2393
  %2397 = fmul fast float %2396, %2316
  %2398 = fmul fast float %2387, 2.000000e+00
  %2399 = fsub fast float 1.000000e+00, %2398
  %2400 = fmul fast float %2399, %2317
  %2401 = fadd fast float %2400, %2398
  %2402 = fmul fast float %2401, %2317
  br label %2403

; <label>:2403                                    ; preds = %2375, %2373, %2360, %2330, %2314
  %2404 = phi float [ %2315, %2314 ], [ %2392, %2375 ], [ %2315, %2373 ], [ %2370, %2360 ], [ %2340, %2330 ]
  %2405 = phi float [ %2316, %2314 ], [ %2397, %2375 ], [ %2316, %2373 ], [ %2371, %2360 ], [ %2341, %2330 ]
  %2406 = phi float [ %2317, %2314 ], [ %2402, %2375 ], [ %2317, %2373 ], [ %2372, %2360 ], [ %2342, %2330 ]
  %2407 = phi float [ %2318, %2314 ], [ %2318, %2375 ], [ %2318, %2373 ], [ %2318, %2360 ], [ %2352, %2330 ]
  %2408 = phi float [ %2319, %2314 ], [ %2319, %2375 ], [ %2319, %2373 ], [ %2319, %2360 ], [ %2353, %2330 ]
  %2409 = phi float [ %2320, %2314 ], [ %2320, %2375 ], [ %2320, %2373 ], [ %2320, %2360 ], [ %2354, %2330 ]
  %2410 = phi float [ %1726, %2314 ], [ %1726, %2375 ], [ %1726, %2373 ], [ %1726, %2360 ], [ %2345, %2330 ]
  %2411 = phi float [ %1730, %2314 ], [ %1730, %2375 ], [ %1730, %2373 ], [ %1730, %2360 ], [ %2357, %2330 ]
  %2412 = and i32 %2322, 12
  %2413 = icmp eq i32 %2412, 12
  br i1 %2413, label %2496, label %2414

; <label>:2414                                    ; preds = %2403
  %2415 = and i32 %2322, 2097184
  %2416 = icmp eq i32 %2415, 2097184
  %2417 = select i1 %2416, float %1913, float 0.000000e+00
  %2418 = and i32 %2322, 4194336
  %2419 = icmp eq i32 %2418, 4194336
  %2420 = select i1 %2419, float %1913, float 0.000000e+00
  %2421 = and i32 %2322, 8388640
  %2422 = icmp eq i32 %2421, 8388640
  %2423 = select i1 %2422, float %1913, float 0.000000e+00
  %2424 = and i32 %2322, 32768
  %2425 = icmp ne i32 %2424, 0
  %2426 = select i1 %2425, float %1913, float 0.000000e+00
  %2427 = icmp eq i32 %2412, 0
  br i1 %2427, label %2428, label %2444

; <label>:2428                                    ; preds = %2414
  %2429 = fsub fast float %2214, %1718
  %2430 = fsub fast float %2215, %1719
  %2431 = fmul fast float %2417, %2429
  %2432 = fmul fast float %2417, %2430
  %2433 = fadd fast float %2431, %1718
  %2434 = fadd fast float %2432, %1719
  %2435 = fsub fast float %2216, %1728
  %2436 = fmul fast float %2420, %2435
  %2437 = fadd fast float %2436, %1728
  %2438 = fsub fast float %2213, %1727
  %2439 = fmul fast float %2423, %2438
  %2440 = fadd fast float %2439, %1727
  %2441 = fsub fast float %2292, %1729
  %2442 = fmul fast float %2426, %2441
  %2443 = fadd fast float %2442, %1729
  br label %2496

; <label>:2444                                    ; preds = %2414
  %2445 = icmp eq i32 %2412, 4
  br i1 %2445, label %2446, label %2480

; <label>:2446                                    ; preds = %2444
  %2447 = fmul fast float %2417, %2214
  %2448 = fmul fast float %2417, %2215
  %2449 = fadd fast float %2447, %1718
  %2450 = fadd fast float %2448, %1719
  %2451 = call float @dx.op.binary.f32(i32 36, float %1728, float %2216)  ; FMin(a,b)
  %2452 = fsub fast float %2451, %1728
  %2453 = fmul fast float %2452, %2420
  %2454 = fadd fast float %2453, %1728
  %2455 = fadd fast float %2213, %1727
  %2456 = fmul fast float %2455, 0x3FF337FAE0000000
  %2457 = fmul fast float %1727, %1727
  %2458 = fmul fast float %2213, %2213
  %2459 = fadd fast float %2458, %2457
  %2460 = fmul fast float %2459, 0x3FE5152B00000000
  %2461 = fmul fast float %1727, 0xBFCC1F85E0000000
  %2462 = fmul fast float %2461, %2213
  %2463 = fadd fast float %2462, 0xBFE1363700000000
  %2464 = fadd fast float %2463, %2456
  %2465 = fsub fast float %2464, %2460
  %2466 = fmul fast float %2455, 0x3FBA6F0D00000000
  %2467 = fmul fast float %2459, 0x3FD0432880000000
  %2468 = fmul fast float %1727, 0xBFEF110800000000
  %2469 = fmul fast float %2468, %2213
  %2470 = fadd fast float %2469, 1.000000e+00
  %2471 = fsub fast float %2470, %2466
  %2472 = fadd fast float %2471, %2467
  %2473 = fdiv fast float %2465, %2472
  %2474 = call float @dx.op.unary.f32(i32 7, float %2473)  ; Saturate(value)
  %2475 = fsub fast float %2474, %1727
  %2476 = fmul fast float %2475, %2423
  %2477 = fadd fast float %2476, %1727
  %2478 = fmul fast float %2426, %2292
  %2479 = fadd fast float %2478, %1729
  br label %2496

; <label>:2480                                    ; preds = %2444
  %2481 = icmp eq i32 %2412, 8
  br i1 %2481, label %2482, label %2496

; <label>:2482                                    ; preds = %2480
  %2483 = fmul fast float %2417, %2214
  %2484 = fmul fast float %2417, %2215
  %2485 = fadd fast float %2483, %1718
  %2486 = fadd fast float %2484, %1719
  %2487 = call float @dx.op.binary.f32(i32 36, float %1728, float %2216)  ; FMin(a,b)
  %2488 = fsub fast float %2487, %1728
  %2489 = fmul fast float %2488, %2420
  %2490 = fadd fast float %2489, %1728
  %2491 = fsub fast float %2213, %1727
  %2492 = fmul fast float %2423, %2491
  %2493 = fadd fast float %2492, %1727
  %2494 = fmul fast float %2426, %2292
  %2495 = fadd fast float %2494, %1729
  br label %2496

; <label>:2496                                    ; preds = %2482, %2480, %2446, %2428, %2403, %1912, %1731, %1717
  %2497 = phi float [ %1718, %2403 ], [ %1718, %1912 ], [ %1718, %1717 ], [ %2485, %2482 ], [ %1718, %2480 ], [ %2449, %2446 ], [ %2433, %2428 ], [ %1718, %1731 ]
  %2498 = phi float [ %1719, %2403 ], [ %1719, %1912 ], [ %1719, %1717 ], [ %2486, %2482 ], [ %1719, %2480 ], [ %2450, %2446 ], [ %2434, %2428 ], [ %1719, %1731 ]
  %2499 = phi float [ %2404, %2403 ], [ %1720, %1912 ], [ %1720, %1717 ], [ %2404, %2482 ], [ %2404, %2480 ], [ %2404, %2446 ], [ %2404, %2428 ], [ %1720, %1731 ]
  %2500 = phi float [ %2405, %2403 ], [ %1721, %1912 ], [ %1721, %1717 ], [ %2405, %2482 ], [ %2405, %2480 ], [ %2405, %2446 ], [ %2405, %2428 ], [ %1721, %1731 ]
  %2501 = phi float [ %2406, %2403 ], [ %1722, %1912 ], [ %1722, %1717 ], [ %2406, %2482 ], [ %2406, %2480 ], [ %2406, %2446 ], [ %2406, %2428 ], [ %1722, %1731 ]
  %2502 = phi float [ %2407, %2403 ], [ %1723, %1912 ], [ %1723, %1717 ], [ %2407, %2482 ], [ %2407, %2480 ], [ %2407, %2446 ], [ %2407, %2428 ], [ %1723, %1731 ]
  %2503 = phi float [ %2408, %2403 ], [ %1724, %1912 ], [ %1724, %1717 ], [ %2408, %2482 ], [ %2408, %2480 ], [ %2408, %2446 ], [ %2408, %2428 ], [ %1724, %1731 ]
  %2504 = phi float [ %2409, %2403 ], [ %1725, %1912 ], [ %1725, %1717 ], [ %2409, %2482 ], [ %2409, %2480 ], [ %2409, %2446 ], [ %2409, %2428 ], [ %1725, %1731 ]
  %2505 = phi float [ %2410, %2403 ], [ %1726, %1912 ], [ %1726, %1717 ], [ %2410, %2482 ], [ %2410, %2480 ], [ %2410, %2446 ], [ %2410, %2428 ], [ %1726, %1731 ]
  %2506 = phi float [ %1727, %2403 ], [ %1727, %1912 ], [ %1727, %1717 ], [ %2493, %2482 ], [ %1727, %2480 ], [ %2477, %2446 ], [ %2440, %2428 ], [ %1727, %1731 ]
  %2507 = phi float [ %1728, %2403 ], [ %1728, %1912 ], [ %1728, %1717 ], [ %2490, %2482 ], [ %1728, %2480 ], [ %2454, %2446 ], [ %2437, %2428 ], [ %1728, %1731 ]
  %2508 = phi float [ %1729, %2403 ], [ %1729, %1912 ], [ %1729, %1717 ], [ %2495, %2482 ], [ %1729, %2480 ], [ %2479, %2446 ], [ %2443, %2428 ], [ %1729, %1731 ]
  %2509 = phi float [ %2411, %2403 ], [ %1730, %1912 ], [ %1730, %1717 ], [ %2411, %2482 ], [ %2411, %2480 ], [ %2411, %2446 ], [ %2411, %2428 ], [ %1730, %1731 ]
  br i1 %390, label %3275, label %2510

; <label>:2510                                    ; preds = %2496
  %2511 = icmp ult i32 %441, 4
  %2512 = add i32 %32, 72
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = add i32 %32, 76
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = or i32 %2517, %2514
  %2519 = icmp eq i32 %2518, 0
  br i1 %2519, label %3275, label %2520

; <label>:2520                                    ; preds = %2510
  %2521 = and i32 %2514, 262144
  %2522 = icmp ne i32 %2521, 0
  %2523 = select i1 %2522, float %37, float 1.000000e+00
  %2524 = select i1 %2522, float %38, float 0.000000e+00
  %2525 = select i1 %2522, float %39, float 0.000000e+00
  %2526 = select i1 %2522, float %40, float 1.000000e+00
  %2527 = select i1 %2522, float %41, float %64
  %2528 = select i1 %2522, float %42, float %65
  %2529 = add i32 %32, 332
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = lshr i32 %2531, 16
  %2533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2532)  ; LegacyF16ToF32(value)
  %2534 = fmul fast float %2533, 0x3F50624DE0000000
  %2535 = add i32 %32, 136
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = lshr i32 %2537, 16
  %2539 = and i32 %2538, 255
  %2540 = lshr i32 %2537, 24
  %2541 = add i32 %32, 340
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = and i32 %2543, 65535
  %2545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2544)  ; LegacyF16ToF32(value)
  %2546 = lshr i32 %2543, 16
  %2547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2546)  ; LegacyF16ToF32(value)
  %2548 = add i32 %32, 80
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2561 = extractvalue %dx.types.CBufRet.f32 %2560, 3
  %2562 = fmul fast float %2561, 1.000000e+03
  %2563 = fmul fast float %380, %2562
  %2564 = call float @dx.op.unary.f32(i32 22, float %2563)  ; Frc(value)
  %2565 = fadd fast float %2564, %370
  %2566 = fmul fast float %381, %2562
  %2567 = call float @dx.op.unary.f32(i32 22, float %2566)  ; Frc(value)
  %2568 = fadd fast float %2567, %372
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
  %2594 = add i32 %32, 276
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2624 = add i32 %32, 436
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = add i32 %2626, 0
  %2628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2628, %dx.types.Handle %73, float %2619, float %2620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2630 = extractvalue %dx.types.ResRet.f32 %2629, 0
  %2631 = add i32 %32, 148
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = shl i32 %2633, 4
  %2635 = and i32 %2634, 32752
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = lshr i32 %2633, 7
  %2638 = and i32 %2637, 32752
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = fsub fast float 1.000000e+00, %436
  %2641 = call float @dx.op.binary.f32(i32 35, float %2640, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2642 = bitcast float %436 to i32
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
  %2670 = phi float [ %2668, %2623 ], [ %436, %2618 ]
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = and i32 %2672, 128
  %2674 = icmp eq i32 %2673, 0
  br i1 %2674, label %2691, label %2675

; <label>:2675                                    ; preds = %2669
  %2676 = add i32 %32, 420
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = add i32 %2678, 0
  %2680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2680, %dx.types.Handle %73, float %2619, float %2620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2682 = extractvalue %dx.types.ResRet.f32 %2681, 0
  %2683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %2693, label %3275, label %2694

; <label>:2694                                    ; preds = %2691
  %2695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2696 = extractvalue %dx.types.ResRet.i32 %2695, 0
  %2697 = and i32 %2696, 16
  %2698 = icmp eq i32 %2697, 0
  br i1 %2698, label %2897, label %2699

; <label>:2699                                    ; preds = %2694
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = add i32 %32, 372
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = add i32 %2704, 0
  %2706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2706, %dx.types.Handle %72, float %2619, float %2620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = and i32 %2721, 512
  %2723 = icmp eq i32 %2722, 0
  br i1 %2723, label %2732, label %2724

; <label>:2724                                    ; preds = %2699
  %2725 = add i32 %32, 452
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = add i32 %2727, 0
  %2729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2730 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2729, %dx.types.Handle %73, float %2619, float %2620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2731 = extractvalue %dx.types.ResRet.f32 %2730, 0
  br label %2732

; <label>:2732                                    ; preds = %2724, %2699
  %2733 = phi float [ %2731, %2724 ], [ 1.000000e+00, %2699 ]
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = and i32 %2735, 33554432
  %2737 = icmp eq i32 %2736, 0
  br i1 %2737, label %2844, label %2738

; <label>:2738                                    ; preds = %2732
  %2739 = add i32 %32, 272
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = and i32 %2741, 65535
  %2743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2742)  ; LegacyF16ToF32(value)
  %2744 = lshr i32 %2741, 16
  %2745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2744)  ; LegacyF16ToF32(value)
  %2746 = add i32 %32, 276
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = and i32 %2748, 65535
  %2750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2749)  ; LegacyF16ToF32(value)
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2767 = add i32 %32, 268
  %2768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2848 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %2849 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %2850 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
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
  %2882 = fmul fast float %357, %357
  %2883 = fmul fast float %361, %361
  %2884 = fmul fast float %365, %365
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
  %2902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2903 = extractvalue %dx.types.CBufRet.i32 %2902, 1
  %2904 = and i32 %2903, 1
  %2905 = icmp ne i32 %2904, 0
  %2906 = add i32 %32, 356
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = and i32 %2908, 32
  %2910 = icmp ne i32 %2909, 0
  %2911 = and i1 %2905, %2910
  %2912 = select i1 %2911, float 1.000000e+00, float %2899
  %2913 = select i1 %2911, float 0x3FD3333340000000, float %2900
  %2914 = select i1 %2911, float 0x3FD3333340000000, float %2901
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = and i32 %2916, 32
  %2918 = icmp eq i32 %2917, 0
  br i1 %2918, label %2991, label %2919

; <label>:2919                                    ; preds = %2897
  %2920 = add i32 %32, 140
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = add i32 %32, 388
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = add i32 %2925, 0
  %2927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2926, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2928 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2927, %dx.types.Handle %72, float %2619, float %2620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = and i32 %2968, 67108864
  %2970 = icmp eq i32 %2969, 0
  br i1 %2970, label %2987, label %2971

; <label>:2971                                    ; preds = %2919
  %2972 = add i32 %32, 328
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = and i32 %2974, 65535
  %2976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2975)  ; LegacyF16ToF32(value)
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2996 = add i32 %32, 208
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = lshr i32 %2998, 22
  %3000 = shl nuw nsw i32 %2999, 5
  %3001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3000)  ; LegacyF16ToF32(value)
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = and i32 %3003, 64
  %3005 = icmp eq i32 %3004, 0
  br i1 %3005, label %3039, label %3006

; <label>:3006                                    ; preds = %2991
  %3007 = add i32 %32, 404
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = add i32 %3009, 0
  %3011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = and i32 %3013, 131072
  %3015 = icmp eq i32 %3014, 0
  %3016 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3011, %dx.types.Handle %72, float %2619, float %2620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3017 = extractvalue %dx.types.ResRet.f32 %3016, 0
  %3018 = extractvalue %dx.types.ResRet.f32 %3016, 1
  %3019 = extractvalue %dx.types.ResRet.f32 %3016, 2
  %3020 = fmul fast float %3017, %345
  %3021 = fmul fast float %3018, %348
  %3022 = fmul fast float %3019, %351
  br i1 %3015, label %3029, label %3023

; <label>:3023                                    ; preds = %3006
  %3024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3034 = select i1 %202, float %3033, float %3030
  %3035 = call float @dx.op.dot3.f32(i32 55, float %3034, float %3031, float %3032, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3036 = select i1 %202, float 0.000000e+00, float %3030
  %3037 = select i1 %202, float %3035, float %3031
  %3038 = select i1 %202, float 0.000000e+00, float %3032
  br label %3039

; <label>:3039                                    ; preds = %3029, %2991
  %3040 = phi float [ %3036, %3029 ], [ 0.000000e+00, %2991 ]
  %3041 = phi float [ %3037, %3029 ], [ 0.000000e+00, %2991 ]
  %3042 = phi float [ %3038, %3029 ], [ 0.000000e+00, %2991 ]
  %3043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3044 = extractvalue %dx.types.ResRet.i32 %3043, 0
  %3045 = and i32 %3044, 43008
  %3046 = icmp eq i32 %3045, 0
  br i1 %3046, label %3070, label %3047

; <label>:3047                                    ; preds = %3039
  %3048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3049 = extractvalue %dx.types.ResRet.i32 %3048, 0
  %3050 = and i32 %3049, 32768
  %3051 = icmp eq i32 %3050, 0
  br i1 %3051, label %3070, label %3052

; <label>:3052                                    ; preds = %3047
  %3053 = and i32 %3049, 1048576
  %3054 = icmp ne i32 %3053, 0
  %3055 = add i32 %32, 468
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = add i32 %3057, 0
  %3059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3058, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3060 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3059, %dx.types.Handle %73, float %2619, float %2620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3061 = extractvalue %dx.types.ResRet.f32 %3060, 2
  %3062 = select i1 %3054, float 1.000000e+00, float %3061
  %3063 = add i32 %32, 148
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = lshr i32 %3065, 22
  %3067 = shl nuw nsw i32 %3066, 5
  %3068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3067)  ; LegacyF16ToF32(value)
  %3069 = fmul fast float %3068, %3062
  br label %3070

; <label>:3070                                    ; preds = %3052, %3047, %3039
  %3071 = phi float [ %3069, %3052 ], [ 0.000000e+00, %3047 ], [ 0.000000e+00, %3039 ]
  %3072 = add i32 %32, 144
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = and i32 %3074, 255
  %3076 = uitofp i32 %3075 to float
  %3077 = lshr i32 %3074, 8
  %3078 = and i32 %3077, 255
  %3079 = uitofp i32 %3078 to float
  %3080 = call float @dx.op.dot3.f32(i32 55, float %2912, float %2913, float %2914, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3081 = fmul fast float %3079, %3080
  %3082 = fadd fast float %3081, %3076
  %3083 = fmul fast float %3082, 0x3F70101020000000
  %3084 = call float @dx.op.unary.f32(i32 7, float %3083)  ; Saturate(value)
  br i1 %2511, label %3085, label %3093

; <label>:3085                                    ; preds = %3070
  %3086 = fsub fast float 1.000000e+00, %2692
  %3087 = fmul fast float %3086, %2499
  %3088 = fmul fast float %3086, %2500
  %3089 = fmul fast float %3086, %2501
  %3090 = fmul fast float %3086, %2502
  %3091 = fmul fast float %3086, %2503
  %3092 = fmul fast float %3086, %2504
  br label %3093

; <label>:3093                                    ; preds = %3085, %3070
  %3094 = phi float [ %3087, %3085 ], [ %2499, %3070 ]
  %3095 = phi float [ %3088, %3085 ], [ %2500, %3070 ]
  %3096 = phi float [ %3089, %3085 ], [ %2501, %3070 ]
  %3097 = phi float [ %3090, %3085 ], [ %2502, %3070 ]
  %3098 = phi float [ %3091, %3085 ], [ %2503, %3070 ]
  %3099 = phi float [ %3092, %3085 ], [ %2504, %3070 ]
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = and i32 %3101, 3
  %3103 = icmp eq i32 %3102, 3
  br i1 %3103, label %3182, label %3104

; <label>:3104                                    ; preds = %3093
  %3105 = and i32 %3101, 16
  %3106 = icmp ne i32 %3105, 0
  %3107 = select i1 %3106, float %2692, float 0.000000e+00
  %3108 = icmp eq i32 %3102, 0
  br i1 %3108, label %3109, label %3137

; <label>:3109                                    ; preds = %3104
  %3110 = and i32 %3101, 64
  %3111 = icmp ne i32 %3110, 0
  %3112 = select i1 %3111, float %2692, float 0.000000e+00
  %3113 = fsub fast float %2912, %3094
  %3114 = fsub fast float %2913, %3095
  %3115 = fsub fast float %2914, %3096
  %3116 = fmul fast float %3107, %3113
  %3117 = fmul fast float %3107, %3114
  %3118 = fmul fast float %3107, %3115
  %3119 = fadd fast float %3116, %3094
  %3120 = fadd fast float %3117, %3095
  %3121 = fadd fast float %3118, %3096
  %3122 = fsub fast float %2898, %2505
  %3123 = fmul fast float %3107, %3122
  %3124 = fadd fast float %3123, %2505
  %3125 = fsub fast float %3040, %3097
  %3126 = fsub fast float %3041, %3098
  %3127 = fsub fast float %3042, %3099
  %3128 = fmul fast float %3112, %3125
  %3129 = fmul fast float %3112, %3126
  %3130 = fmul fast float %3112, %3127
  %3131 = fadd fast float %3128, %3097
  %3132 = fadd fast float %3129, %3098
  %3133 = fadd fast float %3130, %3099
  %3134 = fsub fast float %3084, %2509
  %3135 = fmul fast float %3107, %3134
  %3136 = fadd fast float %3135, %2509
  br label %3182

; <label>:3137                                    ; preds = %3104
  %3138 = icmp eq i32 %3102, 1
  br i1 %3138, label %3139, label %3152

; <label>:3139                                    ; preds = %3137
  %3140 = fadd fast float %2912, -1.000000e+00
  %3141 = fadd fast float %2913, -1.000000e+00
  %3142 = fadd fast float %2914, -1.000000e+00
  %3143 = fmul fast float %3107, %3140
  %3144 = fmul fast float %3107, %3141
  %3145 = fmul fast float %3107, %3142
  %3146 = fadd fast float %3143, 1.000000e+00
  %3147 = fadd fast float %3144, 1.000000e+00
  %3148 = fadd fast float %3145, 1.000000e+00
  %3149 = fmul fast float %3146, %3094
  %3150 = fmul fast float %3147, %3095
  %3151 = fmul fast float %3148, %3096
  br label %3182

; <label>:3152                                    ; preds = %3137
  %3153 = icmp eq i32 %3102, 2
  br i1 %3153, label %3154, label %3182

; <label>:3154                                    ; preds = %3152
  %3155 = call float @dx.op.unary.f32(i32 24, float %2912)  ; Sqrt(value)
  %3156 = call float @dx.op.unary.f32(i32 24, float %2913)  ; Sqrt(value)
  %3157 = call float @dx.op.unary.f32(i32 24, float %2914)  ; Sqrt(value)
  %3158 = fadd fast float %3155, -5.000000e-01
  %3159 = fadd fast float %3156, -5.000000e-01
  %3160 = fadd fast float %3157, -5.000000e-01
  %3161 = fmul fast float %3158, %3107
  %3162 = fmul fast float %3159, %3107
  %3163 = fmul fast float %3160, %3107
  %3164 = fadd fast float %3161, 5.000000e-01
  %3165 = fadd fast float %3162, 5.000000e-01
  %3166 = fadd fast float %3163, 5.000000e-01
  %3167 = fmul fast float %3164, 2.000000e+00
  %3168 = fsub fast float 1.000000e+00, %3167
  %3169 = fmul fast float %3168, %3094
  %3170 = fadd fast float %3169, %3167
  %3171 = fmul fast float %3170, %3094
  %3172 = fmul fast float %3165, 2.000000e+00
  %3173 = fsub fast float 1.000000e+00, %3172
  %3174 = fmul fast float %3173, %3095
  %3175 = fadd fast float %3174, %3172
  %3176 = fmul fast float %3175, %3095
  %3177 = fmul fast float %3166, 2.000000e+00
  %3178 = fsub fast float 1.000000e+00, %3177
  %3179 = fmul fast float %3178, %3096
  %3180 = fadd fast float %3179, %3177
  %3181 = fmul fast float %3180, %3096
  br label %3182

; <label>:3182                                    ; preds = %3154, %3152, %3139, %3109, %3093
  %3183 = phi float [ %3094, %3093 ], [ %3171, %3154 ], [ %3094, %3152 ], [ %3149, %3139 ], [ %3119, %3109 ]
  %3184 = phi float [ %3095, %3093 ], [ %3176, %3154 ], [ %3095, %3152 ], [ %3150, %3139 ], [ %3120, %3109 ]
  %3185 = phi float [ %3096, %3093 ], [ %3181, %3154 ], [ %3096, %3152 ], [ %3151, %3139 ], [ %3121, %3109 ]
  %3186 = phi float [ %3097, %3093 ], [ %3097, %3154 ], [ %3097, %3152 ], [ %3097, %3139 ], [ %3131, %3109 ]
  %3187 = phi float [ %3098, %3093 ], [ %3098, %3154 ], [ %3098, %3152 ], [ %3098, %3139 ], [ %3132, %3109 ]
  %3188 = phi float [ %3099, %3093 ], [ %3099, %3154 ], [ %3099, %3152 ], [ %3099, %3139 ], [ %3133, %3109 ]
  %3189 = phi float [ %2505, %3093 ], [ %2505, %3154 ], [ %2505, %3152 ], [ %2505, %3139 ], [ %3124, %3109 ]
  %3190 = phi float [ %2509, %3093 ], [ %2509, %3154 ], [ %2509, %3152 ], [ %2509, %3139 ], [ %3136, %3109 ]
  %3191 = and i32 %3101, 12
  %3192 = icmp eq i32 %3191, 12
  br i1 %3192, label %3275, label %3193

; <label>:3193                                    ; preds = %3182
  %3194 = and i32 %3101, 2097184
  %3195 = icmp eq i32 %3194, 2097184
  %3196 = select i1 %3195, float %2692, float 0.000000e+00
  %3197 = and i32 %3101, 4194336
  %3198 = icmp eq i32 %3197, 4194336
  %3199 = select i1 %3198, float %2692, float 0.000000e+00
  %3200 = and i32 %3101, 8388640
  %3201 = icmp eq i32 %3200, 8388640
  %3202 = select i1 %3201, float %2692, float 0.000000e+00
  %3203 = and i32 %3101, 32768
  %3204 = icmp ne i32 %3203, 0
  %3205 = select i1 %3204, float %2692, float 0.000000e+00
  %3206 = icmp eq i32 %3191, 0
  br i1 %3206, label %3207, label %3223

; <label>:3207                                    ; preds = %3193
  %3208 = fsub fast float %2993, %2497
  %3209 = fsub fast float %2994, %2498
  %3210 = fmul fast float %3196, %3208
  %3211 = fmul fast float %3196, %3209
  %3212 = fadd fast float %3210, %2497
  %3213 = fadd fast float %3211, %2498
  %3214 = fsub fast float %2995, %2507
  %3215 = fmul fast float %3199, %3214
  %3216 = fadd fast float %3215, %2507
  %3217 = fsub fast float %2992, %2506
  %3218 = fmul fast float %3202, %3217
  %3219 = fadd fast float %3218, %2506
  %3220 = fsub fast float %3071, %2508
  %3221 = fmul fast float %3205, %3220
  %3222 = fadd fast float %3221, %2508
  br label %3275

; <label>:3223                                    ; preds = %3193
  %3224 = icmp eq i32 %3191, 4
  br i1 %3224, label %3225, label %3259

; <label>:3225                                    ; preds = %3223
  %3226 = fmul fast float %3196, %2993
  %3227 = fmul fast float %3196, %2994
  %3228 = fadd fast float %3226, %2497
  %3229 = fadd fast float %3227, %2498
  %3230 = call float @dx.op.binary.f32(i32 36, float %2507, float %2995)  ; FMin(a,b)
  %3231 = fsub fast float %3230, %2507
  %3232 = fmul fast float %3231, %3199
  %3233 = fadd fast float %3232, %2507
  %3234 = fadd fast float %2992, %2506
  %3235 = fmul fast float %3234, 0x3FF337FAE0000000
  %3236 = fmul fast float %2506, %2506
  %3237 = fmul fast float %2992, %2992
  %3238 = fadd fast float %3237, %3236
  %3239 = fmul fast float %3238, 0x3FE5152B00000000
  %3240 = fmul fast float %2506, 0xBFCC1F85E0000000
  %3241 = fmul fast float %3240, %2992
  %3242 = fadd fast float %3241, 0xBFE1363700000000
  %3243 = fadd fast float %3242, %3235
  %3244 = fsub fast float %3243, %3239
  %3245 = fmul fast float %3234, 0x3FBA6F0D00000000
  %3246 = fmul fast float %3238, 0x3FD0432880000000
  %3247 = fmul fast float %2506, 0xBFEF110800000000
  %3248 = fmul fast float %3247, %2992
  %3249 = fadd fast float %3248, 1.000000e+00
  %3250 = fsub fast float %3249, %3245
  %3251 = fadd fast float %3250, %3246
  %3252 = fdiv fast float %3244, %3251
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3254 = fsub fast float %3253, %2506
  %3255 = fmul fast float %3254, %3202
  %3256 = fadd fast float %3255, %2506
  %3257 = fmul fast float %3205, %3071
  %3258 = fadd fast float %3257, %2508
  br label %3275

; <label>:3259                                    ; preds = %3223
  %3260 = icmp eq i32 %3191, 8
  br i1 %3260, label %3261, label %3275

; <label>:3261                                    ; preds = %3259
  %3262 = fmul fast float %3196, %2993
  %3263 = fmul fast float %3196, %2994
  %3264 = fadd fast float %3262, %2497
  %3265 = fadd fast float %3263, %2498
  %3266 = call float @dx.op.binary.f32(i32 36, float %2507, float %2995)  ; FMin(a,b)
  %3267 = fsub fast float %3266, %2507
  %3268 = fmul fast float %3267, %3199
  %3269 = fadd fast float %3268, %2507
  %3270 = fsub fast float %2992, %2506
  %3271 = fmul fast float %3202, %3270
  %3272 = fadd fast float %3271, %2506
  %3273 = fmul fast float %3205, %3071
  %3274 = fadd fast float %3273, %2508
  br label %3275

; <label>:3275                                    ; preds = %3261, %3259, %3225, %3207, %3182, %2691, %2510, %2496
  %3276 = phi float [ %2497, %3182 ], [ %2497, %2691 ], [ %2497, %2496 ], [ %2497, %2510 ], [ %3212, %3207 ], [ %3228, %3225 ], [ %2497, %3259 ], [ %3264, %3261 ]
  %3277 = phi float [ %2498, %3182 ], [ %2498, %2691 ], [ %2498, %2496 ], [ %2498, %2510 ], [ %3213, %3207 ], [ %3229, %3225 ], [ %2498, %3259 ], [ %3265, %3261 ]
  %3278 = phi float [ %3183, %3182 ], [ %2499, %2691 ], [ %2499, %2496 ], [ %2499, %2510 ], [ %3183, %3207 ], [ %3183, %3225 ], [ %3183, %3259 ], [ %3183, %3261 ]
  %3279 = phi float [ %3184, %3182 ], [ %2500, %2691 ], [ %2500, %2496 ], [ %2500, %2510 ], [ %3184, %3207 ], [ %3184, %3225 ], [ %3184, %3259 ], [ %3184, %3261 ]
  %3280 = phi float [ %3185, %3182 ], [ %2501, %2691 ], [ %2501, %2496 ], [ %2501, %2510 ], [ %3185, %3207 ], [ %3185, %3225 ], [ %3185, %3259 ], [ %3185, %3261 ]
  %3281 = phi float [ %3186, %3182 ], [ %2502, %2691 ], [ %2502, %2496 ], [ %2502, %2510 ], [ %3186, %3207 ], [ %3186, %3225 ], [ %3186, %3259 ], [ %3186, %3261 ]
  %3282 = phi float [ %3187, %3182 ], [ %2503, %2691 ], [ %2503, %2496 ], [ %2503, %2510 ], [ %3187, %3207 ], [ %3187, %3225 ], [ %3187, %3259 ], [ %3187, %3261 ]
  %3283 = phi float [ %3188, %3182 ], [ %2504, %2691 ], [ %2504, %2496 ], [ %2504, %2510 ], [ %3188, %3207 ], [ %3188, %3225 ], [ %3188, %3259 ], [ %3188, %3261 ]
  %3284 = phi float [ %3189, %3182 ], [ %2505, %2691 ], [ %2505, %2496 ], [ %2505, %2510 ], [ %3189, %3207 ], [ %3189, %3225 ], [ %3189, %3259 ], [ %3189, %3261 ]
  %3285 = phi float [ %2506, %3182 ], [ %2506, %2691 ], [ %2506, %2496 ], [ %2506, %2510 ], [ %3219, %3207 ], [ %3256, %3225 ], [ %2506, %3259 ], [ %3272, %3261 ]
  %3286 = phi float [ %2507, %3182 ], [ %2507, %2691 ], [ %2507, %2496 ], [ %2507, %2510 ], [ %3216, %3207 ], [ %3233, %3225 ], [ %2507, %3259 ], [ %3269, %3261 ]
  %3287 = phi float [ %2508, %3182 ], [ %2508, %2691 ], [ %2508, %2496 ], [ %2508, %2510 ], [ %3222, %3207 ], [ %3258, %3225 ], [ %2508, %3259 ], [ %3274, %3261 ]
  %3288 = phi float [ %3190, %3182 ], [ %2509, %2691 ], [ %2509, %2496 ], [ %2509, %2510 ], [ %3190, %3207 ], [ %3190, %3225 ], [ %3190, %3259 ], [ %3190, %3261 ]
  %3289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3290 = extractvalue %dx.types.CBufRet.f32 %3289, 0
  %3291 = call float @dx.op.dot2.f32(i32 54, float %3276, float %3277, float %3276, float %3277)  ; Dot2(ax,ay,bx,by)
  %3292 = fmul fast float %3291, 0x3FE3333340000000
  %3293 = fsub fast float 1.000000e+00, %3292
  %3294 = call float @dx.op.dot3.f32(i32 55, float %3276, float %3277, float %3293, float %3276, float %3277, float %3293)  ; Dot3(ax,ay,az,bx,by,bz)
  %3295 = call float @dx.op.unary.f32(i32 25, float %3294)  ; Rsqrt(value)
  %3296 = fmul fast float %3295, %3276
  %3297 = fmul fast float %3295, %3277
  %3298 = fmul fast float %3293, %3295
  %3299 = fmul fast float %3298, %83
  %3300 = fmul fast float %3298, %84
  %3301 = fmul fast float %3298, %85
  %3302 = fmul fast float %3296, %57
  %3303 = fmul fast float %3296, %58
  %3304 = fmul fast float %3296, %59
  %3305 = fadd fast float %3299, %3302
  %3306 = fadd fast float %3300, %3303
  %3307 = fadd fast float %3301, %3304
  %3308 = fmul fast float %95, %3297
  %3309 = fmul fast float %96, %3297
  %3310 = fmul fast float %97, %3297
  %3311 = fadd fast float %3305, %3308
  %3312 = fadd fast float %3306, %3309
  %3313 = fadd fast float %3307, %3310
  %3314 = call float @dx.op.dot3.f32(i32 55, float %3311, float %3312, float %3313, float %3311, float %3312, float %3313)  ; Dot3(ax,ay,az,bx,by,bz)
  %3315 = call float @dx.op.unary.f32(i32 25, float %3314)  ; Rsqrt(value)
  %3316 = fmul fast float %3311, %3315
  %3317 = fmul fast float %3312, %3315
  %3318 = fmul fast float %3313, %3315
  %3319 = icmp eq i32 %33, 65535
  br i1 %3319, label %3839, label %3320

; <label>:3320                                    ; preds = %3275
  %3321 = call float @dx.op.unary.f32(i32 83, float %34)  ; DerivCoarseX(value)
  %3322 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %3323 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3324 = call float @dx.op.unary.f32(i32 84, float %34)  ; DerivCoarseY(value)
  %3325 = call float @dx.op.unary.f32(i32 84, float %35)  ; DerivCoarseY(value)
  %3326 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3327 = fadd fast float %3321, %34
  %3328 = fadd fast float %3322, %35
  %3329 = fadd fast float %3323, %36
  %3330 = fadd fast float %3324, %34
  %3331 = fadd fast float %3325, %35
  %3332 = fadd fast float %3326, %36
  %3333 = mul i32 %33, 48
  %3334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3333, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.f32 %3334, 0
  %3336 = extractvalue %dx.types.ResRet.f32 %3334, 1
  %3337 = extractvalue %dx.types.ResRet.f32 %3334, 2
  %3338 = add i32 %3333, 16
  %3339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.f32 %3339, 0
  %3341 = extractvalue %dx.types.ResRet.f32 %3339, 1
  %3342 = extractvalue %dx.types.ResRet.f32 %3339, 2
  %3343 = add i32 %3333, 32
  %3344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3343, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.f32 %3344, 0
  %3346 = extractvalue %dx.types.ResRet.f32 %3344, 1
  %3347 = extractvalue %dx.types.ResRet.f32 %3344, 2
  %3348 = extractvalue %dx.types.ResRet.f32 %3344, 3
  %3349 = bitcast float %3348 to i32
  %3350 = fmul fast float %3335, %34
  %3351 = fmul fast float %3336, %35
  %3352 = fmul fast float %3337, %36
  %3353 = fsub fast float %3350, %3340
  %3354 = fsub fast float %3351, %3341
  %3355 = fsub fast float %3352, %3342
  %3356 = call float @dx.op.unary.f32(i32 7, float %3353)  ; Saturate(value)
  %3357 = call float @dx.op.unary.f32(i32 7, float %3354)  ; Saturate(value)
  %3358 = call float @dx.op.unary.f32(i32 7, float %3355)  ; Saturate(value)
  %3359 = fmul fast float %3356, %3345
  %3360 = fmul fast float %3357, %3346
  %3361 = fmul fast float %3358, %3347
  %3362 = fadd fast float %3345, -1.000000e+00
  %3363 = fadd fast float %3346, -1.000000e+00
  %3364 = fadd fast float %3347, -1.000000e+00
  %3365 = call float @dx.op.unary.f32(i32 27, float %3359)  ; Round_ni(value)
  %3366 = call float @dx.op.unary.f32(i32 27, float %3360)  ; Round_ni(value)
  %3367 = call float @dx.op.unary.f32(i32 27, float %3361)  ; Round_ni(value)
  %3368 = call float @dx.op.binary.f32(i32 36, float %3365, float %3362)  ; FMin(a,b)
  %3369 = call float @dx.op.binary.f32(i32 36, float %3366, float %3363)  ; FMin(a,b)
  %3370 = call float @dx.op.binary.f32(i32 36, float %3367, float %3364)  ; FMin(a,b)
  %3371 = fmul fast float %3370, %3346
  %3372 = fadd fast float %3371, %3369
  %3373 = fmul fast float %3372, %3345
  %3374 = fadd fast float %3373, %3368
  %3375 = fptosi float %3374 to i32
  %3376 = add nsw i32 %3375, %3349
  %3377 = shl nsw i32 %3376, 2
  %3378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.i32 %3378, 0
  %3380 = lshr i32 %3379, 16
  %3381 = icmp eq i32 %3380, 0
  br i1 %3381, label %3807, label %3382

; <label>:3382                                    ; preds = %3320
  br label %3383

; <label>:3383                                    ; preds = %3505, %3382
  %3384 = phi i32 [ %3407, %3505 ], [ %3380, %3382 ]
  %3385 = phi float [ %3506, %3505 ], [ 0.000000e+00, %3382 ]
  %3386 = phi float [ %3507, %3505 ], [ %3290, %3382 ]
  %3387 = phi float [ %3508, %3505 ], [ %3288, %3382 ]
  %3388 = phi float [ %3509, %3505 ], [ %3287, %3382 ]
  %3389 = phi float [ %3510, %3505 ], [ 0.000000e+00, %3382 ]
  %3390 = phi float [ %3511, %3505 ], [ 0.000000e+00, %3382 ]
  %3391 = phi float [ %3512, %3505 ], [ %3281, %3382 ]
  %3392 = phi float [ %3513, %3505 ], [ %3282, %3382 ]
  %3393 = phi float [ %3514, %3505 ], [ %3283, %3382 ]
  %3394 = phi float [ %3515, %3505 ], [ %3316, %3382 ]
  %3395 = phi float [ %3516, %3505 ], [ %3317, %3382 ]
  %3396 = phi float [ %3517, %3505 ], [ %3318, %3382 ]
  %3397 = phi float [ %3518, %3505 ], [ %3286, %3382 ]
  %3398 = phi float [ %3519, %3505 ], [ %3285, %3382 ]
  %3399 = phi float [ %3520, %3505 ], [ 0.000000e+00, %3382 ]
  %3400 = phi float [ %3521, %3505 ], [ %3284, %3382 ]
  %3401 = phi float [ %3522, %3505 ], [ %3278, %3382 ]
  %3402 = phi float [ %3523, %3505 ], [ %3279, %3382 ]
  %3403 = phi float [ %3524, %3505 ], [ %3280, %3382 ]
  %3404 = shl nuw nsw i32 %3384, 2
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = lshr i32 %3406, 16
  %3408 = shl i32 %3406, 8
  %3409 = and i32 %3408, 16776960
  %3410 = or i32 %3409, 48
  %3411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.f32 %3411, 0
  %3413 = extractvalue %dx.types.ResRet.f32 %3411, 1
  %3414 = extractvalue %dx.types.ResRet.f32 %3411, 2
  %3415 = or i32 %3409, 64
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = extractvalue %dx.types.ResRet.i32 %3416, 1
  %3419 = or i32 %3409, 80
  %3420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.f32 %3420, 2
  %3422 = extractvalue %dx.types.ResRet.f32 %3420, 3
  %3423 = or i32 %3409, 96
  %3424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.f32 %3424, 0
  %3426 = extractvalue %dx.types.ResRet.f32 %3424, 1
  %3427 = extractvalue %dx.types.ResRet.f32 %3424, 2
  %3428 = extractvalue %dx.types.ResRet.f32 %3424, 3
  %3429 = or i32 %3409, 112
  %3430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.f32 %3430, 2
  %3432 = or i32 %3409, 128
  %3433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.f32 %3433, 0
  %3435 = extractvalue %dx.types.ResRet.f32 %3433, 1
  %3436 = extractvalue %dx.types.ResRet.f32 %3433, 2
  %3437 = extractvalue %dx.types.ResRet.f32 %3433, 3
  %3438 = or i32 %3409, 144
  %3439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3438, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.f32 %3439, 0
  %3441 = extractvalue %dx.types.ResRet.f32 %3439, 1
  %3442 = extractvalue %dx.types.ResRet.f32 %3439, 2
  %3443 = extractvalue %dx.types.ResRet.f32 %3439, 3
  %3444 = or i32 %3409, 160
  %3445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.f32 %3445, 0
  %3447 = extractvalue %dx.types.ResRet.f32 %3445, 1
  %3448 = extractvalue %dx.types.ResRet.f32 %3445, 2
  %3449 = extractvalue %dx.types.ResRet.f32 %3445, 3
  %3450 = or i32 %3409, 192
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = or i32 %3409, 208
  %3454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.f32 %3454, 0
  %3456 = or i32 %3409, 248
  %3457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.f32 %3457, 0
  %3459 = extractvalue %dx.types.ResRet.f32 %3457, 1
  %3460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.f32 %3460, 0
  %3462 = extractvalue %dx.types.ResRet.f32 %3460, 1
  %3463 = extractvalue %dx.types.ResRet.f32 %3460, 2
  %3464 = extractvalue %dx.types.ResRet.f32 %3460, 3
  %3465 = call float @dx.op.dot4.f32(i32 56, float %3461, float %3462, float %3463, float %3464, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3466 = or i32 %3409, 16
  %3467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.f32 %3467, 0
  %3469 = extractvalue %dx.types.ResRet.f32 %3467, 1
  %3470 = extractvalue %dx.types.ResRet.f32 %3467, 2
  %3471 = extractvalue %dx.types.ResRet.f32 %3467, 3
  %3472 = call float @dx.op.dot4.f32(i32 56, float %3468, float %3469, float %3470, float %3471, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3473 = or i32 %3409, 32
  %3474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3473, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.f32 %3474, 0
  %3476 = extractvalue %dx.types.ResRet.f32 %3474, 1
  %3477 = extractvalue %dx.types.ResRet.f32 %3474, 2
  %3478 = extractvalue %dx.types.ResRet.f32 %3474, 3
  %3479 = call float @dx.op.dot4.f32(i32 56, float %3475, float %3476, float %3477, float %3478, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3480 = call float @dx.op.unary.f32(i32 27, float %3465)  ; Round_ni(value)
  %3481 = call float @dx.op.unary.f32(i32 6, float %3480)  ; FAbs(value)
  %3482 = call float @dx.op.unary.f32(i32 27, float %3472)  ; Round_ni(value)
  %3483 = call float @dx.op.unary.f32(i32 6, float %3482)  ; FAbs(value)
  %3484 = call float @dx.op.unary.f32(i32 6, float %3479)  ; FAbs(value)
  %3485 = call float @dx.op.unary.f32(i32 27, float %3484)  ; Round_ni(value)
  %3486 = fadd fast float %3483, %3481
  %3487 = fadd fast float %3486, %3485
  %3488 = fcmp fast oeq float %3487, 0.000000e+00
  %3489 = call float @dx.op.dot4.f32(i32 56, float %3461, float %3462, float %3463, float %3464, float %3327, float %3328, float %3329, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3490 = call float @dx.op.dot4.f32(i32 56, float %3468, float %3469, float %3470, float %3471, float %3327, float %3328, float %3329, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3491 = call float @dx.op.dot4.f32(i32 56, float %3461, float %3462, float %3463, float %3464, float %3330, float %3331, float %3332, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3492 = call float @dx.op.dot4.f32(i32 56, float %3468, float %3469, float %3470, float %3471, float %3330, float %3331, float %3332, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3493 = fsub fast float %3489, %3465
  %3494 = fsub fast float %3491, %3465
  %3495 = fsub fast float %3490, %3472
  %3496 = fsub fast float %3492, %3472
  %3497 = call float @dx.op.dot3.f32(i32 55, float %3412, float %3413, float %3414, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %3498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3499 = extractvalue %dx.types.CBufRet.f32 %3498, 2
  %3500 = fadd fast float %3499, %3497
  %3501 = call float @dx.op.unary.f32(i32 7, float %3500)  ; Saturate(value)
  %3502 = extractvalue %dx.types.CBufRet.f32 %3498, 0
  %3503 = fcmp fast ogt float %3501, %3502
  %3504 = and i1 %3488, %3503
  br i1 %3504, label %3526, label %3505

; <label>:3505                                    ; preds = %3793, %3609, %3526, %3383
  %3506 = phi float [ %3385, %3526 ], [ %3612, %3609 ], [ %3612, %3793 ], [ %3385, %3383 ]
  %3507 = phi float [ %3386, %3526 ], [ %3386, %3609 ], [ %3768, %3793 ], [ %3386, %3383 ]
  %3508 = phi float [ %3387, %3526 ], [ %3387, %3609 ], [ %3766, %3793 ], [ %3387, %3383 ]
  %3509 = phi float [ %3388, %3526 ], [ %3388, %3609 ], [ %3738, %3793 ], [ %3388, %3383 ]
  %3510 = phi float [ %3389, %3526 ], [ %3389, %3609 ], [ %3736, %3793 ], [ %3389, %3383 ]
  %3511 = phi float [ %3390, %3526 ], [ %3390, %3609 ], [ %3734, %3793 ], [ %3390, %3383 ]
  %3512 = phi float [ %3391, %3526 ], [ %3391, %3609 ], [ %3803, %3793 ], [ %3391, %3383 ]
  %3513 = phi float [ %3392, %3526 ], [ %3392, %3609 ], [ %3804, %3793 ], [ %3392, %3383 ]
  %3514 = phi float [ %3393, %3526 ], [ %3393, %3609 ], [ %3805, %3793 ], [ %3393, %3383 ]
  %3515 = phi float [ %3394, %3526 ], [ %3394, %3609 ], [ %3715, %3793 ], [ %3394, %3383 ]
  %3516 = phi float [ %3395, %3526 ], [ %3395, %3609 ], [ %3716, %3793 ], [ %3395, %3383 ]
  %3517 = phi float [ %3396, %3526 ], [ %3396, %3609 ], [ %3717, %3793 ], [ %3396, %3383 ]
  %3518 = phi float [ %3397, %3526 ], [ %3397, %3609 ], [ %3746, %3793 ], [ %3397, %3383 ]
  %3519 = phi float [ %3398, %3526 ], [ %3398, %3609 ], [ %3743, %3793 ], [ %3398, %3383 ]
  %3520 = phi float [ %3399, %3526 ], [ %3399, %3609 ], [ %3740, %3793 ], [ %3399, %3383 ]
  %3521 = phi float [ %3400, %3526 ], [ %3400, %3609 ], [ %3732, %3793 ], [ %3400, %3383 ]
  %3522 = phi float [ %3401, %3526 ], [ %3401, %3609 ], [ %3727, %3793 ], [ %3401, %3383 ]
  %3523 = phi float [ %3402, %3526 ], [ %3402, %3609 ], [ %3728, %3793 ], [ %3402, %3383 ]
  %3524 = phi float [ %3403, %3526 ], [ %3403, %3609 ], [ %3729, %3793 ], [ %3403, %3383 ]
  %3525 = icmp eq i32 %3407, 0
  br i1 %3525, label %3806, label %3383

; <label>:3526                                    ; preds = %3383
  %3527 = extractvalue %dx.types.ResRet.f32 %3411, 3
  %3528 = extractvalue %dx.types.ResRet.f32 %3430, 3
  %3529 = extractvalue %dx.types.ResRet.f32 %3430, 1
  %3530 = extractvalue %dx.types.ResRet.f32 %3430, 0
  %3531 = extractvalue %dx.types.ResRet.f32 %3420, 1
  %3532 = extractvalue %dx.types.ResRet.f32 %3420, 0
  %3533 = extractvalue %dx.types.ResRet.i32 %3416, 3
  %3534 = extractvalue %dx.types.ResRet.i32 %3416, 2
  %3535 = bitcast float %3527 to i32
  %3536 = add i32 %3533, 0
  %3537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3536, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3539 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3537, %dx.types.Handle %3538, float %3465, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float %3493, float %3495, float undef, float %3494, float %3496, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3540 = extractvalue %dx.types.ResRet.f32 %3539, 0
  %3541 = fmul fast float %3540, %3532
  %3542 = fadd fast float %3541, %3531
  %3543 = call float @dx.op.unary.f32(i32 7, float %3542)  ; Saturate(value)
  %3544 = fmul fast float %3465, %3425
  %3545 = call float @dx.op.tertiary.f32(i32 46, float %3426, float %3472, float %3544)  ; FMad(a,b,c)
  %3546 = fadd fast float %3545, %3530
  %3547 = fmul fast float %3465, %3427
  %3548 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3472, float %3547)  ; FMad(a,b,c)
  %3549 = fadd fast float %3548, %3529
  %3550 = fmul fast float %3493, %3425
  %3551 = call float @dx.op.tertiary.f32(i32 46, float %3426, float %3495, float %3550)  ; FMad(a,b,c)
  %3552 = fmul fast float %3493, %3427
  %3553 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3495, float %3552)  ; FMad(a,b,c)
  %3554 = fmul fast float %3494, %3425
  %3555 = call float @dx.op.tertiary.f32(i32 46, float %3426, float %3496, float %3554)  ; FMad(a,b,c)
  %3556 = fmul fast float %3494, %3427
  %3557 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3496, float %3556)  ; FMad(a,b,c)
  %3558 = add i32 %3534, 0
  %3559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3558, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3560 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3559, %dx.types.Handle %3538, float %3546, float %3549, float undef, float undef, i32 0, i32 0, i32 undef, float %3551, float %3553, float undef, float %3555, float %3557, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3561 = extractvalue %dx.types.ResRet.f32 %3560, 0
  %3562 = and i32 %3535, 1024
  %3563 = icmp ne i32 %3562, 0
  %3564 = fcmp fast ogt float %3561, 0x3FE0101020000000
  %3565 = uitofp i1 %3564 to float
  %3566 = select i1 %3563, float %3565, float %3561
  %3567 = and i32 %3535, 8192
  %3568 = icmp ne i32 %3567, 0
  %3569 = select i1 %3568, float %3528, float 1.000000e+00
  %3570 = fmul fast float %3465, 2.000000e+00
  %3571 = fadd fast float %3570, -1.000000e+00
  %3572 = call float @dx.op.unary.f32(i32 6, float %3571)  ; FAbs(value)
  %3573 = fmul fast float %3572, %3458
  %3574 = fsub fast float %3573, %3458
  %3575 = call float @dx.op.unary.f32(i32 7, float %3574)  ; Saturate(value)
  %3576 = fmul fast float %3472, 2.000000e+00
  %3577 = fadd fast float %3576, -1.000000e+00
  %3578 = call float @dx.op.unary.f32(i32 6, float %3577)  ; FAbs(value)
  %3579 = fmul fast float %3578, %3459
  %3580 = fsub fast float %3579, %3459
  %3581 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  %3582 = fmul fast float %3484, %3421
  %3583 = fsub fast float %3582, %3421
  %3584 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  %3585 = fmul fast float %3543, %3569
  %3586 = fmul fast float %3585, %3540
  %3587 = fmul fast float %3586, %3575
  %3588 = fmul fast float %3587, %3566
  %3589 = fmul fast float %3588, %3581
  %3590 = fmul fast float %3589, %3584
  %3591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3592 = extractvalue %dx.types.CBufRet.f32 %3591, 1
  %3593 = extractvalue %dx.types.CBufRet.f32 %3591, 0
  %3594 = fsub fast float %3501, %3593
  %3595 = fmul fast float %3594, %3592
  %3596 = call float @dx.op.unary.f32(i32 7, float %3595)  ; Saturate(value)
  %3597 = fmul fast float %3590, %3422
  %3598 = fadd fast float %3590, %3422
  %3599 = fmul fast float %3598, %3431
  %3600 = fsub fast float %3599, %3431
  %3601 = call float @dx.op.unary.f32(i32 7, float %3600)  ; Saturate(value)
  %3602 = and i32 %3535, 128
  %3603 = icmp ne i32 %3602, 0
  %3604 = select i1 %3603, float %3601, float %3597
  %3605 = fmul fast float %3604, %3596
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  %3608 = fcmp fast ugt float %3605, %3607
  br i1 %3608, label %3609, label %3505

; <label>:3609                                    ; preds = %3526
  %3610 = select i1 %3568, float %3605, float 0.000000e+00
  %3611 = fadd fast float %3610, %3385
  %3612 = call float @dx.op.unary.f32(i32 7, float %3611)  ; Saturate(value)
  br i1 %3568, label %3505, label %3613

; <label>:3613                                    ; preds = %3609
  %3614 = and i32 %3535, 4
  %3615 = and i32 %3535, 8
  %3616 = add i32 %3417, 0
  %3617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3616, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3618 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3619 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3617, %dx.types.Handle %3618, float %3546, float %3549, float undef, float undef, i32 0, i32 0, i32 undef, float %3551, float %3553, float undef, float %3555, float %3557, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3621 = extractvalue %dx.types.ResRet.f32 %3619, 1
  %3622 = extractvalue %dx.types.ResRet.f32 %3619, 2
  %3623 = extractvalue %dx.types.ResRet.f32 %3619, 3
  %3624 = bitcast float %3443 to i32
  %3625 = and i32 %3624, 255
  %3626 = uitofp i32 %3625 to float
  %3627 = lshr i32 %3624, 8
  %3628 = and i32 %3627, 255
  %3629 = uitofp i32 %3628 to float
  %3630 = fmul fast float %3623, %3626
  %3631 = fadd fast float %3630, %3629
  %3632 = fmul fast float %3631, 0x3F70101000000000
  %3633 = add i32 %3418, 0
  %3634 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3633, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3635 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3634, %dx.types.Handle %3618, float %3546, float %3549, float undef, float undef, i32 0, i32 0, i32 undef, float %3551, float %3553, float undef, float %3555, float %3557, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3636 = extractvalue %dx.types.ResRet.f32 %3635, 0
  %3637 = extractvalue %dx.types.ResRet.f32 %3635, 1
  %3638 = extractvalue %dx.types.ResRet.f32 %3635, 2
  %3639 = extractvalue %dx.types.ResRet.f32 %3635, 3
  %3640 = bitcast float %3437 to i32
  %3641 = and i32 %3640, 255
  %3642 = uitofp i32 %3641 to float
  %3643 = lshr i32 %3640, 8
  %3644 = and i32 %3643, 255
  %3645 = uitofp i32 %3644 to float
  %3646 = lshr i32 %3640, 16
  %3647 = and i32 %3646, 255
  %3648 = uitofp i32 %3647 to float
  %3649 = fmul fast float %3648, 0x3F70101000000000
  %3650 = fmul fast float %3636, %3642
  %3651 = fadd fast float %3650, %3645
  %3652 = fmul fast float %3651, 0x3F70101000000000
  %3653 = fadd fast float %3637, -5.000000e-01
  %3654 = fadd fast float %3639, -5.000000e-01
  %3655 = fmul fast float %3653, %3649
  %3656 = fmul fast float %3654, %3649
  %3657 = fadd fast float %3655, 5.000000e-01
  %3658 = fadd fast float %3656, 5.000000e-01
  %3659 = fmul fast float %3620, %3446
  %3660 = fmul fast float %3621, %3447
  %3661 = fmul fast float %3622, %3448
  %3662 = fmul fast float %3657, 2.000000e+00
  %3663 = fadd fast float %3662, -1.000000e+00
  %3664 = fmul fast float %3658, 2.000000e+00
  %3665 = fadd fast float %3664, -1.000000e+00
  %3666 = fadd fast float %3663, %3665
  %3667 = fmul fast float %3666, 5.000000e-01
  %3668 = fsub fast float %3663, %3665
  %3669 = fmul fast float %3668, 5.000000e-01
  %3670 = call float @dx.op.unary.f32(i32 6, float %3667)  ; FAbs(value)
  %3671 = fsub fast float 1.000000e+00, %3670
  %3672 = call float @dx.op.unary.f32(i32 6, float %3669)  ; FAbs(value)
  %3673 = fsub fast float %3671, %3672
  %3674 = call float @dx.op.dot3.f32(i32 55, float %3667, float %3669, float %3673, float %3667, float %3669, float %3673)  ; Dot3(ax,ay,az,bx,by,bz)
  %3675 = call float @dx.op.unary.f32(i32 25, float %3674)  ; Rsqrt(value)
  %3676 = fmul fast float %3667, %3675
  %3677 = fmul fast float %3669, %3675
  %3678 = fmul fast float %3675, %3673
  %3679 = fmul fast float %3678, %3412
  %3680 = fmul fast float %3678, %3413
  %3681 = fmul fast float %3678, %3414
  %3682 = fmul fast float %3676, %3434
  %3683 = fmul fast float %3676, %3435
  %3684 = fmul fast float %3676, %3436
  %3685 = fadd fast float %3682, %3679
  %3686 = fadd fast float %3683, %3680
  %3687 = fadd fast float %3684, %3681
  %3688 = fmul fast float %3677, %3440
  %3689 = fmul fast float %3677, %3441
  %3690 = fmul fast float %3677, %3442
  %3691 = fadd fast float %3685, %3688
  %3692 = fadd fast float %3686, %3689
  %3693 = fadd fast float %3687, %3690
  %3694 = call float @dx.op.dot3.f32(i32 55, float %3691, float %3692, float %3693, float %3691, float %3692, float %3693)  ; Dot3(ax,ay,az,bx,by,bz)
  %3695 = call float @dx.op.unary.f32(i32 25, float %3694)  ; Rsqrt(value)
  %3696 = fmul fast float %3691, %3695
  %3697 = fmul fast float %3692, %3695
  %3698 = fmul fast float %3693, %3695
  %3699 = icmp ne i32 %3615, 0
  %3700 = select i1 %3699, float 1.000000e+00, float 0.000000e+00
  %3701 = fmul fast float %3605, %3700
  %3702 = and i32 %3535, 1
  %3703 = icmp eq i32 %3702, 0
  br i1 %3703, label %3704, label %3708

; <label>:3704                                    ; preds = %3613
  %3705 = fsub fast float %3696, %3394
  %3706 = fsub fast float %3697, %3395
  %3707 = fsub fast float %3698, %3396
  br label %3708

; <label>:3708                                    ; preds = %3704, %3613
  %3709 = phi float [ %3705, %3704 ], [ %3696, %3613 ]
  %3710 = phi float [ %3706, %3704 ], [ %3697, %3613 ]
  %3711 = phi float [ %3707, %3704 ], [ %3698, %3613 ]
  %3712 = fmul float %3711, %3701
  %3713 = fmul float %3710, %3701
  %3714 = fmul float %3709, %3701
  %3715 = fadd fast float %3714, %3394
  %3716 = fadd fast float %3713, %3395
  %3717 = fadd fast float %3712, %3396
  %3718 = icmp ne i32 %3614, 0
  %3719 = select i1 %3718, float 1.000000e+00, float 0.000000e+00
  %3720 = fmul fast float %3605, %3719
  %3721 = fsub fast float %3659, %3401
  %3722 = fsub fast float %3660, %3402
  %3723 = fsub fast float %3661, %3403
  %3724 = fmul fast float %3721, %3720
  %3725 = fmul fast float %3722, %3720
  %3726 = fmul fast float %3723, %3720
  %3727 = fadd fast float %3724, %3401
  %3728 = fadd fast float %3725, %3402
  %3729 = fadd fast float %3726, %3403
  %3730 = fsub fast float %3632, %3400
  %3731 = fmul fast float %3730, %3720
  %3732 = fadd fast float %3731, %3400
  %3733 = fmul fast float %3720, %3390
  %3734 = fsub fast float %3390, %3733
  %3735 = fmul fast float %3720, %3389
  %3736 = fsub fast float %3389, %3735
  %3737 = fmul fast float %3720, %3388
  %3738 = fsub fast float %3388, %3737
  %3739 = fadd fast float %3605, %3399
  %3740 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3741 = fsub fast float %3652, %3398
  %3742 = fmul fast float %3741, %3701
  %3743 = fadd fast float %3742, %3398
  %3744 = fsub fast float %3638, %3397
  %3745 = fmul fast float %3744, %3701
  %3746 = fadd fast float %3745, %3397
  %3747 = call float @dx.op.dot3.f32(i32 55, float %3659, float %3660, float %3661, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.f32 %3748, 0
  %3750 = extractvalue %dx.types.CBufRet.f32 %3748, 1
  %3751 = fmul fast float %3750, %3747
  %3752 = fadd fast float %3751, %3749
  %3753 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  %3754 = bitcast float %3449 to i32
  %3755 = and i32 %3754, 65535
  %3756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3755)  ; LegacyF16ToF32(value)
  %3757 = lshr i32 %3754, 16
  %3758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3757)  ; LegacyF16ToF32(value)
  %3759 = fcmp fast oge float %3756, 0.000000e+00
  %3760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3761 = extractvalue %dx.types.CBufRet.f32 %3760, 0
  %3762 = select i1 %3759, float %3756, float %3761
  %3763 = fadd fast float %3762, %3758
  %3764 = fsub fast float %3753, %3387
  %3765 = fmul fast float %3764, %3605
  %3766 = fadd fast float %3765, %3387
  %3767 = fmul fast float %3763, %3605
  %3768 = call float @dx.op.binary.f32(i32 35, float %3386, float %3767)  ; FMax(a,b)
  %3769 = and i32 %3535, 16
  %3770 = icmp eq i32 %3769, 0
  br i1 %3770, label %3793, label %3771

; <label>:3771                                    ; preds = %3708
  %3772 = bitcast float %3455 to i32
  %3773 = add i32 %3452, 0
  %3774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3773, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3775 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3774, %dx.types.Handle %3618, float %3546, float %3549, float undef, float undef, i32 0, i32 0, i32 undef, float %3551, float %3553, float undef, float %3555, float %3557, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3776 = extractvalue %dx.types.ResRet.f32 %3775, 0
  %3777 = extractvalue %dx.types.ResRet.f32 %3775, 1
  %3778 = extractvalue %dx.types.ResRet.f32 %3775, 2
  %3779 = and i32 %3772, 65535
  %3780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3779)  ; LegacyF16ToF32(value)
  %3781 = fmul fast float %3776, %3446
  %3782 = fmul fast float %3777, %3447
  %3783 = fmul fast float %3778, %3448
  %3784 = and i32 %3535, 16384
  %3785 = icmp ne i32 %3784, 0
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 0
  %3788 = select i1 %3785, float %3787, float 1.000000e+00
  %3789 = fmul fast float %3788, %3780
  %3790 = fmul fast float %3781, %3789
  %3791 = fmul fast float %3782, %3789
  %3792 = fmul fast float %3783, %3789
  br label %3793

; <label>:3793                                    ; preds = %3771, %3708
  %3794 = phi float [ %3790, %3771 ], [ 0.000000e+00, %3708 ]
  %3795 = phi float [ %3791, %3771 ], [ 0.000000e+00, %3708 ]
  %3796 = phi float [ %3792, %3771 ], [ 0.000000e+00, %3708 ]
  %3797 = fsub fast float %3794, %3391
  %3798 = fsub fast float %3795, %3392
  %3799 = fsub fast float %3796, %3393
  %3800 = fmul fast float %3797, %3605
  %3801 = fmul fast float %3798, %3605
  %3802 = fmul fast float %3799, %3605
  %3803 = fadd fast float %3800, %3391
  %3804 = fadd fast float %3801, %3392
  %3805 = fadd fast float %3802, %3393
  br label %3505

; <label>:3806                                    ; preds = %3505
  br label %3807

; <label>:3807                                    ; preds = %3806, %3320
  %3808 = phi float [ 0.000000e+00, %3320 ], [ %3506, %3806 ]
  %3809 = phi float [ %3290, %3320 ], [ %3507, %3806 ]
  %3810 = phi float [ %3288, %3320 ], [ %3508, %3806 ]
  %3811 = phi float [ %3287, %3320 ], [ %3509, %3806 ]
  %3812 = phi float [ 0.000000e+00, %3320 ], [ %3510, %3806 ]
  %3813 = phi float [ 0.000000e+00, %3320 ], [ %3511, %3806 ]
  %3814 = phi float [ %3281, %3320 ], [ %3512, %3806 ]
  %3815 = phi float [ %3282, %3320 ], [ %3513, %3806 ]
  %3816 = phi float [ %3283, %3320 ], [ %3514, %3806 ]
  %3817 = phi float [ %3316, %3320 ], [ %3515, %3806 ]
  %3818 = phi float [ %3317, %3320 ], [ %3516, %3806 ]
  %3819 = phi float [ %3318, %3320 ], [ %3517, %3806 ]
  %3820 = phi float [ %3286, %3320 ], [ %3518, %3806 ]
  %3821 = phi float [ %3285, %3320 ], [ %3519, %3806 ]
  %3822 = phi float [ 0.000000e+00, %3320 ], [ %3520, %3806 ]
  %3823 = phi float [ %3284, %3320 ], [ %3521, %3806 ]
  %3824 = phi float [ %3278, %3320 ], [ %3522, %3806 ]
  %3825 = phi float [ %3279, %3320 ], [ %3523, %3806 ]
  %3826 = phi float [ %3280, %3320 ], [ %3524, %3806 ]
  %3827 = call float @dx.op.dot3.f32(i32 55, float %3817, float %3818, float %3819, float %3817, float %3818, float %3819)  ; Dot3(ax,ay,az,bx,by,bz)
  %3828 = call float @dx.op.unary.f32(i32 25, float %3827)  ; Rsqrt(value)
  %3829 = fmul fast float %3828, %3817
  %3830 = fmul fast float %3828, %3818
  %3831 = fmul fast float %3828, %3819
  %3832 = fadd fast float %3822, %947
  %3833 = call float @dx.op.unary.f32(i32 7, float %3832)  ; Saturate(value)
  %3834 = call float @dx.op.dot3.f32(i32 55, float %3829, float %3830, float %3831, float %3829, float %3830, float %3831)  ; Dot3(ax,ay,az,bx,by,bz)
  %3835 = call float @dx.op.unary.f32(i32 25, float %3834)  ; Rsqrt(value)
  %3836 = fmul fast float %3835, %3829
  %3837 = fmul fast float %3835, %3830
  %3838 = fmul fast float %3835, %3831
  br label %3839

; <label>:3839                                    ; preds = %3807, %3275
  %3840 = phi float [ %3836, %3807 ], [ %3316, %3275 ]
  %3841 = phi float [ %3837, %3807 ], [ %3317, %3275 ]
  %3842 = phi float [ %3838, %3807 ], [ %3318, %3275 ]
  %3843 = phi float [ %3824, %3807 ], [ %3278, %3275 ]
  %3844 = phi float [ %3825, %3807 ], [ %3279, %3275 ]
  %3845 = phi float [ %3826, %3807 ], [ %3280, %3275 ]
  %3846 = phi float [ %3814, %3807 ], [ %3281, %3275 ]
  %3847 = phi float [ %3815, %3807 ], [ %3282, %3275 ]
  %3848 = phi float [ %3816, %3807 ], [ %3283, %3275 ]
  %3849 = phi float [ %3823, %3807 ], [ %3284, %3275 ]
  %3850 = phi float [ %3833, %3807 ], [ %947, %3275 ]
  %3851 = phi float [ %3821, %3807 ], [ %3285, %3275 ]
  %3852 = phi float [ %3820, %3807 ], [ %3286, %3275 ]
  %3853 = phi float [ %3813, %3807 ], [ 0.000000e+00, %3275 ]
  %3854 = phi float [ %3812, %3807 ], [ 0.000000e+00, %3275 ]
  %3855 = phi float [ %3811, %3807 ], [ %3287, %3275 ]
  %3856 = phi float [ %3808, %3807 ], [ 0.000000e+00, %3275 ]
  %3857 = phi float [ %3809, %3807 ], [ %3290, %3275 ]
  %3858 = phi float [ %3810, %3807 ], [ %3288, %3275 ]
  %3859 = fadd fast float %3849, 0xBFB99999A0000000
  %3860 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  %3861 = fmul fast float %3860, 0x3FF1C71C80000000
  %3862 = call float @dx.op.binary.f32(i32 36, float %3849, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3863 = fsub fast float 1.000000e+00, %3861
  %3864 = call float @dx.op.unary.f32(i32 7, float %3863)  ; Saturate(value)
  %3865 = fmul fast float %3864, %3843
  %3866 = fmul fast float %3864, %3844
  %3867 = fmul fast float %3864, %3845
  %3868 = call float @dx.op.unary.f32(i32 7, float %3865)  ; Saturate(value)
  %3869 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3870 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3871 = fmul fast float %3861, %3843
  %3872 = fmul fast float %3861, %3844
  %3873 = fmul fast float %3861, %3845
  %3874 = fadd fast float %3871, %3862
  %3875 = fadd fast float %3872, %3862
  %3876 = fadd fast float %3873, %3862
  %3877 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3878 = call float @dx.op.unary.f32(i32 7, float %3875)  ; Saturate(value)
  %3879 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3880 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  %3881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.i32 %3881, 3
  %3883 = and i32 %3882, 8
  %3884 = icmp ne i32 %3883, 0
  %3885 = call float @dx.op.binary.f32(i32 35, float %3868, float %3843)  ; FMax(a,b)
  %3886 = call float @dx.op.binary.f32(i32 35, float %3869, float %3843)  ; FMax(a,b)
  %3887 = call float @dx.op.binary.f32(i32 35, float %3870, float %3843)  ; FMax(a,b)
  %3888 = call float @dx.op.dot3.f32(i32 55, float %3868, float %3869, float %3870, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3889 = select i1 %202, float %3843, float %3868
  %3890 = select i1 %202, float %3888, float %3869
  %3891 = select i1 %202, float 1.000000e+00, float %3870
  %3892 = select i1 %3884, float %3885, float %3889
  %3893 = select i1 %3884, float %3886, float %3890
  %3894 = select i1 %3884, float %3887, float %3891
  %3895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3896 = extractvalue %dx.types.CBufRet.f32 %3895, 0
  %3897 = extractvalue %dx.types.CBufRet.f32 %3895, 1
  %3898 = extractvalue %dx.types.CBufRet.f32 %3895, 2
  %3899 = fadd fast float %3896, %163
  %3900 = fadd fast float %3897, %164
  %3901 = fadd fast float %3898, %165
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.CBufRet.f32 %3902, 1
  %3905 = fsub fast float %3899, %3903
  %3906 = fsub fast float %3900, %3904
  %3907 = fmul fast float %3905, %3905
  %3908 = fmul fast float %3906, %3906
  %3909 = fadd fast float %3907, %3908
  %3910 = call float @dx.op.unary.f32(i32 24, float %3909)  ; Sqrt(value)
  %3911 = extractvalue %dx.types.CBufRet.f32 %3902, 2
  %3912 = fcmp fast olt float %3910, %3911
  br i1 %3912, label %3913, label %3980

; <label>:3913                                    ; preds = %3839
  %3914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3914, 0
  %3916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3917 = extractvalue %dx.types.CBufRet.f32 %3916, 0
  %3918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3919 = extractvalue %dx.types.CBufRet.f32 %3918, 0
  %3920 = extractvalue %dx.types.CBufRet.f32 %3914, 1
  %3921 = extractvalue %dx.types.CBufRet.f32 %3916, 1
  %3922 = extractvalue %dx.types.CBufRet.f32 %3918, 1
  %3923 = extractvalue %dx.types.CBufRet.f32 %3914, 3
  %3924 = extractvalue %dx.types.CBufRet.f32 %3916, 3
  %3925 = extractvalue %dx.types.CBufRet.f32 %3918, 3
  %3926 = fadd fast float %3923, %3899
  %3927 = fadd fast float %3924, %3900
  %3928 = fadd fast float %3925, %3901
  %3929 = fmul fast float %3926, %3915
  %3930 = call float @dx.op.tertiary.f32(i32 46, float %3927, float %3917, float %3929)  ; FMad(a,b,c)
  %3931 = call float @dx.op.tertiary.f32(i32 46, float %3928, float %3919, float %3930)  ; FMad(a,b,c)
  %3932 = fmul fast float %3926, %3920
  %3933 = call float @dx.op.tertiary.f32(i32 46, float %3927, float %3921, float %3932)  ; FMad(a,b,c)
  %3934 = call float @dx.op.tertiary.f32(i32 46, float %3928, float %3922, float %3933)  ; FMad(a,b,c)
  %3935 = fsub fast float %3931, %3923
  %3936 = fsub fast float %3934, %3924
  %3937 = fsub fast float %3935, %3903
  %3938 = fadd fast float %3937, %3911
  %3939 = fsub fast float %3936, %3904
  %3940 = fadd fast float %3939, %3911
  %3941 = extractvalue %dx.types.CBufRet.f32 %3902, 3
  %3942 = fmul fast float %3938, %3941
  %3943 = fmul fast float %3940, %3941
  %3944 = call float @dx.op.unary.f32(i32 7, float %3942)  ; Saturate(value)
  %3945 = call float @dx.op.unary.f32(i32 7, float %3943)  ; Saturate(value)
  %3946 = fsub fast float 1.000000e+00, %3944
  %3947 = fsub fast float 1.000000e+00, %3945
  %3948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %3946, float %3947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3949 = extractvalue %dx.types.ResRet.f32 %3948, 0
  %3950 = fcmp fast ugt float %3949, 0.000000e+00
  br i1 %3950, label %3951, label %4254

; <label>:3951                                    ; preds = %3913
  %3952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3953 = extractvalue %dx.types.CBufRet.f32 %3952, 2
  %3954 = fmul fast float %3953, %3949
  %3955 = extractvalue %dx.types.CBufRet.f32 %3952, 3
  %3956 = fadd fast float %3955, %3954
  %3957 = extractvalue %dx.types.CBufRet.f32 %3918, 2
  %3958 = fadd fast float %3956, %3925
  %3959 = fmul fast float %3931, %3919
  %3960 = call float @dx.op.tertiary.f32(i32 46, float %3934, float %3922, float %3959)  ; FMad(a,b,c)
  %3961 = call float @dx.op.tertiary.f32(i32 46, float %3958, float %3957, float %3960)  ; FMad(a,b,c)
  %3962 = fsub fast float %3961, %3925
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 2
  %3965 = fsub fast float %3962, %3964
  %3966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %3946, float %3947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3967 = extractvalue %dx.types.ResRet.f32 %3966, 0
  %3968 = extractvalue %dx.types.ResRet.f32 %3966, 1
  %3969 = extractvalue %dx.types.ResRet.f32 %3966, 2
  %3970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %3946, float %3947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3971 = extractvalue %dx.types.ResRet.f32 %3970, 0
  %3972 = extractvalue %dx.types.ResRet.f32 %3970, 1
  %3973 = extractvalue %dx.types.ResRet.f32 %3970, 2
  %3974 = fadd fast float %3971, %3967
  %3975 = fmul fast float %3974, 0x3F847AE140000000
  %3976 = fadd fast float %3972, %3968
  %3977 = fmul fast float %3976, 0x3F847AE140000000
  %3978 = fadd fast float %3973, %3969
  %3979 = fmul fast float %3978, 0x3F847AE140000000
  br label %4254

; <label>:3980                                    ; preds = %3839
  %3981 = and i32 %181, 1
  %3982 = icmp eq i32 %3981, 0
  br i1 %3982, label %4254, label %3983

; <label>:3983                                    ; preds = %3980
  %3984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.f32 %3984, 0
  %3986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3987 = extractvalue %dx.types.CBufRet.f32 %3986, 0
  %3988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.f32 %3988, 0
  %3990 = extractvalue %dx.types.CBufRet.f32 %3984, 1
  %3991 = extractvalue %dx.types.CBufRet.f32 %3986, 1
  %3992 = extractvalue %dx.types.CBufRet.f32 %3988, 1
  %3993 = extractvalue %dx.types.CBufRet.f32 %3984, 3
  %3994 = extractvalue %dx.types.CBufRet.f32 %3986, 3
  %3995 = extractvalue %dx.types.CBufRet.f32 %3988, 3
  %3996 = fadd fast float %3993, %3899
  %3997 = fadd fast float %3994, %3900
  %3998 = fadd fast float %3995, %3901
  %3999 = fmul fast float %3996, %3985
  %4000 = call float @dx.op.tertiary.f32(i32 46, float %3997, float %3987, float %3999)  ; FMad(a,b,c)
  %4001 = call float @dx.op.tertiary.f32(i32 46, float %3998, float %3989, float %4000)  ; FMad(a,b,c)
  %4002 = fmul fast float %3996, %3990
  %4003 = call float @dx.op.tertiary.f32(i32 46, float %3997, float %3991, float %4002)  ; FMad(a,b,c)
  %4004 = call float @dx.op.tertiary.f32(i32 46, float %3998, float %3992, float %4003)  ; FMad(a,b,c)
  %4005 = fsub fast float %4001, %3993
  %4006 = fsub fast float %4004, %3994
  %4007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.f32 %4007, 0
  %4009 = extractvalue %dx.types.CBufRet.f32 %4007, 1
  %4010 = extractvalue %dx.types.CBufRet.f32 %4007, 2
  %4011 = extractvalue %dx.types.CBufRet.f32 %4007, 3
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 3
  %4014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.i32 %4014, 0
  %4016 = extractvalue %dx.types.CBufRet.i32 %4014, 1
  %4017 = udiv i32 %4016, %4015
  %4018 = fsub fast float %4005, %4008
  %4019 = fsub fast float %4006, %4009
  %4020 = call float @dx.op.binary.f32(i32 35, float %4018, float 0.000000e+00)  ; FMax(a,b)
  %4021 = call float @dx.op.binary.f32(i32 35, float %4019, float 0.000000e+00)  ; FMax(a,b)
  %4022 = call float @dx.op.binary.f32(i32 36, float %4020, float %4010)  ; FMin(a,b)
  %4023 = call float @dx.op.binary.f32(i32 36, float %4021, float %4011)  ; FMin(a,b)
  %4024 = add i32 %4015, -1
  %4025 = add i32 %4017, -1
  %4026 = fmul fast float %4022, %4013
  %4027 = fmul fast float %4023, %4013
  %4028 = fptoui float %4026 to i32
  %4029 = fptoui float %4027 to i32
  %4030 = call i32 @dx.op.binary.i32(i32 40, i32 %4028, i32 %4024)  ; UMin(a,b)
  %4031 = call i32 @dx.op.binary.i32(i32 40, i32 %4029, i32 %4025)  ; UMin(a,b)
  %4032 = mul i32 %4031, %4015
  %4033 = add i32 %4032, %4030
  %4034 = shl i32 %4033, 2
  %4035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.i32 %4035, 0
  %4037 = icmp eq i32 %4036, -1
  br i1 %4037, label %4254, label %4038

; <label>:4038                                    ; preds = %3983
  %4039 = mul i32 %4036, 148
  %4040 = add i32 %4039, 4
  %4041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = add i32 %4039, 8
  %4044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4043, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = add i32 %4039, 36
  %4047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = add i32 %4039, 60
  %4050 = add i32 %4039, 92
  %4051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4050, i32 undef)  ; BufferLoad(srv,index,wot)
  %4052 = extractvalue %dx.types.ResRet.i32 %4051, 0
  %4053 = add i32 %4039, 116
  %4054 = fsub fast float %4005, %4042
  %4055 = fsub fast float %4006, %4045
  %4056 = fmul fast float %4013, %4054
  %4057 = fmul fast float %4013, %4055
  %4058 = call float @dx.op.unary.f32(i32 7, float %4056)  ; Saturate(value)
  %4059 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4060 = fsub fast float 1.000000e+00, %4059
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 2
  %4063 = call float @dx.op.unary.f32(i32 83, float %4058)  ; DerivCoarseX(value)
  %4064 = call float @dx.op.unary.f32(i32 83, float %4060)  ; DerivCoarseX(value)
  %4065 = call float @dx.op.unary.f32(i32 84, float %4058)  ; DerivCoarseY(value)
  %4066 = call float @dx.op.unary.f32(i32 84, float %4060)  ; DerivCoarseY(value)
  %4067 = fmul fast float %4063, %4062
  %4068 = fmul fast float %4064, %4062
  %4069 = fmul fast float %4065, %4062
  %4070 = fmul fast float %4066, %4062
  %4071 = call float @dx.op.dot2.f32(i32 54, float %4069, float %4070, float %4069, float %4070)  ; Dot2(ax,ay,bx,by)
  %4072 = call float @dx.op.dot2.f32(i32 54, float %4067, float %4068, float %4067, float %4068)  ; Dot2(ax,ay,bx,by)
  %4073 = call float @dx.op.binary.f32(i32 35, float %4072, float %4071)  ; FMax(a,b)
  %4074 = call float @dx.op.unary.f32(i32 23, float %4073)  ; Log(value)
  %4075 = fmul fast float %4074, 5.000000e-01
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 1
  %4078 = fadd fast float %4077, %4075
  %4079 = call float @dx.op.binary.f32(i32 35, float %4078, float 0.000000e+00)  ; FMax(a,b)
  %4080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4081 = extractvalue %dx.types.CBufRet.f32 %4080, 3
  %4082 = fadd fast float %4081, %4079
  %4083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.f32 %4083, 3
  %4085 = fadd fast float %4082, %4084
  %4086 = add i32 %4052, 0
  %4087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4086, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4088 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4087, i32 0)  ; GetDimensions(handle,mipLevel)
  %4089 = extractvalue %dx.types.Dimensions %4088, 0
  %4090 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4089)  ; FirstbitLo(value)
  %4091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.i32 %4091, 1
  %4093 = sub nsw i32 %4092, %4090
  %4094 = sitofp i32 %4093 to float
  %4095 = fsub fast float %4085, %4094
  %4096 = call float @dx.op.binary.f32(i32 35, float %4095, float 0.000000e+00)  ; FMax(a,b)
  %4097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4087, %dx.types.Handle %27, float %4058, float %4060, float %4048, float undef, i32 0, i32 0, i32 undef, float %4096)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4098 = extractvalue %dx.types.ResRet.f32 %4097, 0
  %4099 = fcmp ule float %4098, 0x3FE0101020000000
  %4100 = extractvalue %dx.types.CBufRet.i32 %4091, 0
  %4101 = and i32 %4100, 128
  %4102 = icmp ne i32 %4101, 0
  %4103 = and i1 %4099, %4102
  br i1 %4103, label %4254, label %4104

; <label>:4104                                    ; preds = %4038
  %4105 = add i32 %4039, 20
  %4106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4105, i32 undef)  ; BufferLoad(srv,index,wot)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = add i32 %4039, 24
  %4109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4108, i32 undef)  ; BufferLoad(srv,index,wot)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = add i32 %4039, 40
  %4112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4111, i32 undef)  ; BufferLoad(srv,index,wot)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = add i32 %4039, 96
  %4115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4114, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.i32 %4115, 0
  %4117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4117, 2
  %4119 = fmul fast float %4118, %4058
  %4120 = fmul fast float %4118, %4060
  %4121 = extractvalue %dx.types.CBufRet.f32 %4117, 3
  %4122 = fadd fast float %4119, %4121
  %4123 = fadd fast float %4120, %4121
  %4124 = add i32 %4116, 0
  %4125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4124, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4126 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4125, i32 0)  ; GetDimensions(handle,mipLevel)
  %4127 = extractvalue %dx.types.Dimensions %4126, 0
  %4128 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4127)  ; FirstbitLo(value)
  %4129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.i32 %4129, 1
  %4131 = sub nsw i32 %4130, %4128
  %4132 = sitofp i32 %4131 to float
  %4133 = fsub fast float %4082, %4132
  %4134 = call float @dx.op.binary.f32(i32 35, float %4133, float 0.000000e+00)  ; FMax(a,b)
  %4135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4125, %dx.types.Handle %27, float %4122, float %4123, float %4113, float undef, i32 0, i32 0, i32 undef, float %4134)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4136 = extractvalue %dx.types.ResRet.f32 %4135, 0
  %4137 = fmul fast float %4136, %4107
  %4138 = fadd fast float %4137, %4110
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.CBufRet.f32 %4139, 1
  %4142 = extractvalue %dx.types.CBufRet.f32 %4139, 2
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 3
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 3
  %4147 = extractvalue %dx.types.CBufRet.f32 %4139, 3
  %4148 = fadd fast float %4144, %4005
  %4149 = fadd fast float %4146, %4006
  %4150 = fadd fast float %4138, %4147
  %4151 = fmul fast float %4148, %4140
  %4152 = call float @dx.op.tertiary.f32(i32 46, float %4149, float %4141, float %4151)  ; FMad(a,b,c)
  %4153 = call float @dx.op.tertiary.f32(i32 46, float %4150, float %4142, float %4152)  ; FMad(a,b,c)
  %4154 = fsub fast float %4153, %4147
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 2
  %4157 = fsub fast float %4154, %4156
  %4158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4159 = extractvalue %dx.types.CBufRet.i32 %4158, 0
  %4160 = call i32 @dx.op.binary.i32(i32 40, i32 %4036, i32 %4159)  ; UMin(a,b)
  %4161 = mul i32 %4160, 36
  %4162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4161, i32 undef)  ; BufferLoad(srv,index,wot)
  %4163 = extractvalue %dx.types.ResRet.i32 %4162, 0
  %4164 = add i32 %4161, 4
  %4165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.f32 %4165, 0
  %4167 = fmul fast float %4166, %4058
  %4168 = fmul fast float %4166, %4060
  %4169 = extractvalue %dx.types.CBufRet.f32 %4165, 1
  %4170 = fadd fast float %4167, %4169
  %4171 = fadd fast float %4168, %4169
  %4172 = icmp eq i32 %4163, 0
  br i1 %4172, label %4241, label %4173

; <label>:4173                                    ; preds = %4104
  br label %4174

; <label>:4174                                    ; preds = %4231, %4173
  %4175 = phi float [ %4232, %4231 ], [ 0.000000e+00, %4173 ]
  %4176 = phi float [ %4233, %4231 ], [ 0.000000e+00, %4173 ]
  %4177 = phi float [ %4234, %4231 ], [ 0.000000e+00, %4173 ]
  %4178 = phi float [ %4235, %4231 ], [ 0.000000e+00, %4173 ]
  %4179 = phi float [ %4236, %4231 ], [ 0.000000e+00, %4173 ]
  %4180 = phi float [ %4237, %4231 ], [ 0.000000e+00, %4173 ]
  %4181 = phi i32 [ %4238, %4231 ], [ 0, %4173 ]
  %4182 = shl i32 %4181, 2
  %4183 = add i32 %4049, %4182
  %4184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = add i32 %4053, %4182
  %4187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4186, i32 undef)  ; BufferLoad(srv,index,wot)
  %4188 = extractvalue %dx.types.ResRet.i32 %4187, 0
  %4189 = add i32 %4188, 0
  %4190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4189, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4191 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4190, i32 0)  ; GetDimensions(handle,mipLevel)
  %4192 = extractvalue %dx.types.Dimensions %4191, 0
  %4193 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4192)  ; FirstbitLo(value)
  %4194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.i32 %4194, 1
  %4196 = sub nsw i32 %4195, %4193
  %4197 = sitofp i32 %4196 to float
  %4198 = fsub fast float %4082, %4197
  %4199 = call float @dx.op.binary.f32(i32 35, float %4198, float 0.000000e+00)  ; FMax(a,b)
  %4200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4190, %dx.types.Handle %27, float %4170, float %4171, float %4185, float undef, i32 0, i32 0, i32 undef, float %4199)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = fcmp fast ogt float %4201, 0.000000e+00
  br i1 %4202, label %4203, label %4231

; <label>:4203                                    ; preds = %4174
  %4204 = add i32 %4164, %4182
  %4205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.i32 %4205, 0
  %4207 = and i32 %4206, 32767
  %4208 = mul nuw nsw i32 %4207, 928
  %4209 = add nuw nsw i32 %4208, 48
  %4210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4209, i32 undef)  ; BufferLoad(srv,index,wot)
  %4211 = extractvalue %dx.types.ResRet.f32 %4210, 0
  %4212 = extractvalue %dx.types.ResRet.f32 %4210, 1
  %4213 = extractvalue %dx.types.ResRet.f32 %4210, 2
  %4214 = add nuw nsw i32 %4208, 60
  %4215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4214, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = extractvalue %dx.types.ResRet.f32 %4215, 1
  %4218 = extractvalue %dx.types.ResRet.f32 %4215, 2
  %4219 = fmul fast float %4211, %4201
  %4220 = fmul fast float %4212, %4201
  %4221 = fmul fast float %4213, %4201
  %4222 = fadd fast float %4219, %4175
  %4223 = fadd fast float %4220, %4176
  %4224 = fadd fast float %4221, %4177
  %4225 = fmul fast float %4216, %4201
  %4226 = fmul fast float %4217, %4201
  %4227 = fmul fast float %4218, %4201
  %4228 = fadd fast float %4225, %4178
  %4229 = fadd fast float %4226, %4179
  %4230 = fadd fast float %4227, %4180
  br label %4231

; <label>:4231                                    ; preds = %4203, %4174
  %4232 = phi float [ %4222, %4203 ], [ %4175, %4174 ]
  %4233 = phi float [ %4223, %4203 ], [ %4176, %4174 ]
  %4234 = phi float [ %4224, %4203 ], [ %4177, %4174 ]
  %4235 = phi float [ %4228, %4203 ], [ %4178, %4174 ]
  %4236 = phi float [ %4229, %4203 ], [ %4179, %4174 ]
  %4237 = phi float [ %4230, %4203 ], [ %4180, %4174 ]
  %4238 = add nuw i32 %4181, 1
  %4239 = icmp eq i32 %4238, %4163
  br i1 %4239, label %4240, label %4174

; <label>:4240                                    ; preds = %4231
  br label %4241

; <label>:4241                                    ; preds = %4240, %4104
  %4242 = phi float [ 0.000000e+00, %4104 ], [ %4232, %4240 ]
  %4243 = phi float [ 0.000000e+00, %4104 ], [ %4233, %4240 ]
  %4244 = phi float [ 0.000000e+00, %4104 ], [ %4234, %4240 ]
  %4245 = phi float [ 0.000000e+00, %4104 ], [ %4235, %4240 ]
  %4246 = phi float [ 0.000000e+00, %4104 ], [ %4236, %4240 ]
  %4247 = phi float [ 0.000000e+00, %4104 ], [ %4237, %4240 ]
  %4248 = fadd fast float %4245, %4242
  %4249 = fmul fast float %4248, 0x3F847AE140000000
  %4250 = fadd fast float %4246, %4243
  %4251 = fmul fast float %4250, 0x3F847AE140000000
  %4252 = fadd fast float %4247, %4244
  %4253 = fmul fast float %4252, 0x3F847AE140000000
  br label %4254

; <label>:4254                                    ; preds = %4241, %4038, %3983, %3980, %3951, %3913
  %4255 = phi float [ %3965, %3951 ], [ -1.310720e+05, %3913 ], [ %4157, %4241 ], [ -1.310720e+05, %3983 ], [ -1.310720e+05, %4038 ], [ -1.310720e+05, %3980 ]
  %4256 = phi float [ %3975, %3951 ], [ 0.000000e+00, %3913 ], [ %4249, %4241 ], [ 0.000000e+00, %3983 ], [ 0.000000e+00, %4038 ], [ 0.000000e+00, %3980 ]
  %4257 = phi float [ %3977, %3951 ], [ 0.000000e+00, %3913 ], [ %4251, %4241 ], [ 0.000000e+00, %3983 ], [ 0.000000e+00, %4038 ], [ 0.000000e+00, %3980 ]
  %4258 = phi float [ %3979, %3951 ], [ 0.000000e+00, %3913 ], [ %4253, %4241 ], [ 0.000000e+00, %3983 ], [ 0.000000e+00, %4038 ], [ 0.000000e+00, %3980 ]
  %4259 = phi i1 [ true, %3951 ], [ false, %3913 ], [ true, %4241 ], [ false, %3983 ], [ false, %4038 ], [ false, %3980 ]
  %4260 = and i32 %181, 3
  %4261 = icmp eq i32 %4260, 1
  %4262 = select i1 %4261, float 1.000000e+00, float 0.000000e+00
  %4263 = fsub fast float %4255, %165
  %4264 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4265 = select i1 %4259, float %4264, float 1.000000e+00
  %4266 = fmul fast float %4265, %4262
  %4267 = icmp eq i32 %4260, 3
  %4268 = select i1 %4267, float 1.000000e+00, float %4266
  %4269 = call float @dx.op.binary.f32(i32 35, float %3856, float %4268)  ; FMax(a,b)
  %4270 = fcmp fast olt float %4268, 1.000000e+00
  %4271 = fcmp uge float %47, 0.000000e+00
  %4272 = and i1 %4271, %4270
  br i1 %4272, label %4273, label %4283

; <label>:4273                                    ; preds = %4254
  %4274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %47, float %48, float %49, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = extractvalue %dx.types.ResRet.f32 %4274, 1
  %4277 = extractvalue %dx.types.ResRet.f32 %4274, 2
  %4278 = fadd fast float %4275, %4269
  %4279 = fcmp ule float %46, 0.000000e+00
  %4280 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4281 = select i1 %4279, float %4280, float 1.000000e+00
  %4282 = fmul fast float %4281, %4277
  br label %4283

; <label>:4283                                    ; preds = %4273, %4254
  %4284 = phi float [ %4278, %4273 ], [ %4269, %4254 ]
  %4285 = phi float [ %4276, %4273 ], [ 0.000000e+00, %4254 ]
  %4286 = phi float [ %4282, %4273 ], [ 0.000000e+00, %4254 ]
  %4287 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4288 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4289 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4290 = fcmp fast une float %4288, 0.000000e+00
  %4291 = fcmp fast une float %4289, 0.000000e+00
  %4292 = or i1 %4290, %4291
  br i1 %4292, label %4293, label %4852

; <label>:4293                                    ; preds = %4283
  br i1 %4290, label %4294, label %4567

; <label>:4294                                    ; preds = %4293
  %4295 = call float @dx.op.unary.f32(i32 23, float %3852)  ; Log(value)
  %4296 = fmul fast float %4295, 4.000000e+00
  %4297 = call float @dx.op.unary.f32(i32 21, float %4296)  ; Exp(value)
  %4298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4298, 0
  %4300 = fmul fast float %4299, %34
  %4301 = fmul fast float %4299, %35
  %4302 = fmul fast float %4299, %36
  %4303 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4304 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4305 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4306 = call float @dx.op.unary.f32(i32 23, float %4303)  ; Log(value)
  %4307 = call float @dx.op.unary.f32(i32 23, float %4304)  ; Log(value)
  %4308 = call float @dx.op.unary.f32(i32 23, float %4305)  ; Log(value)
  %4309 = fmul fast float %4306, 4.000000e+00
  %4310 = fmul fast float %4307, 4.000000e+00
  %4311 = fmul fast float %4308, 4.000000e+00
  %4312 = call float @dx.op.unary.f32(i32 21, float %4309)  ; Exp(value)
  %4313 = call float @dx.op.unary.f32(i32 21, float %4310)  ; Exp(value)
  %4314 = call float @dx.op.unary.f32(i32 21, float %4311)  ; Exp(value)
  %4315 = fadd fast float %4313, %4312
  %4316 = fadd fast float %4315, %4314
  %4317 = fdiv fast float 1.000000e+00, %4316
  %4318 = fmul fast float %4317, %4312
  %4319 = fcmp fast ogt float %43, 0.000000e+00
  %4320 = fcmp fast ogt float %44, 0.000000e+00
  %4321 = fcmp fast ogt float %45, 0.000000e+00
  %4322 = fcmp fast olt float %43, 0.000000e+00
  %4323 = fcmp fast olt float %44, 0.000000e+00
  %4324 = fcmp fast olt float %45, 0.000000e+00
  %4325 = zext i1 %4319 to i32
  %4326 = zext i1 %4320 to i32
  %4327 = zext i1 %4321 to i32
  %4328 = zext i1 %4322 to i32
  %4329 = zext i1 %4323 to i32
  %4330 = zext i1 %4324 to i32
  %4331 = sub nsw i32 %4325, %4328
  %4332 = sub nsw i32 %4326, %4329
  %4333 = sub nsw i32 %4327, %4330
  %4334 = call float @dx.op.unary.f32(i32 83, float %4300)  ; DerivCoarseX(value)
  %4335 = call float @dx.op.unary.f32(i32 83, float %4301)  ; DerivCoarseX(value)
  %4336 = call float @dx.op.unary.f32(i32 83, float %4302)  ; DerivCoarseX(value)
  %4337 = call float @dx.op.unary.f32(i32 84, float %4300)  ; DerivCoarseY(value)
  %4338 = call float @dx.op.unary.f32(i32 84, float %4301)  ; DerivCoarseY(value)
  %4339 = call float @dx.op.unary.f32(i32 84, float %4302)  ; DerivCoarseY(value)
  %4340 = fcmp fast ole float %213, %4318
  %4341 = fmul fast float %4317, %4315
  %4342 = fcmp fast ole float %213, %4341
  %4343 = select i1 %4342, float %4302, float %4300
  %4344 = select i1 %4342, float %4300, float %4301
  %4345 = select i1 %4340, float %4301, float %4343
  %4346 = select i1 %4340, float %4302, float %4344
  %4347 = select i1 %4342, float %4336, float %4334
  %4348 = select i1 %4342, float %4334, float %4335
  %4349 = select i1 %4340, float %4335, float %4347
  %4350 = select i1 %4340, float %4336, float %4348
  %4351 = select i1 %4342, float %4339, float %4337
  %4352 = select i1 %4342, float %4337, float %4338
  %4353 = select i1 %4340, float %4338, float %4351
  %4354 = select i1 %4340, float %4339, float %4352
  %4355 = call float @dx.op.unary.f32(i32 27, float %4345)  ; Round_ni(value)
  %4356 = call float @dx.op.unary.f32(i32 27, float %4346)  ; Round_ni(value)
  %4357 = fptosi float %4355 to i32
  %4358 = fptosi float %4356 to i32
  %4359 = xor i32 %4358, %4357
  %4360 = sitofp i32 %4359 to float
  %4361 = fptosi float %4360 to i32
  %4362 = sitofp i32 %4361 to float
  %4363 = fmul fast float %4362, 0x3FE3C6EF40000000
  %4364 = frem fast float %4355, 2.560000e+02
  %4365 = frem fast float %4356, 2.560000e+02
  %4366 = fptoui float %4364 to i32
  %4367 = fptoui float %4365 to i32
  %4368 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4366, i32 %4367, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = extractvalue %dx.types.ResRet.f32 %4368, 1
  %4371 = extractvalue %dx.types.ResRet.f32 %4368, 2
  %4372 = fadd fast float %4369, %4363
  %4373 = fadd fast float %4370, %4363
  %4374 = fadd fast float %4371, %4363
  %4375 = call float @dx.op.unary.f32(i32 22, float %4372)  ; Frc(value)
  %4376 = call float @dx.op.unary.f32(i32 22, float %4373)  ; Frc(value)
  %4377 = call float @dx.op.unary.f32(i32 22, float %4374)  ; Frc(value)
  %4378 = fmul fast float %4377, 0x401921FB60000000
  %4379 = call float @dx.op.unary.f32(i32 13, float %4378)  ; Sin(value)
  %4380 = call float @dx.op.unary.f32(i32 12, float %4378)  ; Cos(value)
  %4381 = fsub fast float -0.000000e+00, %4380
  %4382 = fmul fast float %4380, %4345
  %4383 = call float @dx.op.tertiary.f32(i32 46, float %4379, float %4346, float %4382)  ; FMad(a,b,c)
  %4384 = fmul fast float %4379, %4345
  %4385 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4346, float %4384)  ; FMad(a,b,c)
  %4386 = fadd fast float %4383, %4375
  %4387 = fadd fast float %4385, %4376
  %4388 = extractvalue %dx.types.CBufRet.f32 %4298, 3
  %4389 = bitcast float %4388 to i32
  %4390 = icmp eq i32 %4389, 0
  br i1 %4390, label %4429, label %4391

; <label>:4391                                    ; preds = %4294
  %4392 = add i32 %4389, 0
  %4393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4392, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4394 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4393, %dx.types.Handle %73, float %4386, float %4387, float undef, float undef, i32 0, i32 0, i32 undef, float %4349, float %4350, float undef, float %4353, float %4354, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4395 = extractvalue %dx.types.ResRet.f32 %4394, 0
  %4396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.f32 %4396, 1
  %4398 = extractvalue %dx.types.CBufRet.f32 %4396, 2
  %4399 = fsub fast float 1.000000e+00, %4288
  %4400 = call float @dx.op.binary.f32(i32 35, float %4399, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4401 = bitcast float %4288 to i32
  %4402 = sitofp i32 %4401 to float
  %4403 = fadd fast float %4402, 0xC1CFBF8940000000
  %4404 = fmul fast float %4398, %4403
  %4405 = fadd fast float %4404, 0x41CFBF8940000000
  %4406 = fptosi float %4405 to i32
  %4407 = bitcast i32 %4406 to float
  %4408 = bitcast float %4400 to i32
  %4409 = sitofp i32 %4408 to float
  %4410 = fadd fast float %4409, 0xC1CFBF8940000000
  %4411 = fmul fast float %4410, %4398
  %4412 = fadd fast float %4411, 0x41CFBF8940000000
  %4413 = fptosi float %4412 to i32
  %4414 = bitcast i32 %4413 to float
  %4415 = fmul fast float %4407, %4397
  %4416 = fmul fast float %4414, %4397
  %4417 = fsub fast float %4400, %4415
  %4418 = fadd fast float %4416, %4400
  %4419 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4420 = call float @dx.op.unary.f32(i32 7, float %4418)  ; Saturate(value)
  %4421 = fsub fast float %4395, %4419
  %4422 = fsub fast float %4420, %4419
  %4423 = bitcast float %4422 to i32
  %4424 = sub nsw i32 2129859010, %4423
  %4425 = bitcast i32 %4424 to float
  %4426 = fmul fast float %4425, %4421
  %4427 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4428 = fcmp fast olt float %4427, 0x3F70101020000000
  br i1 %4428, label %4567, label %4429

; <label>:4429                                    ; preds = %4391, %4294
  %4430 = phi float [ %4427, %4391 ], [ %4288, %4294 ]
  %4431 = fmul fast float %4430, %4297
  %4432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.i32 %4432, 1
  %4434 = extractvalue %dx.types.CBufRet.i32 %4432, 0
  %4435 = add i32 %4434, 0
  %4436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4437 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4436, %dx.types.Handle %72, float %4386, float %4387, float undef, float undef, i32 0, i32 0, i32 undef, float %4349, float %4350, float undef, float %4353, float %4354, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4438 = extractvalue %dx.types.ResRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.ResRet.f32 %4437, 1
  %4440 = extractvalue %dx.types.ResRet.f32 %4437, 2
  %4441 = extractvalue %dx.types.ResRet.f32 %4437, 3
  %4442 = and i32 %4433, 255
  %4443 = uitofp i32 %4442 to float
  %4444 = lshr i32 %4433, 8
  %4445 = and i32 %4444, 255
  %4446 = uitofp i32 %4445 to float
  %4447 = fmul fast float %4441, %4443
  %4448 = fadd fast float %4447, %4446
  %4449 = fmul fast float %4448, 0x3F70101000000000
  %4450 = fadd fast float %4449, 0xBFB99999A0000000
  %4451 = call float @dx.op.unary.f32(i32 7, float %4450)  ; Saturate(value)
  %4452 = fmul fast float %4451, 0x3FF1C71C80000000
  %4453 = call float @dx.op.binary.f32(i32 36, float %4449, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4454 = fsub fast float 1.000000e+00, %4452
  %4455 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4456 = fmul fast float %4455, %4438
  %4457 = fmul fast float %4455, %4439
  %4458 = fmul fast float %4455, %4440
  %4459 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4460 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4461 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4462 = fmul fast float %4452, %4438
  %4463 = fmul fast float %4452, %4439
  %4464 = fmul fast float %4452, %4440
  %4465 = fadd fast float %4462, %4453
  %4466 = fadd fast float %4463, %4453
  %4467 = fadd fast float %4464, %4453
  %4468 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4469 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4470 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.i32 %4471, 3
  %4473 = extractvalue %dx.types.CBufRet.i32 %4471, 2
  %4474 = add i32 %4473, 0
  %4475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4474, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4476 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4475, %dx.types.Handle %72, float %4386, float %4387, float undef, float undef, i32 0, i32 0, i32 undef, float %4349, float %4350, float undef, float %4353, float %4354, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4477 = extractvalue %dx.types.ResRet.f32 %4476, 0
  %4478 = extractvalue %dx.types.ResRet.f32 %4476, 1
  %4479 = extractvalue %dx.types.ResRet.f32 %4476, 2
  %4480 = extractvalue %dx.types.ResRet.f32 %4476, 3
  %4481 = and i32 %4472, 255
  %4482 = uitofp i32 %4481 to float
  %4483 = lshr i32 %4472, 8
  %4484 = and i32 %4483, 255
  %4485 = uitofp i32 %4484 to float
  %4486 = lshr i32 %4472, 16
  %4487 = and i32 %4486, 255
  %4488 = uitofp i32 %4487 to float
  %4489 = fmul fast float %4488, 0x3F70101000000000
  %4490 = fmul fast float %4477, %4482
  %4491 = fadd fast float %4490, %4485
  %4492 = fmul fast float %4491, 0x3F70101000000000
  %4493 = fadd fast float %4478, -5.000000e-01
  %4494 = fadd fast float %4480, -5.000000e-01
  %4495 = fmul fast float %4493, %4489
  %4496 = fmul fast float %4494, %4489
  %4497 = fadd fast float %4495, 5.000000e-01
  %4498 = fadd fast float %4496, 5.000000e-01
  %4499 = fmul fast float %4497, 2.000000e+00
  %4500 = fadd fast float %4499, -1.000000e+00
  %4501 = fmul fast float %4498, 2.000000e+00
  %4502 = fadd fast float %4501, -1.000000e+00
  %4503 = fadd fast float %4500, %4502
  %4504 = fmul fast float %4503, 5.000000e-01
  %4505 = fsub fast float %4500, %4502
  %4506 = fmul fast float %4505, 5.000000e-01
  %4507 = call float @dx.op.unary.f32(i32 6, float %4504)  ; FAbs(value)
  %4508 = fsub fast float 1.000000e+00, %4507
  %4509 = call float @dx.op.unary.f32(i32 6, float %4506)  ; FAbs(value)
  %4510 = fsub fast float %4508, %4509
  %4511 = call float @dx.op.dot3.f32(i32 55, float %4504, float %4506, float %4510, float %4504, float %4506, float %4510)  ; Dot3(ax,ay,az,bx,by,bz)
  %4512 = call float @dx.op.unary.f32(i32 25, float %4511)  ; Rsqrt(value)
  %4513 = fmul fast float %4504, %4512
  %4514 = fmul fast float %4506, %4512
  %4515 = select i1 %4342, i32 %4332, i32 %4333
  %4516 = select i1 %4340, i32 %4331, i32 %4515
  %4517 = sitofp i32 %4516 to float
  %4518 = fmul fast float %4510, %4517
  %4519 = fmul fast float %4518, %4512
  %4520 = select i1 %4342, float %4519, float %4514
  %4521 = select i1 %4342, float %4514, float %4519
  %4522 = select i1 %4340, float %4519, float %4513
  %4523 = select i1 %4340, float %4514, float %4520
  %4524 = select i1 %4340, float %4513, float %4521
  %4525 = fsub fast float %4459, %3892
  %4526 = fsub fast float %4460, %3893
  %4527 = fsub fast float %4461, %3894
  %4528 = fmul fast float %4525, %4431
  %4529 = fmul fast float %4526, %4431
  %4530 = fmul fast float %4527, %4431
  %4531 = fadd fast float %4528, %3892
  %4532 = fadd fast float %4529, %3893
  %4533 = fadd fast float %4530, %3894
  %4534 = fsub fast float %4468, %3877
  %4535 = fsub fast float %4469, %3878
  %4536 = fsub fast float %4470, %3879
  %4537 = fmul fast float %4534, %4431
  %4538 = fmul fast float %4535, %4431
  %4539 = fmul fast float %4536, %4431
  %4540 = fadd fast float %4537, %3877
  %4541 = fadd fast float %4538, %3878
  %4542 = fadd fast float %4539, %3879
  %4543 = fadd fast float %4522, %3840
  %4544 = fadd fast float %4523, %3841
  %4545 = fadd fast float %4524, %3842
  %4546 = call float @dx.op.dot3.f32(i32 55, float %4543, float %4544, float %4545, float %4543, float %4544, float %4545)  ; Dot3(ax,ay,az,bx,by,bz)
  %4547 = call float @dx.op.unary.f32(i32 25, float %4546)  ; Rsqrt(value)
  %4548 = fmul fast float %4543, %4547
  %4549 = fmul fast float %4544, %4547
  %4550 = fmul fast float %4545, %4547
  %4551 = fsub fast float %4548, %3840
  %4552 = fsub fast float %4549, %3841
  %4553 = fsub fast float %4550, %3842
  %4554 = fmul fast float %4551, %4431
  %4555 = fmul fast float %4552, %4431
  %4556 = fmul fast float %4553, %4431
  %4557 = fadd fast float %4554, %3840
  %4558 = fadd fast float %4555, %3841
  %4559 = fadd fast float %4556, %3842
  %4560 = call float @dx.op.binary.f32(i32 36, float %3852, float %4479)  ; FMin(a,b)
  %4561 = fsub fast float %4560, %3852
  %4562 = fmul fast float %4561, %4431
  %4563 = fadd fast float %4562, %3852
  %4564 = fsub fast float %4492, %3880
  %4565 = fmul fast float %4564, %4431
  %4566 = fadd fast float %4565, %3880
  br label %4567

; <label>:4567                                    ; preds = %4429, %4391, %4293
  %4568 = phi float [ %4540, %4429 ], [ %3877, %4391 ], [ %3877, %4293 ]
  %4569 = phi float [ %4541, %4429 ], [ %3878, %4391 ], [ %3878, %4293 ]
  %4570 = phi float [ %4542, %4429 ], [ %3879, %4391 ], [ %3879, %4293 ]
  %4571 = phi float [ %4531, %4429 ], [ %3892, %4391 ], [ %3892, %4293 ]
  %4572 = phi float [ %4532, %4429 ], [ %3893, %4391 ], [ %3893, %4293 ]
  %4573 = phi float [ %4533, %4429 ], [ %3894, %4391 ], [ %3894, %4293 ]
  %4574 = phi float [ %4557, %4429 ], [ %3840, %4391 ], [ %3840, %4293 ]
  %4575 = phi float [ %4558, %4429 ], [ %3841, %4391 ], [ %3841, %4293 ]
  %4576 = phi float [ %4559, %4429 ], [ %3842, %4391 ], [ %3842, %4293 ]
  %4577 = phi float [ %4566, %4429 ], [ %3880, %4391 ], [ %3880, %4293 ]
  %4578 = phi float [ %4563, %4429 ], [ %3852, %4391 ], [ %3852, %4293 ]
  br i1 %4291, label %4579, label %4852

; <label>:4579                                    ; preds = %4567
  %4580 = call float @dx.op.unary.f32(i32 23, float %4578)  ; Log(value)
  %4581 = fmul fast float %4580, 4.000000e+00
  %4582 = call float @dx.op.unary.f32(i32 21, float %4581)  ; Exp(value)
  %4583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.f32 %4583, 0
  %4585 = fmul fast float %4584, %34
  %4586 = fmul fast float %4584, %35
  %4587 = fmul fast float %4584, %36
  %4588 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4589 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4590 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4591 = call float @dx.op.unary.f32(i32 23, float %4588)  ; Log(value)
  %4592 = call float @dx.op.unary.f32(i32 23, float %4589)  ; Log(value)
  %4593 = call float @dx.op.unary.f32(i32 23, float %4590)  ; Log(value)
  %4594 = fmul fast float %4591, 4.000000e+00
  %4595 = fmul fast float %4592, 4.000000e+00
  %4596 = fmul fast float %4593, 4.000000e+00
  %4597 = call float @dx.op.unary.f32(i32 21, float %4594)  ; Exp(value)
  %4598 = call float @dx.op.unary.f32(i32 21, float %4595)  ; Exp(value)
  %4599 = call float @dx.op.unary.f32(i32 21, float %4596)  ; Exp(value)
  %4600 = fadd fast float %4598, %4597
  %4601 = fadd fast float %4600, %4599
  %4602 = fdiv fast float 1.000000e+00, %4601
  %4603 = fmul fast float %4602, %4597
  %4604 = fcmp fast ogt float %43, 0.000000e+00
  %4605 = fcmp fast ogt float %44, 0.000000e+00
  %4606 = fcmp fast ogt float %45, 0.000000e+00
  %4607 = fcmp fast olt float %43, 0.000000e+00
  %4608 = fcmp fast olt float %44, 0.000000e+00
  %4609 = fcmp fast olt float %45, 0.000000e+00
  %4610 = zext i1 %4604 to i32
  %4611 = zext i1 %4605 to i32
  %4612 = zext i1 %4606 to i32
  %4613 = zext i1 %4607 to i32
  %4614 = zext i1 %4608 to i32
  %4615 = zext i1 %4609 to i32
  %4616 = sub nsw i32 %4610, %4613
  %4617 = sub nsw i32 %4611, %4614
  %4618 = sub nsw i32 %4612, %4615
  %4619 = call float @dx.op.unary.f32(i32 83, float %4585)  ; DerivCoarseX(value)
  %4620 = call float @dx.op.unary.f32(i32 83, float %4586)  ; DerivCoarseX(value)
  %4621 = call float @dx.op.unary.f32(i32 83, float %4587)  ; DerivCoarseX(value)
  %4622 = call float @dx.op.unary.f32(i32 84, float %4585)  ; DerivCoarseY(value)
  %4623 = call float @dx.op.unary.f32(i32 84, float %4586)  ; DerivCoarseY(value)
  %4624 = call float @dx.op.unary.f32(i32 84, float %4587)  ; DerivCoarseY(value)
  %4625 = fcmp fast ole float %213, %4603
  %4626 = fmul fast float %4602, %4600
  %4627 = fcmp fast ole float %213, %4626
  %4628 = select i1 %4627, float %4587, float %4585
  %4629 = select i1 %4627, float %4585, float %4586
  %4630 = select i1 %4625, float %4586, float %4628
  %4631 = select i1 %4625, float %4587, float %4629
  %4632 = select i1 %4627, float %4621, float %4619
  %4633 = select i1 %4627, float %4619, float %4620
  %4634 = select i1 %4625, float %4620, float %4632
  %4635 = select i1 %4625, float %4621, float %4633
  %4636 = select i1 %4627, float %4624, float %4622
  %4637 = select i1 %4627, float %4622, float %4623
  %4638 = select i1 %4625, float %4623, float %4636
  %4639 = select i1 %4625, float %4624, float %4637
  %4640 = call float @dx.op.unary.f32(i32 27, float %4630)  ; Round_ni(value)
  %4641 = call float @dx.op.unary.f32(i32 27, float %4631)  ; Round_ni(value)
  %4642 = fptosi float %4640 to i32
  %4643 = fptosi float %4641 to i32
  %4644 = xor i32 %4643, %4642
  %4645 = sitofp i32 %4644 to float
  %4646 = fptosi float %4645 to i32
  %4647 = sitofp i32 %4646 to float
  %4648 = fmul fast float %4647, 0x3FE3C6EF40000000
  %4649 = frem fast float %4640, 2.560000e+02
  %4650 = frem fast float %4641, 2.560000e+02
  %4651 = fptoui float %4649 to i32
  %4652 = fptoui float %4650 to i32
  %4653 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4651, i32 %4652, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4654 = extractvalue %dx.types.ResRet.f32 %4653, 0
  %4655 = extractvalue %dx.types.ResRet.f32 %4653, 1
  %4656 = extractvalue %dx.types.ResRet.f32 %4653, 2
  %4657 = fadd fast float %4654, %4648
  %4658 = fadd fast float %4655, %4648
  %4659 = fadd fast float %4656, %4648
  %4660 = call float @dx.op.unary.f32(i32 22, float %4657)  ; Frc(value)
  %4661 = call float @dx.op.unary.f32(i32 22, float %4658)  ; Frc(value)
  %4662 = call float @dx.op.unary.f32(i32 22, float %4659)  ; Frc(value)
  %4663 = fmul fast float %4662, 0x401921FB60000000
  %4664 = call float @dx.op.unary.f32(i32 13, float %4663)  ; Sin(value)
  %4665 = call float @dx.op.unary.f32(i32 12, float %4663)  ; Cos(value)
  %4666 = fsub fast float -0.000000e+00, %4665
  %4667 = fmul fast float %4665, %4630
  %4668 = call float @dx.op.tertiary.f32(i32 46, float %4664, float %4631, float %4667)  ; FMad(a,b,c)
  %4669 = fmul fast float %4664, %4630
  %4670 = call float @dx.op.tertiary.f32(i32 46, float %4666, float %4631, float %4669)  ; FMad(a,b,c)
  %4671 = fadd fast float %4668, %4660
  %4672 = fadd fast float %4670, %4661
  %4673 = extractvalue %dx.types.CBufRet.f32 %4583, 3
  %4674 = bitcast float %4673 to i32
  %4675 = icmp eq i32 %4674, 0
  br i1 %4675, label %4714, label %4676

; <label>:4676                                    ; preds = %4579
  %4677 = add i32 %4674, 0
  %4678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4677, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4679 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4678, %dx.types.Handle %73, float %4671, float %4672, float undef, float undef, i32 0, i32 0, i32 undef, float %4634, float %4635, float undef, float %4638, float %4639, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4680 = extractvalue %dx.types.ResRet.f32 %4679, 0
  %4681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4682 = extractvalue %dx.types.CBufRet.f32 %4681, 1
  %4683 = extractvalue %dx.types.CBufRet.f32 %4681, 2
  %4684 = fsub fast float 1.000000e+00, %4289
  %4685 = call float @dx.op.binary.f32(i32 35, float %4684, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4686 = bitcast float %4289 to i32
  %4687 = sitofp i32 %4686 to float
  %4688 = fadd fast float %4687, 0xC1CFBF8940000000
  %4689 = fmul fast float %4683, %4688
  %4690 = fadd fast float %4689, 0x41CFBF8940000000
  %4691 = fptosi float %4690 to i32
  %4692 = bitcast i32 %4691 to float
  %4693 = bitcast float %4685 to i32
  %4694 = sitofp i32 %4693 to float
  %4695 = fadd fast float %4694, 0xC1CFBF8940000000
  %4696 = fmul fast float %4695, %4683
  %4697 = fadd fast float %4696, 0x41CFBF8940000000
  %4698 = fptosi float %4697 to i32
  %4699 = bitcast i32 %4698 to float
  %4700 = fmul fast float %4692, %4682
  %4701 = fmul fast float %4699, %4682
  %4702 = fsub fast float %4685, %4700
  %4703 = fadd fast float %4701, %4685
  %4704 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4705 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4706 = fsub fast float %4680, %4704
  %4707 = fsub fast float %4705, %4704
  %4708 = bitcast float %4707 to i32
  %4709 = sub nsw i32 2129859010, %4708
  %4710 = bitcast i32 %4709 to float
  %4711 = fmul fast float %4710, %4706
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = fcmp fast olt float %4712, 0x3F70101020000000
  br i1 %4713, label %4852, label %4714

; <label>:4714                                    ; preds = %4676, %4579
  %4715 = phi float [ %4712, %4676 ], [ %4289, %4579 ]
  %4716 = fmul fast float %4715, %4582
  %4717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4718 = extractvalue %dx.types.CBufRet.i32 %4717, 1
  %4719 = extractvalue %dx.types.CBufRet.i32 %4717, 0
  %4720 = add i32 %4719, 0
  %4721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4720, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4722 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4721, %dx.types.Handle %72, float %4671, float %4672, float undef, float undef, i32 0, i32 0, i32 undef, float %4634, float %4635, float undef, float %4638, float %4639, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4723 = extractvalue %dx.types.ResRet.f32 %4722, 0
  %4724 = extractvalue %dx.types.ResRet.f32 %4722, 1
  %4725 = extractvalue %dx.types.ResRet.f32 %4722, 2
  %4726 = extractvalue %dx.types.ResRet.f32 %4722, 3
  %4727 = and i32 %4718, 255
  %4728 = uitofp i32 %4727 to float
  %4729 = lshr i32 %4718, 8
  %4730 = and i32 %4729, 255
  %4731 = uitofp i32 %4730 to float
  %4732 = fmul fast float %4726, %4728
  %4733 = fadd fast float %4732, %4731
  %4734 = fmul fast float %4733, 0x3F70101000000000
  %4735 = fadd fast float %4734, 0xBFB99999A0000000
  %4736 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4737 = fmul fast float %4736, 0x3FF1C71C80000000
  %4738 = call float @dx.op.binary.f32(i32 36, float %4734, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4739 = fsub fast float 1.000000e+00, %4737
  %4740 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4741 = fmul fast float %4740, %4723
  %4742 = fmul fast float %4740, %4724
  %4743 = fmul fast float %4740, %4725
  %4744 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4745 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4746 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4747 = fmul fast float %4737, %4723
  %4748 = fmul fast float %4737, %4724
  %4749 = fmul fast float %4737, %4725
  %4750 = fadd fast float %4747, %4738
  %4751 = fadd fast float %4748, %4738
  %4752 = fadd fast float %4749, %4738
  %4753 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4754 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4755 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.i32 %4756, 3
  %4758 = extractvalue %dx.types.CBufRet.i32 %4756, 2
  %4759 = add i32 %4758, 0
  %4760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4759, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4761 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4760, %dx.types.Handle %72, float %4671, float %4672, float undef, float undef, i32 0, i32 0, i32 undef, float %4634, float %4635, float undef, float %4638, float %4639, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4762 = extractvalue %dx.types.ResRet.f32 %4761, 0
  %4763 = extractvalue %dx.types.ResRet.f32 %4761, 1
  %4764 = extractvalue %dx.types.ResRet.f32 %4761, 2
  %4765 = extractvalue %dx.types.ResRet.f32 %4761, 3
  %4766 = and i32 %4757, 255
  %4767 = uitofp i32 %4766 to float
  %4768 = lshr i32 %4757, 8
  %4769 = and i32 %4768, 255
  %4770 = uitofp i32 %4769 to float
  %4771 = lshr i32 %4757, 16
  %4772 = and i32 %4771, 255
  %4773 = uitofp i32 %4772 to float
  %4774 = fmul fast float %4773, 0x3F70101000000000
  %4775 = fmul fast float %4762, %4767
  %4776 = fadd fast float %4775, %4770
  %4777 = fmul fast float %4776, 0x3F70101000000000
  %4778 = fadd fast float %4763, -5.000000e-01
  %4779 = fadd fast float %4765, -5.000000e-01
  %4780 = fmul fast float %4778, %4774
  %4781 = fmul fast float %4779, %4774
  %4782 = fadd fast float %4780, 5.000000e-01
  %4783 = fadd fast float %4781, 5.000000e-01
  %4784 = fmul fast float %4782, 2.000000e+00
  %4785 = fadd fast float %4784, -1.000000e+00
  %4786 = fmul fast float %4783, 2.000000e+00
  %4787 = fadd fast float %4786, -1.000000e+00
  %4788 = fadd fast float %4785, %4787
  %4789 = fmul fast float %4788, 5.000000e-01
  %4790 = fsub fast float %4785, %4787
  %4791 = fmul fast float %4790, 5.000000e-01
  %4792 = call float @dx.op.unary.f32(i32 6, float %4789)  ; FAbs(value)
  %4793 = fsub fast float 1.000000e+00, %4792
  %4794 = call float @dx.op.unary.f32(i32 6, float %4791)  ; FAbs(value)
  %4795 = fsub fast float %4793, %4794
  %4796 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4791, float %4795, float %4789, float %4791, float %4795)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = call float @dx.op.unary.f32(i32 25, float %4796)  ; Rsqrt(value)
  %4798 = fmul fast float %4789, %4797
  %4799 = fmul fast float %4791, %4797
  %4800 = select i1 %4627, i32 %4617, i32 %4618
  %4801 = select i1 %4625, i32 %4616, i32 %4800
  %4802 = sitofp i32 %4801 to float
  %4803 = fmul fast float %4795, %4802
  %4804 = fmul fast float %4803, %4797
  %4805 = select i1 %4627, float %4804, float %4799
  %4806 = select i1 %4627, float %4799, float %4804
  %4807 = select i1 %4625, float %4804, float %4798
  %4808 = select i1 %4625, float %4799, float %4805
  %4809 = select i1 %4625, float %4798, float %4806
  %4810 = fsub fast float %4744, %4571
  %4811 = fsub fast float %4745, %4572
  %4812 = fsub fast float %4746, %4573
  %4813 = fmul fast float %4810, %4716
  %4814 = fmul fast float %4811, %4716
  %4815 = fmul fast float %4812, %4716
  %4816 = fadd fast float %4813, %4571
  %4817 = fadd fast float %4814, %4572
  %4818 = fadd fast float %4815, %4573
  %4819 = fsub fast float %4753, %4568
  %4820 = fsub fast float %4754, %4569
  %4821 = fsub fast float %4755, %4570
  %4822 = fmul fast float %4819, %4716
  %4823 = fmul fast float %4820, %4716
  %4824 = fmul fast float %4821, %4716
  %4825 = fadd fast float %4822, %4568
  %4826 = fadd fast float %4823, %4569
  %4827 = fadd fast float %4824, %4570
  %4828 = fadd fast float %4807, %4574
  %4829 = fadd fast float %4808, %4575
  %4830 = fadd fast float %4809, %4576
  %4831 = call float @dx.op.dot3.f32(i32 55, float %4828, float %4829, float %4830, float %4828, float %4829, float %4830)  ; Dot3(ax,ay,az,bx,by,bz)
  %4832 = call float @dx.op.unary.f32(i32 25, float %4831)  ; Rsqrt(value)
  %4833 = fmul fast float %4828, %4832
  %4834 = fmul fast float %4829, %4832
  %4835 = fmul fast float %4830, %4832
  %4836 = fsub fast float %4833, %4574
  %4837 = fsub fast float %4834, %4575
  %4838 = fsub fast float %4835, %4576
  %4839 = fmul fast float %4836, %4716
  %4840 = fmul fast float %4837, %4716
  %4841 = fmul fast float %4838, %4716
  %4842 = fadd fast float %4839, %4574
  %4843 = fadd fast float %4840, %4575
  %4844 = fadd fast float %4841, %4576
  %4845 = call float @dx.op.binary.f32(i32 36, float %4578, float %4764)  ; FMin(a,b)
  %4846 = fsub fast float %4845, %4578
  %4847 = fmul fast float %4846, %4716
  %4848 = fadd fast float %4847, %4578
  %4849 = fsub fast float %4777, %4577
  %4850 = fmul fast float %4849, %4716
  %4851 = fadd fast float %4850, %4577
  br label %4852

; <label>:4852                                    ; preds = %4714, %4676, %4567, %4283
  %4853 = phi float [ %4825, %4714 ], [ %4568, %4676 ], [ %4568, %4567 ], [ %3877, %4283 ]
  %4854 = phi float [ %4826, %4714 ], [ %4569, %4676 ], [ %4569, %4567 ], [ %3878, %4283 ]
  %4855 = phi float [ %4827, %4714 ], [ %4570, %4676 ], [ %4570, %4567 ], [ %3879, %4283 ]
  %4856 = phi float [ %4816, %4714 ], [ %4571, %4676 ], [ %4571, %4567 ], [ %3892, %4283 ]
  %4857 = phi float [ %4817, %4714 ], [ %4572, %4676 ], [ %4572, %4567 ], [ %3893, %4283 ]
  %4858 = phi float [ %4818, %4714 ], [ %4573, %4676 ], [ %4573, %4567 ], [ %3894, %4283 ]
  %4859 = phi float [ %4842, %4714 ], [ %4574, %4676 ], [ %4574, %4567 ], [ %3840, %4283 ]
  %4860 = phi float [ %4843, %4714 ], [ %4575, %4676 ], [ %4575, %4567 ], [ %3841, %4283 ]
  %4861 = phi float [ %4844, %4714 ], [ %4576, %4676 ], [ %4576, %4567 ], [ %3842, %4283 ]
  %4862 = phi float [ %4851, %4714 ], [ %4577, %4676 ], [ %4577, %4567 ], [ %3880, %4283 ]
  %4863 = phi float [ %4848, %4714 ], [ %4578, %4676 ], [ %4578, %4567 ], [ %3852, %4283 ]
  %4864 = fcmp fast une float %4287, 0.000000e+00
  %4865 = call float @dx.op.dot3.f32(i32 55, float %163, float %164, float %165, float %163, float %164, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %4866 = call float @dx.op.unary.f32(i32 25, float %4865)  ; Rsqrt(value)
  br i1 %4864, label %4874, label %4867

; <label>:4867                                    ; preds = %4852
  %4868 = fmul fast float %4866, %163
  %4869 = fmul fast float %4866, %164
  %4870 = fmul fast float %4866, %165
  %4871 = fsub fast float -0.000000e+00, %4868
  %4872 = fsub fast float -0.000000e+00, %4869
  %4873 = fsub fast float -0.000000e+00, %4870
  br label %5041

; <label>:4874                                    ; preds = %4852
  %4875 = fmul fast float %163, %4866
  %4876 = fsub fast float -0.000000e+00, %4875
  %4877 = fmul fast float %164, %4866
  %4878 = fsub fast float -0.000000e+00, %4877
  %4879 = fmul fast float %165, %4866
  %4880 = fsub fast float -0.000000e+00, %4879
  %4881 = call float @dx.op.dot3.f32(i32 55, float %4876, float %4878, float %4880, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4882 = fmul fast float %4287, 2.500000e+00
  %4883 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4884 = fmul fast float %4287, 0x4013FFFFE0000000
  %4885 = fadd fast float %4884, 0xBFFFFFFFE0000000
  %4886 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4887 = fmul fast float %4287, 0x4004000020000000
  %4888 = fadd fast float %4887, 0xBFF8000040000000
  %4889 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4890 = fmul fast float %3859, 1.000000e+01
  %4891 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4892 = fmul fast float %4891, 2.000000e+00
  %4893 = fsub fast float 3.000000e+00, %4892
  %4894 = fmul fast float %4891, %4891
  %4895 = fmul fast float %4894, %4893
  %4896 = fsub fast float 1.000000e+00, %4895
  %4897 = fsub fast float 0x3FE3333340000000, %4862
  %4898 = fmul fast float %4897, 0x400AAAAAA0000000
  %4899 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4900 = fmul fast float %4896, %4899
  %4901 = fmul fast float %4856, 0x3FEA2B8620000000
  %4902 = fmul fast float %4857, 0x3FEA2B8620000000
  %4903 = fmul fast float %4858, 0x3FEA2B8620000000
  %4904 = fadd fast float %4901, 0x3FC81DFBA0000000
  %4905 = fmul fast float %4904, %4856
  %4906 = fadd fast float %4905, 0x3F910E6020000000
  %4907 = fadd fast float %4902, 0x3FC81DFBA0000000
  %4908 = fmul fast float %4907, %4857
  %4909 = fadd fast float %4908, 0x3F910E6020000000
  %4910 = fadd fast float %4903, 0x3FC81DFBA0000000
  %4911 = fmul fast float %4910, %4858
  %4912 = fadd fast float %4911, 0x3F910E6020000000
  %4913 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4914 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4915 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4916 = fsub fast float %4913, %4856
  %4917 = fsub fast float %4914, %4857
  %4918 = fsub fast float %4915, %4858
  %4919 = fmul fast float %4916, %4883
  %4920 = fmul fast float %4919, %4900
  %4921 = fmul fast float %4917, %4883
  %4922 = fmul fast float %4921, %4900
  %4923 = fmul fast float %4918, %4883
  %4924 = fmul fast float %4923, %4900
  %4925 = fadd fast float %4920, %4856
  %4926 = fadd fast float %4922, %4857
  %4927 = fadd fast float %4924, %4858
  %4928 = fmul fast float %4863, %4863
  %4929 = fmul fast float %4928, %4928
  %4930 = fadd fast float %4886, 1.000000e+00
  %4931 = fsub fast float %4930, %4900
  %4932 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4933 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4934 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4935 = fsub fast float 1.000000e+00, %4929
  %4936 = call float @dx.op.binary.f32(i32 36, float %4932, float %4935)  ; FMin(a,b)
  %4937 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4938 = call float @dx.op.binary.f32(i32 35, float %4936, float %4937)  ; FMax(a,b)
  %4939 = fadd fast float %4934, 0xBFE4CCCCC0000000
  %4940 = fmul fast float %4939, 0x4006DB6DA0000000
  %4941 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4942 = fmul fast float %4941, 2.000000e+00
  %4943 = fsub fast float 3.000000e+00, %4942
  %4944 = bitcast float %4853 to i32
  %4945 = ashr i32 %4944, 1
  %4946 = add nsw i32 %4945, 532487669
  %4947 = bitcast i32 %4946 to float
  %4948 = fsub fast float 1.000000e+00, %4947
  %4949 = bitcast float %4948 to i32
  %4950 = sub nsw i32 2129859010, %4949
  %4951 = bitcast i32 %4950 to float
  %4952 = fmul fast float %4951, 2.000000e+00
  %4953 = bitcast float %4854 to i32
  %4954 = ashr i32 %4953, 1
  %4955 = add nsw i32 %4954, 532487669
  %4956 = bitcast i32 %4955 to float
  %4957 = fsub fast float 1.000000e+00, %4956
  %4958 = bitcast float %4957 to i32
  %4959 = sub nsw i32 2129859010, %4958
  %4960 = bitcast i32 %4959 to float
  %4961 = fmul fast float %4960, 2.000000e+00
  %4962 = bitcast float %4855 to i32
  %4963 = ashr i32 %4962, 1
  %4964 = add nsw i32 %4963, 532487669
  %4965 = bitcast i32 %4964 to float
  %4966 = fsub fast float 1.000000e+00, %4965
  %4967 = bitcast float %4966 to i32
  %4968 = sub nsw i32 2129859010, %4967
  %4969 = bitcast i32 %4968 to float
  %4970 = fmul fast float %4969, 2.000000e+00
  %4971 = fsub fast float 0x4002A9FBE0000000, %4952
  %4972 = fadd fast float %4952, 0x3FD54FDF00000000
  %4973 = bitcast float %4972 to i32
  %4974 = sub nsw i32 2129859010, %4973
  %4975 = bitcast i32 %4974 to float
  %4976 = fmul fast float %4975, %4971
  %4977 = fmul fast float %4976, %4976
  %4978 = fsub fast float 0x4002A9FBE0000000, %4961
  %4979 = fadd fast float %4961, 0x3FD54FDF00000000
  %4980 = bitcast float %4979 to i32
  %4981 = sub nsw i32 2129859010, %4980
  %4982 = bitcast i32 %4981 to float
  %4983 = fmul fast float %4982, %4978
  %4984 = fmul fast float %4983, %4983
  %4985 = fsub fast float 0x4002A9FBE0000000, %4970
  %4986 = fadd fast float %4970, 0x3FD54FDF00000000
  %4987 = bitcast float %4986 to i32
  %4988 = sub nsw i32 2129859010, %4987
  %4989 = bitcast i32 %4988 to float
  %4990 = fmul fast float %4989, %4985
  %4991 = fmul fast float %4990, %4990
  %4992 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4977)  ; FMax(a,b)
  %4993 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4984)  ; FMax(a,b)
  %4994 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4991)  ; FMax(a,b)
  %4995 = fsub fast float 1.000000e+00, %4881
  %4996 = fadd fast float %4995, %4896
  %4997 = call float @dx.op.unary.f32(i32 7, float %4996)  ; Saturate(value)
  %4998 = fsub fast float 1.000000e+00, %4268
  %4999 = fmul fast float %4938, %4998
  %5000 = fmul fast float %4941, %4941
  %5001 = fmul fast float %5000, %4999
  %5002 = fmul fast float %5001, %4943
  %5003 = fmul fast float %4998, 0xBFE99999A0000000
  %5004 = fmul fast float %5003, %4883
  %5005 = fmul fast float %5004, %4900
  %5006 = fadd fast float %5005, 1.000000e+00
  %5007 = fadd fast float %4862, -1.000000e+00
  %5008 = fmul fast float %5006, %5007
  %5009 = fadd fast float %5008, 1.000000e+00
  %5010 = fsub fast float %4992, %4853
  %5011 = fsub fast float %4993, %4854
  %5012 = fsub fast float %4994, %4855
  %5013 = fmul fast float %5002, %5010
  %5014 = fmul fast float %5002, %5011
  %5015 = fmul fast float %5002, %5012
  %5016 = fadd fast float %5013, %4853
  %5017 = fadd fast float %5014, %4854
  %5018 = fadd fast float %5015, %4855
  %5019 = fsub fast float %83, %4859
  %5020 = fsub fast float %84, %4860
  %5021 = fsub fast float %85, %4861
  %5022 = fmul fast float %5002, %5019
  %5023 = fmul fast float %5002, %5020
  %5024 = fmul fast float %5002, %5021
  %5025 = fadd fast float %5022, %4859
  %5026 = fadd fast float %5023, %4860
  %5027 = fadd fast float %5024, %4861
  %5028 = fmul fast float %5002, %4997
  %5029 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5030 = fsub fast float 1.000000e+00, %5029
  %5031 = fmul fast float %5028, %5030
  %5032 = fadd fast float %5031, %5029
  %5033 = fsub fast float 1.000000e+00, %4863
  %5034 = fmul fast float %5002, %5033
  %5035 = fadd fast float %5034, %4863
  %5036 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5026, float %5027, float %5025, float %5026, float %5027)  ; Dot3(ax,ay,az,bx,by,bz)
  %5037 = call float @dx.op.unary.f32(i32 25, float %5036)  ; Rsqrt(value)
  %5038 = fmul fast float %5025, %5037
  %5039 = fmul fast float %5026, %5037
  %5040 = fmul fast float %5027, %5037
  br label %5041

; <label>:5041                                    ; preds = %4874, %4867
  %5042 = phi float [ %4873, %4867 ], [ %4880, %4874 ]
  %5043 = phi float [ %4872, %4867 ], [ %4878, %4874 ]
  %5044 = phi float [ %4871, %4867 ], [ %4876, %4874 ]
  %5045 = phi float [ %4870, %4867 ], [ %4879, %4874 ]
  %5046 = phi float [ %4869, %4867 ], [ %4877, %4874 ]
  %5047 = phi float [ %4868, %4867 ], [ %4875, %4874 ]
  %5048 = phi float [ %4853, %4867 ], [ %5016, %4874 ]
  %5049 = phi float [ %4854, %4867 ], [ %5017, %4874 ]
  %5050 = phi float [ %4855, %4867 ], [ %5018, %4874 ]
  %5051 = phi float [ %4856, %4867 ], [ %4925, %4874 ]
  %5052 = phi float [ %4857, %4867 ], [ %4926, %4874 ]
  %5053 = phi float [ %4858, %4867 ], [ %4927, %4874 ]
  %5054 = phi float [ %4859, %4867 ], [ %5038, %4874 ]
  %5055 = phi float [ %4860, %4867 ], [ %5039, %4874 ]
  %5056 = phi float [ %4861, %4867 ], [ %5040, %4874 ]
  %5057 = phi float [ %4862, %4867 ], [ %5032, %4874 ]
  %5058 = phi float [ %4863, %4867 ], [ %5035, %4874 ]
  %5059 = select i1 %202, float 0.000000e+00, float %5050
  %5060 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float %5044, float %5043, float %5042)  ; Dot3(ax,ay,az,bx,by,bz)
  %5061 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5062 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5046, float %5045, float %5054, float %5055, float %5056)  ; Dot3(ax,ay,az,bx,by,bz)
  %5063 = fmul fast float %5062, 2.000000e+00
  %5064 = fmul fast float %5063, %5054
  %5065 = fmul fast float %5063, %5055
  %5066 = fmul fast float %5063, %5056
  %5067 = fsub fast float %5047, %5064
  %5068 = fsub fast float %5046, %5065
  %5069 = fsub fast float %5045, %5066
  %5070 = call float @dx.op.binary.f32(i32 36, float %5058, float 1.000000e+00)  ; FMin(a,b)
  %5071 = fsub fast float 1.000000e+00, %5058
  %5072 = bitcast float %5071 to i32
  %5073 = sub nsw i32 2129859010, %5072
  %5074 = fsub fast float 1.000000e+00, %53
  %5075 = call float @dx.op.dot3.f32(i32 55, float %103, float %104, float %105, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = call float @dx.op.binary.f32(i32 35, float %5075, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5077 = fdiv fast float %5074, %5076
  %5078 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = fmul fast float %5079, 5.000000e-01
  %5081 = fadd fast float %5080, 5.000000e-01
  %5082 = fmul fast float %5081, %53
  %5083 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5084 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5085 = fmul fast float %5084, %5077
  %5086 = fadd fast float %5082, %5085
  %5087 = fsub fast float 5.000000e-01, %5080
  %5088 = fmul fast float %5087, %5051
  %5089 = fmul fast float %5087, %5052
  %5090 = fmul fast float %5087, %5053
  %5091 = fadd fast float %5086, %5088
  %5092 = fadd fast float %5086, %5089
  %5093 = fadd fast float %5086, %5090
  %5094 = call float @dx.op.dot3.f32(i32 55, float %5067, float %5068, float %5069, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5096 = fmul fast float %5095, 5.000000e-01
  %5097 = fadd fast float %5096, 5.000000e-01
  %5098 = fmul fast float %5097, %53
  %5099 = call float @dx.op.dot3.f32(i32 55, float %5067, float %5068, float %5069, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5101 = fmul fast float %5100, %5077
  %5102 = fadd fast float %5098, %5101
  %5103 = fsub fast float 5.000000e-01, %5096
  %5104 = fmul fast float %5103, %5051
  %5105 = fmul fast float %5103, %5052
  %5106 = fmul fast float %5103, %5053
  %5107 = fadd fast float %5102, %5104
  %5108 = fadd fast float %5102, %5105
  %5109 = fadd fast float %5102, %5106
  %5110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5111 = extractvalue %dx.types.CBufRet.f32 %5110, 0
  %5112 = call float @dx.op.binary.f32(i32 36, float %5051, float %5111)  ; FMin(a,b)
  %5113 = fsub fast float 1.000000e+00, %5070
  %5114 = fmul fast float %5112, %5113
  %5115 = fsub fast float 1.000000e+00, %5114
  %5116 = bitcast float %5115 to i32
  %5117 = sub nsw i32 2129859010, %5116
  %5118 = bitcast i32 %5117 to float
  %5119 = call float @dx.op.binary.f32(i32 36, float %5052, float %5111)  ; FMin(a,b)
  %5120 = fmul fast float %5119, %5113
  %5121 = fsub fast float 1.000000e+00, %5120
  %5122 = bitcast float %5121 to i32
  %5123 = sub nsw i32 2129859010, %5122
  %5124 = bitcast i32 %5123 to float
  %5125 = call float @dx.op.binary.f32(i32 36, float %5053, float %5111)  ; FMin(a,b)
  %5126 = fmul fast float %5125, %5113
  %5127 = fsub fast float 1.000000e+00, %5126
  %5128 = bitcast float %5127 to i32
  %5129 = sub nsw i32 2129859010, %5128
  %5130 = bitcast i32 %5129 to float
  %5131 = fmul fast float %5070, %54
  %5132 = fmul fast float %5131, %5091
  %5133 = fmul fast float %5132, %5118
  %5134 = fmul fast float %5070, %55
  %5135 = fmul fast float %5134, %5092
  %5136 = fmul fast float %5135, %5124
  %5137 = fmul fast float %5070, %56
  %5138 = fmul fast float %5137, %5093
  %5139 = fmul fast float %5138, %5130
  %5140 = call float @dx.op.binary.f32(i32 36, float %5048, float %5111)  ; FMin(a,b)
  %5141 = fmul fast float %5140, %5113
  %5142 = fsub fast float 1.000000e+00, %5141
  %5143 = bitcast float %5142 to i32
  %5144 = sub nsw i32 2129859010, %5143
  %5145 = bitcast i32 %5144 to float
  %5146 = call float @dx.op.binary.f32(i32 36, float %5049, float %5111)  ; FMin(a,b)
  %5147 = fmul fast float %5146, %5113
  %5148 = fsub fast float 1.000000e+00, %5147
  %5149 = bitcast float %5148 to i32
  %5150 = sub nsw i32 2129859010, %5149
  %5151 = bitcast i32 %5150 to float
  %5152 = call float @dx.op.binary.f32(i32 36, float %5059, float %5111)  ; FMin(a,b)
  %5153 = fmul fast float %5152, %5113
  %5154 = fsub fast float 1.000000e+00, %5153
  %5155 = bitcast float %5154 to i32
  %5156 = sub nsw i32 2129859010, %5155
  %5157 = bitcast i32 %5156 to float
  %5158 = fmul fast float %5131, %5107
  %5159 = fmul fast float %5158, %5145
  %5160 = fmul fast float %5134, %5108
  %5161 = fmul fast float %5160, %5151
  %5162 = fmul fast float %5137, %5109
  %5163 = fmul fast float %5162, %5157
  %5164 = call float @dx.op.dot3.f32(i32 55, float %5133, float %5136, float %5139, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5165 = select i1 %202, float 0.000000e+00, float %5133
  %5166 = select i1 %202, float %5164, float %5136
  %5167 = select i1 %202, float 0.000000e+00, float %5139
  %5168 = call float @dx.op.dot3.f32(i32 55, float %5159, float %5161, float %5163, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5169 = select i1 %202, float 0.000000e+00, float %5159
  %5170 = select i1 %202, float %5168, float %5161
  %5171 = select i1 %202, float 0.000000e+00, float %5163
  %5172 = fmul fast float %5061, 9.843750e-01
  %5173 = fmul fast float %5057, 9.843750e-01
  %5174 = fadd fast float %5172, 7.812500e-03
  %5175 = fadd fast float %5173, 7.812500e-03
  %5176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5174, float %5175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5177 = extractvalue %dx.types.ResRet.f32 %5176, 2
  %5178 = extractvalue %dx.types.ResRet.f32 %5176, 3
  %5179 = fmul fast float %5177, %5048
  %5180 = fmul fast float %5177, %5049
  %5181 = fmul fast float %5177, %5059
  %5182 = fadd fast float %5179, %5178
  %5183 = fadd fast float %5180, %5178
  %5184 = fadd fast float %5181, %5178
  %5185 = fcmp fast ogt float %3853, 0.000000e+00
  br i1 %5185, label %5186, label %5212

; <label>:5186                                    ; preds = %5041
  %5187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3853, float %5061, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5188 = extractvalue %dx.types.ResRet.f32 %5187, 0
  %5189 = extractvalue %dx.types.ResRet.f32 %5187, 1
  %5190 = extractvalue %dx.types.ResRet.f32 %5187, 2
  %5191 = fadd fast float %5188, -5.000000e-01
  %5192 = fadd fast float %5189, -5.000000e-01
  %5193 = fadd fast float %5190, -5.000000e-01
  %5194 = fsub fast float 1.000000e+00, %5048
  %5195 = fsub fast float 1.000000e+00, %5049
  %5196 = fsub fast float 1.000000e+00, %5059
  %5197 = fmul fast float %5048, 4.000000e+00
  %5198 = fmul fast float %5197, %5194
  %5199 = fmul fast float %5198, %5191
  %5200 = fmul fast float %5049, 4.000000e+00
  %5201 = fmul fast float %5200, %5195
  %5202 = fmul fast float %5201, %5192
  %5203 = fmul fast float %5059, 4.000000e+00
  %5204 = fmul fast float %5203, %5196
  %5205 = fmul fast float %5204, %5193
  %5206 = fadd fast float %5199, %5182
  %5207 = fadd fast float %5202, %5183
  %5208 = fadd fast float %5205, %5184
  %5209 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5210 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  %5211 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  br label %5212

; <label>:5212                                    ; preds = %5186, %5041
  %5213 = phi float [ %5209, %5186 ], [ %5182, %5041 ]
  %5214 = phi float [ %5210, %5186 ], [ %5183, %5041 ]
  %5215 = phi float [ %5211, %5186 ], [ %5184, %5041 ]
  %5216 = call float @dx.op.binary.f32(i32 35, float %5214, float %5215)  ; FMax(a,b)
  %5217 = call float @dx.op.binary.f32(i32 35, float %5213, float %5216)  ; FMax(a,b)
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = fmul fast float %5061, 0x3FEC61D440000000
  %5220 = fadd fast float %5219, 0x3FA1204B00000000
  %5221 = fmul fast float %5220, %5061
  %5222 = fadd fast float %5221, 0x3F931451C0000000
  %5223 = fmul fast float %5222, %3855
  %5224 = fadd fast float %5223, 1.000000e+00
  %5225 = fmul fast float %5165, %5224
  %5226 = fmul fast float %5166, %5224
  %5227 = fmul fast float %5167, %5224
  %5228 = fmul fast float %5225, %5218
  %5229 = fmul fast float %5226, %5218
  %5230 = fmul fast float %5227, %5218
  %5231 = call float @dx.op.dot3.f32(i32 55, float %5051, float %5052, float %5053, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5232 = fcmp fast ogt float %5231, 0x3E7FF19E20000000
  %5233 = fdiv fast float 1.000000e+00, %5231
  %5234 = select i1 %5232, float %5233, float 0.000000e+00
  %5235 = fmul fast float %5234, %5051
  %5236 = fmul fast float %5234, %5052
  %5237 = fmul fast float %5234, %5053
  %5238 = fadd fast float %5235, -1.000000e+00
  %5239 = fadd fast float %5236, -1.000000e+00
  %5240 = fadd fast float %5237, -1.000000e+00
  %5241 = fmul fast float %5238, 5.000000e-01
  %5242 = fmul fast float %5239, 5.000000e-01
  %5243 = fmul fast float %5240, 5.000000e-01
  %5244 = fadd fast float %5241, 1.000000e+00
  %5245 = fadd fast float %5242, 1.000000e+00
  %5246 = fadd fast float %5243, 1.000000e+00
  %5247 = fmul fast float %5213, %5169
  %5248 = fmul fast float %5214, %5170
  %5249 = fmul fast float %5215, %5171
  %5250 = fsub fast float 1.000000e+00, %5061
  %5251 = bitcast float %5250 to i32
  %5252 = sitofp i32 %5251 to float
  %5253 = fmul fast float %5252, 5.000000e+00
  %5254 = fadd fast float %5253, 0xC1EFBF8940000000
  %5255 = fptosi float %5254 to i32
  %5256 = bitcast i32 %5255 to float
  %5257 = fmul fast float %5256, %3854
  %5258 = fmul fast float %5165, %5257
  %5259 = fmul fast float %5258, %5218
  %5260 = fmul fast float %5259, %5244
  %5261 = fmul fast float %5166, %5257
  %5262 = fmul fast float %5261, %5218
  %5263 = fmul fast float %5262, %5245
  %5264 = fmul fast float %5167, %5257
  %5265 = fmul fast float %5264, %5218
  %5266 = fmul fast float %5265, %5246
  %5267 = fmul fast float %5228, %3850
  %5268 = fmul fast float %5229, %3850
  %5269 = fmul fast float %5230, %3850
  %5270 = fadd fast float %5247, %3846
  %5271 = fadd fast float %5270, %5260
  %5272 = fmul fast float %5271, %3850
  %5273 = fadd fast float %5248, %3847
  %5274 = fadd fast float %5273, %5263
  %5275 = fmul fast float %5274, %3850
  %5276 = fadd fast float %5249, %3848
  %5277 = fadd fast float %5276, %5266
  %5278 = fmul fast float %5277, %3850
  %5279 = bitcast i32 %5073 to float
  %5280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5281 = extractvalue %dx.types.CBufRet.f32 %5280, 3
  %5282 = fcmp fast oeq float %5281, 0.000000e+00
  br i1 %5282, label %5529, label %5283

; <label>:5283                                    ; preds = %5212
  %5284 = extractvalue %dx.types.CBufRet.f32 %5280, 0
  %5285 = extractvalue %dx.types.CBufRet.f32 %5280, 1
  %5286 = extractvalue %dx.types.CBufRet.f32 %5280, 2
  %5287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5288 = extractvalue %dx.types.CBufRet.f32 %5287, 0
  %5289 = extractvalue %dx.types.CBufRet.f32 %5287, 1
  %5290 = extractvalue %dx.types.CBufRet.f32 %5287, 2
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 0
  %5293 = extractvalue %dx.types.CBufRet.f32 %5291, 1
  %5294 = call float @dx.op.dot3.f32(i32 55, float %5288, float %5289, float %5290, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5295 = select i1 %202, float %5292, float %5288
  %5296 = select i1 %202, float %5294, float %5289
  %5297 = select i1 %202, float %5293, float %5290
  %5298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5298, 1
  %5300 = fcmp fast une float %5299, 0.000000e+00
  br i1 %5300, label %5301, label %5318

; <label>:5301                                    ; preds = %5283
  %5302 = fptoui float %76 to i32
  %5303 = fptoui float %77 to i32
  %5304 = lshr i32 %5302, 4
  %5305 = lshr i32 %5303, 4
  %5306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.f32 %5306, 0
  %5308 = fptoui float %5307 to i32
  %5309 = add i32 %5308, 15
  %5310 = lshr i32 %5309, 4
  %5311 = mul i32 %5310, %5305
  %5312 = add i32 %5311, %5304
  %5313 = shl i32 %5312, 3
  %5314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5313, i32 undef)  ; BufferLoad(srv,index,wot)
  %5315 = extractvalue %dx.types.ResRet.i32 %5314, 0
  %5316 = and i32 %5315, -268435456
  %5317 = icmp eq i32 %5316, -1342177280
  br i1 %5317, label %5328, label %5318

; <label>:5318                                    ; preds = %5301, %5283
  %5319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5319, 2
  %5321 = extractvalue %dx.types.CBufRet.f32 %5319, 3
  %5322 = fmul fast float %5320, %76
  %5323 = fmul fast float %5321, %77
  %5324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5322, float %5323, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5325 = extractvalue %dx.types.ResRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.ResRet.f32 %5324, 1
  %5327 = extractvalue %dx.types.ResRet.f32 %5324, 2
  br label %5328

; <label>:5328                                    ; preds = %5318, %5301
  %5329 = phi float [ %5325, %5318 ], [ 0.000000e+00, %5301 ]
  %5330 = phi float [ %5326, %5318 ], [ 0.000000e+00, %5301 ]
  %5331 = phi float [ %5327, %5318 ], [ 0.000000e+00, %5301 ]
  %5332 = call float @dx.op.binary.f32(i32 36, float %5330, float %5331)  ; FMin(a,b)
  %5333 = call float @dx.op.binary.f32(i32 36, float %5329, float %5332)  ; FMin(a,b)
  %5334 = fcmp fast ogt float %5333, 0.000000e+00
  br i1 %5334, label %5335, label %5529, !dx.controlflow.hints !74

; <label>:5335                                    ; preds = %5328
  %5336 = fmul fast float %5329, %5295
  %5337 = fmul fast float %5330, %5296
  %5338 = fmul fast float %5331, %5297
  %5339 = fsub fast float %5284, %5047
  %5340 = fsub fast float %5285, %5046
  %5341 = fsub fast float %5286, %5045
  %5342 = call float @dx.op.dot3.f32(i32 55, float %5339, float %5340, float %5341, float %5339, float %5340, float %5341)  ; Dot3(ax,ay,az,bx,by,bz)
  %5343 = call float @dx.op.unary.f32(i32 25, float %5342)  ; Rsqrt(value)
  %5344 = fmul fast float %5343, %5339
  %5345 = fmul fast float %5343, %5340
  %5346 = fmul fast float %5343, %5341
  %5347 = call float @dx.op.dot3.f32(i32 55, float %5284, float %5285, float %5286, float %5054, float %5055, float %5056)  ; Dot3(ax,ay,az,bx,by,bz)
  %5348 = call float @dx.op.dot3.f32(i32 55, float %5044, float %5043, float %5042, float %5344, float %5345, float %5346)  ; Dot3(ax,ay,az,bx,by,bz)
  %5349 = call float @dx.op.unary.f32(i32 7, float %5347)  ; Saturate(value)
  %5350 = fmul fast float %5349, %5349
  %5351 = fmul fast float %5350, %5279
  %5352 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5353 = fmul fast float %5352, %5349
  %5354 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float %5344, float %5345, float %5346)  ; Dot3(ax,ay,az,bx,by,bz)
  %5355 = fmul fast float %5354, %5354
  %5356 = call float @dx.op.unary.f32(i32 6, float %5347)  ; FAbs(value)
  %5357 = fsub fast float 1.000000e+00, %5057
  %5358 = call float @dx.op.binary.f32(i32 35, float %5357, float 0x3F847AE140000000)  ; FMax(a,b)
  %5359 = fmul fast float %5358, %5358
  %5360 = fmul fast float %5359, %5359
  %5361 = fsub fast float 1.000000e+00, %5360
  %5362 = fmul fast float %5061, %5061
  %5363 = fmul fast float %5362, %5361
  %5364 = fadd fast float %5363, %5360
  %5365 = bitcast float %5364 to i32
  %5366 = ashr i32 %5365, 1
  %5367 = add nsw i32 %5366, 532487669
  %5368 = bitcast i32 %5367 to float
  %5369 = fadd fast float %5368, %5061
  %5370 = fmul fast float %5360, %5355
  %5371 = fsub fast float 1.000000e+00, %5355
  %5372 = fadd fast float %5371, %5370
  %5373 = fmul fast float %5356, %5356
  %5374 = fmul fast float %5373, %5361
  %5375 = fadd fast float %5374, %5360
  %5376 = bitcast float %5375 to i32
  %5377 = ashr i32 %5376, 1
  %5378 = add nsw i32 %5377, 532487669
  %5379 = bitcast i32 %5378 to float
  %5380 = fadd fast float %5379, %5356
  %5381 = fmul fast float %5372, %5372
  %5382 = fmul fast float %5381, %5369
  %5383 = fmul fast float %5382, %5380
  %5384 = fdiv fast float 0x3FF0A00000000000, %5383
  %5385 = fmul fast float %5384, %5360
  %5386 = call float @dx.op.unary.f32(i32 6, float %5348)  ; FAbs(value)
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = bitcast float %5387 to i32
  %5389 = sitofp i32 %5388 to float
  %5390 = fmul fast float %5389, 5.000000e+00
  %5391 = fadd fast float %5390, 0xC1EFBF8940000000
  %5392 = fptosi float %5391 to i32
  %5393 = bitcast i32 %5392 to float
  %5394 = fsub fast float 1.000000e+00, %5048
  %5395 = fsub fast float 1.000000e+00, %5049
  %5396 = fsub fast float 1.000000e+00, %5059
  %5397 = fmul fast float %5393, %5394
  %5398 = fmul fast float %5393, %5395
  %5399 = fmul fast float %5393, %5396
  %5400 = fadd fast float %5397, %5048
  %5401 = fadd fast float %5398, %5049
  %5402 = fadd fast float %5399, %5059
  br i1 %5185, label %5403, label %5426

; <label>:5403                                    ; preds = %5335
  %5404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3853, float %5386, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5405 = extractvalue %dx.types.ResRet.f32 %5404, 0
  %5406 = extractvalue %dx.types.ResRet.f32 %5404, 1
  %5407 = extractvalue %dx.types.ResRet.f32 %5404, 2
  %5408 = fadd fast float %5405, -5.000000e-01
  %5409 = fadd fast float %5406, -5.000000e-01
  %5410 = fadd fast float %5407, -5.000000e-01
  %5411 = fmul fast float %5048, 4.000000e+00
  %5412 = fmul fast float %5411, %5394
  %5413 = fmul fast float %5412, %5408
  %5414 = fmul fast float %5049, 4.000000e+00
  %5415 = fmul fast float %5414, %5395
  %5416 = fmul fast float %5415, %5409
  %5417 = fmul fast float %5059, 4.000000e+00
  %5418 = fmul fast float %5417, %5396
  %5419 = fmul fast float %5418, %5410
  %5420 = fadd fast float %5413, %5400
  %5421 = fadd fast float %5416, %5401
  %5422 = fadd fast float %5419, %5402
  %5423 = call float @dx.op.unary.f32(i32 7, float %5420)  ; Saturate(value)
  %5424 = call float @dx.op.unary.f32(i32 7, float %5421)  ; Saturate(value)
  %5425 = call float @dx.op.unary.f32(i32 7, float %5422)  ; Saturate(value)
  br label %5426

; <label>:5426                                    ; preds = %5403, %5335
  %5427 = phi float [ %5423, %5403 ], [ %5400, %5335 ]
  %5428 = phi float [ %5424, %5403 ], [ %5401, %5335 ]
  %5429 = phi float [ %5425, %5403 ], [ %5402, %5335 ]
  %5430 = fmul fast float %5347, 9.843750e-01
  %5431 = fadd fast float %5430, 7.812500e-03
  %5432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5431, float %5175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5433 = extractvalue %dx.types.ResRet.f32 %5432, 2
  %5434 = extractvalue %dx.types.ResRet.f32 %5432, 3
  %5435 = fmul fast float %5433, %5048
  %5436 = fmul fast float %5433, %5049
  %5437 = fmul fast float %5433, %5059
  %5438 = fadd fast float %5435, %5434
  %5439 = fadd fast float %5436, %5434
  %5440 = fadd fast float %5437, %5434
  br i1 %5185, label %5441, label %5464

; <label>:5441                                    ; preds = %5426
  %5442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3853, float %5347, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5443 = extractvalue %dx.types.ResRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.ResRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.ResRet.f32 %5442, 2
  %5446 = fadd fast float %5443, -5.000000e-01
  %5447 = fadd fast float %5444, -5.000000e-01
  %5448 = fadd fast float %5445, -5.000000e-01
  %5449 = fmul fast float %5048, 4.000000e+00
  %5450 = fmul fast float %5449, %5394
  %5451 = fmul fast float %5450, %5446
  %5452 = fmul fast float %5049, 4.000000e+00
  %5453 = fmul fast float %5452, %5395
  %5454 = fmul fast float %5453, %5447
  %5455 = fmul fast float %5059, 4.000000e+00
  %5456 = fmul fast float %5455, %5396
  %5457 = fmul fast float %5456, %5448
  %5458 = fadd fast float %5451, %5438
  %5459 = fadd fast float %5454, %5439
  %5460 = fadd fast float %5457, %5440
  %5461 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5462 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  %5463 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  br label %5464

; <label>:5464                                    ; preds = %5441, %5426
  %5465 = phi float [ %5461, %5441 ], [ %5438, %5426 ]
  %5466 = phi float [ %5462, %5441 ], [ %5439, %5426 ]
  %5467 = phi float [ %5463, %5441 ], [ %5440, %5426 ]
  %5468 = call float @dx.op.binary.f32(i32 35, float %5466, float %5467)  ; FMax(a,b)
  %5469 = call float @dx.op.binary.f32(i32 35, float %5465, float %5468)  ; FMax(a,b)
  %5470 = fsub fast float 1.000000e+00, %5469
  %5471 = fadd fast float %5067, %5284
  %5472 = fadd fast float %5068, %5285
  %5473 = fadd fast float %5069, %5286
  %5474 = call float @dx.op.dot3.f32(i32 55, float %5471, float %5472, float %5473, float %5471, float %5472, float %5473)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = call float @dx.op.unary.f32(i32 25, float %5474)  ; Rsqrt(value)
  %5476 = fmul fast float %5471, %5475
  %5477 = fmul fast float %5472, %5475
  %5478 = fmul fast float %5473, %5475
  %5479 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float %5476, float %5477, float %5478)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = fmul fast float %5479, %5479
  %5481 = fmul fast float %5480, 0x3FEFBDA520000000
  %5482 = fsub fast float 1.000000e+00, %5481
  %5483 = fmul fast float %5482, %5482
  %5484 = fdiv fast float 0x3F6096BBA0000000, %5483
  %5485 = fmul fast float %5484, %3855
  %5486 = fadd fast float %5485, 1.000000e+00
  %5487 = fmul fast float %5427, %5385
  %5488 = fmul fast float %5428, %5385
  %5489 = fmul fast float %5429, %5385
  %5490 = fsub fast float 1.000000e+00, %5348
  %5491 = bitcast float %5490 to i32
  %5492 = sitofp i32 %5491 to float
  %5493 = fmul fast float %5492, 5.000000e+00
  %5494 = fadd fast float %5493, 0xC1EFBF8940000000
  %5495 = fptosi float %5494 to i32
  %5496 = bitcast i32 %5495 to float
  %5497 = fmul fast float %5496, %3854
  %5498 = fmul fast float %5470, %5497
  %5499 = fmul fast float %5498, %5244
  %5500 = fmul fast float %5498, %5245
  %5501 = fmul fast float %5498, %5246
  %5502 = fadd fast float %5499, %5487
  %5503 = fadd fast float %5500, %5488
  %5504 = fadd fast float %5501, %5489
  %5505 = fmul fast float %5353, %5336
  %5506 = fmul fast float %5505, %5470
  %5507 = fmul fast float %5506, %5486
  %5508 = fmul fast float %5353, %5337
  %5509 = fmul fast float %5508, %5470
  %5510 = fmul fast float %5509, %5486
  %5511 = fmul fast float %5353, %5338
  %5512 = fmul fast float %5511, %5470
  %5513 = fmul fast float %5512, %5486
  %5514 = fmul fast float %5505, %5502
  %5515 = fmul fast float %5508, %5503
  %5516 = fmul fast float %5511, %5504
  %5517 = fadd fast float %5507, %5228
  %5518 = fmul fast float %5517, %3850
  %5519 = fadd fast float %5510, %5229
  %5520 = fmul fast float %5519, %3850
  %5521 = fadd fast float %5513, %5230
  %5522 = fmul fast float %5521, %3850
  %5523 = fadd fast float %5514, %5271
  %5524 = fmul fast float %5523, %3850
  %5525 = fadd fast float %5515, %5274
  %5526 = fmul fast float %5525, %3850
  %5527 = fadd fast float %5516, %5277
  %5528 = fmul fast float %5527, %3850
  br label %5529

; <label>:5529                                    ; preds = %5464, %5328, %5212
  %5530 = phi float [ %5272, %5212 ], [ %5272, %5328 ], [ %5524, %5464 ]
  %5531 = phi float [ %5275, %5212 ], [ %5275, %5328 ], [ %5526, %5464 ]
  %5532 = phi float [ %5278, %5212 ], [ %5278, %5328 ], [ %5528, %5464 ]
  %5533 = phi float [ %5267, %5212 ], [ %5267, %5328 ], [ %5518, %5464 ]
  %5534 = phi float [ %5268, %5212 ], [ %5268, %5328 ], [ %5520, %5464 ]
  %5535 = phi float [ %5269, %5212 ], [ %5269, %5328 ], [ %5522, %5464 ]
  %5536 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.i32 %5536, 0
  %5538 = icmp eq i32 %5537, 0
  br i1 %5538, label %5992, label %5539

; <label>:5539                                    ; preds = %5529
  %5540 = fptoui float %76 to i32
  %5541 = fptoui float %77 to i32
  %5542 = lshr i32 %5540, 4
  %5543 = lshr i32 %5541, 4
  %5544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5545 = extractvalue %dx.types.CBufRet.i32 %5544, 0
  %5546 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5543, i32 %5545, i32 %5542)  ; UMad(a,b,c)
  %5547 = add nsw i32 %5537, -1
  %5548 = call i32 @dx.op.binary.i32(i32 37, i32 %5547, i32 0)  ; IMax(a,b)
  %5549 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %5550 = fptoui float %5549 to i32
  %5551 = lshr i32 %5550, 5
  %5552 = call i32 @dx.op.binary.i32(i32 40, i32 %5551, i32 8191)  ; UMin(a,b)
  %5553 = shl i32 %5552, 2
  %5554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5553, i32 undef)  ; BufferLoad(srv,index,wot)
  %5555 = extractvalue %dx.types.ResRet.i32 %5554, 0
  %5556 = lshr i32 %5555, 16
  %5557 = and i32 %5555, 65535
  %5558 = lshr i32 %5555, 21
  %5559 = lshr i32 %5557, 5
  %5560 = call i32 @dx.op.binary.i32(i32 40, i32 %5559, i32 %5548)  ; UMin(a,b)
  %5561 = icmp ugt i32 %5558, %5560
  br i1 %5561, label %5992, label %5562

; <label>:5562                                    ; preds = %5539
  br label %5563

; <label>:5563                                    ; preds = %5982, %5562
  %5564 = phi i32 [ %5989, %5982 ], [ %5558, %5562 ]
  %5565 = phi float [ %5983, %5982 ], [ %5530, %5562 ]
  %5566 = phi float [ %5984, %5982 ], [ %5531, %5562 ]
  %5567 = phi float [ %5985, %5982 ], [ %5532, %5562 ]
  %5568 = phi float [ %5986, %5982 ], [ %5533, %5562 ]
  %5569 = phi float [ %5987, %5982 ], [ %5534, %5562 ]
  %5570 = phi float [ %5988, %5982 ], [ %5535, %5562 ]
  %5571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5572 = extractvalue %dx.types.CBufRet.i32 %5571, 0
  %5573 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5546, i32 %5572, i32 %5564)  ; UMad(a,b,c)
  %5574 = shl i32 %5573, 2
  %5575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5574, i32 undef)  ; BufferLoad(srv,index,wot)
  %5576 = extractvalue %dx.types.ResRet.i32 %5575, 0
  %5577 = shl i32 %5564, 5
  %5578 = sub nsw i32 %5556, %5577
  %5579 = call i32 @dx.op.binary.i32(i32 37, i32 %5578, i32 0)  ; IMax(a,b)
  %5580 = call i32 @dx.op.binary.i32(i32 38, i32 %5579, i32 31)  ; IMin(a,b)
  %5581 = sub nsw i32 1, %5556
  %5582 = add nsw i32 %5581, %5557
  %5583 = call i32 @dx.op.binary.i32(i32 37, i32 %5582, i32 0)  ; IMax(a,b)
  %5584 = call i32 @dx.op.binary.i32(i32 38, i32 %5583, i32 32)  ; IMin(a,b)
  %5585 = and i32 %5584, 31
  %5586 = shl i32 -1, %5585
  %5587 = xor i32 %5586, -1
  %5588 = and i32 %5580, 31
  %5589 = shl i32 %5587, %5588
  %5590 = icmp eq i32 %5584, 32
  %5591 = select i1 %5590, i32 -1, i32 %5589
  %5592 = and i32 %5591, %5576
  %5593 = icmp eq i32 %5592, 0
  br i1 %5593, label %5982, label %5594

; <label>:5594                                    ; preds = %5563
  br label %5595

; <label>:5595                                    ; preds = %5675, %5594
  %5596 = phi i32 [ %5607, %5675 ], [ %5592, %5594 ]
  %5597 = phi float [ %5676, %5675 ], [ %5565, %5594 ]
  %5598 = phi float [ %5677, %5675 ], [ %5566, %5594 ]
  %5599 = phi float [ %5678, %5675 ], [ %5567, %5594 ]
  %5600 = phi float [ %5679, %5675 ], [ %5568, %5594 ]
  %5601 = phi float [ %5680, %5675 ], [ %5569, %5594 ]
  %5602 = phi float [ %5681, %5675 ], [ %5570, %5594 ]
  %5603 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5596)  ; FirstbitLo(value)
  %5604 = add i32 %5603, %5577
  %5605 = and i32 %5603, 31
  %5606 = shl i32 1, %5605
  %5607 = xor i32 %5606, %5596
  %5608 = mul i32 %5604, 112
  %5609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5608, i32 undef)  ; BufferLoad(srv,index,wot)
  %5610 = extractvalue %dx.types.ResRet.f32 %5609, 0
  %5611 = extractvalue %dx.types.ResRet.f32 %5609, 1
  %5612 = extractvalue %dx.types.ResRet.f32 %5609, 2
  %5613 = or i32 %5608, 12
  %5614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5613, i32 undef)  ; BufferLoad(srv,index,wot)
  %5615 = extractvalue %dx.types.ResRet.f32 %5614, 0
  %5616 = add i32 %5608, 44
  %5617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5616, i32 undef)  ; BufferLoad(srv,index,wot)
  %5618 = extractvalue %dx.types.ResRet.f32 %5617, 0
  %5619 = add i32 %5608, 48
  %5620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5619, i32 undef)  ; BufferLoad(srv,index,wot)
  %5621 = extractvalue %dx.types.ResRet.f32 %5620, 0
  %5622 = extractvalue %dx.types.ResRet.f32 %5620, 1
  %5623 = extractvalue %dx.types.ResRet.f32 %5620, 2
  %5624 = add i32 %5608, 80
  %5625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5624, i32 undef)  ; BufferLoad(srv,index,wot)
  %5626 = extractvalue %dx.types.ResRet.f32 %5625, 1
  %5627 = extractvalue %dx.types.ResRet.f32 %5625, 2
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5610, float %5611, float %5612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = select i1 %202, float %5626, float %5610
  %5630 = select i1 %202, float %5628, float %5611
  %5631 = select i1 %202, float %5627, float %5612
  %5632 = fsub fast float %5621, %163
  %5633 = fsub fast float %5622, %164
  %5634 = fsub fast float %5623, %165
  %5635 = call float @dx.op.dot3.f32(i32 55, float %5632, float %5633, float %5634, float %5632, float %5633, float %5634)  ; Dot3(ax,ay,az,bx,by,bz)
  %5636 = call float @dx.op.unary.f32(i32 24, float %5635)  ; Sqrt(value)
  %5637 = fdiv fast float 1.000000e+00, %5636
  %5638 = fmul fast float %5637, %5632
  %5639 = fmul fast float %5637, %5633
  %5640 = fmul fast float %5637, %5634
  %5641 = fadd fast float %5636, %5615
  %5642 = fdiv fast float 1.000000e+00, %5641
  %5643 = fmul float %5618, %5642
  %5644 = fmul float %5643, %5643
  %5645 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5646 = and i32 %5606, %5592
  %5647 = icmp eq i32 %5646, 0
  br i1 %5647, label %5670, label %5648, !dx.controlflow.hints !75

; <label>:5648                                    ; preds = %5595
  %5649 = lshr i32 %5540, 5
  %5650 = lshr i32 %5541, 5
  %5651 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5649, i32 %5650, i32 %5604, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5652 = extractvalue %dx.types.ResRet.i32 %5651, 0
  %5653 = and i32 %5652, 3
  %5654 = icmp eq i32 %5653, 0
  %5655 = select i1 %5654, float 1.000000e+00, float 0.000000e+00
  %5656 = icmp eq i32 %5653, 3
  br i1 %5656, label %5657, label %5670

; <label>:5657                                    ; preds = %5648
  %5658 = lshr i32 %5652, 10
  %5659 = and i32 %5658, 8160
  %5660 = and i32 %5541, 31
  %5661 = or i32 %5659, %5660
  %5662 = lshr i32 %5652, 1
  %5663 = and i32 %5662, 16352
  %5664 = and i32 %5540, 31
  %5665 = or i32 %5663, %5664
  %5666 = lshr i32 %5652, 23
  %5667 = and i32 %5666, 255
  %5668 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5665, i32 %5661, i32 %5667, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5669 = extractvalue %dx.types.ResRet.f32 %5668, 0
  br label %5670

; <label>:5670                                    ; preds = %5657, %5648, %5595
  %5671 = phi float [ %5669, %5657 ], [ %5655, %5648 ], [ 0.000000e+00, %5595 ]
  %5672 = call float @dx.op.binary.f32(i32 36, float %5671, float %5671)  ; FMin(a,b)
  %5673 = call float @dx.op.binary.f32(i32 36, float %5671, float %5672)  ; FMin(a,b)
  %5674 = fcmp fast ogt float %5673, 0.000000e+00
  br i1 %5674, label %5683, label %5675, !dx.controlflow.hints !76

; <label>:5675                                    ; preds = %5919, %5670
  %5676 = phi float [ %5597, %5670 ], [ %5978, %5919 ]
  %5677 = phi float [ %5598, %5670 ], [ %5979, %5919 ]
  %5678 = phi float [ %5599, %5670 ], [ %5980, %5919 ]
  %5679 = phi float [ %5600, %5670 ], [ %5972, %5919 ]
  %5680 = phi float [ %5601, %5670 ], [ %5973, %5919 ]
  %5681 = phi float [ %5602, %5670 ], [ %5974, %5919 ]
  %5682 = icmp eq i32 %5596, %5606
  br i1 %5682, label %5981, label %5595

; <label>:5683                                    ; preds = %5670
  %5684 = fmul fast float %5671, %5629
  %5685 = fmul fast float %5671, %5630
  %5686 = fmul fast float %5671, %5631
  %5687 = fsub fast float %5623, %4255
  %5688 = fcmp fast ogt float %5687, 0.000000e+00
  %5689 = fsub fast float %165, %4255
  %5690 = fcmp fast ogt float %5689, 0.000000e+00
  %5691 = xor i1 %5690, %5688
  %5692 = fsub fast float %4255, %5623
  %5693 = fmul fast float %5692, 2.000000e+00
  %5694 = fadd fast float %5693, %5623
  %5695 = select i1 %5691, float %5623, float %5694
  %5696 = fsub fast float %5695, %165
  %5697 = call float @dx.op.dot3.f32(i32 55, float %5632, float %5633, float %5696, float %5632, float %5633, float %5696)  ; Dot3(ax,ay,az,bx,by,bz)
  %5698 = call float @dx.op.unary.f32(i32 25, float %5697)  ; Rsqrt(value)
  %5699 = fmul fast float %5698, %5632
  %5700 = fmul fast float %5698, %5633
  %5701 = fmul fast float %5698, %5696
  %5702 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4263)  ; Dot3(ax,ay,az,bx,by,bz)
  %5703 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5699, float %5700, float %5701)  ; Dot3(ax,ay,az,bx,by,bz)
  %5704 = fdiv fast float 1.000000e+00, %5703
  %5705 = fmul fast float %5704, %5702
  %5706 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5689, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5707 = fcmp fast ogt float %5706, 0.000000e+00
  %5708 = fcmp fast olt float %5706, 0.000000e+00
  %5709 = zext i1 %5707 to i32
  %5710 = zext i1 %5708 to i32
  %5711 = sub nsw i32 %5709, %5710
  %5712 = sitofp i32 %5711 to float
  %5713 = fsub fast float %5695, %4255
  %5714 = call float @dx.op.dot3.f32(i32 55, float %5632, float %5633, float %5713, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5715 = fcmp fast ogt float %5714, 0.000000e+00
  %5716 = fcmp fast olt float %5714, 0.000000e+00
  %5717 = zext i1 %5715 to i32
  %5718 = zext i1 %5716 to i32
  %5719 = sub nsw i32 %5717, %5718
  %5720 = sitofp i32 %5719 to float
  %5721 = fcmp fast une float %5712, %5720
  br i1 %5721, label %5722, label %5732

; <label>:5722                                    ; preds = %5683
  %5723 = fmul fast float %5705, %5701
  %5724 = fmul fast float %5705, %5700
  %5725 = fmul fast float %5705, %5699
  %5726 = fmul fast float %5725, %5725
  %5727 = fmul fast float %5724, %5724
  %5728 = fadd fast float %5726, %5727
  %5729 = fmul fast float %5723, %5723
  %5730 = fadd fast float %5728, %5729
  %5731 = call float @dx.op.unary.f32(i32 24, float %5730)  ; Sqrt(value)
  br label %5744

; <label>:5732                                    ; preds = %5683
  %5733 = icmp slt i32 %5711, 0
  br i1 %5733, label %5734, label %5744

; <label>:5734                                    ; preds = %5732
  %5735 = fsub fast float %163, %5621
  %5736 = fsub fast float %164, %5622
  %5737 = fsub fast float %165, %5695
  %5738 = fmul fast float %5735, %5735
  %5739 = fmul fast float %5736, %5736
  %5740 = fadd fast float %5738, %5739
  %5741 = fmul fast float %5737, %5737
  %5742 = fadd fast float %5740, %5741
  %5743 = call float @dx.op.unary.f32(i32 24, float %5742)  ; Sqrt(value)
  br label %5744

; <label>:5744                                    ; preds = %5734, %5732, %5722
  %5745 = phi float [ %5731, %5722 ], [ %5743, %5734 ], [ 0.000000e+00, %5732 ]
  %5746 = and i1 %5690, %5688
  %5747 = fsub fast float -0.000000e+00, %5745
  %5748 = select i1 %5746, float -0.000000e+00, float %5747
  %5749 = fmul fast float %4256, 0x3FF7154760000000
  %5750 = fmul fast float %5749, %5748
  %5751 = fmul fast float %4257, 0x3FF7154760000000
  %5752 = fmul fast float %5751, %5748
  %5753 = fmul fast float %4258, 0x3FF7154760000000
  %5754 = fmul fast float %5753, %5748
  %5755 = call float @dx.op.unary.f32(i32 21, float %5750)  ; Exp(value)
  %5756 = call float @dx.op.unary.f32(i32 21, float %5752)  ; Exp(value)
  %5757 = call float @dx.op.unary.f32(i32 21, float %5754)  ; Exp(value)
  %5758 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  %5759 = call float @dx.op.unary.f32(i32 7, float %5756)  ; Saturate(value)
  %5760 = call float @dx.op.unary.f32(i32 7, float %5757)  ; Saturate(value)
  %5761 = fmul fast float %5684, %5758
  %5762 = fmul fast float %5685, %5759
  %5763 = fmul fast float %5686, %5760
  %5764 = fsub fast float %5638, %5047
  %5765 = fsub fast float %5639, %5046
  %5766 = fsub fast float %5640, %5045
  %5767 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %5764, float %5765, float %5766)  ; Dot3(ax,ay,az,bx,by,bz)
  %5768 = call float @dx.op.unary.f32(i32 25, float %5767)  ; Rsqrt(value)
  %5769 = fmul fast float %5768, %5764
  %5770 = fmul fast float %5768, %5765
  %5771 = fmul fast float %5768, %5766
  %5772 = call float @dx.op.dot3.f32(i32 55, float %5638, float %5639, float %5640, float %5054, float %5055, float %5056)  ; Dot3(ax,ay,az,bx,by,bz)
  %5773 = call float @dx.op.dot3.f32(i32 55, float %5044, float %5043, float %5042, float %5769, float %5770, float %5771)  ; Dot3(ax,ay,az,bx,by,bz)
  %5774 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5775 = fmul fast float %5774, %5645
  %5776 = fmul fast float %5774, %5774
  %5777 = fmul fast float %5776, %5279
  %5778 = call float @dx.op.unary.f32(i32 7, float %5777)  ; Saturate(value)
  %5779 = fmul fast float %5775, %5778
  %5780 = bitcast float %5635 to i32
  %5781 = ashr i32 %5780, 1
  %5782 = sub nsw i32 1597463007, %5781
  %5783 = bitcast i32 %5782 to float
  %5784 = fmul fast float %5783, %5632
  %5785 = fmul fast float %5783, %5633
  %5786 = fmul fast float %5783, %5634
  %5787 = fsub fast float %5784, %5047
  %5788 = fsub fast float %5785, %5046
  %5789 = fsub fast float %5786, %5045
  %5790 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float %5787, float %5788, float %5789)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = call float @dx.op.unary.f32(i32 25, float %5790)  ; Rsqrt(value)
  %5792 = fmul fast float %5787, %5791
  %5793 = fmul fast float %5788, %5791
  %5794 = fmul fast float %5789, %5791
  %5795 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float %5792, float %5793, float %5794)  ; Dot3(ax,ay,az,bx,by,bz)
  %5796 = fmul fast float %5795, %5795
  %5797 = call float @dx.op.unary.f32(i32 6, float %5772)  ; FAbs(value)
  %5798 = fsub fast float 1.000000e+00, %5057
  %5799 = call float @dx.op.binary.f32(i32 35, float %5798, float 0x3F847AE140000000)  ; FMax(a,b)
  %5800 = fmul fast float %5799, %5799
  %5801 = fmul fast float %5800, %5800
  %5802 = fsub fast float 1.000000e+00, %5801
  %5803 = fmul fast float %5061, %5061
  %5804 = fmul fast float %5803, %5802
  %5805 = fadd fast float %5804, %5801
  %5806 = bitcast float %5805 to i32
  %5807 = ashr i32 %5806, 1
  %5808 = add nsw i32 %5807, 532487669
  %5809 = bitcast i32 %5808 to float
  %5810 = fadd fast float %5809, %5061
  %5811 = fmul fast float %5801, %5796
  %5812 = fsub fast float 1.000000e+00, %5796
  %5813 = fadd fast float %5812, %5811
  %5814 = fmul fast float %5797, %5797
  %5815 = fmul fast float %5814, %5802
  %5816 = fadd fast float %5815, %5801
  %5817 = bitcast float %5816 to i32
  %5818 = ashr i32 %5817, 1
  %5819 = add nsw i32 %5818, 532487669
  %5820 = bitcast i32 %5819 to float
  %5821 = fadd fast float %5820, %5797
  %5822 = fmul fast float %5813, %5813
  %5823 = fmul fast float %5822, %5810
  %5824 = fmul fast float %5823, %5821
  %5825 = fdiv fast float 1.000000e+00, %5824
  %5826 = bitcast float %5801 to i32
  %5827 = sitofp i32 %5826 to float
  %5828 = fmul fast float %5827, 0x3FE7F73180000000
  %5829 = fadd fast float %5828, 0x41AFE27C40000000
  %5830 = fptosi float %5829 to i32
  %5831 = bitcast i32 %5830 to float
  %5832 = fmul fast float %5618, 0x3FD80E9D60000000
  %5833 = fmul fast float %5832, %5783
  %5834 = fadd fast float %5831, %5833
  %5835 = bitcast float %5834 to i32
  %5836 = sub nsw i32 2129859010, %5835
  %5837 = bitcast i32 %5836 to float
  %5838 = fmul fast float %5801, %5825
  %5839 = fmul fast float %5838, %5831
  %5840 = fmul fast float %5839, %5837
  %5841 = call float @dx.op.unary.f32(i32 6, float %5773)  ; FAbs(value)
  %5842 = fsub fast float 1.000000e+00, %5841
  %5843 = bitcast float %5842 to i32
  %5844 = sitofp i32 %5843 to float
  %5845 = fmul fast float %5844, 5.000000e+00
  %5846 = fadd fast float %5845, 0xC1EFBF8940000000
  %5847 = fptosi float %5846 to i32
  %5848 = bitcast i32 %5847 to float
  %5849 = fsub fast float 1.000000e+00, %5048
  %5850 = fsub fast float 1.000000e+00, %5049
  %5851 = fsub fast float 1.000000e+00, %5059
  %5852 = fmul fast float %5848, %5849
  %5853 = fmul fast float %5848, %5850
  %5854 = fmul fast float %5848, %5851
  %5855 = fadd fast float %5852, %5048
  %5856 = fadd fast float %5853, %5049
  %5857 = fadd fast float %5854, %5059
  br i1 %5185, label %5858, label %5881

; <label>:5858                                    ; preds = %5744
  %5859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3853, float %5841, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5860 = extractvalue %dx.types.ResRet.f32 %5859, 0
  %5861 = extractvalue %dx.types.ResRet.f32 %5859, 1
  %5862 = extractvalue %dx.types.ResRet.f32 %5859, 2
  %5863 = fadd fast float %5860, -5.000000e-01
  %5864 = fadd fast float %5861, -5.000000e-01
  %5865 = fadd fast float %5862, -5.000000e-01
  %5866 = fmul fast float %5048, 4.000000e+00
  %5867 = fmul fast float %5866, %5849
  %5868 = fmul fast float %5867, %5863
  %5869 = fmul fast float %5049, 4.000000e+00
  %5870 = fmul fast float %5869, %5850
  %5871 = fmul fast float %5870, %5864
  %5872 = fmul fast float %5059, 4.000000e+00
  %5873 = fmul fast float %5872, %5851
  %5874 = fmul fast float %5873, %5865
  %5875 = fadd fast float %5868, %5855
  %5876 = fadd fast float %5871, %5856
  %5877 = fadd fast float %5874, %5857
  %5878 = call float @dx.op.unary.f32(i32 7, float %5875)  ; Saturate(value)
  %5879 = call float @dx.op.unary.f32(i32 7, float %5876)  ; Saturate(value)
  %5880 = call float @dx.op.unary.f32(i32 7, float %5877)  ; Saturate(value)
  br label %5881

; <label>:5881                                    ; preds = %5858, %5744
  %5882 = phi float [ %5878, %5858 ], [ %5855, %5744 ]
  %5883 = phi float [ %5879, %5858 ], [ %5856, %5744 ]
  %5884 = phi float [ %5880, %5858 ], [ %5857, %5744 ]
  %5885 = fmul fast float %5772, 9.843750e-01
  %5886 = fadd fast float %5885, 7.812500e-03
  %5887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5886, float %5175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 2
  %5889 = extractvalue %dx.types.ResRet.f32 %5887, 3
  %5890 = fmul fast float %5888, %5048
  %5891 = fmul fast float %5888, %5049
  %5892 = fmul fast float %5888, %5059
  %5893 = fadd fast float %5890, %5889
  %5894 = fadd fast float %5891, %5889
  %5895 = fadd fast float %5892, %5889
  br i1 %5185, label %5896, label %5919

; <label>:5896                                    ; preds = %5881
  %5897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3853, float %5772, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5898 = extractvalue %dx.types.ResRet.f32 %5897, 0
  %5899 = extractvalue %dx.types.ResRet.f32 %5897, 1
  %5900 = extractvalue %dx.types.ResRet.f32 %5897, 2
  %5901 = fadd fast float %5898, -5.000000e-01
  %5902 = fadd fast float %5899, -5.000000e-01
  %5903 = fadd fast float %5900, -5.000000e-01
  %5904 = fmul fast float %5048, 4.000000e+00
  %5905 = fmul fast float %5904, %5849
  %5906 = fmul fast float %5905, %5901
  %5907 = fmul fast float %5049, 4.000000e+00
  %5908 = fmul fast float %5907, %5850
  %5909 = fmul fast float %5908, %5902
  %5910 = fmul fast float %5059, 4.000000e+00
  %5911 = fmul fast float %5910, %5851
  %5912 = fmul fast float %5911, %5903
  %5913 = fadd fast float %5906, %5893
  %5914 = fadd fast float %5909, %5894
  %5915 = fadd fast float %5912, %5895
  %5916 = call float @dx.op.unary.f32(i32 7, float %5913)  ; Saturate(value)
  %5917 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  %5918 = call float @dx.op.unary.f32(i32 7, float %5915)  ; Saturate(value)
  br label %5919

; <label>:5919                                    ; preds = %5896, %5881
  %5920 = phi float [ %5916, %5896 ], [ %5893, %5881 ]
  %5921 = phi float [ %5917, %5896 ], [ %5894, %5881 ]
  %5922 = phi float [ %5918, %5896 ], [ %5895, %5881 ]
  %5923 = call float @dx.op.binary.f32(i32 35, float %5921, float %5922)  ; FMax(a,b)
  %5924 = call float @dx.op.binary.f32(i32 35, float %5920, float %5923)  ; FMax(a,b)
  %5925 = fsub fast float 1.000000e+00, %5924
  %5926 = fadd fast float %5067, %5638
  %5927 = fadd fast float %5068, %5639
  %5928 = fadd fast float %5069, %5640
  %5929 = call float @dx.op.dot3.f32(i32 55, float %5926, float %5927, float %5928, float %5926, float %5927, float %5928)  ; Dot3(ax,ay,az,bx,by,bz)
  %5930 = call float @dx.op.unary.f32(i32 25, float %5929)  ; Rsqrt(value)
  %5931 = fmul fast float %5926, %5930
  %5932 = fmul fast float %5927, %5930
  %5933 = fmul fast float %5928, %5930
  %5934 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float %5931, float %5932, float %5933)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = fmul fast float %5934, %5934
  %5936 = fmul fast float %5935, 0x3FEFBDA520000000
  %5937 = fsub fast float 1.000000e+00, %5936
  %5938 = fmul fast float %5937, %5937
  %5939 = fdiv fast float 0x3F6096BBA0000000, %5938
  %5940 = fmul fast float %5939, %3855
  %5941 = fadd fast float %5940, 1.000000e+00
  %5942 = fmul fast float %5882, %5840
  %5943 = fmul fast float %5883, %5840
  %5944 = fmul fast float %5884, %5840
  %5945 = fsub fast float 1.000000e+00, %5773
  %5946 = bitcast float %5945 to i32
  %5947 = sitofp i32 %5946 to float
  %5948 = fmul fast float %5947, 5.000000e+00
  %5949 = fadd fast float %5948, 0xC1EFBF8940000000
  %5950 = fptosi float %5949 to i32
  %5951 = bitcast i32 %5950 to float
  %5952 = fmul fast float %5951, %3854
  %5953 = fmul fast float %5925, %5952
  %5954 = fmul fast float %5953, %5244
  %5955 = fmul fast float %5953, %5245
  %5956 = fmul fast float %5953, %5246
  %5957 = fadd fast float %5954, %5942
  %5958 = fadd fast float %5955, %5943
  %5959 = fadd fast float %5956, %5944
  %5960 = fmul fast float %5761, %3850
  %5961 = fmul fast float %5960, %5779
  %5962 = fmul fast float %5961, %5925
  %5963 = fmul fast float %5962, %5941
  %5964 = fmul fast float %5762, %3850
  %5965 = fmul fast float %5964, %5779
  %5966 = fmul fast float %5965, %5925
  %5967 = fmul fast float %5966, %5941
  %5968 = fmul fast float %5763, %3850
  %5969 = fmul fast float %5968, %5779
  %5970 = fmul fast float %5969, %5925
  %5971 = fmul fast float %5970, %5941
  %5972 = fadd fast float %5963, %5600
  %5973 = fadd fast float %5967, %5601
  %5974 = fadd fast float %5971, %5602
  %5975 = fmul fast float %5961, %5957
  %5976 = fmul fast float %5965, %5958
  %5977 = fmul fast float %5969, %5959
  %5978 = fadd fast float %5975, %5597
  %5979 = fadd fast float %5976, %5598
  %5980 = fadd fast float %5977, %5599
  br label %5675

; <label>:5981                                    ; preds = %5675
  br label %5982

; <label>:5982                                    ; preds = %5981, %5563
  %5983 = phi float [ %5565, %5563 ], [ %5676, %5981 ]
  %5984 = phi float [ %5566, %5563 ], [ %5677, %5981 ]
  %5985 = phi float [ %5567, %5563 ], [ %5678, %5981 ]
  %5986 = phi float [ %5568, %5563 ], [ %5679, %5981 ]
  %5987 = phi float [ %5569, %5563 ], [ %5680, %5981 ]
  %5988 = phi float [ %5570, %5563 ], [ %5681, %5981 ]
  %5989 = add i32 %5564, 1
  %5990 = icmp ugt i32 %5989, %5560
  br i1 %5990, label %5991, label %5563

; <label>:5991                                    ; preds = %5982
  br label %5992

; <label>:5992                                    ; preds = %5991, %5539, %5529
  %5993 = phi float [ %5530, %5529 ], [ %5530, %5539 ], [ %5983, %5991 ]
  %5994 = phi float [ %5531, %5529 ], [ %5531, %5539 ], [ %5984, %5991 ]
  %5995 = phi float [ %5532, %5529 ], [ %5532, %5539 ], [ %5985, %5991 ]
  %5996 = phi float [ %5533, %5529 ], [ %5533, %5539 ], [ %5986, %5991 ]
  %5997 = phi float [ %5534, %5529 ], [ %5534, %5539 ], [ %5987, %5991 ]
  %5998 = phi float [ %5535, %5529 ], [ %5535, %5539 ], [ %5988, %5991 ]
  %5999 = call float @dx.op.unary.f32(i32 24, float %5051)  ; Sqrt(value)
  %6000 = call float @dx.op.unary.f32(i32 24, float %5052)  ; Sqrt(value)
  %6001 = call float @dx.op.unary.f32(i32 24, float %5053)  ; Sqrt(value)
  %6002 = fmul fast float %5999, %5996
  %6003 = fmul fast float %6000, %5997
  %6004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.f32 %6004, 0
  br i1 %202, label %6006, label %6026

; <label>:6006                                    ; preds = %5992
  %6007 = fadd fast float %5998, %3857
  %6008 = fmul fast float %6007, %3858
  %6009 = fsub fast float 1.000000e+00, %3858
  %6010 = call float @dx.op.unary.f32(i32 7, float %6009)  ; Saturate(value)
  %6011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6012 = extractvalue %dx.types.CBufRet.f32 %6011, 3
  %6013 = fmul fast float %6012, %6010
  %6014 = fadd fast float %6013, %6008
  %6015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.f32 %6015, 0
  %6017 = fmul fast float %6016, %5250
  %6018 = fsub fast float %6014, %6017
  %6019 = fadd fast float %6003, %6002
  %6020 = fmul fast float %6005, %6019
  %6021 = extractvalue %dx.types.CBufRet.f32 %6011, 1
  %6022 = fsub fast float %6018, %6021
  %6023 = extractvalue %dx.types.CBufRet.f32 %6011, 2
  %6024 = fmul fast float %6022, %6023
  %6025 = call float @dx.op.unary.f32(i32 7, float %6024)  ; Saturate(value)
  br label %6042

; <label>:6026                                    ; preds = %5992
  %6027 = fmul fast float %6001, %5998
  %6028 = fmul fast float %6005, %6002
  %6029 = fmul fast float %6005, %6003
  %6030 = fmul fast float %6027, %6005
  %6031 = add i32 %32, 356
  %6032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6031, i32 undef)  ; BufferLoad(srv,index,wot)
  %6033 = extractvalue %dx.types.ResRet.i32 %6032, 0
  %6034 = and i32 %6033, 32
  %6035 = icmp eq i32 %6034, 0
  br i1 %6035, label %6042, label %6036

; <label>:6036                                    ; preds = %6026
  %6037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6038 = extractvalue %dx.types.CBufRet.f32 %6037, 0
  %6039 = fmul fast float %6038, 0x3FE99999A0000000
  %6040 = fadd fast float %6038, %6028
  %6041 = fadd fast float %6039, %6030
  br label %6042

; <label>:6042                                    ; preds = %6036, %6026, %6006
  %6043 = phi float [ %6020, %6006 ], [ %6040, %6036 ], [ %6028, %6026 ]
  %6044 = phi float [ %6025, %6006 ], [ %6029, %6036 ], [ %6029, %6026 ]
  %6045 = phi float [ 1.000000e+00, %6006 ], [ %6041, %6036 ], [ %6030, %6026 ]
  %6046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.f32 %6046, 0
  %6048 = fmul fast float %6047, %5994
  %6049 = fmul fast float %6047, %5995
  %6050 = fadd fast float %5994, %5993
  %6051 = select i1 %202, float %6050, float %5993
  %6052 = fmul float %6051, %6047
  %6053 = select i1 %202, float 0.000000e+00, float %6048
  %6054 = select i1 %202, float 0.000000e+00, float %6049
  %6055 = fmul fast float %6043, %5999
  %6056 = fmul fast float %6044, %6000
  %6057 = fmul fast float %6045, %6001
  %6058 = fadd fast float %6052, %6055
  %6059 = fadd fast float %6053, %6056
  %6060 = fadd fast float %6054, %6057
  %6061 = select i1 %202, float %6044, float %6059
  %6062 = select i1 %202, float %6045, float %6060
  %6063 = call float @dx.op.binary.f32(i32 36, float %6058, float 3.225500e+04)  ; FMin(a,b)
  %6064 = call float @dx.op.binary.f32(i32 36, float %6061, float 3.225500e+04)  ; FMin(a,b)
  %6065 = call float @dx.op.binary.f32(i32 36, float %6062, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6063)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6064)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6065)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

