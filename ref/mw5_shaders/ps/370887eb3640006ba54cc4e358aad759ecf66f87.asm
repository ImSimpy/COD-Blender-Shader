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
; shader hash: e30464e15485f203e2ae9483957f40a5
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
;                                   sampler      NA          NA      S4             s5     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture    byte         r/o      T4     t22,space1     1
;                                   texture     f32          3d      T5     t52,space2     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture     u32     2darray      T7     t11,space2     1
;                                   texture     f32     2darray      T8     t10,space2     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture    byte         r/o     T10     t18,space1     1
;                                   texture    byte         r/o     T11     t19,space1     1
;                                   texture    byte         r/o     T12     t20,space1     1
;                                   texture    byte         r/o     T13     t21,space1     1
;                                   texture     f32          2d     T14     t37,space2     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     f32          2d     T24     t34,space2     1
;                                   texture    byte         r/o     T25     t10,space1     1
;                                   texture    byte         r/o     T26     t68,space1     1
;                                   texture     f32          2d     T27      t0,space2     1
;                                   texture    byte         r/o     T28     t11,space1     1
;                                   texture    byte         r/o     T29     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %76 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = fmul fast float %78, %72
  %80 = fmul fast float %78, %73
  %81 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %82 = bitcast float %81 to i32
  %83 = ashr i32 %82, 1
  %84 = sub nsw i32 1597250115, %83
  %85 = bitcast i32 %84 to float
  %86 = fmul fast float %85, %64
  %87 = fmul fast float %85, %65
  %88 = fmul fast float %85, %66
  %89 = fmul fast float %65, %62
  %90 = fmul fast float %66, %61
  %91 = fsub fast float %89, %90
  %92 = fmul fast float %66, %60
  %93 = fmul fast float %64, %62
  %94 = fsub fast float %92, %93
  %95 = fmul fast float %64, %61
  %96 = fmul fast float %65, %60
  %97 = fsub fast float %95, %96
  %98 = fmul fast float %91, %63
  %99 = fmul fast float %94, %63
  %100 = fmul fast float %97, %63
  %101 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %102 = bitcast float %101 to i32
  %103 = ashr i32 %102, 1
  %104 = sub nsw i32 1597250115, %103
  %105 = bitcast i32 %104 to float
  %106 = fmul fast float %105, %53
  %107 = fmul fast float %105, %54
  %108 = fmul fast float %105, %55
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = fcmp fast une float %110, 0.000000e+00
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %79, 2.000000e+00
  %116 = fmul fast float %115, %113
  %117 = fmul fast float %80, 2.000000e+00
  %118 = fmul fast float %117, %114
  %119 = fsub fast float 1.000000e+00, %116
  %120 = fsub fast float 1.000000e+00, %118
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = select i1 %111, float %122, float %126
  %130 = select i1 %111, float %123, float %127
  %131 = select i1 %111, float %124, float %128
  %132 = fmul fast float %129, %119
  %133 = fmul fast float %130, %119
  %134 = fmul fast float %131, %119
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %142 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %143 = select i1 %111, float %136, float %140
  %144 = select i1 %111, float %137, float %141
  %145 = select i1 %111, float %138, float %142
  %146 = fmul fast float %143, %120
  %147 = fmul fast float %144, %120
  %148 = fmul fast float %145, %120
  %149 = fadd fast float %146, %132
  %150 = fadd fast float %147, %133
  %151 = fadd fast float %148, %134
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = select i1 %111, float %153, float %157
  %161 = select i1 %111, float %154, float %158
  %162 = select i1 %111, float %155, float %159
  %163 = fadd fast float %149, %160
  %164 = fadd fast float %150, %161
  %165 = fadd fast float %151, %162
  %166 = fmul fast float %163, %74
  %167 = fmul fast float %164, %74
  %168 = fmul fast float %165, %74
  %169 = shl i32 %35, 5
  %170 = add i32 %169, 4194304
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %170, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = extractvalue %dx.types.ResRet.i32 %171, 1
  %174 = extractvalue %dx.types.ResRet.i32 %171, 2
  %175 = extractvalue %dx.types.ResRet.i32 %171, 3
  %176 = add i32 %169, 4194320
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = extractvalue %dx.types.ResRet.i32 %177, 1
  %180 = bitcast i32 %178 to float
  %181 = bitcast i32 %179 to float
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 3
  %185 = fmul fast float %183, %79
  %186 = fmul fast float %184, %80
  %187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.i32 %187, 0
  %189 = and i32 %188, 114688
  %190 = icmp ne i32 %189, 0
  %191 = select i1 %190, float %185, float 0.000000e+00
  %192 = select i1 %190, float %186, float 0.000000e+00
  %193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %31, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = fmul fast float %194, 2.550000e+02
  %196 = fptoui float %195 to i32
  %197 = select i1 %190, i32 %196, i32 0
  %198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.i32 %198, 3
  %200 = and i32 %199, 3
  %201 = icmp ne i32 %200, 0
  %202 = and i32 %199, 4
  %203 = icmp ne i32 %202, 0
  %204 = and i1 %201, %203
  br i1 %204, label %205, label %214

; <label>:205                                     ; preds = %0
  %206 = fmul fast float %114, %80
  %207 = fmul fast float %113, %79
  %208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %30, float %207, float %206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = fsub fast float 1.000000e+00, %209
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 0
  %213 = fcmp fast olt float %210, %212
  br label %217

; <label>:214                                     ; preds = %0
  %215 = icmp eq i32 %202, 0
  %216 = and i1 %201, %215
  br label %217

; <label>:217                                     ; preds = %214, %205
  %218 = phi i1 [ %213, %205 ], [ %216, %214 ]
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 2
  %221 = fmul fast float %220, 0x3FE3C6EF40000000
  %222 = frem fast float %79, 2.560000e+02
  %223 = frem fast float %80, 2.560000e+02
  %224 = fptoui float %222 to i32
  %225 = fptoui float %223 to i32
  %226 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %224, i32 %225, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = fadd fast float %227, %221
  %229 = call float @dx.op.unary.f32(i32 22, float %228)  ; Frc(value)
  %230 = add i32 %34, 156
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = shl i32 %232, 4
  %234 = and i32 %233, 32752
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %232, 7
  %237 = and i32 %236, 32752
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %232, 22
  %240 = shl nuw nsw i32 %239, 5
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = add i32 %34, 216
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F70101020000000
  %248 = lshr i32 %244, 8
  %249 = and i32 %248, 255
  %250 = uitofp i32 %249 to float
  %251 = fmul fast float %250, 0x3F70101020000000
  %252 = lshr i32 %244, 16
  %253 = and i32 %252, 255
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, 0x3F70101020000000
  %256 = add i32 %34, 36
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 65535
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %258, 16
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = add i32 %34, 288
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 65535
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %265, 16
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = fmul fast float %267, 0x3F50624DE0000000
  %271 = fmul fast float %269, 0x3F50624DE0000000
  %272 = add i32 %34, 172
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = shl i32 %274, 4
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %274, 7
  %279 = and i32 %278, 32752
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %274, 22
  %282 = shl nuw nsw i32 %281, 5
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = add i32 %34, 232
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = lshr i32 %286, 8
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = lshr i32 %286, 16
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = add i32 %34, 52
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %300, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = add i32 %34, 304
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = fmul fast float %309, 0x3F50624DE0000000
  %313 = fmul fast float %311, 0x3F50624DE0000000
  %314 = add i32 %34, 188
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = shl i32 %316, 4
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %316, 7
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %316, 22
  %324 = shl nuw nsw i32 %323, 5
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = add i32 %34, 248
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = lshr i32 %328, 8
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = lshr i32 %328, 16
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = add i32 %34, 68
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %342, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = add i32 %34, 320
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = fmul fast float %351, 0x3F50624DE0000000
  %355 = fmul fast float %353, 0x3F50624DE0000000
  %356 = add i32 %34, 204
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = shl i32 %358, 4
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %358, 7
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %358, 22
  %366 = shl nuw nsw i32 %365, 5
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = add i32 %34, 264
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F70101020000000
  %374 = lshr i32 %370, 8
  %375 = and i32 %374, 255
  %376 = uitofp i32 %375 to float
  %377 = fmul fast float %376, 0x3F70101020000000
  %378 = lshr i32 %370, 16
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %380, 0x3F70101020000000
  %382 = add i32 %34, 84
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 65535
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %384, 16
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = add i32 %34, 336
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %391, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = fmul fast float %393, 0x3F50624DE0000000
  %397 = fmul fast float %395, 0x3F50624DE0000000
  %398 = add i32 %34, 348
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 32
  %402 = icmp eq i32 %401, 0
  %403 = and i32 %400, 64
  %404 = icmp eq i32 %403, 0
  %405 = and i32 %400, 128
  %406 = icmp eq i32 %405, 0
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = and i32 %408, 2
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %424, label %411

; <label>:411                                     ; preds = %217
  %412 = add i32 %34, 492
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = add i32 %414, 0
  %416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %415, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %417 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %416, %dx.types.Handle %76, float %67, float %68, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = extractvalue %dx.types.ResRet.f32 %417, 1
  %420 = extractvalue %dx.types.ResRet.f32 %417, 2
  %421 = fmul fast float %418, %69
  %422 = fmul fast float %419, %70
  %423 = fmul fast float %420, %71
  br label %424

; <label>:424                                     ; preds = %411, %217
  %425 = phi float [ %71, %217 ], [ %423, %411 ]
  %426 = phi float [ %70, %217 ], [ %422, %411 ]
  %427 = phi float [ %69, %217 ], [ %421, %411 ]
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = and i32 %429, 2
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %451, label %432

; <label>:432                                     ; preds = %424
  %433 = add i32 %34, 44
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 1
  %437 = icmp ne i32 %436, 0
  %438 = select i1 %437, float %427, float 1.000000e+00
  %439 = add i32 %34, 60
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 1
  %443 = icmp ne i32 %442, 0
  %444 = select i1 %443, float %426, float 1.000000e+00
  %445 = add i32 %34, 76
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = and i32 %447, 1
  %449 = icmp ne i32 %448, 0
  %450 = select i1 %449, float %425, float 1.000000e+00
  br label %451

; <label>:451                                     ; preds = %432, %424
  %452 = phi float [ %425, %424 ], [ %450, %432 ]
  %453 = phi float [ %426, %424 ], [ %444, %432 ]
  %454 = phi float [ %427, %424 ], [ %438, %432 ]
  %455 = lshr i32 %429, 20
  %456 = and i32 %455, 3
  %457 = add nuw nsw i32 %456, 1
  %458 = add i32 %34, 24
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = add i32 %34, 28
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = or i32 %463, %460
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %953, label %466

; <label>:466                                     ; preds = %451
  %467 = and i32 %460, 262144
  %468 = icmp ne i32 %467, 0
  %469 = select i1 %468, float %40, float 1.000000e+00
  %470 = select i1 %468, float %41, float 0.000000e+00
  %471 = select i1 %468, float %42, float 0.000000e+00
  %472 = select i1 %468, float %43, float 1.000000e+00
  %473 = select i1 %468, float %44, float %67
  %474 = select i1 %468, float %45, float %68
  %475 = add i32 %34, 284
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = lshr i32 %477, 16
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = fmul fast float %479, 0x3F50624DE0000000
  %481 = add i32 %34, 88
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = lshr i32 %483, 16
  %485 = and i32 %484, 255
  %486 = lshr i32 %483, 24
  %487 = add i32 %34, 292
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = and i32 %489, 65535
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = lshr i32 %489, 16
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = add i32 %34, 32
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = lshr i32 %496, 22
  %498 = shl nuw nsw i32 %497, 5
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = shl i32 %496, 4
  %501 = and i32 %500, 32752
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = lshr i32 %496, 7
  %504 = and i32 %503, 32752
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 3
  %508 = fmul fast float %507, 1.000000e+03
  %509 = fmul fast float %270, %508
  %510 = call float @dx.op.unary.f32(i32 22, float %509)  ; Frc(value)
  %511 = fadd fast float %510, %260
  %512 = fmul fast float %271, %508
  %513 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %514 = fadd fast float %513, %262
  %515 = fmul fast float %480, %508
  %516 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %517 = fmul fast float %516, 0x401921FB60000000
  %518 = fadd fast float %517, %499
  %519 = call float @dx.op.unary.f32(i32 13, float %518)  ; Sin(value)
  %520 = call float @dx.op.unary.f32(i32 12, float %518)  ; Cos(value)
  %521 = fsub fast float -0.000000e+00, %519
  %522 = fadd fast float %473, -5.000000e-01
  %523 = fadd fast float %474, -5.000000e-01
  %524 = fmul fast float %491, %522
  %525 = fmul fast float %493, %523
  %526 = fadd fast float %524, 5.000000e-01
  %527 = fadd fast float %525, 5.000000e-01
  %528 = fmul fast float %502, %526
  %529 = fmul fast float %505, %527
  %530 = fmul fast float %520, %528
  %531 = call float @dx.op.tertiary.f32(i32 46, float %521, float %529, float %530)  ; FMad(a,b,c)
  %532 = fmul fast float %519, %528
  %533 = call float @dx.op.tertiary.f32(i32 46, float %520, float %529, float %532)  ; FMad(a,b,c)
  %534 = fadd fast float %511, %531
  %535 = fadd fast float %514, %533
  %536 = icmp ugt i32 %485, 1
  %537 = icmp ugt i32 %483, 33554431
  %538 = or i1 %537, %536
  br i1 %538, label %539, label %564

; <label>:539                                     ; preds = %466
  %540 = add i32 %34, 228
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = lshr i32 %542, 16
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = fmul fast float %507, %544
  %546 = call float @dx.op.unary.f32(i32 22, float %545)  ; Frc(value)
  %547 = mul nuw nsw i32 %485, %486
  %548 = uitofp i32 %547 to float
  %549 = fmul fast float %546, %548
  %550 = call float @dx.op.unary.f32(i32 27, float %549)  ; Round_ni(value)
  %551 = fptoui float %550 to i32
  %552 = urem i32 %551, %485
  %553 = udiv i32 %551, %486
  %554 = call float @dx.op.unary.f32(i32 22, float %534)  ; Frc(value)
  %555 = call float @dx.op.unary.f32(i32 22, float %535)  ; Frc(value)
  %556 = uitofp i32 %552 to float
  %557 = uitofp i32 %553 to float
  %558 = fadd fast float %554, %556
  %559 = fadd fast float %555, %557
  %560 = uitofp i32 %485 to float
  %561 = uitofp i32 %486 to float
  %562 = fdiv fast float %558, %560
  %563 = fdiv fast float %559, %561
  br label %564

; <label>:564                                     ; preds = %539, %466
  %565 = phi float [ %562, %539 ], [ %534, %466 ]
  %566 = phi float [ %563, %539 ], [ %535, %466 ]
  %567 = and i32 %460, 16
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %765, label %569

; <label>:569                                     ; preds = %564
  %570 = add i32 %34, 376
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = add i32 %572, 0
  %574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %574, %dx.types.Handle %75, float %565, float %566, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = extractvalue %dx.types.ResRet.f32 %575, 1
  %578 = extractvalue %dx.types.ResRet.f32 %575, 2
  %579 = extractvalue %dx.types.ResRet.f32 %575, 3
  %580 = and i32 %483, 255
  %581 = uitofp i32 %580 to float
  %582 = lshr i32 %483, 8
  %583 = and i32 %582, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %579, %581
  %586 = fadd fast float %585, %584
  %587 = fmul fast float %586, 0x3F70101000000000
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = and i32 %589, 512
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %600, label %592

; <label>:592                                     ; preds = %569
  %593 = add i32 %34, 460
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = add i32 %595, 0
  %597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %597, %dx.types.Handle %76, float %565, float %566, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  br label %600

; <label>:600                                     ; preds = %592, %569
  %601 = phi float [ %599, %592 ], [ 1.000000e+00, %569 ]
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = and i32 %603, 33554432
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %712, label %606

; <label>:606                                     ; preds = %600
  %607 = add i32 %34, 224
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = and i32 %609, 65535
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = lshr i32 %609, 16
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = add i32 %34, 228
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = and i32 %616, 65535
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = lshr i32 %620, 24
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = and i32 %620, 255
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %625, 0x3F70101020000000
  %627 = lshr i32 %620, 8
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F70101020000000
  %631 = lshr i32 %620, 16
  %632 = and i32 %631, 255
  %633 = uitofp i32 %632 to float
  %634 = fmul fast float %633, 0x3F70101020000000
  %635 = add i32 %34, 220
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = lshr i32 %637, 24
  %639 = uitofp i32 %638 to float
  %640 = fmul fast float %639, 0x3F70101020000000
  %641 = and i32 %637, 255
  %642 = uitofp i32 %641 to float
  %643 = fmul fast float %642, 0x3F70101020000000
  %644 = lshr i32 %637, 8
  %645 = and i32 %644, 255
  %646 = uitofp i32 %645 to float
  %647 = fmul fast float %646, 0x3F70101020000000
  %648 = lshr i32 %637, 16
  %649 = and i32 %648, 255
  %650 = uitofp i32 %649 to float
  %651 = fmul fast float %650, 0x3F70101020000000
  %652 = bitcast float %576 to i32
  %653 = ashr i32 %652, 1
  %654 = sub nsw i32 1597463174, %653
  %655 = bitcast i32 %654 to float
  %656 = fmul fast float %576, 5.000000e-01
  %657 = fmul fast float %655, %655
  %658 = fmul fast float %657, %656
  %659 = fsub fast float 1.500000e+00, %658
  %660 = fmul fast float %655, %576
  %661 = fmul fast float %660, %659
  %662 = bitcast float %577 to i32
  %663 = ashr i32 %662, 1
  %664 = sub nsw i32 1597463174, %663
  %665 = bitcast i32 %664 to float
  %666 = fmul fast float %577, 5.000000e-01
  %667 = fmul fast float %665, %665
  %668 = fmul fast float %667, %666
  %669 = fsub fast float 1.500000e+00, %668
  %670 = fmul fast float %665, %577
  %671 = fmul fast float %670, %669
  %672 = bitcast float %578 to i32
  %673 = ashr i32 %672, 1
  %674 = sub nsw i32 1597463174, %673
  %675 = bitcast i32 %674 to float
  %676 = fmul fast float %578, 5.000000e-01
  %677 = fmul fast float %675, %675
  %678 = fmul fast float %677, %676
  %679 = fsub fast float 1.500000e+00, %678
  %680 = fmul fast float %675, %578
  %681 = fmul fast float %680, %679
  %682 = fsub fast float %661, %643
  %683 = fsub fast float %671, %647
  %684 = fsub fast float %681, %651
  %685 = fmul fast float %682, %611
  %686 = fmul fast float %683, %613
  %687 = fmul fast float %684, %618
  %688 = fadd fast float %685, %626
  %689 = fadd fast float %686, %630
  %690 = fadd fast float %687, %634
  %691 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %692 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  %693 = call float @dx.op.unary.f32(i32 7, float %690)  ; Saturate(value)
  %694 = fmul fast float %691, %691
  %695 = fmul fast float %692, %692
  %696 = fmul fast float %693, %693
  %697 = fsub fast float %694, %576
  %698 = fsub fast float %695, %577
  %699 = fsub fast float %696, %578
  %700 = fmul fast float %697, %601
  %701 = fmul fast float %698, %601
  %702 = fmul fast float %699, %601
  %703 = fadd fast float %700, %576
  %704 = fadd fast float %701, %577
  %705 = fadd fast float %702, %578
  %706 = fadd fast float %623, %587
  %707 = fsub fast float %706, %640
  %708 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  %709 = fsub fast float %708, %587
  %710 = fmul fast float %709, %601
  %711 = fadd fast float %710, %587
  br label %765

; <label>:712                                     ; preds = %600
  %713 = and i32 %603, 134217728
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %749, label %715

; <label>:715                                     ; preds = %712
  %716 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %717 = call float @dx.op.unary.f32(i32 24, float %251)  ; Sqrt(value)
  %718 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %719 = fadd fast float %716, -5.000000e-01
  %720 = fadd fast float %717, -5.000000e-01
  %721 = fadd fast float %718, -5.000000e-01
  %722 = fmul fast float %719, %601
  %723 = fmul fast float %720, %601
  %724 = fmul fast float %721, %601
  %725 = fadd fast float %722, 5.000000e-01
  %726 = fadd fast float %723, 5.000000e-01
  %727 = fadd fast float %724, 5.000000e-01
  %728 = call float @dx.op.unary.f32(i32 24, float %576)  ; Sqrt(value)
  %729 = call float @dx.op.unary.f32(i32 24, float %577)  ; Sqrt(value)
  %730 = call float @dx.op.unary.f32(i32 24, float %578)  ; Sqrt(value)
  %731 = fmul fast float %725, 2.000000e+00
  %732 = fsub fast float 1.000000e+00, %731
  %733 = fmul fast float %732, %728
  %734 = fadd fast float %733, %731
  %735 = fmul fast float %734, %728
  %736 = fmul fast float %726, 2.000000e+00
  %737 = fsub fast float 1.000000e+00, %736
  %738 = fmul fast float %737, %729
  %739 = fadd fast float %738, %736
  %740 = fmul fast float %739, %729
  %741 = fmul fast float %727, 2.000000e+00
  %742 = fsub fast float 1.000000e+00, %741
  %743 = fmul fast float %742, %730
  %744 = fadd fast float %743, %741
  %745 = fmul fast float %744, %730
  %746 = fmul fast float %735, %735
  %747 = fmul fast float %740, %740
  %748 = fmul fast float %745, %745
  br label %765

; <label>:749                                     ; preds = %712
  %750 = fmul fast float %247, %247
  %751 = fmul fast float %251, %251
  %752 = fmul fast float %255, %255
  %753 = fadd fast float %750, -1.000000e+00
  %754 = fadd fast float %751, -1.000000e+00
  %755 = fadd fast float %752, -1.000000e+00
  %756 = fmul fast float %601, %753
  %757 = fmul fast float %601, %754
  %758 = fmul fast float %601, %755
  %759 = fadd fast float %756, 1.000000e+00
  %760 = fadd fast float %757, 1.000000e+00
  %761 = fadd fast float %758, 1.000000e+00
  %762 = fmul fast float %759, %576
  %763 = fmul fast float %760, %577
  %764 = fmul fast float %761, %578
  br label %765

; <label>:765                                     ; preds = %749, %715, %606, %564
  %766 = phi float [ %711, %606 ], [ %587, %715 ], [ %587, %749 ], [ 0x3FA23C0BE0000000, %564 ]
  %767 = phi float [ %703, %606 ], [ %746, %715 ], [ %762, %749 ], [ 1.000000e+00, %564 ]
  %768 = phi float [ %704, %606 ], [ %747, %715 ], [ %763, %749 ], [ 1.000000e+00, %564 ]
  %769 = phi float [ %705, %606 ], [ %748, %715 ], [ %764, %749 ], [ 1.000000e+00, %564 ]
  %770 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.i32 %770, 1
  %772 = and i32 %771, 1
  %773 = icmp ne i32 %772, 0
  %774 = add i32 %34, 356
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 32
  %778 = icmp ne i32 %777, 0
  %779 = and i1 %773, %778
  %780 = select i1 %779, float 1.000000e+00, float %767
  %781 = select i1 %779, float 0x3FD3333340000000, float %768
  %782 = select i1 %779, float 0x3FD3333340000000, float %769
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 32
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %859, label %787

; <label>:787                                     ; preds = %765
  %788 = add i32 %34, 92
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = add i32 %34, 392
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = add i32 %793, 0
  %795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %795, %dx.types.Handle %75, float %565, float %566, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  %798 = extractvalue %dx.types.ResRet.f32 %796, 1
  %799 = extractvalue %dx.types.ResRet.f32 %796, 2
  %800 = extractvalue %dx.types.ResRet.f32 %796, 3
  %801 = and i32 %790, 255
  %802 = uitofp i32 %801 to float
  %803 = lshr i32 %790, 8
  %804 = and i32 %803, 255
  %805 = uitofp i32 %804 to float
  %806 = lshr i32 %790, 16
  %807 = and i32 %806, 255
  %808 = uitofp i32 %807 to float
  %809 = fmul fast float %808, 0x3F70101000000000
  %810 = fmul fast float %797, %802
  %811 = fadd fast float %810, %805
  %812 = fmul fast float %811, 0x3F70101000000000
  %813 = fadd fast float %798, -5.000000e-01
  %814 = fadd fast float %800, -5.000000e-01
  %815 = fmul fast float %813, %809
  %816 = fmul fast float %814, %809
  %817 = fadd fast float %815, 5.000000e-01
  %818 = fadd fast float %816, 5.000000e-01
  %819 = fmul fast float %817, 2.000000e+00
  %820 = fadd fast float %819, -1.000000e+00
  %821 = fmul fast float %818, 2.000000e+00
  %822 = fadd fast float %821, -1.000000e+00
  %823 = fadd fast float %820, %822
  %824 = fmul fast float %823, 5.000000e-01
  %825 = fsub fast float %820, %822
  %826 = fmul fast float %825, 5.000000e-01
  %827 = call float @dx.op.unary.f32(i32 6, float %824)  ; FAbs(value)
  %828 = fsub fast float 1.000000e+00, %827
  %829 = call float @dx.op.unary.f32(i32 6, float %826)  ; FAbs(value)
  %830 = fsub fast float %828, %829
  %831 = call float @dx.op.dot3.f32(i32 55, float %824, float %826, float %830, float %824, float %826, float %830)  ; Dot3(ax,ay,az,bx,by,bz)
  %832 = call float @dx.op.unary.f32(i32 25, float %831)  ; Rsqrt(value)
  %833 = fmul fast float %824, %832
  %834 = fmul fast float %826, %832
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = and i32 %836, 67108864
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %855, label %839

; <label>:839                                     ; preds = %787
  %840 = add i32 %34, 280
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %840, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = and i32 %842, 65535
  %844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %843)  ; LegacyF16ToF32(value)
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = and i32 %846, 65535
  %848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %847)  ; LegacyF16ToF32(value)
  %849 = lshr i32 %842, 16
  %850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %849)  ; LegacyF16ToF32(value)
  %851 = fsub fast float %812, %850
  %852 = fmul fast float %851, %844
  %853 = fadd fast float %852, %848
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  br label %855

; <label>:855                                     ; preds = %839, %787
  %856 = phi float [ %854, %839 ], [ %812, %787 ]
  %857 = call float @dx.op.dot2.f32(i32 54, float %833, float %834, float %469, float %470)  ; Dot2(ax,ay,bx,by)
  %858 = call float @dx.op.dot2.f32(i32 54, float %833, float %834, float %471, float %472)  ; Dot2(ax,ay,bx,by)
  br label %859

; <label>:859                                     ; preds = %855, %765
  %860 = phi float [ %856, %855 ], [ 0x3FD6666660000000, %765 ]
  %861 = phi float [ %857, %855 ], [ 0.000000e+00, %765 ]
  %862 = phi float [ %858, %855 ], [ 0.000000e+00, %765 ]
  %863 = phi float [ %799, %855 ], [ 1.000000e+00, %765 ]
  %864 = add i32 %34, 160
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %864, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = lshr i32 %866, 22
  %868 = shl nuw nsw i32 %867, 5
  %869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %868)  ; LegacyF16ToF32(value)
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = and i32 %871, 64
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %907, label %874

; <label>:874                                     ; preds = %859
  %875 = add i32 %34, 408
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = add i32 %877, 0
  %879 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %878, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = and i32 %881, 131072
  %883 = icmp eq i32 %882, 0
  %884 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %879, %dx.types.Handle %75, float %565, float %566, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = extractvalue %dx.types.ResRet.f32 %884, 1
  %887 = extractvalue %dx.types.ResRet.f32 %884, 2
  %888 = fmul fast float %885, %235
  %889 = fmul fast float %886, %238
  %890 = fmul fast float %887, %241
  br i1 %883, label %897, label %891

; <label>:891                                     ; preds = %874
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = fmul fast float %893, %888
  %895 = fmul fast float %893, %889
  %896 = fmul fast float %893, %890
  br label %897

; <label>:897                                     ; preds = %891, %874
  %898 = phi float [ %894, %891 ], [ %888, %874 ]
  %899 = phi float [ %895, %891 ], [ %889, %874 ]
  %900 = phi float [ %896, %891 ], [ %890, %874 ]
  %901 = fmul fast float %898, %869
  %902 = select i1 %218, float %901, float %898
  %903 = call float @dx.op.dot3.f32(i32 55, float %902, float %899, float %900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %904 = select i1 %218, float 0.000000e+00, float %898
  %905 = select i1 %218, float %903, float %899
  %906 = select i1 %218, float 0.000000e+00, float %900
  br label %907

; <label>:907                                     ; preds = %897, %859
  %908 = phi float [ %904, %897 ], [ 0.000000e+00, %859 ]
  %909 = phi float [ %905, %897 ], [ 0.000000e+00, %859 ]
  %910 = phi float [ %906, %897 ], [ 0.000000e+00, %859 ]
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 26624
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %938, label %915

; <label>:915                                     ; preds = %907
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = and i32 %917, 16384
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %938, label %920

; <label>:920                                     ; preds = %915
  %921 = and i32 %917, 1048576
  %922 = icmp ne i32 %921, 0
  %923 = add i32 %34, 476
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = add i32 %925, 0
  %927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %926, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %928 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %927, %dx.types.Handle %76, float %565, float %566, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = add i32 %34, 96
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = lshr i32 %932, 24
  %934 = uitofp i32 %933 to float
  %935 = fmul fast float %929, 0x3F70101020000000
  %936 = select i1 %922, float 0x3F70101020000000, float %935
  %937 = fmul fast float %936, %934
  br label %938

; <label>:938                                     ; preds = %920, %915, %907
  %939 = phi float [ %937, %920 ], [ 0.000000e+00, %915 ], [ 0.000000e+00, %907 ]
  %940 = add i32 %34, 96
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = and i32 %942, 255
  %944 = uitofp i32 %943 to float
  %945 = lshr i32 %942, 8
  %946 = and i32 %945, 255
  %947 = uitofp i32 %946 to float
  %948 = call float @dx.op.dot3.f32(i32 55, float %780, float %781, float %782, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %949 = fmul fast float %947, %948
  %950 = fadd fast float %949, %944
  %951 = fmul fast float %950, 0x3F70101020000000
  %952 = call float @dx.op.unary.f32(i32 7, float %951)  ; Saturate(value)
  br label %953

; <label>:953                                     ; preds = %938, %451
  %954 = phi float [ 0.000000e+00, %451 ], [ %861, %938 ]
  %955 = phi float [ 0.000000e+00, %451 ], [ %862, %938 ]
  %956 = phi float [ 0.000000e+00, %451 ], [ %908, %938 ]
  %957 = phi float [ 0.000000e+00, %451 ], [ %909, %938 ]
  %958 = phi float [ 0.000000e+00, %451 ], [ %910, %938 ]
  %959 = phi float [ 0.000000e+00, %451 ], [ %780, %938 ]
  %960 = phi float [ 0.000000e+00, %451 ], [ %781, %938 ]
  %961 = phi float [ 0.000000e+00, %451 ], [ %782, %938 ]
  %962 = phi float [ 0.000000e+00, %451 ], [ %766, %938 ]
  %963 = phi float [ 0.000000e+00, %451 ], [ 1.000000e+00, %938 ]
  %964 = phi float [ 0.000000e+00, %451 ], [ %860, %938 ]
  %965 = phi float [ 0.000000e+00, %451 ], [ %863, %938 ]
  %966 = phi float [ 0.000000e+00, %451 ], [ %939, %938 ]
  %967 = phi float [ 0.000000e+00, %451 ], [ %952, %938 ]
  br i1 %402, label %1733, label %968

; <label>:968                                     ; preds = %953
  %969 = icmp ult i32 %457, 2
  %970 = add i32 %34, 40
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = add i32 %34, 44
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = or i32 %975, %972
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %1733, label %978

; <label>:978                                     ; preds = %968
  %979 = and i32 %972, 262144
  %980 = icmp ne i32 %979, 0
  %981 = select i1 %980, float %40, float 1.000000e+00
  %982 = select i1 %980, float %41, float 0.000000e+00
  %983 = select i1 %980, float %42, float 0.000000e+00
  %984 = select i1 %980, float %43, float 1.000000e+00
  %985 = select i1 %980, float %44, float %67
  %986 = select i1 %980, float %45, float %68
  %987 = add i32 %34, 300
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = lshr i32 %989, 16
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = fmul fast float %991, 0x3F50624DE0000000
  %993 = add i32 %34, 104
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = lshr i32 %995, 16
  %997 = and i32 %996, 255
  %998 = lshr i32 %995, 24
  %999 = add i32 %34, 308
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = and i32 %1001, 65535
  %1003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1002)  ; LegacyF16ToF32(value)
  %1004 = lshr i32 %1001, 16
  %1005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1004)  ; LegacyF16ToF32(value)
  %1006 = add i32 %34, 48
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = lshr i32 %1008, 22
  %1010 = shl nuw nsw i32 %1009, 5
  %1011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1010)  ; LegacyF16ToF32(value)
  %1012 = shl i32 %1008, 4
  %1013 = and i32 %1012, 32752
  %1014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1013)  ; LegacyF16ToF32(value)
  %1015 = lshr i32 %1008, 7
  %1016 = and i32 %1015, 32752
  %1017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1016)  ; LegacyF16ToF32(value)
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 3
  %1020 = fmul fast float %1019, 1.000000e+03
  %1021 = fmul fast float %312, %1020
  %1022 = call float @dx.op.unary.f32(i32 22, float %1021)  ; Frc(value)
  %1023 = fadd fast float %1022, %302
  %1024 = fmul fast float %313, %1020
  %1025 = call float @dx.op.unary.f32(i32 22, float %1024)  ; Frc(value)
  %1026 = fadd fast float %1025, %304
  %1027 = fmul fast float %992, %1020
  %1028 = call float @dx.op.unary.f32(i32 22, float %1027)  ; Frc(value)
  %1029 = fmul fast float %1028, 0x401921FB60000000
  %1030 = fadd fast float %1029, %1011
  %1031 = call float @dx.op.unary.f32(i32 13, float %1030)  ; Sin(value)
  %1032 = call float @dx.op.unary.f32(i32 12, float %1030)  ; Cos(value)
  %1033 = fsub fast float -0.000000e+00, %1031
  %1034 = fadd fast float %985, -5.000000e-01
  %1035 = fadd fast float %986, -5.000000e-01
  %1036 = fmul fast float %1003, %1034
  %1037 = fmul fast float %1005, %1035
  %1038 = fadd fast float %1036, 5.000000e-01
  %1039 = fadd fast float %1037, 5.000000e-01
  %1040 = fmul fast float %1014, %1038
  %1041 = fmul fast float %1017, %1039
  %1042 = fmul fast float %1032, %1040
  %1043 = call float @dx.op.tertiary.f32(i32 46, float %1033, float %1041, float %1042)  ; FMad(a,b,c)
  %1044 = fmul fast float %1031, %1040
  %1045 = call float @dx.op.tertiary.f32(i32 46, float %1032, float %1041, float %1044)  ; FMad(a,b,c)
  %1046 = fadd fast float %1023, %1043
  %1047 = fadd fast float %1026, %1045
  %1048 = icmp ugt i32 %997, 1
  %1049 = icmp ugt i32 %995, 33554431
  %1050 = or i1 %1049, %1048
  br i1 %1050, label %1051, label %1076

; <label>:1051                                    ; preds = %978
  %1052 = add i32 %34, 244
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = lshr i32 %1054, 16
  %1056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1055)  ; LegacyF16ToF32(value)
  %1057 = fmul fast float %1019, %1056
  %1058 = call float @dx.op.unary.f32(i32 22, float %1057)  ; Frc(value)
  %1059 = mul nuw nsw i32 %997, %998
  %1060 = uitofp i32 %1059 to float
  %1061 = fmul fast float %1058, %1060
  %1062 = call float @dx.op.unary.f32(i32 27, float %1061)  ; Round_ni(value)
  %1063 = fptoui float %1062 to i32
  %1064 = urem i32 %1063, %997
  %1065 = udiv i32 %1063, %998
  %1066 = call float @dx.op.unary.f32(i32 22, float %1046)  ; Frc(value)
  %1067 = call float @dx.op.unary.f32(i32 22, float %1047)  ; Frc(value)
  %1068 = uitofp i32 %1064 to float
  %1069 = uitofp i32 %1065 to float
  %1070 = fadd fast float %1066, %1068
  %1071 = fadd fast float %1067, %1069
  %1072 = uitofp i32 %997 to float
  %1073 = uitofp i32 %998 to float
  %1074 = fdiv fast float %1070, %1072
  %1075 = fdiv fast float %1071, %1073
  br label %1076

; <label>:1076                                    ; preds = %1051, %978
  %1077 = phi float [ %1074, %1051 ], [ %1046, %978 ]
  %1078 = phi float [ %1075, %1051 ], [ %1047, %978 ]
  %1079 = and i32 %972, 256
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1127, label %1081

; <label>:1081                                    ; preds = %1076
  %1082 = add i32 %34, 444
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = add i32 %1084, 0
  %1086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1087 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1086, %dx.types.Handle %76, float %1077, float %1078, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 0
  %1089 = add i32 %34, 116
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = shl i32 %1091, 4
  %1093 = and i32 %1092, 32752
  %1094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1093)  ; LegacyF16ToF32(value)
  %1095 = lshr i32 %1091, 7
  %1096 = and i32 %1095, 32752
  %1097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1096)  ; LegacyF16ToF32(value)
  %1098 = fsub fast float 1.000000e+00, %454
  %1099 = call float @dx.op.binary.f32(i32 35, float %1098, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1100 = bitcast float %454 to i32
  %1101 = sitofp i32 %1100 to float
  %1102 = fadd fast float %1101, 0xC1CFBF8940000000
  %1103 = fmul fast float %1097, %1102
  %1104 = fadd fast float %1103, 0x41CFBF8940000000
  %1105 = fptosi float %1104 to i32
  %1106 = bitcast i32 %1105 to float
  %1107 = bitcast float %1099 to i32
  %1108 = sitofp i32 %1107 to float
  %1109 = fadd fast float %1108, 0xC1CFBF8940000000
  %1110 = fmul fast float %1109, %1097
  %1111 = fadd fast float %1110, 0x41CFBF8940000000
  %1112 = fptosi float %1111 to i32
  %1113 = bitcast i32 %1112 to float
  %1114 = fmul fast float %1106, %1094
  %1115 = fmul fast float %1113, %1094
  %1116 = fsub fast float %1099, %1114
  %1117 = fadd fast float %1115, %1099
  %1118 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1119 = call float @dx.op.unary.f32(i32 7, float %1117)  ; Saturate(value)
  %1120 = fsub fast float %1088, %1118
  %1121 = fsub fast float %1119, %1118
  %1122 = bitcast float %1121 to i32
  %1123 = sub nsw i32 2129859010, %1122
  %1124 = bitcast i32 %1123 to float
  %1125 = fmul fast float %1124, %1120
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  br label %1127

; <label>:1127                                    ; preds = %1081, %1076
  %1128 = phi float [ %1126, %1081 ], [ %454, %1076 ]
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = and i32 %1130, 128
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1149, label %1133

; <label>:1133                                    ; preds = %1127
  %1134 = add i32 %34, 428
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = add i32 %1136, 0
  %1138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1137, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1139 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1138, %dx.types.Handle %76, float %1077, float %1078, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = and i32 %1142, 524288
  %1144 = icmp ne i32 %1143, 0
  %1145 = fcmp fast ogt float %1140, 0x3FE0101020000000
  %1146 = select i1 %1145, float 1.000000e+00, float 0.000000e+00
  %1147 = select i1 %1144, float %1146, float %1140
  %1148 = fmul fast float %1147, %1128
  br label %1149

; <label>:1149                                    ; preds = %1133, %1127
  %1150 = phi float [ %1148, %1133 ], [ %1128, %1127 ]
  %1151 = fcmp fast ult float %1150, 0x3F70101020000000
  br i1 %1151, label %1733, label %1152

; <label>:1152                                    ; preds = %1149
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = and i32 %1154, 16
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1355, label %1157

; <label>:1157                                    ; preds = %1152
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = add i32 %34, 380
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = add i32 %1162, 0
  %1164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1163, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1165 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1164, %dx.types.Handle %75, float %1077, float %1078, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1166 = extractvalue %dx.types.ResRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.ResRet.f32 %1165, 1
  %1168 = extractvalue %dx.types.ResRet.f32 %1165, 2
  %1169 = extractvalue %dx.types.ResRet.f32 %1165, 3
  %1170 = and i32 %1159, 255
  %1171 = uitofp i32 %1170 to float
  %1172 = lshr i32 %1159, 8
  %1173 = and i32 %1172, 255
  %1174 = uitofp i32 %1173 to float
  %1175 = fmul fast float %1169, %1171
  %1176 = fadd fast float %1175, %1174
  %1177 = fmul fast float %1176, 0x3F70101000000000
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = and i32 %1179, 512
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1190, label %1182

; <label>:1182                                    ; preds = %1157
  %1183 = add i32 %34, 464
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = add i32 %1185, 0
  %1187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1186, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1188 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1187, %dx.types.Handle %76, float %1077, float %1078, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1189 = extractvalue %dx.types.ResRet.f32 %1188, 0
  br label %1190

; <label>:1190                                    ; preds = %1182, %1157
  %1191 = phi float [ %1189, %1182 ], [ 1.000000e+00, %1157 ]
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = and i32 %1193, 33554432
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %1302, label %1196

; <label>:1196                                    ; preds = %1190
  %1197 = add i32 %34, 240
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = and i32 %1199, 65535
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = lshr i32 %1199, 16
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = add i32 %34, 244
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = and i32 %1206, 65535
  %1208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1207)  ; LegacyF16ToF32(value)
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = lshr i32 %1210, 24
  %1212 = uitofp i32 %1211 to float
  %1213 = fmul fast float %1212, 0x3F70101020000000
  %1214 = and i32 %1210, 255
  %1215 = uitofp i32 %1214 to float
  %1216 = fmul fast float %1215, 0x3F70101020000000
  %1217 = lshr i32 %1210, 8
  %1218 = and i32 %1217, 255
  %1219 = uitofp i32 %1218 to float
  %1220 = fmul fast float %1219, 0x3F70101020000000
  %1221 = lshr i32 %1210, 16
  %1222 = and i32 %1221, 255
  %1223 = uitofp i32 %1222 to float
  %1224 = fmul fast float %1223, 0x3F70101020000000
  %1225 = add i32 %34, 236
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = lshr i32 %1227, 24
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1229, 0x3F70101020000000
  %1231 = and i32 %1227, 255
  %1232 = uitofp i32 %1231 to float
  %1233 = fmul fast float %1232, 0x3F70101020000000
  %1234 = lshr i32 %1227, 8
  %1235 = and i32 %1234, 255
  %1236 = uitofp i32 %1235 to float
  %1237 = fmul fast float %1236, 0x3F70101020000000
  %1238 = lshr i32 %1227, 16
  %1239 = and i32 %1238, 255
  %1240 = uitofp i32 %1239 to float
  %1241 = fmul fast float %1240, 0x3F70101020000000
  %1242 = bitcast float %1166 to i32
  %1243 = ashr i32 %1242, 1
  %1244 = sub nsw i32 1597463174, %1243
  %1245 = bitcast i32 %1244 to float
  %1246 = fmul fast float %1166, 5.000000e-01
  %1247 = fmul fast float %1245, %1245
  %1248 = fmul fast float %1247, %1246
  %1249 = fsub fast float 1.500000e+00, %1248
  %1250 = fmul fast float %1245, %1166
  %1251 = fmul fast float %1250, %1249
  %1252 = bitcast float %1167 to i32
  %1253 = ashr i32 %1252, 1
  %1254 = sub nsw i32 1597463174, %1253
  %1255 = bitcast i32 %1254 to float
  %1256 = fmul fast float %1167, 5.000000e-01
  %1257 = fmul fast float %1255, %1255
  %1258 = fmul fast float %1257, %1256
  %1259 = fsub fast float 1.500000e+00, %1258
  %1260 = fmul fast float %1255, %1167
  %1261 = fmul fast float %1260, %1259
  %1262 = bitcast float %1168 to i32
  %1263 = ashr i32 %1262, 1
  %1264 = sub nsw i32 1597463174, %1263
  %1265 = bitcast i32 %1264 to float
  %1266 = fmul fast float %1168, 5.000000e-01
  %1267 = fmul fast float %1265, %1265
  %1268 = fmul fast float %1267, %1266
  %1269 = fsub fast float 1.500000e+00, %1268
  %1270 = fmul fast float %1265, %1168
  %1271 = fmul fast float %1270, %1269
  %1272 = fsub fast float %1251, %1233
  %1273 = fsub fast float %1261, %1237
  %1274 = fsub fast float %1271, %1241
  %1275 = fmul fast float %1272, %1201
  %1276 = fmul fast float %1273, %1203
  %1277 = fmul fast float %1274, %1208
  %1278 = fadd fast float %1275, %1216
  %1279 = fadd fast float %1276, %1220
  %1280 = fadd fast float %1277, %1224
  %1281 = call float @dx.op.unary.f32(i32 7, float %1278)  ; Saturate(value)
  %1282 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1283 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1284 = fmul fast float %1281, %1281
  %1285 = fmul fast float %1282, %1282
  %1286 = fmul fast float %1283, %1283
  %1287 = fsub fast float %1284, %1166
  %1288 = fsub fast float %1285, %1167
  %1289 = fsub fast float %1286, %1168
  %1290 = fmul fast float %1287, %1191
  %1291 = fmul fast float %1288, %1191
  %1292 = fmul fast float %1289, %1191
  %1293 = fadd fast float %1290, %1166
  %1294 = fadd fast float %1291, %1167
  %1295 = fadd fast float %1292, %1168
  %1296 = fadd fast float %1213, %1177
  %1297 = fsub fast float %1296, %1230
  %1298 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1299 = fsub fast float %1298, %1177
  %1300 = fmul fast float %1299, %1191
  %1301 = fadd fast float %1300, %1177
  br label %1355

; <label>:1302                                    ; preds = %1190
  %1303 = and i32 %1193, 134217728
  %1304 = icmp eq i32 %1303, 0
  br i1 %1304, label %1339, label %1305

; <label>:1305                                    ; preds = %1302
  %1306 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %1307 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1308 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %1309 = fadd fast float %1306, -5.000000e-01
  %1310 = fadd fast float %1307, -5.000000e-01
  %1311 = fadd fast float %1308, -5.000000e-01
  %1312 = fmul fast float %1309, %1191
  %1313 = fmul fast float %1310, %1191
  %1314 = fmul fast float %1311, %1191
  %1315 = fadd fast float %1312, 5.000000e-01
  %1316 = fadd fast float %1313, 5.000000e-01
  %1317 = fadd fast float %1314, 5.000000e-01
  %1318 = call float @dx.op.unary.f32(i32 24, float %1166)  ; Sqrt(value)
  %1319 = call float @dx.op.unary.f32(i32 24, float %1167)  ; Sqrt(value)
  %1320 = call float @dx.op.unary.f32(i32 24, float %1168)  ; Sqrt(value)
  %1321 = fmul fast float %1315, 2.000000e+00
  %1322 = fsub fast float 1.000000e+00, %1321
  %1323 = fmul fast float %1322, %1318
  %1324 = fadd fast float %1323, %1321
  %1325 = fmul fast float %1324, %1318
  %1326 = fmul fast float %1316, 2.000000e+00
  %1327 = fsub fast float 1.000000e+00, %1326
  %1328 = fmul fast float %1327, %1319
  %1329 = fadd fast float %1328, %1326
  %1330 = fmul fast float %1329, %1319
  %1331 = fmul fast float %1317, 2.000000e+00
  %1332 = fsub fast float 1.000000e+00, %1331
  %1333 = fmul fast float %1332, %1320
  %1334 = fadd fast float %1333, %1331
  %1335 = fmul fast float %1334, %1320
  %1336 = fmul fast float %1325, %1325
  %1337 = fmul fast float %1330, %1330
  %1338 = fmul fast float %1335, %1335
  br label %1355

; <label>:1339                                    ; preds = %1302
  %1340 = fmul fast float %289, %289
  %1341 = fmul fast float %293, %293
  %1342 = fmul fast float %297, %297
  %1343 = fadd fast float %1340, -1.000000e+00
  %1344 = fadd fast float %1341, -1.000000e+00
  %1345 = fadd fast float %1342, -1.000000e+00
  %1346 = fmul fast float %1191, %1343
  %1347 = fmul fast float %1191, %1344
  %1348 = fmul fast float %1191, %1345
  %1349 = fadd fast float %1346, 1.000000e+00
  %1350 = fadd fast float %1347, 1.000000e+00
  %1351 = fadd fast float %1348, 1.000000e+00
  %1352 = fmul fast float %1349, %1166
  %1353 = fmul fast float %1350, %1167
  %1354 = fmul fast float %1351, %1168
  br label %1355

; <label>:1355                                    ; preds = %1339, %1305, %1196, %1152
  %1356 = phi float [ %1301, %1196 ], [ %1177, %1305 ], [ %1177, %1339 ], [ 0x3FA23C0BE0000000, %1152 ]
  %1357 = phi float [ %1293, %1196 ], [ %1336, %1305 ], [ %1352, %1339 ], [ 1.000000e+00, %1152 ]
  %1358 = phi float [ %1294, %1196 ], [ %1337, %1305 ], [ %1353, %1339 ], [ 1.000000e+00, %1152 ]
  %1359 = phi float [ %1295, %1196 ], [ %1338, %1305 ], [ %1354, %1339 ], [ 1.000000e+00, %1152 ]
  %1360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.i32 %1360, 1
  %1362 = and i32 %1361, 1
  %1363 = icmp ne i32 %1362, 0
  %1364 = add i32 %34, 356
  %1365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1364, i32 undef)  ; BufferLoad(srv,index,wot)
  %1366 = extractvalue %dx.types.ResRet.i32 %1365, 0
  %1367 = and i32 %1366, 32
  %1368 = icmp ne i32 %1367, 0
  %1369 = and i1 %1363, %1368
  %1370 = select i1 %1369, float 1.000000e+00, float %1357
  %1371 = select i1 %1369, float 0x3FD3333340000000, float %1358
  %1372 = select i1 %1369, float 0x3FD3333340000000, float %1359
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.i32 %1373, 0
  %1375 = and i32 %1374, 32
  %1376 = icmp eq i32 %1375, 0
  br i1 %1376, label %1449, label %1377

; <label>:1377                                    ; preds = %1355
  %1378 = add i32 %34, 108
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = add i32 %34, 396
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = add i32 %1383, 0
  %1385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1386 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1385, %dx.types.Handle %75, float %1077, float %1078, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  %1388 = extractvalue %dx.types.ResRet.f32 %1386, 1
  %1389 = extractvalue %dx.types.ResRet.f32 %1386, 2
  %1390 = extractvalue %dx.types.ResRet.f32 %1386, 3
  %1391 = and i32 %1380, 255
  %1392 = uitofp i32 %1391 to float
  %1393 = lshr i32 %1380, 8
  %1394 = and i32 %1393, 255
  %1395 = uitofp i32 %1394 to float
  %1396 = lshr i32 %1380, 16
  %1397 = and i32 %1396, 255
  %1398 = uitofp i32 %1397 to float
  %1399 = fmul fast float %1398, 0x3F70101000000000
  %1400 = fmul fast float %1387, %1392
  %1401 = fadd fast float %1400, %1395
  %1402 = fmul fast float %1401, 0x3F70101000000000
  %1403 = fadd fast float %1388, -5.000000e-01
  %1404 = fadd fast float %1390, -5.000000e-01
  %1405 = fmul fast float %1403, %1399
  %1406 = fmul fast float %1404, %1399
  %1407 = fadd fast float %1405, 5.000000e-01
  %1408 = fadd fast float %1406, 5.000000e-01
  %1409 = fmul fast float %1407, 2.000000e+00
  %1410 = fadd fast float %1409, -1.000000e+00
  %1411 = fmul fast float %1408, 2.000000e+00
  %1412 = fadd fast float %1411, -1.000000e+00
  %1413 = fadd fast float %1410, %1412
  %1414 = fmul fast float %1413, 5.000000e-01
  %1415 = fsub fast float %1410, %1412
  %1416 = fmul fast float %1415, 5.000000e-01
  %1417 = call float @dx.op.unary.f32(i32 6, float %1414)  ; FAbs(value)
  %1418 = fsub fast float 1.000000e+00, %1417
  %1419 = call float @dx.op.unary.f32(i32 6, float %1416)  ; FAbs(value)
  %1420 = fsub fast float %1418, %1419
  %1421 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1416, float %1420, float %1414, float %1416, float %1420)  ; Dot3(ax,ay,az,bx,by,bz)
  %1422 = call float @dx.op.unary.f32(i32 25, float %1421)  ; Rsqrt(value)
  %1423 = fmul fast float %1414, %1422
  %1424 = fmul fast float %1416, %1422
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = and i32 %1426, 67108864
  %1428 = icmp eq i32 %1427, 0
  br i1 %1428, label %1445, label %1429

; <label>:1429                                    ; preds = %1377
  %1430 = add i32 %34, 296
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1430, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = and i32 %1432, 65535
  %1434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1433)  ; LegacyF16ToF32(value)
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = and i32 %1436, 65535
  %1438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1437)  ; LegacyF16ToF32(value)
  %1439 = lshr i32 %1432, 16
  %1440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1439)  ; LegacyF16ToF32(value)
  %1441 = fsub fast float %1402, %1440
  %1442 = fmul fast float %1441, %1434
  %1443 = fadd fast float %1442, %1438
  %1444 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  br label %1445

; <label>:1445                                    ; preds = %1429, %1377
  %1446 = phi float [ %1444, %1429 ], [ %1402, %1377 ]
  %1447 = call float @dx.op.dot2.f32(i32 54, float %1423, float %1424, float %981, float %982)  ; Dot2(ax,ay,bx,by)
  %1448 = call float @dx.op.dot2.f32(i32 54, float %1423, float %1424, float %983, float %984)  ; Dot2(ax,ay,bx,by)
  br label %1449

; <label>:1449                                    ; preds = %1445, %1355
  %1450 = phi float [ %1446, %1445 ], [ 0x3FD6666660000000, %1355 ]
  %1451 = phi float [ %1447, %1445 ], [ 0.000000e+00, %1355 ]
  %1452 = phi float [ %1448, %1445 ], [ 0.000000e+00, %1355 ]
  %1453 = phi float [ %1389, %1445 ], [ 1.000000e+00, %1355 ]
  %1454 = add i32 %34, 176
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1454, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = lshr i32 %1456, 22
  %1458 = shl nuw nsw i32 %1457, 5
  %1459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1458)  ; LegacyF16ToF32(value)
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = and i32 %1461, 64
  %1463 = icmp eq i32 %1462, 0
  br i1 %1463, label %1497, label %1464

; <label>:1464                                    ; preds = %1449
  %1465 = add i32 %34, 412
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = add i32 %1467, 0
  %1469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = and i32 %1471, 131072
  %1473 = icmp eq i32 %1472, 0
  %1474 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1469, %dx.types.Handle %75, float %1077, float %1078, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1475 = extractvalue %dx.types.ResRet.f32 %1474, 0
  %1476 = extractvalue %dx.types.ResRet.f32 %1474, 1
  %1477 = extractvalue %dx.types.ResRet.f32 %1474, 2
  %1478 = fmul fast float %1475, %277
  %1479 = fmul fast float %1476, %280
  %1480 = fmul fast float %1477, %283
  br i1 %1473, label %1487, label %1481

; <label>:1481                                    ; preds = %1464
  %1482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1483 = extractvalue %dx.types.CBufRet.f32 %1482, 0
  %1484 = fmul fast float %1483, %1478
  %1485 = fmul fast float %1483, %1479
  %1486 = fmul fast float %1483, %1480
  br label %1487

; <label>:1487                                    ; preds = %1481, %1464
  %1488 = phi float [ %1484, %1481 ], [ %1478, %1464 ]
  %1489 = phi float [ %1485, %1481 ], [ %1479, %1464 ]
  %1490 = phi float [ %1486, %1481 ], [ %1480, %1464 ]
  %1491 = fmul fast float %1488, %1459
  %1492 = select i1 %218, float %1491, float %1488
  %1493 = call float @dx.op.dot3.f32(i32 55, float %1492, float %1489, float %1490, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1494 = select i1 %218, float 0.000000e+00, float %1488
  %1495 = select i1 %218, float %1493, float %1489
  %1496 = select i1 %218, float 0.000000e+00, float %1490
  br label %1497

; <label>:1497                                    ; preds = %1487, %1449
  %1498 = phi float [ %1494, %1487 ], [ 0.000000e+00, %1449 ]
  %1499 = phi float [ %1495, %1487 ], [ 0.000000e+00, %1449 ]
  %1500 = phi float [ %1496, %1487 ], [ 0.000000e+00, %1449 ]
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = and i32 %1502, 26624
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %1528, label %1505

; <label>:1505                                    ; preds = %1497
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 16384
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1528, label %1510

; <label>:1510                                    ; preds = %1505
  %1511 = and i32 %1507, 1048576
  %1512 = icmp ne i32 %1511, 0
  %1513 = add i32 %34, 480
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = add i32 %1515, 0
  %1517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1516, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1518 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1517, %dx.types.Handle %76, float %1077, float %1078, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1519 = extractvalue %dx.types.ResRet.f32 %1518, 0
  %1520 = add i32 %34, 112
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1520, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = lshr i32 %1522, 24
  %1524 = uitofp i32 %1523 to float
  %1525 = fmul fast float %1519, 0x3F70101020000000
  %1526 = select i1 %1512, float 0x3F70101020000000, float %1525
  %1527 = fmul fast float %1526, %1524
  br label %1528

; <label>:1528                                    ; preds = %1510, %1505, %1497
  %1529 = phi float [ %1527, %1510 ], [ 0.000000e+00, %1505 ], [ 0.000000e+00, %1497 ]
  %1530 = add i32 %34, 112
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 255
  %1534 = uitofp i32 %1533 to float
  %1535 = lshr i32 %1532, 8
  %1536 = and i32 %1535, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1539 = fmul fast float %1537, %1538
  %1540 = fadd fast float %1539, %1534
  %1541 = fmul fast float %1540, 0x3F70101020000000
  %1542 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  br i1 %969, label %1543, label %1551

; <label>:1543                                    ; preds = %1528
  %1544 = fsub fast float 1.000000e+00, %1150
  %1545 = fmul fast float %1544, %959
  %1546 = fmul fast float %1544, %960
  %1547 = fmul fast float %1544, %961
  %1548 = fmul fast float %1544, %956
  %1549 = fmul fast float %1544, %957
  %1550 = fmul fast float %1544, %958
  br label %1551

; <label>:1551                                    ; preds = %1543, %1528
  %1552 = phi float [ %1548, %1543 ], [ %956, %1528 ]
  %1553 = phi float [ %1549, %1543 ], [ %957, %1528 ]
  %1554 = phi float [ %1550, %1543 ], [ %958, %1528 ]
  %1555 = phi float [ %1545, %1543 ], [ %959, %1528 ]
  %1556 = phi float [ %1546, %1543 ], [ %960, %1528 ]
  %1557 = phi float [ %1547, %1543 ], [ %961, %1528 ]
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 3
  %1561 = icmp eq i32 %1560, 3
  br i1 %1561, label %1640, label %1562

; <label>:1562                                    ; preds = %1551
  %1563 = and i32 %1559, 16
  %1564 = icmp ne i32 %1563, 0
  %1565 = select i1 %1564, float %1150, float 0.000000e+00
  %1566 = icmp eq i32 %1560, 0
  br i1 %1566, label %1567, label %1595

; <label>:1567                                    ; preds = %1562
  %1568 = and i32 %1559, 64
  %1569 = icmp ne i32 %1568, 0
  %1570 = select i1 %1569, float %1150, float 0.000000e+00
  %1571 = fsub fast float %1370, %1555
  %1572 = fsub fast float %1371, %1556
  %1573 = fsub fast float %1372, %1557
  %1574 = fmul fast float %1565, %1571
  %1575 = fmul fast float %1565, %1572
  %1576 = fmul fast float %1565, %1573
  %1577 = fadd fast float %1574, %1555
  %1578 = fadd fast float %1575, %1556
  %1579 = fadd fast float %1576, %1557
  %1580 = fsub fast float %1356, %962
  %1581 = fmul fast float %1565, %1580
  %1582 = fadd fast float %1581, %962
  %1583 = fsub fast float %1498, %1552
  %1584 = fsub fast float %1499, %1553
  %1585 = fsub fast float %1500, %1554
  %1586 = fmul fast float %1570, %1583
  %1587 = fmul fast float %1570, %1584
  %1588 = fmul fast float %1570, %1585
  %1589 = fadd fast float %1586, %1552
  %1590 = fadd fast float %1587, %1553
  %1591 = fadd fast float %1588, %1554
  %1592 = fsub fast float %1542, %967
  %1593 = fmul fast float %1565, %1592
  %1594 = fadd fast float %1593, %967
  br label %1640

; <label>:1595                                    ; preds = %1562
  %1596 = icmp eq i32 %1560, 1
  br i1 %1596, label %1597, label %1610

; <label>:1597                                    ; preds = %1595
  %1598 = fadd fast float %1370, -1.000000e+00
  %1599 = fadd fast float %1371, -1.000000e+00
  %1600 = fadd fast float %1372, -1.000000e+00
  %1601 = fmul fast float %1565, %1598
  %1602 = fmul fast float %1565, %1599
  %1603 = fmul fast float %1565, %1600
  %1604 = fadd fast float %1601, 1.000000e+00
  %1605 = fadd fast float %1602, 1.000000e+00
  %1606 = fadd fast float %1603, 1.000000e+00
  %1607 = fmul fast float %1604, %1555
  %1608 = fmul fast float %1605, %1556
  %1609 = fmul fast float %1606, %1557
  br label %1640

; <label>:1610                                    ; preds = %1595
  %1611 = icmp eq i32 %1560, 2
  br i1 %1611, label %1612, label %1640

; <label>:1612                                    ; preds = %1610
  %1613 = call float @dx.op.unary.f32(i32 24, float %1370)  ; Sqrt(value)
  %1614 = call float @dx.op.unary.f32(i32 24, float %1371)  ; Sqrt(value)
  %1615 = call float @dx.op.unary.f32(i32 24, float %1372)  ; Sqrt(value)
  %1616 = fadd fast float %1613, -5.000000e-01
  %1617 = fadd fast float %1614, -5.000000e-01
  %1618 = fadd fast float %1615, -5.000000e-01
  %1619 = fmul fast float %1616, %1565
  %1620 = fmul fast float %1617, %1565
  %1621 = fmul fast float %1618, %1565
  %1622 = fadd fast float %1619, 5.000000e-01
  %1623 = fadd fast float %1620, 5.000000e-01
  %1624 = fadd fast float %1621, 5.000000e-01
  %1625 = fmul fast float %1622, 2.000000e+00
  %1626 = fsub fast float 1.000000e+00, %1625
  %1627 = fmul fast float %1626, %1555
  %1628 = fadd fast float %1627, %1625
  %1629 = fmul fast float %1628, %1555
  %1630 = fmul fast float %1623, 2.000000e+00
  %1631 = fsub fast float 1.000000e+00, %1630
  %1632 = fmul fast float %1631, %1556
  %1633 = fadd fast float %1632, %1630
  %1634 = fmul fast float %1633, %1556
  %1635 = fmul fast float %1624, 2.000000e+00
  %1636 = fsub fast float 1.000000e+00, %1635
  %1637 = fmul fast float %1636, %1557
  %1638 = fadd fast float %1637, %1635
  %1639 = fmul fast float %1638, %1557
  br label %1640

; <label>:1640                                    ; preds = %1612, %1610, %1597, %1567, %1551
  %1641 = phi float [ %1552, %1551 ], [ %1552, %1612 ], [ %1552, %1610 ], [ %1552, %1597 ], [ %1589, %1567 ]
  %1642 = phi float [ %1553, %1551 ], [ %1553, %1612 ], [ %1553, %1610 ], [ %1553, %1597 ], [ %1590, %1567 ]
  %1643 = phi float [ %1554, %1551 ], [ %1554, %1612 ], [ %1554, %1610 ], [ %1554, %1597 ], [ %1591, %1567 ]
  %1644 = phi float [ %1555, %1551 ], [ %1629, %1612 ], [ %1555, %1610 ], [ %1607, %1597 ], [ %1577, %1567 ]
  %1645 = phi float [ %1556, %1551 ], [ %1634, %1612 ], [ %1556, %1610 ], [ %1608, %1597 ], [ %1578, %1567 ]
  %1646 = phi float [ %1557, %1551 ], [ %1639, %1612 ], [ %1557, %1610 ], [ %1609, %1597 ], [ %1579, %1567 ]
  %1647 = phi float [ %962, %1551 ], [ %962, %1612 ], [ %962, %1610 ], [ %962, %1597 ], [ %1582, %1567 ]
  %1648 = phi float [ %967, %1551 ], [ %967, %1612 ], [ %967, %1610 ], [ %967, %1597 ], [ %1594, %1567 ]
  %1649 = and i32 %1559, 12
  %1650 = icmp eq i32 %1649, 12
  br i1 %1650, label %1733, label %1651

; <label>:1651                                    ; preds = %1640
  %1652 = and i32 %1559, 2097184
  %1653 = icmp eq i32 %1652, 2097184
  %1654 = select i1 %1653, float %1150, float 0.000000e+00
  %1655 = and i32 %1559, 4194336
  %1656 = icmp eq i32 %1655, 4194336
  %1657 = select i1 %1656, float %1150, float 0.000000e+00
  %1658 = and i32 %1559, 8388640
  %1659 = icmp eq i32 %1658, 8388640
  %1660 = select i1 %1659, float %1150, float 0.000000e+00
  %1661 = and i32 %1559, 16384
  %1662 = icmp ne i32 %1661, 0
  %1663 = select i1 %1662, float %1150, float 0.000000e+00
  %1664 = icmp eq i32 %1649, 0
  br i1 %1664, label %1665, label %1681

; <label>:1665                                    ; preds = %1651
  %1666 = fsub fast float %1451, %954
  %1667 = fsub fast float %1452, %955
  %1668 = fmul fast float %1654, %1666
  %1669 = fmul fast float %1654, %1667
  %1670 = fadd fast float %1668, %954
  %1671 = fadd fast float %1669, %955
  %1672 = fsub fast float %1453, %965
  %1673 = fmul fast float %1657, %1672
  %1674 = fadd fast float %1673, %965
  %1675 = fsub fast float %1450, %964
  %1676 = fmul fast float %1660, %1675
  %1677 = fadd fast float %1676, %964
  %1678 = fsub fast float %1529, %966
  %1679 = fmul fast float %1663, %1678
  %1680 = fadd fast float %1679, %966
  br label %1733

; <label>:1681                                    ; preds = %1651
  %1682 = icmp eq i32 %1649, 4
  br i1 %1682, label %1683, label %1717

; <label>:1683                                    ; preds = %1681
  %1684 = fmul fast float %1654, %1451
  %1685 = fmul fast float %1654, %1452
  %1686 = fadd fast float %1684, %954
  %1687 = fadd fast float %1685, %955
  %1688 = call float @dx.op.binary.f32(i32 36, float %965, float %1453)  ; FMin(a,b)
  %1689 = fsub fast float %1688, %965
  %1690 = fmul fast float %1689, %1657
  %1691 = fadd fast float %1690, %965
  %1692 = fadd fast float %1450, %964
  %1693 = fmul fast float %1692, 0x3FF337FAE0000000
  %1694 = fmul fast float %964, %964
  %1695 = fmul fast float %1450, %1450
  %1696 = fadd fast float %1695, %1694
  %1697 = fmul fast float %1696, 0x3FE5152B00000000
  %1698 = fmul fast float %964, 0xBFCC1F85E0000000
  %1699 = fmul fast float %1698, %1450
  %1700 = fadd fast float %1699, 0xBFE1363700000000
  %1701 = fadd fast float %1700, %1693
  %1702 = fsub fast float %1701, %1697
  %1703 = fmul fast float %1692, 0x3FBA6F0D00000000
  %1704 = fmul fast float %1696, 0x3FD0432880000000
  %1705 = fmul fast float %964, 0xBFEF110800000000
  %1706 = fmul fast float %1705, %1450
  %1707 = fadd fast float %1706, 1.000000e+00
  %1708 = fsub fast float %1707, %1703
  %1709 = fadd fast float %1708, %1704
  %1710 = fdiv fast float %1702, %1709
  %1711 = call float @dx.op.unary.f32(i32 7, float %1710)  ; Saturate(value)
  %1712 = fsub fast float %1711, %964
  %1713 = fmul fast float %1712, %1660
  %1714 = fadd fast float %1713, %964
  %1715 = fmul fast float %1663, %1529
  %1716 = fadd fast float %1715, %966
  br label %1733

; <label>:1717                                    ; preds = %1681
  %1718 = icmp eq i32 %1649, 8
  br i1 %1718, label %1719, label %1733

; <label>:1719                                    ; preds = %1717
  %1720 = fmul fast float %1654, %1451
  %1721 = fmul fast float %1654, %1452
  %1722 = fadd fast float %1720, %954
  %1723 = fadd fast float %1721, %955
  %1724 = call float @dx.op.binary.f32(i32 36, float %965, float %1453)  ; FMin(a,b)
  %1725 = fsub fast float %1724, %965
  %1726 = fmul fast float %1725, %1657
  %1727 = fadd fast float %1726, %965
  %1728 = fsub fast float %1450, %964
  %1729 = fmul fast float %1660, %1728
  %1730 = fadd fast float %1729, %964
  %1731 = fmul fast float %1663, %1529
  %1732 = fadd fast float %1731, %966
  br label %1733

; <label>:1733                                    ; preds = %1719, %1717, %1683, %1665, %1640, %1149, %968, %953
  %1734 = phi float [ %954, %1640 ], [ %954, %1149 ], [ %954, %953 ], [ %1722, %1719 ], [ %954, %1717 ], [ %1686, %1683 ], [ %1670, %1665 ], [ %954, %968 ]
  %1735 = phi float [ %955, %1640 ], [ %955, %1149 ], [ %955, %953 ], [ %1723, %1719 ], [ %955, %1717 ], [ %1687, %1683 ], [ %1671, %1665 ], [ %955, %968 ]
  %1736 = phi float [ %1641, %1640 ], [ %956, %1149 ], [ %956, %953 ], [ %1641, %1719 ], [ %1641, %1717 ], [ %1641, %1683 ], [ %1641, %1665 ], [ %956, %968 ]
  %1737 = phi float [ %1642, %1640 ], [ %957, %1149 ], [ %957, %953 ], [ %1642, %1719 ], [ %1642, %1717 ], [ %1642, %1683 ], [ %1642, %1665 ], [ %957, %968 ]
  %1738 = phi float [ %1643, %1640 ], [ %958, %1149 ], [ %958, %953 ], [ %1643, %1719 ], [ %1643, %1717 ], [ %1643, %1683 ], [ %1643, %1665 ], [ %958, %968 ]
  %1739 = phi float [ %1644, %1640 ], [ %959, %1149 ], [ %959, %953 ], [ %1644, %1719 ], [ %1644, %1717 ], [ %1644, %1683 ], [ %1644, %1665 ], [ %959, %968 ]
  %1740 = phi float [ %1645, %1640 ], [ %960, %1149 ], [ %960, %953 ], [ %1645, %1719 ], [ %1645, %1717 ], [ %1645, %1683 ], [ %1645, %1665 ], [ %960, %968 ]
  %1741 = phi float [ %1646, %1640 ], [ %961, %1149 ], [ %961, %953 ], [ %1646, %1719 ], [ %1646, %1717 ], [ %1646, %1683 ], [ %1646, %1665 ], [ %961, %968 ]
  %1742 = phi float [ %1647, %1640 ], [ %962, %1149 ], [ %962, %953 ], [ %1647, %1719 ], [ %1647, %1717 ], [ %1647, %1683 ], [ %1647, %1665 ], [ %962, %968 ]
  %1743 = phi float [ %964, %1640 ], [ %964, %1149 ], [ %964, %953 ], [ %1730, %1719 ], [ %964, %1717 ], [ %1714, %1683 ], [ %1677, %1665 ], [ %964, %968 ]
  %1744 = phi float [ %965, %1640 ], [ %965, %1149 ], [ %965, %953 ], [ %1727, %1719 ], [ %965, %1717 ], [ %1691, %1683 ], [ %1674, %1665 ], [ %965, %968 ]
  %1745 = phi float [ %966, %1640 ], [ %966, %1149 ], [ %966, %953 ], [ %1732, %1719 ], [ %966, %1717 ], [ %1716, %1683 ], [ %1680, %1665 ], [ %966, %968 ]
  %1746 = phi float [ %1648, %1640 ], [ %967, %1149 ], [ %967, %953 ], [ %1648, %1719 ], [ %1648, %1717 ], [ %1648, %1683 ], [ %1648, %1665 ], [ %967, %968 ]
  br i1 %404, label %2512, label %1747

; <label>:1747                                    ; preds = %1733
  %1748 = icmp ult i32 %457, 3
  %1749 = add i32 %34, 56
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = add i32 %34, 60
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = or i32 %1754, %1751
  %1756 = icmp eq i32 %1755, 0
  br i1 %1756, label %2512, label %1757

; <label>:1757                                    ; preds = %1747
  %1758 = and i32 %1751, 262144
  %1759 = icmp ne i32 %1758, 0
  %1760 = select i1 %1759, float %40, float 1.000000e+00
  %1761 = select i1 %1759, float %41, float 0.000000e+00
  %1762 = select i1 %1759, float %42, float 0.000000e+00
  %1763 = select i1 %1759, float %43, float 1.000000e+00
  %1764 = select i1 %1759, float %44, float %67
  %1765 = select i1 %1759, float %45, float %68
  %1766 = add i32 %34, 316
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = lshr i32 %1768, 16
  %1770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1769)  ; LegacyF16ToF32(value)
  %1771 = fmul fast float %1770, 0x3F50624DE0000000
  %1772 = add i32 %34, 120
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1772, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = lshr i32 %1774, 16
  %1776 = and i32 %1775, 255
  %1777 = lshr i32 %1774, 24
  %1778 = add i32 %34, 324
  %1779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.i32 %1779, 0
  %1781 = and i32 %1780, 65535
  %1782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1781)  ; LegacyF16ToF32(value)
  %1783 = lshr i32 %1780, 16
  %1784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1783)  ; LegacyF16ToF32(value)
  %1785 = add i32 %34, 64
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = lshr i32 %1787, 22
  %1789 = shl nuw nsw i32 %1788, 5
  %1790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1789)  ; LegacyF16ToF32(value)
  %1791 = shl i32 %1787, 4
  %1792 = and i32 %1791, 32752
  %1793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1792)  ; LegacyF16ToF32(value)
  %1794 = lshr i32 %1787, 7
  %1795 = and i32 %1794, 32752
  %1796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1795)  ; LegacyF16ToF32(value)
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 3
  %1799 = fmul fast float %1798, 1.000000e+03
  %1800 = fmul fast float %354, %1799
  %1801 = call float @dx.op.unary.f32(i32 22, float %1800)  ; Frc(value)
  %1802 = fadd fast float %1801, %344
  %1803 = fmul fast float %355, %1799
  %1804 = call float @dx.op.unary.f32(i32 22, float %1803)  ; Frc(value)
  %1805 = fadd fast float %1804, %346
  %1806 = fmul fast float %1771, %1799
  %1807 = call float @dx.op.unary.f32(i32 22, float %1806)  ; Frc(value)
  %1808 = fmul fast float %1807, 0x401921FB60000000
  %1809 = fadd fast float %1808, %1790
  %1810 = call float @dx.op.unary.f32(i32 13, float %1809)  ; Sin(value)
  %1811 = call float @dx.op.unary.f32(i32 12, float %1809)  ; Cos(value)
  %1812 = fsub fast float -0.000000e+00, %1810
  %1813 = fadd fast float %1764, -5.000000e-01
  %1814 = fadd fast float %1765, -5.000000e-01
  %1815 = fmul fast float %1782, %1813
  %1816 = fmul fast float %1784, %1814
  %1817 = fadd fast float %1815, 5.000000e-01
  %1818 = fadd fast float %1816, 5.000000e-01
  %1819 = fmul fast float %1793, %1817
  %1820 = fmul fast float %1796, %1818
  %1821 = fmul fast float %1811, %1819
  %1822 = call float @dx.op.tertiary.f32(i32 46, float %1812, float %1820, float %1821)  ; FMad(a,b,c)
  %1823 = fmul fast float %1810, %1819
  %1824 = call float @dx.op.tertiary.f32(i32 46, float %1811, float %1820, float %1823)  ; FMad(a,b,c)
  %1825 = fadd fast float %1802, %1822
  %1826 = fadd fast float %1805, %1824
  %1827 = icmp ugt i32 %1776, 1
  %1828 = icmp ugt i32 %1774, 33554431
  %1829 = or i1 %1828, %1827
  br i1 %1829, label %1830, label %1855

; <label>:1830                                    ; preds = %1757
  %1831 = add i32 %34, 260
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = lshr i32 %1833, 16
  %1835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1834)  ; LegacyF16ToF32(value)
  %1836 = fmul fast float %1798, %1835
  %1837 = call float @dx.op.unary.f32(i32 22, float %1836)  ; Frc(value)
  %1838 = mul nuw nsw i32 %1776, %1777
  %1839 = uitofp i32 %1838 to float
  %1840 = fmul fast float %1837, %1839
  %1841 = call float @dx.op.unary.f32(i32 27, float %1840)  ; Round_ni(value)
  %1842 = fptoui float %1841 to i32
  %1843 = urem i32 %1842, %1776
  %1844 = udiv i32 %1842, %1777
  %1845 = call float @dx.op.unary.f32(i32 22, float %1825)  ; Frc(value)
  %1846 = call float @dx.op.unary.f32(i32 22, float %1826)  ; Frc(value)
  %1847 = uitofp i32 %1843 to float
  %1848 = uitofp i32 %1844 to float
  %1849 = fadd fast float %1845, %1847
  %1850 = fadd fast float %1846, %1848
  %1851 = uitofp i32 %1776 to float
  %1852 = uitofp i32 %1777 to float
  %1853 = fdiv fast float %1849, %1851
  %1854 = fdiv fast float %1850, %1852
  br label %1855

; <label>:1855                                    ; preds = %1830, %1757
  %1856 = phi float [ %1853, %1830 ], [ %1825, %1757 ]
  %1857 = phi float [ %1854, %1830 ], [ %1826, %1757 ]
  %1858 = and i32 %1751, 256
  %1859 = icmp eq i32 %1858, 0
  br i1 %1859, label %1906, label %1860

; <label>:1860                                    ; preds = %1855
  %1861 = add i32 %34, 448
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = add i32 %1863, 0
  %1865 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1864, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1866 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1865, %dx.types.Handle %76, float %1856, float %1857, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1867 = extractvalue %dx.types.ResRet.f32 %1866, 0
  %1868 = add i32 %34, 132
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = shl i32 %1870, 4
  %1872 = and i32 %1871, 32752
  %1873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1872)  ; LegacyF16ToF32(value)
  %1874 = lshr i32 %1870, 7
  %1875 = and i32 %1874, 32752
  %1876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1875)  ; LegacyF16ToF32(value)
  %1877 = fsub fast float 1.000000e+00, %453
  %1878 = call float @dx.op.binary.f32(i32 35, float %1877, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1879 = bitcast float %453 to i32
  %1880 = sitofp i32 %1879 to float
  %1881 = fadd fast float %1880, 0xC1CFBF8940000000
  %1882 = fmul fast float %1876, %1881
  %1883 = fadd fast float %1882, 0x41CFBF8940000000
  %1884 = fptosi float %1883 to i32
  %1885 = bitcast i32 %1884 to float
  %1886 = bitcast float %1878 to i32
  %1887 = sitofp i32 %1886 to float
  %1888 = fadd fast float %1887, 0xC1CFBF8940000000
  %1889 = fmul fast float %1888, %1876
  %1890 = fadd fast float %1889, 0x41CFBF8940000000
  %1891 = fptosi float %1890 to i32
  %1892 = bitcast i32 %1891 to float
  %1893 = fmul fast float %1885, %1873
  %1894 = fmul fast float %1892, %1873
  %1895 = fsub fast float %1878, %1893
  %1896 = fadd fast float %1894, %1878
  %1897 = call float @dx.op.unary.f32(i32 7, float %1895)  ; Saturate(value)
  %1898 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  %1899 = fsub fast float %1867, %1897
  %1900 = fsub fast float %1898, %1897
  %1901 = bitcast float %1900 to i32
  %1902 = sub nsw i32 2129859010, %1901
  %1903 = bitcast i32 %1902 to float
  %1904 = fmul fast float %1903, %1899
  %1905 = call float @dx.op.unary.f32(i32 7, float %1904)  ; Saturate(value)
  br label %1906

; <label>:1906                                    ; preds = %1860, %1855
  %1907 = phi float [ %1905, %1860 ], [ %453, %1855 ]
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = and i32 %1909, 128
  %1911 = icmp eq i32 %1910, 0
  br i1 %1911, label %1928, label %1912

; <label>:1912                                    ; preds = %1906
  %1913 = add i32 %34, 432
  %1914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.i32 %1914, 0
  %1916 = add i32 %1915, 0
  %1917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1916, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1918 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1917, %dx.types.Handle %76, float %1856, float %1857, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1919 = extractvalue %dx.types.ResRet.f32 %1918, 0
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = and i32 %1921, 524288
  %1923 = icmp ne i32 %1922, 0
  %1924 = fcmp fast ogt float %1919, 0x3FE0101020000000
  %1925 = select i1 %1924, float 1.000000e+00, float 0.000000e+00
  %1926 = select i1 %1923, float %1925, float %1919
  %1927 = fmul fast float %1926, %1907
  br label %1928

; <label>:1928                                    ; preds = %1912, %1906
  %1929 = phi float [ %1927, %1912 ], [ %1907, %1906 ]
  %1930 = fcmp fast ult float %1929, 0x3F70101020000000
  br i1 %1930, label %2512, label %1931

; <label>:1931                                    ; preds = %1928
  %1932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.i32 %1932, 0
  %1934 = and i32 %1933, 16
  %1935 = icmp eq i32 %1934, 0
  br i1 %1935, label %2134, label %1936

; <label>:1936                                    ; preds = %1931
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1772, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = add i32 %34, 384
  %1940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.i32 %1940, 0
  %1942 = add i32 %1941, 0
  %1943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1942, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1944 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1943, %dx.types.Handle %75, float %1856, float %1857, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1945 = extractvalue %dx.types.ResRet.f32 %1944, 0
  %1946 = extractvalue %dx.types.ResRet.f32 %1944, 1
  %1947 = extractvalue %dx.types.ResRet.f32 %1944, 2
  %1948 = extractvalue %dx.types.ResRet.f32 %1944, 3
  %1949 = and i32 %1938, 255
  %1950 = uitofp i32 %1949 to float
  %1951 = lshr i32 %1938, 8
  %1952 = and i32 %1951, 255
  %1953 = uitofp i32 %1952 to float
  %1954 = fmul fast float %1948, %1950
  %1955 = fadd fast float %1954, %1953
  %1956 = fmul fast float %1955, 0x3F70101000000000
  %1957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.i32 %1957, 0
  %1959 = and i32 %1958, 512
  %1960 = icmp eq i32 %1959, 0
  br i1 %1960, label %1969, label %1961

; <label>:1961                                    ; preds = %1936
  %1962 = add i32 %34, 468
  %1963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1964 = extractvalue %dx.types.ResRet.i32 %1963, 0
  %1965 = add i32 %1964, 0
  %1966 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1965, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1967 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1966, %dx.types.Handle %76, float %1856, float %1857, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1968 = extractvalue %dx.types.ResRet.f32 %1967, 0
  br label %1969

; <label>:1969                                    ; preds = %1961, %1936
  %1970 = phi float [ %1968, %1961 ], [ 1.000000e+00, %1936 ]
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = and i32 %1972, 33554432
  %1974 = icmp eq i32 %1973, 0
  br i1 %1974, label %2081, label %1975

; <label>:1975                                    ; preds = %1969
  %1976 = add i32 %34, 256
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = and i32 %1978, 65535
  %1980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1979)  ; LegacyF16ToF32(value)
  %1981 = lshr i32 %1978, 16
  %1982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1981)  ; LegacyF16ToF32(value)
  %1983 = add i32 %34, 260
  %1984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.i32 %1984, 0
  %1986 = and i32 %1985, 65535
  %1987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1986)  ; LegacyF16ToF32(value)
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = lshr i32 %1989, 24
  %1991 = uitofp i32 %1990 to float
  %1992 = fmul fast float %1991, 0x3F70101020000000
  %1993 = and i32 %1989, 255
  %1994 = uitofp i32 %1993 to float
  %1995 = fmul fast float %1994, 0x3F70101020000000
  %1996 = lshr i32 %1989, 8
  %1997 = and i32 %1996, 255
  %1998 = uitofp i32 %1997 to float
  %1999 = fmul fast float %1998, 0x3F70101020000000
  %2000 = lshr i32 %1989, 16
  %2001 = and i32 %2000, 255
  %2002 = uitofp i32 %2001 to float
  %2003 = fmul fast float %2002, 0x3F70101020000000
  %2004 = add i32 %34, 252
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = lshr i32 %2006, 24
  %2008 = uitofp i32 %2007 to float
  %2009 = fmul fast float %2008, 0x3F70101020000000
  %2010 = and i32 %2006, 255
  %2011 = uitofp i32 %2010 to float
  %2012 = fmul fast float %2011, 0x3F70101020000000
  %2013 = lshr i32 %2006, 8
  %2014 = and i32 %2013, 255
  %2015 = uitofp i32 %2014 to float
  %2016 = fmul fast float %2015, 0x3F70101020000000
  %2017 = lshr i32 %2006, 16
  %2018 = and i32 %2017, 255
  %2019 = uitofp i32 %2018 to float
  %2020 = fmul fast float %2019, 0x3F70101020000000
  %2021 = bitcast float %1945 to i32
  %2022 = ashr i32 %2021, 1
  %2023 = sub nsw i32 1597463174, %2022
  %2024 = bitcast i32 %2023 to float
  %2025 = fmul fast float %1945, 5.000000e-01
  %2026 = fmul fast float %2024, %2024
  %2027 = fmul fast float %2026, %2025
  %2028 = fsub fast float 1.500000e+00, %2027
  %2029 = fmul fast float %2024, %1945
  %2030 = fmul fast float %2029, %2028
  %2031 = bitcast float %1946 to i32
  %2032 = ashr i32 %2031, 1
  %2033 = sub nsw i32 1597463174, %2032
  %2034 = bitcast i32 %2033 to float
  %2035 = fmul fast float %1946, 5.000000e-01
  %2036 = fmul fast float %2034, %2034
  %2037 = fmul fast float %2036, %2035
  %2038 = fsub fast float 1.500000e+00, %2037
  %2039 = fmul fast float %2034, %1946
  %2040 = fmul fast float %2039, %2038
  %2041 = bitcast float %1947 to i32
  %2042 = ashr i32 %2041, 1
  %2043 = sub nsw i32 1597463174, %2042
  %2044 = bitcast i32 %2043 to float
  %2045 = fmul fast float %1947, 5.000000e-01
  %2046 = fmul fast float %2044, %2044
  %2047 = fmul fast float %2046, %2045
  %2048 = fsub fast float 1.500000e+00, %2047
  %2049 = fmul fast float %2044, %1947
  %2050 = fmul fast float %2049, %2048
  %2051 = fsub fast float %2030, %2012
  %2052 = fsub fast float %2040, %2016
  %2053 = fsub fast float %2050, %2020
  %2054 = fmul fast float %2051, %1980
  %2055 = fmul fast float %2052, %1982
  %2056 = fmul fast float %2053, %1987
  %2057 = fadd fast float %2054, %1995
  %2058 = fadd fast float %2055, %1999
  %2059 = fadd fast float %2056, %2003
  %2060 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2061 = call float @dx.op.unary.f32(i32 7, float %2058)  ; Saturate(value)
  %2062 = call float @dx.op.unary.f32(i32 7, float %2059)  ; Saturate(value)
  %2063 = fmul fast float %2060, %2060
  %2064 = fmul fast float %2061, %2061
  %2065 = fmul fast float %2062, %2062
  %2066 = fsub fast float %2063, %1945
  %2067 = fsub fast float %2064, %1946
  %2068 = fsub fast float %2065, %1947
  %2069 = fmul fast float %2066, %1970
  %2070 = fmul fast float %2067, %1970
  %2071 = fmul fast float %2068, %1970
  %2072 = fadd fast float %2069, %1945
  %2073 = fadd fast float %2070, %1946
  %2074 = fadd fast float %2071, %1947
  %2075 = fadd fast float %1992, %1956
  %2076 = fsub fast float %2075, %2009
  %2077 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  %2078 = fsub fast float %2077, %1956
  %2079 = fmul fast float %2078, %1970
  %2080 = fadd fast float %2079, %1956
  br label %2134

; <label>:2081                                    ; preds = %1969
  %2082 = and i32 %1972, 134217728
  %2083 = icmp eq i32 %2082, 0
  br i1 %2083, label %2118, label %2084

; <label>:2084                                    ; preds = %2081
  %2085 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %2086 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %2087 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %2088 = fadd fast float %2085, -5.000000e-01
  %2089 = fadd fast float %2086, -5.000000e-01
  %2090 = fadd fast float %2087, -5.000000e-01
  %2091 = fmul fast float %2088, %1970
  %2092 = fmul fast float %2089, %1970
  %2093 = fmul fast float %2090, %1970
  %2094 = fadd fast float %2091, 5.000000e-01
  %2095 = fadd fast float %2092, 5.000000e-01
  %2096 = fadd fast float %2093, 5.000000e-01
  %2097 = call float @dx.op.unary.f32(i32 24, float %1945)  ; Sqrt(value)
  %2098 = call float @dx.op.unary.f32(i32 24, float %1946)  ; Sqrt(value)
  %2099 = call float @dx.op.unary.f32(i32 24, float %1947)  ; Sqrt(value)
  %2100 = fmul fast float %2094, 2.000000e+00
  %2101 = fsub fast float 1.000000e+00, %2100
  %2102 = fmul fast float %2101, %2097
  %2103 = fadd fast float %2102, %2100
  %2104 = fmul fast float %2103, %2097
  %2105 = fmul fast float %2095, 2.000000e+00
  %2106 = fsub fast float 1.000000e+00, %2105
  %2107 = fmul fast float %2106, %2098
  %2108 = fadd fast float %2107, %2105
  %2109 = fmul fast float %2108, %2098
  %2110 = fmul fast float %2096, 2.000000e+00
  %2111 = fsub fast float 1.000000e+00, %2110
  %2112 = fmul fast float %2111, %2099
  %2113 = fadd fast float %2112, %2110
  %2114 = fmul fast float %2113, %2099
  %2115 = fmul fast float %2104, %2104
  %2116 = fmul fast float %2109, %2109
  %2117 = fmul fast float %2114, %2114
  br label %2134

; <label>:2118                                    ; preds = %2081
  %2119 = fmul fast float %331, %331
  %2120 = fmul fast float %335, %335
  %2121 = fmul fast float %339, %339
  %2122 = fadd fast float %2119, -1.000000e+00
  %2123 = fadd fast float %2120, -1.000000e+00
  %2124 = fadd fast float %2121, -1.000000e+00
  %2125 = fmul fast float %1970, %2122
  %2126 = fmul fast float %1970, %2123
  %2127 = fmul fast float %1970, %2124
  %2128 = fadd fast float %2125, 1.000000e+00
  %2129 = fadd fast float %2126, 1.000000e+00
  %2130 = fadd fast float %2127, 1.000000e+00
  %2131 = fmul fast float %2128, %1945
  %2132 = fmul fast float %2129, %1946
  %2133 = fmul fast float %2130, %1947
  br label %2134

; <label>:2134                                    ; preds = %2118, %2084, %1975, %1931
  %2135 = phi float [ %2080, %1975 ], [ %1956, %2084 ], [ %1956, %2118 ], [ 0x3FA23C0BE0000000, %1931 ]
  %2136 = phi float [ %2072, %1975 ], [ %2115, %2084 ], [ %2131, %2118 ], [ 1.000000e+00, %1931 ]
  %2137 = phi float [ %2073, %1975 ], [ %2116, %2084 ], [ %2132, %2118 ], [ 1.000000e+00, %1931 ]
  %2138 = phi float [ %2074, %1975 ], [ %2117, %2084 ], [ %2133, %2118 ], [ 1.000000e+00, %1931 ]
  %2139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2140 = extractvalue %dx.types.CBufRet.i32 %2139, 1
  %2141 = and i32 %2140, 1
  %2142 = icmp ne i32 %2141, 0
  %2143 = add i32 %34, 356
  %2144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.i32 %2144, 0
  %2146 = and i32 %2145, 32
  %2147 = icmp ne i32 %2146, 0
  %2148 = and i1 %2142, %2147
  %2149 = select i1 %2148, float 1.000000e+00, float %2136
  %2150 = select i1 %2148, float 0x3FD3333340000000, float %2137
  %2151 = select i1 %2148, float 0x3FD3333340000000, float %2138
  %2152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2153 = extractvalue %dx.types.ResRet.i32 %2152, 0
  %2154 = and i32 %2153, 32
  %2155 = icmp eq i32 %2154, 0
  br i1 %2155, label %2228, label %2156

; <label>:2156                                    ; preds = %2134
  %2157 = add i32 %34, 124
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = add i32 %34, 400
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = add i32 %2162, 0
  %2164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2163, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2165 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2164, %dx.types.Handle %75, float %1856, float %1857, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2166 = extractvalue %dx.types.ResRet.f32 %2165, 0
  %2167 = extractvalue %dx.types.ResRet.f32 %2165, 1
  %2168 = extractvalue %dx.types.ResRet.f32 %2165, 2
  %2169 = extractvalue %dx.types.ResRet.f32 %2165, 3
  %2170 = and i32 %2159, 255
  %2171 = uitofp i32 %2170 to float
  %2172 = lshr i32 %2159, 8
  %2173 = and i32 %2172, 255
  %2174 = uitofp i32 %2173 to float
  %2175 = lshr i32 %2159, 16
  %2176 = and i32 %2175, 255
  %2177 = uitofp i32 %2176 to float
  %2178 = fmul fast float %2177, 0x3F70101000000000
  %2179 = fmul fast float %2166, %2171
  %2180 = fadd fast float %2179, %2174
  %2181 = fmul fast float %2180, 0x3F70101000000000
  %2182 = fadd fast float %2167, -5.000000e-01
  %2183 = fadd fast float %2169, -5.000000e-01
  %2184 = fmul fast float %2182, %2178
  %2185 = fmul fast float %2183, %2178
  %2186 = fadd fast float %2184, 5.000000e-01
  %2187 = fadd fast float %2185, 5.000000e-01
  %2188 = fmul fast float %2186, 2.000000e+00
  %2189 = fadd fast float %2188, -1.000000e+00
  %2190 = fmul fast float %2187, 2.000000e+00
  %2191 = fadd fast float %2190, -1.000000e+00
  %2192 = fadd fast float %2189, %2191
  %2193 = fmul fast float %2192, 5.000000e-01
  %2194 = fsub fast float %2189, %2191
  %2195 = fmul fast float %2194, 5.000000e-01
  %2196 = call float @dx.op.unary.f32(i32 6, float %2193)  ; FAbs(value)
  %2197 = fsub fast float 1.000000e+00, %2196
  %2198 = call float @dx.op.unary.f32(i32 6, float %2195)  ; FAbs(value)
  %2199 = fsub fast float %2197, %2198
  %2200 = call float @dx.op.dot3.f32(i32 55, float %2193, float %2195, float %2199, float %2193, float %2195, float %2199)  ; Dot3(ax,ay,az,bx,by,bz)
  %2201 = call float @dx.op.unary.f32(i32 25, float %2200)  ; Rsqrt(value)
  %2202 = fmul fast float %2193, %2201
  %2203 = fmul fast float %2195, %2201
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = and i32 %2205, 67108864
  %2207 = icmp eq i32 %2206, 0
  br i1 %2207, label %2224, label %2208

; <label>:2208                                    ; preds = %2156
  %2209 = add i32 %34, 312
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2209, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 65535
  %2213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2212)  ; LegacyF16ToF32(value)
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = and i32 %2215, 65535
  %2217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2216)  ; LegacyF16ToF32(value)
  %2218 = lshr i32 %2211, 16
  %2219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2218)  ; LegacyF16ToF32(value)
  %2220 = fsub fast float %2181, %2219
  %2221 = fmul fast float %2220, %2213
  %2222 = fadd fast float %2221, %2217
  %2223 = call float @dx.op.unary.f32(i32 7, float %2222)  ; Saturate(value)
  br label %2224

; <label>:2224                                    ; preds = %2208, %2156
  %2225 = phi float [ %2223, %2208 ], [ %2181, %2156 ]
  %2226 = call float @dx.op.dot2.f32(i32 54, float %2202, float %2203, float %1760, float %1761)  ; Dot2(ax,ay,bx,by)
  %2227 = call float @dx.op.dot2.f32(i32 54, float %2202, float %2203, float %1762, float %1763)  ; Dot2(ax,ay,bx,by)
  br label %2228

; <label>:2228                                    ; preds = %2224, %2134
  %2229 = phi float [ %2225, %2224 ], [ 0x3FD6666660000000, %2134 ]
  %2230 = phi float [ %2226, %2224 ], [ 0.000000e+00, %2134 ]
  %2231 = phi float [ %2227, %2224 ], [ 0.000000e+00, %2134 ]
  %2232 = phi float [ %2168, %2224 ], [ 1.000000e+00, %2134 ]
  %2233 = add i32 %34, 192
  %2234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2233, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.i32 %2234, 0
  %2236 = lshr i32 %2235, 22
  %2237 = shl nuw nsw i32 %2236, 5
  %2238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2237)  ; LegacyF16ToF32(value)
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = and i32 %2240, 64
  %2242 = icmp eq i32 %2241, 0
  br i1 %2242, label %2276, label %2243

; <label>:2243                                    ; preds = %2228
  %2244 = add i32 %34, 416
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = add i32 %2246, 0
  %2248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2247, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = and i32 %2250, 131072
  %2252 = icmp eq i32 %2251, 0
  %2253 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2248, %dx.types.Handle %75, float %1856, float %1857, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2254 = extractvalue %dx.types.ResRet.f32 %2253, 0
  %2255 = extractvalue %dx.types.ResRet.f32 %2253, 1
  %2256 = extractvalue %dx.types.ResRet.f32 %2253, 2
  %2257 = fmul fast float %2254, %319
  %2258 = fmul fast float %2255, %322
  %2259 = fmul fast float %2256, %325
  br i1 %2252, label %2266, label %2260

; <label>:2260                                    ; preds = %2243
  %2261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2262 = extractvalue %dx.types.CBufRet.f32 %2261, 0
  %2263 = fmul fast float %2262, %2257
  %2264 = fmul fast float %2262, %2258
  %2265 = fmul fast float %2262, %2259
  br label %2266

; <label>:2266                                    ; preds = %2260, %2243
  %2267 = phi float [ %2263, %2260 ], [ %2257, %2243 ]
  %2268 = phi float [ %2264, %2260 ], [ %2258, %2243 ]
  %2269 = phi float [ %2265, %2260 ], [ %2259, %2243 ]
  %2270 = fmul fast float %2267, %2238
  %2271 = select i1 %218, float %2270, float %2267
  %2272 = call float @dx.op.dot3.f32(i32 55, float %2271, float %2268, float %2269, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2273 = select i1 %218, float 0.000000e+00, float %2267
  %2274 = select i1 %218, float %2272, float %2268
  %2275 = select i1 %218, float 0.000000e+00, float %2269
  br label %2276

; <label>:2276                                    ; preds = %2266, %2228
  %2277 = phi float [ %2273, %2266 ], [ 0.000000e+00, %2228 ]
  %2278 = phi float [ %2274, %2266 ], [ 0.000000e+00, %2228 ]
  %2279 = phi float [ %2275, %2266 ], [ 0.000000e+00, %2228 ]
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 26624
  %2283 = icmp eq i32 %2282, 0
  br i1 %2283, label %2307, label %2284

; <label>:2284                                    ; preds = %2276
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = and i32 %2286, 16384
  %2288 = icmp eq i32 %2287, 0
  br i1 %2288, label %2307, label %2289

; <label>:2289                                    ; preds = %2284
  %2290 = and i32 %2286, 1048576
  %2291 = icmp ne i32 %2290, 0
  %2292 = add i32 %34, 484
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = add i32 %2294, 0
  %2296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2295, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2297 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2296, %dx.types.Handle %76, float %1856, float %1857, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2298 = extractvalue %dx.types.ResRet.f32 %2297, 0
  %2299 = add i32 %34, 128
  %2300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2299, i32 undef)  ; BufferLoad(srv,index,wot)
  %2301 = extractvalue %dx.types.ResRet.i32 %2300, 0
  %2302 = lshr i32 %2301, 24
  %2303 = uitofp i32 %2302 to float
  %2304 = fmul fast float %2298, 0x3F70101020000000
  %2305 = select i1 %2291, float 0x3F70101020000000, float %2304
  %2306 = fmul fast float %2305, %2303
  br label %2307

; <label>:2307                                    ; preds = %2289, %2284, %2276
  %2308 = phi float [ %2306, %2289 ], [ 0.000000e+00, %2284 ], [ 0.000000e+00, %2276 ]
  %2309 = add i32 %34, 128
  %2310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2311 = extractvalue %dx.types.ResRet.i32 %2310, 0
  %2312 = and i32 %2311, 255
  %2313 = uitofp i32 %2312 to float
  %2314 = lshr i32 %2311, 8
  %2315 = and i32 %2314, 255
  %2316 = uitofp i32 %2315 to float
  %2317 = call float @dx.op.dot3.f32(i32 55, float %2149, float %2150, float %2151, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2318 = fmul fast float %2316, %2317
  %2319 = fadd fast float %2318, %2313
  %2320 = fmul fast float %2319, 0x3F70101020000000
  %2321 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  br i1 %1748, label %2322, label %2330

; <label>:2322                                    ; preds = %2307
  %2323 = fsub fast float 1.000000e+00, %1929
  %2324 = fmul fast float %2323, %1739
  %2325 = fmul fast float %2323, %1740
  %2326 = fmul fast float %2323, %1741
  %2327 = fmul fast float %2323, %1736
  %2328 = fmul fast float %2323, %1737
  %2329 = fmul fast float %2323, %1738
  br label %2330

; <label>:2330                                    ; preds = %2322, %2307
  %2331 = phi float [ %2327, %2322 ], [ %1736, %2307 ]
  %2332 = phi float [ %2328, %2322 ], [ %1737, %2307 ]
  %2333 = phi float [ %2329, %2322 ], [ %1738, %2307 ]
  %2334 = phi float [ %2324, %2322 ], [ %1739, %2307 ]
  %2335 = phi float [ %2325, %2322 ], [ %1740, %2307 ]
  %2336 = phi float [ %2326, %2322 ], [ %1741, %2307 ]
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = and i32 %2338, 3
  %2340 = icmp eq i32 %2339, 3
  br i1 %2340, label %2419, label %2341

; <label>:2341                                    ; preds = %2330
  %2342 = and i32 %2338, 16
  %2343 = icmp ne i32 %2342, 0
  %2344 = select i1 %2343, float %1929, float 0.000000e+00
  %2345 = icmp eq i32 %2339, 0
  br i1 %2345, label %2346, label %2374

; <label>:2346                                    ; preds = %2341
  %2347 = and i32 %2338, 64
  %2348 = icmp ne i32 %2347, 0
  %2349 = select i1 %2348, float %1929, float 0.000000e+00
  %2350 = fsub fast float %2149, %2334
  %2351 = fsub fast float %2150, %2335
  %2352 = fsub fast float %2151, %2336
  %2353 = fmul fast float %2344, %2350
  %2354 = fmul fast float %2344, %2351
  %2355 = fmul fast float %2344, %2352
  %2356 = fadd fast float %2353, %2334
  %2357 = fadd fast float %2354, %2335
  %2358 = fadd fast float %2355, %2336
  %2359 = fsub fast float %2135, %1742
  %2360 = fmul fast float %2344, %2359
  %2361 = fadd fast float %2360, %1742
  %2362 = fsub fast float %2277, %2331
  %2363 = fsub fast float %2278, %2332
  %2364 = fsub fast float %2279, %2333
  %2365 = fmul fast float %2349, %2362
  %2366 = fmul fast float %2349, %2363
  %2367 = fmul fast float %2349, %2364
  %2368 = fadd fast float %2365, %2331
  %2369 = fadd fast float %2366, %2332
  %2370 = fadd fast float %2367, %2333
  %2371 = fsub fast float %2321, %1746
  %2372 = fmul fast float %2344, %2371
  %2373 = fadd fast float %2372, %1746
  br label %2419

; <label>:2374                                    ; preds = %2341
  %2375 = icmp eq i32 %2339, 1
  br i1 %2375, label %2376, label %2389

; <label>:2376                                    ; preds = %2374
  %2377 = fadd fast float %2149, -1.000000e+00
  %2378 = fadd fast float %2150, -1.000000e+00
  %2379 = fadd fast float %2151, -1.000000e+00
  %2380 = fmul fast float %2344, %2377
  %2381 = fmul fast float %2344, %2378
  %2382 = fmul fast float %2344, %2379
  %2383 = fadd fast float %2380, 1.000000e+00
  %2384 = fadd fast float %2381, 1.000000e+00
  %2385 = fadd fast float %2382, 1.000000e+00
  %2386 = fmul fast float %2383, %2334
  %2387 = fmul fast float %2384, %2335
  %2388 = fmul fast float %2385, %2336
  br label %2419

; <label>:2389                                    ; preds = %2374
  %2390 = icmp eq i32 %2339, 2
  br i1 %2390, label %2391, label %2419

; <label>:2391                                    ; preds = %2389
  %2392 = call float @dx.op.unary.f32(i32 24, float %2149)  ; Sqrt(value)
  %2393 = call float @dx.op.unary.f32(i32 24, float %2150)  ; Sqrt(value)
  %2394 = call float @dx.op.unary.f32(i32 24, float %2151)  ; Sqrt(value)
  %2395 = fadd fast float %2392, -5.000000e-01
  %2396 = fadd fast float %2393, -5.000000e-01
  %2397 = fadd fast float %2394, -5.000000e-01
  %2398 = fmul fast float %2395, %2344
  %2399 = fmul fast float %2396, %2344
  %2400 = fmul fast float %2397, %2344
  %2401 = fadd fast float %2398, 5.000000e-01
  %2402 = fadd fast float %2399, 5.000000e-01
  %2403 = fadd fast float %2400, 5.000000e-01
  %2404 = fmul fast float %2401, 2.000000e+00
  %2405 = fsub fast float 1.000000e+00, %2404
  %2406 = fmul fast float %2405, %2334
  %2407 = fadd fast float %2406, %2404
  %2408 = fmul fast float %2407, %2334
  %2409 = fmul fast float %2402, 2.000000e+00
  %2410 = fsub fast float 1.000000e+00, %2409
  %2411 = fmul fast float %2410, %2335
  %2412 = fadd fast float %2411, %2409
  %2413 = fmul fast float %2412, %2335
  %2414 = fmul fast float %2403, 2.000000e+00
  %2415 = fsub fast float 1.000000e+00, %2414
  %2416 = fmul fast float %2415, %2336
  %2417 = fadd fast float %2416, %2414
  %2418 = fmul fast float %2417, %2336
  br label %2419

; <label>:2419                                    ; preds = %2391, %2389, %2376, %2346, %2330
  %2420 = phi float [ %2331, %2330 ], [ %2331, %2391 ], [ %2331, %2389 ], [ %2331, %2376 ], [ %2368, %2346 ]
  %2421 = phi float [ %2332, %2330 ], [ %2332, %2391 ], [ %2332, %2389 ], [ %2332, %2376 ], [ %2369, %2346 ]
  %2422 = phi float [ %2333, %2330 ], [ %2333, %2391 ], [ %2333, %2389 ], [ %2333, %2376 ], [ %2370, %2346 ]
  %2423 = phi float [ %2334, %2330 ], [ %2408, %2391 ], [ %2334, %2389 ], [ %2386, %2376 ], [ %2356, %2346 ]
  %2424 = phi float [ %2335, %2330 ], [ %2413, %2391 ], [ %2335, %2389 ], [ %2387, %2376 ], [ %2357, %2346 ]
  %2425 = phi float [ %2336, %2330 ], [ %2418, %2391 ], [ %2336, %2389 ], [ %2388, %2376 ], [ %2358, %2346 ]
  %2426 = phi float [ %1742, %2330 ], [ %1742, %2391 ], [ %1742, %2389 ], [ %1742, %2376 ], [ %2361, %2346 ]
  %2427 = phi float [ %1746, %2330 ], [ %1746, %2391 ], [ %1746, %2389 ], [ %1746, %2376 ], [ %2373, %2346 ]
  %2428 = and i32 %2338, 12
  %2429 = icmp eq i32 %2428, 12
  br i1 %2429, label %2512, label %2430

; <label>:2430                                    ; preds = %2419
  %2431 = and i32 %2338, 2097184
  %2432 = icmp eq i32 %2431, 2097184
  %2433 = select i1 %2432, float %1929, float 0.000000e+00
  %2434 = and i32 %2338, 4194336
  %2435 = icmp eq i32 %2434, 4194336
  %2436 = select i1 %2435, float %1929, float 0.000000e+00
  %2437 = and i32 %2338, 8388640
  %2438 = icmp eq i32 %2437, 8388640
  %2439 = select i1 %2438, float %1929, float 0.000000e+00
  %2440 = and i32 %2338, 16384
  %2441 = icmp ne i32 %2440, 0
  %2442 = select i1 %2441, float %1929, float 0.000000e+00
  %2443 = icmp eq i32 %2428, 0
  br i1 %2443, label %2444, label %2460

; <label>:2444                                    ; preds = %2430
  %2445 = fsub fast float %2230, %1734
  %2446 = fsub fast float %2231, %1735
  %2447 = fmul fast float %2433, %2445
  %2448 = fmul fast float %2433, %2446
  %2449 = fadd fast float %2447, %1734
  %2450 = fadd fast float %2448, %1735
  %2451 = fsub fast float %2232, %1744
  %2452 = fmul fast float %2436, %2451
  %2453 = fadd fast float %2452, %1744
  %2454 = fsub fast float %2229, %1743
  %2455 = fmul fast float %2439, %2454
  %2456 = fadd fast float %2455, %1743
  %2457 = fsub fast float %2308, %1745
  %2458 = fmul fast float %2442, %2457
  %2459 = fadd fast float %2458, %1745
  br label %2512

; <label>:2460                                    ; preds = %2430
  %2461 = icmp eq i32 %2428, 4
  br i1 %2461, label %2462, label %2496

; <label>:2462                                    ; preds = %2460
  %2463 = fmul fast float %2433, %2230
  %2464 = fmul fast float %2433, %2231
  %2465 = fadd fast float %2463, %1734
  %2466 = fadd fast float %2464, %1735
  %2467 = call float @dx.op.binary.f32(i32 36, float %1744, float %2232)  ; FMin(a,b)
  %2468 = fsub fast float %2467, %1744
  %2469 = fmul fast float %2468, %2436
  %2470 = fadd fast float %2469, %1744
  %2471 = fadd fast float %2229, %1743
  %2472 = fmul fast float %2471, 0x3FF337FAE0000000
  %2473 = fmul fast float %1743, %1743
  %2474 = fmul fast float %2229, %2229
  %2475 = fadd fast float %2474, %2473
  %2476 = fmul fast float %2475, 0x3FE5152B00000000
  %2477 = fmul fast float %1743, 0xBFCC1F85E0000000
  %2478 = fmul fast float %2477, %2229
  %2479 = fadd fast float %2478, 0xBFE1363700000000
  %2480 = fadd fast float %2479, %2472
  %2481 = fsub fast float %2480, %2476
  %2482 = fmul fast float %2471, 0x3FBA6F0D00000000
  %2483 = fmul fast float %2475, 0x3FD0432880000000
  %2484 = fmul fast float %1743, 0xBFEF110800000000
  %2485 = fmul fast float %2484, %2229
  %2486 = fadd fast float %2485, 1.000000e+00
  %2487 = fsub fast float %2486, %2482
  %2488 = fadd fast float %2487, %2483
  %2489 = fdiv fast float %2481, %2488
  %2490 = call float @dx.op.unary.f32(i32 7, float %2489)  ; Saturate(value)
  %2491 = fsub fast float %2490, %1743
  %2492 = fmul fast float %2491, %2439
  %2493 = fadd fast float %2492, %1743
  %2494 = fmul fast float %2442, %2308
  %2495 = fadd fast float %2494, %1745
  br label %2512

; <label>:2496                                    ; preds = %2460
  %2497 = icmp eq i32 %2428, 8
  br i1 %2497, label %2498, label %2512

; <label>:2498                                    ; preds = %2496
  %2499 = fmul fast float %2433, %2230
  %2500 = fmul fast float %2433, %2231
  %2501 = fadd fast float %2499, %1734
  %2502 = fadd fast float %2500, %1735
  %2503 = call float @dx.op.binary.f32(i32 36, float %1744, float %2232)  ; FMin(a,b)
  %2504 = fsub fast float %2503, %1744
  %2505 = fmul fast float %2504, %2436
  %2506 = fadd fast float %2505, %1744
  %2507 = fsub fast float %2229, %1743
  %2508 = fmul fast float %2439, %2507
  %2509 = fadd fast float %2508, %1743
  %2510 = fmul fast float %2442, %2308
  %2511 = fadd fast float %2510, %1745
  br label %2512

; <label>:2512                                    ; preds = %2498, %2496, %2462, %2444, %2419, %1928, %1747, %1733
  %2513 = phi float [ %1734, %2419 ], [ %1734, %1928 ], [ %1734, %1733 ], [ %2501, %2498 ], [ %1734, %2496 ], [ %2465, %2462 ], [ %2449, %2444 ], [ %1734, %1747 ]
  %2514 = phi float [ %1735, %2419 ], [ %1735, %1928 ], [ %1735, %1733 ], [ %2502, %2498 ], [ %1735, %2496 ], [ %2466, %2462 ], [ %2450, %2444 ], [ %1735, %1747 ]
  %2515 = phi float [ %2420, %2419 ], [ %1736, %1928 ], [ %1736, %1733 ], [ %2420, %2498 ], [ %2420, %2496 ], [ %2420, %2462 ], [ %2420, %2444 ], [ %1736, %1747 ]
  %2516 = phi float [ %2421, %2419 ], [ %1737, %1928 ], [ %1737, %1733 ], [ %2421, %2498 ], [ %2421, %2496 ], [ %2421, %2462 ], [ %2421, %2444 ], [ %1737, %1747 ]
  %2517 = phi float [ %2422, %2419 ], [ %1738, %1928 ], [ %1738, %1733 ], [ %2422, %2498 ], [ %2422, %2496 ], [ %2422, %2462 ], [ %2422, %2444 ], [ %1738, %1747 ]
  %2518 = phi float [ %2423, %2419 ], [ %1739, %1928 ], [ %1739, %1733 ], [ %2423, %2498 ], [ %2423, %2496 ], [ %2423, %2462 ], [ %2423, %2444 ], [ %1739, %1747 ]
  %2519 = phi float [ %2424, %2419 ], [ %1740, %1928 ], [ %1740, %1733 ], [ %2424, %2498 ], [ %2424, %2496 ], [ %2424, %2462 ], [ %2424, %2444 ], [ %1740, %1747 ]
  %2520 = phi float [ %2425, %2419 ], [ %1741, %1928 ], [ %1741, %1733 ], [ %2425, %2498 ], [ %2425, %2496 ], [ %2425, %2462 ], [ %2425, %2444 ], [ %1741, %1747 ]
  %2521 = phi float [ %2426, %2419 ], [ %1742, %1928 ], [ %1742, %1733 ], [ %2426, %2498 ], [ %2426, %2496 ], [ %2426, %2462 ], [ %2426, %2444 ], [ %1742, %1747 ]
  %2522 = phi float [ %1743, %2419 ], [ %1743, %1928 ], [ %1743, %1733 ], [ %2509, %2498 ], [ %1743, %2496 ], [ %2493, %2462 ], [ %2456, %2444 ], [ %1743, %1747 ]
  %2523 = phi float [ %1744, %2419 ], [ %1744, %1928 ], [ %1744, %1733 ], [ %2506, %2498 ], [ %1744, %2496 ], [ %2470, %2462 ], [ %2453, %2444 ], [ %1744, %1747 ]
  %2524 = phi float [ %1745, %2419 ], [ %1745, %1928 ], [ %1745, %1733 ], [ %2511, %2498 ], [ %1745, %2496 ], [ %2495, %2462 ], [ %2459, %2444 ], [ %1745, %1747 ]
  %2525 = phi float [ %2427, %2419 ], [ %1746, %1928 ], [ %1746, %1733 ], [ %2427, %2498 ], [ %2427, %2496 ], [ %2427, %2462 ], [ %2427, %2444 ], [ %1746, %1747 ]
  br i1 %406, label %3291, label %2526

; <label>:2526                                    ; preds = %2512
  %2527 = icmp ult i32 %457, 4
  %2528 = add i32 %34, 72
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = add i32 %34, 76
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = or i32 %2533, %2530
  %2535 = icmp eq i32 %2534, 0
  br i1 %2535, label %3291, label %2536

; <label>:2536                                    ; preds = %2526
  %2537 = and i32 %2530, 262144
  %2538 = icmp ne i32 %2537, 0
  %2539 = select i1 %2538, float %40, float 1.000000e+00
  %2540 = select i1 %2538, float %41, float 0.000000e+00
  %2541 = select i1 %2538, float %42, float 0.000000e+00
  %2542 = select i1 %2538, float %43, float 1.000000e+00
  %2543 = select i1 %2538, float %44, float %67
  %2544 = select i1 %2538, float %45, float %68
  %2545 = add i32 %34, 332
  %2546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2545, i32 undef)  ; BufferLoad(srv,index,wot)
  %2547 = extractvalue %dx.types.ResRet.i32 %2546, 0
  %2548 = lshr i32 %2547, 16
  %2549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2548)  ; LegacyF16ToF32(value)
  %2550 = fmul fast float %2549, 0x3F50624DE0000000
  %2551 = add i32 %34, 136
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = lshr i32 %2553, 16
  %2555 = and i32 %2554, 255
  %2556 = lshr i32 %2553, 24
  %2557 = add i32 %34, 340
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = and i32 %2559, 65535
  %2561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2560)  ; LegacyF16ToF32(value)
  %2562 = lshr i32 %2559, 16
  %2563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2562)  ; LegacyF16ToF32(value)
  %2564 = add i32 %34, 80
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = lshr i32 %2566, 22
  %2568 = shl nuw nsw i32 %2567, 5
  %2569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2568)  ; LegacyF16ToF32(value)
  %2570 = shl i32 %2566, 4
  %2571 = and i32 %2570, 32752
  %2572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2571)  ; LegacyF16ToF32(value)
  %2573 = lshr i32 %2566, 7
  %2574 = and i32 %2573, 32752
  %2575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2574)  ; LegacyF16ToF32(value)
  %2576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.f32 %2576, 3
  %2578 = fmul fast float %2577, 1.000000e+03
  %2579 = fmul fast float %396, %2578
  %2580 = call float @dx.op.unary.f32(i32 22, float %2579)  ; Frc(value)
  %2581 = fadd fast float %2580, %386
  %2582 = fmul fast float %397, %2578
  %2583 = call float @dx.op.unary.f32(i32 22, float %2582)  ; Frc(value)
  %2584 = fadd fast float %2583, %388
  %2585 = fmul fast float %2550, %2578
  %2586 = call float @dx.op.unary.f32(i32 22, float %2585)  ; Frc(value)
  %2587 = fmul fast float %2586, 0x401921FB60000000
  %2588 = fadd fast float %2587, %2569
  %2589 = call float @dx.op.unary.f32(i32 13, float %2588)  ; Sin(value)
  %2590 = call float @dx.op.unary.f32(i32 12, float %2588)  ; Cos(value)
  %2591 = fsub fast float -0.000000e+00, %2589
  %2592 = fadd fast float %2543, -5.000000e-01
  %2593 = fadd fast float %2544, -5.000000e-01
  %2594 = fmul fast float %2561, %2592
  %2595 = fmul fast float %2563, %2593
  %2596 = fadd fast float %2594, 5.000000e-01
  %2597 = fadd fast float %2595, 5.000000e-01
  %2598 = fmul fast float %2572, %2596
  %2599 = fmul fast float %2575, %2597
  %2600 = fmul fast float %2590, %2598
  %2601 = call float @dx.op.tertiary.f32(i32 46, float %2591, float %2599, float %2600)  ; FMad(a,b,c)
  %2602 = fmul fast float %2589, %2598
  %2603 = call float @dx.op.tertiary.f32(i32 46, float %2590, float %2599, float %2602)  ; FMad(a,b,c)
  %2604 = fadd fast float %2581, %2601
  %2605 = fadd fast float %2584, %2603
  %2606 = icmp ugt i32 %2555, 1
  %2607 = icmp ugt i32 %2553, 33554431
  %2608 = or i1 %2607, %2606
  br i1 %2608, label %2609, label %2634

; <label>:2609                                    ; preds = %2536
  %2610 = add i32 %34, 276
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = lshr i32 %2612, 16
  %2614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2613)  ; LegacyF16ToF32(value)
  %2615 = fmul fast float %2577, %2614
  %2616 = call float @dx.op.unary.f32(i32 22, float %2615)  ; Frc(value)
  %2617 = mul nuw nsw i32 %2555, %2556
  %2618 = uitofp i32 %2617 to float
  %2619 = fmul fast float %2616, %2618
  %2620 = call float @dx.op.unary.f32(i32 27, float %2619)  ; Round_ni(value)
  %2621 = fptoui float %2620 to i32
  %2622 = urem i32 %2621, %2555
  %2623 = udiv i32 %2621, %2556
  %2624 = call float @dx.op.unary.f32(i32 22, float %2604)  ; Frc(value)
  %2625 = call float @dx.op.unary.f32(i32 22, float %2605)  ; Frc(value)
  %2626 = uitofp i32 %2622 to float
  %2627 = uitofp i32 %2623 to float
  %2628 = fadd fast float %2624, %2626
  %2629 = fadd fast float %2625, %2627
  %2630 = uitofp i32 %2555 to float
  %2631 = uitofp i32 %2556 to float
  %2632 = fdiv fast float %2628, %2630
  %2633 = fdiv fast float %2629, %2631
  br label %2634

; <label>:2634                                    ; preds = %2609, %2536
  %2635 = phi float [ %2632, %2609 ], [ %2604, %2536 ]
  %2636 = phi float [ %2633, %2609 ], [ %2605, %2536 ]
  %2637 = and i32 %2530, 256
  %2638 = icmp eq i32 %2637, 0
  br i1 %2638, label %2685, label %2639

; <label>:2639                                    ; preds = %2634
  %2640 = add i32 %34, 452
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = add i32 %2642, 0
  %2644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2645 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2644, %dx.types.Handle %76, float %2635, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2646 = extractvalue %dx.types.ResRet.f32 %2645, 0
  %2647 = add i32 %34, 148
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = shl i32 %2649, 4
  %2651 = and i32 %2650, 32752
  %2652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2651)  ; LegacyF16ToF32(value)
  %2653 = lshr i32 %2649, 7
  %2654 = and i32 %2653, 32752
  %2655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2654)  ; LegacyF16ToF32(value)
  %2656 = fsub fast float 1.000000e+00, %452
  %2657 = call float @dx.op.binary.f32(i32 35, float %2656, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2658 = bitcast float %452 to i32
  %2659 = sitofp i32 %2658 to float
  %2660 = fadd fast float %2659, 0xC1CFBF8940000000
  %2661 = fmul fast float %2655, %2660
  %2662 = fadd fast float %2661, 0x41CFBF8940000000
  %2663 = fptosi float %2662 to i32
  %2664 = bitcast i32 %2663 to float
  %2665 = bitcast float %2657 to i32
  %2666 = sitofp i32 %2665 to float
  %2667 = fadd fast float %2666, 0xC1CFBF8940000000
  %2668 = fmul fast float %2667, %2655
  %2669 = fadd fast float %2668, 0x41CFBF8940000000
  %2670 = fptosi float %2669 to i32
  %2671 = bitcast i32 %2670 to float
  %2672 = fmul fast float %2664, %2652
  %2673 = fmul fast float %2671, %2652
  %2674 = fsub fast float %2657, %2672
  %2675 = fadd fast float %2673, %2657
  %2676 = call float @dx.op.unary.f32(i32 7, float %2674)  ; Saturate(value)
  %2677 = call float @dx.op.unary.f32(i32 7, float %2675)  ; Saturate(value)
  %2678 = fsub fast float %2646, %2676
  %2679 = fsub fast float %2677, %2676
  %2680 = bitcast float %2679 to i32
  %2681 = sub nsw i32 2129859010, %2680
  %2682 = bitcast i32 %2681 to float
  %2683 = fmul fast float %2682, %2678
  %2684 = call float @dx.op.unary.f32(i32 7, float %2683)  ; Saturate(value)
  br label %2685

; <label>:2685                                    ; preds = %2639, %2634
  %2686 = phi float [ %2684, %2639 ], [ %452, %2634 ]
  %2687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2688 = extractvalue %dx.types.ResRet.i32 %2687, 0
  %2689 = and i32 %2688, 128
  %2690 = icmp eq i32 %2689, 0
  br i1 %2690, label %2707, label %2691

; <label>:2691                                    ; preds = %2685
  %2692 = add i32 %34, 436
  %2693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2694 = extractvalue %dx.types.ResRet.i32 %2693, 0
  %2695 = add i32 %2694, 0
  %2696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2695, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2697 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2696, %dx.types.Handle %76, float %2635, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2698 = extractvalue %dx.types.ResRet.f32 %2697, 0
  %2699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2700 = extractvalue %dx.types.ResRet.i32 %2699, 0
  %2701 = and i32 %2700, 524288
  %2702 = icmp ne i32 %2701, 0
  %2703 = fcmp fast ogt float %2698, 0x3FE0101020000000
  %2704 = select i1 %2703, float 1.000000e+00, float 0.000000e+00
  %2705 = select i1 %2702, float %2704, float %2698
  %2706 = fmul fast float %2705, %2686
  br label %2707

; <label>:2707                                    ; preds = %2691, %2685
  %2708 = phi float [ %2706, %2691 ], [ %2686, %2685 ]
  %2709 = fcmp fast ult float %2708, 0x3F70101020000000
  br i1 %2709, label %3291, label %2710

; <label>:2710                                    ; preds = %2707
  %2711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2712 = extractvalue %dx.types.ResRet.i32 %2711, 0
  %2713 = and i32 %2712, 16
  %2714 = icmp eq i32 %2713, 0
  br i1 %2714, label %2913, label %2715

; <label>:2715                                    ; preds = %2710
  %2716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.i32 %2716, 0
  %2718 = add i32 %34, 388
  %2719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2718, i32 undef)  ; BufferLoad(srv,index,wot)
  %2720 = extractvalue %dx.types.ResRet.i32 %2719, 0
  %2721 = add i32 %2720, 0
  %2722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2721, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2723 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2722, %dx.types.Handle %75, float %2635, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2724 = extractvalue %dx.types.ResRet.f32 %2723, 0
  %2725 = extractvalue %dx.types.ResRet.f32 %2723, 1
  %2726 = extractvalue %dx.types.ResRet.f32 %2723, 2
  %2727 = extractvalue %dx.types.ResRet.f32 %2723, 3
  %2728 = and i32 %2717, 255
  %2729 = uitofp i32 %2728 to float
  %2730 = lshr i32 %2717, 8
  %2731 = and i32 %2730, 255
  %2732 = uitofp i32 %2731 to float
  %2733 = fmul fast float %2727, %2729
  %2734 = fadd fast float %2733, %2732
  %2735 = fmul fast float %2734, 0x3F70101000000000
  %2736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2737 = extractvalue %dx.types.ResRet.i32 %2736, 0
  %2738 = and i32 %2737, 512
  %2739 = icmp eq i32 %2738, 0
  br i1 %2739, label %2748, label %2740

; <label>:2740                                    ; preds = %2715
  %2741 = add i32 %34, 472
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = add i32 %2743, 0
  %2745 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2744, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2746 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2745, %dx.types.Handle %76, float %2635, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2747 = extractvalue %dx.types.ResRet.f32 %2746, 0
  br label %2748

; <label>:2748                                    ; preds = %2740, %2715
  %2749 = phi float [ %2747, %2740 ], [ 1.000000e+00, %2715 ]
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = and i32 %2751, 33554432
  %2753 = icmp eq i32 %2752, 0
  br i1 %2753, label %2860, label %2754

; <label>:2754                                    ; preds = %2748
  %2755 = add i32 %34, 272
  %2756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.i32 %2756, 0
  %2758 = and i32 %2757, 65535
  %2759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2758)  ; LegacyF16ToF32(value)
  %2760 = lshr i32 %2757, 16
  %2761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2760)  ; LegacyF16ToF32(value)
  %2762 = add i32 %34, 276
  %2763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2764 = extractvalue %dx.types.ResRet.i32 %2763, 0
  %2765 = and i32 %2764, 65535
  %2766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2765)  ; LegacyF16ToF32(value)
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = lshr i32 %2768, 24
  %2770 = uitofp i32 %2769 to float
  %2771 = fmul fast float %2770, 0x3F70101020000000
  %2772 = and i32 %2768, 255
  %2773 = uitofp i32 %2772 to float
  %2774 = fmul fast float %2773, 0x3F70101020000000
  %2775 = lshr i32 %2768, 8
  %2776 = and i32 %2775, 255
  %2777 = uitofp i32 %2776 to float
  %2778 = fmul fast float %2777, 0x3F70101020000000
  %2779 = lshr i32 %2768, 16
  %2780 = and i32 %2779, 255
  %2781 = uitofp i32 %2780 to float
  %2782 = fmul fast float %2781, 0x3F70101020000000
  %2783 = add i32 %34, 268
  %2784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2783, i32 undef)  ; BufferLoad(srv,index,wot)
  %2785 = extractvalue %dx.types.ResRet.i32 %2784, 0
  %2786 = lshr i32 %2785, 24
  %2787 = uitofp i32 %2786 to float
  %2788 = fmul fast float %2787, 0x3F70101020000000
  %2789 = and i32 %2785, 255
  %2790 = uitofp i32 %2789 to float
  %2791 = fmul fast float %2790, 0x3F70101020000000
  %2792 = lshr i32 %2785, 8
  %2793 = and i32 %2792, 255
  %2794 = uitofp i32 %2793 to float
  %2795 = fmul fast float %2794, 0x3F70101020000000
  %2796 = lshr i32 %2785, 16
  %2797 = and i32 %2796, 255
  %2798 = uitofp i32 %2797 to float
  %2799 = fmul fast float %2798, 0x3F70101020000000
  %2800 = bitcast float %2724 to i32
  %2801 = ashr i32 %2800, 1
  %2802 = sub nsw i32 1597463174, %2801
  %2803 = bitcast i32 %2802 to float
  %2804 = fmul fast float %2724, 5.000000e-01
  %2805 = fmul fast float %2803, %2803
  %2806 = fmul fast float %2805, %2804
  %2807 = fsub fast float 1.500000e+00, %2806
  %2808 = fmul fast float %2803, %2724
  %2809 = fmul fast float %2808, %2807
  %2810 = bitcast float %2725 to i32
  %2811 = ashr i32 %2810, 1
  %2812 = sub nsw i32 1597463174, %2811
  %2813 = bitcast i32 %2812 to float
  %2814 = fmul fast float %2725, 5.000000e-01
  %2815 = fmul fast float %2813, %2813
  %2816 = fmul fast float %2815, %2814
  %2817 = fsub fast float 1.500000e+00, %2816
  %2818 = fmul fast float %2813, %2725
  %2819 = fmul fast float %2818, %2817
  %2820 = bitcast float %2726 to i32
  %2821 = ashr i32 %2820, 1
  %2822 = sub nsw i32 1597463174, %2821
  %2823 = bitcast i32 %2822 to float
  %2824 = fmul fast float %2726, 5.000000e-01
  %2825 = fmul fast float %2823, %2823
  %2826 = fmul fast float %2825, %2824
  %2827 = fsub fast float 1.500000e+00, %2826
  %2828 = fmul fast float %2823, %2726
  %2829 = fmul fast float %2828, %2827
  %2830 = fsub fast float %2809, %2791
  %2831 = fsub fast float %2819, %2795
  %2832 = fsub fast float %2829, %2799
  %2833 = fmul fast float %2830, %2759
  %2834 = fmul fast float %2831, %2761
  %2835 = fmul fast float %2832, %2766
  %2836 = fadd fast float %2833, %2774
  %2837 = fadd fast float %2834, %2778
  %2838 = fadd fast float %2835, %2782
  %2839 = call float @dx.op.unary.f32(i32 7, float %2836)  ; Saturate(value)
  %2840 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  %2841 = call float @dx.op.unary.f32(i32 7, float %2838)  ; Saturate(value)
  %2842 = fmul fast float %2839, %2839
  %2843 = fmul fast float %2840, %2840
  %2844 = fmul fast float %2841, %2841
  %2845 = fsub fast float %2842, %2724
  %2846 = fsub fast float %2843, %2725
  %2847 = fsub fast float %2844, %2726
  %2848 = fmul fast float %2845, %2749
  %2849 = fmul fast float %2846, %2749
  %2850 = fmul fast float %2847, %2749
  %2851 = fadd fast float %2848, %2724
  %2852 = fadd fast float %2849, %2725
  %2853 = fadd fast float %2850, %2726
  %2854 = fadd fast float %2771, %2735
  %2855 = fsub fast float %2854, %2788
  %2856 = call float @dx.op.unary.f32(i32 7, float %2855)  ; Saturate(value)
  %2857 = fsub fast float %2856, %2735
  %2858 = fmul fast float %2857, %2749
  %2859 = fadd fast float %2858, %2735
  br label %2913

; <label>:2860                                    ; preds = %2748
  %2861 = and i32 %2751, 134217728
  %2862 = icmp eq i32 %2861, 0
  br i1 %2862, label %2897, label %2863

; <label>:2863                                    ; preds = %2860
  %2864 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %2865 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %2866 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %2867 = fadd fast float %2864, -5.000000e-01
  %2868 = fadd fast float %2865, -5.000000e-01
  %2869 = fadd fast float %2866, -5.000000e-01
  %2870 = fmul fast float %2867, %2749
  %2871 = fmul fast float %2868, %2749
  %2872 = fmul fast float %2869, %2749
  %2873 = fadd fast float %2870, 5.000000e-01
  %2874 = fadd fast float %2871, 5.000000e-01
  %2875 = fadd fast float %2872, 5.000000e-01
  %2876 = call float @dx.op.unary.f32(i32 24, float %2724)  ; Sqrt(value)
  %2877 = call float @dx.op.unary.f32(i32 24, float %2725)  ; Sqrt(value)
  %2878 = call float @dx.op.unary.f32(i32 24, float %2726)  ; Sqrt(value)
  %2879 = fmul fast float %2873, 2.000000e+00
  %2880 = fsub fast float 1.000000e+00, %2879
  %2881 = fmul fast float %2880, %2876
  %2882 = fadd fast float %2881, %2879
  %2883 = fmul fast float %2882, %2876
  %2884 = fmul fast float %2874, 2.000000e+00
  %2885 = fsub fast float 1.000000e+00, %2884
  %2886 = fmul fast float %2885, %2877
  %2887 = fadd fast float %2886, %2884
  %2888 = fmul fast float %2887, %2877
  %2889 = fmul fast float %2875, 2.000000e+00
  %2890 = fsub fast float 1.000000e+00, %2889
  %2891 = fmul fast float %2890, %2878
  %2892 = fadd fast float %2891, %2889
  %2893 = fmul fast float %2892, %2878
  %2894 = fmul fast float %2883, %2883
  %2895 = fmul fast float %2888, %2888
  %2896 = fmul fast float %2893, %2893
  br label %2913

; <label>:2897                                    ; preds = %2860
  %2898 = fmul fast float %373, %373
  %2899 = fmul fast float %377, %377
  %2900 = fmul fast float %381, %381
  %2901 = fadd fast float %2898, -1.000000e+00
  %2902 = fadd fast float %2899, -1.000000e+00
  %2903 = fadd fast float %2900, -1.000000e+00
  %2904 = fmul fast float %2749, %2901
  %2905 = fmul fast float %2749, %2902
  %2906 = fmul fast float %2749, %2903
  %2907 = fadd fast float %2904, 1.000000e+00
  %2908 = fadd fast float %2905, 1.000000e+00
  %2909 = fadd fast float %2906, 1.000000e+00
  %2910 = fmul fast float %2907, %2724
  %2911 = fmul fast float %2908, %2725
  %2912 = fmul fast float %2909, %2726
  br label %2913

; <label>:2913                                    ; preds = %2897, %2863, %2754, %2710
  %2914 = phi float [ %2859, %2754 ], [ %2735, %2863 ], [ %2735, %2897 ], [ 0x3FA23C0BE0000000, %2710 ]
  %2915 = phi float [ %2851, %2754 ], [ %2894, %2863 ], [ %2910, %2897 ], [ 1.000000e+00, %2710 ]
  %2916 = phi float [ %2852, %2754 ], [ %2895, %2863 ], [ %2911, %2897 ], [ 1.000000e+00, %2710 ]
  %2917 = phi float [ %2853, %2754 ], [ %2896, %2863 ], [ %2912, %2897 ], [ 1.000000e+00, %2710 ]
  %2918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2919 = extractvalue %dx.types.CBufRet.i32 %2918, 1
  %2920 = and i32 %2919, 1
  %2921 = icmp ne i32 %2920, 0
  %2922 = add i32 %34, 356
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = and i32 %2924, 32
  %2926 = icmp ne i32 %2925, 0
  %2927 = and i1 %2921, %2926
  %2928 = select i1 %2927, float 1.000000e+00, float %2915
  %2929 = select i1 %2927, float 0x3FD3333340000000, float %2916
  %2930 = select i1 %2927, float 0x3FD3333340000000, float %2917
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = and i32 %2932, 32
  %2934 = icmp eq i32 %2933, 0
  br i1 %2934, label %3007, label %2935

; <label>:2935                                    ; preds = %2913
  %2936 = add i32 %34, 140
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = add i32 %34, 404
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = add i32 %2941, 0
  %2943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2942, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2944 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2943, %dx.types.Handle %75, float %2635, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2945 = extractvalue %dx.types.ResRet.f32 %2944, 0
  %2946 = extractvalue %dx.types.ResRet.f32 %2944, 1
  %2947 = extractvalue %dx.types.ResRet.f32 %2944, 2
  %2948 = extractvalue %dx.types.ResRet.f32 %2944, 3
  %2949 = and i32 %2938, 255
  %2950 = uitofp i32 %2949 to float
  %2951 = lshr i32 %2938, 8
  %2952 = and i32 %2951, 255
  %2953 = uitofp i32 %2952 to float
  %2954 = lshr i32 %2938, 16
  %2955 = and i32 %2954, 255
  %2956 = uitofp i32 %2955 to float
  %2957 = fmul fast float %2956, 0x3F70101000000000
  %2958 = fmul fast float %2945, %2950
  %2959 = fadd fast float %2958, %2953
  %2960 = fmul fast float %2959, 0x3F70101000000000
  %2961 = fadd fast float %2946, -5.000000e-01
  %2962 = fadd fast float %2948, -5.000000e-01
  %2963 = fmul fast float %2961, %2957
  %2964 = fmul fast float %2962, %2957
  %2965 = fadd fast float %2963, 5.000000e-01
  %2966 = fadd fast float %2964, 5.000000e-01
  %2967 = fmul fast float %2965, 2.000000e+00
  %2968 = fadd fast float %2967, -1.000000e+00
  %2969 = fmul fast float %2966, 2.000000e+00
  %2970 = fadd fast float %2969, -1.000000e+00
  %2971 = fadd fast float %2968, %2970
  %2972 = fmul fast float %2971, 5.000000e-01
  %2973 = fsub fast float %2968, %2970
  %2974 = fmul fast float %2973, 5.000000e-01
  %2975 = call float @dx.op.unary.f32(i32 6, float %2972)  ; FAbs(value)
  %2976 = fsub fast float 1.000000e+00, %2975
  %2977 = call float @dx.op.unary.f32(i32 6, float %2974)  ; FAbs(value)
  %2978 = fsub fast float %2976, %2977
  %2979 = call float @dx.op.dot3.f32(i32 55, float %2972, float %2974, float %2978, float %2972, float %2974, float %2978)  ; Dot3(ax,ay,az,bx,by,bz)
  %2980 = call float @dx.op.unary.f32(i32 25, float %2979)  ; Rsqrt(value)
  %2981 = fmul fast float %2972, %2980
  %2982 = fmul fast float %2974, %2980
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = and i32 %2984, 67108864
  %2986 = icmp eq i32 %2985, 0
  br i1 %2986, label %3003, label %2987

; <label>:2987                                    ; preds = %2935
  %2988 = add i32 %34, 328
  %2989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.i32 %2989, 0
  %2991 = and i32 %2990, 65535
  %2992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2991)  ; LegacyF16ToF32(value)
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2545, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = and i32 %2994, 65535
  %2996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2995)  ; LegacyF16ToF32(value)
  %2997 = lshr i32 %2990, 16
  %2998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2997)  ; LegacyF16ToF32(value)
  %2999 = fsub fast float %2960, %2998
  %3000 = fmul fast float %2999, %2992
  %3001 = fadd fast float %3000, %2996
  %3002 = call float @dx.op.unary.f32(i32 7, float %3001)  ; Saturate(value)
  br label %3003

; <label>:3003                                    ; preds = %2987, %2935
  %3004 = phi float [ %3002, %2987 ], [ %2960, %2935 ]
  %3005 = call float @dx.op.dot2.f32(i32 54, float %2981, float %2982, float %2539, float %2540)  ; Dot2(ax,ay,bx,by)
  %3006 = call float @dx.op.dot2.f32(i32 54, float %2981, float %2982, float %2541, float %2542)  ; Dot2(ax,ay,bx,by)
  br label %3007

; <label>:3007                                    ; preds = %3003, %2913
  %3008 = phi float [ %3004, %3003 ], [ 0x3FD6666660000000, %2913 ]
  %3009 = phi float [ %3005, %3003 ], [ 0.000000e+00, %2913 ]
  %3010 = phi float [ %3006, %3003 ], [ 0.000000e+00, %2913 ]
  %3011 = phi float [ %2947, %3003 ], [ 1.000000e+00, %2913 ]
  %3012 = add i32 %34, 208
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = lshr i32 %3014, 22
  %3016 = shl nuw nsw i32 %3015, 5
  %3017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3016)  ; LegacyF16ToF32(value)
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = and i32 %3019, 64
  %3021 = icmp eq i32 %3020, 0
  br i1 %3021, label %3055, label %3022

; <label>:3022                                    ; preds = %3007
  %3023 = add i32 %34, 420
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3023, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = add i32 %3025, 0
  %3027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3026, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = and i32 %3029, 131072
  %3031 = icmp eq i32 %3030, 0
  %3032 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3027, %dx.types.Handle %75, float %2635, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3033 = extractvalue %dx.types.ResRet.f32 %3032, 0
  %3034 = extractvalue %dx.types.ResRet.f32 %3032, 1
  %3035 = extractvalue %dx.types.ResRet.f32 %3032, 2
  %3036 = fmul fast float %3033, %361
  %3037 = fmul fast float %3034, %364
  %3038 = fmul fast float %3035, %367
  br i1 %3031, label %3045, label %3039

; <label>:3039                                    ; preds = %3022
  %3040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3041 = extractvalue %dx.types.CBufRet.f32 %3040, 0
  %3042 = fmul fast float %3041, %3036
  %3043 = fmul fast float %3041, %3037
  %3044 = fmul fast float %3041, %3038
  br label %3045

; <label>:3045                                    ; preds = %3039, %3022
  %3046 = phi float [ %3042, %3039 ], [ %3036, %3022 ]
  %3047 = phi float [ %3043, %3039 ], [ %3037, %3022 ]
  %3048 = phi float [ %3044, %3039 ], [ %3038, %3022 ]
  %3049 = fmul fast float %3046, %3017
  %3050 = select i1 %218, float %3049, float %3046
  %3051 = call float @dx.op.dot3.f32(i32 55, float %3050, float %3047, float %3048, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3052 = select i1 %218, float 0.000000e+00, float %3046
  %3053 = select i1 %218, float %3051, float %3047
  %3054 = select i1 %218, float 0.000000e+00, float %3048
  br label %3055

; <label>:3055                                    ; preds = %3045, %3007
  %3056 = phi float [ %3052, %3045 ], [ 0.000000e+00, %3007 ]
  %3057 = phi float [ %3053, %3045 ], [ 0.000000e+00, %3007 ]
  %3058 = phi float [ %3054, %3045 ], [ 0.000000e+00, %3007 ]
  %3059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.i32 %3059, 0
  %3061 = and i32 %3060, 26624
  %3062 = icmp eq i32 %3061, 0
  br i1 %3062, label %3086, label %3063

; <label>:3063                                    ; preds = %3055
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = and i32 %3065, 16384
  %3067 = icmp eq i32 %3066, 0
  br i1 %3067, label %3086, label %3068

; <label>:3068                                    ; preds = %3063
  %3069 = and i32 %3065, 1048576
  %3070 = icmp ne i32 %3069, 0
  %3071 = add i32 %34, 488
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = add i32 %3073, 0
  %3075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3076 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3075, %dx.types.Handle %76, float %2635, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3077 = extractvalue %dx.types.ResRet.f32 %3076, 0
  %3078 = add i32 %34, 144
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3078, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = lshr i32 %3080, 24
  %3082 = uitofp i32 %3081 to float
  %3083 = fmul fast float %3077, 0x3F70101020000000
  %3084 = select i1 %3070, float 0x3F70101020000000, float %3083
  %3085 = fmul fast float %3084, %3082
  br label %3086

; <label>:3086                                    ; preds = %3068, %3063, %3055
  %3087 = phi float [ %3085, %3068 ], [ 0.000000e+00, %3063 ], [ 0.000000e+00, %3055 ]
  %3088 = add i32 %34, 144
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = and i32 %3090, 255
  %3092 = uitofp i32 %3091 to float
  %3093 = lshr i32 %3090, 8
  %3094 = and i32 %3093, 255
  %3095 = uitofp i32 %3094 to float
  %3096 = call float @dx.op.dot3.f32(i32 55, float %2928, float %2929, float %2930, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3097 = fmul fast float %3095, %3096
  %3098 = fadd fast float %3097, %3092
  %3099 = fmul fast float %3098, 0x3F70101020000000
  %3100 = call float @dx.op.unary.f32(i32 7, float %3099)  ; Saturate(value)
  br i1 %2527, label %3101, label %3109

; <label>:3101                                    ; preds = %3086
  %3102 = fsub fast float 1.000000e+00, %2708
  %3103 = fmul fast float %3102, %2518
  %3104 = fmul fast float %3102, %2519
  %3105 = fmul fast float %3102, %2520
  %3106 = fmul fast float %3102, %2515
  %3107 = fmul fast float %3102, %2516
  %3108 = fmul fast float %3102, %2517
  br label %3109

; <label>:3109                                    ; preds = %3101, %3086
  %3110 = phi float [ %3106, %3101 ], [ %2515, %3086 ]
  %3111 = phi float [ %3107, %3101 ], [ %2516, %3086 ]
  %3112 = phi float [ %3108, %3101 ], [ %2517, %3086 ]
  %3113 = phi float [ %3103, %3101 ], [ %2518, %3086 ]
  %3114 = phi float [ %3104, %3101 ], [ %2519, %3086 ]
  %3115 = phi float [ %3105, %3101 ], [ %2520, %3086 ]
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = and i32 %3117, 3
  %3119 = icmp eq i32 %3118, 3
  br i1 %3119, label %3198, label %3120

; <label>:3120                                    ; preds = %3109
  %3121 = and i32 %3117, 16
  %3122 = icmp ne i32 %3121, 0
  %3123 = select i1 %3122, float %2708, float 0.000000e+00
  %3124 = icmp eq i32 %3118, 0
  br i1 %3124, label %3125, label %3153

; <label>:3125                                    ; preds = %3120
  %3126 = and i32 %3117, 64
  %3127 = icmp ne i32 %3126, 0
  %3128 = select i1 %3127, float %2708, float 0.000000e+00
  %3129 = fsub fast float %2928, %3113
  %3130 = fsub fast float %2929, %3114
  %3131 = fsub fast float %2930, %3115
  %3132 = fmul fast float %3123, %3129
  %3133 = fmul fast float %3123, %3130
  %3134 = fmul fast float %3123, %3131
  %3135 = fadd fast float %3132, %3113
  %3136 = fadd fast float %3133, %3114
  %3137 = fadd fast float %3134, %3115
  %3138 = fsub fast float %2914, %2521
  %3139 = fmul fast float %3123, %3138
  %3140 = fadd fast float %3139, %2521
  %3141 = fsub fast float %3056, %3110
  %3142 = fsub fast float %3057, %3111
  %3143 = fsub fast float %3058, %3112
  %3144 = fmul fast float %3128, %3141
  %3145 = fmul fast float %3128, %3142
  %3146 = fmul fast float %3128, %3143
  %3147 = fadd fast float %3144, %3110
  %3148 = fadd fast float %3145, %3111
  %3149 = fadd fast float %3146, %3112
  %3150 = fsub fast float %3100, %2525
  %3151 = fmul fast float %3123, %3150
  %3152 = fadd fast float %3151, %2525
  br label %3198

; <label>:3153                                    ; preds = %3120
  %3154 = icmp eq i32 %3118, 1
  br i1 %3154, label %3155, label %3168

; <label>:3155                                    ; preds = %3153
  %3156 = fadd fast float %2928, -1.000000e+00
  %3157 = fadd fast float %2929, -1.000000e+00
  %3158 = fadd fast float %2930, -1.000000e+00
  %3159 = fmul fast float %3123, %3156
  %3160 = fmul fast float %3123, %3157
  %3161 = fmul fast float %3123, %3158
  %3162 = fadd fast float %3159, 1.000000e+00
  %3163 = fadd fast float %3160, 1.000000e+00
  %3164 = fadd fast float %3161, 1.000000e+00
  %3165 = fmul fast float %3162, %3113
  %3166 = fmul fast float %3163, %3114
  %3167 = fmul fast float %3164, %3115
  br label %3198

; <label>:3168                                    ; preds = %3153
  %3169 = icmp eq i32 %3118, 2
  br i1 %3169, label %3170, label %3198

; <label>:3170                                    ; preds = %3168
  %3171 = call float @dx.op.unary.f32(i32 24, float %2928)  ; Sqrt(value)
  %3172 = call float @dx.op.unary.f32(i32 24, float %2929)  ; Sqrt(value)
  %3173 = call float @dx.op.unary.f32(i32 24, float %2930)  ; Sqrt(value)
  %3174 = fadd fast float %3171, -5.000000e-01
  %3175 = fadd fast float %3172, -5.000000e-01
  %3176 = fadd fast float %3173, -5.000000e-01
  %3177 = fmul fast float %3174, %3123
  %3178 = fmul fast float %3175, %3123
  %3179 = fmul fast float %3176, %3123
  %3180 = fadd fast float %3177, 5.000000e-01
  %3181 = fadd fast float %3178, 5.000000e-01
  %3182 = fadd fast float %3179, 5.000000e-01
  %3183 = fmul fast float %3180, 2.000000e+00
  %3184 = fsub fast float 1.000000e+00, %3183
  %3185 = fmul fast float %3184, %3113
  %3186 = fadd fast float %3185, %3183
  %3187 = fmul fast float %3186, %3113
  %3188 = fmul fast float %3181, 2.000000e+00
  %3189 = fsub fast float 1.000000e+00, %3188
  %3190 = fmul fast float %3189, %3114
  %3191 = fadd fast float %3190, %3188
  %3192 = fmul fast float %3191, %3114
  %3193 = fmul fast float %3182, 2.000000e+00
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = fmul fast float %3194, %3115
  %3196 = fadd fast float %3195, %3193
  %3197 = fmul fast float %3196, %3115
  br label %3198

; <label>:3198                                    ; preds = %3170, %3168, %3155, %3125, %3109
  %3199 = phi float [ %3110, %3109 ], [ %3110, %3170 ], [ %3110, %3168 ], [ %3110, %3155 ], [ %3147, %3125 ]
  %3200 = phi float [ %3111, %3109 ], [ %3111, %3170 ], [ %3111, %3168 ], [ %3111, %3155 ], [ %3148, %3125 ]
  %3201 = phi float [ %3112, %3109 ], [ %3112, %3170 ], [ %3112, %3168 ], [ %3112, %3155 ], [ %3149, %3125 ]
  %3202 = phi float [ %3113, %3109 ], [ %3187, %3170 ], [ %3113, %3168 ], [ %3165, %3155 ], [ %3135, %3125 ]
  %3203 = phi float [ %3114, %3109 ], [ %3192, %3170 ], [ %3114, %3168 ], [ %3166, %3155 ], [ %3136, %3125 ]
  %3204 = phi float [ %3115, %3109 ], [ %3197, %3170 ], [ %3115, %3168 ], [ %3167, %3155 ], [ %3137, %3125 ]
  %3205 = phi float [ %2521, %3109 ], [ %2521, %3170 ], [ %2521, %3168 ], [ %2521, %3155 ], [ %3140, %3125 ]
  %3206 = phi float [ %2525, %3109 ], [ %2525, %3170 ], [ %2525, %3168 ], [ %2525, %3155 ], [ %3152, %3125 ]
  %3207 = and i32 %3117, 12
  %3208 = icmp eq i32 %3207, 12
  br i1 %3208, label %3291, label %3209

; <label>:3209                                    ; preds = %3198
  %3210 = and i32 %3117, 2097184
  %3211 = icmp eq i32 %3210, 2097184
  %3212 = select i1 %3211, float %2708, float 0.000000e+00
  %3213 = and i32 %3117, 4194336
  %3214 = icmp eq i32 %3213, 4194336
  %3215 = select i1 %3214, float %2708, float 0.000000e+00
  %3216 = and i32 %3117, 8388640
  %3217 = icmp eq i32 %3216, 8388640
  %3218 = select i1 %3217, float %2708, float 0.000000e+00
  %3219 = and i32 %3117, 16384
  %3220 = icmp ne i32 %3219, 0
  %3221 = select i1 %3220, float %2708, float 0.000000e+00
  %3222 = icmp eq i32 %3207, 0
  br i1 %3222, label %3223, label %3239

; <label>:3223                                    ; preds = %3209
  %3224 = fsub fast float %3009, %2513
  %3225 = fsub fast float %3010, %2514
  %3226 = fmul fast float %3212, %3224
  %3227 = fmul fast float %3212, %3225
  %3228 = fadd fast float %3226, %2513
  %3229 = fadd fast float %3227, %2514
  %3230 = fsub fast float %3011, %2523
  %3231 = fmul fast float %3215, %3230
  %3232 = fadd fast float %3231, %2523
  %3233 = fsub fast float %3008, %2522
  %3234 = fmul fast float %3218, %3233
  %3235 = fadd fast float %3234, %2522
  %3236 = fsub fast float %3087, %2524
  %3237 = fmul fast float %3221, %3236
  %3238 = fadd fast float %3237, %2524
  br label %3291

; <label>:3239                                    ; preds = %3209
  %3240 = icmp eq i32 %3207, 4
  br i1 %3240, label %3241, label %3275

; <label>:3241                                    ; preds = %3239
  %3242 = fmul fast float %3212, %3009
  %3243 = fmul fast float %3212, %3010
  %3244 = fadd fast float %3242, %2513
  %3245 = fadd fast float %3243, %2514
  %3246 = call float @dx.op.binary.f32(i32 36, float %2523, float %3011)  ; FMin(a,b)
  %3247 = fsub fast float %3246, %2523
  %3248 = fmul fast float %3247, %3215
  %3249 = fadd fast float %3248, %2523
  %3250 = fadd fast float %3008, %2522
  %3251 = fmul fast float %3250, 0x3FF337FAE0000000
  %3252 = fmul fast float %2522, %2522
  %3253 = fmul fast float %3008, %3008
  %3254 = fadd fast float %3253, %3252
  %3255 = fmul fast float %3254, 0x3FE5152B00000000
  %3256 = fmul fast float %2522, 0xBFCC1F85E0000000
  %3257 = fmul fast float %3256, %3008
  %3258 = fadd fast float %3257, 0xBFE1363700000000
  %3259 = fadd fast float %3258, %3251
  %3260 = fsub fast float %3259, %3255
  %3261 = fmul fast float %3250, 0x3FBA6F0D00000000
  %3262 = fmul fast float %3254, 0x3FD0432880000000
  %3263 = fmul fast float %2522, 0xBFEF110800000000
  %3264 = fmul fast float %3263, %3008
  %3265 = fadd fast float %3264, 1.000000e+00
  %3266 = fsub fast float %3265, %3261
  %3267 = fadd fast float %3266, %3262
  %3268 = fdiv fast float %3260, %3267
  %3269 = call float @dx.op.unary.f32(i32 7, float %3268)  ; Saturate(value)
  %3270 = fsub fast float %3269, %2522
  %3271 = fmul fast float %3270, %3218
  %3272 = fadd fast float %3271, %2522
  %3273 = fmul fast float %3221, %3087
  %3274 = fadd fast float %3273, %2524
  br label %3291

; <label>:3275                                    ; preds = %3239
  %3276 = icmp eq i32 %3207, 8
  br i1 %3276, label %3277, label %3291

; <label>:3277                                    ; preds = %3275
  %3278 = fmul fast float %3212, %3009
  %3279 = fmul fast float %3212, %3010
  %3280 = fadd fast float %3278, %2513
  %3281 = fadd fast float %3279, %2514
  %3282 = call float @dx.op.binary.f32(i32 36, float %2523, float %3011)  ; FMin(a,b)
  %3283 = fsub fast float %3282, %2523
  %3284 = fmul fast float %3283, %3215
  %3285 = fadd fast float %3284, %2523
  %3286 = fsub fast float %3008, %2522
  %3287 = fmul fast float %3218, %3286
  %3288 = fadd fast float %3287, %2522
  %3289 = fmul fast float %3221, %3087
  %3290 = fadd fast float %3289, %2524
  br label %3291

; <label>:3291                                    ; preds = %3277, %3275, %3241, %3223, %3198, %2707, %2526, %2512
  %3292 = phi float [ %2513, %3198 ], [ %2513, %2707 ], [ %2513, %2512 ], [ %2513, %2526 ], [ %3228, %3223 ], [ %3244, %3241 ], [ %2513, %3275 ], [ %3280, %3277 ]
  %3293 = phi float [ %2514, %3198 ], [ %2514, %2707 ], [ %2514, %2512 ], [ %2514, %2526 ], [ %3229, %3223 ], [ %3245, %3241 ], [ %2514, %3275 ], [ %3281, %3277 ]
  %3294 = phi float [ %3199, %3198 ], [ %2515, %2707 ], [ %2515, %2512 ], [ %2515, %2526 ], [ %3199, %3223 ], [ %3199, %3241 ], [ %3199, %3275 ], [ %3199, %3277 ]
  %3295 = phi float [ %3200, %3198 ], [ %2516, %2707 ], [ %2516, %2512 ], [ %2516, %2526 ], [ %3200, %3223 ], [ %3200, %3241 ], [ %3200, %3275 ], [ %3200, %3277 ]
  %3296 = phi float [ %3201, %3198 ], [ %2517, %2707 ], [ %2517, %2512 ], [ %2517, %2526 ], [ %3201, %3223 ], [ %3201, %3241 ], [ %3201, %3275 ], [ %3201, %3277 ]
  %3297 = phi float [ %3202, %3198 ], [ %2518, %2707 ], [ %2518, %2512 ], [ %2518, %2526 ], [ %3202, %3223 ], [ %3202, %3241 ], [ %3202, %3275 ], [ %3202, %3277 ]
  %3298 = phi float [ %3203, %3198 ], [ %2519, %2707 ], [ %2519, %2512 ], [ %2519, %2526 ], [ %3203, %3223 ], [ %3203, %3241 ], [ %3203, %3275 ], [ %3203, %3277 ]
  %3299 = phi float [ %3204, %3198 ], [ %2520, %2707 ], [ %2520, %2512 ], [ %2520, %2526 ], [ %3204, %3223 ], [ %3204, %3241 ], [ %3204, %3275 ], [ %3204, %3277 ]
  %3300 = phi float [ %3205, %3198 ], [ %2521, %2707 ], [ %2521, %2512 ], [ %2521, %2526 ], [ %3205, %3223 ], [ %3205, %3241 ], [ %3205, %3275 ], [ %3205, %3277 ]
  %3301 = phi float [ %2522, %3198 ], [ %2522, %2707 ], [ %2522, %2512 ], [ %2522, %2526 ], [ %3235, %3223 ], [ %3272, %3241 ], [ %2522, %3275 ], [ %3288, %3277 ]
  %3302 = phi float [ %2523, %3198 ], [ %2523, %2707 ], [ %2523, %2512 ], [ %2523, %2526 ], [ %3232, %3223 ], [ %3249, %3241 ], [ %2523, %3275 ], [ %3285, %3277 ]
  %3303 = phi float [ %2524, %3198 ], [ %2524, %2707 ], [ %2524, %2512 ], [ %2524, %2526 ], [ %3238, %3223 ], [ %3274, %3241 ], [ %2524, %3275 ], [ %3290, %3277 ]
  %3304 = phi float [ %3206, %3198 ], [ %2525, %2707 ], [ %2525, %2512 ], [ %2525, %2526 ], [ %3206, %3223 ], [ %3206, %3241 ], [ %3206, %3275 ], [ %3206, %3277 ]
  %3305 = add i32 %34, 360
  %3306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.i32 %3306, 0
  %3308 = extractvalue %dx.types.ResRet.i32 %3306, 1
  %3309 = bitcast i32 %3307 to float
  %3310 = bitcast i32 %3308 to float
  %3311 = fcmp fast oge float %3309, 0.000000e+00
  %3312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3313 = extractvalue %dx.types.CBufRet.f32 %3312, 0
  %3314 = select i1 %3311, float %3309, float %3313
  %3315 = fadd fast float %3314, %180
  %3316 = fmul fast float %3310, %181
  %3317 = add i32 %34, 456
  %3318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3317, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.i32 %3318, 0
  %3320 = add i32 %3319, 0
  %3321 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3320, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3322 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3321, %dx.types.Handle %76, float %67, float %68, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3323 = extractvalue %dx.types.ResRet.f32 %3322, 0
  %3324 = fmul fast float %3316, %3323
  %3325 = fadd fast float %3315, %3324
  %3326 = and i32 %172, 65535
  %3327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3326)  ; LegacyF16ToF32(value)
  %3328 = lshr i32 %172, 16
  %3329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3328)  ; LegacyF16ToF32(value)
  %3330 = and i32 %173, 65535
  %3331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3330)  ; LegacyF16ToF32(value)
  %3332 = fmul fast float %3327, %3297
  %3333 = fmul fast float %3329, %3298
  %3334 = fmul fast float %3331, %3299
  %3335 = shl i32 %174, 4
  %3336 = and i32 %3335, 32752
  %3337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3336)  ; LegacyF16ToF32(value)
  %3338 = lshr i32 %174, 7
  %3339 = and i32 %3338, 32752
  %3340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3339)  ; LegacyF16ToF32(value)
  %3341 = lshr i32 %174, 22
  %3342 = shl nuw nsw i32 %3341, 5
  %3343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3342)  ; LegacyF16ToF32(value)
  %3344 = and i32 %175, 65535
  %3345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3344)  ; LegacyF16ToF32(value)
  %3346 = fmul fast float %3337, %3294
  %3347 = fmul fast float %3346, %3345
  %3348 = fmul fast float %3340, %3295
  %3349 = fmul fast float %3348, %3345
  %3350 = fmul fast float %3343, %3296
  %3351 = fmul fast float %3350, %3345
  %3352 = call float @dx.op.dot2.f32(i32 54, float %3292, float %3293, float %3292, float %3293)  ; Dot2(ax,ay,bx,by)
  %3353 = fmul fast float %3352, 0x3FE3333340000000
  %3354 = fsub fast float 1.000000e+00, %3353
  %3355 = call float @dx.op.dot3.f32(i32 55, float %3292, float %3293, float %3354, float %3292, float %3293, float %3354)  ; Dot3(ax,ay,az,bx,by,bz)
  %3356 = call float @dx.op.unary.f32(i32 25, float %3355)  ; Rsqrt(value)
  %3357 = fmul fast float %3356, %3292
  %3358 = fmul fast float %3356, %3293
  %3359 = fmul fast float %3354, %3356
  %3360 = fmul fast float %3359, %86
  %3361 = fmul fast float %3359, %87
  %3362 = fmul fast float %3359, %88
  %3363 = fmul fast float %3357, %60
  %3364 = fmul fast float %3357, %61
  %3365 = fmul fast float %3357, %62
  %3366 = fadd fast float %3360, %3363
  %3367 = fadd fast float %3361, %3364
  %3368 = fadd fast float %3362, %3365
  %3369 = fmul fast float %98, %3358
  %3370 = fmul fast float %99, %3358
  %3371 = fmul fast float %100, %3358
  %3372 = fadd fast float %3366, %3369
  %3373 = fadd fast float %3367, %3370
  %3374 = fadd fast float %3368, %3371
  %3375 = call float @dx.op.dot3.f32(i32 55, float %3372, float %3373, float %3374, float %3372, float %3373, float %3374)  ; Dot3(ax,ay,az,bx,by,bz)
  %3376 = call float @dx.op.unary.f32(i32 25, float %3375)  ; Rsqrt(value)
  %3377 = fmul fast float %3372, %3376
  %3378 = fmul fast float %3373, %3376
  %3379 = fmul fast float %3374, %3376
  %3380 = icmp ne i32 %36, 65535
  %3381 = add i32 %34, 496
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3381, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = add i32 %3383, 0
  %3385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3386 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3385, %dx.types.Handle %28, float %67, float %68, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3387 = extractvalue %dx.types.ResRet.f32 %3386, 0
  %3388 = fcmp fast ogt float %3387, 0.000000e+00
  %3389 = and i1 %3380, %3388
  br i1 %3389, label %3390, label %3904

; <label>:3390                                    ; preds = %3291
  %3391 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3392 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3393 = call float @dx.op.unary.f32(i32 83, float %39)  ; DerivCoarseX(value)
  %3394 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3395 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3396 = call float @dx.op.unary.f32(i32 84, float %39)  ; DerivCoarseY(value)
  %3397 = fadd fast float %3391, %37
  %3398 = fadd fast float %3392, %38
  %3399 = fadd fast float %3393, %39
  %3400 = fadd fast float %3394, %37
  %3401 = fadd fast float %3395, %38
  %3402 = fadd fast float %3396, %39
  %3403 = mul i32 %36, 48
  %3404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.f32 %3404, 0
  %3406 = extractvalue %dx.types.ResRet.f32 %3404, 1
  %3407 = extractvalue %dx.types.ResRet.f32 %3404, 2
  %3408 = add i32 %3403, 16
  %3409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.f32 %3409, 0
  %3411 = extractvalue %dx.types.ResRet.f32 %3409, 1
  %3412 = extractvalue %dx.types.ResRet.f32 %3409, 2
  %3413 = add i32 %3403, 32
  %3414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3413, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.f32 %3414, 0
  %3416 = extractvalue %dx.types.ResRet.f32 %3414, 1
  %3417 = extractvalue %dx.types.ResRet.f32 %3414, 2
  %3418 = extractvalue %dx.types.ResRet.f32 %3414, 3
  %3419 = bitcast float %3418 to i32
  %3420 = fmul fast float %3405, %37
  %3421 = fmul fast float %3406, %38
  %3422 = fmul fast float %3407, %39
  %3423 = fsub fast float %3420, %3410
  %3424 = fsub fast float %3421, %3411
  %3425 = fsub fast float %3422, %3412
  %3426 = call float @dx.op.unary.f32(i32 7, float %3423)  ; Saturate(value)
  %3427 = call float @dx.op.unary.f32(i32 7, float %3424)  ; Saturate(value)
  %3428 = call float @dx.op.unary.f32(i32 7, float %3425)  ; Saturate(value)
  %3429 = fmul fast float %3426, %3415
  %3430 = fmul fast float %3427, %3416
  %3431 = fmul fast float %3428, %3417
  %3432 = fadd fast float %3415, -1.000000e+00
  %3433 = fadd fast float %3416, -1.000000e+00
  %3434 = fadd fast float %3417, -1.000000e+00
  %3435 = call float @dx.op.unary.f32(i32 27, float %3429)  ; Round_ni(value)
  %3436 = call float @dx.op.unary.f32(i32 27, float %3430)  ; Round_ni(value)
  %3437 = call float @dx.op.unary.f32(i32 27, float %3431)  ; Round_ni(value)
  %3438 = call float @dx.op.binary.f32(i32 36, float %3435, float %3432)  ; FMin(a,b)
  %3439 = call float @dx.op.binary.f32(i32 36, float %3436, float %3433)  ; FMin(a,b)
  %3440 = call float @dx.op.binary.f32(i32 36, float %3437, float %3434)  ; FMin(a,b)
  %3441 = fmul fast float %3440, %3416
  %3442 = fadd fast float %3441, %3439
  %3443 = fmul fast float %3442, %3415
  %3444 = fadd fast float %3443, %3438
  %3445 = fptosi float %3444 to i32
  %3446 = add nsw i32 %3445, %3419
  %3447 = shl nsw i32 %3446, 2
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = lshr i32 %3449, 16
  %3451 = icmp eq i32 %3450, 0
  br i1 %3451, label %3873, label %3452

; <label>:3452                                    ; preds = %3390
  br label %3453

; <label>:3453                                    ; preds = %3574, %3452
  %3454 = phi i32 [ %3476, %3574 ], [ %3450, %3452 ]
  %3455 = phi float [ %3575, %3574 ], [ 0.000000e+00, %3452 ]
  %3456 = phi float [ %3576, %3574 ], [ %3325, %3452 ]
  %3457 = phi float [ %3577, %3574 ], [ %3304, %3452 ]
  %3458 = phi float [ %3578, %3574 ], [ %3303, %3452 ]
  %3459 = phi float [ %3579, %3574 ], [ 0.000000e+00, %3452 ]
  %3460 = phi float [ %3580, %3574 ], [ %3347, %3452 ]
  %3461 = phi float [ %3581, %3574 ], [ %3349, %3452 ]
  %3462 = phi float [ %3582, %3574 ], [ %3351, %3452 ]
  %3463 = phi float [ %3583, %3574 ], [ %3377, %3452 ]
  %3464 = phi float [ %3584, %3574 ], [ %3378, %3452 ]
  %3465 = phi float [ %3585, %3574 ], [ %3379, %3452 ]
  %3466 = phi float [ %3586, %3574 ], [ %3302, %3452 ]
  %3467 = phi float [ %3587, %3574 ], [ %3301, %3452 ]
  %3468 = phi float [ %3588, %3574 ], [ 0.000000e+00, %3452 ]
  %3469 = phi float [ %3589, %3574 ], [ %3300, %3452 ]
  %3470 = phi float [ %3590, %3574 ], [ %3332, %3452 ]
  %3471 = phi float [ %3591, %3574 ], [ %3333, %3452 ]
  %3472 = phi float [ %3592, %3574 ], [ %3334, %3452 ]
  %3473 = shl nuw nsw i32 %3454, 2
  %3474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3473, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.i32 %3474, 0
  %3476 = lshr i32 %3475, 16
  %3477 = shl i32 %3475, 8
  %3478 = and i32 %3477, 16776960
  %3479 = or i32 %3478, 48
  %3480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3479, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.f32 %3480, 0
  %3482 = extractvalue %dx.types.ResRet.f32 %3480, 1
  %3483 = extractvalue %dx.types.ResRet.f32 %3480, 2
  %3484 = or i32 %3478, 64
  %3485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.i32 %3485, 0
  %3487 = extractvalue %dx.types.ResRet.i32 %3485, 1
  %3488 = or i32 %3478, 80
  %3489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 2
  %3491 = extractvalue %dx.types.ResRet.f32 %3489, 3
  %3492 = or i32 %3478, 96
  %3493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3492, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.f32 %3493, 0
  %3495 = extractvalue %dx.types.ResRet.f32 %3493, 1
  %3496 = extractvalue %dx.types.ResRet.f32 %3493, 2
  %3497 = extractvalue %dx.types.ResRet.f32 %3493, 3
  %3498 = or i32 %3478, 112
  %3499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.f32 %3499, 2
  %3501 = or i32 %3478, 128
  %3502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.f32 %3502, 0
  %3504 = extractvalue %dx.types.ResRet.f32 %3502, 1
  %3505 = extractvalue %dx.types.ResRet.f32 %3502, 2
  %3506 = extractvalue %dx.types.ResRet.f32 %3502, 3
  %3507 = or i32 %3478, 144
  %3508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3507, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.f32 %3508, 0
  %3510 = extractvalue %dx.types.ResRet.f32 %3508, 1
  %3511 = extractvalue %dx.types.ResRet.f32 %3508, 2
  %3512 = extractvalue %dx.types.ResRet.f32 %3508, 3
  %3513 = or i32 %3478, 160
  %3514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.f32 %3514, 0
  %3516 = extractvalue %dx.types.ResRet.f32 %3514, 1
  %3517 = extractvalue %dx.types.ResRet.f32 %3514, 2
  %3518 = extractvalue %dx.types.ResRet.f32 %3514, 3
  %3519 = or i32 %3478, 192
  %3520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3519, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.i32 %3520, 0
  %3522 = or i32 %3478, 208
  %3523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.f32 %3523, 0
  %3525 = or i32 %3478, 248
  %3526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.f32 %3526, 0
  %3528 = extractvalue %dx.types.ResRet.f32 %3526, 1
  %3529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = extractvalue %dx.types.ResRet.f32 %3529, 1
  %3532 = extractvalue %dx.types.ResRet.f32 %3529, 2
  %3533 = extractvalue %dx.types.ResRet.f32 %3529, 3
  %3534 = call float @dx.op.dot4.f32(i32 56, float %3530, float %3531, float %3532, float %3533, float %37, float %38, float %39, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3535 = or i32 %3478, 16
  %3536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3535, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.f32 %3536, 0
  %3538 = extractvalue %dx.types.ResRet.f32 %3536, 1
  %3539 = extractvalue %dx.types.ResRet.f32 %3536, 2
  %3540 = extractvalue %dx.types.ResRet.f32 %3536, 3
  %3541 = call float @dx.op.dot4.f32(i32 56, float %3537, float %3538, float %3539, float %3540, float %37, float %38, float %39, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3542 = or i32 %3478, 32
  %3543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.f32 %3543, 0
  %3545 = extractvalue %dx.types.ResRet.f32 %3543, 1
  %3546 = extractvalue %dx.types.ResRet.f32 %3543, 2
  %3547 = extractvalue %dx.types.ResRet.f32 %3543, 3
  %3548 = call float @dx.op.dot4.f32(i32 56, float %3544, float %3545, float %3546, float %3547, float %37, float %38, float %39, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3549 = call float @dx.op.unary.f32(i32 27, float %3534)  ; Round_ni(value)
  %3550 = call float @dx.op.unary.f32(i32 6, float %3549)  ; FAbs(value)
  %3551 = call float @dx.op.unary.f32(i32 27, float %3541)  ; Round_ni(value)
  %3552 = call float @dx.op.unary.f32(i32 6, float %3551)  ; FAbs(value)
  %3553 = call float @dx.op.unary.f32(i32 6, float %3548)  ; FAbs(value)
  %3554 = call float @dx.op.unary.f32(i32 27, float %3553)  ; Round_ni(value)
  %3555 = fadd fast float %3552, %3550
  %3556 = fadd fast float %3555, %3554
  %3557 = fcmp fast oeq float %3556, 0.000000e+00
  %3558 = call float @dx.op.dot4.f32(i32 56, float %3530, float %3531, float %3532, float %3533, float %3397, float %3398, float %3399, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3559 = call float @dx.op.dot4.f32(i32 56, float %3537, float %3538, float %3539, float %3540, float %3397, float %3398, float %3399, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3560 = call float @dx.op.dot4.f32(i32 56, float %3530, float %3531, float %3532, float %3533, float %3400, float %3401, float %3402, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3561 = call float @dx.op.dot4.f32(i32 56, float %3537, float %3538, float %3539, float %3540, float %3400, float %3401, float %3402, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3562 = fsub fast float %3558, %3534
  %3563 = fsub fast float %3560, %3534
  %3564 = fsub fast float %3559, %3541
  %3565 = fsub fast float %3561, %3541
  %3566 = call float @dx.op.dot3.f32(i32 55, float %3481, float %3482, float %3483, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %3567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3568 = extractvalue %dx.types.CBufRet.f32 %3567, 2
  %3569 = fadd fast float %3568, %3566
  %3570 = call float @dx.op.unary.f32(i32 7, float %3569)  ; Saturate(value)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3567, 0
  %3572 = fcmp fast ogt float %3570, %3571
  %3573 = and i1 %3557, %3572
  br i1 %3573, label %3594, label %3574

; <label>:3574                                    ; preds = %3859, %3677, %3594, %3453
  %3575 = phi float [ %3455, %3594 ], [ %3680, %3677 ], [ %3680, %3859 ], [ %3455, %3453 ]
  %3576 = phi float [ %3456, %3594 ], [ %3456, %3677 ], [ %3834, %3859 ], [ %3456, %3453 ]
  %3577 = phi float [ %3457, %3594 ], [ %3457, %3677 ], [ %3832, %3859 ], [ %3457, %3453 ]
  %3578 = phi float [ %3458, %3594 ], [ %3458, %3677 ], [ %3804, %3859 ], [ %3458, %3453 ]
  %3579 = phi float [ %3459, %3594 ], [ %3459, %3677 ], [ %3802, %3859 ], [ %3459, %3453 ]
  %3580 = phi float [ %3460, %3594 ], [ %3460, %3677 ], [ %3869, %3859 ], [ %3460, %3453 ]
  %3581 = phi float [ %3461, %3594 ], [ %3461, %3677 ], [ %3870, %3859 ], [ %3461, %3453 ]
  %3582 = phi float [ %3462, %3594 ], [ %3462, %3677 ], [ %3871, %3859 ], [ %3462, %3453 ]
  %3583 = phi float [ %3463, %3594 ], [ %3463, %3677 ], [ %3783, %3859 ], [ %3463, %3453 ]
  %3584 = phi float [ %3464, %3594 ], [ %3464, %3677 ], [ %3784, %3859 ], [ %3464, %3453 ]
  %3585 = phi float [ %3465, %3594 ], [ %3465, %3677 ], [ %3785, %3859 ], [ %3465, %3453 ]
  %3586 = phi float [ %3466, %3594 ], [ %3466, %3677 ], [ %3812, %3859 ], [ %3466, %3453 ]
  %3587 = phi float [ %3467, %3594 ], [ %3467, %3677 ], [ %3809, %3859 ], [ %3467, %3453 ]
  %3588 = phi float [ %3468, %3594 ], [ %3468, %3677 ], [ %3806, %3859 ], [ %3468, %3453 ]
  %3589 = phi float [ %3469, %3594 ], [ %3469, %3677 ], [ %3800, %3859 ], [ %3469, %3453 ]
  %3590 = phi float [ %3470, %3594 ], [ %3470, %3677 ], [ %3795, %3859 ], [ %3470, %3453 ]
  %3591 = phi float [ %3471, %3594 ], [ %3471, %3677 ], [ %3796, %3859 ], [ %3471, %3453 ]
  %3592 = phi float [ %3472, %3594 ], [ %3472, %3677 ], [ %3797, %3859 ], [ %3472, %3453 ]
  %3593 = icmp eq i32 %3476, 0
  br i1 %3593, label %3872, label %3453

; <label>:3594                                    ; preds = %3453
  %3595 = extractvalue %dx.types.ResRet.f32 %3480, 3
  %3596 = extractvalue %dx.types.ResRet.f32 %3499, 3
  %3597 = extractvalue %dx.types.ResRet.f32 %3499, 1
  %3598 = extractvalue %dx.types.ResRet.f32 %3499, 0
  %3599 = extractvalue %dx.types.ResRet.f32 %3489, 1
  %3600 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3601 = extractvalue %dx.types.ResRet.i32 %3485, 3
  %3602 = extractvalue %dx.types.ResRet.i32 %3485, 2
  %3603 = bitcast float %3595 to i32
  %3604 = add i32 %3601, 0
  %3605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3604, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3607 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3605, %dx.types.Handle %3606, float %3534, float %3541, float undef, float undef, i32 0, i32 0, i32 undef, float %3562, float %3564, float undef, float %3563, float %3565, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = fmul fast float %3608, %3600
  %3610 = fadd fast float %3609, %3599
  %3611 = call float @dx.op.unary.f32(i32 7, float %3610)  ; Saturate(value)
  %3612 = fmul fast float %3534, %3494
  %3613 = call float @dx.op.tertiary.f32(i32 46, float %3495, float %3541, float %3612)  ; FMad(a,b,c)
  %3614 = fadd fast float %3613, %3598
  %3615 = fmul fast float %3534, %3496
  %3616 = call float @dx.op.tertiary.f32(i32 46, float %3497, float %3541, float %3615)  ; FMad(a,b,c)
  %3617 = fadd fast float %3616, %3597
  %3618 = fmul fast float %3562, %3494
  %3619 = call float @dx.op.tertiary.f32(i32 46, float %3495, float %3564, float %3618)  ; FMad(a,b,c)
  %3620 = fmul fast float %3562, %3496
  %3621 = call float @dx.op.tertiary.f32(i32 46, float %3497, float %3564, float %3620)  ; FMad(a,b,c)
  %3622 = fmul fast float %3563, %3494
  %3623 = call float @dx.op.tertiary.f32(i32 46, float %3495, float %3565, float %3622)  ; FMad(a,b,c)
  %3624 = fmul fast float %3563, %3496
  %3625 = call float @dx.op.tertiary.f32(i32 46, float %3497, float %3565, float %3624)  ; FMad(a,b,c)
  %3626 = add i32 %3602, 0
  %3627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3626, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3628 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3627, %dx.types.Handle %3606, float %3614, float %3617, float undef, float undef, i32 0, i32 0, i32 undef, float %3619, float %3621, float undef, float %3623, float %3625, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = and i32 %3603, 1024
  %3631 = icmp ne i32 %3630, 0
  %3632 = fcmp fast ogt float %3629, 0x3FE0101020000000
  %3633 = uitofp i1 %3632 to float
  %3634 = select i1 %3631, float %3633, float %3629
  %3635 = and i32 %3603, 8192
  %3636 = icmp ne i32 %3635, 0
  %3637 = select i1 %3636, float %3596, float 1.000000e+00
  %3638 = fmul fast float %3534, 2.000000e+00
  %3639 = fadd fast float %3638, -1.000000e+00
  %3640 = call float @dx.op.unary.f32(i32 6, float %3639)  ; FAbs(value)
  %3641 = fmul fast float %3640, %3527
  %3642 = fsub fast float %3641, %3527
  %3643 = call float @dx.op.unary.f32(i32 7, float %3642)  ; Saturate(value)
  %3644 = fmul fast float %3541, 2.000000e+00
  %3645 = fadd fast float %3644, -1.000000e+00
  %3646 = call float @dx.op.unary.f32(i32 6, float %3645)  ; FAbs(value)
  %3647 = fmul fast float %3646, %3528
  %3648 = fsub fast float %3647, %3528
  %3649 = call float @dx.op.unary.f32(i32 7, float %3648)  ; Saturate(value)
  %3650 = fmul fast float %3553, %3490
  %3651 = fsub fast float %3650, %3490
  %3652 = call float @dx.op.unary.f32(i32 7, float %3651)  ; Saturate(value)
  %3653 = fmul fast float %3611, %3637
  %3654 = fmul fast float %3653, %3608
  %3655 = fmul fast float %3654, %3643
  %3656 = fmul fast float %3655, %3634
  %3657 = fmul fast float %3656, %3649
  %3658 = fmul fast float %3657, %3652
  %3659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3660 = extractvalue %dx.types.CBufRet.f32 %3659, 1
  %3661 = extractvalue %dx.types.CBufRet.f32 %3659, 0
  %3662 = fsub fast float %3570, %3661
  %3663 = fmul fast float %3662, %3660
  %3664 = call float @dx.op.unary.f32(i32 7, float %3663)  ; Saturate(value)
  %3665 = fmul fast float %3658, %3491
  %3666 = fadd fast float %3658, %3491
  %3667 = fmul fast float %3666, %3500
  %3668 = fsub fast float %3667, %3500
  %3669 = call float @dx.op.unary.f32(i32 7, float %3668)  ; Saturate(value)
  %3670 = and i32 %3603, 128
  %3671 = icmp ne i32 %3670, 0
  %3672 = select i1 %3671, float %3669, float %3665
  %3673 = fmul fast float %3672, %3664
  %3674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3675 = extractvalue %dx.types.CBufRet.f32 %3674, 0
  %3676 = fcmp fast ugt float %3673, %3675
  br i1 %3676, label %3677, label %3574

; <label>:3677                                    ; preds = %3594
  %3678 = select i1 %3636, float %3673, float 0.000000e+00
  %3679 = fadd fast float %3678, %3455
  %3680 = call float @dx.op.unary.f32(i32 7, float %3679)  ; Saturate(value)
  br i1 %3636, label %3574, label %3681

; <label>:3681                                    ; preds = %3677
  %3682 = and i32 %3603, 4
  %3683 = and i32 %3603, 8
  %3684 = add i32 %3486, 0
  %3685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3684, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3687 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3685, %dx.types.Handle %3686, float %3614, float %3617, float undef, float undef, i32 0, i32 0, i32 undef, float %3619, float %3621, float undef, float %3623, float %3625, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3688 = extractvalue %dx.types.ResRet.f32 %3687, 0
  %3689 = extractvalue %dx.types.ResRet.f32 %3687, 1
  %3690 = extractvalue %dx.types.ResRet.f32 %3687, 2
  %3691 = extractvalue %dx.types.ResRet.f32 %3687, 3
  %3692 = bitcast float %3512 to i32
  %3693 = and i32 %3692, 255
  %3694 = uitofp i32 %3693 to float
  %3695 = lshr i32 %3692, 8
  %3696 = and i32 %3695, 255
  %3697 = uitofp i32 %3696 to float
  %3698 = fmul fast float %3691, %3694
  %3699 = fadd fast float %3698, %3697
  %3700 = fmul fast float %3699, 0x3F70101000000000
  %3701 = add i32 %3487, 0
  %3702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3701, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3703 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3702, %dx.types.Handle %3686, float %3614, float %3617, float undef, float undef, i32 0, i32 0, i32 undef, float %3619, float %3621, float undef, float %3623, float %3625, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3704 = extractvalue %dx.types.ResRet.f32 %3703, 0
  %3705 = extractvalue %dx.types.ResRet.f32 %3703, 1
  %3706 = extractvalue %dx.types.ResRet.f32 %3703, 2
  %3707 = extractvalue %dx.types.ResRet.f32 %3703, 3
  %3708 = bitcast float %3506 to i32
  %3709 = and i32 %3708, 255
  %3710 = uitofp i32 %3709 to float
  %3711 = lshr i32 %3708, 8
  %3712 = and i32 %3711, 255
  %3713 = uitofp i32 %3712 to float
  %3714 = lshr i32 %3708, 16
  %3715 = and i32 %3714, 255
  %3716 = uitofp i32 %3715 to float
  %3717 = fmul fast float %3716, 0x3F70101000000000
  %3718 = fmul fast float %3704, %3710
  %3719 = fadd fast float %3718, %3713
  %3720 = fmul fast float %3719, 0x3F70101000000000
  %3721 = fadd fast float %3705, -5.000000e-01
  %3722 = fadd fast float %3707, -5.000000e-01
  %3723 = fmul fast float %3721, %3717
  %3724 = fmul fast float %3722, %3717
  %3725 = fadd fast float %3723, 5.000000e-01
  %3726 = fadd fast float %3724, 5.000000e-01
  %3727 = fmul fast float %3688, %3515
  %3728 = fmul fast float %3689, %3516
  %3729 = fmul fast float %3690, %3517
  %3730 = fmul fast float %3725, 2.000000e+00
  %3731 = fadd fast float %3730, -1.000000e+00
  %3732 = fmul fast float %3726, 2.000000e+00
  %3733 = fadd fast float %3732, -1.000000e+00
  %3734 = fadd fast float %3731, %3733
  %3735 = fmul fast float %3734, 5.000000e-01
  %3736 = fsub fast float %3731, %3733
  %3737 = fmul fast float %3736, 5.000000e-01
  %3738 = call float @dx.op.unary.f32(i32 6, float %3735)  ; FAbs(value)
  %3739 = fsub fast float 1.000000e+00, %3738
  %3740 = call float @dx.op.unary.f32(i32 6, float %3737)  ; FAbs(value)
  %3741 = fsub fast float %3739, %3740
  %3742 = call float @dx.op.dot3.f32(i32 55, float %3735, float %3737, float %3741, float %3735, float %3737, float %3741)  ; Dot3(ax,ay,az,bx,by,bz)
  %3743 = call float @dx.op.unary.f32(i32 25, float %3742)  ; Rsqrt(value)
  %3744 = fmul fast float %3735, %3743
  %3745 = fmul fast float %3737, %3743
  %3746 = fmul fast float %3743, %3741
  %3747 = fmul fast float %3746, %3481
  %3748 = fmul fast float %3746, %3482
  %3749 = fmul fast float %3746, %3483
  %3750 = fmul fast float %3744, %3503
  %3751 = fmul fast float %3744, %3504
  %3752 = fmul fast float %3744, %3505
  %3753 = fadd fast float %3750, %3747
  %3754 = fadd fast float %3751, %3748
  %3755 = fadd fast float %3752, %3749
  %3756 = fmul fast float %3745, %3509
  %3757 = fmul fast float %3745, %3510
  %3758 = fmul fast float %3745, %3511
  %3759 = fadd fast float %3753, %3756
  %3760 = fadd fast float %3754, %3757
  %3761 = fadd fast float %3755, %3758
  %3762 = call float @dx.op.dot3.f32(i32 55, float %3759, float %3760, float %3761, float %3759, float %3760, float %3761)  ; Dot3(ax,ay,az,bx,by,bz)
  %3763 = call float @dx.op.unary.f32(i32 25, float %3762)  ; Rsqrt(value)
  %3764 = fmul fast float %3759, %3763
  %3765 = fmul fast float %3760, %3763
  %3766 = fmul fast float %3761, %3763
  %3767 = icmp ne i32 %3683, 0
  %3768 = select i1 %3767, float 1.000000e+00, float 0.000000e+00
  %3769 = fmul fast float %3673, %3768
  %3770 = and i32 %3603, 1
  %3771 = icmp eq i32 %3770, 0
  br i1 %3771, label %3772, label %3776

; <label>:3772                                    ; preds = %3681
  %3773 = fsub fast float %3764, %3463
  %3774 = fsub fast float %3765, %3464
  %3775 = fsub fast float %3766, %3465
  br label %3776

; <label>:3776                                    ; preds = %3772, %3681
  %3777 = phi float [ %3773, %3772 ], [ %3764, %3681 ]
  %3778 = phi float [ %3774, %3772 ], [ %3765, %3681 ]
  %3779 = phi float [ %3775, %3772 ], [ %3766, %3681 ]
  %3780 = fmul float %3779, %3769
  %3781 = fmul float %3778, %3769
  %3782 = fmul float %3777, %3769
  %3783 = fadd fast float %3782, %3463
  %3784 = fadd fast float %3781, %3464
  %3785 = fadd fast float %3780, %3465
  %3786 = icmp ne i32 %3682, 0
  %3787 = select i1 %3786, float 1.000000e+00, float 0.000000e+00
  %3788 = fmul fast float %3673, %3787
  %3789 = fsub fast float %3727, %3470
  %3790 = fsub fast float %3728, %3471
  %3791 = fsub fast float %3729, %3472
  %3792 = fmul fast float %3789, %3788
  %3793 = fmul fast float %3790, %3788
  %3794 = fmul fast float %3791, %3788
  %3795 = fadd fast float %3792, %3470
  %3796 = fadd fast float %3793, %3471
  %3797 = fadd fast float %3794, %3472
  %3798 = fsub fast float %3700, %3469
  %3799 = fmul fast float %3798, %3788
  %3800 = fadd fast float %3799, %3469
  %3801 = fmul fast float %3788, %3459
  %3802 = fsub fast float %3459, %3801
  %3803 = fmul fast float %3788, %3458
  %3804 = fsub fast float %3458, %3803
  %3805 = fadd fast float %3673, %3468
  %3806 = call float @dx.op.unary.f32(i32 7, float %3805)  ; Saturate(value)
  %3807 = fsub fast float %3720, %3467
  %3808 = fmul fast float %3807, %3769
  %3809 = fadd fast float %3808, %3467
  %3810 = fsub fast float %3706, %3466
  %3811 = fmul fast float %3810, %3769
  %3812 = fadd fast float %3811, %3466
  %3813 = call float @dx.op.dot3.f32(i32 55, float %3727, float %3728, float %3729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3815 = extractvalue %dx.types.CBufRet.f32 %3814, 0
  %3816 = extractvalue %dx.types.CBufRet.f32 %3814, 1
  %3817 = fmul fast float %3816, %3813
  %3818 = fadd fast float %3817, %3815
  %3819 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  %3820 = bitcast float %3518 to i32
  %3821 = and i32 %3820, 65535
  %3822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3821)  ; LegacyF16ToF32(value)
  %3823 = lshr i32 %3820, 16
  %3824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3823)  ; LegacyF16ToF32(value)
  %3825 = fcmp fast oge float %3822, 0.000000e+00
  %3826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3827 = extractvalue %dx.types.CBufRet.f32 %3826, 0
  %3828 = select i1 %3825, float %3822, float %3827
  %3829 = fadd fast float %3828, %3824
  %3830 = fsub fast float %3819, %3457
  %3831 = fmul fast float %3830, %3673
  %3832 = fadd fast float %3831, %3457
  %3833 = fmul fast float %3829, %3673
  %3834 = call float @dx.op.binary.f32(i32 35, float %3456, float %3833)  ; FMax(a,b)
  %3835 = and i32 %3603, 16
  %3836 = icmp eq i32 %3835, 0
  br i1 %3836, label %3859, label %3837

; <label>:3837                                    ; preds = %3776
  %3838 = bitcast float %3524 to i32
  %3839 = add i32 %3521, 0
  %3840 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3839, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3841 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3840, %dx.types.Handle %3686, float %3614, float %3617, float undef, float undef, i32 0, i32 0, i32 undef, float %3619, float %3621, float undef, float %3623, float %3625, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.f32 %3841, 1
  %3844 = extractvalue %dx.types.ResRet.f32 %3841, 2
  %3845 = and i32 %3838, 65535
  %3846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3845)  ; LegacyF16ToF32(value)
  %3847 = fmul fast float %3842, %3515
  %3848 = fmul fast float %3843, %3516
  %3849 = fmul fast float %3844, %3517
  %3850 = and i32 %3603, 16384
  %3851 = icmp ne i32 %3850, 0
  %3852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3853 = extractvalue %dx.types.CBufRet.f32 %3852, 0
  %3854 = select i1 %3851, float %3853, float 1.000000e+00
  %3855 = fmul fast float %3854, %3846
  %3856 = fmul fast float %3847, %3855
  %3857 = fmul fast float %3848, %3855
  %3858 = fmul fast float %3849, %3855
  br label %3859

; <label>:3859                                    ; preds = %3837, %3776
  %3860 = phi float [ %3856, %3837 ], [ 0.000000e+00, %3776 ]
  %3861 = phi float [ %3857, %3837 ], [ 0.000000e+00, %3776 ]
  %3862 = phi float [ %3858, %3837 ], [ 0.000000e+00, %3776 ]
  %3863 = fsub fast float %3860, %3460
  %3864 = fsub fast float %3861, %3461
  %3865 = fsub fast float %3862, %3462
  %3866 = fmul fast float %3863, %3673
  %3867 = fmul fast float %3864, %3673
  %3868 = fmul fast float %3865, %3673
  %3869 = fadd fast float %3866, %3460
  %3870 = fadd fast float %3867, %3461
  %3871 = fadd fast float %3868, %3462
  br label %3574

; <label>:3872                                    ; preds = %3574
  br label %3873

; <label>:3873                                    ; preds = %3872, %3390
  %3874 = phi float [ 0.000000e+00, %3390 ], [ %3575, %3872 ]
  %3875 = phi float [ %3325, %3390 ], [ %3576, %3872 ]
  %3876 = phi float [ %3304, %3390 ], [ %3577, %3872 ]
  %3877 = phi float [ %3303, %3390 ], [ %3578, %3872 ]
  %3878 = phi float [ 0.000000e+00, %3390 ], [ %3579, %3872 ]
  %3879 = phi float [ %3347, %3390 ], [ %3580, %3872 ]
  %3880 = phi float [ %3349, %3390 ], [ %3581, %3872 ]
  %3881 = phi float [ %3351, %3390 ], [ %3582, %3872 ]
  %3882 = phi float [ %3377, %3390 ], [ %3583, %3872 ]
  %3883 = phi float [ %3378, %3390 ], [ %3584, %3872 ]
  %3884 = phi float [ %3379, %3390 ], [ %3585, %3872 ]
  %3885 = phi float [ %3302, %3390 ], [ %3586, %3872 ]
  %3886 = phi float [ %3301, %3390 ], [ %3587, %3872 ]
  %3887 = phi float [ 0.000000e+00, %3390 ], [ %3588, %3872 ]
  %3888 = phi float [ %3300, %3390 ], [ %3589, %3872 ]
  %3889 = phi float [ %3332, %3390 ], [ %3590, %3872 ]
  %3890 = phi float [ %3333, %3390 ], [ %3591, %3872 ]
  %3891 = phi float [ %3334, %3390 ], [ %3592, %3872 ]
  %3892 = call float @dx.op.dot3.f32(i32 55, float %3882, float %3883, float %3884, float %3882, float %3883, float %3884)  ; Dot3(ax,ay,az,bx,by,bz)
  %3893 = call float @dx.op.unary.f32(i32 25, float %3892)  ; Rsqrt(value)
  %3894 = fmul fast float %3893, %3882
  %3895 = fmul fast float %3893, %3883
  %3896 = fmul fast float %3893, %3884
  %3897 = fadd fast float %3887, %963
  %3898 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3899 = call float @dx.op.dot3.f32(i32 55, float %3894, float %3895, float %3896, float %3894, float %3895, float %3896)  ; Dot3(ax,ay,az,bx,by,bz)
  %3900 = call float @dx.op.unary.f32(i32 25, float %3899)  ; Rsqrt(value)
  %3901 = fmul fast float %3900, %3894
  %3902 = fmul fast float %3900, %3895
  %3903 = fmul fast float %3900, %3896
  br label %3904

; <label>:3904                                    ; preds = %3873, %3291
  %3905 = phi float [ %3901, %3873 ], [ %3377, %3291 ]
  %3906 = phi float [ %3902, %3873 ], [ %3378, %3291 ]
  %3907 = phi float [ %3903, %3873 ], [ %3379, %3291 ]
  %3908 = phi float [ %3889, %3873 ], [ %3332, %3291 ]
  %3909 = phi float [ %3890, %3873 ], [ %3333, %3291 ]
  %3910 = phi float [ %3891, %3873 ], [ %3334, %3291 ]
  %3911 = phi float [ %3879, %3873 ], [ %3347, %3291 ]
  %3912 = phi float [ %3880, %3873 ], [ %3349, %3291 ]
  %3913 = phi float [ %3881, %3873 ], [ %3351, %3291 ]
  %3914 = phi float [ %3888, %3873 ], [ %3300, %3291 ]
  %3915 = phi float [ %3898, %3873 ], [ %963, %3291 ]
  %3916 = phi float [ %3886, %3873 ], [ %3301, %3291 ]
  %3917 = phi float [ %3885, %3873 ], [ %3302, %3291 ]
  %3918 = phi float [ %3878, %3873 ], [ 0.000000e+00, %3291 ]
  %3919 = phi float [ %3877, %3873 ], [ %3303, %3291 ]
  %3920 = phi float [ %3874, %3873 ], [ 0.000000e+00, %3291 ]
  %3921 = phi float [ %3875, %3873 ], [ %3325, %3291 ]
  %3922 = phi float [ %3876, %3873 ], [ %3304, %3291 ]
  %3923 = fadd fast float %3914, 0xBFB99999A0000000
  %3924 = call float @dx.op.unary.f32(i32 7, float %3923)  ; Saturate(value)
  %3925 = fmul fast float %3924, 0x3FF1C71C80000000
  %3926 = call float @dx.op.binary.f32(i32 36, float %3914, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3927 = fsub fast float 1.000000e+00, %3925
  %3928 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3929 = fmul fast float %3928, %3908
  %3930 = fmul fast float %3928, %3909
  %3931 = fmul fast float %3928, %3910
  %3932 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3933 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3934 = call float @dx.op.unary.f32(i32 7, float %3931)  ; Saturate(value)
  %3935 = fmul fast float %3925, %3908
  %3936 = fmul fast float %3925, %3909
  %3937 = fmul fast float %3925, %3910
  %3938 = fadd fast float %3935, %3926
  %3939 = fadd fast float %3936, %3926
  %3940 = fadd fast float %3937, %3926
  %3941 = call float @dx.op.unary.f32(i32 7, float %3938)  ; Saturate(value)
  %3942 = call float @dx.op.unary.f32(i32 7, float %3939)  ; Saturate(value)
  %3943 = call float @dx.op.unary.f32(i32 7, float %3940)  ; Saturate(value)
  %3944 = call float @dx.op.unary.f32(i32 7, float %3916)  ; Saturate(value)
  %3945 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.i32 %3945, 3
  %3947 = and i32 %3946, 8
  %3948 = icmp ne i32 %3947, 0
  %3949 = call float @dx.op.binary.f32(i32 35, float %3932, float %3908)  ; FMax(a,b)
  %3950 = call float @dx.op.binary.f32(i32 35, float %3933, float %3908)  ; FMax(a,b)
  %3951 = call float @dx.op.binary.f32(i32 35, float %3934, float %3908)  ; FMax(a,b)
  %3952 = call float @dx.op.dot3.f32(i32 55, float %3932, float %3933, float %3934, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3953 = select i1 %218, float %3908, float %3932
  %3954 = select i1 %218, float %3952, float %3933
  %3955 = select i1 %218, float 1.000000e+00, float %3934
  %3956 = select i1 %3948, float %3949, float %3953
  %3957 = select i1 %3948, float %3950, float %3954
  %3958 = select i1 %3948, float %3951, float %3955
  %3959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3960 = extractvalue %dx.types.CBufRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.CBufRet.f32 %3959, 1
  %3962 = extractvalue %dx.types.CBufRet.f32 %3959, 2
  %3963 = fadd fast float %3960, %166
  %3964 = fadd fast float %3961, %167
  %3965 = fadd fast float %3962, %168
  %3966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3967 = extractvalue %dx.types.CBufRet.f32 %3966, 0
  %3968 = extractvalue %dx.types.CBufRet.f32 %3966, 1
  %3969 = fsub fast float %3963, %3967
  %3970 = fsub fast float %3964, %3968
  %3971 = fmul fast float %3969, %3969
  %3972 = fmul fast float %3970, %3970
  %3973 = fadd fast float %3971, %3972
  %3974 = call float @dx.op.unary.f32(i32 24, float %3973)  ; Sqrt(value)
  %3975 = extractvalue %dx.types.CBufRet.f32 %3966, 2
  %3976 = fcmp fast olt float %3974, %3975
  br i1 %3976, label %3977, label %4044

; <label>:3977                                    ; preds = %3904
  %3978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3979 = extractvalue %dx.types.CBufRet.f32 %3978, 0
  %3980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3981 = extractvalue %dx.types.CBufRet.f32 %3980, 0
  %3982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.f32 %3982, 0
  %3984 = extractvalue %dx.types.CBufRet.f32 %3978, 1
  %3985 = extractvalue %dx.types.CBufRet.f32 %3980, 1
  %3986 = extractvalue %dx.types.CBufRet.f32 %3982, 1
  %3987 = extractvalue %dx.types.CBufRet.f32 %3978, 3
  %3988 = extractvalue %dx.types.CBufRet.f32 %3980, 3
  %3989 = extractvalue %dx.types.CBufRet.f32 %3982, 3
  %3990 = fadd fast float %3987, %3963
  %3991 = fadd fast float %3988, %3964
  %3992 = fadd fast float %3989, %3965
  %3993 = fmul fast float %3990, %3979
  %3994 = call float @dx.op.tertiary.f32(i32 46, float %3991, float %3981, float %3993)  ; FMad(a,b,c)
  %3995 = call float @dx.op.tertiary.f32(i32 46, float %3992, float %3983, float %3994)  ; FMad(a,b,c)
  %3996 = fmul fast float %3990, %3984
  %3997 = call float @dx.op.tertiary.f32(i32 46, float %3991, float %3985, float %3996)  ; FMad(a,b,c)
  %3998 = call float @dx.op.tertiary.f32(i32 46, float %3992, float %3986, float %3997)  ; FMad(a,b,c)
  %3999 = fsub fast float %3995, %3987
  %4000 = fsub fast float %3998, %3988
  %4001 = fsub fast float %3999, %3967
  %4002 = fadd fast float %4001, %3975
  %4003 = fsub fast float %4000, %3968
  %4004 = fadd fast float %4003, %3975
  %4005 = extractvalue %dx.types.CBufRet.f32 %3966, 3
  %4006 = fmul fast float %4002, %4005
  %4007 = fmul fast float %4004, %4005
  %4008 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4009 = call float @dx.op.unary.f32(i32 7, float %4007)  ; Saturate(value)
  %4010 = fsub fast float 1.000000e+00, %4008
  %4011 = fsub fast float 1.000000e+00, %4009
  %4012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %30, float %4010, float %4011, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4013 = extractvalue %dx.types.ResRet.f32 %4012, 0
  %4014 = fcmp fast ugt float %4013, 0.000000e+00
  br i1 %4014, label %4015, label %4318

; <label>:4015                                    ; preds = %3977
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 2
  %4018 = fmul fast float %4017, %4013
  %4019 = extractvalue %dx.types.CBufRet.f32 %4016, 3
  %4020 = fadd fast float %4019, %4018
  %4021 = extractvalue %dx.types.CBufRet.f32 %3982, 2
  %4022 = fadd fast float %4020, %3989
  %4023 = fmul fast float %3995, %3983
  %4024 = call float @dx.op.tertiary.f32(i32 46, float %3998, float %3986, float %4023)  ; FMad(a,b,c)
  %4025 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4021, float %4024)  ; FMad(a,b,c)
  %4026 = fsub fast float %4025, %3989
  %4027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4028 = extractvalue %dx.types.CBufRet.f32 %4027, 2
  %4029 = fsub fast float %4026, %4028
  %4030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %30, float %4010, float %4011, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = extractvalue %dx.types.ResRet.f32 %4030, 1
  %4033 = extractvalue %dx.types.ResRet.f32 %4030, 2
  %4034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %4010, float %4011, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4035 = extractvalue %dx.types.ResRet.f32 %4034, 0
  %4036 = extractvalue %dx.types.ResRet.f32 %4034, 1
  %4037 = extractvalue %dx.types.ResRet.f32 %4034, 2
  %4038 = fadd fast float %4035, %4031
  %4039 = fmul fast float %4038, 0x3F847AE140000000
  %4040 = fadd fast float %4036, %4032
  %4041 = fmul fast float %4040, 0x3F847AE140000000
  %4042 = fadd fast float %4037, %4033
  %4043 = fmul fast float %4042, 0x3F847AE140000000
  br label %4318

; <label>:4044                                    ; preds = %3904
  %4045 = and i32 %197, 1
  %4046 = icmp eq i32 %4045, 0
  br i1 %4046, label %4318, label %4047

; <label>:4047                                    ; preds = %4044
  %4048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4049 = extractvalue %dx.types.CBufRet.f32 %4048, 0
  %4050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4051 = extractvalue %dx.types.CBufRet.f32 %4050, 0
  %4052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.f32 %4052, 0
  %4054 = extractvalue %dx.types.CBufRet.f32 %4048, 1
  %4055 = extractvalue %dx.types.CBufRet.f32 %4050, 1
  %4056 = extractvalue %dx.types.CBufRet.f32 %4052, 1
  %4057 = extractvalue %dx.types.CBufRet.f32 %4048, 3
  %4058 = extractvalue %dx.types.CBufRet.f32 %4050, 3
  %4059 = extractvalue %dx.types.CBufRet.f32 %4052, 3
  %4060 = fadd fast float %4057, %3963
  %4061 = fadd fast float %4058, %3964
  %4062 = fadd fast float %4059, %3965
  %4063 = fmul fast float %4060, %4049
  %4064 = call float @dx.op.tertiary.f32(i32 46, float %4061, float %4051, float %4063)  ; FMad(a,b,c)
  %4065 = call float @dx.op.tertiary.f32(i32 46, float %4062, float %4053, float %4064)  ; FMad(a,b,c)
  %4066 = fmul fast float %4060, %4054
  %4067 = call float @dx.op.tertiary.f32(i32 46, float %4061, float %4055, float %4066)  ; FMad(a,b,c)
  %4068 = call float @dx.op.tertiary.f32(i32 46, float %4062, float %4056, float %4067)  ; FMad(a,b,c)
  %4069 = fsub fast float %4065, %4057
  %4070 = fsub fast float %4068, %4058
  %4071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4071, 0
  %4073 = extractvalue %dx.types.CBufRet.f32 %4071, 1
  %4074 = extractvalue %dx.types.CBufRet.f32 %4071, 2
  %4075 = extractvalue %dx.types.CBufRet.f32 %4071, 3
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 3
  %4078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.i32 %4078, 0
  %4080 = extractvalue %dx.types.CBufRet.i32 %4078, 1
  %4081 = udiv i32 %4080, %4079
  %4082 = fsub fast float %4069, %4072
  %4083 = fsub fast float %4070, %4073
  %4084 = call float @dx.op.binary.f32(i32 35, float %4082, float 0.000000e+00)  ; FMax(a,b)
  %4085 = call float @dx.op.binary.f32(i32 35, float %4083, float 0.000000e+00)  ; FMax(a,b)
  %4086 = call float @dx.op.binary.f32(i32 36, float %4084, float %4074)  ; FMin(a,b)
  %4087 = call float @dx.op.binary.f32(i32 36, float %4085, float %4075)  ; FMin(a,b)
  %4088 = add i32 %4079, -1
  %4089 = add i32 %4081, -1
  %4090 = fmul fast float %4086, %4077
  %4091 = fmul fast float %4087, %4077
  %4092 = fptoui float %4090 to i32
  %4093 = fptoui float %4091 to i32
  %4094 = call i32 @dx.op.binary.i32(i32 40, i32 %4092, i32 %4088)  ; UMin(a,b)
  %4095 = call i32 @dx.op.binary.i32(i32 40, i32 %4093, i32 %4089)  ; UMin(a,b)
  %4096 = mul i32 %4095, %4079
  %4097 = add i32 %4096, %4094
  %4098 = shl i32 %4097, 2
  %4099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4098, i32 undef)  ; BufferLoad(srv,index,wot)
  %4100 = extractvalue %dx.types.ResRet.i32 %4099, 0
  %4101 = icmp eq i32 %4100, -1
  br i1 %4101, label %4318, label %4102

; <label>:4102                                    ; preds = %4047
  %4103 = mul i32 %4100, 148
  %4104 = add i32 %4103, 4
  %4105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4104, i32 undef)  ; BufferLoad(srv,index,wot)
  %4106 = extractvalue %dx.types.ResRet.f32 %4105, 0
  %4107 = add i32 %4103, 8
  %4108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4107, i32 undef)  ; BufferLoad(srv,index,wot)
  %4109 = extractvalue %dx.types.ResRet.f32 %4108, 0
  %4110 = add i32 %4103, 36
  %4111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4110, i32 undef)  ; BufferLoad(srv,index,wot)
  %4112 = extractvalue %dx.types.ResRet.f32 %4111, 0
  %4113 = add i32 %4103, 60
  %4114 = add i32 %4103, 92
  %4115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4114, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.i32 %4115, 0
  %4117 = add i32 %4103, 116
  %4118 = fsub fast float %4069, %4106
  %4119 = fsub fast float %4070, %4109
  %4120 = fmul fast float %4077, %4118
  %4121 = fmul fast float %4077, %4119
  %4122 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4123 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4124 = fsub fast float 1.000000e+00, %4123
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 2
  %4127 = call float @dx.op.unary.f32(i32 83, float %4122)  ; DerivCoarseX(value)
  %4128 = call float @dx.op.unary.f32(i32 83, float %4124)  ; DerivCoarseX(value)
  %4129 = call float @dx.op.unary.f32(i32 84, float %4122)  ; DerivCoarseY(value)
  %4130 = call float @dx.op.unary.f32(i32 84, float %4124)  ; DerivCoarseY(value)
  %4131 = fmul fast float %4127, %4126
  %4132 = fmul fast float %4128, %4126
  %4133 = fmul fast float %4129, %4126
  %4134 = fmul fast float %4130, %4126
  %4135 = call float @dx.op.dot2.f32(i32 54, float %4133, float %4134, float %4133, float %4134)  ; Dot2(ax,ay,bx,by)
  %4136 = call float @dx.op.dot2.f32(i32 54, float %4131, float %4132, float %4131, float %4132)  ; Dot2(ax,ay,bx,by)
  %4137 = call float @dx.op.binary.f32(i32 35, float %4136, float %4135)  ; FMax(a,b)
  %4138 = call float @dx.op.unary.f32(i32 23, float %4137)  ; Log(value)
  %4139 = fmul fast float %4138, 5.000000e-01
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 1
  %4142 = fadd fast float %4141, %4139
  %4143 = call float @dx.op.binary.f32(i32 35, float %4142, float 0.000000e+00)  ; FMax(a,b)
  %4144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.f32 %4144, 3
  %4146 = fadd fast float %4145, %4143
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 3
  %4149 = fadd fast float %4146, %4148
  %4150 = add i32 %4116, 0
  %4151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4150, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4152 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4151, i32 0)  ; GetDimensions(handle,mipLevel)
  %4153 = extractvalue %dx.types.Dimensions %4152, 0
  %4154 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4153)  ; FirstbitLo(value)
  %4155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.i32 %4155, 1
  %4157 = sub nsw i32 %4156, %4154
  %4158 = sitofp i32 %4157 to float
  %4159 = fsub fast float %4149, %4158
  %4160 = call float @dx.op.binary.f32(i32 35, float %4159, float 0.000000e+00)  ; FMax(a,b)
  %4161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4151, %dx.types.Handle %29, float %4122, float %4124, float %4112, float undef, i32 0, i32 0, i32 undef, float %4160)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4162 = extractvalue %dx.types.ResRet.f32 %4161, 0
  %4163 = fcmp ule float %4162, 0x3FE0101020000000
  %4164 = extractvalue %dx.types.CBufRet.i32 %4155, 0
  %4165 = and i32 %4164, 128
  %4166 = icmp ne i32 %4165, 0
  %4167 = and i1 %4163, %4166
  br i1 %4167, label %4318, label %4168

; <label>:4168                                    ; preds = %4102
  %4169 = add i32 %4103, 20
  %4170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4169, i32 undef)  ; BufferLoad(srv,index,wot)
  %4171 = extractvalue %dx.types.ResRet.f32 %4170, 0
  %4172 = add i32 %4103, 24
  %4173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4172, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = add i32 %4103, 40
  %4176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4175, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.f32 %4176, 0
  %4178 = add i32 %4103, 96
  %4179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.i32 %4179, 0
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 2
  %4183 = fmul fast float %4182, %4122
  %4184 = fmul fast float %4182, %4124
  %4185 = extractvalue %dx.types.CBufRet.f32 %4181, 3
  %4186 = fadd fast float %4183, %4185
  %4187 = fadd fast float %4184, %4185
  %4188 = add i32 %4180, 0
  %4189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4188, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4190 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4189, i32 0)  ; GetDimensions(handle,mipLevel)
  %4191 = extractvalue %dx.types.Dimensions %4190, 0
  %4192 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4191)  ; FirstbitLo(value)
  %4193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.i32 %4193, 1
  %4195 = sub nsw i32 %4194, %4192
  %4196 = sitofp i32 %4195 to float
  %4197 = fsub fast float %4146, %4196
  %4198 = call float @dx.op.binary.f32(i32 35, float %4197, float 0.000000e+00)  ; FMax(a,b)
  %4199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4189, %dx.types.Handle %29, float %4186, float %4187, float %4177, float undef, i32 0, i32 0, i32 undef, float %4198)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = fmul fast float %4200, %4171
  %4202 = fadd fast float %4201, %4174
  %4203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4204 = extractvalue %dx.types.CBufRet.f32 %4203, 0
  %4205 = extractvalue %dx.types.CBufRet.f32 %4203, 1
  %4206 = extractvalue %dx.types.CBufRet.f32 %4203, 2
  %4207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4207, 3
  %4209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4210 = extractvalue %dx.types.CBufRet.f32 %4209, 3
  %4211 = extractvalue %dx.types.CBufRet.f32 %4203, 3
  %4212 = fadd fast float %4208, %4069
  %4213 = fadd fast float %4210, %4070
  %4214 = fadd fast float %4202, %4211
  %4215 = fmul fast float %4212, %4204
  %4216 = call float @dx.op.tertiary.f32(i32 46, float %4213, float %4205, float %4215)  ; FMad(a,b,c)
  %4217 = call float @dx.op.tertiary.f32(i32 46, float %4214, float %4206, float %4216)  ; FMad(a,b,c)
  %4218 = fsub fast float %4217, %4211
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 2
  %4221 = fsub fast float %4218, %4220
  %4222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.i32 %4222, 0
  %4224 = call i32 @dx.op.binary.i32(i32 40, i32 %4100, i32 %4223)  ; UMin(a,b)
  %4225 = mul i32 %4224, 36
  %4226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.i32 %4226, 0
  %4228 = add i32 %4225, 4
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = fmul fast float %4230, %4122
  %4232 = fmul fast float %4230, %4124
  %4233 = extractvalue %dx.types.CBufRet.f32 %4229, 1
  %4234 = fadd fast float %4231, %4233
  %4235 = fadd fast float %4232, %4233
  %4236 = icmp eq i32 %4227, 0
  br i1 %4236, label %4305, label %4237

; <label>:4237                                    ; preds = %4168
  br label %4238

; <label>:4238                                    ; preds = %4295, %4237
  %4239 = phi float [ %4296, %4295 ], [ 0.000000e+00, %4237 ]
  %4240 = phi float [ %4297, %4295 ], [ 0.000000e+00, %4237 ]
  %4241 = phi float [ %4298, %4295 ], [ 0.000000e+00, %4237 ]
  %4242 = phi float [ %4299, %4295 ], [ 0.000000e+00, %4237 ]
  %4243 = phi float [ %4300, %4295 ], [ 0.000000e+00, %4237 ]
  %4244 = phi float [ %4301, %4295 ], [ 0.000000e+00, %4237 ]
  %4245 = phi i32 [ %4302, %4295 ], [ 0, %4237 ]
  %4246 = shl i32 %4245, 2
  %4247 = add i32 %4113, %4246
  %4248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4247, i32 undef)  ; BufferLoad(srv,index,wot)
  %4249 = extractvalue %dx.types.ResRet.f32 %4248, 0
  %4250 = add i32 %4117, %4246
  %4251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4250, i32 undef)  ; BufferLoad(srv,index,wot)
  %4252 = extractvalue %dx.types.ResRet.i32 %4251, 0
  %4253 = add i32 %4252, 0
  %4254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4253, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4255 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4254, i32 0)  ; GetDimensions(handle,mipLevel)
  %4256 = extractvalue %dx.types.Dimensions %4255, 0
  %4257 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4256)  ; FirstbitLo(value)
  %4258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4259 = extractvalue %dx.types.CBufRet.i32 %4258, 1
  %4260 = sub nsw i32 %4259, %4257
  %4261 = sitofp i32 %4260 to float
  %4262 = fsub fast float %4146, %4261
  %4263 = call float @dx.op.binary.f32(i32 35, float %4262, float 0.000000e+00)  ; FMax(a,b)
  %4264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4254, %dx.types.Handle %29, float %4234, float %4235, float %4249, float undef, i32 0, i32 0, i32 undef, float %4263)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4265 = extractvalue %dx.types.ResRet.f32 %4264, 0
  %4266 = fcmp fast ogt float %4265, 0.000000e+00
  br i1 %4266, label %4267, label %4295

; <label>:4267                                    ; preds = %4238
  %4268 = add i32 %4228, %4246
  %4269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4268, i32 undef)  ; BufferLoad(srv,index,wot)
  %4270 = extractvalue %dx.types.ResRet.i32 %4269, 0
  %4271 = and i32 %4270, 32767
  %4272 = mul nuw nsw i32 %4271, 928
  %4273 = add nuw nsw i32 %4272, 48
  %4274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = extractvalue %dx.types.ResRet.f32 %4274, 1
  %4277 = extractvalue %dx.types.ResRet.f32 %4274, 2
  %4278 = add nuw nsw i32 %4272, 60
  %4279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4278, i32 undef)  ; BufferLoad(srv,index,wot)
  %4280 = extractvalue %dx.types.ResRet.f32 %4279, 0
  %4281 = extractvalue %dx.types.ResRet.f32 %4279, 1
  %4282 = extractvalue %dx.types.ResRet.f32 %4279, 2
  %4283 = fmul fast float %4275, %4265
  %4284 = fmul fast float %4276, %4265
  %4285 = fmul fast float %4277, %4265
  %4286 = fadd fast float %4283, %4239
  %4287 = fadd fast float %4284, %4240
  %4288 = fadd fast float %4285, %4241
  %4289 = fmul fast float %4280, %4265
  %4290 = fmul fast float %4281, %4265
  %4291 = fmul fast float %4282, %4265
  %4292 = fadd fast float %4289, %4242
  %4293 = fadd fast float %4290, %4243
  %4294 = fadd fast float %4291, %4244
  br label %4295

; <label>:4295                                    ; preds = %4267, %4238
  %4296 = phi float [ %4286, %4267 ], [ %4239, %4238 ]
  %4297 = phi float [ %4287, %4267 ], [ %4240, %4238 ]
  %4298 = phi float [ %4288, %4267 ], [ %4241, %4238 ]
  %4299 = phi float [ %4292, %4267 ], [ %4242, %4238 ]
  %4300 = phi float [ %4293, %4267 ], [ %4243, %4238 ]
  %4301 = phi float [ %4294, %4267 ], [ %4244, %4238 ]
  %4302 = add nuw i32 %4245, 1
  %4303 = icmp eq i32 %4302, %4227
  br i1 %4303, label %4304, label %4238

; <label>:4304                                    ; preds = %4295
  br label %4305

; <label>:4305                                    ; preds = %4304, %4168
  %4306 = phi float [ 0.000000e+00, %4168 ], [ %4296, %4304 ]
  %4307 = phi float [ 0.000000e+00, %4168 ], [ %4297, %4304 ]
  %4308 = phi float [ 0.000000e+00, %4168 ], [ %4298, %4304 ]
  %4309 = phi float [ 0.000000e+00, %4168 ], [ %4299, %4304 ]
  %4310 = phi float [ 0.000000e+00, %4168 ], [ %4300, %4304 ]
  %4311 = phi float [ 0.000000e+00, %4168 ], [ %4301, %4304 ]
  %4312 = fadd fast float %4309, %4306
  %4313 = fmul fast float %4312, 0x3F847AE140000000
  %4314 = fadd fast float %4310, %4307
  %4315 = fmul fast float %4314, 0x3F847AE140000000
  %4316 = fadd fast float %4311, %4308
  %4317 = fmul fast float %4316, 0x3F847AE140000000
  br label %4318

; <label>:4318                                    ; preds = %4305, %4102, %4047, %4044, %4015, %3977
  %4319 = phi float [ %4029, %4015 ], [ -1.310720e+05, %3977 ], [ %4221, %4305 ], [ -1.310720e+05, %4047 ], [ -1.310720e+05, %4102 ], [ -1.310720e+05, %4044 ]
  %4320 = phi float [ %4039, %4015 ], [ 0.000000e+00, %3977 ], [ %4313, %4305 ], [ 0.000000e+00, %4047 ], [ 0.000000e+00, %4102 ], [ 0.000000e+00, %4044 ]
  %4321 = phi float [ %4041, %4015 ], [ 0.000000e+00, %3977 ], [ %4315, %4305 ], [ 0.000000e+00, %4047 ], [ 0.000000e+00, %4102 ], [ 0.000000e+00, %4044 ]
  %4322 = phi float [ %4043, %4015 ], [ 0.000000e+00, %3977 ], [ %4317, %4305 ], [ 0.000000e+00, %4047 ], [ 0.000000e+00, %4102 ], [ 0.000000e+00, %4044 ]
  %4323 = phi i1 [ true, %4015 ], [ false, %3977 ], [ true, %4305 ], [ false, %4047 ], [ false, %4102 ], [ false, %4044 ]
  %4324 = and i32 %197, 3
  %4325 = icmp eq i32 %4324, 1
  %4326 = select i1 %4325, float 1.000000e+00, float 0.000000e+00
  %4327 = fsub fast float %4319, %168
  %4328 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  %4329 = select i1 %4323, float %4328, float 1.000000e+00
  %4330 = fmul fast float %4329, %4326
  %4331 = icmp eq i32 %4324, 3
  %4332 = select i1 %4331, float 1.000000e+00, float %4330
  %4333 = call float @dx.op.binary.f32(i32 35, float %3920, float %4332)  ; FMax(a,b)
  %4334 = fcmp fast olt float %4332, 1.000000e+00
  %4335 = fcmp uge float %50, 0.000000e+00
  %4336 = and i1 %4335, %4334
  br i1 %4336, label %4337, label %4347

; <label>:4337                                    ; preds = %4318
  %4338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %50, float %51, float %52, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = extractvalue %dx.types.ResRet.f32 %4338, 1
  %4341 = extractvalue %dx.types.ResRet.f32 %4338, 2
  %4342 = fadd fast float %4339, %4333
  %4343 = fcmp ule float %49, 0.000000e+00
  %4344 = call float @dx.op.dot3.f32(i32 55, float %46, float %47, float %48, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4345 = select i1 %4343, float %4344, float 1.000000e+00
  %4346 = fmul fast float %4345, %4341
  br label %4347

; <label>:4347                                    ; preds = %4337, %4318
  %4348 = phi float [ %4342, %4337 ], [ %4333, %4318 ]
  %4349 = phi float [ %4340, %4337 ], [ 0.000000e+00, %4318 ]
  %4350 = phi float [ %4346, %4337 ], [ 0.000000e+00, %4318 ]
  %4351 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4352 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4353 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4354 = fcmp fast une float %4352, 0.000000e+00
  %4355 = fcmp fast une float %4353, 0.000000e+00
  %4356 = or i1 %4354, %4355
  br i1 %4356, label %4357, label %4916

; <label>:4357                                    ; preds = %4347
  br i1 %4354, label %4358, label %4631

; <label>:4358                                    ; preds = %4357
  %4359 = call float @dx.op.unary.f32(i32 23, float %3917)  ; Log(value)
  %4360 = fmul fast float %4359, 4.000000e+00
  %4361 = call float @dx.op.unary.f32(i32 21, float %4360)  ; Exp(value)
  %4362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.f32 %4362, 0
  %4364 = fmul fast float %4363, %37
  %4365 = fmul fast float %4363, %38
  %4366 = fmul fast float %4363, %39
  %4367 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4368 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4369 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %4370 = call float @dx.op.unary.f32(i32 23, float %4367)  ; Log(value)
  %4371 = call float @dx.op.unary.f32(i32 23, float %4368)  ; Log(value)
  %4372 = call float @dx.op.unary.f32(i32 23, float %4369)  ; Log(value)
  %4373 = fmul fast float %4370, 4.000000e+00
  %4374 = fmul fast float %4371, 4.000000e+00
  %4375 = fmul fast float %4372, 4.000000e+00
  %4376 = call float @dx.op.unary.f32(i32 21, float %4373)  ; Exp(value)
  %4377 = call float @dx.op.unary.f32(i32 21, float %4374)  ; Exp(value)
  %4378 = call float @dx.op.unary.f32(i32 21, float %4375)  ; Exp(value)
  %4379 = fadd fast float %4377, %4376
  %4380 = fadd fast float %4379, %4378
  %4381 = fdiv fast float 1.000000e+00, %4380
  %4382 = fmul fast float %4381, %4376
  %4383 = fcmp fast ogt float %46, 0.000000e+00
  %4384 = fcmp fast ogt float %47, 0.000000e+00
  %4385 = fcmp fast ogt float %48, 0.000000e+00
  %4386 = fcmp fast olt float %46, 0.000000e+00
  %4387 = fcmp fast olt float %47, 0.000000e+00
  %4388 = fcmp fast olt float %48, 0.000000e+00
  %4389 = zext i1 %4383 to i32
  %4390 = zext i1 %4384 to i32
  %4391 = zext i1 %4385 to i32
  %4392 = zext i1 %4386 to i32
  %4393 = zext i1 %4387 to i32
  %4394 = zext i1 %4388 to i32
  %4395 = sub nsw i32 %4389, %4392
  %4396 = sub nsw i32 %4390, %4393
  %4397 = sub nsw i32 %4391, %4394
  %4398 = call float @dx.op.unary.f32(i32 83, float %4364)  ; DerivCoarseX(value)
  %4399 = call float @dx.op.unary.f32(i32 83, float %4365)  ; DerivCoarseX(value)
  %4400 = call float @dx.op.unary.f32(i32 83, float %4366)  ; DerivCoarseX(value)
  %4401 = call float @dx.op.unary.f32(i32 84, float %4364)  ; DerivCoarseY(value)
  %4402 = call float @dx.op.unary.f32(i32 84, float %4365)  ; DerivCoarseY(value)
  %4403 = call float @dx.op.unary.f32(i32 84, float %4366)  ; DerivCoarseY(value)
  %4404 = fcmp fast ole float %229, %4382
  %4405 = fmul fast float %4381, %4379
  %4406 = fcmp fast ole float %229, %4405
  %4407 = select i1 %4406, float %4366, float %4364
  %4408 = select i1 %4406, float %4364, float %4365
  %4409 = select i1 %4404, float %4365, float %4407
  %4410 = select i1 %4404, float %4366, float %4408
  %4411 = select i1 %4406, float %4400, float %4398
  %4412 = select i1 %4406, float %4398, float %4399
  %4413 = select i1 %4404, float %4399, float %4411
  %4414 = select i1 %4404, float %4400, float %4412
  %4415 = select i1 %4406, float %4403, float %4401
  %4416 = select i1 %4406, float %4401, float %4402
  %4417 = select i1 %4404, float %4402, float %4415
  %4418 = select i1 %4404, float %4403, float %4416
  %4419 = call float @dx.op.unary.f32(i32 27, float %4409)  ; Round_ni(value)
  %4420 = call float @dx.op.unary.f32(i32 27, float %4410)  ; Round_ni(value)
  %4421 = fptosi float %4419 to i32
  %4422 = fptosi float %4420 to i32
  %4423 = xor i32 %4422, %4421
  %4424 = sitofp i32 %4423 to float
  %4425 = fptosi float %4424 to i32
  %4426 = sitofp i32 %4425 to float
  %4427 = fmul fast float %4426, 0x3FE3C6EF40000000
  %4428 = frem fast float %4419, 2.560000e+02
  %4429 = frem fast float %4420, 2.560000e+02
  %4430 = fptoui float %4428 to i32
  %4431 = fptoui float %4429 to i32
  %4432 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4430, i32 %4431, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.ResRet.f32 %4432, 1
  %4435 = extractvalue %dx.types.ResRet.f32 %4432, 2
  %4436 = fadd fast float %4433, %4427
  %4437 = fadd fast float %4434, %4427
  %4438 = fadd fast float %4435, %4427
  %4439 = call float @dx.op.unary.f32(i32 22, float %4436)  ; Frc(value)
  %4440 = call float @dx.op.unary.f32(i32 22, float %4437)  ; Frc(value)
  %4441 = call float @dx.op.unary.f32(i32 22, float %4438)  ; Frc(value)
  %4442 = fmul fast float %4441, 0x401921FB60000000
  %4443 = call float @dx.op.unary.f32(i32 13, float %4442)  ; Sin(value)
  %4444 = call float @dx.op.unary.f32(i32 12, float %4442)  ; Cos(value)
  %4445 = fsub fast float -0.000000e+00, %4444
  %4446 = fmul fast float %4444, %4409
  %4447 = call float @dx.op.tertiary.f32(i32 46, float %4443, float %4410, float %4446)  ; FMad(a,b,c)
  %4448 = fmul fast float %4443, %4409
  %4449 = call float @dx.op.tertiary.f32(i32 46, float %4445, float %4410, float %4448)  ; FMad(a,b,c)
  %4450 = fadd fast float %4447, %4439
  %4451 = fadd fast float %4449, %4440
  %4452 = extractvalue %dx.types.CBufRet.f32 %4362, 3
  %4453 = bitcast float %4452 to i32
  %4454 = icmp eq i32 %4453, 0
  br i1 %4454, label %4493, label %4455

; <label>:4455                                    ; preds = %4358
  %4456 = add i32 %4453, 0
  %4457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4458 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4457, %dx.types.Handle %76, float %4450, float %4451, float undef, float undef, i32 0, i32 0, i32 undef, float %4413, float %4414, float undef, float %4417, float %4418, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4459 = extractvalue %dx.types.ResRet.f32 %4458, 0
  %4460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4461 = extractvalue %dx.types.CBufRet.f32 %4460, 1
  %4462 = extractvalue %dx.types.CBufRet.f32 %4460, 2
  %4463 = fsub fast float 1.000000e+00, %4352
  %4464 = call float @dx.op.binary.f32(i32 35, float %4463, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4465 = bitcast float %4352 to i32
  %4466 = sitofp i32 %4465 to float
  %4467 = fadd fast float %4466, 0xC1CFBF8940000000
  %4468 = fmul fast float %4462, %4467
  %4469 = fadd fast float %4468, 0x41CFBF8940000000
  %4470 = fptosi float %4469 to i32
  %4471 = bitcast i32 %4470 to float
  %4472 = bitcast float %4464 to i32
  %4473 = sitofp i32 %4472 to float
  %4474 = fadd fast float %4473, 0xC1CFBF8940000000
  %4475 = fmul fast float %4474, %4462
  %4476 = fadd fast float %4475, 0x41CFBF8940000000
  %4477 = fptosi float %4476 to i32
  %4478 = bitcast i32 %4477 to float
  %4479 = fmul fast float %4471, %4461
  %4480 = fmul fast float %4478, %4461
  %4481 = fsub fast float %4464, %4479
  %4482 = fadd fast float %4480, %4464
  %4483 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4484 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4485 = fsub fast float %4459, %4483
  %4486 = fsub fast float %4484, %4483
  %4487 = bitcast float %4486 to i32
  %4488 = sub nsw i32 2129859010, %4487
  %4489 = bitcast i32 %4488 to float
  %4490 = fmul fast float %4489, %4485
  %4491 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4492 = fcmp fast olt float %4491, 0x3F70101020000000
  br i1 %4492, label %4631, label %4493

; <label>:4493                                    ; preds = %4455, %4358
  %4494 = phi float [ %4491, %4455 ], [ %4352, %4358 ]
  %4495 = fmul fast float %4494, %4361
  %4496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.i32 %4496, 1
  %4498 = extractvalue %dx.types.CBufRet.i32 %4496, 0
  %4499 = add i32 %4498, 0
  %4500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4501 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4500, %dx.types.Handle %75, float %4450, float %4451, float undef, float undef, i32 0, i32 0, i32 undef, float %4413, float %4414, float undef, float %4417, float %4418, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = extractvalue %dx.types.ResRet.f32 %4501, 1
  %4504 = extractvalue %dx.types.ResRet.f32 %4501, 2
  %4505 = extractvalue %dx.types.ResRet.f32 %4501, 3
  %4506 = and i32 %4497, 255
  %4507 = uitofp i32 %4506 to float
  %4508 = lshr i32 %4497, 8
  %4509 = and i32 %4508, 255
  %4510 = uitofp i32 %4509 to float
  %4511 = fmul fast float %4505, %4507
  %4512 = fadd fast float %4511, %4510
  %4513 = fmul fast float %4512, 0x3F70101000000000
  %4514 = fadd fast float %4513, 0xBFB99999A0000000
  %4515 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4516 = fmul fast float %4515, 0x3FF1C71C80000000
  %4517 = call float @dx.op.binary.f32(i32 36, float %4513, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4518 = fsub fast float 1.000000e+00, %4516
  %4519 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4520 = fmul fast float %4519, %4502
  %4521 = fmul fast float %4519, %4503
  %4522 = fmul fast float %4519, %4504
  %4523 = call float @dx.op.unary.f32(i32 7, float %4520)  ; Saturate(value)
  %4524 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4525 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4526 = fmul fast float %4516, %4502
  %4527 = fmul fast float %4516, %4503
  %4528 = fmul fast float %4516, %4504
  %4529 = fadd fast float %4526, %4517
  %4530 = fadd fast float %4527, %4517
  %4531 = fadd fast float %4528, %4517
  %4532 = call float @dx.op.unary.f32(i32 7, float %4529)  ; Saturate(value)
  %4533 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4534 = call float @dx.op.unary.f32(i32 7, float %4531)  ; Saturate(value)
  %4535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.i32 %4535, 3
  %4537 = extractvalue %dx.types.CBufRet.i32 %4535, 2
  %4538 = add i32 %4537, 0
  %4539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4540 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4539, %dx.types.Handle %75, float %4450, float %4451, float undef, float undef, i32 0, i32 0, i32 undef, float %4413, float %4414, float undef, float %4417, float %4418, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = extractvalue %dx.types.ResRet.f32 %4540, 1
  %4543 = extractvalue %dx.types.ResRet.f32 %4540, 2
  %4544 = extractvalue %dx.types.ResRet.f32 %4540, 3
  %4545 = and i32 %4536, 255
  %4546 = uitofp i32 %4545 to float
  %4547 = lshr i32 %4536, 8
  %4548 = and i32 %4547, 255
  %4549 = uitofp i32 %4548 to float
  %4550 = lshr i32 %4536, 16
  %4551 = and i32 %4550, 255
  %4552 = uitofp i32 %4551 to float
  %4553 = fmul fast float %4552, 0x3F70101000000000
  %4554 = fmul fast float %4541, %4546
  %4555 = fadd fast float %4554, %4549
  %4556 = fmul fast float %4555, 0x3F70101000000000
  %4557 = fadd fast float %4542, -5.000000e-01
  %4558 = fadd fast float %4544, -5.000000e-01
  %4559 = fmul fast float %4557, %4553
  %4560 = fmul fast float %4558, %4553
  %4561 = fadd fast float %4559, 5.000000e-01
  %4562 = fadd fast float %4560, 5.000000e-01
  %4563 = fmul fast float %4561, 2.000000e+00
  %4564 = fadd fast float %4563, -1.000000e+00
  %4565 = fmul fast float %4562, 2.000000e+00
  %4566 = fadd fast float %4565, -1.000000e+00
  %4567 = fadd fast float %4564, %4566
  %4568 = fmul fast float %4567, 5.000000e-01
  %4569 = fsub fast float %4564, %4566
  %4570 = fmul fast float %4569, 5.000000e-01
  %4571 = call float @dx.op.unary.f32(i32 6, float %4568)  ; FAbs(value)
  %4572 = fsub fast float 1.000000e+00, %4571
  %4573 = call float @dx.op.unary.f32(i32 6, float %4570)  ; FAbs(value)
  %4574 = fsub fast float %4572, %4573
  %4575 = call float @dx.op.dot3.f32(i32 55, float %4568, float %4570, float %4574, float %4568, float %4570, float %4574)  ; Dot3(ax,ay,az,bx,by,bz)
  %4576 = call float @dx.op.unary.f32(i32 25, float %4575)  ; Rsqrt(value)
  %4577 = fmul fast float %4568, %4576
  %4578 = fmul fast float %4570, %4576
  %4579 = select i1 %4406, i32 %4396, i32 %4397
  %4580 = select i1 %4404, i32 %4395, i32 %4579
  %4581 = sitofp i32 %4580 to float
  %4582 = fmul fast float %4574, %4581
  %4583 = fmul fast float %4582, %4576
  %4584 = select i1 %4406, float %4583, float %4578
  %4585 = select i1 %4406, float %4578, float %4583
  %4586 = select i1 %4404, float %4583, float %4577
  %4587 = select i1 %4404, float %4578, float %4584
  %4588 = select i1 %4404, float %4577, float %4585
  %4589 = fsub fast float %4523, %3956
  %4590 = fsub fast float %4524, %3957
  %4591 = fsub fast float %4525, %3958
  %4592 = fmul fast float %4589, %4495
  %4593 = fmul fast float %4590, %4495
  %4594 = fmul fast float %4591, %4495
  %4595 = fadd fast float %4592, %3956
  %4596 = fadd fast float %4593, %3957
  %4597 = fadd fast float %4594, %3958
  %4598 = fsub fast float %4532, %3941
  %4599 = fsub fast float %4533, %3942
  %4600 = fsub fast float %4534, %3943
  %4601 = fmul fast float %4598, %4495
  %4602 = fmul fast float %4599, %4495
  %4603 = fmul fast float %4600, %4495
  %4604 = fadd fast float %4601, %3941
  %4605 = fadd fast float %4602, %3942
  %4606 = fadd fast float %4603, %3943
  %4607 = fadd fast float %4586, %3905
  %4608 = fadd fast float %4587, %3906
  %4609 = fadd fast float %4588, %3907
  %4610 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4608, float %4609, float %4607, float %4608, float %4609)  ; Dot3(ax,ay,az,bx,by,bz)
  %4611 = call float @dx.op.unary.f32(i32 25, float %4610)  ; Rsqrt(value)
  %4612 = fmul fast float %4607, %4611
  %4613 = fmul fast float %4608, %4611
  %4614 = fmul fast float %4609, %4611
  %4615 = fsub fast float %4612, %3905
  %4616 = fsub fast float %4613, %3906
  %4617 = fsub fast float %4614, %3907
  %4618 = fmul fast float %4615, %4495
  %4619 = fmul fast float %4616, %4495
  %4620 = fmul fast float %4617, %4495
  %4621 = fadd fast float %4618, %3905
  %4622 = fadd fast float %4619, %3906
  %4623 = fadd fast float %4620, %3907
  %4624 = call float @dx.op.binary.f32(i32 36, float %3917, float %4543)  ; FMin(a,b)
  %4625 = fsub fast float %4624, %3917
  %4626 = fmul fast float %4625, %4495
  %4627 = fadd fast float %4626, %3917
  %4628 = fsub fast float %4556, %3944
  %4629 = fmul fast float %4628, %4495
  %4630 = fadd fast float %4629, %3944
  br label %4631

; <label>:4631                                    ; preds = %4493, %4455, %4357
  %4632 = phi float [ %4595, %4493 ], [ %3956, %4455 ], [ %3956, %4357 ]
  %4633 = phi float [ %4596, %4493 ], [ %3957, %4455 ], [ %3957, %4357 ]
  %4634 = phi float [ %4597, %4493 ], [ %3958, %4455 ], [ %3958, %4357 ]
  %4635 = phi float [ %4621, %4493 ], [ %3905, %4455 ], [ %3905, %4357 ]
  %4636 = phi float [ %4622, %4493 ], [ %3906, %4455 ], [ %3906, %4357 ]
  %4637 = phi float [ %4623, %4493 ], [ %3907, %4455 ], [ %3907, %4357 ]
  %4638 = phi float [ %4604, %4493 ], [ %3941, %4455 ], [ %3941, %4357 ]
  %4639 = phi float [ %4605, %4493 ], [ %3942, %4455 ], [ %3942, %4357 ]
  %4640 = phi float [ %4606, %4493 ], [ %3943, %4455 ], [ %3943, %4357 ]
  %4641 = phi float [ %4630, %4493 ], [ %3944, %4455 ], [ %3944, %4357 ]
  %4642 = phi float [ %4627, %4493 ], [ %3917, %4455 ], [ %3917, %4357 ]
  br i1 %4355, label %4643, label %4916

; <label>:4643                                    ; preds = %4631
  %4644 = call float @dx.op.unary.f32(i32 23, float %4642)  ; Log(value)
  %4645 = fmul fast float %4644, 4.000000e+00
  %4646 = call float @dx.op.unary.f32(i32 21, float %4645)  ; Exp(value)
  %4647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4648 = extractvalue %dx.types.CBufRet.f32 %4647, 0
  %4649 = fmul fast float %4648, %37
  %4650 = fmul fast float %4648, %38
  %4651 = fmul fast float %4648, %39
  %4652 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4653 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4654 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %4655 = call float @dx.op.unary.f32(i32 23, float %4652)  ; Log(value)
  %4656 = call float @dx.op.unary.f32(i32 23, float %4653)  ; Log(value)
  %4657 = call float @dx.op.unary.f32(i32 23, float %4654)  ; Log(value)
  %4658 = fmul fast float %4655, 4.000000e+00
  %4659 = fmul fast float %4656, 4.000000e+00
  %4660 = fmul fast float %4657, 4.000000e+00
  %4661 = call float @dx.op.unary.f32(i32 21, float %4658)  ; Exp(value)
  %4662 = call float @dx.op.unary.f32(i32 21, float %4659)  ; Exp(value)
  %4663 = call float @dx.op.unary.f32(i32 21, float %4660)  ; Exp(value)
  %4664 = fadd fast float %4662, %4661
  %4665 = fadd fast float %4664, %4663
  %4666 = fdiv fast float 1.000000e+00, %4665
  %4667 = fmul fast float %4666, %4661
  %4668 = fcmp fast ogt float %46, 0.000000e+00
  %4669 = fcmp fast ogt float %47, 0.000000e+00
  %4670 = fcmp fast ogt float %48, 0.000000e+00
  %4671 = fcmp fast olt float %46, 0.000000e+00
  %4672 = fcmp fast olt float %47, 0.000000e+00
  %4673 = fcmp fast olt float %48, 0.000000e+00
  %4674 = zext i1 %4668 to i32
  %4675 = zext i1 %4669 to i32
  %4676 = zext i1 %4670 to i32
  %4677 = zext i1 %4671 to i32
  %4678 = zext i1 %4672 to i32
  %4679 = zext i1 %4673 to i32
  %4680 = sub nsw i32 %4674, %4677
  %4681 = sub nsw i32 %4675, %4678
  %4682 = sub nsw i32 %4676, %4679
  %4683 = call float @dx.op.unary.f32(i32 83, float %4649)  ; DerivCoarseX(value)
  %4684 = call float @dx.op.unary.f32(i32 83, float %4650)  ; DerivCoarseX(value)
  %4685 = call float @dx.op.unary.f32(i32 83, float %4651)  ; DerivCoarseX(value)
  %4686 = call float @dx.op.unary.f32(i32 84, float %4649)  ; DerivCoarseY(value)
  %4687 = call float @dx.op.unary.f32(i32 84, float %4650)  ; DerivCoarseY(value)
  %4688 = call float @dx.op.unary.f32(i32 84, float %4651)  ; DerivCoarseY(value)
  %4689 = fcmp fast ole float %229, %4667
  %4690 = fmul fast float %4666, %4664
  %4691 = fcmp fast ole float %229, %4690
  %4692 = select i1 %4691, float %4651, float %4649
  %4693 = select i1 %4691, float %4649, float %4650
  %4694 = select i1 %4689, float %4650, float %4692
  %4695 = select i1 %4689, float %4651, float %4693
  %4696 = select i1 %4691, float %4685, float %4683
  %4697 = select i1 %4691, float %4683, float %4684
  %4698 = select i1 %4689, float %4684, float %4696
  %4699 = select i1 %4689, float %4685, float %4697
  %4700 = select i1 %4691, float %4688, float %4686
  %4701 = select i1 %4691, float %4686, float %4687
  %4702 = select i1 %4689, float %4687, float %4700
  %4703 = select i1 %4689, float %4688, float %4701
  %4704 = call float @dx.op.unary.f32(i32 27, float %4694)  ; Round_ni(value)
  %4705 = call float @dx.op.unary.f32(i32 27, float %4695)  ; Round_ni(value)
  %4706 = fptosi float %4704 to i32
  %4707 = fptosi float %4705 to i32
  %4708 = xor i32 %4707, %4706
  %4709 = sitofp i32 %4708 to float
  %4710 = fptosi float %4709 to i32
  %4711 = sitofp i32 %4710 to float
  %4712 = fmul fast float %4711, 0x3FE3C6EF40000000
  %4713 = frem fast float %4704, 2.560000e+02
  %4714 = frem fast float %4705, 2.560000e+02
  %4715 = fptoui float %4713 to i32
  %4716 = fptoui float %4714 to i32
  %4717 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4715, i32 %4716, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4718 = extractvalue %dx.types.ResRet.f32 %4717, 0
  %4719 = extractvalue %dx.types.ResRet.f32 %4717, 1
  %4720 = extractvalue %dx.types.ResRet.f32 %4717, 2
  %4721 = fadd fast float %4718, %4712
  %4722 = fadd fast float %4719, %4712
  %4723 = fadd fast float %4720, %4712
  %4724 = call float @dx.op.unary.f32(i32 22, float %4721)  ; Frc(value)
  %4725 = call float @dx.op.unary.f32(i32 22, float %4722)  ; Frc(value)
  %4726 = call float @dx.op.unary.f32(i32 22, float %4723)  ; Frc(value)
  %4727 = fmul fast float %4726, 0x401921FB60000000
  %4728 = call float @dx.op.unary.f32(i32 13, float %4727)  ; Sin(value)
  %4729 = call float @dx.op.unary.f32(i32 12, float %4727)  ; Cos(value)
  %4730 = fsub fast float -0.000000e+00, %4729
  %4731 = fmul fast float %4729, %4694
  %4732 = call float @dx.op.tertiary.f32(i32 46, float %4728, float %4695, float %4731)  ; FMad(a,b,c)
  %4733 = fmul fast float %4728, %4694
  %4734 = call float @dx.op.tertiary.f32(i32 46, float %4730, float %4695, float %4733)  ; FMad(a,b,c)
  %4735 = fadd fast float %4732, %4724
  %4736 = fadd fast float %4734, %4725
  %4737 = extractvalue %dx.types.CBufRet.f32 %4647, 3
  %4738 = bitcast float %4737 to i32
  %4739 = icmp eq i32 %4738, 0
  br i1 %4739, label %4778, label %4740

; <label>:4740                                    ; preds = %4643
  %4741 = add i32 %4738, 0
  %4742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4743 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4742, %dx.types.Handle %76, float %4735, float %4736, float undef, float undef, i32 0, i32 0, i32 undef, float %4698, float %4699, float undef, float %4702, float %4703, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4744 = extractvalue %dx.types.ResRet.f32 %4743, 0
  %4745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4745, 1
  %4747 = extractvalue %dx.types.CBufRet.f32 %4745, 2
  %4748 = fsub fast float 1.000000e+00, %4353
  %4749 = call float @dx.op.binary.f32(i32 35, float %4748, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4750 = bitcast float %4353 to i32
  %4751 = sitofp i32 %4750 to float
  %4752 = fadd fast float %4751, 0xC1CFBF8940000000
  %4753 = fmul fast float %4747, %4752
  %4754 = fadd fast float %4753, 0x41CFBF8940000000
  %4755 = fptosi float %4754 to i32
  %4756 = bitcast i32 %4755 to float
  %4757 = bitcast float %4749 to i32
  %4758 = sitofp i32 %4757 to float
  %4759 = fadd fast float %4758, 0xC1CFBF8940000000
  %4760 = fmul fast float %4759, %4747
  %4761 = fadd fast float %4760, 0x41CFBF8940000000
  %4762 = fptosi float %4761 to i32
  %4763 = bitcast i32 %4762 to float
  %4764 = fmul fast float %4756, %4746
  %4765 = fmul fast float %4763, %4746
  %4766 = fsub fast float %4749, %4764
  %4767 = fadd fast float %4765, %4749
  %4768 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4769 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4770 = fsub fast float %4744, %4768
  %4771 = fsub fast float %4769, %4768
  %4772 = bitcast float %4771 to i32
  %4773 = sub nsw i32 2129859010, %4772
  %4774 = bitcast i32 %4773 to float
  %4775 = fmul fast float %4774, %4770
  %4776 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4777 = fcmp fast olt float %4776, 0x3F70101020000000
  br i1 %4777, label %4916, label %4778

; <label>:4778                                    ; preds = %4740, %4643
  %4779 = phi float [ %4776, %4740 ], [ %4353, %4643 ]
  %4780 = fmul fast float %4779, %4646
  %4781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4782 = extractvalue %dx.types.CBufRet.i32 %4781, 1
  %4783 = extractvalue %dx.types.CBufRet.i32 %4781, 0
  %4784 = add i32 %4783, 0
  %4785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4784, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4786 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4785, %dx.types.Handle %75, float %4735, float %4736, float undef, float undef, i32 0, i32 0, i32 undef, float %4698, float %4699, float undef, float %4702, float %4703, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4787 = extractvalue %dx.types.ResRet.f32 %4786, 0
  %4788 = extractvalue %dx.types.ResRet.f32 %4786, 1
  %4789 = extractvalue %dx.types.ResRet.f32 %4786, 2
  %4790 = extractvalue %dx.types.ResRet.f32 %4786, 3
  %4791 = and i32 %4782, 255
  %4792 = uitofp i32 %4791 to float
  %4793 = lshr i32 %4782, 8
  %4794 = and i32 %4793, 255
  %4795 = uitofp i32 %4794 to float
  %4796 = fmul fast float %4790, %4792
  %4797 = fadd fast float %4796, %4795
  %4798 = fmul fast float %4797, 0x3F70101000000000
  %4799 = fadd fast float %4798, 0xBFB99999A0000000
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = fmul fast float %4800, 0x3FF1C71C80000000
  %4802 = call float @dx.op.binary.f32(i32 36, float %4798, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4803 = fsub fast float 1.000000e+00, %4801
  %4804 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4805 = fmul fast float %4804, %4787
  %4806 = fmul fast float %4804, %4788
  %4807 = fmul fast float %4804, %4789
  %4808 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4809 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4810 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4811 = fmul fast float %4801, %4787
  %4812 = fmul fast float %4801, %4788
  %4813 = fmul fast float %4801, %4789
  %4814 = fadd fast float %4811, %4802
  %4815 = fadd fast float %4812, %4802
  %4816 = fadd fast float %4813, %4802
  %4817 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4818 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4819 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4821 = extractvalue %dx.types.CBufRet.i32 %4820, 3
  %4822 = extractvalue %dx.types.CBufRet.i32 %4820, 2
  %4823 = add i32 %4822, 0
  %4824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4823, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4825 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4824, %dx.types.Handle %75, float %4735, float %4736, float undef, float undef, i32 0, i32 0, i32 undef, float %4698, float %4699, float undef, float %4702, float %4703, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4826 = extractvalue %dx.types.ResRet.f32 %4825, 0
  %4827 = extractvalue %dx.types.ResRet.f32 %4825, 1
  %4828 = extractvalue %dx.types.ResRet.f32 %4825, 2
  %4829 = extractvalue %dx.types.ResRet.f32 %4825, 3
  %4830 = and i32 %4821, 255
  %4831 = uitofp i32 %4830 to float
  %4832 = lshr i32 %4821, 8
  %4833 = and i32 %4832, 255
  %4834 = uitofp i32 %4833 to float
  %4835 = lshr i32 %4821, 16
  %4836 = and i32 %4835, 255
  %4837 = uitofp i32 %4836 to float
  %4838 = fmul fast float %4837, 0x3F70101000000000
  %4839 = fmul fast float %4826, %4831
  %4840 = fadd fast float %4839, %4834
  %4841 = fmul fast float %4840, 0x3F70101000000000
  %4842 = fadd fast float %4827, -5.000000e-01
  %4843 = fadd fast float %4829, -5.000000e-01
  %4844 = fmul fast float %4842, %4838
  %4845 = fmul fast float %4843, %4838
  %4846 = fadd fast float %4844, 5.000000e-01
  %4847 = fadd fast float %4845, 5.000000e-01
  %4848 = fmul fast float %4846, 2.000000e+00
  %4849 = fadd fast float %4848, -1.000000e+00
  %4850 = fmul fast float %4847, 2.000000e+00
  %4851 = fadd fast float %4850, -1.000000e+00
  %4852 = fadd fast float %4849, %4851
  %4853 = fmul fast float %4852, 5.000000e-01
  %4854 = fsub fast float %4849, %4851
  %4855 = fmul fast float %4854, 5.000000e-01
  %4856 = call float @dx.op.unary.f32(i32 6, float %4853)  ; FAbs(value)
  %4857 = fsub fast float 1.000000e+00, %4856
  %4858 = call float @dx.op.unary.f32(i32 6, float %4855)  ; FAbs(value)
  %4859 = fsub fast float %4857, %4858
  %4860 = call float @dx.op.dot3.f32(i32 55, float %4853, float %4855, float %4859, float %4853, float %4855, float %4859)  ; Dot3(ax,ay,az,bx,by,bz)
  %4861 = call float @dx.op.unary.f32(i32 25, float %4860)  ; Rsqrt(value)
  %4862 = fmul fast float %4853, %4861
  %4863 = fmul fast float %4855, %4861
  %4864 = select i1 %4691, i32 %4681, i32 %4682
  %4865 = select i1 %4689, i32 %4680, i32 %4864
  %4866 = sitofp i32 %4865 to float
  %4867 = fmul fast float %4859, %4866
  %4868 = fmul fast float %4867, %4861
  %4869 = select i1 %4691, float %4868, float %4863
  %4870 = select i1 %4691, float %4863, float %4868
  %4871 = select i1 %4689, float %4868, float %4862
  %4872 = select i1 %4689, float %4863, float %4869
  %4873 = select i1 %4689, float %4862, float %4870
  %4874 = fsub fast float %4808, %4632
  %4875 = fsub fast float %4809, %4633
  %4876 = fsub fast float %4810, %4634
  %4877 = fmul fast float %4874, %4780
  %4878 = fmul fast float %4875, %4780
  %4879 = fmul fast float %4876, %4780
  %4880 = fadd fast float %4877, %4632
  %4881 = fadd fast float %4878, %4633
  %4882 = fadd fast float %4879, %4634
  %4883 = fsub fast float %4817, %4638
  %4884 = fsub fast float %4818, %4639
  %4885 = fsub fast float %4819, %4640
  %4886 = fmul fast float %4883, %4780
  %4887 = fmul fast float %4884, %4780
  %4888 = fmul fast float %4885, %4780
  %4889 = fadd fast float %4886, %4638
  %4890 = fadd fast float %4887, %4639
  %4891 = fadd fast float %4888, %4640
  %4892 = fadd fast float %4871, %4635
  %4893 = fadd fast float %4872, %4636
  %4894 = fadd fast float %4873, %4637
  %4895 = call float @dx.op.dot3.f32(i32 55, float %4892, float %4893, float %4894, float %4892, float %4893, float %4894)  ; Dot3(ax,ay,az,bx,by,bz)
  %4896 = call float @dx.op.unary.f32(i32 25, float %4895)  ; Rsqrt(value)
  %4897 = fmul fast float %4892, %4896
  %4898 = fmul fast float %4893, %4896
  %4899 = fmul fast float %4894, %4896
  %4900 = fsub fast float %4897, %4635
  %4901 = fsub fast float %4898, %4636
  %4902 = fsub fast float %4899, %4637
  %4903 = fmul fast float %4900, %4780
  %4904 = fmul fast float %4901, %4780
  %4905 = fmul fast float %4902, %4780
  %4906 = fadd fast float %4903, %4635
  %4907 = fadd fast float %4904, %4636
  %4908 = fadd fast float %4905, %4637
  %4909 = call float @dx.op.binary.f32(i32 36, float %4642, float %4828)  ; FMin(a,b)
  %4910 = fsub fast float %4909, %4642
  %4911 = fmul fast float %4910, %4780
  %4912 = fadd fast float %4911, %4642
  %4913 = fsub fast float %4841, %4641
  %4914 = fmul fast float %4913, %4780
  %4915 = fadd fast float %4914, %4641
  br label %4916

; <label>:4916                                    ; preds = %4778, %4740, %4631, %4347
  %4917 = phi float [ %4880, %4778 ], [ %4632, %4740 ], [ %4632, %4631 ], [ %3956, %4347 ]
  %4918 = phi float [ %4881, %4778 ], [ %4633, %4740 ], [ %4633, %4631 ], [ %3957, %4347 ]
  %4919 = phi float [ %4882, %4778 ], [ %4634, %4740 ], [ %4634, %4631 ], [ %3958, %4347 ]
  %4920 = phi float [ %4906, %4778 ], [ %4635, %4740 ], [ %4635, %4631 ], [ %3905, %4347 ]
  %4921 = phi float [ %4907, %4778 ], [ %4636, %4740 ], [ %4636, %4631 ], [ %3906, %4347 ]
  %4922 = phi float [ %4908, %4778 ], [ %4637, %4740 ], [ %4637, %4631 ], [ %3907, %4347 ]
  %4923 = phi float [ %4889, %4778 ], [ %4638, %4740 ], [ %4638, %4631 ], [ %3941, %4347 ]
  %4924 = phi float [ %4890, %4778 ], [ %4639, %4740 ], [ %4639, %4631 ], [ %3942, %4347 ]
  %4925 = phi float [ %4891, %4778 ], [ %4640, %4740 ], [ %4640, %4631 ], [ %3943, %4347 ]
  %4926 = phi float [ %4915, %4778 ], [ %4641, %4740 ], [ %4641, %4631 ], [ %3944, %4347 ]
  %4927 = phi float [ %4912, %4778 ], [ %4642, %4740 ], [ %4642, %4631 ], [ %3917, %4347 ]
  %4928 = fcmp fast une float %4351, 0.000000e+00
  %4929 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %4930 = call float @dx.op.unary.f32(i32 25, float %4929)  ; Rsqrt(value)
  br i1 %4928, label %4938, label %4931

; <label>:4931                                    ; preds = %4916
  %4932 = fmul fast float %4930, %166
  %4933 = fmul fast float %4930, %167
  %4934 = fmul fast float %4930, %168
  %4935 = fsub fast float -0.000000e+00, %4932
  %4936 = fsub fast float -0.000000e+00, %4933
  %4937 = fsub fast float -0.000000e+00, %4934
  br label %5105

; <label>:4938                                    ; preds = %4916
  %4939 = fmul fast float %166, %4930
  %4940 = fsub fast float -0.000000e+00, %4939
  %4941 = fmul fast float %167, %4930
  %4942 = fsub fast float -0.000000e+00, %4941
  %4943 = fmul fast float %168, %4930
  %4944 = fsub fast float -0.000000e+00, %4943
  %4945 = call float @dx.op.dot3.f32(i32 55, float %4940, float %4942, float %4944, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4946 = fmul fast float %4351, 2.500000e+00
  %4947 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4948 = fmul fast float %4351, 0x4013FFFFE0000000
  %4949 = fadd fast float %4948, 0xBFFFFFFFE0000000
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = fmul fast float %4351, 0x4004000020000000
  %4952 = fadd fast float %4951, 0xBFF8000040000000
  %4953 = call float @dx.op.unary.f32(i32 7, float %4952)  ; Saturate(value)
  %4954 = fmul fast float %3923, 1.000000e+01
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4956 = fmul fast float %4955, 2.000000e+00
  %4957 = fsub fast float 3.000000e+00, %4956
  %4958 = fmul fast float %4955, %4955
  %4959 = fmul fast float %4958, %4957
  %4960 = fsub fast float 1.000000e+00, %4959
  %4961 = fsub fast float 0x3FE3333340000000, %4926
  %4962 = fmul fast float %4961, 0x400AAAAAA0000000
  %4963 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4964 = fmul fast float %4960, %4963
  %4965 = fmul fast float %4917, 0x3FEA2B8620000000
  %4966 = fmul fast float %4918, 0x3FEA2B8620000000
  %4967 = fmul fast float %4919, 0x3FEA2B8620000000
  %4968 = fadd fast float %4965, 0x3FC81DFBA0000000
  %4969 = fmul fast float %4968, %4917
  %4970 = fadd fast float %4969, 0x3F910E6020000000
  %4971 = fadd fast float %4966, 0x3FC81DFBA0000000
  %4972 = fmul fast float %4971, %4918
  %4973 = fadd fast float %4972, 0x3F910E6020000000
  %4974 = fadd fast float %4967, 0x3FC81DFBA0000000
  %4975 = fmul fast float %4974, %4919
  %4976 = fadd fast float %4975, 0x3F910E6020000000
  %4977 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4978 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4979 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4980 = fsub fast float %4977, %4917
  %4981 = fsub fast float %4978, %4918
  %4982 = fsub fast float %4979, %4919
  %4983 = fmul fast float %4980, %4947
  %4984 = fmul fast float %4983, %4964
  %4985 = fmul fast float %4981, %4947
  %4986 = fmul fast float %4985, %4964
  %4987 = fmul fast float %4982, %4947
  %4988 = fmul fast float %4987, %4964
  %4989 = fadd fast float %4984, %4917
  %4990 = fadd fast float %4986, %4918
  %4991 = fadd fast float %4988, %4919
  %4992 = fmul fast float %4927, %4927
  %4993 = fmul fast float %4992, %4992
  %4994 = fadd fast float %4950, 1.000000e+00
  %4995 = fsub fast float %4994, %4964
  %4996 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4997 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4998 = call float @dx.op.unary.f32(i32 7, float %4997)  ; Saturate(value)
  %4999 = fsub fast float 1.000000e+00, %4993
  %5000 = call float @dx.op.binary.f32(i32 36, float %4996, float %4999)  ; FMin(a,b)
  %5001 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %5002 = call float @dx.op.binary.f32(i32 35, float %5000, float %5001)  ; FMax(a,b)
  %5003 = fadd fast float %4998, 0xBFE4CCCCC0000000
  %5004 = fmul fast float %5003, 0x4006DB6DA0000000
  %5005 = call float @dx.op.unary.f32(i32 7, float %5004)  ; Saturate(value)
  %5006 = fmul fast float %5005, 2.000000e+00
  %5007 = fsub fast float 3.000000e+00, %5006
  %5008 = bitcast float %4923 to i32
  %5009 = ashr i32 %5008, 1
  %5010 = add nsw i32 %5009, 532487669
  %5011 = bitcast i32 %5010 to float
  %5012 = fsub fast float 1.000000e+00, %5011
  %5013 = bitcast float %5012 to i32
  %5014 = sub nsw i32 2129859010, %5013
  %5015 = bitcast i32 %5014 to float
  %5016 = fmul fast float %5015, 2.000000e+00
  %5017 = bitcast float %4924 to i32
  %5018 = ashr i32 %5017, 1
  %5019 = add nsw i32 %5018, 532487669
  %5020 = bitcast i32 %5019 to float
  %5021 = fsub fast float 1.000000e+00, %5020
  %5022 = bitcast float %5021 to i32
  %5023 = sub nsw i32 2129859010, %5022
  %5024 = bitcast i32 %5023 to float
  %5025 = fmul fast float %5024, 2.000000e+00
  %5026 = bitcast float %4925 to i32
  %5027 = ashr i32 %5026, 1
  %5028 = add nsw i32 %5027, 532487669
  %5029 = bitcast i32 %5028 to float
  %5030 = fsub fast float 1.000000e+00, %5029
  %5031 = bitcast float %5030 to i32
  %5032 = sub nsw i32 2129859010, %5031
  %5033 = bitcast i32 %5032 to float
  %5034 = fmul fast float %5033, 2.000000e+00
  %5035 = fsub fast float 0x4002A9FBE0000000, %5016
  %5036 = fadd fast float %5016, 0x3FD54FDF00000000
  %5037 = bitcast float %5036 to i32
  %5038 = sub nsw i32 2129859010, %5037
  %5039 = bitcast i32 %5038 to float
  %5040 = fmul fast float %5039, %5035
  %5041 = fmul fast float %5040, %5040
  %5042 = fsub fast float 0x4002A9FBE0000000, %5025
  %5043 = fadd fast float %5025, 0x3FD54FDF00000000
  %5044 = bitcast float %5043 to i32
  %5045 = sub nsw i32 2129859010, %5044
  %5046 = bitcast i32 %5045 to float
  %5047 = fmul fast float %5046, %5042
  %5048 = fmul fast float %5047, %5047
  %5049 = fsub fast float 0x4002A9FBE0000000, %5034
  %5050 = fadd fast float %5034, 0x3FD54FDF00000000
  %5051 = bitcast float %5050 to i32
  %5052 = sub nsw i32 2129859010, %5051
  %5053 = bitcast i32 %5052 to float
  %5054 = fmul fast float %5053, %5049
  %5055 = fmul fast float %5054, %5054
  %5056 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5041)  ; FMax(a,b)
  %5057 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5048)  ; FMax(a,b)
  %5058 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5055)  ; FMax(a,b)
  %5059 = fsub fast float 1.000000e+00, %4945
  %5060 = fadd fast float %5059, %4960
  %5061 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5062 = fsub fast float 1.000000e+00, %4332
  %5063 = fmul fast float %5002, %5062
  %5064 = fmul fast float %5005, %5005
  %5065 = fmul fast float %5064, %5063
  %5066 = fmul fast float %5065, %5007
  %5067 = fmul fast float %5062, 0xBFE99999A0000000
  %5068 = fmul fast float %5067, %4947
  %5069 = fmul fast float %5068, %4964
  %5070 = fadd fast float %5069, 1.000000e+00
  %5071 = fadd fast float %4926, -1.000000e+00
  %5072 = fmul fast float %5070, %5071
  %5073 = fadd fast float %5072, 1.000000e+00
  %5074 = fsub fast float %5056, %4923
  %5075 = fsub fast float %5057, %4924
  %5076 = fsub fast float %5058, %4925
  %5077 = fmul fast float %5066, %5074
  %5078 = fmul fast float %5066, %5075
  %5079 = fmul fast float %5066, %5076
  %5080 = fadd fast float %5077, %4923
  %5081 = fadd fast float %5078, %4924
  %5082 = fadd fast float %5079, %4925
  %5083 = fsub fast float %86, %4920
  %5084 = fsub fast float %87, %4921
  %5085 = fsub fast float %88, %4922
  %5086 = fmul fast float %5066, %5083
  %5087 = fmul fast float %5066, %5084
  %5088 = fmul fast float %5066, %5085
  %5089 = fadd fast float %5086, %4920
  %5090 = fadd fast float %5087, %4921
  %5091 = fadd fast float %5088, %4922
  %5092 = fmul fast float %5066, %5061
  %5093 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5094 = fsub fast float 1.000000e+00, %5093
  %5095 = fmul fast float %5092, %5094
  %5096 = fadd fast float %5095, %5093
  %5097 = fsub fast float 1.000000e+00, %4927
  %5098 = fmul fast float %5066, %5097
  %5099 = fadd fast float %5098, %4927
  %5100 = call float @dx.op.dot3.f32(i32 55, float %5089, float %5090, float %5091, float %5089, float %5090, float %5091)  ; Dot3(ax,ay,az,bx,by,bz)
  %5101 = call float @dx.op.unary.f32(i32 25, float %5100)  ; Rsqrt(value)
  %5102 = fmul fast float %5089, %5101
  %5103 = fmul fast float %5090, %5101
  %5104 = fmul fast float %5091, %5101
  br label %5105

; <label>:5105                                    ; preds = %4938, %4931
  %5106 = phi float [ %4937, %4931 ], [ %4944, %4938 ]
  %5107 = phi float [ %4936, %4931 ], [ %4942, %4938 ]
  %5108 = phi float [ %4935, %4931 ], [ %4940, %4938 ]
  %5109 = phi float [ %4934, %4931 ], [ %4943, %4938 ]
  %5110 = phi float [ %4933, %4931 ], [ %4941, %4938 ]
  %5111 = phi float [ %4932, %4931 ], [ %4939, %4938 ]
  %5112 = phi float [ %4917, %4931 ], [ %4989, %4938 ]
  %5113 = phi float [ %4918, %4931 ], [ %4990, %4938 ]
  %5114 = phi float [ %4919, %4931 ], [ %4991, %4938 ]
  %5115 = phi float [ %4920, %4931 ], [ %5102, %4938 ]
  %5116 = phi float [ %4921, %4931 ], [ %5103, %4938 ]
  %5117 = phi float [ %4922, %4931 ], [ %5104, %4938 ]
  %5118 = phi float [ %4923, %4931 ], [ %5080, %4938 ]
  %5119 = phi float [ %4924, %4931 ], [ %5081, %4938 ]
  %5120 = phi float [ %4925, %4931 ], [ %5082, %4938 ]
  %5121 = phi float [ %4926, %4931 ], [ %5096, %4938 ]
  %5122 = phi float [ %4927, %4931 ], [ %5099, %4938 ]
  %5123 = select i1 %218, float 0.000000e+00, float %5120
  %5124 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5116, float %5117, float %5108, float %5107, float %5106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5125 = call float @dx.op.unary.f32(i32 7, float %5124)  ; Saturate(value)
  %5126 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5110, float %5109, float %5115, float %5116, float %5117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5127 = fmul fast float %5126, 2.000000e+00
  %5128 = fmul fast float %5127, %5115
  %5129 = fmul fast float %5127, %5116
  %5130 = fmul fast float %5127, %5117
  %5131 = fsub fast float %5111, %5128
  %5132 = fsub fast float %5110, %5129
  %5133 = fsub fast float %5109, %5130
  %5134 = call float @dx.op.binary.f32(i32 36, float %5122, float 1.000000e+00)  ; FMin(a,b)
  %5135 = fsub fast float 1.000000e+00, %5122
  %5136 = bitcast float %5135 to i32
  %5137 = sub nsw i32 2129859010, %5136
  %5138 = fsub fast float 1.000000e+00, %56
  %5139 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5140 = call float @dx.op.binary.f32(i32 35, float %5139, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5141 = fdiv fast float %5138, %5140
  %5142 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5116, float %5117, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5144 = fmul fast float %5143, 5.000000e-01
  %5145 = fadd fast float %5144, 5.000000e-01
  %5146 = fmul fast float %5145, %56
  %5147 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5116, float %5117, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5149 = fmul fast float %5148, %5141
  %5150 = fadd fast float %5146, %5149
  %5151 = fsub fast float 5.000000e-01, %5144
  %5152 = fmul fast float %5151, %5112
  %5153 = fmul fast float %5151, %5113
  %5154 = fmul fast float %5151, %5114
  %5155 = fadd fast float %5150, %5152
  %5156 = fadd fast float %5150, %5153
  %5157 = fadd fast float %5150, %5154
  %5158 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5159 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5160 = fmul fast float %5159, 5.000000e-01
  %5161 = fadd fast float %5160, 5.000000e-01
  %5162 = fmul fast float %5161, %56
  %5163 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5164 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5165 = fmul fast float %5164, %5141
  %5166 = fadd fast float %5162, %5165
  %5167 = fsub fast float 5.000000e-01, %5160
  %5168 = fmul fast float %5167, %5112
  %5169 = fmul fast float %5167, %5113
  %5170 = fmul fast float %5167, %5114
  %5171 = fadd fast float %5166, %5168
  %5172 = fadd fast float %5166, %5169
  %5173 = fadd fast float %5166, %5170
  %5174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5175 = extractvalue %dx.types.CBufRet.f32 %5174, 0
  %5176 = call float @dx.op.binary.f32(i32 36, float %5112, float %5175)  ; FMin(a,b)
  %5177 = fsub fast float 1.000000e+00, %5134
  %5178 = fmul fast float %5176, %5177
  %5179 = fsub fast float 1.000000e+00, %5178
  %5180 = bitcast float %5179 to i32
  %5181 = sub nsw i32 2129859010, %5180
  %5182 = bitcast i32 %5181 to float
  %5183 = call float @dx.op.binary.f32(i32 36, float %5113, float %5175)  ; FMin(a,b)
  %5184 = fmul fast float %5183, %5177
  %5185 = fsub fast float 1.000000e+00, %5184
  %5186 = bitcast float %5185 to i32
  %5187 = sub nsw i32 2129859010, %5186
  %5188 = bitcast i32 %5187 to float
  %5189 = call float @dx.op.binary.f32(i32 36, float %5114, float %5175)  ; FMin(a,b)
  %5190 = fmul fast float %5189, %5177
  %5191 = fsub fast float 1.000000e+00, %5190
  %5192 = bitcast float %5191 to i32
  %5193 = sub nsw i32 2129859010, %5192
  %5194 = bitcast i32 %5193 to float
  %5195 = fmul fast float %5134, %57
  %5196 = fmul fast float %5195, %5155
  %5197 = fmul fast float %5196, %5182
  %5198 = fmul fast float %5134, %58
  %5199 = fmul fast float %5198, %5156
  %5200 = fmul fast float %5199, %5188
  %5201 = fmul fast float %5134, %59
  %5202 = fmul fast float %5201, %5157
  %5203 = fmul fast float %5202, %5194
  %5204 = call float @dx.op.binary.f32(i32 36, float %5118, float %5175)  ; FMin(a,b)
  %5205 = fmul fast float %5204, %5177
  %5206 = fsub fast float 1.000000e+00, %5205
  %5207 = bitcast float %5206 to i32
  %5208 = sub nsw i32 2129859010, %5207
  %5209 = bitcast i32 %5208 to float
  %5210 = call float @dx.op.binary.f32(i32 36, float %5119, float %5175)  ; FMin(a,b)
  %5211 = fmul fast float %5210, %5177
  %5212 = fsub fast float 1.000000e+00, %5211
  %5213 = bitcast float %5212 to i32
  %5214 = sub nsw i32 2129859010, %5213
  %5215 = bitcast i32 %5214 to float
  %5216 = call float @dx.op.binary.f32(i32 36, float %5123, float %5175)  ; FMin(a,b)
  %5217 = fmul fast float %5216, %5177
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = bitcast float %5218 to i32
  %5220 = sub nsw i32 2129859010, %5219
  %5221 = bitcast i32 %5220 to float
  %5222 = fmul fast float %5195, %5171
  %5223 = fmul fast float %5222, %5209
  %5224 = fmul fast float %5198, %5172
  %5225 = fmul fast float %5224, %5215
  %5226 = fmul fast float %5201, %5173
  %5227 = fmul fast float %5226, %5221
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5197, float %5200, float %5203, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = select i1 %218, float 0.000000e+00, float %5197
  %5230 = select i1 %218, float %5228, float %5200
  %5231 = select i1 %218, float 0.000000e+00, float %5203
  %5232 = call float @dx.op.dot3.f32(i32 55, float %5223, float %5225, float %5227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5233 = select i1 %218, float 0.000000e+00, float %5223
  %5234 = select i1 %218, float %5232, float %5225
  %5235 = select i1 %218, float 0.000000e+00, float %5227
  %5236 = fmul fast float %5125, 9.843750e-01
  %5237 = fmul fast float %5121, 9.843750e-01
  %5238 = fadd fast float %5236, 7.812500e-03
  %5239 = fadd fast float %5237, 7.812500e-03
  %5240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %30, float %5238, float %5239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5241 = extractvalue %dx.types.ResRet.f32 %5240, 2
  %5242 = extractvalue %dx.types.ResRet.f32 %5240, 3
  %5243 = fmul fast float %5241, %5118
  %5244 = fmul fast float %5241, %5119
  %5245 = fmul fast float %5241, %5123
  %5246 = fadd fast float %5243, %5242
  %5247 = fadd fast float %5244, %5242
  %5248 = fadd fast float %5245, %5242
  %5249 = fcmp fast ogt float %3918, 0.000000e+00
  br i1 %5249, label %5250, label %5276

; <label>:5250                                    ; preds = %5105
  %5251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %3918, float %5125, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5252 = extractvalue %dx.types.ResRet.f32 %5251, 0
  %5253 = extractvalue %dx.types.ResRet.f32 %5251, 1
  %5254 = extractvalue %dx.types.ResRet.f32 %5251, 2
  %5255 = fadd fast float %5252, -5.000000e-01
  %5256 = fadd fast float %5253, -5.000000e-01
  %5257 = fadd fast float %5254, -5.000000e-01
  %5258 = fsub fast float 1.000000e+00, %5118
  %5259 = fsub fast float 1.000000e+00, %5119
  %5260 = fsub fast float 1.000000e+00, %5123
  %5261 = fmul fast float %5118, 4.000000e+00
  %5262 = fmul fast float %5261, %5258
  %5263 = fmul fast float %5262, %5255
  %5264 = fmul fast float %5119, 4.000000e+00
  %5265 = fmul fast float %5264, %5259
  %5266 = fmul fast float %5265, %5256
  %5267 = fmul fast float %5123, 4.000000e+00
  %5268 = fmul fast float %5267, %5260
  %5269 = fmul fast float %5268, %5257
  %5270 = fadd fast float %5263, %5246
  %5271 = fadd fast float %5266, %5247
  %5272 = fadd fast float %5269, %5248
  %5273 = call float @dx.op.unary.f32(i32 7, float %5270)  ; Saturate(value)
  %5274 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5275 = call float @dx.op.unary.f32(i32 7, float %5272)  ; Saturate(value)
  br label %5276

; <label>:5276                                    ; preds = %5250, %5105
  %5277 = phi float [ %5273, %5250 ], [ %5246, %5105 ]
  %5278 = phi float [ %5274, %5250 ], [ %5247, %5105 ]
  %5279 = phi float [ %5275, %5250 ], [ %5248, %5105 ]
  %5280 = call float @dx.op.binary.f32(i32 35, float %5278, float %5279)  ; FMax(a,b)
  %5281 = call float @dx.op.binary.f32(i32 35, float %5277, float %5280)  ; FMax(a,b)
  %5282 = fsub fast float 1.000000e+00, %5281
  %5283 = fmul fast float %5282, %5229
  %5284 = fmul fast float %5282, %5230
  %5285 = fmul fast float %5282, %5231
  %5286 = call float @dx.op.dot3.f32(i32 55, float %5112, float %5113, float %5114, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5287 = fcmp fast ogt float %5286, 0x3E7FF19E20000000
  %5288 = fdiv fast float 1.000000e+00, %5286
  %5289 = select i1 %5287, float %5288, float 0.000000e+00
  %5290 = fmul fast float %5289, %5112
  %5291 = fmul fast float %5289, %5113
  %5292 = fmul fast float %5289, %5114
  %5293 = fadd fast float %5290, -1.000000e+00
  %5294 = fadd fast float %5291, -1.000000e+00
  %5295 = fadd fast float %5292, -1.000000e+00
  %5296 = fmul fast float %5293, 5.000000e-01
  %5297 = fmul fast float %5294, 5.000000e-01
  %5298 = fmul fast float %5295, 5.000000e-01
  %5299 = fadd fast float %5296, 1.000000e+00
  %5300 = fadd fast float %5297, 1.000000e+00
  %5301 = fadd fast float %5298, 1.000000e+00
  %5302 = fmul fast float %5277, %5233
  %5303 = fmul fast float %5278, %5234
  %5304 = fmul fast float %5279, %5235
  %5305 = fsub fast float 1.000000e+00, %5125
  %5306 = bitcast float %5305 to i32
  %5307 = sitofp i32 %5306 to float
  %5308 = fmul fast float %5307, 5.000000e+00
  %5309 = fadd fast float %5308, 0xC1EFBF8940000000
  %5310 = fptosi float %5309 to i32
  %5311 = bitcast i32 %5310 to float
  %5312 = fmul fast float %5311, %3919
  %5313 = fmul fast float %5229, %5312
  %5314 = fmul fast float %5313, %5282
  %5315 = fmul fast float %5314, %5299
  %5316 = fmul fast float %5230, %5312
  %5317 = fmul fast float %5316, %5282
  %5318 = fmul fast float %5317, %5300
  %5319 = fmul fast float %5231, %5312
  %5320 = fmul fast float %5319, %5282
  %5321 = fmul fast float %5320, %5301
  %5322 = fmul fast float %5283, %3915
  %5323 = fmul fast float %5284, %3915
  %5324 = fmul fast float %5285, %3915
  %5325 = fadd fast float %5302, %3911
  %5326 = fadd fast float %5325, %5315
  %5327 = fmul fast float %5326, %3915
  %5328 = fadd fast float %5303, %3912
  %5329 = fadd fast float %5328, %5318
  %5330 = fmul fast float %5329, %3915
  %5331 = fadd fast float %5304, %3913
  %5332 = fadd fast float %5331, %5321
  %5333 = fmul fast float %5332, %3915
  %5334 = bitcast i32 %5137 to float
  %5335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.f32 %5335, 3
  %5337 = fcmp fast oeq float %5336, 0.000000e+00
  br i1 %5337, label %5565, label %5338

; <label>:5338                                    ; preds = %5276
  %5339 = extractvalue %dx.types.CBufRet.f32 %5335, 0
  %5340 = extractvalue %dx.types.CBufRet.f32 %5335, 1
  %5341 = extractvalue %dx.types.CBufRet.f32 %5335, 2
  %5342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5343 = extractvalue %dx.types.CBufRet.f32 %5342, 0
  %5344 = extractvalue %dx.types.CBufRet.f32 %5342, 1
  %5345 = extractvalue %dx.types.CBufRet.f32 %5342, 2
  %5346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5347 = extractvalue %dx.types.CBufRet.f32 %5346, 0
  %5348 = extractvalue %dx.types.CBufRet.f32 %5346, 1
  %5349 = call float @dx.op.dot3.f32(i32 55, float %5343, float %5344, float %5345, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5350 = select i1 %218, float %5347, float %5343
  %5351 = select i1 %218, float %5349, float %5344
  %5352 = select i1 %218, float %5348, float %5345
  %5353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5354 = extractvalue %dx.types.CBufRet.f32 %5353, 1
  %5355 = fcmp fast une float %5354, 0.000000e+00
  br i1 %5355, label %5356, label %5373

; <label>:5356                                    ; preds = %5338
  %5357 = fptoui float %79 to i32
  %5358 = fptoui float %80 to i32
  %5359 = lshr i32 %5357, 4
  %5360 = lshr i32 %5358, 4
  %5361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5362 = extractvalue %dx.types.CBufRet.f32 %5361, 0
  %5363 = fptoui float %5362 to i32
  %5364 = add i32 %5363, 15
  %5365 = lshr i32 %5364, 4
  %5366 = mul i32 %5365, %5360
  %5367 = add i32 %5366, %5359
  %5368 = shl i32 %5367, 3
  %5369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5368, i32 undef)  ; BufferLoad(srv,index,wot)
  %5370 = extractvalue %dx.types.ResRet.i32 %5369, 0
  %5371 = and i32 %5370, -268435456
  %5372 = icmp eq i32 %5371, -1342177280
  br i1 %5372, label %5383, label %5373

; <label>:5373                                    ; preds = %5356, %5338
  %5374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5374, 2
  %5376 = extractvalue %dx.types.CBufRet.f32 %5374, 3
  %5377 = fmul fast float %5375, %79
  %5378 = fmul fast float %5376, %80
  %5379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %31, float %5377, float %5378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5380 = extractvalue %dx.types.ResRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.ResRet.f32 %5379, 1
  %5382 = extractvalue %dx.types.ResRet.f32 %5379, 2
  br label %5383

; <label>:5383                                    ; preds = %5373, %5356
  %5384 = phi float [ %5380, %5373 ], [ 0.000000e+00, %5356 ]
  %5385 = phi float [ %5381, %5373 ], [ 0.000000e+00, %5356 ]
  %5386 = phi float [ %5382, %5373 ], [ 0.000000e+00, %5356 ]
  %5387 = call float @dx.op.binary.f32(i32 36, float %5385, float %5386)  ; FMin(a,b)
  %5388 = call float @dx.op.binary.f32(i32 36, float %5384, float %5387)  ; FMin(a,b)
  %5389 = fcmp fast ogt float %5388, 0.000000e+00
  br i1 %5389, label %5390, label %5565, !dx.controlflow.hints !77

; <label>:5390                                    ; preds = %5383
  %5391 = fmul fast float %5384, %5350
  %5392 = fmul fast float %5385, %5351
  %5393 = fmul fast float %5386, %5352
  %5394 = fsub fast float %5339, %5111
  %5395 = fsub fast float %5340, %5110
  %5396 = fsub fast float %5341, %5109
  %5397 = call float @dx.op.dot3.f32(i32 55, float %5394, float %5395, float %5396, float %5394, float %5395, float %5396)  ; Dot3(ax,ay,az,bx,by,bz)
  %5398 = call float @dx.op.unary.f32(i32 25, float %5397)  ; Rsqrt(value)
  %5399 = fmul fast float %5398, %5394
  %5400 = fmul fast float %5398, %5395
  %5401 = fmul fast float %5398, %5396
  %5402 = call float @dx.op.dot3.f32(i32 55, float %5339, float %5340, float %5341, float %5115, float %5116, float %5117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5403 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5107, float %5106, float %5399, float %5400, float %5401)  ; Dot3(ax,ay,az,bx,by,bz)
  %5404 = call float @dx.op.unary.f32(i32 7, float %5402)  ; Saturate(value)
  %5405 = fmul fast float %5404, %5404
  %5406 = fmul fast float %5405, %5334
  %5407 = call float @dx.op.unary.f32(i32 7, float %5406)  ; Saturate(value)
  %5408 = fmul fast float %5407, %5404
  %5409 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5116, float %5117, float %5399, float %5400, float %5401)  ; Dot3(ax,ay,az,bx,by,bz)
  %5410 = fmul fast float %5409, %5409
  %5411 = call float @dx.op.unary.f32(i32 6, float %5402)  ; FAbs(value)
  %5412 = fsub fast float 1.000000e+00, %5121
  %5413 = call float @dx.op.binary.f32(i32 35, float %5412, float 0x3F847AE140000000)  ; FMax(a,b)
  %5414 = fmul fast float %5413, %5413
  %5415 = fmul fast float %5414, %5414
  %5416 = fsub fast float 1.000000e+00, %5415
  %5417 = fmul fast float %5125, %5125
  %5418 = fmul fast float %5417, %5416
  %5419 = fadd fast float %5418, %5415
  %5420 = bitcast float %5419 to i32
  %5421 = ashr i32 %5420, 1
  %5422 = add nsw i32 %5421, 532487669
  %5423 = bitcast i32 %5422 to float
  %5424 = fadd fast float %5423, %5125
  %5425 = fmul fast float %5415, %5410
  %5426 = fsub fast float 1.000000e+00, %5410
  %5427 = fadd fast float %5426, %5425
  %5428 = fmul fast float %5411, %5411
  %5429 = fmul fast float %5428, %5416
  %5430 = fadd fast float %5429, %5415
  %5431 = bitcast float %5430 to i32
  %5432 = ashr i32 %5431, 1
  %5433 = add nsw i32 %5432, 532487669
  %5434 = bitcast i32 %5433 to float
  %5435 = fadd fast float %5434, %5411
  %5436 = fmul fast float %5427, %5427
  %5437 = fmul fast float %5436, %5424
  %5438 = fmul fast float %5437, %5435
  %5439 = fdiv fast float 0x3FF0A00000000000, %5438
  %5440 = fmul fast float %5439, %5415
  %5441 = call float @dx.op.unary.f32(i32 6, float %5403)  ; FAbs(value)
  %5442 = fsub fast float 1.000000e+00, %5441
  %5443 = bitcast float %5442 to i32
  %5444 = sitofp i32 %5443 to float
  %5445 = fmul fast float %5444, 5.000000e+00
  %5446 = fadd fast float %5445, 0xC1EFBF8940000000
  %5447 = fptosi float %5446 to i32
  %5448 = bitcast i32 %5447 to float
  %5449 = fsub fast float 1.000000e+00, %5118
  %5450 = fsub fast float 1.000000e+00, %5119
  %5451 = fsub fast float 1.000000e+00, %5123
  %5452 = fmul fast float %5448, %5449
  %5453 = fmul fast float %5448, %5450
  %5454 = fmul fast float %5448, %5451
  %5455 = fadd fast float %5452, %5118
  %5456 = fadd fast float %5453, %5119
  %5457 = fadd fast float %5454, %5123
  br i1 %5249, label %5458, label %5481

; <label>:5458                                    ; preds = %5390
  %5459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %3918, float %5441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5460 = extractvalue %dx.types.ResRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.ResRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.ResRet.f32 %5459, 2
  %5463 = fadd fast float %5460, -5.000000e-01
  %5464 = fadd fast float %5461, -5.000000e-01
  %5465 = fadd fast float %5462, -5.000000e-01
  %5466 = fmul fast float %5118, 4.000000e+00
  %5467 = fmul fast float %5466, %5449
  %5468 = fmul fast float %5467, %5463
  %5469 = fmul fast float %5119, 4.000000e+00
  %5470 = fmul fast float %5469, %5450
  %5471 = fmul fast float %5470, %5464
  %5472 = fmul fast float %5123, 4.000000e+00
  %5473 = fmul fast float %5472, %5451
  %5474 = fmul fast float %5473, %5465
  %5475 = fadd fast float %5468, %5455
  %5476 = fadd fast float %5471, %5456
  %5477 = fadd fast float %5474, %5457
  %5478 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5479 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5480 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  br label %5481

; <label>:5481                                    ; preds = %5458, %5390
  %5482 = phi float [ %5478, %5458 ], [ %5455, %5390 ]
  %5483 = phi float [ %5479, %5458 ], [ %5456, %5390 ]
  %5484 = phi float [ %5480, %5458 ], [ %5457, %5390 ]
  %5485 = fmul fast float %5402, 9.843750e-01
  %5486 = fadd fast float %5485, 7.812500e-03
  %5487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %30, float %5486, float %5239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 2
  %5489 = extractvalue %dx.types.ResRet.f32 %5487, 3
  %5490 = fmul fast float %5488, %5118
  %5491 = fmul fast float %5488, %5119
  %5492 = fmul fast float %5488, %5123
  %5493 = fadd fast float %5490, %5489
  %5494 = fadd fast float %5491, %5489
  %5495 = fadd fast float %5492, %5489
  br i1 %5249, label %5496, label %5519

; <label>:5496                                    ; preds = %5481
  %5497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %3918, float %5402, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5498 = extractvalue %dx.types.ResRet.f32 %5497, 0
  %5499 = extractvalue %dx.types.ResRet.f32 %5497, 1
  %5500 = extractvalue %dx.types.ResRet.f32 %5497, 2
  %5501 = fadd fast float %5498, -5.000000e-01
  %5502 = fadd fast float %5499, -5.000000e-01
  %5503 = fadd fast float %5500, -5.000000e-01
  %5504 = fmul fast float %5118, 4.000000e+00
  %5505 = fmul fast float %5504, %5449
  %5506 = fmul fast float %5505, %5501
  %5507 = fmul fast float %5119, 4.000000e+00
  %5508 = fmul fast float %5507, %5450
  %5509 = fmul fast float %5508, %5502
  %5510 = fmul fast float %5123, 4.000000e+00
  %5511 = fmul fast float %5510, %5451
  %5512 = fmul fast float %5511, %5503
  %5513 = fadd fast float %5506, %5493
  %5514 = fadd fast float %5509, %5494
  %5515 = fadd fast float %5512, %5495
  %5516 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5517 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5518 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  br label %5519

; <label>:5519                                    ; preds = %5496, %5481
  %5520 = phi float [ %5516, %5496 ], [ %5493, %5481 ]
  %5521 = phi float [ %5517, %5496 ], [ %5494, %5481 ]
  %5522 = phi float [ %5518, %5496 ], [ %5495, %5481 ]
  %5523 = call float @dx.op.binary.f32(i32 35, float %5521, float %5522)  ; FMax(a,b)
  %5524 = call float @dx.op.binary.f32(i32 35, float %5520, float %5523)  ; FMax(a,b)
  %5525 = fsub fast float 1.000000e+00, %5524
  %5526 = fmul fast float %5482, %5440
  %5527 = fmul fast float %5483, %5440
  %5528 = fmul fast float %5484, %5440
  %5529 = fsub fast float 1.000000e+00, %5403
  %5530 = bitcast float %5529 to i32
  %5531 = sitofp i32 %5530 to float
  %5532 = fmul fast float %5531, 5.000000e+00
  %5533 = fadd fast float %5532, 0xC1EFBF8940000000
  %5534 = fptosi float %5533 to i32
  %5535 = bitcast i32 %5534 to float
  %5536 = fmul fast float %5535, %3919
  %5537 = fmul fast float %5525, %5536
  %5538 = fmul fast float %5537, %5299
  %5539 = fmul fast float %5537, %5300
  %5540 = fmul fast float %5537, %5301
  %5541 = fadd fast float %5538, %5526
  %5542 = fadd fast float %5539, %5527
  %5543 = fadd fast float %5540, %5528
  %5544 = fmul fast float %5408, %5391
  %5545 = fmul fast float %5544, %5525
  %5546 = fmul fast float %5408, %5392
  %5547 = fmul fast float %5546, %5525
  %5548 = fmul fast float %5408, %5393
  %5549 = fmul fast float %5548, %5525
  %5550 = fmul fast float %5544, %5541
  %5551 = fmul fast float %5546, %5542
  %5552 = fmul fast float %5548, %5543
  %5553 = fadd fast float %5545, %5283
  %5554 = fmul fast float %5553, %3915
  %5555 = fadd fast float %5547, %5284
  %5556 = fmul fast float %5555, %3915
  %5557 = fadd fast float %5549, %5285
  %5558 = fmul fast float %5557, %3915
  %5559 = fadd fast float %5550, %5326
  %5560 = fmul fast float %5559, %3915
  %5561 = fadd fast float %5551, %5329
  %5562 = fmul fast float %5561, %3915
  %5563 = fadd fast float %5552, %5332
  %5564 = fmul fast float %5563, %3915
  br label %5565

; <label>:5565                                    ; preds = %5519, %5383, %5276
  %5566 = phi float [ %5327, %5276 ], [ %5327, %5383 ], [ %5560, %5519 ]
  %5567 = phi float [ %5330, %5276 ], [ %5330, %5383 ], [ %5562, %5519 ]
  %5568 = phi float [ %5333, %5276 ], [ %5333, %5383 ], [ %5564, %5519 ]
  %5569 = phi float [ %5322, %5276 ], [ %5322, %5383 ], [ %5554, %5519 ]
  %5570 = phi float [ %5323, %5276 ], [ %5323, %5383 ], [ %5556, %5519 ]
  %5571 = phi float [ %5324, %5276 ], [ %5324, %5383 ], [ %5558, %5519 ]
  %5572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5573 = extractvalue %dx.types.CBufRet.i32 %5572, 0
  %5574 = icmp eq i32 %5573, 0
  br i1 %5574, label %6009, label %5575

; <label>:5575                                    ; preds = %5565
  %5576 = fptoui float %79 to i32
  %5577 = fptoui float %80 to i32
  %5578 = lshr i32 %5576, 4
  %5579 = lshr i32 %5577, 4
  %5580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5581 = extractvalue %dx.types.CBufRet.i32 %5580, 0
  %5582 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5579, i32 %5581, i32 %5578)  ; UMad(a,b,c)
  %5583 = add nsw i32 %5573, -1
  %5584 = call i32 @dx.op.binary.i32(i32 37, i32 %5583, i32 0)  ; IMax(a,b)
  %5585 = call float @dx.op.binary.f32(i32 35, float %74, float 0.000000e+00)  ; FMax(a,b)
  %5586 = fptoui float %5585 to i32
  %5587 = lshr i32 %5586, 5
  %5588 = call i32 @dx.op.binary.i32(i32 40, i32 %5587, i32 8191)  ; UMin(a,b)
  %5589 = shl i32 %5588, 2
  %5590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5589, i32 undef)  ; BufferLoad(srv,index,wot)
  %5591 = extractvalue %dx.types.ResRet.i32 %5590, 0
  %5592 = lshr i32 %5591, 16
  %5593 = and i32 %5591, 65535
  %5594 = lshr i32 %5591, 21
  %5595 = lshr i32 %5593, 5
  %5596 = call i32 @dx.op.binary.i32(i32 40, i32 %5595, i32 %5584)  ; UMin(a,b)
  %5597 = icmp ugt i32 %5594, %5596
  br i1 %5597, label %6009, label %5598

; <label>:5598                                    ; preds = %5575
  br label %5599

; <label>:5599                                    ; preds = %5999, %5598
  %5600 = phi i32 [ %6006, %5999 ], [ %5594, %5598 ]
  %5601 = phi float [ %6000, %5999 ], [ %5566, %5598 ]
  %5602 = phi float [ %6001, %5999 ], [ %5567, %5598 ]
  %5603 = phi float [ %6002, %5999 ], [ %5568, %5598 ]
  %5604 = phi float [ %6003, %5999 ], [ %5569, %5598 ]
  %5605 = phi float [ %6004, %5999 ], [ %5570, %5598 ]
  %5606 = phi float [ %6005, %5999 ], [ %5571, %5598 ]
  %5607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5608 = extractvalue %dx.types.CBufRet.i32 %5607, 0
  %5609 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5582, i32 %5608, i32 %5600)  ; UMad(a,b,c)
  %5610 = shl i32 %5609, 2
  %5611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5610, i32 undef)  ; BufferLoad(srv,index,wot)
  %5612 = extractvalue %dx.types.ResRet.i32 %5611, 0
  %5613 = shl i32 %5600, 5
  %5614 = sub nsw i32 %5592, %5613
  %5615 = call i32 @dx.op.binary.i32(i32 37, i32 %5614, i32 0)  ; IMax(a,b)
  %5616 = call i32 @dx.op.binary.i32(i32 38, i32 %5615, i32 31)  ; IMin(a,b)
  %5617 = sub nsw i32 1, %5592
  %5618 = add nsw i32 %5617, %5593
  %5619 = call i32 @dx.op.binary.i32(i32 37, i32 %5618, i32 0)  ; IMax(a,b)
  %5620 = call i32 @dx.op.binary.i32(i32 38, i32 %5619, i32 32)  ; IMin(a,b)
  %5621 = and i32 %5620, 31
  %5622 = shl i32 -1, %5621
  %5623 = xor i32 %5622, -1
  %5624 = and i32 %5616, 31
  %5625 = shl i32 %5623, %5624
  %5626 = icmp eq i32 %5620, 32
  %5627 = select i1 %5626, i32 -1, i32 %5625
  %5628 = and i32 %5627, %5612
  %5629 = icmp eq i32 %5628, 0
  br i1 %5629, label %5999, label %5630

; <label>:5630                                    ; preds = %5599
  br label %5631

; <label>:5631                                    ; preds = %5711, %5630
  %5632 = phi i32 [ %5643, %5711 ], [ %5628, %5630 ]
  %5633 = phi float [ %5712, %5711 ], [ %5601, %5630 ]
  %5634 = phi float [ %5713, %5711 ], [ %5602, %5630 ]
  %5635 = phi float [ %5714, %5711 ], [ %5603, %5630 ]
  %5636 = phi float [ %5715, %5711 ], [ %5604, %5630 ]
  %5637 = phi float [ %5716, %5711 ], [ %5605, %5630 ]
  %5638 = phi float [ %5717, %5711 ], [ %5606, %5630 ]
  %5639 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5632)  ; FirstbitLo(value)
  %5640 = add i32 %5639, %5613
  %5641 = and i32 %5639, 31
  %5642 = shl i32 1, %5641
  %5643 = xor i32 %5642, %5632
  %5644 = mul i32 %5640, 112
  %5645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5644, i32 undef)  ; BufferLoad(srv,index,wot)
  %5646 = extractvalue %dx.types.ResRet.f32 %5645, 0
  %5647 = extractvalue %dx.types.ResRet.f32 %5645, 1
  %5648 = extractvalue %dx.types.ResRet.f32 %5645, 2
  %5649 = or i32 %5644, 12
  %5650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5649, i32 undef)  ; BufferLoad(srv,index,wot)
  %5651 = extractvalue %dx.types.ResRet.f32 %5650, 0
  %5652 = add i32 %5644, 44
  %5653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5652, i32 undef)  ; BufferLoad(srv,index,wot)
  %5654 = extractvalue %dx.types.ResRet.f32 %5653, 0
  %5655 = add i32 %5644, 48
  %5656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5655, i32 undef)  ; BufferLoad(srv,index,wot)
  %5657 = extractvalue %dx.types.ResRet.f32 %5656, 0
  %5658 = extractvalue %dx.types.ResRet.f32 %5656, 1
  %5659 = extractvalue %dx.types.ResRet.f32 %5656, 2
  %5660 = add i32 %5644, 80
  %5661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5660, i32 undef)  ; BufferLoad(srv,index,wot)
  %5662 = extractvalue %dx.types.ResRet.f32 %5661, 1
  %5663 = extractvalue %dx.types.ResRet.f32 %5661, 2
  %5664 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5665 = select i1 %218, float %5662, float %5646
  %5666 = select i1 %218, float %5664, float %5647
  %5667 = select i1 %218, float %5663, float %5648
  %5668 = fsub fast float %5657, %166
  %5669 = fsub fast float %5658, %167
  %5670 = fsub fast float %5659, %168
  %5671 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5669, float %5670, float %5668, float %5669, float %5670)  ; Dot3(ax,ay,az,bx,by,bz)
  %5672 = call float @dx.op.unary.f32(i32 24, float %5671)  ; Sqrt(value)
  %5673 = fdiv fast float 1.000000e+00, %5672
  %5674 = fmul fast float %5673, %5668
  %5675 = fmul fast float %5673, %5669
  %5676 = fmul fast float %5673, %5670
  %5677 = fadd fast float %5672, %5651
  %5678 = fdiv fast float 1.000000e+00, %5677
  %5679 = fmul float %5654, %5678
  %5680 = fmul float %5679, %5679
  %5681 = call float @dx.op.unary.f32(i32 7, float %5680)  ; Saturate(value)
  %5682 = and i32 %5642, %5628
  %5683 = icmp eq i32 %5682, 0
  br i1 %5683, label %5706, label %5684, !dx.controlflow.hints !78

; <label>:5684                                    ; preds = %5631
  %5685 = lshr i32 %5576, 5
  %5686 = lshr i32 %5577, 5
  %5687 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5685, i32 %5686, i32 %5640, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5688 = extractvalue %dx.types.ResRet.i32 %5687, 0
  %5689 = and i32 %5688, 3
  %5690 = icmp eq i32 %5689, 0
  %5691 = select i1 %5690, float 1.000000e+00, float 0.000000e+00
  %5692 = icmp eq i32 %5689, 3
  br i1 %5692, label %5693, label %5706

; <label>:5693                                    ; preds = %5684
  %5694 = lshr i32 %5688, 10
  %5695 = and i32 %5694, 8160
  %5696 = and i32 %5577, 31
  %5697 = or i32 %5695, %5696
  %5698 = lshr i32 %5688, 1
  %5699 = and i32 %5698, 16352
  %5700 = and i32 %5576, 31
  %5701 = or i32 %5699, %5700
  %5702 = lshr i32 %5688, 23
  %5703 = and i32 %5702, 255
  %5704 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5701, i32 %5697, i32 %5703, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5705 = extractvalue %dx.types.ResRet.f32 %5704, 0
  br label %5706

; <label>:5706                                    ; preds = %5693, %5684, %5631
  %5707 = phi float [ %5705, %5693 ], [ %5691, %5684 ], [ 0.000000e+00, %5631 ]
  %5708 = call float @dx.op.binary.f32(i32 36, float %5707, float %5707)  ; FMin(a,b)
  %5709 = call float @dx.op.binary.f32(i32 36, float %5707, float %5708)  ; FMin(a,b)
  %5710 = fcmp fast ogt float %5709, 0.000000e+00
  br i1 %5710, label %5719, label %5711, !dx.controlflow.hints !79

; <label>:5711                                    ; preds = %5955, %5706
  %5712 = phi float [ %5633, %5706 ], [ %5995, %5955 ]
  %5713 = phi float [ %5634, %5706 ], [ %5996, %5955 ]
  %5714 = phi float [ %5635, %5706 ], [ %5997, %5955 ]
  %5715 = phi float [ %5636, %5706 ], [ %5989, %5955 ]
  %5716 = phi float [ %5637, %5706 ], [ %5990, %5955 ]
  %5717 = phi float [ %5638, %5706 ], [ %5991, %5955 ]
  %5718 = icmp eq i32 %5632, %5642
  br i1 %5718, label %5998, label %5631

; <label>:5719                                    ; preds = %5706
  %5720 = fmul fast float %5707, %5665
  %5721 = fmul fast float %5707, %5666
  %5722 = fmul fast float %5707, %5667
  %5723 = fsub fast float %5659, %4319
  %5724 = fcmp fast ogt float %5723, 0.000000e+00
  %5725 = fsub fast float %168, %4319
  %5726 = fcmp fast ogt float %5725, 0.000000e+00
  %5727 = xor i1 %5726, %5724
  %5728 = fsub fast float %4319, %5659
  %5729 = fmul fast float %5728, 2.000000e+00
  %5730 = fadd fast float %5729, %5659
  %5731 = select i1 %5727, float %5659, float %5730
  %5732 = fsub fast float %5731, %168
  %5733 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5669, float %5732, float %5668, float %5669, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = call float @dx.op.unary.f32(i32 25, float %5733)  ; Rsqrt(value)
  %5735 = fmul fast float %5734, %5668
  %5736 = fmul fast float %5734, %5669
  %5737 = fmul fast float %5734, %5732
  %5738 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4327)  ; Dot3(ax,ay,az,bx,by,bz)
  %5739 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5735, float %5736, float %5737)  ; Dot3(ax,ay,az,bx,by,bz)
  %5740 = fdiv fast float 1.000000e+00, %5739
  %5741 = fmul fast float %5740, %5738
  %5742 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5725, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5743 = fcmp fast ogt float %5742, 0.000000e+00
  %5744 = fcmp fast olt float %5742, 0.000000e+00
  %5745 = zext i1 %5743 to i32
  %5746 = zext i1 %5744 to i32
  %5747 = sub nsw i32 %5745, %5746
  %5748 = sitofp i32 %5747 to float
  %5749 = fsub fast float %5731, %4319
  %5750 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5669, float %5749, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = fcmp fast ogt float %5750, 0.000000e+00
  %5752 = fcmp fast olt float %5750, 0.000000e+00
  %5753 = zext i1 %5751 to i32
  %5754 = zext i1 %5752 to i32
  %5755 = sub nsw i32 %5753, %5754
  %5756 = sitofp i32 %5755 to float
  %5757 = fcmp fast une float %5748, %5756
  br i1 %5757, label %5758, label %5768

; <label>:5758                                    ; preds = %5719
  %5759 = fmul fast float %5741, %5737
  %5760 = fmul fast float %5741, %5736
  %5761 = fmul fast float %5741, %5735
  %5762 = fmul fast float %5761, %5761
  %5763 = fmul fast float %5760, %5760
  %5764 = fadd fast float %5762, %5763
  %5765 = fmul fast float %5759, %5759
  %5766 = fadd fast float %5764, %5765
  %5767 = call float @dx.op.unary.f32(i32 24, float %5766)  ; Sqrt(value)
  br label %5780

; <label>:5768                                    ; preds = %5719
  %5769 = icmp slt i32 %5747, 0
  br i1 %5769, label %5770, label %5780

; <label>:5770                                    ; preds = %5768
  %5771 = fsub fast float %166, %5657
  %5772 = fsub fast float %167, %5658
  %5773 = fsub fast float %168, %5731
  %5774 = fmul fast float %5771, %5771
  %5775 = fmul fast float %5772, %5772
  %5776 = fadd fast float %5774, %5775
  %5777 = fmul fast float %5773, %5773
  %5778 = fadd fast float %5776, %5777
  %5779 = call float @dx.op.unary.f32(i32 24, float %5778)  ; Sqrt(value)
  br label %5780

; <label>:5780                                    ; preds = %5770, %5768, %5758
  %5781 = phi float [ %5767, %5758 ], [ %5779, %5770 ], [ 0.000000e+00, %5768 ]
  %5782 = and i1 %5726, %5724
  %5783 = fsub fast float -0.000000e+00, %5781
  %5784 = select i1 %5782, float -0.000000e+00, float %5783
  %5785 = fmul fast float %4320, 0x3FF7154760000000
  %5786 = fmul fast float %5785, %5784
  %5787 = fmul fast float %4321, 0x3FF7154760000000
  %5788 = fmul fast float %5787, %5784
  %5789 = fmul fast float %4322, 0x3FF7154760000000
  %5790 = fmul fast float %5789, %5784
  %5791 = call float @dx.op.unary.f32(i32 21, float %5786)  ; Exp(value)
  %5792 = call float @dx.op.unary.f32(i32 21, float %5788)  ; Exp(value)
  %5793 = call float @dx.op.unary.f32(i32 21, float %5790)  ; Exp(value)
  %5794 = call float @dx.op.unary.f32(i32 7, float %5791)  ; Saturate(value)
  %5795 = call float @dx.op.unary.f32(i32 7, float %5792)  ; Saturate(value)
  %5796 = call float @dx.op.unary.f32(i32 7, float %5793)  ; Saturate(value)
  %5797 = fmul fast float %5720, %5794
  %5798 = fmul fast float %5721, %5795
  %5799 = fmul fast float %5722, %5796
  %5800 = fsub fast float %5674, %5111
  %5801 = fsub fast float %5675, %5110
  %5802 = fsub fast float %5676, %5109
  %5803 = call float @dx.op.dot3.f32(i32 55, float %5800, float %5801, float %5802, float %5800, float %5801, float %5802)  ; Dot3(ax,ay,az,bx,by,bz)
  %5804 = call float @dx.op.unary.f32(i32 25, float %5803)  ; Rsqrt(value)
  %5805 = fmul fast float %5804, %5800
  %5806 = fmul fast float %5804, %5801
  %5807 = fmul fast float %5804, %5802
  %5808 = call float @dx.op.dot3.f32(i32 55, float %5674, float %5675, float %5676, float %5115, float %5116, float %5117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5809 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5107, float %5106, float %5805, float %5806, float %5807)  ; Dot3(ax,ay,az,bx,by,bz)
  %5810 = call float @dx.op.unary.f32(i32 7, float %5808)  ; Saturate(value)
  %5811 = fmul fast float %5810, %5681
  %5812 = fmul fast float %5810, %5810
  %5813 = fmul fast float %5812, %5334
  %5814 = call float @dx.op.unary.f32(i32 7, float %5813)  ; Saturate(value)
  %5815 = fmul fast float %5811, %5814
  %5816 = bitcast float %5671 to i32
  %5817 = ashr i32 %5816, 1
  %5818 = sub nsw i32 1597463007, %5817
  %5819 = bitcast i32 %5818 to float
  %5820 = fmul fast float %5819, %5668
  %5821 = fmul fast float %5819, %5669
  %5822 = fmul fast float %5819, %5670
  %5823 = fsub fast float %5820, %5111
  %5824 = fsub fast float %5821, %5110
  %5825 = fsub fast float %5822, %5109
  %5826 = call float @dx.op.dot3.f32(i32 55, float %5823, float %5824, float %5825, float %5823, float %5824, float %5825)  ; Dot3(ax,ay,az,bx,by,bz)
  %5827 = call float @dx.op.unary.f32(i32 25, float %5826)  ; Rsqrt(value)
  %5828 = fmul fast float %5823, %5827
  %5829 = fmul fast float %5824, %5827
  %5830 = fmul fast float %5825, %5827
  %5831 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5116, float %5117, float %5828, float %5829, float %5830)  ; Dot3(ax,ay,az,bx,by,bz)
  %5832 = fmul fast float %5831, %5831
  %5833 = call float @dx.op.unary.f32(i32 6, float %5808)  ; FAbs(value)
  %5834 = fsub fast float 1.000000e+00, %5121
  %5835 = call float @dx.op.binary.f32(i32 35, float %5834, float 0x3F847AE140000000)  ; FMax(a,b)
  %5836 = fmul fast float %5835, %5835
  %5837 = fmul fast float %5836, %5836
  %5838 = fsub fast float 1.000000e+00, %5837
  %5839 = fmul fast float %5125, %5125
  %5840 = fmul fast float %5839, %5838
  %5841 = fadd fast float %5840, %5837
  %5842 = bitcast float %5841 to i32
  %5843 = ashr i32 %5842, 1
  %5844 = add nsw i32 %5843, 532487669
  %5845 = bitcast i32 %5844 to float
  %5846 = fadd fast float %5845, %5125
  %5847 = fmul fast float %5837, %5832
  %5848 = fsub fast float 1.000000e+00, %5832
  %5849 = fadd fast float %5848, %5847
  %5850 = fmul fast float %5833, %5833
  %5851 = fmul fast float %5850, %5838
  %5852 = fadd fast float %5851, %5837
  %5853 = bitcast float %5852 to i32
  %5854 = ashr i32 %5853, 1
  %5855 = add nsw i32 %5854, 532487669
  %5856 = bitcast i32 %5855 to float
  %5857 = fadd fast float %5856, %5833
  %5858 = fmul fast float %5849, %5849
  %5859 = fmul fast float %5858, %5846
  %5860 = fmul fast float %5859, %5857
  %5861 = fdiv fast float 1.000000e+00, %5860
  %5862 = bitcast float %5837 to i32
  %5863 = sitofp i32 %5862 to float
  %5864 = fmul fast float %5863, 0x3FE7F73180000000
  %5865 = fadd fast float %5864, 0x41AFE27C40000000
  %5866 = fptosi float %5865 to i32
  %5867 = bitcast i32 %5866 to float
  %5868 = fmul fast float %5654, 0x3FD80E9D60000000
  %5869 = fmul fast float %5868, %5819
  %5870 = fadd fast float %5867, %5869
  %5871 = bitcast float %5870 to i32
  %5872 = sub nsw i32 2129859010, %5871
  %5873 = bitcast i32 %5872 to float
  %5874 = fmul fast float %5837, %5861
  %5875 = fmul fast float %5874, %5867
  %5876 = fmul fast float %5875, %5873
  %5877 = call float @dx.op.unary.f32(i32 6, float %5809)  ; FAbs(value)
  %5878 = fsub fast float 1.000000e+00, %5877
  %5879 = bitcast float %5878 to i32
  %5880 = sitofp i32 %5879 to float
  %5881 = fmul fast float %5880, 5.000000e+00
  %5882 = fadd fast float %5881, 0xC1EFBF8940000000
  %5883 = fptosi float %5882 to i32
  %5884 = bitcast i32 %5883 to float
  %5885 = fsub fast float 1.000000e+00, %5118
  %5886 = fsub fast float 1.000000e+00, %5119
  %5887 = fsub fast float 1.000000e+00, %5123
  %5888 = fmul fast float %5884, %5885
  %5889 = fmul fast float %5884, %5886
  %5890 = fmul fast float %5884, %5887
  %5891 = fadd fast float %5888, %5118
  %5892 = fadd fast float %5889, %5119
  %5893 = fadd fast float %5890, %5123
  br i1 %5249, label %5894, label %5917

; <label>:5894                                    ; preds = %5780
  %5895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %3918, float %5877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5896 = extractvalue %dx.types.ResRet.f32 %5895, 0
  %5897 = extractvalue %dx.types.ResRet.f32 %5895, 1
  %5898 = extractvalue %dx.types.ResRet.f32 %5895, 2
  %5899 = fadd fast float %5896, -5.000000e-01
  %5900 = fadd fast float %5897, -5.000000e-01
  %5901 = fadd fast float %5898, -5.000000e-01
  %5902 = fmul fast float %5118, 4.000000e+00
  %5903 = fmul fast float %5902, %5885
  %5904 = fmul fast float %5903, %5899
  %5905 = fmul fast float %5119, 4.000000e+00
  %5906 = fmul fast float %5905, %5886
  %5907 = fmul fast float %5906, %5900
  %5908 = fmul fast float %5123, 4.000000e+00
  %5909 = fmul fast float %5908, %5887
  %5910 = fmul fast float %5909, %5901
  %5911 = fadd fast float %5904, %5891
  %5912 = fadd fast float %5907, %5892
  %5913 = fadd fast float %5910, %5893
  %5914 = call float @dx.op.unary.f32(i32 7, float %5911)  ; Saturate(value)
  %5915 = call float @dx.op.unary.f32(i32 7, float %5912)  ; Saturate(value)
  %5916 = call float @dx.op.unary.f32(i32 7, float %5913)  ; Saturate(value)
  br label %5917

; <label>:5917                                    ; preds = %5894, %5780
  %5918 = phi float [ %5914, %5894 ], [ %5891, %5780 ]
  %5919 = phi float [ %5915, %5894 ], [ %5892, %5780 ]
  %5920 = phi float [ %5916, %5894 ], [ %5893, %5780 ]
  %5921 = fmul fast float %5808, 9.843750e-01
  %5922 = fadd fast float %5921, 7.812500e-03
  %5923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %30, float %5922, float %5239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5924 = extractvalue %dx.types.ResRet.f32 %5923, 2
  %5925 = extractvalue %dx.types.ResRet.f32 %5923, 3
  %5926 = fmul fast float %5924, %5118
  %5927 = fmul fast float %5924, %5119
  %5928 = fmul fast float %5924, %5123
  %5929 = fadd fast float %5926, %5925
  %5930 = fadd fast float %5927, %5925
  %5931 = fadd fast float %5928, %5925
  br i1 %5249, label %5932, label %5955

; <label>:5932                                    ; preds = %5917
  %5933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %3918, float %5808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5934 = extractvalue %dx.types.ResRet.f32 %5933, 0
  %5935 = extractvalue %dx.types.ResRet.f32 %5933, 1
  %5936 = extractvalue %dx.types.ResRet.f32 %5933, 2
  %5937 = fadd fast float %5934, -5.000000e-01
  %5938 = fadd fast float %5935, -5.000000e-01
  %5939 = fadd fast float %5936, -5.000000e-01
  %5940 = fmul fast float %5118, 4.000000e+00
  %5941 = fmul fast float %5940, %5885
  %5942 = fmul fast float %5941, %5937
  %5943 = fmul fast float %5119, 4.000000e+00
  %5944 = fmul fast float %5943, %5886
  %5945 = fmul fast float %5944, %5938
  %5946 = fmul fast float %5123, 4.000000e+00
  %5947 = fmul fast float %5946, %5887
  %5948 = fmul fast float %5947, %5939
  %5949 = fadd fast float %5942, %5929
  %5950 = fadd fast float %5945, %5930
  %5951 = fadd fast float %5948, %5931
  %5952 = call float @dx.op.unary.f32(i32 7, float %5949)  ; Saturate(value)
  %5953 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5954 = call float @dx.op.unary.f32(i32 7, float %5951)  ; Saturate(value)
  br label %5955

; <label>:5955                                    ; preds = %5932, %5917
  %5956 = phi float [ %5952, %5932 ], [ %5929, %5917 ]
  %5957 = phi float [ %5953, %5932 ], [ %5930, %5917 ]
  %5958 = phi float [ %5954, %5932 ], [ %5931, %5917 ]
  %5959 = call float @dx.op.binary.f32(i32 35, float %5957, float %5958)  ; FMax(a,b)
  %5960 = call float @dx.op.binary.f32(i32 35, float %5956, float %5959)  ; FMax(a,b)
  %5961 = fsub fast float 1.000000e+00, %5960
  %5962 = fmul fast float %5918, %5876
  %5963 = fmul fast float %5919, %5876
  %5964 = fmul fast float %5920, %5876
  %5965 = fsub fast float 1.000000e+00, %5809
  %5966 = bitcast float %5965 to i32
  %5967 = sitofp i32 %5966 to float
  %5968 = fmul fast float %5967, 5.000000e+00
  %5969 = fadd fast float %5968, 0xC1EFBF8940000000
  %5970 = fptosi float %5969 to i32
  %5971 = bitcast i32 %5970 to float
  %5972 = fmul fast float %5971, %3919
  %5973 = fmul fast float %5961, %5972
  %5974 = fmul fast float %5973, %5299
  %5975 = fmul fast float %5973, %5300
  %5976 = fmul fast float %5973, %5301
  %5977 = fadd fast float %5974, %5962
  %5978 = fadd fast float %5975, %5963
  %5979 = fadd fast float %5976, %5964
  %5980 = fmul fast float %5797, %3915
  %5981 = fmul fast float %5980, %5815
  %5982 = fmul fast float %5981, %5961
  %5983 = fmul fast float %5798, %3915
  %5984 = fmul fast float %5983, %5815
  %5985 = fmul fast float %5984, %5961
  %5986 = fmul fast float %5799, %3915
  %5987 = fmul fast float %5986, %5815
  %5988 = fmul fast float %5987, %5961
  %5989 = fadd fast float %5982, %5636
  %5990 = fadd fast float %5985, %5637
  %5991 = fadd fast float %5988, %5638
  %5992 = fmul fast float %5981, %5977
  %5993 = fmul fast float %5984, %5978
  %5994 = fmul fast float %5987, %5979
  %5995 = fadd fast float %5992, %5633
  %5996 = fadd fast float %5993, %5634
  %5997 = fadd fast float %5994, %5635
  br label %5711

; <label>:5998                                    ; preds = %5711
  br label %5999

; <label>:5999                                    ; preds = %5998, %5599
  %6000 = phi float [ %5601, %5599 ], [ %5712, %5998 ]
  %6001 = phi float [ %5602, %5599 ], [ %5713, %5998 ]
  %6002 = phi float [ %5603, %5599 ], [ %5714, %5998 ]
  %6003 = phi float [ %5604, %5599 ], [ %5715, %5998 ]
  %6004 = phi float [ %5605, %5599 ], [ %5716, %5998 ]
  %6005 = phi float [ %5606, %5599 ], [ %5717, %5998 ]
  %6006 = add i32 %5600, 1
  %6007 = icmp ugt i32 %6006, %5596
  br i1 %6007, label %6008, label %5599

; <label>:6008                                    ; preds = %5999
  br label %6009

; <label>:6009                                    ; preds = %6008, %5575, %5565
  %6010 = phi float [ %5566, %5565 ], [ %5566, %5575 ], [ %6000, %6008 ]
  %6011 = phi float [ %5567, %5565 ], [ %5567, %5575 ], [ %6001, %6008 ]
  %6012 = phi float [ %5568, %5565 ], [ %5568, %5575 ], [ %6002, %6008 ]
  %6013 = phi float [ %5569, %5565 ], [ %5569, %5575 ], [ %6003, %6008 ]
  %6014 = phi float [ %5570, %5565 ], [ %5570, %5575 ], [ %6004, %6008 ]
  %6015 = phi float [ %5571, %5565 ], [ %5571, %5575 ], [ %6005, %6008 ]
  %6016 = call float @dx.op.unary.f32(i32 24, float %5112)  ; Sqrt(value)
  %6017 = call float @dx.op.unary.f32(i32 24, float %5113)  ; Sqrt(value)
  %6018 = call float @dx.op.unary.f32(i32 24, float %5114)  ; Sqrt(value)
  %6019 = fmul fast float %6016, %6013
  %6020 = fmul fast float %6017, %6014
  %6021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.f32 %6021, 0
  br i1 %218, label %6023, label %6043

; <label>:6023                                    ; preds = %6009
  %6024 = fadd fast float %6015, %3921
  %6025 = fmul fast float %6024, %3922
  %6026 = fsub fast float 1.000000e+00, %3922
  %6027 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  %6028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6029 = extractvalue %dx.types.CBufRet.f32 %6028, 3
  %6030 = fmul fast float %6029, %6027
  %6031 = fadd fast float %6030, %6025
  %6032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6033 = extractvalue %dx.types.CBufRet.f32 %6032, 0
  %6034 = fmul fast float %6033, %5305
  %6035 = fsub fast float %6031, %6034
  %6036 = fadd fast float %6020, %6019
  %6037 = fmul fast float %6022, %6036
  %6038 = extractvalue %dx.types.CBufRet.f32 %6028, 1
  %6039 = fsub fast float %6035, %6038
  %6040 = extractvalue %dx.types.CBufRet.f32 %6028, 2
  %6041 = fmul fast float %6039, %6040
  %6042 = call float @dx.op.unary.f32(i32 7, float %6041)  ; Saturate(value)
  br label %6059

; <label>:6043                                    ; preds = %6009
  %6044 = fmul fast float %6018, %6015
  %6045 = fmul fast float %6022, %6019
  %6046 = fmul fast float %6022, %6020
  %6047 = fmul fast float %6044, %6022
  %6048 = add i32 %34, 356
  %6049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %6048, i32 undef)  ; BufferLoad(srv,index,wot)
  %6050 = extractvalue %dx.types.ResRet.i32 %6049, 0
  %6051 = and i32 %6050, 32
  %6052 = icmp eq i32 %6051, 0
  br i1 %6052, label %6059, label %6053

; <label>:6053                                    ; preds = %6043
  %6054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6055 = extractvalue %dx.types.CBufRet.f32 %6054, 0
  %6056 = fmul fast float %6055, 0x3FE99999A0000000
  %6057 = fadd fast float %6055, %6045
  %6058 = fadd fast float %6056, %6047
  br label %6059

; <label>:6059                                    ; preds = %6053, %6043, %6023
  %6060 = phi float [ %6037, %6023 ], [ %6057, %6053 ], [ %6045, %6043 ]
  %6061 = phi float [ %6042, %6023 ], [ %6046, %6053 ], [ %6046, %6043 ]
  %6062 = phi float [ 1.000000e+00, %6023 ], [ %6058, %6053 ], [ %6047, %6043 ]
  %6063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.f32 %6063, 0
  %6065 = fmul fast float %6064, %6011
  %6066 = fmul fast float %6064, %6012
  %6067 = fadd fast float %6011, %6010
  %6068 = select i1 %218, float %6067, float %6010
  %6069 = fmul float %6068, %6064
  %6070 = select i1 %218, float 0.000000e+00, float %6065
  %6071 = select i1 %218, float 0.000000e+00, float %6066
  %6072 = fmul fast float %6060, %6016
  %6073 = fmul fast float %6061, %6017
  %6074 = fmul fast float %6062, %6018
  %6075 = fadd fast float %6069, %6072
  %6076 = fadd fast float %6070, %6073
  %6077 = fadd fast float %6071, %6074
  %6078 = select i1 %218, float %6061, float %6076
  %6079 = select i1 %218, float %6062, float %6077
  %6080 = call float @dx.op.binary.f32(i32 36, float %6075, float 3.225500e+04)  ; FMin(a,b)
  %6081 = call float @dx.op.binary.f32(i32 36, float %6078, float 3.225500e+04)  ; FMin(a,b)
  %6082 = call float @dx.op.binary.f32(i32 36, float %6079, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6080)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6081)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6082)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!47}
!dx.entryPoints = !{!48}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !38, !41}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 8, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!38 = !{!39, !40}
!39 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!41 = !{!42, !43, !44, !45, !46}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!46 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!47 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !76}
!49 = !{!50, !74, null}
!50 = !{!51, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !68, !69, !71, !72, !73}
!51 = !{i32 0, !"SV_Position", i8 9, i8 3, !52, i8 4, i32 1, i8 4, i32 0, i8 0, !53}
!52 = !{i32 0}
!53 = !{i32 3, i32 11}
!54 = !{i32 1, !"COLOR", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 1, i8 0, !55}
!55 = !{i32 3, i32 14}
!56 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 2, i8 0, !57}
!57 = !{i32 3, i32 3}
!58 = !{i32 3, !"NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 3, i8 0, !59}
!59 = !{i32 3, i32 7}
!60 = !{i32 4, !"TANGENT", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 4, i8 0, !61}
!61 = !{i32 3, i32 15}
!62 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 5, i8 0, !59}
!63 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, !61}
!64 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 7, i8 0, !59}
!65 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 8, i8 0, !61}
!66 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 2, i32 9, i8 0, !57}
!67 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 10, i8 0, !61}
!68 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 11, i8 0, !59}
!69 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !52, i8 1, i32 1, i8 1, i32 12, i8 0, !70}
!70 = !{i32 3, i32 1}
!71 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !52, i8 1, i32 1, i8 2, i32 12, i8 1, !70}
!72 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !52, i8 1, i32 1, i8 4, i32 13, i8 0, !70}
!73 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!74 = !{!75}
!75 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!76 = !{i32 0, i64 24}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}

